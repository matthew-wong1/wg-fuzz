struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_2(_wgslsmith_sub_u32(abs(abs(_wgslsmith_mult_u32(u_input.c.x, 1u))), arg_0.b));
    var_0 = Struct_2(1u);
    let var_1 = vec2<bool>(!(arg_0.a.x <= arg_0.a.x), any(vec3<bool>(false, any(vec2<bool>(true, true)), true)));
    var_0 = Struct_2(abs(arg_0.b));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-arg_0.a))), ~u_input.b, 1u, select(!select(!vec4<bool>(var_1.x, arg_0.e, var_1.x, false), arg_0.d, select(arg_0.d, vec4<bool>(false, true, var_1.x, var_1.x), arg_0.d)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), !(-2778f <= arg_0.a.x)), all(arg_0.d.yy)), false);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1251f) - _wgslsmith_f_op_f32(-var_2.a.x));
}

fn func_2() -> vec2<u32> {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(701f, 1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1469f)))), _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-646f, -1411f, 1100f, -2345f) * vec4<f32>(1111f, 264f, -950f, 162f)), 69693u, ~u_input.c.x, select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false)), true))), -2004f), 57247u, ~1u, !select(vec4<bool>(true, true, true, -2147483647i <= u_input.a.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), false), true), !(abs(u_input.a.x) == 2147483647i));
    var_0 = Struct_1(var_0.a, 1u, ~_wgslsmith_mult_u32(4294967295u, 1u), var_0.d, !var_0.e);
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_0.a)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1048f, 1011f, _wgslsmith_f_op_f32(var_0.a.x + var_0.a.x), -2023f)))), ~var_0.c, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.c.yz, ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, var_0.b), vec2<u32>(16482u, 36879u))), abs(_wgslsmith_clamp_vec2_u32(select(u_input.c.zx, u_input.c.xx, var_0.d.yw), ~vec2<u32>(48735u, var_0.b), _wgslsmith_sub_vec2_u32(u_input.c.xz, u_input.c.xz)))), !(!var_0.d), false);
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a), var_0.c, select(min(4294967295u, var_0.b), firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_mod_u32(var_0.b, var_0.b), u_input.c.x | 96566u)), false), !vec4<bool>(any(var_0.d), any(!var_0.d.xxx), var_0.d.x, 1i > _wgslsmith_clamp_i32(u_input.d, u_input.a.x, 1i)), !any(!vec4<bool>(var_0.e, true, var_0.e, false)));
    let var_1 = !var_0.d;
    return vec2<u32>(~41706u, ~(~54680u));
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: vec2<f32>) -> Struct_3 {
    let var_0 = ~(~select(~func_2(), min(_wgslsmith_clamp_vec2_u32(u_input.c.xx, vec2<u32>(u_input.c.x, u_input.b), u_input.c.zx), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 42880u), u_input.c.yz)), true));
    let var_1 = _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(785f, arg_1) * _wgslsmith_f_op_f32(-620f * 308f))))));
    var var_2 = false;
    let var_3 = vec2<bool>(select(any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false)), !all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false)), true), !(true || (arg_2.x == _wgslsmith_f_op_f32(min(arg_2.x, var_1)))));
    var var_4 = -vec3<i32>(2147483647i, _wgslsmith_add_i32(arg_0.a, -10727i), ~(-40657i));
    return Struct_3(27347i);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: vec2<u32>) -> vec2<u32> {
    let var_0 = true;
    var var_1 = arg_0.a.x;
    let var_2 = Struct_2(24317u);
    var var_3 = arg_0;
    var_1 = 576f;
    return vec2<u32>(~(1u >> (max(8988u, var_2.a) % 32u)) ^ 35117u, arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec2_u32(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1943f, -1019f, -1794f, -1588f) + vec4<f32>(615f, -346f, 1061f, 1101f)), ~8279u, 24746u, select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false)), all(vec2<bool>(false, true))), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, u_input.a.x, u_input.d), vec3<i32>(-20267i, 8432i, u_input.d)), func_1(Struct_3(2147483647i), _wgslsmith_f_op_f32(296f - 2436f), vec2<f32>(1284f, 1007f)), min(vec2<u32>(65338u, u_input.c.x), u_input.c.xz) | vec2<u32>(26543u, u_input.c.x)), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(u_input.c.yy, u_input.c.zz), ~vec2<u32>(u_input.c.x, 2209u))) << (u_input.c.yz % vec2<u32>(32u));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1048f, 1173f, 1650f, 1000f))) * _wgslsmith_div_vec4_f32(vec4<f32>(-424f, 683f, -1000f, 1000f), vec4<f32>(1760f, -398f, -1232f, -352f))) - vec4<f32>(393f, _wgslsmith_f_op_f32(abs(554f)), _wgslsmith_f_op_f32(1004f + -2753f), -762f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -522f, -281f, -1152f), vec4<f32>(1000f, 933f, -512f, 531f))))))), func_2().x, ~select(40263u, ~abs(var_0.x), all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)))), vec4<bool>(any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), true)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true))), min(-2147483647i, 1i ^ u_input.d) < firstTrailingBit(min(u_input.a.x, -2147483647i)), true & any(vec3<bool>(true, true, true))), true);
    var_0 = vec2<u32>(_wgslsmith_mod_u32(u_input.c.x, ~var_0.x), 3142u);
    let var_2 = (_wgslsmith_dot_vec3_i32(~(-u_input.a), u_input.a) | ((-2147483647i >> (var_0.x % 32u)) ^ 1i)) >= countOneBits(u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~_wgslsmith_sub_i32(-2147483647i, 0i), -25492i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, -1242f, var_1.a.x, var_1.a.x) + vec4<f32>(var_1.a.x, -255f, 1051f, var_1.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x), var_1.a))), !all(var_1.d.xy))) * vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), var_1.a.x, 779f)), vec2<i32>(u_input.a.x, firstTrailingBit(-1i)), var_0.x);
}

