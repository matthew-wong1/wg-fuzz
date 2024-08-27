struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: f32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: bool = false;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: f32, arg_3: vec3<u32>) -> vec3<f32> {
    global0 = select(select(select(vec2<bool>(all(vec3<bool>(true, global0.x, false)), any(vec2<bool>(true, global0.x))), vec2<bool>(true, true), select(select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, global0.x), global0.x), !vec2<bool>(global0.x, true), true)), select(!(!vec2<bool>(true, global0.x)), select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, false), true), select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, global0.x), global0.x), !vec2<bool>(global0.x, true)), true), false), vec2<bool>(global0.x, any(vec2<bool>(global0.x | global0.x, global0.x))), _wgslsmith_dot_vec2_i32(firstTrailingBit(firstTrailingBit(vec2<i32>(-35897i, 2147483647i))), vec2<i32>(-1i) * -arg_1.yw) != -2147483647i);
    var var_0 = Struct_1(!(global0.x | any(select(vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(true, global0.x, true, global0.x), false))), arg_1.x);
    var var_1 = ~1u;
    var var_2 = reverseBits(~(~(vec2<u32>(4294967295u, u_input.a) | ~vec2<u32>(10220u, 3235u))));
    let var_3 = ~1023i;
    return vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0.x)), 434f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1482f) + arg_2))));
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(181f, -1548f) * vec2<f32>(-1203f, -1038f)), vec4<i32>(-29409i, 0i, -12838i, -1i), 1518f, ~vec3<u32>(18934u, u_input.a, u_input.a))) - vec3<f32>(-413f, _wgslsmith_f_op_f32(171f - -1000f), 628f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-171f - -745f), _wgslsmith_f_op_f32(min(-438f, 1137f)), _wgslsmith_div_f32(-876f, 1462f))), global0.x || any(select(vec2<bool>(true, global0.x), vec2<bool>(false, false), vec2<bool>(false, global0.x)))))));
    let var_1 = Struct_1(global0.x, i32(-1i) * -34608i);
    var var_2 = ~abs(vec4<u32>(0u, u_input.a, ~(~u_input.a), ~4294967295u));
    let var_3 = Struct_3(vec2<i32>(1i, 1i), ~(~(~vec4<u32>(u_input.a, u_input.a, var_2.x, 0u)) & vec4<u32>(12031u, reverseBits(4294967295u), ~var_2.x, ~5591u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(316f, _wgslsmith_f_op_f32(select(1483f, -1119f, false)), -792f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)))))), var_1.a);
    var var_4 = firstTrailingBit(vec2<i32>(-19565i, -4897i));
    return true;
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1711f);
    let var_1 = select(select(vec2<bool>(true, true), select(!select(vec2<bool>(true, true), vec2<bool>(true, global0.x), vec2<bool>(global0.x, global0.x)), vec2<bool>(true, true), !(!vec2<bool>(false, global0.x))), global0.x), select(!vec2<bool>(global0.x || global0.x, global0.x), select(vec2<bool>(all(vec3<bool>(global0.x, false, true)), true), select(vec2<bool>(true, false), vec2<bool>(false, global0.x), true), select(vec2<bool>(false, global0.x), vec2<bool>(false, false), func_2())), vec2<bool>(global0.x, !(global0.x | false))), !select(vec2<bool>(true, true), select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x), select(vec2<bool>(false, true), vec2<bool>(false, false), true)), all(vec4<bool>(false, global0.x, true, true))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2951f - _wgslsmith_f_op_f32(-756f + 347f)));
    global0 = !var_1;
    global0 = vec2<bool>(true, false);
    return Struct_3(-abs(vec2<i32>(-23069i, 26107i)) & vec2<i32>(min(i32(-1i) * -4861i, 0i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(21861i, 17756i, 1i))), vec4<u32>(u_input.a, 4294967295u, u_input.a ^ ~_wgslsmith_clamp_u32(4294967295u, 1u, u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(~0u, u_input.a, u_input.a), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 146233u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(u_input.a, 59196u, u_input.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-743f, 1126f, 1555f) * vec3<f32>(793f, 1295f, -507f))), vec3<f32>(_wgslsmith_f_op_f32(366f + 1000f), _wgslsmith_f_op_f32(1000f - 1492f), 1675f))), all(!(!(!vec4<bool>(global0.x, var_1.x, true, false)))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = _wgslsmith_sub_i32(arg_2.b, _wgslsmith_dot_vec2_i32(firstTrailingBit(-(vec2<i32>(arg_0.a.x, -1i) << (vec2<u32>(arg_0.b.x, 4294967295u) % vec2<u32>(32u)))), ~(~vec2<i32>(-2147483647i, arg_0.a.x)) ^ ~vec2<i32>(arg_2.b, 0i)));
    var var_1 = arg_1;
    var_0 = arg_0.a.x;
    var var_2 = ~abs(vec4<i32>(~_wgslsmith_dot_vec2_i32(arg_0.a, arg_0.a), _wgslsmith_sub_i32(firstLeadingBit(28924i), arg_2.b), firstTrailingBit(-arg_0.a.x), firstTrailingBit(arg_2.b & -45694i)));
    global1 = !func_1().d;
    return _wgslsmith_sub_vec2_u32(vec2<u32>(0u, ~(~35539u)) | vec2<u32>(24893u, ~(~arg_0.b.x)), _wgslsmith_add_vec2_u32(~vec2<u32>(0u, arg_0.b.x), vec2<u32>(arg_0.b.x, ~u_input.a)) ^ arg_0.b.wz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(select(-vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-23550i, -68488i), vec2<i32>(1i, -7397i)), -10102i << (u_input.a % 32u)), abs(vec2<i32>(-60474i, 2147483647i)) << (func_4(func_1(), !vec2<bool>(false, global0.x), Struct_1(true, -30423i)) % vec2<u32>(32u)), global0.x & global0.x), reverseBits(abs((vec4<u32>(0u, 4294967295u, 16893u, 4294967295u) & vec4<u32>(u_input.a, 43914u, 10648u, u_input.a)) ^ ~vec4<u32>(27435u, 1u, u_input.a, u_input.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 800f, 918f) * vec3<f32>(-840f, -544f, 541f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-398f, 522f, 977f) + vec3<f32>(-1181f, -647f, -882f))))), all(!(!select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, global0.x, false)))));
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(firstTrailingBit(9419u), var_0.b.x));
}

