struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: Struct_1,
    d: vec4<f32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: u32 = 4294967295u;

var<private> global2: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: vec4<u32>, arg_3: i32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -660f), _wgslsmith_f_op_f32(round(-1113f)), 1f)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, -121f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x))))));
    let var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(countOneBits(arg_2.x), u_input.b.x, firstLeadingBit(arg_2.x)), u_input.a.zww), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_2.x, 1u, 1u), vec3<u32>(1u, 1u, u_input.c)), u_input.a.wwy), ~select(u_input.a.yxz, arg_2.xyx, vec3<bool>(true, global0.x, global0.x)))) ^ arg_2.x;
    global2 = -1823i;
    global2 = -1i;
    return select(select(!(!(!vec3<bool>(global0.x, global0.x, global0.x))), select(select(!vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, false, global0.x), vec3<bool>(false, global0.x, global0.x)), vec3<bool>(30755u != arg_2.x, all(vec2<bool>(global0.x, global0.x)), true), select(!vec3<bool>(global0.x, true, global0.x), !vec3<bool>(global0.x, global0.x, false), vec3<bool>(false, global0.x, false))), select(any(select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, true), true)), global0.x, (global0.x | false) | global0.x)), select(!vec3<bool>(global0.x, global0.x, true), vec3<bool>(select(select(false, global0.x, false), false, select(true, true, global0.x)), !global0.x, !global0.x), _wgslsmith_mod_i32(_wgslsmith_mult_i32(14772i, arg_0.x), arg_0.x) == firstTrailingBit(countOneBits(arg_3))), select(vec3<bool>(any(select(vec3<bool>(true, global0.x, true), vec3<bool>(global0.x, true, global0.x), true)), true, u_input.b.x > select(u_input.a.x, var_2, global0.x)), select(!select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, global0.x, global0.x), global0.x), vec3<bool>(true, global0.x, !global0.x), select(vec3<bool>(global0.x, false, global0.x), select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, global0.x, global0.x), global0.x), !global0.x)), !(!global0.x)));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: i32) -> vec3<bool> {
    var var_0 = Struct_1(!select(!arg_1, arg_1, select(arg_1, !arg_1, any(arg_1.xx))), vec3<bool>(!(!arg_1.x), arg_1.x, arg_1.x != false));
    global2 = _wgslsmith_sub_i32(i32(-1i) * -(_wgslsmith_clamp_i32(arg_2, arg_2, arg_2) << (_wgslsmith_add_u32(arg_0.x, arg_0.x) % 32u)), _wgslsmith_clamp_i32(~((arg_2 | arg_2) | -arg_2), 1i, 0i));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f));
    let var_2 = Struct_2(func_3(_wgslsmith_mult_vec4_i32(max(_wgslsmith_div_vec4_i32(vec4<i32>(0i, arg_2, arg_2, arg_2), vec4<i32>(2147483647i, 197i, arg_2, arg_2)), ~vec4<i32>(-61502i, 974i, arg_2, arg_2)), ~vec4<i32>(-62888i, arg_2, arg_2, -40677i)), _wgslsmith_add_vec2_i32(-_wgslsmith_add_vec2_i32(vec2<i32>(arg_2, 2147483647i), vec2<i32>(-1i, arg_2)), -(~vec2<i32>(4922i, 1i))), _wgslsmith_div_vec4_u32(u_input.a, _wgslsmith_mult_vec4_u32(u_input.a >> (vec4<u32>(10365u, arg_0.x, u_input.a.x, arg_0.x) % vec4<u32>(32u)), ~vec4<u32>(0u, 0u, arg_0.x, 35643u))), _wgslsmith_div_i32(select(arg_2, 7972i, select(false, false, true)), max(arg_2, 5647i ^ arg_2))).yz, countOneBits(~4294967295u), Struct_1(vec3<bool>(false, !(!arg_1.x), -611f > var_1.x), arg_1), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-1710f, 1609f), 1025f, _wgslsmith_f_op_f32(var_1.x * -443f), _wgslsmith_f_op_f32(f32(-1f) * -333f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-427f, -1787f, var_1.x, -1787f), vec4<f32>(var_1.x, 2128f, var_1.x, 1485f))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, var_1.x, 416f, var_1.x)))))), u_input.c);
    let var_3 = vec2<bool>(any(select(func_3(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 23534i, arg_2, arg_2), vec4<i32>(-2147483647i, arg_2, arg_2, arg_2)), vec2<i32>(arg_2, arg_2), ~vec4<u32>(u_input.a.x, arg_0.x, arg_0.x, 20142u), arg_2 << (u_input.b.x % 32u)).xy, !var_0.a.yz, any(vec2<bool>(true, var_0.a.x)))), ~_wgslsmith_dot_vec4_i32(max(vec4<i32>(arg_2, -8805i, arg_2, arg_2), vec4<i32>(-12279i, arg_2, arg_2, -1i)), abs(vec4<i32>(0i, 18211i, -2147483647i, arg_2))) > arg_2);
    return vec3<bool>(true, func_3(vec4<i32>(arg_2, 0i, arg_2, arg_2 ^ 1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_2, arg_2) << (vec2<u32>(0u, var_2.b) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_2, arg_2), vec2<i32>(0i, 2147483647i)), vec2<i32>(36305i, arg_2) ^ vec2<i32>(arg_2, -41251i)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.x, 52998u, arg_0.x, 26106u), ~vec4<u32>(64992u, var_2.b, var_2.e, arg_0.x)), select(arg_2, select(-2147483647i, 0i, true), global0.x)).x && any(vec2<bool>(select(false, arg_1.x, true), var_3.x)), var_0.a.x);
}

fn func_5(arg_0: Struct_1) -> i32 {
    let var_0 = firstTrailingBit(firstTrailingBit(~select(select(vec3<i32>(-2147483647i, 20214i, 23083i), vec3<i32>(-1i, -2147483647i, 0i), false), vec3<i32>(20802i, -14053i, 20830i), true)));
    var var_1 = Struct_3(arg_0, vec3<i32>(_wgslsmith_dot_vec3_i32(countOneBits(var_0 | vec3<i32>(-17075i, 1i, -1i)), ~_wgslsmith_add_vec3_i32(vec3<i32>(0i, var_0.x, var_0.x), vec3<i32>(var_0.x, 28850i, -32716i))), -2960i, 1i));
    var var_2 = Struct_3(arg_0, _wgslsmith_add_vec3_i32(-vec3<i32>(var_1.b.x, ~var_0.x, -2147483647i), var_0));
    let var_3 = var_1.b.x;
    var var_4 = _wgslsmith_sub_u32(~(~_wgslsmith_mod_u32(~1u, u_input.b.x)), u_input.c);
    return var_2.b.x;
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_1 {
    global1 = u_input.c;
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 148f) * vec2<f32>(1335f, arg_0)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0, 1485f)))))));
    global2 = func_5(Struct_1(select(select(select(vec3<bool>(true, true, global0.x), vec3<bool>(false, global0.x, global0.x), global0.x), select(vec3<bool>(true, global0.x, true), vec3<bool>(false, global0.x, true), global0.x), vec3<bool>(global0.x, true, false)), !vec3<bool>(global0.x, global0.x, global0.x), select(select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, true, global0.x), false), !vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, global0.x, false))), func_4(reverseBits(_wgslsmith_sub_vec2_u32(u_input.a.yy, u_input.a.yw)), func_3(~vec4<i32>(arg_1, -30054i, arg_1, arg_1), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_1, -48192i), vec2<i32>(0i, arg_1)), min(u_input.a, vec4<u32>(u_input.b.x, 21375u, u_input.c, 0u)), -arg_1), _wgslsmith_sub_i32(arg_1, arg_1))));
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 1f) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(var_0, var_0), var_0, vec2<bool>(true, global0.x))))));
    let var_2 = _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(select(~(~vec3<u32>(4294967295u, 0u, 1u)), ~_wgslsmith_div_vec3_u32(u_input.a.yzy, u_input.b), global0.x), _wgslsmith_div_vec3_u32(~(~vec3<u32>(1u, 13683u, 7833u)), ~vec3<u32>(1u, 1u, 27952u))), vec3<u32>(abs(select(0u >> (u_input.c % 32u), u_input.b.x, global0.x)), 4294967295u, ~1u & (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.a.x), u_input.b.xx) << (u_input.b.x % 32u))), u_input.b);
    return Struct_1(!func_3(~_wgslsmith_add_vec4_i32(vec4<i32>(arg_1, -54222i, arg_1, 0i), vec4<i32>(arg_1, arg_1, arg_1, arg_1)), ~vec2<i32>(-2147483647i, 8282i) << ((vec2<u32>(u_input.b.x, 0u) | vec2<u32>(0u, var_2.x)) % vec2<u32>(32u)), u_input.a ^ ~vec4<u32>(u_input.c, var_2.x, 0u, u_input.c), _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_1, 1i, arg_1, arg_1), vec4<i32>(1i, arg_1, 2896i, 2147483647i))), !(!(!func_3(vec4<i32>(-37465i, arg_1, -22861i, arg_1), vec2<i32>(-3783i, -14752i), u_input.a, -1i))));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_3 {
    var var_0 = ~arg_2;
    var var_1 = vec2<bool>(!any(vec3<bool>(arg_1.c.a.x, false, true)), true);
    var var_2 = false;
    var var_3 = func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.x + -1422f))))), var_0.x);
    var_2 = var_3.b.x;
    return Struct_3(arg_1.c, countOneBits(_wgslsmith_mult_vec3_i32(-vec3<i32>(arg_2.x, 43916i, arg_0), arg_2) | vec3<i32>(-arg_2.x, arg_2.x, -50602i << (0u % 32u))));
}

fn func_6(arg_0: Struct_3) -> Struct_2 {
    let var_0 = Struct_2(arg_0.a.a.xy, 18198u, func_1(-1i, Struct_2(arg_0.a.b.xy, select(24376u, ~u_input.b.x, global0.x | true), arg_0.a, vec4<f32>(_wgslsmith_f_op_f32(751f + -267f), _wgslsmith_f_op_f32(-902f + -140f), -1000f, -146f), max(u_input.c, ~4294967295u)), max(vec3<i32>(45989i << (1u % 32u), firstTrailingBit(arg_0.b.x), ~(-1i)), ~vec3<i32>(69190i, arg_0.b.x, arg_0.b.x)), arg_0.a).a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -213f, 1000f, 1091f)) * vec4<f32>(_wgslsmith_f_op_f32(floor(233f)), _wgslsmith_f_op_f32(-170f + -274f), _wgslsmith_f_op_f32(max(-2257f, 680f)), 1f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(813f, 211f, 1071f, 449f))), vec4<f32>(_wgslsmith_f_op_f32(1808f - 520f), -1000f, _wgslsmith_div_f32(-682f, 279f), -668f)))), ~(~u_input.c));
    var var_1 = 55094u;
    global1 = 40506u;
    let var_2 = var_0.c;
    var var_3 = func_2(_wgslsmith_f_op_f32(1099f - var_0.d.x), -func_1(_wgslsmith_div_i32(arg_0.b.x, func_5(var_2)), Struct_2(!vec2<bool>(var_2.a.x, global0.x), ~var_0.b, var_2, _wgslsmith_f_op_vec4_f32(-vec4<f32>(176f, var_0.d.x, var_0.d.x, var_0.d.x)), _wgslsmith_div_u32(0u, u_input.a.x)), -vec3<i32>(arg_0.b.x, 1i, 5799i), func_1(~(-8312i), var_0, _wgslsmith_mult_vec3_i32(arg_0.b, arg_0.b), Struct_1(vec3<bool>(false, false, arg_0.a.b.x), vec3<bool>(var_2.a.x, false, false))).a).b.x);
    return var_0;
}

fn func_7(arg_0: u32, arg_1: Struct_2, arg_2: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(ceil(arg_1.d.x));
    global1 = (1u & (_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(71072u, 1u, 1u), u_input.a.yzy), _wgslsmith_mult_u32(arg_1.e, arg_0)) | (49382u ^ ~arg_1.e))) >> (~(~(~101287u)) % 32u);
    global0 = arg_2.a.a.xy;
    var var_1 = arg_2.b.yy;
    var var_2 = _wgslsmith_f_op_f32(trunc(-1278f));
    return Struct_1(func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.d.x), 754f)), firstTrailingBit(-1i)).b, !arg_1.c.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(~countOneBits(_wgslsmith_clamp_u32(u_input.a.x << (u_input.c % 32u), ~1u, _wgslsmith_clamp_u32(34036u, 4294967295u, u_input.c))), func_6(func_1(~reverseBits(-92557i), Struct_2(!vec2<bool>(global0.x, global0.x), u_input.b.x, Struct_1(vec3<bool>(false, true, true), vec3<bool>(true, global0.x, global0.x)), vec4<f32>(-255f, -964f, -1211f, -1067f), 69014u), firstLeadingBit(vec3<i32>(0i, 2147483647i, -11154i)), Struct_1(!vec3<bool>(global0.x, global0.x, global0.x), select(vec3<bool>(global0.x, false, true), vec3<bool>(true, false, global0.x), vec3<bool>(global0.x, true, global0.x))))), func_1(-_wgslsmith_mod_i32(i32(-1i) * -54053i, abs(-1i)), Struct_2(select(!vec2<bool>(true, global0.x), func_6(Struct_3(Struct_1(vec3<bool>(true, false, true), vec3<bool>(global0.x, false, false)), vec3<i32>(-1i, -19224i, 0i))).c.b.xy, true), 1u, Struct_1(!vec3<bool>(true, global0.x, global0.x), vec3<bool>(true, global0.x, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1295f, -521f, 486f, 1030f), vec4<f32>(431f, 1148f, -1126f, -326f), vec4<bool>(global0.x, false, true, global0.x)))), ~u_input.a.x >> (u_input.a.x % 32u)), -_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-46687i, -41318i, -1i), vec3<i32>(-1i, -25036i, 641i)), vec3<i32>(31747i, -44781i, -35704i)), Struct_1(func_4(firstLeadingBit(vec2<u32>(33754u, 4402u)), vec3<bool>(false, global0.x, true), -70229i), select(func_3(vec4<i32>(-1i, -66508i, 47963i, 2147483647i), vec2<i32>(2147483647i, -33816i), vec4<u32>(u_input.c, 11601u, 4294967295u, u_input.b.x), 67767i), vec3<bool>(global0.x, true, global0.x), !vec3<bool>(global0.x, true, true)))));
    var_0 = func_1(1i, Struct_2(vec2<bool>(true, true), 1u | (_wgslsmith_add_u32(0u, 18029u) & u_input.c), func_1(_wgslsmith_add_i32(func_1(-23394i, Struct_2(vec2<bool>(var_0.a.x, var_0.a.x), u_input.a.x, Struct_1(var_0.b, var_0.a), vec4<f32>(-619f, 170f, 464f, -1045f), 97908u), vec3<i32>(-2147483647i, -21971i, -14658i), Struct_1(var_0.a, vec3<bool>(false, true, false))).b.x, max(49747i, 6525i)), Struct_2(func_2(-800f, 23325i).b.zz, ~u_input.c, func_2(-486f, 2147483647i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1446f, 305f, 295f, 938f)), 0u >> (0u % 32u)), abs(vec3<i32>(27425i, -41103i, 45250i)), Struct_1(!var_0.b, var_0.a)).a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-879f, 301f, 1245f, 410f))), 75520u), reverseBits(~vec3<i32>(2147483647i, ~(-2147483647i), 1i)), func_1(942i, func_6(func_1(-20080i, func_6(Struct_3(Struct_1(vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, true, true)), vec3<i32>(12346i, 0i, -49656i))), ~vec3<i32>(36266i, 2147483647i, 0i), func_2(142f, 2147483647i))), ~vec3<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1493i, -16805i, 49633i, 27089i), vec4<i32>(35357i, -2147483647i, -1i, 0i)), ~0i), func_6(Struct_3(Struct_1(var_0.b, var_0.b), vec3<i32>(74780i, -1i, 8001i))).c).a).a;
    let var_1 = Struct_1(var_0.a, var_0.a);
    var_0 = Struct_1(func_2(-694f, -5991i).a, vec3<bool>(func_3(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, 2147483647i), vec3<i32>(57904i, 1i, 10724i)), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 42859i, 2147483647i, 381i), vec4<i32>(-1129i, 0i, -60653i, -42776i)), -5745i), _wgslsmith_mult_vec2_i32(vec2<i32>(64621i, -2147483647i), vec2<i32>(0i, 0i)) << (u_input.b.xy % vec2<u32>(32u)), _wgslsmith_mult_vec4_u32(u_input.a >> (vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.b.x) % vec4<u32>(32u)), u_input.a), 14745i).x, select(var_1.b.x, false, false), false));
    var_0 = Struct_1(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-348f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -744f)))), ~_wgslsmith_div_i32(abs(0i), 1i)).a, !func_2(1f, 29983i).a);
    global0 = vec2<bool>(func_2(426f, _wgslsmith_mod_i32(1i, abs(-2147483647i))).b.x, false);
    global2 = _wgslsmith_dot_vec4_i32(vec4<i32>(-(~_wgslsmith_clamp_i32(0i, -1185i, 1i)), ~_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2147483647i, -2147483647i), vec3<i32>(-63637i, -876i, -2147483647i)), max(1i, 12959i)), i32(-1i) * -96680i, _wgslsmith_mult_i32(~(-2147483647i) << (u_input.c % 32u), abs(-48885i))), ~countOneBits(vec4<i32>(-15491i, 2147483647i, 0i, -18683i) >> ((u_input.a << (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_2 = reverseBits(-vec2<i32>(firstTrailingBit(-50909i) << (0u % 32u), _wgslsmith_clamp_i32(2147483647i, -15060i, -1i) & _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(-10886i, -12563i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_2.x, -(~(-1i)), i32(-1i) * -22458i), select(abs(-vec2<i32>(0i, 13056i)), -vec2<i32>(var_2.x >> (u_input.b.x % 32u), 2147483647i), global0.x));
}

