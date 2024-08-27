struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(-955f, 170f, 156f, -812f), vec4<f32>(448f, 878f, -1397f, -554f), vec4<f32>(-2584f, 778f, 1000f, -119f), vec4<f32>(-1305f, 733f, 1203f, 757f), vec4<f32>(-1944f, 333f, 204f, 480f), vec4<f32>(-1000f, -750f, 1224f, 354f));

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(i32(-2147483648), vec4<f32>(-2218f, 1784f, 703f, 449f), vec4<u32>(8109u, 1u, 4294967295u, 54979u)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: i32) -> bool {
    let var_0 = global1[_wgslsmith_index_u32(min(~(u_input.b.x | ~firstTrailingBit(u_input.b.x)), _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(0u, u_input.b.x) << (39605u % 32u), abs(min(u_input.b.x, 20049u))), _wgslsmith_mult_u32(0u, _wgslsmith_clamp_u32(~u_input.b.x, u_input.b.x, ~u_input.b.x)))), 1u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(737f, 1705f, -1152f, -699f));
    global0 = array<vec4<f32>, 6>();
    let var_2 = 58743u;
    var var_3 = Struct_1(firstTrailingBit(-u_input.a), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1094f * -1240f), -1682f)), -2396f, _wgslsmith_f_op_f32(-var_1.x), -1211f), var_0.c);
    return !all(select(vec2<bool>(!arg_1.x, true), vec2<bool>(true, true), vec2<bool>(arg_1.x, all(arg_1.xxy))));
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> u32 {
    global0 = array<vec4<f32>, 6>();
    var var_0 = arg_0;
    let var_1 = !(!func_3(~vec4<i32>(var_0.b, arg_0.b, -22117i, arg_0.b), vec4<bool>(arg_1, arg_1, arg_1, arg_1), -52712i)) || false;
    return var_0.a.x;
}

fn func_1() -> f32 {
    global0 = array<vec4<f32>, 6>();
    var var_0 = Struct_2(~(~(~vec3<u32>(4294967295u, 91744u, 4294967295u))) ^ _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b.x, 5004u, u_input.b.x), vec3<u32>(~u_input.b.x, _wgslsmith_clamp_u32(u_input.b.x, 22814u, u_input.b.x), ~u_input.b.x)), -u_input.a);
    let var_1 = func_2(Struct_2(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b.x, 35180u, 0u), vec3<u32>(u_input.b.x, abs(u_input.b.x), 0u)), var_0.b >> (~(~1u) % 32u)), false);
    var_0 = Struct_2(~countOneBits(var_0.a & ~var_0.a), ~var_0.b ^ _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.b, var_0.b, -61916i), vec3<i32>(var_0.b, var_0.b, 52909i)), ~vec3<i32>(12814i, var_0.b, 1i)), _wgslsmith_dot_vec2_i32(-vec2<i32>(27393i, -1i), vec2<i32>(var_0.b, u_input.a))));
    global0 = array<vec4<f32>, 6>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-159f, -1014f), _wgslsmith_div_f32(837f, 894f)))) - -1456f) + _wgslsmith_f_op_f32(abs(-1000f)));
}

fn func_4(arg_0: f32, arg_1: u32) -> Struct_3 {
    var var_0 = Struct_3(global1[_wgslsmith_index_u32(4294967295u, 1u)], !vec4<bool>(any(vec3<bool>(false, false, false)), true, any(vec4<bool>(true, true, true, true)), false));
    var var_1 = firstTrailingBit(var_0.a.c);
    let var_2 = _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.b.x, var_0.a.c.x << (~var_1.x % 32u), 0u), _wgslsmith_add_u32(_wgslsmith_mod_u32(var_1.x, 15729u), _wgslsmith_mod_u32(4294967295u, var_1.x)) & (47926u & u_input.b.x), var_1.x);
    var_1 = var_0.a.c;
    global0 = array<vec4<f32>, 6>();
    return Struct_3(Struct_1(firstLeadingBit(_wgslsmith_div_i32(var_0.a.a, var_0.a.a ^ u_input.a)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b.x, var_0.a.b.x, 803f, 848f)))), var_0.a.c), !select(var_0.b, select(var_0.b, select(vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.b.x), var_0.b, true), !vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, false)), vec4<bool>(-7347i < u_input.a, arg_0 > arg_0, true, var_0.b.x)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1) -> Struct_3 {
    global0 = array<vec4<f32>, 6>();
    global1 = array<Struct_1, 1>();
    var var_0 = Struct_1(arg_0.a.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(arg_0.a.b)) + _wgslsmith_f_op_vec4_f32(-arg_1.b)), arg_1.c);
    let var_1 = !(all(func_4(_wgslsmith_f_op_f32(329f - -409f), arg_0.a.c.x).b.zxx) == any(!select(arg_0.b, arg_0.b, true)));
    var var_2 = select(arg_1.c.zy, ~vec2<u32>(var_0.c.x, abs(arg_1.c.x)) ^ (countOneBits(arg_1.c.xx) & vec2<u32>(7143u, 1u)), !select(_wgslsmith_f_op_f32(round(var_0.b.x)) == _wgslsmith_div_f32(arg_1.b.x, var_0.b.x), true, var_1));
    return Struct_3(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x)), func_4(-166f, ~1u).a.c.x).a, arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1934f, 1278f), _wgslsmith_f_op_f32(func_1()))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -967f), 1815f)), 1u), global1[_wgslsmith_index_u32(u_input.b.x, 1u)]);
    global0 = array<vec4<f32>, 6>();
    var var_1 = func_4(_wgslsmith_f_op_f32(func_1()), _wgslsmith_sub_u32(select(u_input.b.x, ~1u, var_0.b.x), u_input.b.x)).a;
    let var_2 = -(u_input.a >> (func_5(func_5(Struct_3(Struct_1(-2147483647i, global0[_wgslsmith_index_u32(0u, 6u)], var_0.a.c), vec4<bool>(true, var_0.b.x, var_0.b.x, true)), var_0.a), Struct_1(i32(-1i) * -2147483647i, _wgslsmith_f_op_vec4_f32(vec4<f32>(617f, 2406f, 699f, 971f) * vec4<f32>(var_1.b.x, -254f, var_0.a.b.x, 1594f)), var_1.c)).a.c.x % 32u));
    var_1 = func_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1426f)), 1114f)), func_4(_wgslsmith_f_op_f32(floor(960f)), 0u).a.c.x).a;
    var var_3 = var_0.a;
    var_3 = Struct_1(1i, var_0.a.b, _wgslsmith_div_vec4_u32(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.c.x, var_3.c.x, var_0.a.c.x, var_1.c.x), vec4<u32>(4294967295u, u_input.b.x, 8632u, var_0.a.c.x) >> (var_3.c % vec4<u32>(32u)))), abs(var_0.a.c >> (var_3.c % vec4<u32>(32u)))));
    var_3 = func_4(-154f, ~_wgslsmith_div_u32(21212u, firstTrailingBit(22334u)) | 56551u).a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_3.a, firstLeadingBit(abs(u_input.a)), -(~reverseBits(var_3.a))), var_1.b.xzx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -918f)), 1000f, 1i);
}

