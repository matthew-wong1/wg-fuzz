struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 35481u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec3<u32>, arg_3: vec4<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_0.d, -726f, true)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(arg_0.d))))))) * vec2<f32>(441f, -395f));
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-1f)));
    let var_2 = vec4<i32>(18663i, 2147483647i, _wgslsmith_dot_vec3_i32(u_input.c, -vec3<i32>(arg_1, arg_1, u_input.d)), ~(_wgslsmith_div_i32(u_input.e, 1i) & (u_input.c.x & u_input.e))) << (vec4<u32>(u_input.b.x, 4294967295u, 0u ^ arg_2.x, select(arg_2.x, _wgslsmith_mod_u32(0u, u_input.b.x) >> (25783u % 32u), true)) % vec4<u32>(32u));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(select(401f, -492f, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))))), -1000f);
    var var_3 = -firstTrailingBit(var_2);
    return abs(abs(_wgslsmith_mult_u32(~(7841u ^ arg_2.x), 0u)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<bool>) -> bool {
    global0 = ~_wgslsmith_div_u32(~u_input.b.x, 83923u);
    global0 = (func_3(Struct_1(-517f, countOneBits(u_input.b.xz), u_input.a, -147f, _wgslsmith_add_vec2_u32(u_input.b.yy, vec2<u32>(u_input.a, u_input.b.x))), 20989i, ~abs(u_input.b), ~(~vec4<u32>(u_input.b.x, u_input.a, u_input.b.x, u_input.b.x))) ^ _wgslsmith_add_u32((u_input.b.x >> (u_input.b.x % 32u)) >> (firstTrailingBit(0u) % 32u), 8671u)) | func_3(Struct_1(_wgslsmith_f_op_f32(ceil(-2088f)), ~vec2<u32>(u_input.b.x, 11069u) << (~u_input.b.yy % vec2<u32>(32u)), ~_wgslsmith_add_u32(u_input.a, u_input.b.x), -1000f, abs(~u_input.b.yz)), max(u_input.c.x | 2147483647i, firstTrailingBit(u_input.d)), u_input.b, abs(_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, u_input.b.x, 15168u, u_input.b.x), vec4<u32>(52321u, 70398u, 0u, u_input.b.x))));
    let var_0 = u_input.b.yz;
    let var_1 = Struct_1(-206f, _wgslsmith_add_vec2_u32(var_0, vec2<u32>(1u, 50049u)), 4294967295u, _wgslsmith_f_op_f32(max(-782f, 1289f)), ~(~vec2<u32>(~22613u, var_0.x)));
    global0 = firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 25852u) ^ vec2<u32>(var_1.c, firstTrailingBit(var_0.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x >> (0u % 32u), 4294967295u), var_1.b)));
    return any(!select(!select(vec3<bool>(false, arg_1.x, true), vec3<bool>(false, false, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), vec3<bool>(true, arg_1.x, arg_1.x != false), vec3<bool>(any(vec4<bool>(arg_1.x, false, true, arg_1.x)), select(false, true, arg_1.x), arg_1.x)));
}

fn func_1(arg_0: bool, arg_1: Struct_4, arg_2: vec4<u32>) -> i32 {
    let var_0 = arg_2.x;
    let var_1 = Struct_4(1u, u_input.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.c + arg_1.c), -1199f));
    let var_2 = !vec2<bool>(true, !func_2(vec2<i32>(0i, arg_1.b.x), vec2<bool>(arg_0, arg_0)));
    let var_3 = ~vec4<u32>(u_input.b.x, ~_wgslsmith_mod_u32(31664u, _wgslsmith_add_u32(4640u, var_1.a)), _wgslsmith_dot_vec2_u32(select(arg_2.xx, firstTrailingBit(vec2<u32>(71554u, var_1.a)), !vec2<bool>(arg_0, false)), _wgslsmith_div_vec2_u32(arg_2.ww, arg_2.xz | arg_2.xy)), countOneBits(113252u));
    var var_4 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-930f, 642f)));
    return -28801i;
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1364f + 1000f), _wgslsmith_f_op_f32(f32(-1f) * -533f))))));
    let var_1 = !select(vec2<bool>(true, true), select(vec2<bool>(true, true), !select(vec2<bool>(false, arg_2), vec2<bool>(arg_2, arg_2), arg_2), vec2<bool>(!arg_2, arg_2)), select(true, true, false));
    var var_2 = var_1;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(971f + 1430f));
    let var_4 = ~max(_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_0, 1u, 77792u, arg_1.x), vec4<u32>(arg_0, arg_0, 23356u, 26613u), abs(vec4<u32>(59450u, arg_0, arg_0, u_input.a))) << (countOneBits(vec4<u32>(16151u, 4294967295u, arg_1.x, 1u)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(arg_1.x, arg_1.x, 30179u, 23903u)), vec4<u32>(1u, abs(4294967295u), _wgslsmith_clamp_u32(4294967295u, arg_0, 28796u), 54266u)));
    return Struct_2(338f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -577f;
    var_0 = -953f;
    var var_1 = Struct_3(func_4(abs(max(~0u, ~u_input.b.x)), _wgslsmith_div_vec3_u32(u_input.b & vec3<u32>(u_input.a, u_input.b.x, 13754u), vec3<u32>(u_input.a, u_input.a, 0u)) & ~abs(u_input.b), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.d, u_input.e), vec2<i32>(u_input.e, -5426i) >> (u_input.b.xx % vec2<u32>(32u))) != func_1(true, Struct_4(u_input.b.x, u_input.c, 1323f), ~vec4<u32>(u_input.b.x, u_input.a, 4294967295u, 0u))));
    var_1 = Struct_3(func_4(~(~(u_input.b.x & 17757u)), ~u_input.b, any(vec3<bool>(true, true, true))));
    var var_2 = u_input.a;
    var_1 = Struct_3(var_1.a);
    var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_1.a.a, var_1.a.a), vec4<u32>(_wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.b.x, u_input.a), ~u_input.b.xx), ~vec2<u32>(1u, u_input.a) | firstTrailingBit(vec2<u32>(u_input.b.x, u_input.a))), ~u_input.a, countOneBits(max(~u_input.a, _wgslsmith_add_u32(20751u, 1u))), _wgslsmith_dot_vec2_u32(~select(vec2<u32>(u_input.a, 0u), u_input.b.zx, true), vec2<u32>(30195u, select(u_input.a, 21038u, false)))));
}

