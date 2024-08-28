struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(1u, 37480u), vec2<u32>(66910u, 4294967295u), vec2<u32>(8562u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 87452u));

var<private> global1: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(-1151f, -2348f));

var<private> global2: array<f32, 20>;

var<private> global3: array<u32, 23> = array<u32, 23>(1u, 18043u, 16056u, 6384u, 0u, 0u, 4294967295u, 4294967295u, 0u, 4294967295u, 38921u, 4294967295u, 18341u, 49442u, 4294967295u, 59226u, 22325u, 68965u, 63799u, 0u, 0u, 4294967295u, 1u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: f32) -> vec2<f32> {
    global1 = array<vec2<f32>, 1>();
    global2 = array<f32, 20>();
    var var_0 = Struct_4(Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(-10412i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, 29219i, 0i), vec4<i32>(36866i, 0i, 2147483647i, 2147483647i)), ~(-18469i)), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-6290i, 5892i, -1i), vec3<i32>(22768i, 45931i, 22541i)))), vec3<i32>(-72500i, _wgslsmith_mod_i32(_wgslsmith_div_i32(30809i, -1i), firstLeadingBit(0i)), 1i)), _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a) ^ vec3<u32>(u_input.a, 1u, u_input.a), ~vec3<u32>(109868u, u_input.a, global3[_wgslsmith_index_u32(u_input.a, 23u)])), firstLeadingBit(vec3<u32>(firstLeadingBit(u_input.a), _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(u_input.a, 23u)], global3[_wgslsmith_index_u32(1u, 23u)]), ~33648u))), Struct_2(-_wgslsmith_add_vec2_i32(~vec2<i32>(2147483647i, 41484i), vec2<i32>(1i, 1i)), Struct_1(i32(-1i) * -22139i, countOneBits(vec3<i32>(-38325i, -31371i, 1i))), any(!vec4<bool>(arg_0, arg_0, arg_0, arg_0)), countOneBits((vec3<i32>(-15354i, 1i, -61928i) >> (vec3<u32>(1u, u_input.a, 0u) % vec3<u32>(32u))) | ~vec3<i32>(-2147483647i, -1i, -2147483647i)), _wgslsmith_div_vec2_u32(global0[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(1u, 23u)], 5u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(1u, 23u)], 29780u, 4294967295u, global3[_wgslsmith_index_u32(u_input.a, 23u)]), vec4<u32>(16270u, u_input.a, global3[_wgslsmith_index_u32(4294967295u, 23u)], global3[_wgslsmith_index_u32(1u, 23u)])), 5u)]) ^ global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 1u), 23u)], 5u)]));
    global2 = array<f32, 20>();
    global0 = array<vec2<u32>, 5>();
    return _wgslsmith_div_vec2_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(var_0.b, 5u)], max(vec2<u32>(~var_0.b, ~global3[_wgslsmith_index_u32(15222u, 23u)]), countOneBits(countOneBits(vec2<u32>(4294967295u, var_0.b))))), 1u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(var_0.b, 20u)], global2[_wgslsmith_index_u32(u_input.a, 20u)])) + _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-217f)))))));
}

fn func_2() -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(global1[_wgslsmith_index_u32(53134u, 1u)], _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_3(!all(vec2<bool>(false, false)), global2[_wgslsmith_index_u32(abs(~0u), 20u)]))))));
    global0 = array<vec2<u32>, 5>();
    var var_1 = Struct_4(Struct_1(2147483647i, ~(vec3<i32>(1i, 1i, 1i) << ((vec3<u32>(global3[_wgslsmith_index_u32(0u, 23u)], 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(25521u, 23u)], 23u)]) & vec3<u32>(4978u, 38195u, u_input.a)) % vec3<u32>(32u)))), ~(~u_input.a) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 23u)], 5u)], vec2<u32>(global3[_wgslsmith_index_u32(51781u, 23u)], 4294967295u)), 1u, u_input.a, 1u), _wgslsmith_div_vec4_u32(~vec4<u32>(global3[_wgslsmith_index_u32(77244u, 23u)], 4294967295u, global3[_wgslsmith_index_u32(u_input.a, 23u)], u_input.a), select(vec4<u32>(9984u, 4294967295u, 38537u, 21102u), vec4<u32>(u_input.a, 1073u, global3[_wgslsmith_index_u32(4294967295u, 23u)], 79811u), vec4<bool>(false, false, true, true)))), Struct_2(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(2147483647i, 45207i), -2147483647i), select(-vec2<i32>(30507i, 0i), ~vec2<i32>(0i, 1i), true)), Struct_1(1i, -vec3<i32>(-2147483647i, -1i, 0i)), true, vec3<i32>(-19514i, firstLeadingBit(1i << (1u % 32u)), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, -1i, -5935i)), vec3<i32>(52212i, -34341i, -1i))), firstLeadingBit(reverseBits(vec2<u32>(38043u, u_input.a))) << (global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, u_input.a) ^ 31461u, 5u)] % vec2<u32>(32u))));
    let var_2 = Struct_2(-var_1.a.b.zz << (vec2<u32>(80031u, 4294967295u) % vec2<u32>(32u)), var_1.a, false, var_1.c.b.b, select(min(vec2<u32>(54849u, 71718u), ~global0[_wgslsmith_index_u32(var_1.c.e.x, 5u)]) ^ _wgslsmith_div_vec2_u32(select(global0[_wgslsmith_index_u32(u_input.a, 5u)], var_1.c.e, var_1.c.c), vec2<u32>(1u, 0u)), abs(countOneBits(global0[_wgslsmith_index_u32(22951u << (global3[_wgslsmith_index_u32(1u, 23u)] % 32u), 5u)])), any(!(!vec3<bool>(var_1.c.c, false, true)))));
    let var_3 = vec2<u32>(var_2.e.x | var_2.e.x, 4294967295u);
    return _wgslsmith_add_vec2_i32(~reverseBits(var_1.a.b.yy), vec2<i32>(countOneBits(~var_2.b.a << (52925u % 32u)), var_2.d.x));
}

fn func_1() -> Struct_2 {
    global3 = array<u32, 23>();
    global0 = array<vec2<u32>, 5>();
    let var_0 = firstLeadingBit(1i);
    global1 = array<vec2<f32>, 1>();
    var var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(-(var_0 | var_0), 2147483647i), _wgslsmith_sub_vec2_i32(~abs(vec2<i32>(1i, var_0)), _wgslsmith_add_vec2_i32(vec2<i32>(-36843i, -1i), vec2<i32>(var_0, 1i)) << ((global0[_wgslsmith_index_u32(4294967295u, 5u)] << (vec2<u32>(14380u, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)))) ^ func_2();
    return Struct_2(vec2<i32>(func_2().x, func_2().x), Struct_1(-firstTrailingBit(0i), -(vec3<i32>(-1i) * -vec3<i32>(var_1.x, var_0, -1i))), !any(vec3<bool>(true, true, true)), ~_wgslsmith_clamp_vec3_i32(min(-vec3<i32>(var_1.x, var_0, -5889i), -vec3<i32>(0i, 2147483647i, 19170i)), min(-vec3<i32>(var_1.x, var_0, 0i), vec3<i32>(var_0, 33392i, 1i)), vec3<i32>(func_2().x, var_1.x, ~7103i)), global0[_wgslsmith_index_u32(~select(~u_input.a, reverseBits(global3[_wgslsmith_index_u32(u_input.a, 23u)]), true), 5u)] ^ ~(~reverseBits(vec2<u32>(4294967295u, u_input.a))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    global2 = array<f32, 20>();
    global1 = array<vec2<f32>, 1>();
    var var_0 = select(select(vec2<bool>(true, -313f != _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(arg_3.e.x, 20u)]))), vec2<bool>(arg_3.c, arg_0.c), vec2<bool>(true, func_1().c)), vec2<bool>(true, true), true);
    global1 = array<vec2<f32>, 1>();
    var_0 = vec2<bool>(all(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(arg_3.c, arg_3.c, false))) && (false && (-178f < _wgslsmith_f_op_f32(exp2(arg_1.x)))), !arg_3.c);
    return Struct_2(-(~select(arg_0.b.b.zz, vec2<i32>(arg_3.b.a, arg_0.b.b.x), vec2<bool>(arg_0.c, var_0.x)) >> (~vec2<u32>(0u, 10377u) % vec2<u32>(32u))), arg_3.b, !(!arg_0.c | true), arg_3.b.b, global0[_wgslsmith_index_u32(arg_3.e.x, 5u)]);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = Struct_5(Struct_3(all(!vec4<bool>(false, true, arg_0.c, arg_0.c))), global2[_wgslsmith_index_u32((((1u & arg_0.e.x) | ~4294967295u) << (arg_0.e.x % 32u)) ^ arg_0.e.x, 20u)]);
    var var_1 = arg_1.x;
    var var_2 = !select(!select(!vec3<bool>(false, var_0.a.a, true), vec3<bool>(var_0.a.a, arg_0.c, true), vec3<bool>(var_0.a.a, false, var_0.a.a)), select(!select(vec3<bool>(arg_0.c, var_0.a.a, false), vec3<bool>(false, true, var_0.a.a), var_0.a.a), vec3<bool>(true, var_0.a.a, true), var_0.a.a), vec3<bool>(true, var_0.a.a, any(vec4<bool>(arg_0.c, arg_0.c, true, var_0.a.a))));
    let var_3 = vec4<i32>(1i, func_1().a.x, func_2().x, arg_2.x & 0i);
    var var_4 = global2[_wgslsmith_index_u32(max(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, global3[_wgslsmith_index_u32(u_input.a, 23u)], arg_0.e.x), countOneBits(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 23u)], 23u)], arg_0.e.x, 4294967295u))), ~vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 23u)], 23926u, u_input.a), vec3<u32>(16062u, 7649u, 4294967295u)), vec3<u32>(0u, min(113021u, arg_0.e.x), _wgslsmith_sub_u32(u_input.a, arg_0.e.x)) | (abs(vec3<u32>(22145u, global3[_wgslsmith_index_u32(4294967295u, 23u)], 1u)) << (vec3<u32>(global3[_wgslsmith_index_u32(arg_0.e.x, 23u)], 91559u, u_input.a) % vec3<u32>(32u)))), 63041u & global3[_wgslsmith_index_u32(~1u, 23u)]), 20u)];
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 1>();
    var var_0 = func_5(func_4(func_1(), vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 20u)], 369f, -472f), _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(firstLeadingBit(1u), 20u)])), Struct_2(vec2<i32>(1i, 1i), func_1().b, any(vec2<bool>(true, true)), -vec3<i32>(65019i, -4757i, -2147483647i), vec2<u32>(select(0u, u_input.a, true), _wgslsmith_mult_u32(0u, 24580u)))), ~(vec3<i32>(-1i) * -(vec3<i32>(11716i, 0i, 5357i) >> (vec3<u32>(10431u, u_input.a, u_input.a) % vec3<u32>(32u)))), vec4<i32>(func_4(Struct_2(-vec2<i32>(-44548i, 7355i), func_1().b, true, ~vec3<i32>(0i, 1i, -1i), global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(2018u, 23u)], 23u)], 5u)] << (vec2<u32>(58615u, global3[_wgslsmith_index_u32(u_input.a, 23u)]) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 23u)], 20u)], -466f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(78560u, 23u)], 20u)])), _wgslsmith_f_op_f32(f32(-1f) * -895f), Struct_2(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(0i, 1i)), Struct_1(0i, vec3<i32>(-39431i, -2147483647i, 12538i)), true, vec3<i32>(-2147483647i, -22718i, 65269i) << (vec3<u32>(60523u, global3[_wgslsmith_index_u32(u_input.a, 23u)], 70274u) % vec3<u32>(32u)), _wgslsmith_div_vec2_u32(global0[_wgslsmith_index_u32(u_input.a, 5u)], global0[_wgslsmith_index_u32(19907u, 5u)]))).d.x, _wgslsmith_dot_vec2_i32(select(firstLeadingBit(vec2<i32>(25162i, -53479i)), ~vec2<i32>(-6219i, 1i), vec2<bool>(false, false)), select(_wgslsmith_mod_vec2_i32(vec2<i32>(20338i, 37357i), vec2<i32>(1i, 1i)), vec2<i32>(1i, 1i), vec2<bool>(true, true))), abs(-2147483647i), _wgslsmith_mod_i32(-27202i >> (_wgslsmith_div_u32(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 23u)], 23u)]) % 32u), 1i)));
    let var_1 = func_1().b;
    var var_2 = vec3<u32>(u_input.a, 1u, 25293u) | ~firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(1u, 23u)], 1u, 4294967295u) ^ vec3<u32>(58380u, 92234u, 10562u), max(vec3<u32>(var_0.e.x, var_0.e.x, u_input.a), vec3<u32>(70133u, global3[_wgslsmith_index_u32(u_input.a, 23u)], u_input.a))));
    var_0 = func_5(func_5(func_1(), var_1.b, vec4<i32>(var_1.a, ~var_0.d.x, _wgslsmith_sub_i32(~var_1.b.x, var_0.b.a), var_1.a)), vec3<i32>(0i, abs(reverseBits(min(var_1.b.x, -75018i))), var_0.b.b.x), vec4<i32>(var_0.d.x, -41296i, var_1.b.x, _wgslsmith_div_i32(_wgslsmith_sub_i32(firstTrailingBit(var_0.d.x), var_0.b.a), ~(~var_0.d.x))));
    global3 = array<u32, 23>();
    var var_3 = Struct_4(Struct_1(var_0.a.x, firstLeadingBit(~vec3<i32>(0i, var_1.a, 0i)) | func_1().d), ~0u, Struct_2(_wgslsmith_mod_vec2_i32(-vec2<i32>(-1i, var_0.d.x), _wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(var_0.b.a, 1i)), vec2<i32>(-2147483647i, 113875i) << (vec2<u32>(var_2.x, 43109u) % vec2<u32>(32u)), abs(var_1.b.yz))), Struct_1(-(12350i >> (u_input.a % 32u)), vec3<i32>(-1i) * -var_0.b.b), var_0.c, ~firstLeadingBit(vec3<i32>(-1i, var_0.d.x, 93i)), func_5(func_1(), ~_wgslsmith_mod_vec3_i32(var_1.b, var_0.d), -vec4<i32>(var_0.d.x, -2147483647i, var_1.b.x, var_0.d.x)).e));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, select(select(-vec3<i32>(-2147483647i, var_3.a.b.x, 32829i), var_0.b.b | ~vec3<i32>(var_0.b.b.x, var_0.b.a, 2147483647i), vec3<bool>(var_3.c.c | var_0.c, var_0.c, true)), ~var_3.a.b, !(!(!vec3<bool>(var_3.c.c, false, var_0.c)))));
}

