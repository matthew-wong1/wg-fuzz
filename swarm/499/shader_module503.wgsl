struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 20>;

var<private> global1: Struct_4 = Struct_4(vec4<f32>(356f, -826f, -1665f, 2013f), vec4<u32>(32114u, 0u, 1u, 0u));

var<private> global2: array<Struct_4, 2> = array<Struct_4, 2>(Struct_4(vec4<f32>(737f, 115f, -1496f, 1689f), vec4<u32>(1u, 4294967295u, 4294967295u, 20558u)), Struct_4(vec4<f32>(-1341f, -509f, -1477f, 219f), vec4<u32>(35411u, 4294967295u, 55913u, 1u)));

var<private> global3: array<Struct_3, 14>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    let var_0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(770f - _wgslsmith_f_op_f32(f32(-1f) * -369f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1364f, 2573f)), global1.a.x)), _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1754f, _wgslsmith_f_op_f32(global1.a.x + 765f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1577f - 1460f))))), _wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(global1.b, ~global1.b), global1.b));
    var var_1 = u_input.c;
    var var_2 = vec3<bool>(false, all(select(vec2<bool>(true, true), vec2<bool>(true, true), ~u_input.e < 1u)), !(!all(vec3<bool>(false, true, true))));
    let var_3 = Struct_3(_wgslsmith_mod_vec3_i32(~max(-vec3<i32>(u_input.c, u_input.c, u_input.c), _wgslsmith_sub_vec3_i32(vec3<i32>(-17897i, 27080i, u_input.c), vec3<i32>(u_input.c, -19562i, -1i))), max(select(vec3<i32>(u_input.c, u_input.c, 16431i), vec3<i32>(u_input.c, u_input.c, u_input.c), false), -vec3<i32>(u_input.c, 1i, -21110i)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, global1.b.x, u_input.a.x), ~vec3<u32>(1u, 1u, 0u), var_0.b.ywz) % vec3<u32>(32u))));
    global1 = var_0;
    return _wgslsmith_add_u32(13777u, global1.b.x);
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global1.a, vec4<f32>(-1000f, global1.a.x, arg_2, global1.a.x)))))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-global1.a))));
    let var_1 = Struct_2(Struct_1(-21627i, true && arg_0, true), !(!(_wgslsmith_f_op_f32(ceil(-265f)) >= _wgslsmith_f_op_f32(-global1.a.x))), Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-5822i, 45843i, -1i, u_input.c) & vec4<i32>(u_input.c, 1i, -74438i, u_input.c), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<i32>(u_input.c, 1i, -32034i, 51126i), vec4<i32>(u_input.c, u_input.c, u_input.c, -37049i))), -countOneBits(vec4<i32>(-31256i, u_input.c, -10986i, 38259i))), true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(679f, arg_2)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(668f * -1313f) + _wgslsmith_f_op_f32(trunc(var_0.x)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(global1.a.zx * vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)), 1000f)), var_0.x));
    var var_3 = all(vec4<bool>(false, !(func_3(vec2<f32>(global1.a.x, 1000f)) != firstLeadingBit(u_input.b)), !var_1.a.b && true, var_1.a.b));
    var var_4 = Struct_3(_wgslsmith_sub_vec3_i32(~(~vec3<i32>(0i, u_input.c, var_1.c.a) ^ ~vec3<i32>(u_input.c, -1i, u_input.c)), vec3<i32>(~1848i, _wgslsmith_mult_i32(-2147483647i, var_1.c.a << (0u % 32u)), 0i)));
    return Struct_2(var_1.a, var_1.a.c, var_1.c);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_4 {
    var var_0 = global1.a.wyz;
    var var_1 = 1u;
    var_0 = global1.a.wxy;
    var var_2 = false;
    let var_3 = _wgslsmith_f_op_vec3_f32(-global1.a.zyz);
    return Struct_4(_wgslsmith_f_op_vec4_f32(-global1.a), vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.b.x, 35710u, arg_1.x) >> (vec3<u32>(u_input.d, u_input.d, 36470u) % vec3<u32>(32u)), firstTrailingBit(arg_1.xxw)), 4294967295u, 0u, global1.b.x));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_4) -> Struct_4 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_mult_i32(0i, u_input.c) | countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.a, u_input.c, u_input.c), vec3<i32>(u_input.c, 1i, u_input.c))), any(vec4<bool>(!arg_2.c, u_input.c != 8770i, arg_2.c, all(vec4<bool>(true, false, true, true)))), !select(arg_2.b, all(vec3<bool>(true, false, false)), select(arg_2.c, false, true))), !(arg_2.a <= -reverseBits(arg_2.a)), func_2(!(arg_2.b && false), _wgslsmith_clamp_u32(~_wgslsmith_div_u32(arg_3.b.x, 4294967295u), 13626u, arg_3.b.x), global1.a.x).a);
    global2 = array<Struct_4, 2>();
    var var_1 = false;
    global3 = array<Struct_3, 14>();
    let var_2 = countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(var_0.a.a, u_input.c), vec2<i32>(16279i, -1i)), min(-vec2<i32>(-1775i, 11785i), _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, var_0.a.a), firstLeadingBit(vec2<i32>(64074i, 36743i)), vec2<i32>(var_0.a.a, var_0.c.a)))));
    return global0[_wgslsmith_index_u32(13235u, 20u)];
}

fn func_1(arg_0: f32, arg_1: u32) -> bool {
    let var_0 = -(~(i32(-1i) * -u_input.c));
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(global1.a.yxw));
    let var_2 = !(global1.b.x == global1.b.x);
    var var_3 = func_5(global1.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1059f, arg_0), _wgslsmith_f_op_vec2_f32(var_1.zx + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) - vec2<f32>(var_1.x, -835f)))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a.wz) - _wgslsmith_f_op_vec2_f32(-var_1.zx))))), Struct_1(u_input.c, true, var_2), func_4(func_2(!(var_2 & var_2), global1.b.x, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(arg_0 * global1.a.x))), ~vec4<u32>(4294967295u, arg_1, 4294967295u, arg_1) | global1.b, func_2(true, 4294967295u, _wgslsmith_div_f32(733f, _wgslsmith_f_op_f32(-global1.a.x))).c));
    let var_4 = !(!select(vec2<bool>(true, var_2), select(vec2<bool>(var_2, var_2), select(vec2<bool>(var_2, var_2), vec2<bool>(false, false), vec2<bool>(var_2, var_2)), arg_1 > arg_1), all(!vec4<bool>(false, false, var_2, var_2))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 2>();
    let var_0 = all(!vec3<bool>(func_1(_wgslsmith_f_op_f32(global1.a.x - global1.a.x), 1u), true, all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), true))));
    let var_1 = global3[_wgslsmith_index_u32(~global1.b.x, 14u)];
    let var_2 = vec2<bool>(var_0, any(select(vec3<bool>(41955u < global1.b.x, true, var_0), vec3<bool>(var_0, all(vec3<bool>(true, false, false)), false), vec3<bool>(true, var_0, true))));
    let var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-786f, global1.a.x, -188f, global1.a.x), vec4<f32>(-998f, 2323f, global1.a.x, global1.a.x), vec4<bool>(var_2.x, var_2.x, var_0, true))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, 1338f, global1.a.x, -1475f) - vec4<f32>(global1.a.x, global1.a.x, 434f, 615f)))) + vec4<f32>(_wgslsmith_f_op_f32(min(global1.a.x, -1243f)), _wgslsmith_div_f32(-148f, func_5(vec4<u32>(u_input.b, 0u, 13156u, 30249u), global1.a.xy, Struct_1(var_1.a.x, var_0, var_0), global2[_wgslsmith_index_u32(1u, 2u)]).a.x), -843f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.a.x))))), global1.b);
    global3 = array<Struct_3, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(firstTrailingBit(reverseBits(u_input.c)), -reverseBits(var_1.a.x), ~11372i), -302f, _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(~var_1.a.yz, vec2<i32>(0i, u_input.c) ^ var_1.a.yz), var_1.a.zz), reverseBits(~select(vec2<i32>(var_1.a.x, var_1.a.x), vec2<i32>(0i, u_input.c), var_0))));
}

