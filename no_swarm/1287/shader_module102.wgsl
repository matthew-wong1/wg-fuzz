struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
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

var<private> global0: f32;

var<private> global1: array<vec2<u32>, 26> = array<vec2<u32>, 26>(vec2<u32>(1u, 61184u), vec2<u32>(69201u, 26433u), vec2<u32>(4798u, 1u), vec2<u32>(0u, 75122u), vec2<u32>(37835u, 4294967295u), vec2<u32>(22639u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(52887u, 0u), vec2<u32>(1u, 0u), vec2<u32>(9179u, 117496u), vec2<u32>(65526u, 23882u), vec2<u32>(0u, 22609u), vec2<u32>(0u, 4294967295u), vec2<u32>(13417u, 31389u), vec2<u32>(10048u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(31717u, 1u), vec2<u32>(47223u, 0u), vec2<u32>(0u, 55975u), vec2<u32>(16176u, 24279u), vec2<u32>(29030u, 51675u), vec2<u32>(1u, 4294967295u), vec2<u32>(41763u, 8391u), vec2<u32>(0u, 55018u), vec2<u32>(4294967295u, 53849u), vec2<u32>(4294967295u, 32734u));

var<private> global2: array<vec3<u32>, 8>;

var<private> global3: array<vec4<f32>, 8>;

var<private> global4: array<i32, 22> = array<i32, 22>(0i, -69922i, 17780i, 32542i, -1i, 20004i, -1i, 1i, -1i, -1i, 5845i, 30970i, -12040i, 0i, -23824i, 2587i, -45629i, 55386i, 0i, 1i, -1i, -1i);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: u32) -> bool {
    let var_0 = Struct_1(arg_0.a, arg_0.b, !(-global4[_wgslsmith_index_u32(countOneBits(40076u), 22u)] <= (abs(u_input.c) & _wgslsmith_mult_i32(0i, 59812i))));
    var var_1 = Struct_1(var_0.a, 2147483647i, all(!vec2<bool>(any(arg_0.a), any(vec2<bool>(arg_0.c, false)))));
    global4 = array<i32, 22>();
    global3 = array<vec4<f32>, 8>();
    let var_2 = !vec2<bool>(true, any(select(!vec3<bool>(arg_0.c, var_0.c, var_0.c), select(vec3<bool>(var_0.c, var_0.c, var_0.c), vec3<bool>(false, var_1.c, false), vec3<bool>(var_1.c, true, arg_0.c)), true)));
    return !(var_0.a.x & !var_2.x);
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: vec4<u32>) -> vec2<bool> {
    global0 = _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-312f, -335f) + arg_0)))));
    global4 = array<i32, 22>();
    let var_0 = vec2<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(38589u >> (0u % 32u), _wgslsmith_add_u32(15910u, 12821u)) ^ _wgslsmith_add_u32(~u_input.b, 10552u), 24841u), ~(~arg_2.x) | (arg_1.x | ~_wgslsmith_mod_u32(1u, arg_2.x)));
    let var_1 = Struct_1(select(vec2<bool>(any(vec2<bool>(false, true)), true), !select(vec2<bool>(false, false), vec2<bool>(true, false), arg_0 == -428f), !func_3(Struct_1(vec2<bool>(false, false), global4[_wgslsmith_index_u32(u_input.a.x, 22u)], true), vec2<u32>(4294967295u, 1u), vec4<u32>(4652u, 1u, 2722u, 1u), 4294967295u) | false), abs(-_wgslsmith_mod_i32(global4[_wgslsmith_index_u32(0u, 22u)], global4[_wgslsmith_index_u32(29488u, 22u)])) & u_input.c, !(~(~u_input.c) < 0i));
    let var_2 = -_wgslsmith_clamp_vec3_i32(vec3<i32>(-_wgslsmith_div_i32(2147483647i, global4[_wgslsmith_index_u32(var_0.x, 22u)]), firstLeadingBit(-1i ^ u_input.c), _wgslsmith_clamp_i32(global4[_wgslsmith_index_u32(3789u, 22u)], var_1.b, 5617i) >> (4294967295u % 32u)), vec3<i32>(16793i, u_input.c, global4[_wgslsmith_index_u32(arg_1.x, 22u)]), vec3<i32>(max(global4[_wgslsmith_index_u32(u_input.a.x, 22u)] ^ 31650i, -29220i), u_input.c, ~1i));
    return vec2<bool>(true, !var_1.a.x);
}

fn func_1(arg_0: vec2<i32>) -> vec4<f32> {
    global1 = array<vec2<u32>, 26>();
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, -312f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -100f)))))));
    var var_0 = Struct_1(!select(vec2<bool>(all(vec3<bool>(true, false, true)), true), select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, false), false), true), func_2(-1000f, vec3<u32>(u_input.a.x, u_input.a.x, 3411u), vec4<u32>(u_input.b, 1u, u_input.b, 1u))), countOneBits(firstTrailingBit(_wgslsmith_clamp_i32(arg_0.x, -20767i, 0i))), u_input.c >= ~(1i << (~u_input.b % 32u)));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(659f - 270f)) * _wgslsmith_f_op_f32(round(-943f))))) > -1429f;
    let var_2 = ~(~u_input.a.x);
    return vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-805f + _wgslsmith_f_op_f32(abs(790f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(274f, 854f)), -703f)) - _wgslsmith_f_op_f32(f32(-1f) * -1758f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-283f, -1000f, false)) * _wgslsmith_f_op_f32(round(1004f))))), _wgslsmith_f_op_f32(max(-467f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1038f))), _wgslsmith_f_op_f32(max(-480f, 1069f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -899f) - -1894f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<i32, 22>();
    global3 = array<vec4<f32>, 8>();
    var var_0 = Struct_1(vec2<bool>(true, true), _wgslsmith_add_i32(global4[_wgslsmith_index_u32(~1u, 22u)], _wgslsmith_div_i32(-countOneBits(global4[_wgslsmith_index_u32(12637u, 22u)]), _wgslsmith_div_i32(-36653i, -43567i ^ u_input.c))), 0u < ~(29570u & ~u_input.a.x));
    var var_1 = var_0.a;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -323f)), _wgslsmith_f_op_f32(ceil(-402f)), _wgslsmith_f_op_f32(min(-1000f, 495f)), 236f) + vec4<f32>(994f, -1345f, _wgslsmith_f_op_f32(min(-781f, -120f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1200f)))))));
    global2 = array<vec3<u32>, 8>();
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_div_vec2_i32(vec2<i32>(global4[_wgslsmith_index_u32(u_input.b, 22u)], ~(-2147483647i)), ~(vec2<i32>(var_0.b, u_input.c) << (u_input.a % vec2<u32>(32u)))))));
    var var_3 = ~u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(-2018f, 0i);
}

