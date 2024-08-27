struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(true, false, true, true));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    global0 = u_input.a;
    global1 = array<vec4<bool>, 1>();
    var var_0 = Struct_1(~(-(~vec4<i32>(arg_1.a, u_input.a, arg_1.a, 2147483647i))), ~arg_1.a, 73440u, ~vec4<u32>(1u, 1u, 1u, 1u));
    var var_1 = 29420i;
    var var_2 = Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b, firstLeadingBit(~var_0.a.x), _wgslsmith_clamp_i32(arg_1.a, 6706i, arg_1.a), arg_1.a), vec4<i32>(u_input.a, firstTrailingBit(var_0.b), i32(-1i) * -2147483647i, _wgslsmith_mult_i32(10127i, arg_1.a)) << ((var_0.d | reverseBits(vec4<u32>(0u, var_0.c, 25635u, 1u))) % vec4<u32>(32u))));
    return 27838u;
}

fn func_3(arg_0: bool, arg_1: vec4<bool>, arg_2: vec4<u32>, arg_3: Struct_1) -> i32 {
    global1 = array<vec4<bool>, 1>();
    let var_0 = -arg_3.a.x;
    let var_1 = arg_3;
    global1 = array<vec4<bool>, 1>();
    var var_2 = Struct_1(arg_3.a, min(2147483647i, 1i), _wgslsmith_mod_u32(48630u, 4294967295u), var_1.d);
    return var_0;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(-34099i);
    global0 = -countOneBits(abs(i32(-1i) * -var_0.a));
    let var_1 = var_0;
    global0 = var_1.a;
    var var_2 = func_3(-2147483647i <= var_0.a, !global1[_wgslsmith_index_u32(_wgslsmith_div_u32(13502u, max(53068u, 0u) << (0u % 32u)), 1u)], vec4<u32>(_wgslsmith_mod_u32(0u, max(func_2(Struct_2(var_0.a), var_1), ~1u)), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(max(0u, 4294967295u), 1u, ~2399u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 18346u), vec2<u32>(141432u, 0u)))), 4294967295u), Struct_1(vec4<i32>(reverseBits(u_input.a << (4294967295u % 32u)), var_0.a, -48868i, i32(-1i) * -u_input.a), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, var_0.a, u_input.a, 7732i), ~vec4<i32>(2147483647i, -42256i, -2550i, var_0.a)), -var_1.a), 1u, firstLeadingBit(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, 1u), vec4<u32>(30370u, 1u, 49460u, 11470u), vec4<u32>(4294967295u, 0u, 0u, 18249u)))));
    return Struct_1(-_wgslsmith_mod_vec4_i32(~vec4<i32>(var_1.a, var_0.a, var_1.a, u_input.a), vec4<i32>(_wgslsmith_div_i32(var_1.a, -2147483647i), var_1.a, firstTrailingBit(var_1.a), 18670i)), -_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -54259i, var_1.a, u_input.a), vec4<i32>(u_input.a, 0i, var_1.a, 37327i) << (vec4<u32>(28110u, 0u, 15707u, 0u) % vec4<u32>(32u))), -46277i), _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 35317u), vec2<u32>(39264u, 6143u)), 51124u) | _wgslsmith_div_u32(~func_2(Struct_2(-1i), Struct_2(8650i)), ~(~16549u)), select(vec4<u32>(21480u, firstLeadingBit(1u), ~(~13224u), 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(func_2(Struct_2(2260i), Struct_2(-1i)), ~59364u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), false));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 1>();
    var var_0 = Struct_2(~u_input.a);
    global0 = var_0.a;
    global1 = array<vec4<bool>, 1>();
    global1 = array<vec4<bool>, 1>();
    var var_1 = func_1();
    var var_2 = Struct_2(-34856i);
    let var_3 = select(select(!select(vec2<bool>(true, false), vec2<bool>(true, true), select(false, true, false)), !vec2<bool>(var_1.c >= 0u, any(vec2<bool>(true, true))), true && any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true))), select(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), _wgslsmith_mult_i32(var_0.a, -4663i) <= abs(0i)), any(vec2<bool>(true, select(true, false, false)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1256f, -937f, -1000f, -1049f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(616f, 735f, 242f, 161f), vec4<f32>(1537f, 687f, 1000f, 455f), global1[_wgslsmith_index_u32(var_1.d.x, 1u)]))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1706f) + -591f), 1415f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-669f)), -835f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1162f + 1102f), 1267f)))));
}

