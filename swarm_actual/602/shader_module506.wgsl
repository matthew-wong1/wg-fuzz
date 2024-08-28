struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<u32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: i32 = 31472i;

var<private> global2: array<i32, 19>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<f32>) -> vec3<u32> {
    var var_0 = u_input.b;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, 849f))) * vec2<f32>(arg_1.x, arg_1.x));
    let var_1 = arg_0;
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -351f)))));
    var var_2 = arg_0.a;
    return vec3<u32>(select(~(u_input.d << (firstLeadingBit(4294967295u) % 32u)), arg_0.c, true), arg_0.a.a.x, ~(~_wgslsmith_div_u32(99480u, 30583u) & abs(select(15456u, 13331u, false))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_2) -> u32 {
    var var_0 = 1752f;
    var var_1 = u_input.d;
    global1 = min(global2[_wgslsmith_index_u32(91784u, 19u)], ~u_input.b.x);
    let var_2 = Struct_5(Struct_2(arg_1, arg_1, _wgslsmith_dot_vec3_i32(min(vec3<i32>(977i, global2[_wgslsmith_index_u32(4294967295u, 19u)], u_input.a), ~vec3<i32>(global2[_wgslsmith_index_u32(u_input.d, 19u)], u_input.a, global2[_wgslsmith_index_u32(u_input.d, 19u)])), countOneBits(select(vec3<i32>(global2[_wgslsmith_index_u32(27843u, 19u)], u_input.c, global2[_wgslsmith_index_u32(64435u, 19u)]), u_input.b, false))), select(vec4<bool>(arg_0.x, true, !arg_0.x, select(arg_3.d.x, arg_3.d.x, arg_0.x)), !(!vec4<bool>(true, false, arg_0.x, false)), select(vec4<bool>(true, arg_0.x, arg_3.d.x, true), arg_3.d, !arg_3.d)), _wgslsmith_sub_vec4_u32(vec4<u32>(81926u, 1u, 50677u, select(u_input.d, 87372u, false)), vec4<u32>(~arg_3.b.a.x, 1u, ~arg_3.b.a.x, u_input.d ^ u_input.d))), ~0u >= reverseBits(~_wgslsmith_div_u32(arg_1.a.x, arg_3.a.a.x)), arg_3.d.xxw, arg_1, arg_3);
    global1 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(~(-1i), -2147483647i), countOneBits(vec2<i32>(u_input.b.x, arg_3.c) << (vec2<u32>(74802u, 1u) % vec2<u32>(32u)))) & var_2.e.c;
    return arg_3.e.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: vec3<u32>) -> Struct_5 {
    var var_0 = Struct_3(Struct_1((max(arg_2, arg_2) & arg_2) & ~(~vec3<u32>(48832u, 72674u, 14748u))), 626f, _wgslsmith_div_u32(arg_2.x, func_1(Struct_3(Struct_1(vec3<u32>(9053u, 33195u, 1u)), _wgslsmith_f_op_f32(f32(-1f) * -2215f), _wgslsmith_mult_u32(u_input.d, 1u)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.x, -122f, arg_0.x)))).x));
    global2 = array<i32, 19>();
    let var_1 = Struct_2(var_0.a, Struct_1(_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(arg_2.x, var_0.c, 0u)), vec3<u32>(u_input.d, u_input.d, u_input.d)) >> (~vec3<u32>(u_input.d, u_input.d, 4294967295u) % vec3<u32>(32u))), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.c | (u_input.d & _wgslsmith_mult_u32(4294967295u, arg_2.x)), arg_2.x, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(56609u, 15869u, var_0.a.a.x, u_input.d)), vec4<u32>(var_0.c >> (arg_2.x % 32u), arg_2.x, u_input.d, _wgslsmith_add_u32(u_input.d, u_input.d)))), 19u)], !(!select(vec4<bool>(true, arg_1, true, arg_1), vec4<bool>(true, false, false, arg_1), vec4<bool>(false, arg_1, arg_1, arg_1))), firstLeadingBit(abs(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, 0u) & vec4<u32>(arg_2.x, arg_2.x, u_input.d, u_input.d), _wgslsmith_mod_vec4_u32(vec4<u32>(40321u, var_0.c, 4294967295u, 54134u), vec4<u32>(35441u, 14551u, u_input.d, 1u))))));
    var var_2 = Struct_4(abs(var_1.e), Struct_1(vec3<u32>(14502u, 1u, u_input.d)), _wgslsmith_add_vec4_u32(var_1.e, countOneBits(vec4<u32>(~22154u, func_3(vec2<bool>(false, true), var_1.a, vec4<f32>(var_0.b, var_0.b, 601f, 759f), Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, u_input.d)), var_0.a, global2[_wgslsmith_index_u32(72976u, 19u)], var_1.d, vec4<u32>(arg_2.x, 40532u, arg_2.x, var_0.c))), 1u, _wgslsmith_mult_u32(var_1.a.a.x, u_input.d)))), global2[_wgslsmith_index_u32(14458u, 19u)], countOneBits(~vec4<u32>(4294967295u, 60874u, u_input.d, 1u)) >> (min(~countOneBits(vec4<u32>(44586u, 34656u, 6200u, u_input.d)), firstLeadingBit(~vec4<u32>(u_input.d, var_1.e.x, 4623u, arg_2.x))) % vec4<u32>(32u)));
    let var_3 = var_2.e.x;
    return Struct_5(Struct_2(Struct_1(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(var_2.e.xwx, var_2.a.yxy), _wgslsmith_mod_vec3_u32(var_1.e.ywx, arg_2))), var_1.a, ~(-40844i), vec4<bool>(all(vec3<bool>(arg_1, arg_1, var_1.d.x)), all(var_1.d.xz), true, all(var_1.d.zzw)), var_2.c), _wgslsmith_f_op_f32(ceil(-687f)) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.x, -484f))), var_1.d.xyy, var_2.b, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-203f, global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 1418f)), _wgslsmith_f_op_f32(round(1972f)), global0.x)), 14027i >= u_input.a, ~(min(abs(vec3<u32>(14494u, u_input.d, 24575u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, u_input.d, 4294967295u), vec3<u32>(u_input.d, 15u, u_input.d))) >> (func_1(Struct_3(Struct_1(vec3<u32>(u_input.d, 1u, u_input.d)), global0.x, u_input.d), _wgslsmith_div_vec3_f32(vec3<f32>(-1033f, -146f, global0.x), vec3<f32>(global0.x, global0.x, 396f))) % vec3<u32>(32u))));
    let var_1 = _wgslsmith_mult_vec3_u32(var_0.d.a, vec3<u32>(~max(abs(4294967295u), 4294967295u), ~(~_wgslsmith_dot_vec2_u32(var_0.a.b.a.zy, vec2<u32>(u_input.d, u_input.d))), var_0.d.a.x));
    var var_2 = true;
    let var_3 = _wgslsmith_div_vec2_u32(vec2<u32>(var_0.e.a.a.x, 44646u & max(~u_input.d, min(u_input.d, 0u))), var_1.yz);
    var var_4 = firstTrailingBit(reverseBits(~(vec4<u32>(var_0.a.e.x, u_input.d, var_1.x, var_3.x) ^ var_0.a.e)));
    let var_5 = firstTrailingBit(_wgslsmith_div_i32(firstLeadingBit(-1i), -1i));
    let var_6 = Struct_5(var_0.e, any(vec4<bool>(!(!var_0.c.x), false, var_0.e.d.x, var_0.a.d.x & (44700u < var_4.x))), vec3<bool>(false && !var_0.a.d.x, var_0.c.x, true), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.x * -1215f), _wgslsmith_f_op_f32(-global0.x), -1359f, _wgslsmith_f_op_f32(-global0.x))), all(vec4<bool>(false, true, true, true)) && any(!var_0.a.d), select(vec3<u32>(12284u, 15810u, u_input.d) & var_4.zxw, reverseBits(vec3<u32>(u_input.d, u_input.d, 1u)), !var_0.c) | _wgslsmith_add_vec3_u32(~vec3<u32>(0u, 22494u, 56035u), var_1)).a.a, var_0.a);
    var_4 = var_0.e.e;
    var var_7 = !var_6.e.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(select(vec2<u32>(1u, _wgslsmith_dot_vec3_u32(var_0.e.a.a, vec3<u32>(8052u, 53516u, u_input.d))), var_0.e.b.a.xx, select(var_6.c.zx, !vec2<bool>(var_0.b, true), true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, global0.x, -1240f), vec3<f32>(global0.x, global0.x, -1099f), vec3<bool>(false, var_0.e.d.x, var_0.e.d.x))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 308f) - vec3<f32>(-1021f, -2214f, 1893f)))) * vec3<f32>(-1692f, -1000f, 1973f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(514f, 401f, global0.x))), func_2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(min(global0.x, 951f)), _wgslsmith_f_op_f32(round(-300f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1354f, global0.x, -1450f, global0.x), vec4<f32>(global0.x, 516f, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-933f, global0.x, -2010f, -815f)))))), any(var_6.e.d.wx), var_1).d.a.yz);
}

