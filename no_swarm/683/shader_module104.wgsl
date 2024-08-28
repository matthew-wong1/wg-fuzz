struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 75144u;

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(0u, -331f), Struct_1(55587u, 1000f), Struct_1(4294967295u, 303f), Struct_1(35116u, 1000f), Struct_1(1u, -1264f), Struct_1(44628u, -1898f), Struct_1(11442u, -1256f), Struct_1(12078u, -297f));

var<private> global2: vec4<bool>;

var<private> global3: array<vec3<bool>, 7>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3) -> i32 {
    let var_0 = vec2<bool>(global2.x, global2.x);
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1467f, 1045f, arg_0.a.x)))) + arg_0.a));
    var_1 = arg_0;
    var var_2 = ~firstLeadingBit(~countOneBits(~u_input.c.x));
    let var_3 = Struct_2(_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a << (~u_input.c.x % 32u), min(_wgslsmith_sub_u32(48839u, u_input.c.x), u_input.a ^ 1u)), ~u_input.b.x));
    return ~1i;
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    var var_0 = vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(func_3(Struct_3(vec3<f32>(748f, -1000f, -209f))) & min(26091i, 18513i), _wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, -2147483647i), firstLeadingBit(vec2<i32>(23037i, 75639i)))), -_wgslsmith_div_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -31105i), vec2<i32>(1i, 1i), vec2<i32>(11156i, 2147483647i)))), func_3(Struct_3(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-900f, -244f, -701f))))), -469i);
    let var_1 = Struct_1(reverseBits(~14238u), -406f);
    var var_2 = true;
    global2 = !vec4<bool>(arg_0.x < 4294967295u, any(select(global2.zy, vec2<bool>(false, global2.x), var_1.b != 100f)), false, global2.x);
    let var_3 = vec3<f32>(1f, 1f, 1f);
    return 1410f;
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(u_input.b)) * -1308f)), 1f, _wgslsmith_f_op_f32(-771f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-369f)), _wgslsmith_f_op_f32(min(275f, 518f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-165f * -539f))), vec4<f32>(_wgslsmith_f_op_f32(ceil(315f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1122f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -614f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-479f)), _wgslsmith_f_op_f32(min(-127f, 1627f))), false)), -676f));
    var var_1 = 2147483647i;
    let var_2 = Struct_2(select(~min(~u_input.b.x, 4294967295u), 4294967295u, true));
    return abs(-6510i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.zxz;
    global2 = vec4<bool>(true, global2.x, abs(~(-2147483647i)) <= func_1(), any(global2.www));
    var var_1 = ~(~_wgslsmith_mult_i32(-12524i, _wgslsmith_dot_vec2_i32(vec2<i32>(13178i, -2147483647i), vec2<i32>(2147483647i, 3594i)))) & ~(i32(-1i) * -41840i);
    var var_2 = Struct_1(var_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -303f) - _wgslsmith_f_op_f32(604f + -329f)) * _wgslsmith_f_op_f32(-1f)), 1515f)));
    let var_3 = _wgslsmith_sub_vec2_u32(min(vec2<u32>(firstLeadingBit(u_input.a), 36479u), u_input.c), countOneBits(var_0.yx));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_clamp_u32(var_3.x | 0u, u_input.a << (0u % 32u), max(1u >> (var_0.x % 32u), _wgslsmith_mod_u32(var_0.x, var_3.x))), ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(var_0.x, var_2.a, 0u), u_input.b.yxw, global2.x), vec3<u32>(var_2.a, var_2.a, 4294967295u))), _wgslsmith_add_vec4_i32(abs(reverseBits(vec4<i32>(-2255i, 0i, 57428i, -1i))), ~abs(vec4<i32>(-2364i, 48875i, 4741i, -1i))), vec2<i32>(1i, -19784i));
}

