struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
    c: vec3<i32>,
    d: bool,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(43956u, 0u, 1u);

var<private> global1: bool;

var<private> global2: i32;

var<private> global3: array<Struct_4, 31>;

var<private> global4: array<vec2<f32>, 10> = array<vec2<f32>, 10>(vec2<f32>(-1784f, -1441f), vec2<f32>(732f, 373f), vec2<f32>(1150f, -917f), vec2<f32>(473f, 1000f), vec2<f32>(377f, -374f), vec2<f32>(1068f, -315f), vec2<f32>(-2024f, -702f), vec2<f32>(743f, 184f), vec2<f32>(181f, 780f), vec2<f32>(-200f, -1185f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec2<i32>) -> u32 {
    let var_0 = ~select(vec2<u32>(_wgslsmith_div_u32(4294967295u, global0.x), global0.x) ^ select(~vec2<u32>(18759u, global0.x), countOneBits(vec2<u32>(global0.x, arg_1.a.x)), vec2<bool>(true, true)), ~min(global0.xy << (arg_1.a % vec2<u32>(32u)), ~arg_1.a), select(vec2<bool>(1u != global0.x, true), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))));
    let var_1 = arg_0;
    var var_2 = Struct_3(vec4<i32>(1i, -2147483647i, -47986i, _wgslsmith_mod_i32(-71896i, (i32(-1i) * -27726i) >> ((global0.x >> (4294967295u % 32u)) % 32u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1 - arg_0), 404f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1)))) + vec3<f32>(_wgslsmith_f_op_f32(-1296f * _wgslsmith_f_op_f32(select(-1027f, var_1, true))), _wgslsmith_div_f32(909f, var_1), var_1)));
    return reverseBits(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, _wgslsmith_mult_u32(global0.x, 24965u), global0.x), ~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.a.x, var_0.x, 4294967295u), vec3<u32>(6037u, 1u, arg_1.a.x)))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: vec2<i32>) -> vec3<u32> {
    global4 = array<vec2<f32>, 10>();
    global2 = arg_2.x;
    global4 = array<vec2<f32>, 10>();
    var var_0 = global0.x;
    let var_1 = _wgslsmith_f_op_f32(-163f + 1655f);
    return ~vec3<u32>(~func_3(_wgslsmith_f_op_f32(min(var_1, var_1)), Struct_2(global0.zz), vec2<i32>(2147483647i, arg_1.x)), global0.x >> (4294967295u % 32u), 65271u);
}

fn func_1() -> Struct_2 {
    global0 = abs(func_2(min(vec3<i32>(~(-2147483647i), _wgslsmith_mod_i32(-3463i, 2147483647i), 1i), vec3<i32>(-1i, countOneBits(-1i), u_input.a << (72250u % 32u))), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -u_input.a), vec2<i32>(u_input.a, -2147483647i)), vec2<i32>(-countOneBits(-15319i), u_input.a >> (4294967295u % 32u))));
    global1 = true;
    var var_0 = -84875i;
    return Struct_2(~(~_wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(183u, 61739u)), ~global0.yy)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1454f, 1990f, -555f) - vec3<f32>(1631f, 745f, -556f)))))));
    global3 = array<Struct_4, 31>();
    global0 = vec3<u32>(global0.x, 1u, ~_wgslsmith_clamp_u32(~global0.x, firstTrailingBit(global0.x), ~global0.x) << (0u % 32u));
    let var_1 = 0i;
    var var_2 = _wgslsmith_add_u32(3121u, global0.x);
    let var_3 = func_1();
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-436f, -1000f)) - _wgslsmith_f_op_vec2_f32(abs(global4[_wgslsmith_index_u32(1u, 10u)])));
    global0 = vec3<u32>(~min(_wgslsmith_add_u32(global0.x, global0.x), ~17371u), var_3.a.x, var_3.a.x);
    global1 = all(!vec3<bool>(true, !all(vec4<bool>(false, false, true, false)), false));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(179f)) - 273f)), _wgslsmith_f_op_f32(f32(-1f) * -1197f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(215f, var_4.x)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_0.x))))), -653f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_4.x, -377f, var_4.x) + vec4<f32>(var_4.x, 615f, -395f, var_0.x))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-129f * var_0.x), 517f, _wgslsmith_f_op_f32(sign(-1557f)), _wgslsmith_f_op_f32(trunc(var_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, var_0.x, -730f, -1000f) - vec4<f32>(var_4.x, var_0.x, var_0.x, 242f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, -1000f, -497f, var_0.x), vec4<f32>(var_0.x, -587f, -1608f, 1586f)))), vec4<bool>(true, true, true, true))), !(_wgslsmith_f_op_f32(max(-175f, 808f)) > var_0.x))));
}

