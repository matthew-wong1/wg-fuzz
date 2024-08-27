struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: bool,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
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

var<private> global0: array<bool, 24>;

var<private> global1: array<u32, 17> = array<u32, 17>(0u, 0u, 0u, 1u, 79533u, 0u, 8788u, 16256u, 7940u, 123187u, 0u, 122u, 53817u, 0u, 48083u, 72069u, 5467u);

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false));

var<private> global4: vec3<u32> = vec3<u32>(0u, 1u, 49831u);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec3<f32>, arg_3: i32) -> u32 {
    var var_0 = 1203u;
    let var_1 = _wgslsmith_div_vec3_i32(abs(firstTrailingBit(arg_0.b.wwx)), arg_0.b.yyw);
    global3 = array<vec4<bool>, 11>();
    let var_2 = arg_0.d;
    let var_3 = arg_0;
    return arg_1.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: f32, arg_3: u32) -> u32 {
    return _wgslsmith_dot_vec2_u32(vec2<u32>(~7292u, func_3(Struct_2(any(arg_0.xw), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 4858i, u_input.a, 7808i), vec4<i32>(u_input.a, u_input.a, 1i, u_input.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, -270f)), Struct_1(arg_0.x, arg_1.yxw, true, -509f, vec3<u32>(global4.x, 1u, arg_3))), ~vec4<u32>(1u, global4.x, 53216u, global4.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, -670f, 1199f) * arg_1.yxx), reverseBits(u_input.a >> (28391u % 32u)))), global4.yz);
}

fn func_1(arg_0: f32) -> f32 {
    global0 = array<bool, 24>();
    var var_0 = ~vec2<u32>(global4.x, ~u_input.b);
    let var_1 = abs(~(vec2<i32>(max(-30412i, u_input.a), _wgslsmith_mod_i32(2147483647i, 48837i)) ^ vec2<i32>(_wgslsmith_mod_i32(u_input.a, u_input.a), 2147483647i)));
    let var_2 = vec3<u32>(func_2(!global3[_wgslsmith_index_u32(global4.x | ~global1[_wgslsmith_index_u32(var_0.x, 17u)], 11u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(587f, -353f, -127f, -403f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1655f, 1434f, 749f, 1000f) * vec4<f32>(352f, 318f, arg_0, arg_0)))), -217f, 53448u), _wgslsmith_add_u32(4294967295u, u_input.b | 43722u), _wgslsmith_dot_vec2_u32(abs(global4.zx), max(~min(vec2<u32>(13244u, 1u), global4.xz), ~_wgslsmith_mult_vec2_u32(vec2<u32>(3826u, var_0.x), global4.yz))));
    global3 = array<vec4<bool>, 11>();
    return -1215f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 24>();
    global3 = array<vec4<bool>, 11>();
    let var_0 = 1i;
    global0 = array<bool, 24>();
    var var_1 = u_input.a;
    let var_2 = countOneBits(abs(vec3<u32>(_wgslsmith_add_u32(1u, 30122u), 1u, reverseBits(58899u)))) >> (~(~_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.b, 1u, 2352u), ~vec3<u32>(u_input.b, 27223u, 0u))) % vec3<u32>(32u));
    let var_3 = Struct_2(true, vec4<i32>(abs(u_input.a & ~(-1i)), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-15796i, -15125i, -2147483647i, 1i) | vec4<i32>(-2147483647i, var_0, 33210i, var_0), vec4<i32>(var_0, -1i, 27927i, 52387i) >> (vec4<u32>(0u, u_input.b, global1[_wgslsmith_index_u32(5472u, 17u)], 4294967295u) % vec4<u32>(32u))), ~(-vec4<i32>(var_0, 1i, u_input.a, u_input.a))), 0i, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, -35502i, u_input.a, -51159i), vec4<i32>(45274i, _wgslsmith_mod_i32(2147483647i, u_input.a), u_input.a, u_input.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-712f, 965f, -1573f) + vec3<f32>(1128f, 502f, 814f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(224f, -527f, 358f), vec3<f32>(928f, -782f, -1529f), global2.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(808f, 869f, -1165f) * _wgslsmith_div_vec3_f32(vec3<f32>(736f, -965f, -656f), vec3<f32>(-952f, -323f, 1395f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1695f, _wgslsmith_div_f32(1678f, 1651f), _wgslsmith_f_op_f32(f32(-1f) * -603f)) + vec3<f32>(433f, _wgslsmith_f_op_f32(abs(736f)), _wgslsmith_f_op_f32(f32(-1f) * -2114f)))), Struct_1(!(var_2.x != ~var_2.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 721f, 1219f)) - vec3<f32>(930f, 751f, -1141f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1529f, 260f, -1044f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1147f, 1081f, -1082f))), !global2.x)), false, _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(340f * 202f)))), ~max(firstLeadingBit(vec3<u32>(global4.x, global4.x, global1[_wgslsmith_index_u32(global4.x, 17u)])), vec3<u32>(0u, u_input.b, 4294967295u))));
    var var_4 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(select(vec4<u32>(global4.x, global4.x, global1[_wgslsmith_index_u32(43038u, 17u)], global4.x) >> (vec4<u32>(0u, global4.x, global1[_wgslsmith_index_u32(0u, 17u)], var_3.d.e.x) % vec4<u32>(32u)), vec4<u32>(u_input.b, global1[_wgslsmith_index_u32(0u, 17u)], 1u, global4.x), select(vec4<bool>(global0[_wgslsmith_index_u32(57029u, 24u)], var_3.d.a, true, var_3.a), global3[_wgslsmith_index_u32(var_3.d.e.x, 11u)], global2.x)) >> (max(vec4<u32>(63000u, 40337u, 0u, global4.x), vec4<u32>(1u, var_3.d.e.x, global4.x, u_input.b) >> (vec4<u32>(13387u, global1[_wgslsmith_index_u32(1u, 17u)], 18442u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)), ~(~(~vec4<u32>(var_3.d.e.x, var_2.x, global4.x, 28194u)))));
}

