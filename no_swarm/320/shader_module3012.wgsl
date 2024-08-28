struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

var<private> global1: array<bool, 17>;

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(1000f, -1705f, vec2<u32>(0u, 18928u), vec3<bool>(false, true, false)), Struct_1(851f, -647f, vec2<u32>(90839u, 4294967295u), vec3<bool>(true, true, false)), Struct_1(-1559f, -490f, vec2<u32>(0u, 1u), vec3<bool>(true, true, true)), Struct_1(-794f, -371f, vec2<u32>(63878u, 0u), vec3<bool>(false, true, true)), Struct_1(600f, 1127f, vec2<u32>(4294967295u, 34128u), vec3<bool>(false, true, true)), Struct_1(-147f, -1432f, vec2<u32>(26954u, 1u), vec3<bool>(false, true, false)), Struct_1(1527f, 625f, vec2<u32>(84252u, 0u), vec3<bool>(true, false, true)), Struct_1(1000f, -1020f, vec2<u32>(63049u, 24977u), vec3<bool>(true, false, true)));

var<private> global3: array<vec4<u32>, 16> = array<vec4<u32>, 16>(vec4<u32>(0u, 0u, 32656u, 24762u), vec4<u32>(0u, 110720u, 0u, 4294967295u), vec4<u32>(0u, 4294967295u, 4294967295u, 47505u), vec4<u32>(1u, 0u, 38151u, 48407u), vec4<u32>(0u, 69665u, 30099u, 4294967295u), vec4<u32>(23484u, 1u, 31154u, 4294967295u), vec4<u32>(43056u, 7008u, 85757u, 26849u), vec4<u32>(0u, 41599u, 4294967295u, 4294967295u), vec4<u32>(52651u, 30460u, 46528u, 4086u), vec4<u32>(0u, 35170u, 4294967295u, 47902u), vec4<u32>(5373u, 56249u, 29365u, 4294967295u), vec4<u32>(23179u, 14882u, 25569u, 15644u), vec4<u32>(5734u, 4294967295u, 1u, 58486u), vec4<u32>(4294967295u, 31353u, 10699u, 17253u), vec4<u32>(4294967295u, 14030u, 20902u, 4294967295u), vec4<u32>(34447u, 67310u, 4294967295u, 48453u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    let var_0 = select(!(!select(!vec3<bool>(true, false, global1[_wgslsmith_index_u32(0u, 17u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(39014u, 17u)], true), false)), vec3<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 21219u) >> (firstLeadingBit(vec2<u32>(4294967295u, 4294967295u)) % vec2<u32>(32u)), abs(u_input.a)), 17u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-824f + 315f), _wgslsmith_f_op_f32(1979f * -971f))) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-637f))))), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(41024u, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~u_input.a.x), firstTrailingBit(global0[_wgslsmith_index_u32(0u, 8u)])), 8u)]), 17u)]);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-804f, _wgslsmith_f_op_f32(sign(745f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(487f)), _wgslsmith_f_op_f32(f32(-1f) * -1325f))))), 737f, ~u_input.b, !vec3<bool>(!var_0.x, var_0.x, var_0.x));
    var var_2 = var_1;
    global1 = array<bool, 17>();
    global3 = array<vec4<u32>, 16>();
    return min((firstTrailingBit(5467u) >> (((var_2.c.x >> (global0[_wgslsmith_index_u32(var_2.c.x, 8u)] % 32u)) >> (~global0[_wgslsmith_index_u32(0u, 8u)] % 32u)) % 32u)) ^ u_input.a.x, ~1u);
}

fn func_2() -> vec4<bool> {
    global0 = array<u32, 8>();
    global2 = array<Struct_1, 8>();
    let var_0 = global2[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(20566u, 4294967295u, global0[_wgslsmith_index_u32(u_input.b.x, 8u)]) & (vec3<u32>(4294967295u, 709u, 1u) ^ vec3<u32>(9289u, u_input.b.x, 27222u)), vec3<u32>(reverseBits(u_input.a.x), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(func_3(), 8u)], 8u)], firstLeadingBit(14002u))), 8u)]), 8u)];
    global1 = array<bool, 17>();
    let var_1 = false;
    return vec4<bool>(var_1, any(!vec3<bool>(var_0.d.x, true & var_1, var_0.d.x & var_1)), !(true || select(!var_0.d.x, true, global1[_wgslsmith_index_u32(23626u, 17u)])), var_1);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<bool>) -> Struct_1 {
    return Struct_1(-478f, -488f, _wgslsmith_add_vec2_u32(firstTrailingBit(u_input.a) & u_input.a, ~vec2<u32>(reverseBits(u_input.a.x), u_input.a.x ^ 17863u)), select(!select(arg_1, vec3<bool>(true, arg_1.x, false), all(vec3<bool>(true, arg_1.x, true))), !func_2().yzz, vec3<bool>(true, true || !arg_1.x, true)));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(arg_3.b, _wgslsmith_f_op_f32(f32(-1f) * -1107f), _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_3.a, arg_2.b, 1066f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(704f, arg_3.b, arg_2.a) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1371f, 1705f, 586f) + vec3<f32>(279f, 1196f, -1354f))))));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(min(1u, ~4294967295u), _wgslsmith_add_u32(max(arg_1.c.x, arg_1.c.x), 14678u)), 8u)];
    global3 = array<vec4<u32>, 16>();
    var_1 = func_4(vec4<bool>(!all(func_2()), all(arg_3.d.xz), func_2().x, true), var_1.d);
    var var_2 = vec3<bool>(arg_1.d.x, false, true);
    return arg_3;
}

fn func_5(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(min(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 0i, -14696i), vec4<i32>(-47618i, -50062i, 2147483647i, 2147483647i)), -vec4<i32>(-2147483647i, 11843i, 2147483647i, -1i)), abs(-vec4<i32>(42893i, 14833i, -18889i, 2147483647i))), vec4<i32>(1i, 1i, 1i, 1i)), max(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(50832i, -45579i), vec2<i32>(-68955i, -53968i)), firstLeadingBit(vec2<i32>(-25401i, 50780i))), (2147483647i >> (u_input.a.x % 32u)) & abs(0i)), 1i));
    var var_1 = all(!(!select(!vec4<bool>(true, arg_0.d.x, global1[_wgslsmith_index_u32(u_input.a.x, 17u)], global1[_wgslsmith_index_u32(24659u, 17u)]), vec4<bool>(arg_0.d.x, arg_0.d.x, true, arg_0.d.x), !vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 17u)], arg_0.d.x, false))));
    let var_2 = func_4(select(func_2(), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(global1[_wgslsmith_index_u32(17063u, 17u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 17u)], false, false), vec4<bool>(true, arg_0.d.x, arg_0.d.x, false), false), false), all(func_1(1i, func_1(16409i, global2[_wgslsmith_index_u32(1u, 8u)], Struct_1(116f, arg_0.b, u_input.a, vec3<bool>(arg_0.d.x, arg_0.d.x, true)), arg_0), func_1(-27949i, Struct_1(312f, 1069f, vec2<u32>(u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.c.x, 8u)], 8u)]), vec3<bool>(false, arg_0.d.x, true)), arg_0, global2[_wgslsmith_index_u32(0u, 8u)]), func_1(-1i, Struct_1(-881f, -362f, arg_0.c, vec3<bool>(arg_0.d.x, false, false)), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], arg_0)).d)), select(!vec3<bool>(select(false, arg_0.d.x, global1[_wgslsmith_index_u32(u_input.a.x, 17u)]), true, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.c.x, 30186u), 17u)]), !func_2().xyx, !func_4(func_2(), !arg_0.d).d));
    global0 = array<u32, 8>();
    var_0 = ~reverseBits(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(1i, 60844i)), reverseBits(vec2<i32>(1i, -2147483647i))), 2147483647i, _wgslsmith_mult_i32(-15338i, _wgslsmith_div_i32(-25148i, -15335i))));
    return _wgslsmith_add_i32(-32251i, 0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (_wgslsmith_sub_i32(-(-57241i >> (1u % 32u)), func_5(func_1(21527i, global2[_wgslsmith_index_u32(u_input.b.x, 8u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 8u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 8u)], 8u)], 8u)], 8u)]))) | (_wgslsmith_add_i32(_wgslsmith_mult_i32(26533i, 18789i), countOneBits(-1i)) << ((u_input.a.x | min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], global0[_wgslsmith_index_u32(u_input.a.x, 8u)])) % 32u))) ^ ~abs(~(~(-1i)));
    let var_1 = 23203u;
    var var_2 = _wgslsmith_f_op_f32(-func_1(~var_0, func_4(!select(vec4<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(48308u, 8u)], 8u)], 17u)], false, global1[_wgslsmith_index_u32(10497u, 17u)]), vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 17u)], global1[_wgslsmith_index_u32(2623u, 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(u_input.a.x, 17u)]), global1[_wgslsmith_index_u32(0u, 17u)]), vec3<bool>(all(vec2<bool>(true, true)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, u_input.a.x), 17u)], false)), global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, var_1 ^ u_input.b.x), 8u)], 8u)], Struct_1(_wgslsmith_f_op_f32(select(1f, -932f, false)), -1110f, ~(u_input.b >> (u_input.b % vec2<u32>(32u))), !vec3<bool>(global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)], true))).b);
    global3 = array<vec4<u32>, 16>();
    let var_3 = ~4294967295u;
    global0 = array<u32, 8>();
    var var_4 = func_4(select(func_2(), !(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(55567u, 17u)], false, false)), !vec4<bool>(u_input.b.x < var_3, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(func_4(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 17u)], true, true), vec3<bool>(false, true, false)).c.x, 8u)], 17u)], func_1(2147483647i, Struct_1(-344f, -1000f, u_input.b, vec3<bool>(global1[_wgslsmith_index_u32(1u, 17u)], false, true)), Struct_1(274f, 1259f, u_input.b, vec3<bool>(false, true, true)), Struct_1(727f, 923f, vec2<u32>(u_input.a.x, var_3), vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 8u)], 17u)], global1[_wgslsmith_index_u32(var_1, 17u)], false))).d.x, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(60001u, 0u), 17u)])), !func_2().zzz);
    var var_5 = func_4(vec4<bool>(!(!select(var_4.d.x, var_4.d.x, true)), false, true, all(select(!var_4.d, select(var_4.d, vec3<bool>(var_4.d.x, global1[_wgslsmith_index_u32(var_1, 17u)], var_4.d.x), var_4.d), var_4.d))), var_4.d);
    var_5 = global2[_wgslsmith_index_u32(~(~select(max(_wgslsmith_clamp_u32(1u, 1u, u_input.b.x), 4294967295u), _wgslsmith_mult_u32(~var_5.c.x, 13273u), true)), 8u)];
    let x = u_input.a;
    s_output = StorageBuffer((-12475i >> (_wgslsmith_mod_u32(1u, ~56737u) % 32u)) ^ var_0, vec4<i32>(-abs(1i), _wgslsmith_add_i32(firstTrailingBit(-var_0), abs(-var_0)), -1i, countOneBits(var_0)), var_5.c, -1937f);
}

