struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec4<i32> = vec4<i32>(32003i, -20686i, 0i, 35220i);

var<private> global2: Struct_2;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(abs(-vec4<i32>(-2147483647i, 2147483647i, global2.c.x, global0.x)), vec4<i32>(-2147483647i, ~2147483647i, global2.a, reverseBits(-1i))) ^ firstTrailingBit(~firstLeadingBit(global2.c)), vec4<i32>(~(global1.x >> (u_input.c.x % 32u)), 0i, global2.a, _wgslsmith_sub_i32(global1.x, abs(0i)) << (u_input.e % 32u)));
    var var_0 = ~u_input.c;
    global0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, global0.x, abs(abs(0i)), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, global1.x), _wgslsmith_add_vec2_i32(global1.xy | vec2<i32>(global1.x, -2147483647i), ~vec2<i32>(global0.x, 0i)))), global2.c, ~_wgslsmith_add_vec4_i32(global2.c, vec4<i32>(2147483647i, countOneBits(global1.x), global0.x, -global0.x)));
    var var_1 = global2.d.c.x;
    let var_2 = Struct_2(~(~global1.x) & _wgslsmith_sub_i32(_wgslsmith_div_i32(firstTrailingBit(-9527i), _wgslsmith_clamp_i32(2147483647i, global1.x, global1.x)), _wgslsmith_mult_i32(-1i, 1i)), Struct_1(423f, _wgslsmith_mod_i32(global1.x, -4639i), !vec2<bool>(true, all(vec4<bool>(global2.b.c.x, true, false, true))), ~(~global1.x)), vec4<i32>(i32(-1i) * -1i, -12084i, abs(~_wgslsmith_clamp_i32(global2.c.x, global1.x, 1i)), 2147483647i), global2.b, -2147483647i);
    return Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global2.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.a + 1320f) * _wgslsmith_f_op_f32(step(1816f, global2.b.a)))))), ~_wgslsmith_sub_i32(firstTrailingBit(global2.d.b), var_2.b.d >> (4294967295u % 32u)) ^ _wgslsmith_mult_i32(-13988i, -global2.d.d), var_2.d.c, -global2.c.x);
}

fn func_3(arg_0: vec3<i32>) -> bool {
    let var_0 = 1i;
    global1 = vec4<i32>(-16732i, -22734i, -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, _wgslsmith_sub_i32(-9057i, 21212i), ~var_0), vec3<i32>(-(~var_0), 0i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.x, global0.x, -2147483647i), vec3<i32>(global2.e, 2147483647i, 19087i)), arg_0))));
    let var_1 = 21778i;
    var var_2 = global2.b;
    var var_3 = func_2();
    return var_3.c.x;
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    global2 = Struct_2(-6338i | global0.x, func_2(), -firstTrailingBit(global2.c), global2.b, _wgslsmith_div_i32(74667i, -19818i));
    let var_0 = Struct_1(1046f, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32((global2.c >> (vec4<u32>(u_input.c.x, 58245u, 4294967295u, u_input.c.x) % vec4<u32>(32u))) >> ((vec4<u32>(u_input.b, 4294967295u, u_input.c.x, u_input.e) >> (vec4<u32>(0u, 5917u, u_input.a, 11619u) % vec4<u32>(32u))) % vec4<u32>(32u)), -(~vec4<i32>(global1.x, 78728i, 21645i, global1.x))), vec4<i32>(global2.b.b, global1.x, global0.x, firstLeadingBit(-9876i))), vec2<bool>(func_2().d != (global2.d.d >> (u_input.c.x % 32u)), false), 32204i);
    let var_1 = any(select(select(select(vec4<bool>(true, false, false, true), !vec4<bool>(true, true, false, var_0.c.x), global2.d.c.x | false), vec4<bool>(global2.b.c.x, var_0.c.x && false, false, true), vec4<bool>(true, true == global2.b.c.x, all(var_0.c), true)), !vec4<bool>(func_3(vec3<i32>(1i, global2.b.b, -5982i)), all(vec4<bool>(global2.b.c.x, global2.b.c.x, false, true)), true, global2.d.c.x), select(select(!vec4<bool>(false, global2.b.c.x, false, true), !vec4<bool>(global2.d.c.x, false, false, true), select(vec4<bool>(global2.b.c.x, global2.d.c.x, true, global2.b.c.x), vec4<bool>(true, global2.b.c.x, true, global2.d.c.x), false)), vec4<bool>(any(global2.d.c), true || global2.b.c.x, u_input.c.x <= 6328u, false), !(u_input.a < u_input.e))));
    let var_2 = -374f;
    global0 = _wgslsmith_mod_vec4_i32(vec4<i32>(0i, 2950i, select(-(-25523i ^ global1.x), arg_0.x, true), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(arg_0.x, -60777i, arg_0.x), ~global2.c.yzw), (vec3<i32>(3133i, 14080i, arg_0.x) << (u_input.d % vec3<u32>(32u))) >> (countOneBits(u_input.d) % vec3<u32>(32u)))), global2.c);
    return global2.b;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> vec3<f32> {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.d.a)) * global2.d.a);
    global2 = Struct_2(_wgslsmith_mod_i32(abs(-31026i), var_0.a), arg_1.d, ~(~(~(vec4<i32>(global1.x, var_0.c.x, global1.x, arg_1.e) >> (vec4<u32>(arg_2, arg_2, u_input.e, 0u) % vec4<u32>(32u))))), global2.b, _wgslsmith_add_i32(-6448i | abs(var_0.b.b), max(-reverseBits(var_0.a), global0.x & global0.x)));
    var var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(~global1.x, _wgslsmith_dot_vec3_i32(global0.wwx, vec3<i32>(~arg_3.e, var_0.e << (22057u % 32u), global1.x)), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(global1.yx, select(vec2<i32>(arg_3.b.b, global0.x), global1.xz, true)), ~arg_3.c.yy)), ~global1.xyy);
    var var_3 = arg_3;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_3.b.a, var_3.b.a, arg_1.d.a))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.d.a, global2.d.a, 279f) - vec3<f32>(-1517f, -390f, -2039f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.d.a, arg_3.b.a, arg_3.d.a))))));
}

fn func_5(arg_0: vec2<u32>, arg_1: f32, arg_2: u32, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = select(vec4<bool>(!(!(global2.d.a > -971f)), !func_2().c.x, global2.d.c.x | (true | any(vec2<bool>(global2.d.c.x, global2.b.c.x))), ~arg_0.x == ~(23980u & arg_0.x)), select(select(select(!vec4<bool>(false, global2.b.c.x, global2.d.c.x, global2.b.c.x), vec4<bool>(true, true, false, global2.d.c.x), select(vec4<bool>(global2.d.c.x, global2.b.c.x, true, global2.b.c.x), vec4<bool>(false, global2.b.c.x, global2.b.c.x, global2.d.c.x), global2.d.c.x)), vec4<bool>(global2.d.c.x, global2.d.c.x, !global2.b.c.x, true), !(!vec4<bool>(global2.d.c.x, false, global2.b.c.x, global2.d.c.x))), !(!(!vec4<bool>(global2.b.c.x, true, true, global2.b.c.x))), select(vec4<bool>(true, true, true, true), vec4<bool>(!global2.b.c.x, true, true, true), -global1.x < (global0.x & global2.d.b))), select(vec4<bool>(true, _wgslsmith_div_f32(arg_3.x, global2.d.a) > arg_3.x, func_2().c.x, true), select(vec4<bool>(global2.b.c.x, global2.d.c.x, false, !global2.d.c.x), select(vec4<bool>(false, global2.d.c.x, global2.d.c.x, true), vec4<bool>(global2.d.c.x, true, global2.b.c.x, true), vec4<bool>(false, false, global2.b.c.x, global2.b.c.x)), !global2.d.c.x || true), select(select(vec4<bool>(false, global2.b.c.x, false, false), select(vec4<bool>(global2.b.c.x, false, false, global2.b.c.x), vec4<bool>(global2.b.c.x, false, global2.d.c.x, false), false), !vec4<bool>(true, global2.b.c.x, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, !global2.b.c.x, any(vec3<bool>(global2.b.c.x, global2.d.c.x, true)), true))));
    global1 = ~vec4<i32>(global2.b.d, _wgslsmith_div_i32(abs(firstLeadingBit(global0.x)), firstLeadingBit(6774i)), 12619i, ~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(global0.x, 1i, 1i), global0.x << (34244u % 32u)));
    let var_1 = func_2();
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_4(true, Struct_2(-1i, Struct_1(350f, 29789i, var_1.c, var_1.b), vec4<i32>(-2147483647i, global1.x, -21533i, -1i), global2.b, 1i), ~4294967295u, Struct_2(-2147483647i, global2.d, vec4<i32>(global2.b.d, global0.x, var_1.d, 41785i), Struct_1(arg_1, 40079i, vec2<bool>(true, false), -1i), 1i))).x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.x), arg_1))), firstLeadingBit(-(~(~global0.x))), !vec2<bool>(var_0.x, var_0.x), var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(global1.x >> (46982u % 32u), func_5(_wgslsmith_add_vec2_u32(~(~vec2<u32>(u_input.a, u_input.d.x)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, 1u), vec2<u32>(1u, 13550u)) | ~vec2<u32>(u_input.e, u_input.e)), _wgslsmith_div_f32(_wgslsmith_div_f32(global2.d.a, _wgslsmith_f_op_f32(global2.b.a * global2.b.a)), global2.d.a), ~u_input.e, _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(sign(-1000f)) != global2.d.a, Struct_2(i32(-1i) * -7447i, global2.d, firstLeadingBit(global2.c), func_1(vec2<i32>(-46542i, global2.e)), global1.x << (u_input.e % 32u)), _wgslsmith_add_u32(~63097u, u_input.e), Struct_2(-1i, global2.b, vec4<i32>(global1.x, global1.x, global0.x, global1.x), Struct_1(794f, -54559i, vec2<bool>(global2.d.c.x, true), 10321i), global1.x ^ global2.a)))), max(global2.c, firstLeadingBit(global2.c)), func_1(vec2<i32>(global1.x, global0.x) & reverseBits(vec2<i32>(45047i, 99654i))), _wgslsmith_sub_i32(25897i, -3191i));
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.d.a, 430f), vec2<f32>(global2.b.a, global2.b.a), true)))))));
    var var_1 = _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(min(u_input.b, u_input.a), 1u, ~u_input.c.x, u_input.c.x)) ^ firstTrailingBit(abs(~vec4<u32>(u_input.b, 51716u, u_input.d.x, u_input.a))), (~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e, 45321u, u_input.e, 7360u), vec4<u32>(1u, u_input.e, 0u, u_input.c.x)) | ~select(vec4<u32>(u_input.b, 4294967295u, 1u, 4294967295u), vec4<u32>(u_input.e, 12012u, u_input.c.x, u_input.a), vec4<bool>(global2.b.c.x, false, global2.d.c.x, global2.b.c.x))) | _wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, u_input.d.x, 4294967295u), vec4<u32>(41859u, 16110u, 1u, 0u)), vec4<u32>(u_input.a, ~16459u, 1497u, max(u_input.d.x, 1u))));
    let var_2 = vec3<bool>(select(global2.d.c.x, func_3(global2.c.yyw), func_3(_wgslsmith_add_vec3_i32(global2.c.wyz >> (var_1.zzy % vec3<u32>(32u)), vec3<i32>(global1.x, -27861i, global1.x) >> (vec3<u32>(41664u, 1u, u_input.c.x) % vec3<u32>(32u))))), any(vec4<bool>(global2.b.c.x, global2.d.c.x, true, global2.b.c.x)), false);
    global2 = Struct_2(_wgslsmith_sub_i32(-24736i, -global0.x), func_2(), ~vec4<i32>(-_wgslsmith_dot_vec4_i32(global2.c, vec4<i32>(43598i, global1.x, 16152i, global0.x)), global1.x, global1.x, global1.x & global1.x), global2.d, func_5(var_1.xx, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, global2.d.a) * _wgslsmith_f_op_f32(-global2.d.a)), -1048f)), 44300u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, global2.b.a, var_0.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.b.a, -518f, 1106f)))))).d);
    let var_3 = select(vec4<i32>(-(~(global0.x << (u_input.d.x % 32u))), 20508i, -26787i, firstLeadingBit(global2.e | 50999i)), vec4<i32>(global1.x, global1.x & (i32(-1i) * -2147483647i), global1.x, func_1(global2.c.yz).d), any(var_2));
    let x = u_input.a;
    s_output = StorageBuffer(1171f);
}

