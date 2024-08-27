struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15>;

var<private> global1: bool = true;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    global1 = false;
    global1 = select(!(!any(vec4<bool>(true, false, true, false))) & false, true, any(vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), any(vec4<bool>(false, false, true, false)) || true, !select(true, true, false), false)));
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -426f);
    let var_1 = countOneBits(vec3<i32>(u_input.a, u_input.a, -u_input.a & firstTrailingBit(u_input.a)) & abs(countOneBits(vec3<i32>(-1811i, u_input.a, u_input.a))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1505f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1277f)))));
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: f32) -> bool {
    var var_0 = arg_2.a.x & arg_2.a.x;
    global0 = array<Struct_3, 15>();
    var_0 = ~(~_wgslsmith_div_u32(abs(~arg_2.a.x), arg_2.a.x));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1322f, _wgslsmith_f_op_f32(f32(-1f) * -541f)) - 1f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, -1051f)) + arg_3));
    var var_2 = Struct_3(arg_2, abs(~4294967295u) ^ (min(arg_2.a.x, arg_2.a.x) | arg_2.a.x));
    return !any(!vec4<bool>(true, true, true, any(vec3<bool>(false, true, true))));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: f32) -> Struct_3 {
    let var_0 = Struct_2(39081i, arg_1.a, ~(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.a.x, arg_1.b, arg_1.b, 18152u), vec4<u32>(1u, 73006u, 56332u, 51389u)), 12355u)));
    global1 = any(arg_0.xwx);
    let var_1 = arg_0.wyz;
    global1 = func_4(-586f, _wgslsmith_f_op_vec2_f32(select(arg_2.zz, vec2<f32>(-1116f, _wgslsmith_f_op_f32(func_3())), var_1.x)), arg_1.a, 1529f);
    var var_2 = vec3<i32>(0i, 1i, ~0i);
    return global0[_wgslsmith_index_u32(64406u, 15u)];
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = vec2<u32>(arg_3.a.x, ~arg_0.a.a.x);
    let var_1 = firstTrailingBit(~_wgslsmith_mult_i32(-u_input.a ^ -42548i, 1i));
    var var_2 = -(~max(~vec4<i32>(16196i, -1i, u_input.a, var_1), ~(-vec4<i32>(-2147483647i, 16067i, 2147483647i, var_1))));
    global0 = array<Struct_3, 15>();
    var_0 = ~_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(arg_3.a << (_wgslsmith_sub_vec2_u32(vec2<u32>(70001u, var_0.x), arg_3.a) % vec2<u32>(32u)), arg_3.a >> (vec2<u32>(arg_1.a.x, arg_3.a.x) % vec2<u32>(32u))), arg_1.a);
    return Struct_1(vec2<u32>(var_0.x, min(30438u, ~arg_0.b >> (_wgslsmith_mod_u32(arg_1.a.x, 11688u) % 32u))));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_3) -> u32 {
    global0 = array<Struct_3, 15>();
    let var_0 = func_5(func_2(!vec4<bool>(30511u == arg_1.b, true, arg_0.x, arg_0.x), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(max(abs(29631u), ~74363u), _wgslsmith_div_u32(_wgslsmith_add_u32(0u, 24724u), arg_1.a.a.x)), 15u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(1542f, _wgslsmith_f_op_f32(trunc(1331f)), _wgslsmith_f_op_f32(f32(-1f) * -661f), _wgslsmith_f_op_f32(max(436f, 539f)))), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -1191f))), arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1000f, -1394f), _wgslsmith_f_op_f32(max(-251f, -1075f)), func_4(1894f, vec2<f32>(1000f, 1000f), Struct_1(vec2<u32>(arg_1.a.a.x, 4294967295u)), 430f))) * _wgslsmith_f_op_f32(func_3()))), Struct_1(arg_1.a.a));
    let var_1 = vec3<u32>(57531u, ~(~arg_1.a.a.x), 0u);
    let var_2 = Struct_2(firstTrailingBit(18265i), var_0, ~(vec2<u32>(arg_1.a.a.x, _wgslsmith_clamp_u32(1u, 77516u, 4294967295u)) & vec2<u32>(var_0.a.x, ~var_0.a.x)));
    var var_3 = arg_1;
    return min(0u, firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(52669u, 4294967295u), max(var_0.a.x, var_0.a.x), arg_1.b)) ^ ~var_3.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_1(vec2<u32>(~func_1(vec3<bool>(true, false, false), Struct_3(Struct_1(vec2<u32>(131422u, 1u)), 86944u)), 1u)), 4294967295u);
    global1 = true;
    let var_1 = var_0.a.a.x;
    global0 = array<Struct_3, 15>();
    let var_2 = select(!vec3<bool>(1f < _wgslsmith_f_op_f32(sign(-238f)), true, true), vec3<bool>(~select(var_0.b, var_1, true) != ~_wgslsmith_dot_vec4_u32(vec4<u32>(54614u, 4294967295u, 14503u, 30202u), vec4<u32>(var_0.b, var_0.a.a.x, var_0.a.a.x, var_0.b)), !(4294967295u < var_0.a.a.x), true), true && !select(true, true, true));
    let var_3 = _wgslsmith_mult_i32(~u_input.a, _wgslsmith_dot_vec2_i32(-vec2<i32>(-27522i, ~u_input.a), -_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.a, -21929i), vec2<i32>(u_input.a, 2147483647i) | vec2<i32>(73784i, u_input.a))));
    let var_4 = true;
    var var_5 = Struct_2(_wgslsmith_sub_i32(~(~(-1i)), _wgslsmith_mod_i32(~(~var_3), abs(~0i))), var_0.a, vec2<u32>(func_2(vec4<bool>(all(vec4<bool>(false, false, true, true)), var_4, true, true), func_2(select(vec4<bool>(var_2.x, var_4, var_4, false), vec4<bool>(var_4, false, false, var_2.x), vec4<bool>(var_2.x, true, var_4, var_2.x)), func_2(vec4<bool>(false, var_2.x, var_2.x, false), Struct_3(var_0.a, var_1), vec4<f32>(-179f, 856f, 789f, -112f), -1233f), vec4<f32>(-761f, -845f, -937f, 1320f), _wgslsmith_f_op_f32(ceil(404f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-341f, -1000f, 183f, 803f)), _wgslsmith_f_op_f32(func_3())).a.a.x, 0u));
    let var_6 = Struct_2(u_input.a, var_5.b, ~select(firstLeadingBit(~vec2<u32>(var_5.b.a.x, var_1)), vec2<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 6185u), vec3<u32>(var_0.a.a.x, 62728u, var_0.b))), vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(2147483647i, 35685i), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -129f) * -294f))), 563f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -255f) * -870f), _wgslsmith_f_op_f32(round(-573f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 657f)), 1520f))), firstTrailingBit(~vec3<u32>(var_1, var_1, 4294967295u)) >> (vec3<u32>(_wgslsmith_sub_u32(0u, var_6.b.a.x), 0u, 0u) % vec3<u32>(32u)));
}

