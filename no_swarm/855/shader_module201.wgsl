struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: i32) -> f32 {
    return _wgslsmith_f_op_f32(-arg_2.x);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: vec3<bool>) -> vec4<f32> {
    let var_0 = i32(-1i) * -4270i;
    var var_1 = Struct_4(countOneBits(_wgslsmith_add_vec2_i32(~select(vec2<i32>(-1i, 1i), vec2<i32>(-1i, 0i), arg_2.zx), select(vec2<i32>(-1i, u_input.d) ^ vec2<i32>(29591i, u_input.c), vec2<i32>(var_0, u_input.d), arg_0.zy))), -28343i, max(select(_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(-2147483647i, var_0, 9758i)), vec3<i32>(57071i, var_0, u_input.d)), vec3<i32>(_wgslsmith_mult_i32(var_0, 0i), _wgslsmith_div_i32(var_0, -229i), 2273i), arg_0), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -u_input.c, -1i), _wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(20413i, var_0, u_input.c)), firstLeadingBit(vec3<i32>(u_input.c, 40564i, u_input.c)), vec3<i32>(var_0, -20544i, -2526i) ^ vec3<i32>(-294i, u_input.c, -61269i)))), Struct_3(~1u));
    let var_2 = Struct_4(~_wgslsmith_sub_vec2_i32(~(var_1.c.zx << (vec2<u32>(u_input.b, 41961u) % vec2<u32>(32u))), -var_1.a), abs(~(countOneBits(u_input.c) | _wgslsmith_add_i32(18063i, -1278i))), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(var_1.c, var_1.c), -var_1.c), Struct_3(_wgslsmith_div_u32(_wgslsmith_add_u32(44525u, u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d.a, 87109u, 4294967295u, 69617u), vec4<u32>(24324u, u_input.a.x, u_input.b, 1u))) & ~var_1.d.a));
    var_1 = Struct_4(_wgslsmith_clamp_vec2_i32(var_2.a, min(max(firstTrailingBit(vec2<i32>(var_1.b, -872i)), -vec2<i32>(var_1.b, 5260i)), firstTrailingBit(var_2.c.xz | var_1.a)), -((var_1.c.yy << (u_input.a.yy % vec2<u32>(32u))) ^ var_1.c.xx)), -(~countOneBits(_wgslsmith_sub_i32(-7288i, 67585i))), reverseBits(~(~vec3<i32>(89102i, -1i, u_input.d) ^ var_1.c)), var_2.d);
    let var_3 = Struct_3(~_wgslsmith_dot_vec4_u32(vec4<u32>(~1u, 31756u << (0u % 32u), _wgslsmith_mult_u32(13928u, 5884u), u_input.b), abs(vec4<u32>(var_1.d.a, var_1.d.a, u_input.b, var_2.d.a) << (vec4<u32>(var_2.d.a, 58600u, u_input.a.x, var_1.d.a) % vec4<u32>(32u)))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(1188f * -1000f), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_1.x)), 3507f)))) - arg_1);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec3<i32>) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(func_4(!(!arg_2), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(func_3(vec3<bool>(true, false, true), Struct_3(u_input.a.x), arg_0, arg_3.x)), arg_1.e), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -1729f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1973f, arg_0.x, arg_0.x, 774f)))))), select(arg_2, arg_2, arg_2)));
}

fn func_1() -> Struct_1 {
    var var_0 = firstTrailingBit(u_input.a);
    let var_1 = ~vec2<u32>(1u, u_input.b);
    let var_2 = Struct_2(min(-min(vec2<i32>(1i, u_input.d), vec2<i32>(-1446i, u_input.c)) ^ vec2<i32>(u_input.d ^ u_input.c, u_input.d), vec2<i32>(u_input.d, 11168i)));
    var_0 = abs(countOneBits(_wgslsmith_mult_vec3_u32(~_wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(var_0.x, 4294967295u, 4294967295u)), vec3<u32>(max(u_input.b, var_0.x), _wgslsmith_mult_u32(4294967295u, var_1.x), 60063u))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(vec2<f32>(-509f, 1437f), Struct_1(77176u, vec2<u32>(27149u, 8621u), vec4<i32>(-29749i, 2147483647i, 18147i, 0i), vec3<i32>(-2147483647i, u_input.c, var_2.a.x), 1191f), vec3<bool>(true, true, true), vec3<i32>(-2147483647i, var_2.a.x, u_input.d))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(345f, -1647f, 1524f, -440f) - vec4<f32>(102f, 557f, 1000f, -800f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1330f, 397f, 1139f, -1760f)) + vec4<f32>(1f, 1f, 1f, 1f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1263f, 891f, 1036f, -117f)) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-970f, -298f, 766f, 1583f), vec4<f32>(-502f, -158f, 920f, -239f)))))));
    return Struct_1(abs(u_input.b), u_input.a.zx, vec4<i32>(_wgslsmith_dot_vec3_i32(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 2147483647i, u_input.c), vec3<i32>(-1i, u_input.d, u_input.c), vec3<i32>(var_2.a.x, 25228i, 50130i))), firstLeadingBit(vec3<i32>(u_input.c, u_input.c, var_2.a.x))), _wgslsmith_mult_i32(select(_wgslsmith_div_i32(var_2.a.x, var_2.a.x), _wgslsmith_div_i32(2147483647i, -1i), true), (var_2.a.x & 30672i) ^ u_input.d), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, var_2.a.x), vec2<i32>(86139i, var_2.a.x)), vec2<i32>(-1i, -50638i)), _wgslsmith_mod_i32(max(-29340i, 13011i), -23117i)), _wgslsmith_div_i32(var_2.a.x, -1i)), _wgslsmith_mult_vec3_i32(abs(select(~vec3<i32>(0i, u_input.c, 1i), -vec3<i32>(2147483647i, -5003i, 7626i), true)), vec3<i32>(-2147483647i ^ u_input.d, i32(-1i) * -41470i, _wgslsmith_mult_i32(1i, 1i)) >> (u_input.a % vec3<u32>(32u))), var_3.x);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32) -> Struct_2 {
    var var_0 = Struct_2(arg_0.d.zx);
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-134f, arg_0.e)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1408f, arg_2))))))));
    var var_2 = Struct_3(1u);
    var var_3 = !select(vec4<bool>(true, any(select(vec2<bool>(false, true), vec2<bool>(true, false), true)), true, any(vec3<bool>(false, true, true))), select(vec4<bool>(any(vec4<bool>(false, false, false, true)), any(vec4<bool>(true, false, false, true)), any(vec3<bool>(false, false, false)), true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true)), all(vec2<bool>(true, false))), select(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), false), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true)), true));
    var_2 = arg_1;
    return Struct_2(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(~_wgslsmith_mod_vec2_i32(arg_0.c.yx, arg_0.c.yz), var_0.a), ~vec2<i32>(arg_0.c.x, func_1().d.x)));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3) -> StorageBuffer {
    let var_0 = Struct_3(abs(abs(~(arg_2.a << (arg_1.b.x % 32u)))));
    let var_1 = _wgslsmith_mod_i32(~_wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(arg_0.a.x, 58093i), ~arg_0.a.x), max(select(15840i, -8784i, true), max(-2147483647i, 0i))), 19551i);
    let var_2 = arg_1.c.zz & countOneBits(countOneBits(func_1().d.yy));
    let var_3 = arg_0;
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec2<f32>(1022f, arg_1.e), Struct_1(4294967295u, vec2<u32>(var_0.a, 9413u), arg_1.c, arg_1.d, arg_1.e), vec3<bool>(true, false, false), arg_1.d)).x), _wgslsmith_f_op_f32(func_3(vec3<bool>(false, false, true), Struct_3(12250u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.e, arg_1.e)), min(-8446i, var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.e) * arg_1.e)))), vec4<u32>(arg_2.a, ~_wgslsmith_mod_u32(abs(arg_2.a), _wgslsmith_add_u32(21475u, var_0.a)), firstLeadingBit(u_input.a.x), var_0.a), vec2<i32>(~u_input.c, 2147483647i), 0i ^ ~(-(arg_1.d.x >> (var_0.a % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(func_5(func_1(), Struct_3(u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-276f * 496f))), func_1(), Struct_3(~u_input.b));
}

