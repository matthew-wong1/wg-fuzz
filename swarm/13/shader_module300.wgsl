struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: Struct_4,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1i);

var<private> global1: array<Struct_4, 7> = array<Struct_4, 7>(Struct_4(Struct_1(64668i), 0u, Struct_3(Struct_1(0i), 4467i, false, vec3<f32>(412f, 496f, 298f))), Struct_4(Struct_1(4886i), 50724u, Struct_3(Struct_1(-11999i), -44384i, true, vec3<f32>(534f, -1505f, 296f))), Struct_4(Struct_1(-1i), 1u, Struct_3(Struct_1(2147483647i), -1i, false, vec3<f32>(119f, -231f, 687f))), Struct_4(Struct_1(5306i), 38849u, Struct_3(Struct_1(-1i), 56666i, true, vec3<f32>(-1391f, -1013f, -1383f))), Struct_4(Struct_1(-68134i), 31087u, Struct_3(Struct_1(-1i), 1i, true, vec3<f32>(365f, 1967f, -546f))), Struct_4(Struct_1(0i), 43901u, Struct_3(Struct_1(17267i), 0i, true, vec3<f32>(-1489f, -418f, -1000f))), Struct_4(Struct_1(-16466i), 1u, Struct_3(Struct_1(13232i), 4276i, false, vec3<f32>(-1000f, 1166f, -1141f))));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: Struct_5) -> bool {
    let var_0 = vec3<u32>(1u & ~min(~arg_0.c.b, ~4294967295u), 56687u, arg_0.c.b);
    global0 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(abs(-1i), 1i, u_input.d, -2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(abs(-12376i), _wgslsmith_add_i32(global0.a, 7371i), -83137i, abs(0i)), vec4<i32>(abs(global0.a), 1i, _wgslsmith_div_i32(1105i, -61965i), firstLeadingBit(16942i)))));
    global0 = arg_0.b;
    var var_1 = ~firstTrailingBit(~abs(vec3<i32>(global0.a, u_input.c.x, 2147483647i)));
    var var_2 = arg_0;
    return true;
}

fn func_3() -> u32 {
    return u_input.a.x;
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(_wgslsmith_mod_i32(~(~(-73780i)), -global0.a));
    var var_0 = global1[_wgslsmith_index_u32(reverseBits(~u_input.a.x) << (1u % 32u), 7u)];
    global1 = array<Struct_4, 7>();
    var var_1 = _wgslsmith_clamp_u32(var_0.b, select(_wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(var_0.b, var_0.b, 19850u, 5530u)), vec4<u32>(var_0.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 9220u, var_0.b), vec4<u32>(var_0.b, u_input.a.x, 123454u, var_0.b)), u_input.a.x, ~15726u)), firstLeadingBit(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -2359f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.d.x + -1000f))), _wgslsmith_add_u32(~0u, ~u_input.a.x));
    var var_2 = u_input.a.x;
    return Struct_1(_wgslsmith_sub_i32(1i, var_0.c.b));
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_3) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(-arg_3.a.a), abs((_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, 1i, -2147483647i, -22570i), vec4<i32>(u_input.b.x, 277i, 0i, 13686i)) & abs(vec4<i32>(u_input.c.x, global0.a, 67172i, 23960i))) & firstLeadingBit(-vec4<i32>(global0.a, -2147483647i, -2147483647i, -1i))), 101140u);
    global1 = array<Struct_4, 7>();
    let var_1 = ~var_0.b.zwy;
    let var_2 = true;
    global0 = func_2();
    return var_0.a;
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_4) -> StorageBuffer {
    var var_0 = all(select(vec3<bool>(all(vec2<bool>(false, false)), false, arg_2.c), select(!select(vec3<bool>(arg_3.c.c, arg_0, arg_3.c.c), vec3<bool>(true, arg_2.c, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, arg_2.c), arg_3.c.c), !(!vec3<bool>(arg_2.c, arg_3.c.c, false))));
    var var_1 = _wgslsmith_mult_i32(-(~0i >> (firstTrailingBit(~arg_3.b) % 32u)), u_input.b.x ^ (i32(-1i) * -15985i));
    var_1 = -67887i;
    var var_2 = arg_1;
    let var_3 = -select(vec4<i32>(-1i) * -vec4<i32>(arg_2.b, -18646i, arg_2.b, arg_1.b.x), var_2.b, select(!select(vec4<bool>(arg_0, arg_3.c.c, arg_2.c, true), vec4<bool>(arg_0, arg_2.c, false, true), arg_0), select(!vec4<bool>(arg_3.c.c, arg_3.c.c, true, arg_2.c), select(vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(arg_2.c, true, arg_2.c, arg_0), vec4<bool>(arg_2.c, arg_0, arg_3.c.c, arg_0)), !vec4<bool>(arg_0, true, arg_0, arg_0)), arg_0));
    return StorageBuffer(select(vec3<i32>(~(-5189i), 0i, -37256i), ~min(var_3.zyx, countOneBits(vec3<i32>(15960i, global0.a, -1i))), arg_2.c), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-888f, 616f, 514f, 829f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.c.d.x, arg_3.c.d.x, 1835f, arg_3.c.d.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(319f, 1841f, arg_2.d.x, arg_2.d.x), vec4<f32>(arg_2.d.x, -912f, 2145f, arg_3.c.d.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.c.d.x, arg_3.c.d.x, arg_3.c.d.x, 2382f))))), arg_3.c.c)), max(~reverseBits(vec4<u32>(u_input.a.x, 14408u, arg_1.c, arg_1.c)), ~(~vec4<u32>(21861u, 111906u, u_input.a.x, 50530u)) | select(vec4<u32>(0u, 47798u, 0u, u_input.a.x), countOneBits(vec4<u32>(45883u, arg_3.b, u_input.a.x, 4294967295u)), !arg_2.c)), u_input.a.x, _wgslsmith_sub_u32(4294967295u << (_wgslsmith_dot_vec2_u32(~u_input.a.xz, _wgslsmith_mult_vec2_u32(u_input.a.yx, u_input.a.yx)) % 32u), ~(~(~u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    let x = u_input.a;
    s_output = func_5(any(select(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), false), vec4<bool>(any(vec3<bool>(true, true, false)), false, true, all(vec2<bool>(false, false))), vec4<bool>(true, true, true, true))), Struct_2(func_4(func_1(Struct_5(false, Struct_1(u_input.d), Struct_4(Struct_1(global0.a), 4680u, Struct_3(Struct_1(-1i), 2147483647i, true, vec3<f32>(-773f, -339f, 817f))), vec3<bool>(true, true, false))), vec4<bool>(true, true, true, true), u_input.a.x, Struct_3(func_2(), 1i, any(vec3<bool>(false, false, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1354f, 1736f, 899f) + vec3<f32>(417f, -491f, -771f)))), vec4<i32>(reverseBits(12901i), -(~global0.a), _wgslsmith_mult_i32(var_0.x, var_0.x), -66330i), u_input.a.x), Struct_3(Struct_1(~(-66642i)), global0.a, select(func_1(Struct_5(false, Struct_1(-1i), Struct_4(Struct_1(0i), 6316u, Struct_3(Struct_1(u_input.d), -2147483647i, true, vec3<f32>(951f, -792f, -1608f))), vec3<bool>(false, false, true))), true, false & any(vec4<bool>(false, false, true, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(110f, -1528f, -751f))), vec3<f32>(-813f, 641f, -131f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(766f, 1195f, 1766f) + vec3<f32>(108f, -2013f, -908f))))), global1[_wgslsmith_index_u32(countOneBits(u_input.a.x), 7u)]);
}

