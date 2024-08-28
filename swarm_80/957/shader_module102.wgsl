struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_3, 12>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec2<f32>) -> Struct_4 {
    global1 = array<Struct_3, 12>();
    let var_0 = 18481u;
    let var_1 = Struct_5(-887i, ~u_input.a.x);
    var var_2 = global1[_wgslsmith_index_u32(1u, 12u)];
    var_2 = global1[_wgslsmith_index_u32(u_input.a.x, 12u)];
    return Struct_4(~vec2<u32>(4294967295u, ~var_1.b) & u_input.a);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = _wgslsmith_mult_u32(max(0u, u_input.a.x), firstTrailingBit(~u_input.a.x));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a.x)));
    let var_1 = Struct_3(select(!vec4<bool>(arg_0.b.x, select(true, arg_0.b.x, arg_2.b.x), !arg_0.b.x, all(vec4<bool>(true, false, true, false))), vec4<bool>(arg_2.b.x, !all(vec3<bool>(arg_1.x, arg_0.b.x, arg_0.b.x)), select(false, false, arg_0.b.x) & arg_1.x, !any(arg_2.b.zz)), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, arg_2.b.x, arg_1.x, arg_2.b.x), vec4<bool>(arg_1.x, arg_2.b.x, true, arg_2.b.x))), Struct_2(arg_0));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, arg_2.a.x))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(435f, arg_0.a.x, arg_0.b.x)), _wgslsmith_f_op_f32(round(-641f)))))) - _wgslsmith_f_op_f32(arg_2.a.x + -1212f));
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, -595f, var_1.a.x)) - 956f), arg_2.a.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.a.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1327f * arg_2.a.x))))));
    return _wgslsmith_f_op_vec4_f32(-arg_2.a);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: vec4<f32>) -> vec3<i32> {
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, arg_2.x)) + arg_2.x)))));
    return -_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(0i, 1283i)), _wgslsmith_dot_vec3_i32(vec3<i32>(47500i, -30349i, 1i), vec3<i32>(2147483647i, 0i, 2147483647i)), 6848i), vec3<i32>(1i, 1i, 1i)) & firstTrailingBit(select(~(~vec3<i32>(1i, 0i, -26278i)), ~vec3<i32>(-83116i, 2147483647i, -1i), true));
}

fn func_2(arg_0: Struct_4) -> StorageBuffer {
    var var_0 = firstLeadingBit(-vec3<i32>(23753i, _wgslsmith_mod_i32(812i << (1u % 32u), 24218i), firstLeadingBit(i32(-1i) * -2147483647i)));
    var var_1 = 1u >> (_wgslsmith_div_u32(func_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -503f), _wgslsmith_f_op_f32(-1000f * 452f))).a.x, ~4294967295u) % 32u);
    let var_2 = vec3<i32>(max(var_0.x, ~reverseBits(_wgslsmith_dot_vec2_i32(var_0.xy, vec2<i32>(var_0.x, -1i)))), _wgslsmith_dot_vec3_i32(-func_4(u_input.a, func_1(vec2<f32>(-1483f, -1000f)), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec4<f32>(1017f, 1029f, 550f, -313f), vec3<bool>(false, false, true)), vec3<bool>(true, false, true), Struct_1(vec4<f32>(-142f, 1068f, -196f, 835f), vec3<bool>(false, false, false))))), vec3<i32>(var_0.x, 2147483647i, abs(-115848i))), select(-2147483647i, 27812i, true));
    var var_3 = false;
    let var_4 = _wgslsmith_sub_i32(min(~_wgslsmith_add_i32(_wgslsmith_add_i32(var_2.x, 1i), _wgslsmith_dot_vec3_i32(var_2, var_2)), reverseBits(var_2.x)), ~_wgslsmith_sub_i32(firstLeadingBit(var_0.x), (var_2.x & var_0.x) | var_2.x));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-884f, 1480f))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(468f, 1000f, -1373f), vec3<f32>(1488f, -2068f, 159f), true)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-100f, -952f, -210f))))), vec3<bool>(true, true, true))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -387f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec4<f32>(-2111f, 531f, -625f, 845f), vec3<bool>(false, true, false)), vec3<bool>(true, true, false), Struct_1(vec4<f32>(-136f, 656f, -1606f, -217f), vec3<bool>(true, false, false)))).x, -1000f, all(vec4<bool>(false, true, false, true)))), _wgslsmith_f_op_f32(-315f - 1294f)))), ~(~(~vec3<u32>(1u, u_input.a.x, 4294967295u))) ^ abs(~(~vec3<u32>(arg_0.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_div_vec2_i32(~_wgslsmith_mod_vec2_i32(~var_0.zx, vec2<i32>(-2147483647i, var_0.x)), ~vec2<i32>(-var_2.x, -40904i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(698f)), _wgslsmith_div_f32(-1336f, -929f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -920f) * -302f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1898f, -1215f)) - _wgslsmith_div_f32(1000f, -1659f)))));
    let var_1 = func_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, 1000f), vec2<f32>(var_0, var_0), false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)))))));
    let x = u_input.a;
    s_output = func_2(var_1);
}

