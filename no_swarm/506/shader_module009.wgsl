struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: bool,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 10>;

var<private> global1: array<vec4<f32>, 13> = array<vec4<f32>, 13>(vec4<f32>(1640f, -3046f, 2820f, -564f), vec4<f32>(524f, 1737f, -994f, 1183f), vec4<f32>(-1292f, -252f, 1590f, -895f), vec4<f32>(276f, -133f, 1523f, 101f), vec4<f32>(-946f, 994f, -443f, 1000f), vec4<f32>(-369f, -249f, 1000f, 1000f), vec4<f32>(1000f, 1167f, 405f, -701f), vec4<f32>(802f, 426f, -1124f, 1316f), vec4<f32>(850f, 651f, -399f, 233f), vec4<f32>(1000f, -825f, -307f, -1070f), vec4<f32>(-1549f, 837f, 1098f, 257f), vec4<f32>(-276f, 1254f, -1148f, -1628f), vec4<f32>(945f, -646f, -1000f, 537f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> bool {
    let var_0 = true;
    return !any(select(select(vec3<bool>(true, true, true), !vec3<bool>(var_0, var_0, true), !var_0), !vec3<bool>(false, var_0, true), var_0));
}

fn func_3(arg_0: bool) -> i32 {
    global0 = array<Struct_4, 10>();
    global0 = array<Struct_4, 10>();
    let var_0 = true;
    return 2147483647i >> ((u_input.c.x ^ ~u_input.c.x) % 32u);
}

fn func_1(arg_0: f32) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(-690f * 827f)))) - vec2<f32>(_wgslsmith_f_op_f32(304f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * arg_0), arg_0, func_2()))), 715f));
    let var_1 = Struct_2(!vec2<bool>(true, func_3(true) != _wgslsmith_add_i32(u_input.b.x, u_input.a)), _wgslsmith_add_u32(~(~(~28579u)), ~_wgslsmith_mod_u32(~38952u, _wgslsmith_dot_vec3_u32(u_input.c.xww, vec3<u32>(0u, u_input.c.x, u_input.c.x)))), Struct_1(_wgslsmith_div_vec3_i32(~u_input.b, countOneBits(vec3<i32>(u_input.b.x, u_input.a, u_input.a))) << (vec3<u32>(u_input.c.x, reverseBits(u_input.c.x), ~1u) % vec3<u32>(32u))));
    global0 = array<Struct_4, 10>();
    let var_2 = reverseBits(~4294967295u);
    let var_3 = var_1.c;
    return (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -719f) - -571f) <= arg_0) == (var_3.a.x >= -18214i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1435f, 443f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-322f, 1694f)))), vec2<f32>(-833f, -1037f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -497f), 1f) + vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1554f, 658f), 1000f)), 1869f)));
    var var_1 = select(!vec3<bool>(_wgslsmith_f_op_f32(min(var_0.x, 673f)) >= _wgslsmith_f_op_f32(-113f * var_0.x), func_1(-509f), true), select(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), !vec3<bool>(var_0.x == -153f, func_2(), u_input.a != 92019i)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 537f) + var_0.x))) >= var_0.x);
    let var_2 = Struct_1(abs(abs(firstLeadingBit(vec3<i32>(-36799i, -2147483647i, 0i))) | ~vec3<i32>(-1i, u_input.a, u_input.a)));
    let var_3 = vec2<u32>(_wgslsmith_sub_u32(u_input.c.x, firstTrailingBit(~_wgslsmith_dot_vec2_u32(u_input.c.xz, u_input.c.wx))), max(u_input.c.x, _wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(u_input.c.wyx, u_input.c.yzx), ~u_input.c.x)));
    let var_4 = global1[_wgslsmith_index_u32(~reverseBits(1u), 13u)];
    var var_5 = u_input.b.zx;
    var var_6 = Struct_3(_wgslsmith_f_op_f32(floor(-270f)), !var_1.x, func_1(_wgslsmith_f_op_f32(ceil(var_0.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(var_0.x - -1000f), _wgslsmith_f_op_f32(floor(-2405f)), var_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(global1[_wgslsmith_index_u32(var_3.x, 13u)]))), vec4<bool>(false, var_5.x > var_2.a.x, false, any(vec2<bool>(var_1.x, var_1.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(64043u, _wgslsmith_f_op_f32(f32(-1f) * -1510f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_6.d.yyz)))), ~var_2.a, _wgslsmith_f_op_f32(step(var_4.x, _wgslsmith_f_op_f32(-var_0.x))));
}

