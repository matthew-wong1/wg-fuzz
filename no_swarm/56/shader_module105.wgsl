struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(7167i, 0u), Struct_2(i32(-2147483648), 4115u), Struct_2(1i, 4294967295u), Struct_2(2147483647i, 4294967295u), Struct_2(-1i, 4294967295u), Struct_2(-34214i, 51760u), Struct_2(1i, 4294967295u), Struct_2(i32(-2147483648), 47324u), Struct_2(48557i, 57604u), Struct_2(23435i, 0u), Struct_2(2147483647i, 19715u), Struct_2(-124526i, 6354u), Struct_2(2147483647i, 47381u), Struct_2(44953i, 4294967295u), Struct_2(i32(-2147483648), 1u), Struct_2(-43963i, 33238u), Struct_2(2147483647i, 4294967295u), Struct_2(-19476i, 74543u), Struct_2(2147483647i, 4294967295u), Struct_2(i32(-2147483648), 37659u), Struct_2(16151i, 42521u), Struct_2(1i, 4294967295u), Struct_2(1i, 1u), Struct_2(64411i, 14455u), Struct_2(-53132i, 1u), Struct_2(-45816i, 0u), Struct_2(2147483647i, 17264u), Struct_2(-3061i, 5373u), Struct_2(34818i, 1u), Struct_2(11527i, 53138u));

var<private> global1: array<vec4<u32>, 31>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: bool, arg_3: u32) -> f32 {
    let var_0 = Struct_1(36325i);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1521f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(-1000f, -726f, arg_0)))), 910f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(136f, -1178f)))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1641f, -443f, var_1.x, var_1.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<f32>(var_1.x, -433f, -2122f, -1958f)) + vec4<f32>(var_1.x, -153f, 1677f, var_1.x)))));
    global0 = array<Struct_2, 30>();
    global1 = array<vec4<u32>, 31>();
    return var_1.x;
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> i32 {
    let var_0 = Struct_2(_wgslsmith_add_i32(26797i, countOneBits(0i)), ~max(~min(4294967295u, 0u), ~20148u));
    var var_1 = var_0;
    var var_2 = firstLeadingBit(~min(78525u, var_0.b));
    let var_3 = Struct_2(var_0.a, var_0.b);
    global1 = array<vec4<u32>, 31>();
    return 0i << (~u_input.d % 32u);
}

fn func_2() -> i32 {
    let var_0 = vec4<i32>(u_input.c, -u_input.a.x, _wgslsmith_div_i32(func_4(1i, -(u_input.b.x & u_input.a.x), Struct_1(firstLeadingBit(-10426i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(false, vec4<u32>(1u, 4294967295u, 4294967295u, u_input.d), false, 700u)))), 30086i), -reverseBits(_wgslsmith_mod_i32(u_input.c, -u_input.a.x)));
    global0 = array<Struct_2, 30>();
    var var_1 = global0[_wgslsmith_index_u32(reverseBits(u_input.d), 30u)];
    var var_2 = select(vec4<bool>(all(select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), true)), select(true, !all(vec2<bool>(true, true)), !any(vec2<bool>(true, false))), false, any(vec3<bool>(true, false, all(vec3<bool>(true, false, true))))), !vec4<bool>(all(vec2<bool>(true, true)), any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), true, select(true, true, true)), vec4<bool>(!any(vec3<bool>(false, false, false)), any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), true)), true, true));
    var_2 = select(vec4<bool>(true, !var_2.x, var_2.x, abs(-2147483647i) <= var_1.a), select(vec4<bool>(false && !var_2.x, any(vec3<bool>(true, true, var_2.x)), false, false), !vec4<bool>(true, var_2.x, false | var_2.x, var_2.x && var_2.x), true), vec4<bool>(all(select(vec3<bool>(false, true, false), select(var_2.ywz, var_2.zwx, true), var_0.x > u_input.c)), var_2.x, var_2.x, true));
    return countOneBits(countOneBits(1i ^ (~var_1.a << (~95304u % 32u))));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(~(-1i));
    var var_1 = arg_1;
    global0 = array<Struct_2, 30>();
    var var_2 = Struct_1(-43154i);
    let var_3 = vec4<i32>(-1i, 191i, var_0.a, _wgslsmith_mult_i32(func_2(), max(min(_wgslsmith_sub_i32(-1i, 0i), ~var_0.a), var_2.a & var_2.a)));
    return arg_1;
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    var var_0 = vec2<i32>(-1i) * -(~(-u_input.b.zy) >> (vec2<u32>(_wgslsmith_mod_u32(arg_0.b, 3404u), ~arg_3.b) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(708f, 323f)))))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(651f, -654f) + vec2<f32>(-523f, 827f)))));
    var var_2 = arg_2;
    var var_3 = true;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-193f, var_1.x, var_1.x, 230f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(167f, -1251f, var_1.x, _wgslsmith_div_f32(385f, var_1.x)) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 201f, var_1.x))))), false)));
    return Struct_1(~func_2());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(u_input.d >> (u_input.d % 32u), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(4294967295u), _wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, u_input.d), _wgslsmith_mod_u32(u_input.d, 32155u))), 30u)], abs(abs(u_input.a.x)), global0[_wgslsmith_index_u32(countOneBits(1u ^ (u_input.d & 27580u)), 30u)]), u_input.b.x, Struct_1(_wgslsmith_mult_i32(abs(-37441i), firstLeadingBit(firstTrailingBit(u_input.a.x)))), global0[_wgslsmith_index_u32(u_input.d, 30u)]);
    let var_1 = ~(-_wgslsmith_clamp_vec3_i32(u_input.b, u_input.b, vec3<i32>(-42848i, -2903i, ~var_0.a)));
    global1 = array<vec4<u32>, 31>();
    global0 = array<Struct_2, 30>();
    var var_2 = -u_input.a.xx;
    global0 = array<Struct_2, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, abs(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.d, 34809u), vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, 10863u) & vec2<u32>(4294967295u, 0u))), -2306f, _wgslsmith_mod_vec3_i32(-firstLeadingBit(firstLeadingBit(vec3<i32>(57540i, 0i, u_input.c))), ~(select(vec3<i32>(-1i, var_2.x, -2147483647i), vec3<i32>(var_0.a, -1i, 1i), vec3<bool>(true, true, true)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.d, u_input.d), vec3<u32>(u_input.d, u_input.d, u_input.d)) % vec3<u32>(32u)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(901f, -487f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(260f, 1201f)))))))));
}

