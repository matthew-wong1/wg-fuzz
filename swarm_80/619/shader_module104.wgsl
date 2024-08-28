struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23>;

var<private> global1: u32 = 4294967295u;

var<private> global2: array<i32, 31> = array<i32, 31>(-19299i, -40955i, -11422i, -25562i, -1i, 10209i, 28294i, -29272i, 1i, 1i, -3174i, 2147483647i, -10361i, 46316i, 0i, 2147483647i, i32(-2147483648), 2147483647i, 1i, 22930i, -56460i, -51987i, 1i, 6350i, -46060i, 49290i, -27335i, i32(-2147483648), i32(-2147483648), 33170i, -14060i);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: i32) -> u32 {
    var var_0 = vec4<i32>(reverseBits(2147483647i), arg_1.a.x, 5701i, 46806i);
    let var_1 = 578f;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - var_1))))));
    global2 = array<i32, 31>();
    var var_3 = !(!(!(!select(vec4<bool>(global0[_wgslsmith_index_u32(arg_2.x, 23u)], false, global0[_wgslsmith_index_u32(30657u, 23u)], true), vec4<bool>(false, false, global0[_wgslsmith_index_u32(0u, 23u)], true), true))));
    return ~_wgslsmith_mult_u32(arg_2.x, ~(4076u ^ arg_2.x));
}

fn func_3(arg_0: bool) -> vec2<u32> {
    var var_0 = Struct_1(select(vec4<i32>(u_input.c.x, global2[_wgslsmith_index_u32(reverseBits(u_input.a.x), 31u)], _wgslsmith_dot_vec2_i32(u_input.c.zx, vec2<i32>(global2[_wgslsmith_index_u32(0u, 31u)], 0i)), -2147483647i), ~vec4<i32>(2147483647i, 1i, 1i, u_input.c.x), true) << (_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.d, vec4<u32>(0u, 100868u, u_input.b, u_input.b), u_input.d), u_input.d), u_input.d) % vec4<u32>(32u)));
    var var_1 = vec4<i32>(-1i, _wgslsmith_div_i32(var_0.a.x, var_0.a.x), var_0.a.x, 2147483647i);
    let var_2 = var_0.a;
    var var_3 = _wgslsmith_div_u32(u_input.d.x, 4294967295u);
    let var_4 = vec2<i32>(reverseBits(-reverseBits(u_input.c.x)) | ~(-_wgslsmith_dot_vec2_i32(u_input.c.xy, vec2<i32>(13551i, 1i))), var_0.a.x);
    return vec2<u32>(firstTrailingBit(~firstTrailingBit(29801u)), u_input.d.x);
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = ~_wgslsmith_mult_vec2_u32(u_input.a, func_3(true));
    global0 = array<bool, 23>();
    var_0 = _wgslsmith_div_vec2_u32(reverseBits(u_input.a ^ firstLeadingBit(countOneBits(vec2<u32>(var_0.x, 0u)))), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(~reverseBits(u_input.e.zx), ~u_input.d.yx), u_input.a));
    global2 = array<i32, 31>();
    var var_1 = Struct_1(vec4<i32>(u_input.c.x, 2147483647i, 3446i, countOneBits(-18723i)));
    return Struct_1(var_1.a);
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = u_input.e;
    global2 = array<i32, 31>();
    let var_1 = arg_2;
    var_0 = _wgslsmith_sub_vec3_u32(max(firstLeadingBit(vec3<u32>(~58039u, _wgslsmith_sub_u32(0u, arg_0.x), countOneBits(u_input.b))), _wgslsmith_add_vec3_u32(reverseBits(arg_0.wzx >> (vec3<u32>(0u, 75386u, arg_0.x) % vec3<u32>(32u))), ~(~u_input.d.ywy))), vec3<u32>(reverseBits(0u), ~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 33483u), vec2<u32>(_wgslsmith_add_u32(arg_0.x, arg_0.x), func_1(-554f, arg_2, u_input.d.zxx, -1270i)))));
    var_0 = ~_wgslsmith_sub_vec3_u32(firstLeadingBit(_wgslsmith_clamp_vec3_u32(~arg_0.zyx, u_input.e, arg_0.yzx)), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(var_0.x, 1u), abs(0u), ~var_0.x), u_input.d.yzy, u_input.d.wyz >> (~vec3<u32>(66406u, 0u, u_input.a.x) % vec3<u32>(32u))));
    return func_2(global0[_wgslsmith_index_u32(1u, 23u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(-704f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-136f - _wgslsmith_f_op_f32(min(643f, 1096f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(702f)) * -770f))));
    var var_1 = 284f;
    let var_2 = false == global0[_wgslsmith_index_u32(0u, 23u)];
    var var_3 = func_4(vec4<u32>(60332u, (_wgslsmith_add_u32(0u, u_input.a.x) << (_wgslsmith_clamp_u32(u_input.d.x, u_input.a.x, u_input.d.x) % 32u)) ^ 1u, ~u_input.d.x, select(u_input.b, func_1(-700f, Struct_1(vec4<i32>(787i, -1i, 30730i, u_input.c.x)), u_input.d.zzx, -1i), all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], true))) << (19872u % 32u)), u_input.c.x, func_2(true || global0[_wgslsmith_index_u32(~52523u, 23u)]));
    let var_4 = func_4(~vec4<u32>(abs(_wgslsmith_dot_vec3_u32(u_input.e, u_input.d.xyx)), 78807u, u_input.a.x, min(24874u << (u_input.e.x % 32u), u_input.b)), 1i, func_4(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, func_1(var_0, Struct_1(var_3.a), vec3<u32>(4294967295u, 4294967295u, 87158u), 49409i), u_input.b, u_input.a.x), abs(vec4<u32>(u_input.a.x, 3374u, u_input.a.x, u_input.a.x) & u_input.d)), -global2[_wgslsmith_index_u32(u_input.d.x, 31u)], func_4(~u_input.d, u_input.c.x, Struct_1(var_3.a))));
    let x = u_input.a;
    s_output = StorageBuffer(~32590u, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0))));
}

