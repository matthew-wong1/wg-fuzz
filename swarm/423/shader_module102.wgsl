struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4> = array<u32, 4>(25831u, 4294967295u, 85375u, 72161u);

var<private> global1: vec2<u32>;

var<private> global2: array<vec4<u32>, 11>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: f32) -> bool {
    let var_0 = Struct_1(arg_1.a);
    let var_1 = arg_1;
    global2 = array<vec4<u32>, 11>();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-566f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a, 2190f)) + _wgslsmith_f_op_f32(517f + 474f))))));
    let var_3 = arg_1;
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> f32 {
    let var_0 = Struct_1(-1592f);
    let var_1 = vec2<bool>(false, !(!arg_2));
    let var_2 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_clamp_i32(-2147483647i, -9814i, ~(-2147483647i)), _wgslsmith_dot_vec2_i32(select(-vec2<i32>(25212i, -69921i), vec2<i32>(1i, 1i), true), _wgslsmith_mult_vec2_i32(vec2<i32>(14427i, 16734i) >> (u_input.a % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(35758i, -33111i), vec2<i32>(-32958i, -19943i))))), -2147483647i, -(~firstTrailingBit(1i)));
    global0 = array<u32, 4>();
    var var_3 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_0.a)), -266f, arg_1.a == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) + _wgslsmith_f_op_f32(arg_0.a + arg_0.a)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    global2 = array<vec4<u32>, 11>();
    global0 = array<u32, 4>();
    var var_0 = arg_0;
    global1 = u_input.a;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(arg_0, Struct_1(arg_0.a), false)), _wgslsmith_f_op_f32(arg_0.a - arg_0.a)), var_0.a)) + 330f), _wgslsmith_f_op_f32(floor(813f)));
    return Struct_1(652f);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> vec4<f32> {
    global1 = u_input.a;
    let var_0 = _wgslsmith_div_f32(-1670f, 1000f);
    let var_1 = arg_0;
    let var_2 = _wgslsmith_clamp_vec3_i32(((vec3<i32>(1i, 1i, 1i) << ((vec3<u32>(4294967295u, 39359u, u_input.a.x) << (vec3<u32>(1u, arg_1.x, u_input.a.x) % vec3<u32>(32u))) % vec3<u32>(32u))) >> (vec3<u32>(u_input.a.x, 0u, ~2789u) % vec3<u32>(32u))) ^ ~vec3<i32>(1i, ~0i, _wgslsmith_mod_i32(1i, -1146i)), -_wgslsmith_sub_vec3_i32(vec3<i32>(~(-1i), abs(0i), 0i), firstTrailingBit(abs(vec3<i32>(32287i, -1i, 0i)))), vec3<i32>(_wgslsmith_add_i32(-_wgslsmith_div_i32(-32166i, 19747i), 1i), abs(i32(-1i) * -2147483647i) << ((~53549u | (arg_1.x << (0u % 32u))) % 32u), firstLeadingBit(~2147483647i)));
    let var_3 = func_2(func_2(Struct_1(_wgslsmith_f_op_f32(-arg_0.a)), vec4<bool>(true, true, true, true)), vec4<bool>((var_2.x == firstLeadingBit(0i)) & true, false || func_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 14272u), vec3<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 4u)], 1u), vec3<u32>(63455u, 46427u, u_input.a.x)), arg_0, _wgslsmith_f_op_f32(var_1.a * 190f)), any(vec2<bool>(true, true)), any(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, true), true))));
    return vec4<f32>(_wgslsmith_f_op_f32(exp2(var_3.a)), arg_0.a, -763f, _wgslsmith_f_op_f32(562f + -805f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    global0 = array<u32, 4>();
    let var_1 = Struct_1(-1425f);
    var var_2 = Struct_1(var_1.a);
    var var_3 = !(!select(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, func_1(vec3<u32>(u_input.a.x, global1.x, global1.x), var_1, var_2.a))));
    var var_4 = _wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 3856u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(func_2(Struct_1(var_2.a), vec4<bool>(var_3.x, false, var_3.x, var_3.x)), ~u_input.a)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, var_1.a, -1774f, -883f) * vec4<f32>(-2646f, var_2.a, var_1.a, 1000f)))))), ~(reverseBits(54490i) << (u_input.a.x % 32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-516f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-997f - -2074f))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -460f), var_2.a)));
}

