struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
    c: Struct_3,
    d: bool,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20> = array<bool, 20>(true, false, false, true, true, true, false, false, true, false, true, true, false, false, false, true, false, false, true, true);

var<private> global1: array<bool, 17> = array<bool, 17>(true, false, false, true, true, true, false, true, true, false, false, true, true, true, true, false, true);

var<private> global2: array<vec3<f32>, 29>;

var<private> global3: i32;

var<private> global4: array<vec2<u32>, 6> = array<vec2<u32>, 6>(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 447u), vec2<u32>(31854u, 0u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 58867u), vec2<u32>(40510u, 15929u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_sub_i32(-abs(-u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-20170i, u_input.a.x, u_input.a.x) & firstTrailingBit(vec3<i32>(u_input.a.x, u_input.a.x, 8423i)), vec3<i32>(-u_input.a.x, -494i, -2147483647i))), 266f, true, _wgslsmith_clamp_i32(985i, u_input.a.x, _wgslsmith_dot_vec2_i32(-u_input.a.yx, -vec2<i32>(u_input.a.x, -32454i))) | ~select(1i, -2147483647i | u_input.a.x, !global0[_wgslsmith_index_u32(35052u, 20u)]), ~75198u);
    global0 = array<bool, 20>();
    global1 = array<bool, 17>();
    let var_1 = Struct_5(u_input.a.zx, ~_wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.a.x, var_0.d, -19796i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, 16721i, -1i), vec3<i32>(var_0.d, 2147483647i, 0i)) >> (~vec3<u32>(8131u, var_0.e, var_0.e) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b)) + var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-529f - var_0.b)), 1194f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-254f, var_0.b, var_0.b)))))), vec2<i32>(u_input.a.x, -1i << (1u % 32u)));
    global0 = array<bool, 20>();
    return Struct_2(-(i32(-1i) * -var_0.a), Struct_1(0i, _wgslsmith_f_op_f32(min(-2192f, _wgslsmith_f_op_f32(f32(-1f) * -1588f))), var_0.c, 1i, _wgslsmith_mult_u32(min(var_0.e, var_0.e), firstLeadingBit(0u ^ var_0.e))));
}

fn func_3(arg_0: i32, arg_1: f32) -> u32 {
    var var_0 = Struct_4(arg_1, !vec4<bool>(select(!global1[_wgslsmith_index_u32(0u, 17u)], true, false), false, false, true), Struct_3(func_2(true)), true);
    global3 = ~(-12256i >> (_wgslsmith_add_u32(_wgslsmith_mod_u32(min(var_0.c.a.b.e, 4294967295u), ~var_0.c.a.b.e), ~(~7883u)) % 32u));
    let var_1 = _wgslsmith_mult_vec2_i32(u_input.a.xz, ~vec2<i32>(-47075i ^ var_0.c.a.a, _wgslsmith_clamp_i32(var_0.c.a.b.a, var_0.c.a.b.a & -75150i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -17279i, u_input.a.x), vec4<i32>(0i, arg_0, -1i, u_input.a.x)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, _wgslsmith_f_op_f32(-arg_1)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1672f, arg_1) * vec2<f32>(-239f, var_0.a))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(-arg_1)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1776f, -1076f)))));
    let var_3 = select(_wgslsmith_mult_u32(27174u, _wgslsmith_add_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.a.b.e, var_0.c.a.b.e, 1u), vec3<u32>(var_0.c.a.b.e, 54944u, 1u))), var_0.c.a.b.e)), ~0u, any(vec3<bool>(true, true, all(vec3<bool>(false, global0[_wgslsmith_index_u32(var_0.c.a.b.e, 20u)], global1[_wgslsmith_index_u32(55550u, 17u)])))));
    return ~(~(~_wgslsmith_mod_u32(firstTrailingBit(var_0.c.a.b.e), ~1u)));
}

fn func_1() -> u32 {
    let var_0 = func_2(global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 4294967295u), 6u)], reverseBits(global4[_wgslsmith_index_u32(1u, 6u)]))), 20u)]);
    var var_1 = Struct_3(var_0);
    let var_2 = func_2(global1[_wgslsmith_index_u32(func_3(_wgslsmith_dot_vec2_i32(u_input.a.xy, u_input.a.zx), _wgslsmith_f_op_f32(f32(-1f) * -547f)), 17u)]);
    var var_3 = _wgslsmith_f_op_f32(-var_1.a.b.b);
    var var_4 = ~(~select(vec4<u32>(_wgslsmith_sub_u32(1u, 0u), 23351u | var_1.a.b.e, var_2.b.e, 1u), ~(~vec4<u32>(35226u, var_0.b.e, 56862u, 522u)), vec4<bool>(var_2.b.c | true, true, all(vec3<bool>(true, var_1.a.b.c, global1[_wgslsmith_index_u32(1u, 17u)])), var_1.a.b.c)));
    return 0u;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = ~_wgslsmith_add_vec3_i32(select(min(firstTrailingBit(arg_1.yzx), max(vec3<i32>(u_input.a.x, arg_1.x, arg_2.d), vec3<i32>(u_input.a.x, arg_2.d, 13082i))), min(vec3<i32>(u_input.a.x, u_input.a.x, -1i), vec3<i32>(arg_2.a, -34299i, arg_2.d) << (vec3<u32>(arg_0.x, 23167u, arg_2.e) % vec3<u32>(32u))), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0.x ^ arg_0.x, _wgslsmith_mult_u32(arg_2.e, 0u), arg_2.e), 17u)]), u_input.a);
    var var_1 = var_0.x;
    global1 = array<bool, 17>();
    let var_2 = -_wgslsmith_sub_i32((var_0.x ^ 4438i) ^ _wgslsmith_div_i32(2147483647i, 1i), ~var_0.x) | -1i;
    global1 = array<bool, 17>();
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a.x;
    var var_1 = firstTrailingBit(~vec3<i32>(-25301i, -29467i, ~u_input.a.x) & u_input.a);
    var var_2 = vec4<i32>(u_input.a.x, _wgslsmith_add_i32(firstTrailingBit(var_1.x), 4499i), _wgslsmith_dot_vec4_i32(func_4(global4[_wgslsmith_index_u32(1u, 6u)], select(vec4<i32>(57360i, u_input.a.x, var_1.x, 3918i), vec4<i32>(-46061i, 24318i, -2147483647i, 1i), false) >> (vec4<u32>(27951u, 4294967295u, 4294967295u, 51390u) % vec4<u32>(32u)), Struct_1(4670i, _wgslsmith_f_op_f32(-192f - -686f), global1[_wgslsmith_index_u32(func_1(), 17u)], min(2147483647i, var_0), 1u)), vec4<i32>(reverseBits(u_input.a.x), _wgslsmith_dot_vec2_i32(var_1.zx, _wgslsmith_sub_vec2_i32(var_1.yx, vec2<i32>(var_1.x, var_0))), var_1.x, _wgslsmith_add_i32(abs(-2147483647i), u_input.a.x))), 1i);
    var var_3 = Struct_5(var_2.wy >> (~(vec2<u32>(4294967295u, 90896u) >> (global4[_wgslsmith_index_u32(1u, 6u)] % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(var_2.ywy, -vec3<i32>(u_input.a.x, -2147483647i, 7920i)) & select(vec3<i32>(var_1.x, 0i, -2147483647i), _wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(var_2.x, u_input.a.x, 36953i)), !vec3<bool>(false, false, global1[_wgslsmith_index_u32(1u, 17u)])), _wgslsmith_sub_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(-1i, 18327i, -1i), u_input.a), -u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1810f, -335f, -1172f))), vec2<i32>(i32(-1i) * -abs(-18448i), _wgslsmith_mult_i32(1i, abs(_wgslsmith_sub_i32(-11755i, var_2.x)))));
    let var_4 = func_2(!global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(max(2644u, 42839u), func_2(false).b.e, select(50092u, 1u, true)), 20u)]);
    let var_5 = vec4<i32>(_wgslsmith_dot_vec4_i32(-(vec4<i32>(var_2.x, -1i, 1i, var_3.d.x) << (vec4<u32>(var_4.b.e, var_4.b.e, 55070u, 1u) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_mult_u32(var_4.b.e, 0u), ~1u, ~58724u, 1u ^ var_4.b.e) % vec4<u32>(32u)), ~(func_4(vec2<u32>(var_4.b.e, 8002u), vec4<i32>(-27569i, 1i, -22979i, var_2.x), Struct_1(var_2.x, -533f, false, var_0, var_4.b.e)) >> (vec4<u32>(var_4.b.e, 18923u, var_4.b.e, 20404u) % vec4<u32>(32u)))), ~var_1.x, select(-(var_3.d.x << (var_4.b.e % 32u)), ~var_4.b.d, false), 45897i);
    let var_6 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2982f)) + _wgslsmith_f_op_f32(floor(-1289f))), _wgslsmith_f_op_f32(min(957f, _wgslsmith_f_op_f32(var_3.c.x * _wgslsmith_f_op_f32(step(var_3.c.x, var_3.c.x))))))), _wgslsmith_f_op_f32(floor(var_4.b.b)), -1440f);
    let var_7 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.c.x) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(824f - var_6.x) + _wgslsmith_f_op_f32(var_4.b.b * -1692f))) - _wgslsmith_f_op_f32(-1871f + -835f)));
    var var_8 = Struct_5(_wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.a.x, var_0) ^ ~vec2<i32>(var_3.a.x, var_1.x), ~var_1.zz) ^ ~vec2<i32>(select(14882i, var_5.x, false), -1i), vec3<i32>(var_3.a.x, -_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), 2147483647i) | select(vec3<i32>(~(-32196i), ~var_0, -2147483647i), vec3<i32>(var_2.x, var_0 << (69086u % 32u), abs(-29798i)), all(!vec3<bool>(global1[_wgslsmith_index_u32(var_4.b.e, 17u)], var_4.b.c, true))), var_3.c, reverseBits(~(-vec2<i32>(6655i, var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(var_4.b.e ^ ~var_4.b.e, ~(~4294967295u), _wgslsmith_add_u32(4294967295u, ~var_4.b.e)));
}

