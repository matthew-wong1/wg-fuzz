struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false));

var<private> global1: array<Struct_3, 8>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = Struct_3(Struct_1(!(all(vec2<bool>(false, false)) && true), 20314u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-251f, -1708f)), _wgslsmith_clamp_u32(~u_input.a.x, arg_0, abs(1u)) << (18827u % 32u), 19682u), abs(u_input.a.zy | u_input.a.yx), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(2556f, -140f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-548f)), _wgslsmith_f_op_f32(min(-244f, -837f))))), vec3<f32>(666f, -2321f, _wgslsmith_f_op_f32(min(-604f, _wgslsmith_f_op_f32(f32(-1f) * -216f)))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1f, 1f, 1f, 1f))))));
    var var_1 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.d.wyw, vec3<f32>(var_0.d.x, var_0.d.x, 143f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.d.xyz))), vec3<f32>(-235f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.c.x, 2525f, false))), _wgslsmith_f_op_f32(var_0.c.x + var_0.d.x))), ~u_input.a, ~(~firstLeadingBit(firstTrailingBit(var_0.b))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(108f, -338f, var_0.d.x, var_0.c.x) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.d.x, var_0.d.x, 303f, 716f)))))), vec4<f32>(var_0.d.x, _wgslsmith_div_f32(var_0.d.x, 1000f), -283f, 191f))), true);
    global0 = array<vec4<bool>, 6>();
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(_wgslsmith_sub_u32(max(arg_0, 56986u), abs(113694u))), ~u_input.a.x) & ~1u, 8u)];
    var var_3 = countOneBits(-u_input.b) | ~(-(i32(-1i) * -37413i) >> (select(49128u, _wgslsmith_mult_u32(u_input.d.x, 15472u), !var_2.a.a) % 32u));
    return ~(~(~(~0u)));
}

fn func_2(arg_0: Struct_3) -> i32 {
    global1 = array<Struct_3, 8>();
    global0 = array<vec4<bool>, 6>();
    var var_0 = arg_0.a.a;
    var_0 = select(-1198f <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x)))), !all(!global0[_wgslsmith_index_u32(abs(21444u), 6u)]), all(vec3<bool>(true, all(select(vec2<bool>(false, arg_0.a.a), vec2<bool>(false, false), vec2<bool>(false, true))), false)));
    var var_1 = Struct_3(Struct_1(!(any(vec4<bool>(arg_0.a.a, arg_0.a.a, arg_0.a.a, false)) || true), arg_0.a.d, arg_0.c.x, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(5591u, u_input.d.x, 0u), vec3<u32>(u_input.a.x, 80922u, u_input.d.x))), select(~(~85111u), 1u, true)), vec2<u32>(_wgslsmith_add_u32(~func_3(1566u), u_input.d.x), u_input.d.x), arg_0.d.wwx, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, arg_0.a.c, 3480f, -839f)))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.c.x, arg_0.a.c, arg_0.c.x, arg_0.c.x), arg_0.d))))));
    return u_input.c.x;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: Struct_3) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(arg_3.d.xy - _wgslsmith_f_op_vec2_f32(abs(arg_3.d.wy)));
    global0 = array<vec4<bool>, 6>();
    global0 = array<vec4<bool>, 6>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-863f)));
    let var_2 = Struct_3(arg_0, (_wgslsmith_sub_vec2_u32(arg_3.b, firstLeadingBit(vec2<u32>(1u, 20146u))) | arg_3.b) << (vec2<u32>(~arg_3.a.e, _wgslsmith_dot_vec4_u32(vec4<u32>(81856u, arg_2, arg_0.b, arg_2), min(vec4<u32>(arg_0.b, u_input.a.x, 4294967295u, 4294967295u), vec4<u32>(arg_3.b.x, arg_2, 73155u, u_input.d.x)))) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 716f, -572f))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(arg_3.c))))))), arg_3.d);
    return var_2.d.yzw;
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = select(abs(u_input.c), _wgslsmith_mult_vec4_i32(u_input.c, u_input.c), true);
    global0 = array<vec4<bool>, 6>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(func_4(Struct_1(!(u_input.a.x <= 4294967295u), 4294967295u, _wgslsmith_f_op_f32(f32(-1f) * -544f), 0u, u_input.d.x), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 13989i, u_input.b, var_0.x), u_input.c), -u_input.c.x, func_2(global1[_wgslsmith_index_u32(u_input.d.x, 8u)]), arg_0), _wgslsmith_clamp_vec4_i32(u_input.c, -u_input.c, u_input.c)), (_wgslsmith_mult_u32(146007u, u_input.d.x) | _wgslsmith_mod_u32(u_input.d.x, 0u)) ^ 4294967295u, global1[_wgslsmith_index_u32(26517u, 8u)])), ~(~(vec3<u32>(u_input.d.x, 4294967295u, 1u) ^ u_input.a)), min(~vec2<u32>(1u, 46036u), ~(~(~u_input.d.zz))), vec4<f32>(_wgslsmith_f_op_f32(1973f - _wgslsmith_f_op_f32(-487f + 2882f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1624f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-567f)), _wgslsmith_f_op_f32(trunc(-516f))))), _wgslsmith_f_op_f32(-479f * _wgslsmith_f_op_f32(-720f - 1411f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f + 1956f), -304f))), true);
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.a.x, var_1.a.x, 146f)))), _wgslsmith_f_op_vec3_f32(-var_1.d.wwx)) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(var_1.d.yzx)), _wgslsmith_f_op_vec3_f32(-var_1.a)))), var_1.b, max(select(~_wgslsmith_clamp_vec2_u32(var_1.b.yx, vec2<u32>(var_1.b.x, var_1.c.x), vec2<u32>(1u, 0u)), u_input.a.zz, !select(vec2<bool>(false, true), vec2<bool>(var_1.e, var_1.e), true)), u_input.d.xx), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, -259f, var_1.d.x, -733f)) - vec4<f32>(var_1.d.x, -1546f, var_1.a.x, 974f)))), var_1.e);
    let var_3 = 23602i;
    return _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, var_3, arg_0) ^ vec3<i32>(var_0.x, arg_0, arg_0), abs(vec3<i32>(1i, 2147483647i, -2147483647i))), -select(arg_0, 1i, var_2.e), countOneBits(_wgslsmith_sub_i32(var_3, -25407i)), _wgslsmith_mod_i32(~var_3, var_0.x)) & select(-u_input.c | (vec4<i32>(arg_0, arg_0, arg_0, 1i) | vec4<i32>(2802i, arg_0, u_input.b, arg_0)), select(u_input.c, u_input.c, var_1.e) | vec4<i32>(u_input.b, -2147483647i, -1i, 2147483647i), vec4<bool>(var_2.e != var_1.e, false, all(vec2<bool>(true, true)), any(vec3<bool>(var_1.e, false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 8>();
    var var_0 = ~_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.c.yyw, vec3<i32>(44666i, u_input.b, 0i)), u_input.b) == reverseBits(func_1(abs(0i)));
    global0 = array<vec4<bool>, 6>();
    var var_1 = -1204f;
    var var_2 = Struct_1(true, u_input.a.x, _wgslsmith_f_op_f32(trunc(-1117f)), u_input.a.x, u_input.d.x);
    global1 = array<Struct_3, 8>();
    var var_3 = _wgslsmith_f_op_f32(var_2.c + _wgslsmith_f_op_f32(1843f + -1886f));
    let x = u_input.a;
    s_output = StorageBuffer(~1u, ~_wgslsmith_sub_i32(19158i, 1i) ^ func_1(min(countOneBits(u_input.c.x), 54612i | u_input.c.x)), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.yy, abs(vec2<u32>(4294967295u, var_2.b))) << (u_input.d.zx % vec2<u32>(32u)), select(u_input.a.yx, _wgslsmith_div_vec2_u32(~vec2<u32>(var_2.b, 4294967295u), vec2<u32>(26698u, 61177u) & u_input.a.zx), any(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.d, 4294967295u, u_input.a.x), u_input.d), 6u)]))), _wgslsmith_f_op_f32(-var_2.c), var_2.c);
}

