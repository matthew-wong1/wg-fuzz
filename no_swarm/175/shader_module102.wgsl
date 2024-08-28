struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: f32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: array<bool, 8> = array<bool, 8>(true, true, false, true, false, true, true, true);

var<private> global2: array<vec4<u32>, 21>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32, arg_1: f32) -> vec4<bool> {
    global1 = array<bool, 8>();
    var var_0 = vec3<f32>(1172f, arg_0, 178f);
    var var_1 = arg_0;
    let var_2 = !global0.zx;
    let var_3 = var_2.x;
    return !vec4<bool>(var_3, var_2.x, true, any(select(select(vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 8u)], false, global0.x), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 8u)], global1[_wgslsmith_index_u32(26318u, 8u)], var_2.x), global1[_wgslsmith_index_u32(u_input.b, 8u)]), vec4<bool>(false, true, false, false), select(vec4<bool>(global0.x, var_2.x, false, var_2.x), vec4<bool>(false, false, false, true), vec4<bool>(var_2.x, var_2.x, true, true)))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: bool, arg_3: vec2<f32>) -> f32 {
    global2 = array<vec4<u32>, 21>();
    let var_0 = Struct_2(_wgslsmith_mod_u32(u_input.b >> (min(7399u, _wgslsmith_div_u32(2850u, 53167u)) % 32u), u_input.b), max(vec2<i32>(abs(u_input.a.x) | -2147483647i, u_input.a.x), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 53999i), u_input.a.yz), ~(~u_input.a.wy))), select(vec3<bool>(true, (global0.x && global1[_wgslsmith_index_u32(72829u, 8u)]) || !global0.x, global0.x), arg_0.yyx, arg_2), arg_1);
    let var_1 = abs(abs(countOneBits(global2[_wgslsmith_index_u32(firstTrailingBit(var_0.a), 21u)]))) | reverseBits(vec4<u32>(~var_0.a, var_0.a, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(u_input.b, 21u)], global2[_wgslsmith_index_u32(4775u, 21u)]), var_0.a), u_input.b));
    global1 = array<bool, 8>();
    var var_2 = Struct_1(arg_1.a, false & any(select(select(arg_0.zw, vec2<bool>(global0.x, false), false), vec2<bool>(false, global0.x), all(vec2<bool>(false, arg_0.x)))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-364f)))), -441f, arg_1.c.x, arg_1.c.x));
    return _wgslsmith_f_op_f32(ceil(var_2.c.x));
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: vec4<i32>) -> Struct_1 {
    global2 = array<vec4<u32>, 21>();
    let var_0 = vec2<i32>(abs(_wgslsmith_sub_i32(1i, 2147483647i) << (countOneBits(arg_1.x << (arg_1.x % 32u)) % 32u)), 27054i);
    let var_1 = !any(vec2<bool>(func_1(1000f, 346f).x, true));
    var var_2 = ~arg_3.yyx >> ((vec3<u32>(arg_1.x, _wgslsmith_mod_u32(arg_1.x, _wgslsmith_sub_u32(85810u, 0u)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_1.x, 0u, arg_1.x), global2[_wgslsmith_index_u32(61408u, 21u)]), arg_1)) << (~vec3<u32>(53825u ^ arg_1.x, reverseBits(0u), _wgslsmith_div_u32(u_input.b, 1263u)) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_3 = arg_2;
    return Struct_1(func_1(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<bool>(global1[_wgslsmith_index_u32(arg_1.x, 8u)], false, global1[_wgslsmith_index_u32(0u, 8u)], false), Struct_1(vec4<bool>(global0.x, var_1, var_1, true), false, vec4<f32>(var_3.x, -1506f, -367f, var_3.x)), false, vec2<f32>(arg_2.x, -1000f)))) * var_3.x)), any(!(!(!vec3<bool>(true, global0.x, false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_3 + _wgslsmith_f_op_vec4_f32(ceil(var_3))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(arg_2)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)))));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec2<u32>) -> bool {
    global0 = !arg_0.d.a.xyx;
    var var_0 = !(!arg_0.c);
    var var_1 = arg_0.c.xz;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1350f, -1258f))), 972f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(arg_0.d.c.x)))));
    global0 = vec3<bool>(false, var_0.x, (arg_0.b.x & ~(-2147483647i ^ u_input.a.x)) > _wgslsmith_mod_i32(u_input.a.x, 1i >> ((arg_2.x << (u_input.b % 32u)) % 32u)));
    return global0.x;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global2 = array<vec4<u32>, 21>();
    let var_0 = func_4(Struct_2(u_input.b, select(~u_input.a.xz, ~u_input.a.xz, func_1(1304f, 1091f).x), func_1(arg_0.c.x, _wgslsmith_f_op_f32(1562f + arg_0.c.x)).wzy, func_2(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x), reverseBits(vec4<u32>(1u, 1u, u_input.b, 1872u)), vec4<f32>(593f, arg_0.c.x, -1000f, -198f), -vec4<i32>(70663i, u_input.a.x, u_input.a.x, -30620i))), _wgslsmith_sub_u32(9305u, ~u_input.b) << (u_input.b % 32u), ~select(vec2<u32>(0u, 48698u), vec2<u32>(0u, u_input.b), vec2<bool>(true, arg_0.b)) << (vec2<u32>(u_input.b << (26667u % 32u), _wgslsmith_mod_u32(60146u, u_input.b)) % vec2<u32>(32u))) | global0.x;
    var var_1 = Struct_2(~(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, 4294967295u)) ^ u_input.b), _wgslsmith_div_vec2_i32(~u_input.a.zz, select(-firstTrailingBit(vec2<i32>(u_input.a.x, u_input.a.x)), firstLeadingBit(reverseBits(vec2<i32>(u_input.a.x, 21853i))), arg_0.a.xx)), func_2(_wgslsmith_div_i32(-13684i, -2147483647i) ^ (u_input.a.x ^ select(-1i, u_input.a.x, global0.x)), abs(~reverseBits(global2[_wgslsmith_index_u32(54164u, 21u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.c * arg_0.c) - _wgslsmith_f_op_vec4_f32(arg_0.c * arg_0.c))), -u_input.a).a.wyz, func_2(max(abs(~(-1i)), -u_input.a.x), countOneBits(~global2[_wgslsmith_index_u32(4294967295u, 21u)]) >> (~select(vec4<u32>(u_input.b, 1u, u_input.b, u_input.b), global2[_wgslsmith_index_u32(u_input.b, 21u)], global1[_wgslsmith_index_u32(4294967295u, 8u)]) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1231f - arg_0.c.x), _wgslsmith_f_op_f32(arg_0.c.x * 394f), _wgslsmith_f_op_f32(max(1000f, arg_0.c.x)), 798f)), vec4<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.a.yzz, u_input.a.xzz), vec3<i32>(u_input.a.x, 2147483647i, -1i) & u_input.a.ywy), 42939i, ~_wgslsmith_mult_i32(u_input.a.x, 40089i))));
    let var_2 = Struct_1(!(!arg_0.a), select(false, !(u_input.a.x < var_1.b.x), true), arg_0.c);
    var var_3 = Struct_1(!(!var_1.d.a), (false | any(var_2.a.zy)) & func_4(Struct_2(~u_input.b, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-2147483647i, -48904i)), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 8u)], true, false), var_1.d), abs(~4294967295u), ~vec2<u32>(26417u, 0u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(338f, 1138f, var_2.c.x, -259f), arg_0.c)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_2.c)) + vec4<f32>(-153f, var_1.d.c.x, 2657f, var_1.d.c.x))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(var_2.c, vec4<f32>(-422f, var_1.d.c.x, -887f, var_1.d.c.x), vec4<bool>(var_1.c.x, false, arg_0.a.x, false)))))));
    return Struct_1(func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(-1000f + 894f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1071f + var_1.d.c.x) - 363f)), -925f), false, arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    let var_1 = u_input.a.xww;
    global0 = vec3<bool>(global1[_wgslsmith_index_u32(~u_input.b, 8u)], global0.x, _wgslsmith_mod_u32(1u, 0u & ~u_input.b) < _wgslsmith_mult_u32(u_input.b, reverseBits(u_input.b)));
    var var_2 = func_5(Struct_1(select(vec4<bool>(true, all(vec3<bool>(false, global0.x, false)), global1[_wgslsmith_index_u32(u_input.b, 8u)], global0.x), select(select(vec4<bool>(global1[_wgslsmith_index_u32(65812u, 8u)], global1[_wgslsmith_index_u32(u_input.b, 8u)], true, global1[_wgslsmith_index_u32(64006u, 8u)]), vec4<bool>(global1[_wgslsmith_index_u32(25071u, 8u)], true, global0.x, global1[_wgslsmith_index_u32(u_input.b, 8u)]), global0.x), func_1(-196f, 1788f), select(vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 8u)], false, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 8u)], true, global1[_wgslsmith_index_u32(69320u, 8u)], global0.x), vec4<bool>(global1[_wgslsmith_index_u32(0u, 8u)], false, false, global0.x))), func_1(_wgslsmith_f_op_f32(f32(-1f) * -594f), -905f)), func_4(Struct_2(52813u, vec2<i32>(var_1.x, var_1.x), func_1(-1000f, 404f).wwx, func_2(-42289i, global2[_wgslsmith_index_u32(u_input.b, 21u)], vec4<f32>(285f, -270f, -1493f, 1718f), u_input.a)), 59723u, ~vec2<u32>(u_input.b, 35516u)), vec4<f32>(_wgslsmith_f_op_f32(-676f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1816f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1498f, -1008f), _wgslsmith_f_op_f32(step(-1028f, -1633f)))))));
    global1 = array<bool, 8>();
    var var_3 = firstTrailingBit(~38380u);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.a.wzz), firstLeadingBit(min(vec2<u32>(u_input.b, u_input.b) & vec2<u32>(47067u, 0u), ~vec2<u32>(u_input.b, u_input.b))) >> (min(_wgslsmith_div_vec2_u32(vec2<u32>(37081u, 51265u), _wgslsmith_add_vec2_u32(vec2<u32>(2816u, u_input.b), vec2<u32>(u_input.b, u_input.b))), select(~vec2<u32>(u_input.b, u_input.b), vec2<u32>(14963u, 13364u), var_2.a.yy)) % vec2<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-167f, var_2.c.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1000f)), var_2.c.x) + var_2.c.x)), vec3<u32>(_wgslsmith_clamp_u32(u_input.b, u_input.b, 0u), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 18710u, u_input.b), vec3<u32>(u_input.b, 78582u, 4294967295u) >> (vec3<u32>(u_input.b, 37770u, u_input.b) % vec3<u32>(32u)))), _wgslsmith_add_u32(u_input.b, _wgslsmith_mult_u32(u_input.b, 41324u))), _wgslsmith_f_op_f32(-var_2.c.x));
}

