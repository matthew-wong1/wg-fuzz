struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 9>;

var<private> global1: array<vec3<bool>, 19>;

var<private> global2: array<vec2<u32>, 2> = array<vec2<u32>, 2>(vec2<u32>(17392u, 1u), vec2<u32>(15060u, 18976u));

var<private> global3: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> vec3<bool> {
    return !vec3<bool>((i32(-1i) * -10978i) <= arg_0, true, select(true, firstTrailingBit(1u) <= u_input.b, !(!arg_1.a.a)));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: u32, arg_3: bool) -> Struct_2 {
    var var_0 = 4294967295u & ~arg_2;
    var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, _wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(1u, arg_2), ~73681u), select(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(4294967295u, arg_2)), 59145u, true)), ~(~1u) ^ ~_wgslsmith_mod_u32(arg_1, u_input.b), arg_2), select(~vec4<u32>(4294967295u, arg_2, arg_2, 1u), vec4<u32>(arg_1, abs(u_input.b >> (arg_1 % 32u)), ~arg_1, u_input.b), !(!vec4<bool>(arg_3, true, global3.x, false))));
    global3 = func_3(u_input.c.x, Struct_2(Struct_1(arg_3)));
    var var_1 = arg_1;
    global0 = array<vec2<u32>, 9>();
    return Struct_2(Struct_1(any(vec4<bool>(all(vec4<bool>(global3.x, global3.x, arg_3, arg_3)), true, true, any(vec3<bool>(arg_3, arg_3, false))))));
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = func_2(select(u_input.a.yy, vec2<i32>(~u_input.a.x, _wgslsmith_clamp_i32(12596i >> (u_input.b % 32u), i32(-1i) * -1i, max(2147483647i, 2147483647i))), arg_0.zy), reverseBits(u_input.b), u_input.b >> (0u % 32u), global3.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-182f * 1000f))))), 1033f));
    var var_2 = -1i;
    let var_3 = var_0;
    global3 = !global1[_wgslsmith_index_u32(u_input.b, 19u)];
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -firstTrailingBit(-2147483647i);
    var var_1 = func_1(!(!(!select(vec4<bool>(global3.x, global3.x, false, global3.x), vec4<bool>(false, false, global3.x, true), vec4<bool>(false, true, global3.x, global3.x)))));
    let var_2 = ~(~(-reverseBits(~vec3<i32>(41874i, u_input.a.x, 2147483647i))));
    var var_3 = Struct_1(var_1.a);
    let var_4 = func_2(-(~var_2.yy), u_input.b, countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(11927u, u_input.b, 54864u), ~vec3<u32>(57395u, 0u, 47254u)) ^ _wgslsmith_mult_u32(_wgslsmith_mult_u32(2139u, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, 0u, 1u, 1u)))), !var_3.a);
    let var_5 = Struct_2(func_2(vec2<i32>(0i, var_2.x), ~u_input.b, u_input.b, all(!select(vec4<bool>(true, true, true, global3.x), vec4<bool>(true, true, false, true), var_4.a.a))).a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32((_wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(2147483647i, u_input.c.x, 32631i, 38429i)) ^ ~u_input.c) >> (max(_wgslsmith_mult_vec4_u32(vec4<u32>(26756u, 83593u, 0u, u_input.b), vec4<u32>(u_input.b, u_input.b, 19464u, u_input.b)), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)) % vec4<u32>(32u)), u_input.c & vec4<i32>(-2147483647i, -1i | var_2.x, 2147483647i, u_input.a.x)));
}

