struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 18> = array<vec4<i32>, 18>(vec4<i32>(2147483647i, i32(-2147483648), -14934i, -1i), vec4<i32>(0i, 35341i, 2147483647i, -1i), vec4<i32>(7743i, 0i, -7136i, 8741i), vec4<i32>(15872i, -4686i, 17327i, -34655i), vec4<i32>(0i, -34522i, -1i, 19994i), vec4<i32>(-32208i, 2147483647i, 1i, 1i), vec4<i32>(1i, i32(-2147483648), -39797i, -8501i), vec4<i32>(9418i, -35116i, 1i, 1i), vec4<i32>(2147483647i, -47840i, -1i, 2147483647i), vec4<i32>(0i, -25191i, -1i, -42081i), vec4<i32>(-20823i, -1i, -35648i, -1i), vec4<i32>(i32(-2147483648), -1i, 1i, 22534i), vec4<i32>(25441i, 32300i, -1i, -16064i), vec4<i32>(31921i, -23232i, -1883i, i32(-2147483648)), vec4<i32>(17991i, -10907i, -6817i, 2147483647i), vec4<i32>(20563i, -56159i, -928i, i32(-2147483648)), vec4<i32>(-1i, 2147483647i, 2147483647i, 1i), vec4<i32>(i32(-2147483648), -2955i, 2147483647i, 31018i));

var<private> global1: array<bool, 13> = array<bool, 13>(false, true, true, false, true, true, true, true, false, false, true, true, false);

var<private> global2: array<vec2<u32>, 28>;

var<private> global3: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec4<i32>(0i, 1i, -1i, 1i)), Struct_1(vec4<i32>(-14293i, -1i, 0i, -19549i)), Struct_1(vec4<i32>(-26593i, -18505i, 37621i, 101825i)), Struct_1(vec4<i32>(-13534i, -42539i, 2147483647i, -40493i)), Struct_1(vec4<i32>(-17342i, 0i, -5824i, 0i)), Struct_1(vec4<i32>(112626i, 9351i, -1i, 44760i)), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), -457i, -37184i)), Struct_1(vec4<i32>(-90i, -38115i, 1i, 13791i)), Struct_1(vec4<i32>(15195i, i32(-2147483648), 0i, 1i)), Struct_1(vec4<i32>(58040i, i32(-2147483648), -23108i, -1i)), Struct_1(vec4<i32>(2147483647i, 17792i, i32(-2147483648), i32(-2147483648))), Struct_1(vec4<i32>(21067i, 13723i, -11958i, -3551i)), Struct_1(vec4<i32>(57241i, i32(-2147483648), i32(-2147483648), -3149i)), Struct_1(vec4<i32>(i32(-2147483648), 18i, 2147483647i, -14032i)), Struct_1(vec4<i32>(2147483647i, 2147483647i, 0i, -34127i)), Struct_1(vec4<i32>(1i, -2029i, i32(-2147483648), i32(-2147483648))), Struct_1(vec4<i32>(31331i, 0i, -5694i, -85724i)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32) -> vec3<bool> {
    let var_0 = Struct_1(max(~global0[_wgslsmith_index_u32(~1u, 18u)], global0[_wgslsmith_index_u32(arg_1 >> (30011u % 32u), 18u)] ^ global0[_wgslsmith_index_u32(1u, 18u)]));
    var var_1 = ~u_input.d.yy;
    var var_2 = var_0;
    let var_3 = Struct_1(var_2.a);
    var var_4 = global3[_wgslsmith_index_u32(max(~var_1.x, arg_0.x), 17u)];
    return select(vec3<bool>(true, true, true), !(!(!select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 13u)], true, true), vec3<bool>(global1[_wgslsmith_index_u32(1u, 13u)], false, false), vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 13u)], true)))), 1u < ~arg_1);
}

fn func_2(arg_0: i32) -> Struct_1 {
    global1 = array<bool, 13>();
    let var_0 = all(select(select(select(vec3<bool>(global1[_wgslsmith_index_u32(114648u, 13u)], global1[_wgslsmith_index_u32(1u, 13u)], true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 13u)], global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(1u, 13u)]), true), !vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 13u)], global1[_wgslsmith_index_u32(1u, 13u)]), any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 13u)], global1[_wgslsmith_index_u32(u_input.d.x, 13u)]))), select(select(func_3(vec4<u32>(4294967295u, 0u, 1u, u_input.d.x), u_input.d.x), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 13u)], false, global1[_wgslsmith_index_u32(64582u, 13u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 13u)], false), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 13u)], true)), func_3(vec4<u32>(4294967295u, 4294967295u, u_input.d.x, u_input.d.x), 4294967295u).x), func_3(~vec4<u32>(4294967295u, u_input.d.x, 53895u, 4294967295u), _wgslsmith_sub_u32(u_input.d.x, u_input.d.x)), vec3<bool>(true, any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 13u)], false)), !global1[_wgslsmith_index_u32(4294967295u, 13u)])), true != (global1[_wgslsmith_index_u32(firstLeadingBit(u_input.d.x), 13u)] && true)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(2395f)))), 341f, 956f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(956f, 1f)) + _wgslsmith_div_f32(-376f, 1f))));
    let var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -(~_wgslsmith_mod_vec3_i32(vec3<i32>(0i, -18188i, 0i), vec3<i32>(-32380i, 2147483647i, arg_0))), vec3<i32>(arg_0, 2443i, abs(-2147483647i) ^ min(~arg_0, -1i)));
    global2 = array<vec2<u32>, 28>();
    return global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d.x, 115485u), 17u)];
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> StorageBuffer {
    global3 = array<Struct_1, 17>();
    let var_0 = -firstTrailingBit(u_input.b.x);
    var var_1 = arg_2;
    var var_2 = ~(~select(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, u_input.d.x, arg_1, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 29898u, arg_0)) >> (vec4<u32>(4294967295u, 32771u, arg_1, 4294967295u) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_div_u32(arg_1, arg_1), ~arg_0, firstTrailingBit(1u), _wgslsmith_add_u32(124904u, 29551u)), !vec4<bool>(true, false, global1[_wgslsmith_index_u32(arg_0, 13u)], false)));
    global1 = array<bool, 13>();
    return StorageBuffer(var_2.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -301f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -360f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1678f - 691f) * -1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-887f, -105f), _wgslsmith_f_op_f32(trunc(-170f))))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, 1f, 1f))), ~(~arg_1));
}

fn func_1(arg_0: u32) -> StorageBuffer {
    global3 = array<Struct_1, 17>();
    return func_4(5139u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, _wgslsmith_mult_u32(select(45465u, 25519u, true), max(u_input.d.x, 4294967295u)), arg_0), ~countOneBits(select(vec3<u32>(4294967295u, arg_0, 0u), u_input.d, vec3<bool>(global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(arg_0, 13u)], true)))), func_2(~(-1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(u_input.d.x);
}

