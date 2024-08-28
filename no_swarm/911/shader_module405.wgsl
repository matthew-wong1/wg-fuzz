struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec3<i32> = vec3<i32>(-30744i, i32(-2147483648), 21964i);

var<private> global2: vec3<u32>;

var<private> global3: array<vec4<f32>, 26> = array<vec4<f32>, 26>(vec4<f32>(229f, -290f, 895f, -928f), vec4<f32>(-584f, 1000f, 663f, -872f), vec4<f32>(446f, 1960f, -953f, 727f), vec4<f32>(-785f, 512f, 1479f, 1000f), vec4<f32>(370f, 814f, 424f, 642f), vec4<f32>(-3237f, 480f, -1237f, -117f), vec4<f32>(-419f, -1549f, -1322f, 1000f), vec4<f32>(-1017f, 527f, -982f, 815f), vec4<f32>(-1200f, -1068f, 194f, -463f), vec4<f32>(1289f, -377f, 1675f, -725f), vec4<f32>(-856f, -472f, 583f, 294f), vec4<f32>(191f, -426f, 533f, 555f), vec4<f32>(-584f, 1131f, -1443f, 1788f), vec4<f32>(-334f, -1700f, -1047f, -1605f), vec4<f32>(1804f, -2090f, 195f, 108f), vec4<f32>(-524f, -412f, 323f, -569f), vec4<f32>(-2293f, -611f, 222f, 2584f), vec4<f32>(-131f, 339f, 997f, 1027f), vec4<f32>(647f, -286f, 1000f, -1746f), vec4<f32>(1244f, 1673f, 1068f, 405f), vec4<f32>(-1118f, -1418f, -1677f, -3002f), vec4<f32>(-877f, 117f, 322f, -1994f), vec4<f32>(701f, -551f, 182f, -360f), vec4<f32>(2021f, 1660f, 536f, -786f), vec4<f32>(-601f, -675f, -2336f, -212f), vec4<f32>(1230f, 437f, -786f, -193f));

var<private> global4: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(1u, 4294967295u), vec2<u32>(46249u, 4294967295u), vec2<u32>(1u, 59023u), vec2<u32>(1u, 0u), vec2<u32>(0u, 53362u), vec2<u32>(0u, 0u), vec2<u32>(0u, 8723u), vec2<u32>(4294967295u, 1u), vec2<u32>(74071u, 34465u), vec2<u32>(9920u, 42215u), vec2<u32>(22928u, 0u), vec2<u32>(33094u, 4294967295u), vec2<u32>(101888u, 173u), vec2<u32>(33397u, 48724u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 30180u), vec2<u32>(1u, 4294967295u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn func_1(arg_0: u32) -> bool {
    return true;
}

fn func_3() -> u32 {
    let var_0 = Struct_3(-581f, Struct_2(vec3<u32>(0u, global2.x, _wgslsmith_sub_u32(u_input.a, min(78931u, global2.x)))));
    var var_1 = var_0.b.a.x;
    let var_2 = u_input.a;
    var var_3 = var_2;
    let var_4 = var_0.b;
    return ~firstTrailingBit(~(~u_input.a)) | _wgslsmith_dot_vec2_u32(vec2<u32>(1u >> (var_2 % 32u), var_4.a.x), abs(vec2<u32>(firstLeadingBit(0u), min(u_input.a, global2.x))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<u32>) -> Struct_1 {
    global4 = array<vec2<u32>, 17>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -323f))), Struct_2(vec3<u32>(global2.x, 1u, _wgslsmith_div_u32(40996u, 65442u) | global2.x)));
    global4 = array<vec2<u32>, 17>();
    global0 = _wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(var_0.b.a.x, 26u)]);
    var var_1 = _wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(arg_1.x, 26u)]);
    return Struct_1(vec3<bool>(any(!arg_0.zx), true, func_1(max(func_3(), 1u))), vec3<u32>(arg_1.x, ~4294967295u, abs(~(~var_0.b.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x + -935f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(909f, var_0.a), -629f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + global0.x), -1487f), -1186f)), ~(~u_input.a), -689f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(global0.x, Struct_2(~vec3<u32>(0u, u_input.a, 1u)));
    let var_1 = func_2(!vec3<bool>(func_1(17550u) | true, true, !(global2.x > 0u)), ~firstTrailingBit(reverseBits(vec4<u32>(0u, 77262u, 3918u, var_0.b.a.x))));
    let var_2 = vec3<u32>(~u_input.a, min(global2.x, ~(~4294967295u)), global2.x);
    global2 = var_1.b;
    let var_3 = !vec4<bool>(all(vec2<bool>(var_1.a.x, var_1.a.x)), var_1.a.x, !(!var_1.a.x), any(var_1.a.zz));
    let var_4 = abs(_wgslsmith_mult_i32(countOneBits(~(~2147483647i)), _wgslsmith_mod_i32(u_input.c, u_input.b.x)));
    global4 = array<vec2<u32>, 17>();
    let var_5 = func_2(vec3<bool>(func_2(!var_3.xxy, ~max(vec4<u32>(1u, var_0.b.a.x, var_0.b.a.x, 1u), vec4<u32>(33554u, 4294967295u, var_2.x, var_1.b.x))).a.x, var_1.a.x, true), ~vec4<u32>((54656u << (var_0.b.a.x % 32u)) | ~u_input.a, _wgslsmith_add_u32(~global2.x, firstLeadingBit(1u)), 1u, 1u));
    let var_6 = reverseBits(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(max(u_input.c, global1.x), u_input.b.x, global1.x), -2147483647i), (0i & -var_4) & u_input.c, _wgslsmith_div_i32(var_4, ~select(-2147483647i, 2147483647i, var_1.a.x)), 17980i));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.xwz, _wgslsmith_f_op_vec2_f32(min(var_5.c.zy, _wgslsmith_f_op_vec2_f32(exp2(var_5.c.wy)))));
}

