struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 19> = array<vec3<f32>, 19>(vec3<f32>(-228f, -1249f, -1475f), vec3<f32>(-1183f, 269f, -1040f), vec3<f32>(-938f, -1879f, -817f), vec3<f32>(-693f, 2400f, 1783f), vec3<f32>(-1374f, 1158f, -672f), vec3<f32>(-204f, 381f, 1000f), vec3<f32>(-261f, -1000f, -450f), vec3<f32>(1693f, 422f, -1000f), vec3<f32>(476f, 1245f, 648f), vec3<f32>(-765f, 1000f, -344f), vec3<f32>(-315f, -317f, -779f), vec3<f32>(-592f, 547f, 603f), vec3<f32>(-145f, -182f, 903f), vec3<f32>(-1050f, -1709f, -1142f), vec3<f32>(1105f, -1541f, -139f), vec3<f32>(-1191f, 629f, 2250f), vec3<f32>(359f, -792f, 1000f), vec3<f32>(319f, -257f, -1394f), vec3<f32>(-1423f, 316f, 887f));

var<private> global1: Struct_3 = Struct_3(Struct_1(3169u), 8534i, Struct_2(1u, i32(-2147483648), vec3<u32>(1u, 4294967295u, 40152u), Struct_1(51368u)));

var<private> global2: array<vec2<u32>, 9>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = !(!(_wgslsmith_f_op_f32(round(1364f)) == _wgslsmith_div_f32(_wgslsmith_div_f32(-1190f, -826f), _wgslsmith_f_op_f32(floor(2159f)))));
    let var_1 = -1i;
    let var_2 = vec2<bool>(all(!select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), any(vec4<bool>(false, true, true, false)))), !any(vec4<bool>(true, true, all(vec2<bool>(true, false)), true)));
    global2 = array<vec2<u32>, 9>();
    let var_3 = ~(~0u);
    return 1i;
}

fn func_2() -> i32 {
    let var_0 = global1.a;
    var var_1 = -415f;
    let var_2 = global1.c.c.zx;
    global0 = array<vec3<f32>, 19>();
    var var_3 = Struct_3(global1.c.d, ~(~_wgslsmith_sub_i32(7395i, func_3(Struct_2(0u, global1.b, global1.c.c, Struct_1(u_input.b))))), Struct_2(~(~9511u >> (var_2.x % 32u)), ~_wgslsmith_div_i32(~global1.b, -2147483647i), vec3<u32>(_wgslsmith_sub_u32(u_input.b, var_2.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 1u, 1u, global1.c.d.a), vec4<u32>(u_input.b, u_input.b, 1u, u_input.b)) & 4294967295u, u_input.b), global1.a));
    return ~var_3.b;
}

fn func_1(arg_0: f32, arg_1: vec3<f32>) -> Struct_2 {
    global2 = array<vec2<u32>, 9>();
    let var_0 = Struct_2(4294967295u, _wgslsmith_mod_i32(func_2(), -reverseBits(u_input.a.x)), ~(max(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 4988u, 994u), global1.c.c), max(vec3<u32>(25716u, u_input.b, u_input.b), global1.c.c)) >> (~vec3<u32>(51005u, 1u, 0u) % vec3<u32>(32u))), Struct_1(global1.c.d.a));
    global0 = array<vec3<f32>, 19>();
    return global1.c;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = arg_1.x;
    var var_1 = global0[_wgslsmith_index_u32(min(~arg_2.a, ~1u), 19u)];
    let var_2 = true;
    var var_3 = ~(~_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(43601u, arg_0.a, arg_2.a, u_input.b), vec4<u32>(u_input.b, arg_2.a, 9500u, 34105u), vec4<u32>(global1.c.d.a, 90573u, 1u, 15565u)) >> (firstTrailingBit(vec4<u32>(global1.c.c.x, arg_2.a, 1u, global1.c.c.x)) % vec4<u32>(32u)), ~abs(vec4<u32>(14858u, u_input.b, arg_0.c.x, 1u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0.a, 27441u, 0u, 0u), vec4<u32>(arg_0.d.a, arg_0.d.a, 83135u, global1.a.a) & vec4<u32>(23639u, 0u, 0u, u_input.b))));
    let var_4 = 0i;
    return -vec4<i32>(abs(_wgslsmith_sub_i32(-34941i, global1.b) | arg_0.b), ~_wgslsmith_mult_i32(max(arg_0.b, arg_0.b), 15347i), min(-(~u_input.a.x), _wgslsmith_mult_i32(-u_input.a.x, firstLeadingBit(u_input.a.x))), var_4);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a;
    var var_1 = ~(~func_4(func_1(2074f, vec3<f32>(663f, -1610f, 665f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(917f, -330f, 1218f))), Struct_1(4294967295u)) & firstTrailingBit(vec4<i32>(-1i) * -vec4<i32>(global1.b, u_input.a.x, u_input.a.x, 1i)));
    var var_2 = Struct_1(global1.a.a);
    global2 = array<vec2<u32>, 9>();
    var var_3 = vec3<i32>(9118i, var_1.x, -2147483647i);
    global0 = array<vec3<f32>, 19>();
    var var_4 = vec4<bool>(true, false, false, any(select(vec3<bool>(select(true, true, true), true, true), vec3<bool>(true, true, true), false)));
    let var_5 = global1.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.zy, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-843f, _wgslsmith_f_op_f32(round(235f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -311f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-587f * -534f), _wgslsmith_f_op_f32(f32(-1f) * -1534f))))), countOneBits(~0i), var_1.zx);
}

