struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 13>;

var<private> global1: Struct_3 = Struct_3(Struct_2(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-15880i, -8721i)), 1u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(408f, arg_1.a, arg_1.a) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a, arg_1.a, -836f), vec3<f32>(arg_1.a, arg_1.a, 1360f))))));
    global0 = array<vec3<bool>, 13>();
    global1 = Struct_3(global1.a, 110554u);
    let var_1 = Struct_3(Struct_2(_wgslsmith_div_vec2_i32(global1.a.a, _wgslsmith_sub_vec2_i32(vec2<i32>(-24504i, 29753i), vec2<i32>(arg_1.b.x, global1.a.a.x) & arg_1.b)), _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 2147483647i | global1.a.a.x), ~min(vec2<i32>(global1.a.a.x, arg_1.b.x), vec2<i32>(global1.a.a.x, global1.a.a.x)))), 29562u);
    var var_2 = arg_0;
    return Struct_2(~_wgslsmith_sub_vec2_i32(-(vec2<i32>(arg_1.b.x, var_1.a.b.x) >> (vec2<u32>(66035u, 3060u) % vec2<u32>(32u))), -reverseBits(var_1.a.b)), vec2<i32>(_wgslsmith_add_i32(~0i, _wgslsmith_mult_i32(abs(-15349i), arg_1.b.x << (4294967295u % 32u))), arg_1.b.x));
}

fn func_3() -> u32 {
    var var_0 = all(!(!vec4<bool>(false, true, global1.b <= 1u, false)));
    var var_1 = global1.a.a.x;
    let var_2 = vec4<bool>(true, true, true, true);
    global0 = array<vec3<bool>, 13>();
    let var_3 = Struct_1(-437f, func_2(var_2.x, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -600f)), vec2<i32>(abs(global1.a.b.x), ~2147483647i))).b);
    return global1.b;
}

fn func_1() -> Struct_1 {
    global1 = Struct_3(func_2(true, Struct_1(-413f, _wgslsmith_div_vec2_i32(vec2<i32>(global1.a.a.x, 65632i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-29888i, 31044i), vec2<i32>(7319i, global1.a.a.x), vec2<i32>(global1.a.b.x, global1.a.a.x))))), u_input.a);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - -1355f), -306f)), firstTrailingBit(~(-global1.a.b) | firstTrailingBit(global1.a.a)));
    let var_1 = ~(firstLeadingBit(~countOneBits(vec4<u32>(global1.b, global1.b, u_input.b.x, global1.b))) | vec4<u32>(global1.b, func_3() >> (~46423u % 32u), global1.b ^ u_input.a, u_input.a));
    global1 = Struct_3(func_2(!(!any(vec4<bool>(false, false, true, true))), var_0), _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(4294967295u) >> ((global1.b << (u_input.b.x % 32u)) % 32u), 4294967295u, 28768u, ~_wgslsmith_mod_u32(13779u, global1.b)), select(~(~vec4<u32>(3906u, 64797u, 1u, 0u)), ~vec4<u32>(var_1.x, 4294967295u, var_1.x, global1.b) >> (_wgslsmith_mult_vec4_u32(var_1, var_1) % vec4<u32>(32u)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true))));
    let var_2 = any(vec4<bool>(true, true, select(true, true, true), select(any(vec4<bool>(true, false, false, false)), true, true)));
    return Struct_1(3213f, global1.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global1.a.b, ~(~global1.a.a | vec2<i32>(-1i, -2147483647i)));
    var var_1 = func_1();
    global1 = Struct_3(func_2(_wgslsmith_f_op_f32(round(2171f)) >= -1345f, func_1()), 1u);
    let var_2 = vec2<bool>(false, !all(select(global0[_wgslsmith_index_u32(u_input.b.x, 13u)], !global0[_wgslsmith_index_u32(29907u, 13u)], select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false))));
    var var_3 = false;
    var var_4 = Struct_3(var_0, global1.b);
    global0 = array<vec3<bool>, 13>();
    var_1 = func_1();
    let var_5 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1558f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-809f))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.a)))), vec2<f32>(_wgslsmith_f_op_f32(-673f * var_1.a), var_1.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(abs(u_input.b) ^ max(vec3<u32>(0u, u_input.b.x, 43782u), vec3<u32>(0u, u_input.b.x, var_4.b)))), _wgslsmith_f_op_f32(-func_1().a), var_5);
}

