struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5>;

var<private> global1: array<vec4<f32>, 18>;

var<private> global2: array<vec3<i32>, 8>;

var<private> global3: u32;

var<private> global4: i32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    global0 = array<Struct_2, 5>();
    global1 = array<vec4<f32>, 18>();
    global3 = 26908u;
    global3 = ~1u;
    let var_0 = 0u;
    return ~max(~(~abs(20748u)), var_0);
}

fn func_2(arg_0: i32) -> vec2<u32> {
    var var_0 = global0[_wgslsmith_index_u32(func_3(), 5u)];
    global1 = array<vec4<f32>, 18>();
    var var_1 = vec4<u32>(((firstTrailingBit(0u) << (min(0u, 4294967295u) % 32u)) | 93853u) & 96686u, select(_wgslsmith_sub_u32(max(_wgslsmith_sub_u32(4294967295u, 1u), ~0u), _wgslsmith_clamp_u32(4294967295u, 0u, _wgslsmith_mult_u32(0u, 0u))), (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 50810u, 4294967295u, 70643u), vec4<u32>(0u, 21406u, 1u, 4294967295u)) & 1u) << (_wgslsmith_add_u32(1u, 1u) % 32u), (1i | -arg_0) <= ((i32(-1i) * -12759i) & arg_0)), ~_wgslsmith_sub_u32(1u, _wgslsmith_add_u32(1u, ~4294967295u)), ~countOneBits(abs(~42822u)));
    let var_2 = reverseBits(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(8806u, 0u, 39597u, var_1.x), vec4<u32>(var_1.x, var_1.x, var_1.x, 27745u)), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_1.x, 64462u), _wgslsmith_mult_u32(1u, 19459u), 0u), reverseBits(select(1u, 15650u, false)))) ^ var_1.wwx;
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-321f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1179f * _wgslsmith_f_op_f32(2579f - 673f)))))));
    return vec2<u32>(abs(21701u), var_2.x);
}

fn func_1() -> vec2<u32> {
    let var_0 = _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_mod_i32(u_input.a.x >> (15445u % 32u), u_input.a.x));
    let var_1 = false;
    let var_2 = select(!(!vec2<bool>(true, false || var_1)), !(!vec2<bool>(!var_1, var_1)), vec2<bool>(true, true));
    global2 = array<vec3<i32>, 8>();
    global2 = array<vec3<i32>, 8>();
    return ~vec2<u32>(30092u, _wgslsmith_dot_vec4_u32(~vec4<u32>(82178u, 0u, 35993u, 98854u), vec4<u32>(1u, 1u, 1u, 1u))) | ((func_2(_wgslsmith_sub_i32(-1i, u_input.a.x)) | firstTrailingBit(vec2<u32>(1u, 1u))) >> (vec2<u32>(29428u, _wgslsmith_mod_u32(~40584u, ~17231u)) % vec2<u32>(32u)));
}

fn func_4(arg_0: vec2<u32>, arg_1: bool) -> Struct_1 {
    global0 = array<Struct_2, 5>();
    let var_0 = false;
    var var_1 = _wgslsmith_add_u32(firstTrailingBit(abs(func_2(firstTrailingBit(19290i)).x)), firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(arg_0.x, 0u, arg_0.x), _wgslsmith_mult_u32(arg_0.x, arg_0.x)), func_3(), 1u)));
    return Struct_1(vec2<u32>(39068u, ~(~534u)) | ~(~(~arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 5u)];
    var var_1 = ~(-vec2<i32>(-37931i, firstLeadingBit(_wgslsmith_mod_i32(var_0.a, u_input.a.x))));
    let var_2 = vec3<f32>(810f, 1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(606f, 222f)), 898f))))));
    var var_3 = func_4(~func_1(), var_0.b);
    global1 = array<vec4<f32>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(min(i32(-1i) * -_wgslsmith_div_i32(var_0.a, u_input.a.x), u_input.a.x));
}

