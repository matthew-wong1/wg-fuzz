struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(678f, -1893f, -479f);

var<private> global1: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(Struct_1(vec4<bool>(true, true, true, false), -436f, vec4<u32>(4294967295u, 4294967295u, 39593u, 24916u)), Struct_1(vec4<bool>(false, true, true, false), -1000f, vec4<u32>(6685u, 0u, 4294967295u, 1u))));

var<private> global2: array<vec2<bool>, 17> = array<vec2<bool>, 17>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global3: array<Struct_2, 22>;

var<private> global4: Struct_2;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: f32, arg_3: vec2<bool>) -> bool {
    global1 = array<Struct_2, 1>();
    let var_0 = u_input.a;
    let var_1 = false;
    let var_2 = ~u_input.b;
    global1 = array<Struct_2, 1>();
    return true;
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = arg_0.x;
    let var_1 = Struct_2(Struct_1(!vec4<bool>(any(vec4<bool>(false, true, false, false)), func_3(Struct_1(vec4<bool>(false, true, true, false), 993f, global4.a.c), vec2<i32>(u_input.a, u_input.a), global4.b.b, vec2<bool>(true, false)), arg_0.x, any(global2[_wgslsmith_index_u32(global4.b.c.x, 17u)])), 997f, global4.a.c), Struct_1(select(global4.a.a, !global4.b.a, select(vec4<bool>(false, false, false, arg_0.x), !global4.a.a, select(global4.a.a, global4.a.a, true))), _wgslsmith_f_op_f32(ceil(-332f)), global4.b.c & (global4.b.c ^ global4.b.c)));
    let var_2 = global1[_wgslsmith_index_u32(abs(58618u), 1u)];
    let var_3 = var_1.b;
    var var_4 = var_2.b.c.x;
    return global4.a;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: f32, arg_3: i32) -> f32 {
    global2 = array<vec2<bool>, 17>();
    global0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.b, -1123f, global4.a.b)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.b, -652f, -394f)))) + vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1010f)) * arg_2), arg_2))));
    global3 = array<Struct_2, 22>();
    global2 = array<vec2<bool>, 17>();
    var var_0 = Struct_1(!func_2(select(!vec2<bool>(arg_1.b.a.x, arg_0.x), !arg_1.a.a.yz, select(vec2<bool>(global4.b.a.x, false), vec2<bool>(arg_1.b.a.x, global4.b.a.x), false))).a, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(136f))), global0.x), arg_1.b.b), ~select(vec4<u32>(arg_1.a.c.x >> (4294967295u % 32u), _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 1662u), select(arg_1.a.c.x, global4.a.c.x, arg_1.a.a.x), 4294967295u), _wgslsmith_div_vec4_u32(~global4.b.c, global4.b.c), !(!vec4<bool>(true, arg_0.x, false, false))));
    return _wgslsmith_f_op_f32(-arg_1.b.b);
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: bool) -> f32 {
    var var_0 = u_input.a;
    var var_1 = select(!select(!global4.b.a.wyx, global4.a.a.zwy, global4.a.a.yyx), vec3<bool>(true, (1u | arg_0.x) == arg_0.x, true), global4.a.c.x >= ~max(firstTrailingBit(u_input.b.x), u_input.b.x & global4.a.c.x));
    var var_2 = ~firstTrailingBit(16181u << ((u_input.b.x & u_input.b.x) % 32u));
    var_0 = 1i;
    global1 = array<Struct_2, 1>();
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(global4.b.a.zzy, Struct_2(func_2(vec2<bool>(false, arg_2)), global4.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(108f)) - global4.a.b)), ~u_input.a))));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: vec3<u32>) -> vec3<i32> {
    var var_0 = func_2(vec2<bool>(true, !(false && (arg_0.a.a.x | global4.a.a.x))));
    let var_1 = true;
    global4 = Struct_2(arg_0.a, func_2(vec2<bool>(all(global4.b.a), any(select(vec3<bool>(var_0.a.x, global4.b.a.x, true), var_0.a.ywx, global4.b.a.xwz)))));
    let var_2 = vec2<u32>(var_0.c.x, global4.b.c.x);
    var var_3 = !func_2(!global4.b.a.yz).a;
    return select(firstLeadingBit(vec3<i32>(_wgslsmith_mod_i32(u_input.a, 0i), -2147483647i, _wgslsmith_mult_i32(-26046i, u_input.a)) | vec3<i32>(-2147483647i, _wgslsmith_add_i32(-2147483647i, 1i), -2147483647i)), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, ~(-1i), 8137i), select(vec3<i32>(51196i, -2147483647i, 1i), vec3<i32>(u_input.a, 7571i, u_input.a), global4.a.a.x) >> (~arg_0.b.c.wyz % vec3<u32>(32u))), ~(vec3<i32>(u_input.a, -66978i, -1i) ^ vec3<i32>(46450i, u_input.a, u_input.a)) | ~(~vec3<i32>(u_input.a, 44255i, 1i))), false);
}

fn func_6(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = global4.a;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-732f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -557f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(612f - -1000f) - _wgslsmith_f_op_f32(step(285f, _wgslsmith_f_op_f32(max(-1030f, -727f))))));
    let var_1 = true;
    var_0 = global4.a;
    var var_2 = -vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(-8080i, u_input.a) | arg_0.x, _wgslsmith_dot_vec2_i32(~arg_0.zx, arg_0.yz)), _wgslsmith_dot_vec3_i32(firstLeadingBit(-arg_0), ~vec3<i32>(u_input.a, -33244i, 19853i) | arg_0), arg_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, abs(-9032i), _wgslsmith_mod_i32(u_input.a, u_input.a)), arg_0));
    return global4.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<i32>(u_input.a, firstLeadingBit(-60033i));
    var var_1 = Struct_2(Struct_1(select(vec4<bool>(global4.b.a.x, all(global4.b.a.yw), !global4.b.a.x, global4.b.a.x), vec4<bool>(!global4.a.a.x, true, false, true), any(select(vec2<bool>(true, global4.a.a.x), vec2<bool>(true, false), global4.b.a.yz))), -1395f, abs(~vec4<u32>(38735u, u_input.b.x, 1u, 1u))), func_6(func_5(Struct_2(global4.a, Struct_1(vec4<bool>(global4.a.a.x, false, global4.a.a.x, true), global0.x, global4.a.c)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(vec2<u32>(0u, global4.b.c.x), var_0.x, global4.b.a.x)))), ~(global4.a.c.xwx ^ u_input.b))));
    var var_2 = -(-(firstTrailingBit(vec4<i32>(var_0.x, -2147483647i, u_input.a, -5483i)) ^ -vec4<i32>(var_0.x, -47549i, u_input.a, u_input.a)) | ~(select(vec4<i32>(u_input.a, -27971i, -35001i, 29125i), vec4<i32>(u_input.a, -1i, -2147483647i, u_input.a), var_1.b.a.x) << (vec4<u32>(global4.a.c.x, u_input.b.x, u_input.b.x, 34686u) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_0.x & 1i), abs(0i));
}

