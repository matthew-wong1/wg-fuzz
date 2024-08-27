struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 16>;

var<private> global2: u32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: bool) -> i32 {
    let var_0 = true;
    global1 = array<i32, 16>();
    global0 = Struct_1(global0.a, true);
    var var_1 = var_0;
    var_1 = false;
    return 867i;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: i32) -> vec3<bool> {
    global2 = 0u;
    global1 = array<i32, 16>();
    let var_0 = Struct_1(~(_wgslsmith_mod_vec4_u32(global0.a >> (vec4<u32>(arg_1.a.x, arg_1.a.x, 0u, global0.a.x) % vec4<u32>(32u)), ~vec4<u32>(5255u, 4294967295u, 0u, arg_1.a.x)) >> (~abs(vec4<u32>(arg_1.a.x, 1u, 0u, arg_1.a.x)) % vec4<u32>(32u))), arg_1.b);
    let var_1 = Struct_1(~global0.a, true);
    var var_2 = Struct_1(~_wgslsmith_sub_vec4_u32(var_1.a, vec4<u32>(4294967295u, var_1.a.x, var_0.a.x, arg_1.a.x) ^ var_0.a), var_0.b);
    return vec3<bool>(var_0.a.x >= 4294967295u, func_3(-u_input.a, all(vec2<bool>(false, var_0.b))) >= ~arg_2, false);
}

fn func_1(arg_0: vec2<i32>) -> vec2<f32> {
    var var_0 = ~(~reverseBits(max(_wgslsmith_mod_u32(26368u, 1u), global0.a.x >> (16077u % 32u))));
    let var_1 = select(vec3<bool>((global0.b && global0.b) & true, global0.b, true), select(select(!(!vec3<bool>(false, global0.b, true)), !vec3<bool>(true, global0.b, global0.b), true), !(!(!vec3<bool>(true, global0.b, true))), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1290f, -943f, 2340f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-543f, 3237f, 1230f, -576f)))), Struct_1(~global0.a, true), ~reverseBits(arg_0.x))), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1045f, -2236f, -1416f, -1280f))), Struct_1(firstTrailingBit(vec4<u32>(32205u, global0.a.x, global0.a.x, global0.a.x)), global0.b), -firstTrailingBit(global1[_wgslsmith_index_u32(global0.a.x, 16u)])).x || true);
    global2 = ~(1u ^ _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(40985u, global0.a.x), abs(vec2<u32>(global0.a.x, global0.a.x))), 4294967295u));
    global2 = ~1u;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(623f, 1061f), _wgslsmith_f_op_f32(abs(443f)), 2271f, 1f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-546f, -883f, 316f, -1941f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-2728f, -1226f, 529f, -841f) + vec4<f32>(-116f, -896f, 197f, 141f)))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-516f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(350f)) - _wgslsmith_f_op_f32(sign(1543f))), _wgslsmith_f_op_f32(f32(-1f) * -714f), _wgslsmith_f_op_f32(102f + -376f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(408f, -817f, -609f, -508f), vec4<f32>(-1000f, -1124f, 917f, -1000f)), vec4<f32>(-1879f, -1085f, -918f, 1009f))))));
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_2.xy), vec2<f32>(-1196f, var_2.x)));
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    global1 = array<i32, 16>();
    let var_0 = ~vec3<u32>(arg_0, global0.a.x, abs(0u));
    var var_1 = Struct_1(arg_2.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + 436f) * _wgslsmith_f_op_f32(max(arg_1.x, arg_1.x))))) != -814f);
    let var_2 = arg_0;
    var var_3 = 92526u;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(global0.a.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1955f, -1064f) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, -579f), vec2<f32>(-918f, -734f)))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-205f, -434f)), _wgslsmith_f_op_vec2_f32(func_1(u_input.b.xx))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1278f), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1(u_input.c)).x))), Struct_1(min(global0.a, vec4<u32>(firstLeadingBit(global0.a.x), abs(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0.a.x, 1u), vec3<u32>(global0.a.x, global0.a.x, global0.a.x)), countOneBits(global0.a.x))), all(vec2<bool>(true, true))));
    var var_1 = !any(!select(!vec2<bool>(var_0.b, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(global0.b, var_0.b), vec2<bool>(var_0.b, var_0.b), vec2<bool>(false, global0.b))));
    var var_2 = func_4(_wgslsmith_dot_vec4_u32(var_0.a, _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~global0.a, ~vec4<u32>(1u, global0.a.x, var_0.a.x, var_0.a.x)), global0.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_1(u_input.c)).x + _wgslsmith_f_op_f32(f32(-1f) * -140f)), 575f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 166f))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-502f, 431f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(2299f, -141f) + vec2<f32>(-312f, 507f)))))), Struct_1(~(vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x) ^ vec4<u32>(110136u, 0u, 1u, 70185u)) << (_wgslsmith_sub_vec4_u32(var_0.a, ~vec4<u32>(global0.a.x, var_0.a.x, global0.a.x, 30984u)) % vec4<u32>(32u)), !all(!vec2<bool>(false, var_0.b))));
    let var_3 = true;
    let var_4 = 0i;
    let var_5 = Struct_1(~var_0.a, !func_4(4294967295u, vec2<f32>(_wgslsmith_f_op_f32(1000f + -798f), _wgslsmith_f_op_f32(f32(-1f) * -177f)), func_4(0u, vec2<f32>(560f, -159f), Struct_1(var_0.a, var_3))).b);
    global2 = 1u;
    var_1 = false || var_5.b;
    global1 = array<i32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(1f, ~(-1i));
}

