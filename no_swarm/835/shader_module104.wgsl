struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(0i, -43179i, -1477i, 2834i);

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: u32 = 16163u;

var<private> global4: array<vec3<bool>, 16>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> u32 {
    var var_0 = ~arg_2;
    var_0 = u_input.b.wzz;
    var var_1 = arg_1;
    global2 = Struct_1(~(~(~select(43533u, 0u, true))), global2.b, -1i, vec2<bool>(true, arg_0.d.x & (global2.e.x && true)), vec3<bool>(!(!(var_1.e.x & true)), global1.a != u_input.b.x, true));
    global1 = arg_0;
    return 90141u;
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_1(func_3(Struct_1(~1u, global1.b, u_input.a, !(!global2.e.zy), select(global4[_wgslsmith_index_u32(46512u, 16u)], vec3<bool>(global1.e.x, true, global2.d.x), vec3<bool>(false, false, false))), Struct_1(u_input.b.x, vec4<i32>(~global1.c, _wgslsmith_dot_vec4_i32(global1.b, global1.b), global1.b.x >> (global2.a % 32u), -u_input.c), (i32(-1i) * -20706i) | _wgslsmith_mult_i32(-8249i, global0.x), global2.e.yz, vec3<bool>(true, global2.d.x, global0.x >= 10406i)), u_input.b.wwz), global1.b, _wgslsmith_mult_i32(global1.b.x >> (global1.a % 32u), _wgslsmith_mult_i32(_wgslsmith_sub_i32(firstTrailingBit(2226i), u_input.a), ~(-26659i))), select(select(!(!global1.e.yy), vec2<bool>(global2.d.x, global1.e.x), !select(global1.d.x, true, false)), vec2<bool>(!global2.e.x, true), global2.e.x), select(vec3<bool>(global2.d.x, false, any(select(vec3<bool>(true, global2.e.x, true), global1.e, false))), global4[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(4294967295u, _wgslsmith_div_u32(u_input.b.x, 75054u))), 16u)], true));
    let var_1 = abs(42514i);
    let var_2 = Struct_1(4294967295u, -var_0.b, _wgslsmith_add_i32(-10616i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(~(-752i), var_1 << (10828u % 32u), -18521i), -23533i)), !select(vec2<bool>(global1.d.x, true), vec2<bool>(!global2.e.x, false), global2.d.x), select(global4[_wgslsmith_index_u32(~(~global1.a), 16u)], global1.e, global2.d.x));
    global4 = array<vec3<bool>, 16>();
    var var_3 = var_0.b.zzy;
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(200f, 1043f) + vec2<f32>(-940f, 869f))))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -415f) + -705f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(357f, -616f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1293f))) + vec2<f32>(-210f, 749f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(238f, 196f), _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -261f), vec2<f32>(-642f, -328f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-143f, -1000f) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2532f, -131f), vec2<f32>(-883f, -1364f), arg_1.x)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(var_0)), _wgslsmith_f_op_vec2_f32(-var_0)))))));
    global2 = func_2(vec4<u32>(~(func_2(u_input.b).a | 1u), ~(~68814u) >> (arg_0.a % 32u), ~global2.a, min(min(81533u, global2.a), 51212u) ^ _wgslsmith_sub_u32(86741u | arg_0.a, ~u_input.b.x)));
    global3 = _wgslsmith_mod_u32(arg_0.a, _wgslsmith_dot_vec3_u32(min(u_input.b.xyz, _wgslsmith_clamp_vec3_u32(u_input.b.wxy, vec3<u32>(56308u, 0u, global2.a), ~vec3<u32>(arg_2.a, 5772u, u_input.b.x))), u_input.b.wwy));
    global0 = arg_2.b;
    return ~_wgslsmith_dot_vec2_i32(~(~arg_0.b.yw), vec2<i32>(~(~global2.b.x), global2.b.x));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<i32>) -> i32 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 356f, arg_1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 499f, arg_1.x) * vec3<f32>(1454f, arg_1.x, -398f)) - vec3<f32>(arg_1.x, 1000f, -1000f))), !global1.e)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-646f, arg_1.x, arg_1.x)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x + arg_1.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(-1196f, -590f))), _wgslsmith_f_op_f32(step(var_0.x, 558f))))));
    global1 = func_2(~u_input.b);
    let var_1 = -arg_0.b.xx;
    var var_2 = _wgslsmith_mult_vec3_i32(arg_0.b.zwy, abs(max(arg_0.b.wzx ^ global2.b.xyx, -global0.xyz)) | vec3<i32>(countOneBits(select(var_1.x, global1.b.x, false)), global1.c, var_1.x));
    return min(global1.b.x, firstTrailingBit(arg_0.c));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(min(-219f, 1763f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, 313f, false))), -613f)))));
    global4 = array<vec3<bool>, 16>();
    var var_1 = global2.d.x;
    let var_2 = func_5(Struct_1(global1.a, vec4<i32>(_wgslsmith_add_i32(global0.x, global2.b.x), _wgslsmith_dot_vec2_i32(global2.b.xy, global2.b.xw) ^ 1i, -1i, func_4(func_2(vec4<u32>(29626u, 13691u, 0u, u_input.b.x)), vec2<bool>(true, true), Struct_1(47714u, vec4<i32>(global0.x, global0.x, global2.c, 2258i), global1.c, vec2<bool>(global1.e.x, global2.d.x), global2.e))), u_input.c, select(vec2<bool>(all(global1.d), func_2(u_input.b).d.x), !(!vec2<bool>(global1.d.x, global2.d.x)), !select(vec2<bool>(true, false), global2.d, global1.e.x)), global1.e), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0 + var_0)))), vec4<i32>(_wgslsmith_add_i32(min(global2.c, reverseBits(global0.x)), -82685i), global2.b.x, _wgslsmith_mult_i32(func_4(func_2(u_input.b), global2.e.xz, Struct_1(global2.a, vec4<i32>(u_input.c, 3956i, 39240i, global2.b.x), global0.x, global1.d, vec3<bool>(global2.d.x, false, true))), (i32(-1i) * -17277i) | (global1.c >> (u_input.b.x % 32u))), reverseBits(reverseBits(_wgslsmith_dot_vec4_i32(global2.b, vec4<i32>(global2.c, u_input.c, 0i, global1.c))))));
    var var_3 = Struct_1(reverseBits(u_input.b.x), global2.b, min(1i, i32(-1i) * -406i), vec2<bool>(all(select(select(vec4<bool>(false, true, true, global2.e.x), vec4<bool>(global2.e.x, false, false, true), global2.d.x), select(vec4<bool>(true, global1.e.x, global1.d.x, true), vec4<bool>(global1.e.x, true, global2.e.x, true), vec4<bool>(global1.d.x, global1.d.x, false, false)), vec4<bool>(global2.e.x, global2.e.x, true, false))), _wgslsmith_mod_i32(-20485i, max(-57892i, 2147483647i)) != global0.x), vec3<bool>(!any(global2.e.yy), (true || !global2.e.x) && global2.e.x, any(func_2(abs(u_input.b)).e)));
    return Struct_1(~_wgslsmith_clamp_u32(_wgslsmith_div_u32(32328u, 4294967295u) >> ((global2.a >> (23190u % 32u)) % 32u), _wgslsmith_sub_u32(1u, u_input.b.x) | ~4294967295u, ~global1.a), global1.b, var_2 << ((8195u & global1.a) % 32u), global2.e.xx, global1.e);
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = -min(-(vec2<i32>(global2.c, global1.b.x) << (select(u_input.b.wx, u_input.b.yz, false) % vec2<u32>(32u))), vec2<i32>(u_input.c, ~(-20231i)));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~u_input.b.x;
    var var_0 = func_6(func_1());
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -864f)));
    var var_2 = 4294967295u;
    let var_3 = (_wgslsmith_mod_u32(1u, min(reverseBits(11678u), _wgslsmith_div_u32(18052u, u_input.b.x))) | ~26765u) ^ ~(~40379u);
    global2 = func_1();
    let var_4 = Struct_1(~u_input.b.x, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, func_6(func_1()).c, min(-41292i, u_input.c), -44601i), func_1().b), ~global1.b.x, vec2<bool>(true, true), var_0.e);
    var var_5 = var_4;
    let var_6 = _wgslsmith_add_u32(16587u, abs(_wgslsmith_div_u32(0u, 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.xz);
}

