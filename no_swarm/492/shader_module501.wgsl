struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 8>;

var<private> global1: bool = false;

var<private> global2: array<i32, 7>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_2) -> u32 {
    global2 = array<i32, 7>();
    let var_0 = Struct_1(min(vec4<u32>(13417u, arg_0.a.x, _wgslsmith_dot_vec3_u32(arg_0.a.xxw, arg_0.a.yyw), arg_0.a.x), vec4<u32>(min(4294967295u, 9166u), max(arg_0.a.x, arg_0.a.x), _wgslsmith_mult_u32(51307u, 37811u), 1u)) & (arg_2.a.a << (vec4<u32>(50895u, _wgslsmith_clamp_u32(49632u, arg_0.a.x, arg_0.a.x), _wgslsmith_div_u32(arg_0.a.x, arg_0.a.x), _wgslsmith_add_u32(21857u, 27782u)) % vec4<u32>(32u))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -305f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(257f + -199f), -179f))), _wgslsmith_f_op_f32(sign(-281f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-181f, 528f)) * _wgslsmith_f_op_f32(1f - -178f)));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_div_f32(var_1.x, 1622f))))))));
    var var_3 = _wgslsmith_mod_vec3_i32(-select(abs(-vec3<i32>(global2[_wgslsmith_index_u32(arg_2.a.a.x, 7u)], global2[_wgslsmith_index_u32(arg_0.a.x, 7u)], 0i)), select(vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), vec3<i32>(42595i, 0i, global2[_wgslsmith_index_u32(arg_2.a.a.x, 7u)]), all(arg_1.zy)), _wgslsmith_sub_i32(-1i, u_input.a.x) >= -42791i), vec3<i32>(~(~arg_2.b), arg_2.b, ~(~_wgslsmith_div_i32(global2[_wgslsmith_index_u32(arg_2.a.a.x, 7u)], global2[_wgslsmith_index_u32(arg_2.c.x, 7u)]))));
    return 1u;
}

fn func_3(arg_0: u32, arg_1: vec2<i32>) -> Struct_1 {
    global0 = array<vec2<u32>, 8>();
    let var_0 = Struct_3(Struct_1(~(~countOneBits(vec4<u32>(arg_0, arg_0, arg_0, arg_0)))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1657f) - _wgslsmith_f_op_f32(max(-1037f, 260f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(923f, _wgslsmith_f_op_f32(trunc(-1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-248f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(884f * -230f) - -1858f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(193f - -644f)))), 2862f), ~_wgslsmith_mult_i32(arg_1.x, 0i) & 1i, Struct_2(Struct_1(vec4<u32>(arg_0, ~arg_0, 1u, 4294967295u)), reverseBits(2147483647i), ~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, 1u, arg_0, arg_0), vec4<u32>(arg_0, arg_0, arg_0, 0u)), vec4<u32>(30744u, arg_0, 52104u, 0u))), 1u);
    var var_1 = -856f;
    let var_2 = !select(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))), vec2<bool>(all(vec4<bool>(true, true, true, true)), select(true, all(vec4<bool>(false, false, true, false)), any(vec4<bool>(false, true, true, false)))), vec2<bool>(true, true));
    var var_3 = Struct_1(vec4<u32>(arg_0, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(abs(var_0.a.a), ~var_0.d.c), var_0.a.a.x), var_0.a.a.x, _wgslsmith_sub_u32(var_0.d.a.a.x, ~(~6062u))));
    return var_0.a;
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_2 {
    global2 = array<i32, 7>();
    let var_0 = func_3(_wgslsmith_div_u32(~arg_1 & (arg_1 & 0u), func_2(Struct_1(vec4<u32>(arg_1, arg_1, arg_1, 38152u)), !vec3<bool>(arg_0, arg_0, false), Struct_2(Struct_1(vec4<u32>(arg_1, arg_1, 6648u, arg_1)), u_input.a.x, vec4<u32>(arg_1, 4294967295u, arg_1, 41801u)))) >> (22008u % 32u), u_input.a);
    let var_1 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~var_0.a << (var_0.a % vec4<u32>(32u)), abs(var_0.a)), ~_wgslsmith_mod_vec4_u32(firstTrailingBit(var_0.a), var_0.a));
    let var_2 = arg_0;
    global0 = array<vec2<u32>, 8>();
    return Struct_2(var_0, 0i, _wgslsmith_div_vec4_u32(vec4<u32>(~arg_1, 1u, _wgslsmith_sub_u32(var_0.a.x, var_1), firstTrailingBit(var_0.a.x)), abs(var_0.a) << ((var_0.a >> (vec4<u32>(1u, 18100u, var_1, var_1) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ max(min(~var_0.a, var_0.a & vec4<u32>(4294967295u, var_0.a.x, var_1, var_1)), var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1((global2[_wgslsmith_index_u32(1u, 7u)] < u_input.a.x) && false, 0u);
    var var_1 = Struct_3(var_0.a, vec4<f32>(434f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -569f) + -255f), 1f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1698f)), _wgslsmith_f_op_f32(1118f - 470f), true)))), 872f), 11546i, var_0, var_0.c.x);
    global0 = array<vec2<u32>, 8>();
    global2 = array<i32, 7>();
    var var_2 = Struct_2(func_1(any(vec2<bool>(true, true)), ~0u >> (0u % 32u)).a, global2[_wgslsmith_index_u32(~var_0.a.a.x, 7u)], min(~(~(vec4<u32>(var_0.c.x, 16482u, 30407u, 16564u) & var_0.a.a)), ~(~vec4<u32>(var_1.d.a.a.x, 1u, 4294967295u, var_1.d.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(30069u);
}

