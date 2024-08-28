struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4>;

var<private> global1: array<i32, 12> = array<i32, 12>(1i, 2147483647i, -55761i, 1i, 0i, 1i, 4352i, i32(-2147483648), -21906i, -60446i, 2147483647i, -68924i);

var<private> global2: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(866f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1608f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1522f - -589f) + _wgslsmith_f_op_f32(round(-2095f)))))));
    global1 = array<i32, 12>();
    let var_1 = arg_1.a;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(147f, var_0.x, var_0.x)))))));
    let var_2 = vec4<u32>(35873u, arg_0.x, arg_1.a.a, 8591u);
    return vec4<u32>(~(~(~(~var_1.a))), firstLeadingBit(arg_0.x << (~u_input.d.x % 32u)), countOneBits(~59703u), ~(~arg_1.a.a));
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    let var_0 = ~func_3(global2.b, Struct_2(Struct_1(global2.b.x, ~vec4<u32>(u_input.e.x, 1u, 2440u, u_input.d.x)), Struct_1(~global2.a, u_input.d)));
    let var_1 = 54984i;
    var var_2 = Struct_2(Struct_1(~(~67469u), global2.b), Struct_1(44757u >> (global2.b.x % 32u), global2.b));
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-869f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x) - _wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -319f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * -1000f)))));
    var var_4 = Struct_2(Struct_1(var_2.b.a, ~vec4<u32>(1u & u_input.d.x, firstTrailingBit(34195u), u_input.d.x, u_input.c.x)), var_2.a);
    return (-2147483647i ^ global0[_wgslsmith_index_u32(~(39019u | ~var_4.b.b.x), 4u)]) | ~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, 9148i), u_input.a.yw), vec2<i32>(24639i, 31931i));
}

fn func_1(arg_0: vec4<u32>, arg_1: f32) -> Struct_2 {
    let var_0 = max(reverseBits(global2.a), 1u);
    var var_1 = vec4<i32>(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 1419f, -938f) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(152f, 513f, arg_1))))) << (~_wgslsmith_dot_vec2_u32(vec2<u32>(30071u, global2.a) << (global2.b.xy % vec2<u32>(32u)), vec2<u32>(u_input.d.x, 32098u)) % 32u), _wgslsmith_sub_i32(~15361i << (_wgslsmith_add_u32(firstLeadingBit(arg_0.x), select(u_input.d.x, u_input.e.x, false)) % 32u), -1i), -14495i, ~(-5144i));
    global1 = array<i32, 12>();
    global2 = Struct_1(min(19616u, 20821u), vec4<u32>(func_3(arg_0, Struct_2(Struct_1(4294967295u, vec4<u32>(4294967295u, var_0, 4294967295u, arg_0.x)), Struct_1(arg_0.x, vec4<u32>(arg_0.x, u_input.d.x, global2.b.x, u_input.d.x)))).x, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, var_0, 0u, 39378u)), select(~vec4<u32>(22888u, var_0, var_0, 1u), _wgslsmith_mult_vec4_u32(u_input.e, arg_0), vec4<bool>(false, false, false, false))), 0u, min(1u, firstLeadingBit(71096u)) | (_wgslsmith_clamp_u32(var_0, 44019u, u_input.c.x) | select(u_input.c.x, global2.b.x, true))));
    global0 = array<i32, 4>();
    return Struct_2(Struct_1(1u, ~reverseBits(arg_0 << (arg_0 % vec4<u32>(32u)))), Struct_1(abs(abs(var_0)), ~vec4<u32>(~global2.b.x, 16915u, firstLeadingBit(global2.b.x), u_input.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 12>();
    global1 = array<i32, 12>();
    let var_0 = vec3<bool>(all(vec4<bool>(true, all(vec3<bool>(false, true, false)), true, !(u_input.c.x > u_input.e.x))), false, any(!vec3<bool>(true, all(vec2<bool>(true, true)), true)));
    var var_1 = func_1(~u_input.e, -1038f);
    let var_2 = _wgslsmith_div_vec4_u32(global2.b, vec4<u32>(_wgslsmith_clamp_u32(var_1.a.b.x, var_1.b.a << (~u_input.c.x % 32u), _wgslsmith_dot_vec4_u32(var_1.b.b, ~global2.b)), abs(~var_1.a.b.x), _wgslsmith_add_u32(firstTrailingBit(20916u | global2.b.x), ~0u), abs(~28006u)));
    let var_3 = ~firstLeadingBit(vec4<i32>(global1[_wgslsmith_index_u32(~4294967295u, 12u)], global1[_wgslsmith_index_u32(16823u, 12u)] | u_input.a.x, i32(-1i) * -25352i, firstLeadingBit(-2147483647i)) | ~abs(u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.b.zy, ~firstLeadingBit(vec2<i32>(global0[_wgslsmith_index_u32(69812u, 4u)], 27405i)), all(select(select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), !vec4<bool>(true, true, var_0.x, var_0.x), select(vec4<bool>(var_0.x, true, true, false), vec4<bool>(false, var_0.x, false, var_0.x), true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(479f + 1957f), _wgslsmith_f_op_f32(141f + -1129f), -818f) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -841f), _wgslsmith_f_op_f32(sign(563f)), _wgslsmith_div_f32(-360f, -1000f)))));
}

