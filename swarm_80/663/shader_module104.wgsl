struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 5> = array<vec2<bool>, 5>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false));

var<private> global1: array<i32, 23> = array<i32, 23>(-53913i, 28735i, 1i, 8348i, 0i, 2147483647i, i32(-2147483648), 48878i, -43297i, -1i, 1i, 0i, -55662i, -89809i, 1i, 14247i, 1i, 1i, 1i, i32(-2147483648), 4662i, 37766i, i32(-2147483648));

var<private> global2: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(1i, 1i), vec2<i32>(2102i, 2147483647i), vec2<i32>(1i, 2147483647i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(0i, -4065i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global0 = array<vec2<bool>, 5>();
    global2 = array<vec2<i32>, 5>();
    return 57822u | reverseBits(u_input.a.x >> (u_input.a.x % 32u));
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_3) -> bool {
    global0 = array<vec2<bool>, 5>();
    var var_0 = arg_2;
    var var_1 = vec3<bool>(true | (~arg_0 == (_wgslsmith_sub_i32(0i, global1[_wgslsmith_index_u32(u_input.a.x, 23u)]) >> (~u_input.a.x % 32u))), true, true & (-1i <= min(17303i & arg_1.x, ~(-2147483647i))));
    var_1 = vec3<bool>(false, any(select(select(vec2<bool>(var_1.x, var_1.x), select(vec2<bool>(false, true), vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, var_1.x)), true), global0[_wgslsmith_index_u32(func_3(Struct_1(var_0.c.a, var_0.b.a.x)), 5u)], -1i >= reverseBits(u_input.b.x))), all(vec2<bool>(all(vec2<bool>(false, false)), -442f <= arg_2.c.a.x)));
    var var_2 = u_input.a.xxz;
    return !var_1.x;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(379f * arg_1.b.x), _wgslsmith_f_op_f32(1569f - -1901f)))), -1137f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c + arg_1.c)) + arg_1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.c)) + _wgslsmith_f_op_f32(399f * _wgslsmith_f_op_f32(642f - _wgslsmith_f_op_f32(arg_1.b.x * 128f)))));
    let var_1 = !(!vec4<bool>(any(global0[_wgslsmith_index_u32(countOneBits(arg_0.x), 5u)]), arg_2.x | (u_input.a.x >= arg_0.x), arg_2.x, true));
    var var_2 = var_1;
    var var_3 = _wgslsmith_mod_vec2_u32(arg_1.a, max(countOneBits(vec2<u32>(4294967295u, 1u) | firstLeadingBit(vec2<u32>(8276u, u_input.a.x))), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, arg_1.d.a.x, arg_1.d.a.x), arg_1.d.a) | arg_0.x, func_3(Struct_1(vec3<f32>(861f, 1000f, 516f), -1000f)))));
    global1 = array<i32, 23>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, -141f, var_0.b)))))), var_0.b);
}

fn func_1(arg_0: u32, arg_1: Struct_4) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(arg_1.d.a.x, 1u), 5u)];
    var var_1 = func_4(arg_1.d.a.zy, Struct_4(vec2<u32>(arg_0, 50855u) | ~arg_1.d.a.zx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_1.b), arg_1.b))), _wgslsmith_f_op_f32(arg_1.c * -860f), arg_1.d), select(vec3<bool>(func_2(max(var_0.x, -22145i), -vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(16698u, 23u)], var_0.x), Struct_3(arg_0, Struct_1(vec3<f32>(-368f, arg_1.c, 284f), 726f), Struct_1(vec3<f32>(arg_1.b.x, arg_1.b.x, arg_1.b.x), arg_1.b.x))), any(!global0[_wgslsmith_index_u32(1u, 5u)]), !all(vec2<bool>(false, true))), vec3<bool>(true, true, 1u == u_input.a.x), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, false, any(vec4<bool>(false, true, false, true))), true)), abs(_wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(96176i, 1i, var_0.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -33889i, 31260i), vec3<i32>(-2147483647i, u_input.b.x, var_0.x)), ~vec3<i32>(u_input.b.x, -52319i, u_input.b.x)) >> (vec3<u32>(min(arg_0, arg_0), 4294967295u, ~u_input.a.x) % vec3<u32>(32u))));
    let var_2 = Struct_2(max(vec3<u32>(arg_1.d.a.x, _wgslsmith_clamp_u32(6667u, arg_1.d.a.x, u_input.a.x), firstLeadingBit(u_input.a.x)) & ~vec3<u32>(u_input.a.x, 11941u, u_input.a.x), ~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, arg_1.a.x, 1u), u_input.a.ywz) | ((u_input.a.wwy ^ u_input.a.xyz) | (vec3<u32>(u_input.a.x, u_input.a.x, arg_0) >> (arg_1.d.a % vec3<u32>(32u))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.c), 1137f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), -184f)));
    var var_4 = _wgslsmith_sub_u32(reverseBits(4294967295u), ~_wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_mod_vec4_u32(u_input.a, u_input.a)) >> (u_input.a.x % 32u));
    return ~(select(_wgslsmith_sub_u32(var_2.a.x, countOneBits(arg_1.d.a.x)), 1u, _wgslsmith_dot_vec3_u32(var_2.a, vec3<u32>(var_2.a.x, 4294967295u, arg_1.d.a.x)) != _wgslsmith_mult_u32(5558u, var_2.a.x)) ^ _wgslsmith_mult_u32(countOneBits(1u), arg_1.d.a.x));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_3) -> StorageBuffer {
    let var_0 = func_2(~(~max(0i, 31791i) >> ((~arg_0.x & ~85806u) % 32u)), abs(vec3<i32>(1i << (~u_input.a.x % 32u), u_input.b.x, global1[_wgslsmith_index_u32(41304u, 23u)])), Struct_3(~arg_2.a, arg_1, Struct_1(vec3<f32>(727f, _wgslsmith_f_op_f32(-839f + 187f), _wgslsmith_f_op_f32(abs(arg_2.b.b))), arg_1.b)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.b.a) + vec3<f32>(_wgslsmith_f_op_f32(ceil(-463f)), -577f, _wgslsmith_f_op_f32(arg_2.c.a.x * arg_1.b))))), arg_1.b);
    global2 = array<vec2<i32>, 5>();
    let var_2 = true;
    global0 = array<vec2<bool>, 5>();
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(-arg_1.a.x), 1f, _wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, arg_1.b, arg_1.a.x, -791f))))))), abs(select(vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(4294967295u, 23u)], 34052i) << (vec3<u32>(44085u, 4294967295u, arg_0.x) % vec3<u32>(32u)), vec3<i32>(1i, u_input.b.x, global1[_wgslsmith_index_u32(0u, 23u)]), true)) & vec3<i32>(6292i << (_wgslsmith_add_u32(65275u, arg_0.x) % 32u), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global1[_wgslsmith_index_u32(u_input.a.x, 23u)]), global2[_wgslsmith_index_u32(arg_0.x, 5u)])), ~firstTrailingBit(-79108i)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(20550u, 11209u, ~arg_2.a), u_input.a.zzz), ~_wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(27019u, arg_2.a, 37210u, 0u)), ~1u, 56272u), u_input.a.wyx);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 23>();
    global2 = array<vec2<i32>, 5>();
    var var_0 = vec2<bool>(true, true);
    global1 = array<i32, 23>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-202f, _wgslsmith_f_op_f32(-1176f * 341f), _wgslsmith_div_f32(2223f, -828f)) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1224f, -1355f, 1000f), vec3<f32>(1431f, 2247f, -674f), vec3<bool>(var_0.x, var_0.x, false)))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1488f * -248f), _wgslsmith_f_op_f32(sign(422f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(200f + 1294f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1377f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-499f))))));
    let x = u_input.a;
    s_output = func_5(~vec4<u32>(_wgslsmith_div_u32(u_input.a.x, 5942u), 1u, ~u_input.a.x, func_1(u_input.a.x, Struct_4(u_input.a.yz, var_1.a.zz, var_1.a.x, Struct_2(vec3<u32>(4294967295u, 4294967295u, 4294967295u))))) & ~(vec4<u32>(40963u, 0u, 4294967295u, 79194u) >> (~u_input.a % vec4<u32>(32u))), var_1, Struct_3(78194u, var_1, var_1));
}

