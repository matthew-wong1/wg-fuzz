struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 13>;

var<private> global1: array<bool, 5>;

var<private> global2: array<vec4<u32>, 30> = array<vec4<u32>, 30>(vec4<u32>(14200u, 4294967295u, 1u, 4294967295u), vec4<u32>(15690u, 0u, 1u, 1u), vec4<u32>(8228u, 41201u, 1u, 4294967295u), vec4<u32>(0u, 0u, 1u, 1u), vec4<u32>(12926u, 48147u, 4294967295u, 4294967295u), vec4<u32>(0u, 0u, 20056u, 37953u), vec4<u32>(0u, 15745u, 4294967295u, 31234u), vec4<u32>(4294967295u, 63579u, 10357u, 1u), vec4<u32>(27807u, 25773u, 26773u, 4294967295u), vec4<u32>(114765u, 85587u, 20801u, 4294967295u), vec4<u32>(21529u, 14865u, 52794u, 4294967295u), vec4<u32>(4294967295u, 987u, 24048u, 4294967295u), vec4<u32>(32265u, 4294967295u, 20403u, 17555u), vec4<u32>(1u, 0u, 0u, 1u), vec4<u32>(1u, 56067u, 1u, 0u), vec4<u32>(53055u, 4294967295u, 1u, 0u), vec4<u32>(4294967295u, 4294967295u, 1u, 0u), vec4<u32>(4294967295u, 1u, 1u, 1994u), vec4<u32>(0u, 10059u, 0u, 4194u), vec4<u32>(58390u, 1u, 22604u, 2623u), vec4<u32>(1u, 1u, 37937u, 0u), vec4<u32>(1u, 0u, 0u, 35997u), vec4<u32>(32982u, 1u, 0u, 0u), vec4<u32>(21020u, 80135u, 104785u, 70017u), vec4<u32>(0u, 20902u, 45374u, 4294967295u), vec4<u32>(1u, 0u, 43066u, 4294967295u), vec4<u32>(0u, 54129u, 1u, 1u), vec4<u32>(54157u, 73267u, 0u, 4294967295u), vec4<u32>(1868u, 47473u, 1u, 4294967295u), vec4<u32>(4294967295u, 13364u, 0u, 4294967295u));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    var var_0 = Struct_1(1u);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1996f + 1f), _wgslsmith_f_op_f32(f32(-1f) * -824f))) * vec2<f32>(899f, 725f));
    return var_1.x;
}

fn func_1() -> i32 {
    var var_0 = Struct_1(17570u);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(535f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(891f + 1095f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2046f), -1088f))) - vec3<f32>(_wgslsmith_f_op_f32(func_2(vec4<i32>(33893i, 2147483647i, 24233i, -58288i))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-529f, -1216f)), _wgslsmith_f_op_f32(f32(-1f) * -1307f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1153f - -1331f) - -765f))));
    global1 = array<bool, 5>();
    global0 = array<vec4<bool>, 13>();
    global2 = array<vec4<u32>, 30>();
    return (-(0i >> ((4294967295u >> (u_input.b % 32u)) % 32u)) & max(-firstLeadingBit(31219i), _wgslsmith_div_i32(_wgslsmith_clamp_i32(0i, -1i, 2147483647i), 2147483647i >> (u_input.b % 32u)))) | 0i;
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: i32) -> bool {
    global1 = array<bool, 5>();
    var var_0 = arg_3;
    let var_1 = _wgslsmith_f_op_f32(376f - _wgslsmith_f_op_f32(-189f + 1000f));
    global0 = array<vec4<bool>, 13>();
    global2 = array<vec4<u32>, 30>();
    return any(!vec3<bool>(arg_2.x == _wgslsmith_clamp_i32(-3946i, arg_3, -29477i), any(!global0[_wgslsmith_index_u32(arg_1.a, 13u)]), _wgslsmith_clamp_i32(0i, -59574i, arg_2.x) >= ~arg_3));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<u32>, 30>();
    let var_0 = 53560i;
    let var_1 = vec2<bool>(global1[_wgslsmith_index_u32(82871u, 5u)], false);
    var var_2 = Struct_1(~_wgslsmith_div_u32(~38125u, select(u_input.b >> (u_input.a % 32u), ~30295u, true)));
    let var_3 = select(~(~(-(vec3<i32>(-2147483647i, var_0, var_0) << (vec3<u32>(u_input.b, var_2.a, u_input.a) % vec3<u32>(32u))))), vec3<i32>(_wgslsmith_clamp_i32(0i, 19149i, min(var_0, -var_0)), -16992i, _wgslsmith_sub_i32(var_0, countOneBits(func_1()))), all(vec3<bool>(select(true, func_3(30108i, Struct_1(u_input.a), vec4<i32>(var_0, -1i, var_0, -22277i), 3368i), true), false, func_3(var_0, Struct_1(0u), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0, var_0, var_0, var_0), vec4<i32>(var_0, -1i, var_0, -1i)), 1i))));
    var_2 = Struct_1(_wgslsmith_add_u32(~firstTrailingBit(15647u), ~u_input.b));
    var var_4 = -1703f;
    var var_5 = Struct_1(1u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(15435i, 1i << (_wgslsmith_mod_u32(~u_input.a, ~u_input.a) % 32u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1388f)))))));
}

