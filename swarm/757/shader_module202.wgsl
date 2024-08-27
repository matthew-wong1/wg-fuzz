struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec3<u32> = vec3<u32>(0u, 1u, 9277u);

var<private> global2: array<Struct_1, 23>;

var<private> global3: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(5496i, 19971i), Struct_1(-4471i, 26960i), Struct_1(-44032i, 0i), Struct_1(19038i, -52970i), Struct_1(6379i, 0i), Struct_1(27921i, 2147483647i), Struct_1(i32(-2147483648), -63841i), Struct_1(0i, 24286i), Struct_1(i32(-2147483648), 2147483647i), Struct_1(-28611i, 16655i), Struct_1(0i, 40896i), Struct_1(44534i, 56155i), Struct_1(34545i, 37849i), Struct_1(0i, 2147483647i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<u32>) -> vec3<u32> {
    global0 = vec4<f32>(-623f, 695f, _wgslsmith_f_op_f32(arg_0.x + -373f), _wgslsmith_f_op_f32(-arg_0.x));
    var var_0 = arg_1.x;
    return ~max(~vec3<u32>(u_input.a | 29659u, arg_1.x, global1.x), max(~arg_1, arg_1));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<i32>) -> vec3<u32> {
    global1 = ~(~(vec3<u32>(global1.x, global1.x, global1.x) | vec3<u32>(39193u, u_input.a, global1.x)) | ~(vec3<u32>(0u, global1.x, global1.x) | vec3<u32>(1u, 4294967295u, global1.x))) | ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, _wgslsmith_div_u32(56884u, 55088u), global1.x), ~(~vec3<u32>(global1.x, 24031u, 4294967295u)), vec3<u32>(_wgslsmith_sub_u32(u_input.a, global1.x), firstLeadingBit(global1.x), u_input.a | 4294967295u));
    let var_0 = 1610f;
    var var_1 = global2[_wgslsmith_index_u32(firstLeadingBit(abs(4294967295u)), 23u)];
    let var_2 = all(vec4<bool>((4294967295u & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 28942u, u_input.a, u_input.a), vec4<u32>(u_input.a, 0u, 56366u, u_input.a))) >= _wgslsmith_clamp_u32(61785u, firstLeadingBit(u_input.a), global1.x), true, var_0 <= global0.x, all(vec3<bool>(false, true, true))));
    var var_3 = global1.x;
    return (vec3<u32>(firstLeadingBit(63292u) << (u_input.a % 32u), u_input.a << (select(u_input.a, 10494u, var_2) % 32u), u_input.a ^ _wgslsmith_mult_u32(4294967295u, u_input.a)) & vec3<u32>(1u, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(91580u, 4294967295u), u_input.a << (u_input.a % 32u), global1.x), (u_input.a ^ global1.x) | 34125u)) ^ vec3<u32>(min(firstTrailingBit(4294967295u), u_input.a), _wgslsmith_mod_u32(4294967295u, global1.x), global1.x);
}

fn func_1() -> bool {
    global1 = func_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(316f, -1000f)) + -1007f) + _wgslsmith_f_op_f32(f32(-1f) * -821f)), 1745f, _wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-911f, -749f)) + _wgslsmith_f_op_f32(f32(-1f) * -721f)))), abs(~max(~vec3<u32>(0u, global1.x, global1.x), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.a, 4294967295u), vec3<u32>(0u, u_input.a, 16545u)))));
    let var_0 = -vec2<i32>(~(-1i << (u_input.a % 32u)), select(abs(i32(-1i) * -93867i), _wgslsmith_add_i32(-2323i, 1i), any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true))));
    global1 = ~(~func_3(global3[_wgslsmith_index_u32(~(~global1.x), 14u)], _wgslsmith_mult_vec2_i32(-vec2<i32>(var_0.x, 50598i), -var_0), vec3<i32>(-36564i, 0i, var_0.x) | (vec3<i32>(-1i, -21217i, 26060i) ^ vec3<i32>(var_0.x, 83917i, 67495i))));
    let var_1 = !(-1031f >= global0.x);
    let var_2 = firstTrailingBit(vec2<i32>(var_0.x, var_0.x));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = vec4<f32>(-1570f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1263f * global0.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * -1280f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(global0.x, -871f)), _wgslsmith_f_op_f32(-global0.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1400f + -1525f) - global0.x))));
    global2 = array<Struct_1, 23>();
    global2 = array<Struct_1, 23>();
    global2 = array<Struct_1, 23>();
    let var_1 = !vec4<bool>(all(vec2<bool>(false, true)), any(vec4<bool>(var_0, false, var_0, var_0)) | !select(false, false, false), true, true && var_0);
    var var_2 = !(!var_1.x);
    var_2 = all(var_1.zy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-716f * _wgslsmith_f_op_f32(sign(global0.x))), _wgslsmith_clamp_vec4_i32(~abs(vec4<i32>(4431i, 18800i, 1i, -23957i)), abs(reverseBits(max(vec4<i32>(71860i, -15156i, 2147483647i, 17546i), vec4<i32>(-10935i, -1i, -1i, -1346i)))), -select(vec4<i32>(2147483647i, 7659i, 2147483647i, -2147483647i), vec4<i32>(4425i, -2147483647i, -2147483647i, 1i), vec4<bool>(true, var_1.x, var_1.x, var_0)) << (((vec4<u32>(25097u, 51970u, global1.x, 1u) | vec4<u32>(u_input.a, 0u, global1.x, 1u)) >> (~vec4<u32>(1u, global1.x, 97827u, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u))), u_input.a, 4294967295u);
}

