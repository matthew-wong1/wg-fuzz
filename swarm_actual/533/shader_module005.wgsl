struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<vec2<bool>, 29>;

var<private> global2: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(30395u), Struct_1(4294967295u), Struct_1(19035u), Struct_1(17372u), Struct_1(18729u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(47705u), Struct_1(3802u), Struct_1(59356u), Struct_1(80530u), Struct_1(1u), Struct_1(4294967295u), Struct_1(66998u), Struct_1(17818u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(16440u), Struct_1(4294967295u), Struct_1(0u), Struct_1(18054u), Struct_1(1u), Struct_1(29429u), Struct_1(91702u), Struct_1(1u), Struct_1(54209u), Struct_1(0u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_1(arg_0: i32) -> vec2<i32> {
    var var_0 = global2[_wgslsmith_index_u32(1u, 27u)];
    let var_1 = arg_0;
    var var_2 = arg_0;
    var var_3 = true;
    global2 = array<Struct_1, 27>();
    return vec2<i32>(arg_0, _wgslsmith_sub_i32(-arg_0, _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0, var_1, 20070i, arg_0), ~vec4<i32>(1i, var_1, arg_0, 1i))));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32) -> vec3<bool> {
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(max(~17919u, u_input.c.x), 27u)], Struct_1(arg_1), -select(abs(~arg_0.x), firstTrailingBit(-2147483647i), _wgslsmith_div_u32(u_input.d.x, 24578u) > abs(arg_1)), Struct_1(arg_1));
    var var_1 = !(!all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    let var_2 = true && (all(vec4<bool>(false, true, true, false)) & false);
    return select(vec3<bool>(all(select(select(vec3<bool>(var_2, var_2, var_2), vec3<bool>(true, true, false), vec3<bool>(var_2, false, false)), select(vec3<bool>(false, var_2, false), vec3<bool>(true, true, var_2), true), vec3<bool>(false, var_2, false))), var_2, _wgslsmith_mod_i32(_wgslsmith_mod_i32(var_0.c, arg_0.x), -9634i) == 0i), vec3<bool>(var_2, all(select(vec4<bool>(var_2, true, var_2, var_2), vec4<bool>(false, false, true, var_2), select(vec4<bool>(false, false, var_2, false), vec4<bool>(false, var_2, var_2, true), true))), var_2), true);
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_mult_i32(~(-(1i >> (_wgslsmith_mult_u32(4294967295u, u_input.b) % 32u))), 31037i);
    var var_1 = vec3<bool>(any(global1[_wgslsmith_index_u32(26946u, 29u)]), (29289i >= var_0) || true, !(!select(u_input.b > u_input.c.x, true, true)));
    var_1 = select(select(!vec3<bool>(var_1.x, !var_1.x, true), vec3<bool>(true, true, false), vec3<bool>(true, var_1.x, var_1.x)), vec3<bool>(var_1.x, var_1.x, false), !func_3(_wgslsmith_div_vec2_i32(~vec2<i32>(2147483647i, 89383i), vec2<i32>(40681i, var_0) << (u_input.d.yz % vec2<u32>(32u))), u_input.a));
    global1 = array<vec2<bool>, 29>();
    global2 = array<Struct_1, 27>();
    return 54080i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(firstTrailingBit(_wgslsmith_dot_vec3_u32(select(abs(u_input.d), abs(vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<bool>(true, true, true)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.d.x, u_input.c.x), vec3<u32>(33020u, 41271u, 1u), u_input.d))));
    var var_1 = vec2<bool>(true, (_wgslsmith_dot_vec2_i32(func_1(-2147483647i), select(vec2<i32>(2147483647i, -1i), vec2<i32>(0i, -2147483647i), global1[_wgslsmith_index_u32(38095u, 29u)])) == -func_2()) | all(vec4<bool>(true, true, true, false)));
    let var_2 = any(vec3<bool>(true, true, all(!vec4<bool>(false, var_1.x, var_1.x, false))));
    let var_3 = var_0.a;
    global2 = array<Struct_1, 27>();
    global0 = func_2();
    global0 = firstTrailingBit(-1i);
    let var_4 = select(~vec3<i32>(-(~1i), _wgslsmith_add_i32(0i, -25271i), _wgslsmith_sub_i32(firstTrailingBit(-1i), ~11834i)), firstTrailingBit(vec3<i32>(firstTrailingBit(0i), ~6251i, 1i) >> (u_input.d % vec3<u32>(32u))), !func_3(vec2<i32>(_wgslsmith_div_i32(-50437i, 19188i), ~6916i), max(~17829u, 21373u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1102f) - _wgslsmith_f_op_f32(f32(-1f) * -437f)), -1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1723f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-198f - 1983f) - _wgslsmith_f_op_f32(trunc(1629f))), _wgslsmith_f_op_f32(f32(-1f) * -2928f)))), _wgslsmith_add_vec4_i32(vec4<i32>(~firstTrailingBit(0i), func_2(), _wgslsmith_dot_vec2_i32(select(var_4.zy, var_4.zx, var_2), ~vec2<i32>(-2147483647i, -14504i)), ~(51236i << (var_3 % 32u))), -min(vec4<i32>(-842i, var_4.x, -1i, var_4.x), -vec4<i32>(1i, 1i, -1i, 0i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-2068f, 768f)))), -761f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1000f)), 745f)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1203f) * -117f), -1448f, _wgslsmith_f_op_f32(-1000f + -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1208f)) * 1f)))), 410f);
}

