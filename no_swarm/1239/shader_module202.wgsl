struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec4<i32>(2147483647i, -1i, -1i, i32(-2147483648)), -1933f), Struct_1(vec4<i32>(0i, -16100i, 2147483647i, -1i), -1157f), Struct_1(vec4<i32>(-22711i, 0i, -3004i, i32(-2147483648)), -523f), Struct_1(vec4<i32>(8230i, 42780i, 66523i, 13132i), 1265f), Struct_1(vec4<i32>(-24112i, 1i, 70593i, 0i), -1128f), Struct_1(vec4<i32>(0i, -33274i, 24583i, 1i), -391f), Struct_1(vec4<i32>(-1i, -29611i, i32(-2147483648), -1i), 276f), Struct_1(vec4<i32>(0i, i32(-2147483648), 0i, -69264i), -685f), Struct_1(vec4<i32>(-1381i, -18350i, 1i, 26719i), 1571f), Struct_1(vec4<i32>(-9652i, 1i, 2147483647i, -13207i), 745f), Struct_1(vec4<i32>(4035i, i32(-2147483648), 20969i, -19054i), 770f), Struct_1(vec4<i32>(3598i, 1i, i32(-2147483648), -1i), 331f), Struct_1(vec4<i32>(2995i, 1i, 33776i, 1i), -700f), Struct_1(vec4<i32>(-1i, -1i, 13951i, i32(-2147483648)), 1291f), Struct_1(vec4<i32>(i32(-2147483648), -27781i, -1i, 0i), 1121f), Struct_1(vec4<i32>(-58155i, -27973i, 1i, 0i), 1057f), Struct_1(vec4<i32>(50929i, -1i, 2147483647i, 33151i), -171f), Struct_1(vec4<i32>(i32(-2147483648), 31859i, -71633i, 2147483647i), 1079f), Struct_1(vec4<i32>(46897i, 15361i, 2147483647i, 2147483647i), 1247f), Struct_1(vec4<i32>(1i, 45036i, i32(-2147483648), -9695i), -471f), Struct_1(vec4<i32>(i32(-2147483648), 6599i, -1i, i32(-2147483648)), -1499f), Struct_1(vec4<i32>(0i, -23469i, -40055i, 2147483647i), 455f), Struct_1(vec4<i32>(i32(-2147483648), 74777i, -12036i, 1i), 985f), Struct_1(vec4<i32>(2147483647i, 0i, 37646i, i32(-2147483648)), 1000f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<bool>) -> bool {
    var var_0 = u_input.b;
    var var_1 = 45656u;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2275f, 2020f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -266f) * -2370f) + _wgslsmith_f_op_f32(round(-822f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(549f)))) - 149f));
    var_0 = abs(-15831i);
    var_2 = _wgslsmith_f_op_f32(782f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1714f)) - -579f));
    return u_input.a > (1u | ~(u_input.a << (0u % 32u)));
}

fn func_2() -> vec4<u32> {
    var var_0 = false;
    var_0 = false;
    global0 = array<Struct_1, 24>();
    var var_1 = !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, func_3(vec3<bool>(true, true, false), vec2<bool>(false, true)), true, true)), vec4<bool>(true, true, _wgslsmith_sub_u32(1u, u_input.a) > u_input.a, !any(vec3<bool>(false, false, false))), vec4<bool>(true, true, true, true));
    var_0 = !(reverseBits(1u) == (((u_input.a << (0u % 32u)) & (5877u >> (u_input.a % 32u))) << (1u % 32u)));
    return firstTrailingBit(vec4<u32>(select(_wgslsmith_add_u32(~78112u, 0u), 1u, false), ~((u_input.a & 4294967295u) << (_wgslsmith_clamp_u32(90518u, 1u, 18274u) % 32u)), 36407u, ~31285u));
}

fn func_1() -> Struct_2 {
    global0 = array<Struct_1, 24>();
    var var_0 = 18796u;
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-816f * _wgslsmith_f_op_f32(f32(-1f) * -572f))));
    let var_2 = Struct_2(~(~u_input.a));
    var var_3 = abs(firstTrailingBit(var_2.a) << (_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 1u, var_2.a, u_input.a), vec4<u32>(var_2.a, 60646u, 0u, 1u)), func_2()), 30410u) % 32u));
    return Struct_2(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(88556u, 24u)];
    let var_1 = func_1();
    let var_2 = func_1();
    global0 = array<Struct_1, 24>();
    var var_3 = var_1;
    global0 = array<Struct_1, 24>();
    global0 = array<Struct_1, 24>();
    var var_4 = true && all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true))));
    var var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1750f, 1782f, -287f, _wgslsmith_f_op_f32(f32(-1f) * -352f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.b - -381f), var_0.b, _wgslsmith_f_op_f32(var_0.b + 802f), var_0.b) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1198f), -379f, 1383f, var_0.b)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.b, 911f, var_0.b, 413f)))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1055f, var_0.b, var_0.b, -596f), _wgslsmith_div_vec4_f32(vec4<f32>(-548f, 171f, var_0.b, var_0.b), vec4<f32>(var_0.b, 826f, -1841f, 836f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(var_0.a.ywy, var_0.a.xxw), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.b, 1483f, var_0.b)));
}

