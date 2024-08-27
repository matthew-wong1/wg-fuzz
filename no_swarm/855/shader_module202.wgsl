struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 14> = array<vec4<f32>, 14>(vec4<f32>(-391f, -1000f, 1212f, -231f), vec4<f32>(-2339f, -1047f, 832f, -966f), vec4<f32>(-218f, 1252f, -937f, -1136f), vec4<f32>(1000f, 401f, 2256f, -930f), vec4<f32>(-1314f, 1268f, 100f, -1348f), vec4<f32>(-146f, -671f, -326f, -995f), vec4<f32>(-240f, -919f, -616f, 1512f), vec4<f32>(867f, 683f, -1000f, 877f), vec4<f32>(-1113f, 928f, -1000f, -1449f), vec4<f32>(-288f, 563f, 314f, 1000f), vec4<f32>(995f, -118f, 780f, -1672f), vec4<f32>(-422f, -1000f, -389f, -1387f), vec4<f32>(342f, 471f, 766f, -2472f), vec4<f32>(692f, 660f, -736f, -1784f));

var<private> global1: array<Struct_1, 11>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: f32, arg_2: vec4<u32>) -> u32 {
    global0 = array<vec4<f32>, 14>();
    global1 = array<Struct_1, 11>();
    var var_0 = ~vec3<u32>(11306u, u_input.b, arg_2.x);
    let var_1 = global1[_wgslsmith_index_u32(arg_2.x, 11u)];
    global1 = array<Struct_1, 11>();
    return 13344u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = Struct_1(max(vec3<u32>(u_input.b, ~func_3(vec4<f32>(321f, -2093f, -598f, 271f), 370f, vec4<u32>(u_input.b, arg_0.a.x, 4294967295u, 11285u)), _wgslsmith_sub_u32(func_3(global0[_wgslsmith_index_u32(33844u, 14u)], -1156f, vec4<u32>(u_input.b, 33083u, arg_0.a.x, arg_0.a.x)), 0u)), ~(~vec3<u32>(1u, arg_1.a.x, 1u))));
    var_0 = Struct_1(var_0.a);
    var var_1 = arg_0.a.x;
    var_1 = 4294967295u;
    let var_2 = 1i;
    return abs(_wgslsmith_add_vec4_i32(vec4<i32>(22392i, var_2, _wgslsmith_mult_i32(-1i, 1i), i32(-1i) * -48811i), vec4<i32>(abs(-2147483647i), ~var_2, -u_input.a, -24870i))) | firstTrailingBit(vec4<i32>(-1i, 0i, -var_2, -2147483647i));
}

fn func_1(arg_0: vec4<i32>) -> i32 {
    global0 = array<vec4<f32>, 14>();
    var var_0 = vec3<i32>(arg_0.x, arg_0.x, _wgslsmith_dot_vec4_i32(max(func_2(Struct_1(vec3<u32>(u_input.b, u_input.b, 4294967295u)), global1[_wgslsmith_index_u32(u_input.b, 11u)], Struct_1(vec3<u32>(u_input.b, 0u, 59390u))), vec4<i32>(2147483647i, arg_0.x, u_input.a, u_input.a)), -(vec4<i32>(u_input.a, arg_0.x, 2147483647i, 0i) ^ vec4<i32>(arg_0.x, arg_0.x, arg_0.x, u_input.a))) ^ (firstTrailingBit(arg_0.x) ^ func_2(Struct_1(vec3<u32>(u_input.b, u_input.b, 0u)), global1[_wgslsmith_index_u32(select(1u, 4294967295u, false), 11u)], Struct_1(vec3<u32>(45678u, 41413u, u_input.b))).x));
    let var_1 = vec2<i32>(func_2(global1[_wgslsmith_index_u32(~(~(~0u)), 11u)], global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, _wgslsmith_mult_u32(16679u, u_input.b)), 11u)], global1[_wgslsmith_index_u32(u_input.b ^ u_input.b, 11u)]).x, -(arg_0.x & 25264i));
    var_0 = select(select(arg_0.wzx, arg_0.xxy & ~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, -2147483647i, -59747i), vec3<i32>(var_1.x, arg_0.x, 0i), vec3<i32>(var_1.x, arg_0.x, 0i)), (_wgslsmith_mod_u32(u_input.b, 26874u) > (u_input.b << (u_input.b % 32u))) || true), -vec3<i32>(var_0.x, 0i, 2147483647i), !vec3<bool>(true, false, any(vec4<bool>(false, true, true, true))));
    var var_2 = abs(-2147483647i);
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -func_1(~_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 0i, -1i, -7130i)), firstLeadingBit(vec4<i32>(-2147483647i, 52609i, u_input.a, 2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, -25681i, u_input.a), vec4<i32>(-5179i, u_input.a, u_input.a, -14596i))));
    let var_1 = ~_wgslsmith_mult_vec3_i32(max(vec3<i32>(-2147483647i, u_input.a, u_input.a), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 28826i, u_input.a), vec3<i32>(-20048i, u_input.a, 4190i))), _wgslsmith_add_vec3_i32(abs(vec3<i32>(u_input.a, 0i, 2147483647i)), -vec3<i32>(u_input.a, -1i, u_input.a))) << (select(vec3<u32>(46257u, ~u_input.b, u_input.b), vec3<u32>(u_input.b & ~1u, 60284u, 36614u), !(!select(false, true, false))) % vec3<u32>(32u));
    let var_2 = global1[_wgslsmith_index_u32(u_input.b ^ _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(0u, 7487u) | abs(u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 18262u), ~vec2<u32>(u_input.b, 1u)), u_input.b, ~_wgslsmith_div_u32(13884u, u_input.b)), _wgslsmith_div_vec4_u32(~vec4<u32>(29736u, 1u, u_input.b, 0u), ~(~vec4<u32>(4294967295u, u_input.b, u_input.b, 2367u)))), 11u)];
    var var_3 = ~max(~abs(vec4<u32>(u_input.b, var_2.a.x, var_2.a.x, var_2.a.x)) << (countOneBits(vec4<u32>(u_input.b, var_2.a.x, u_input.b, var_2.a.x)) % vec4<u32>(32u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.a.x, 1u, 56660u, var_2.a.x), vec4<u32>(var_2.a.x, var_2.a.x, var_2.a.x, u_input.b)));
    var var_4 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(~reverseBits(1u), select(var_3.x, firstTrailingBit(4294967295u), true), 18190u), _wgslsmith_div_vec3_u32(~(~vec3<u32>(1u, var_2.a.x, var_3.x)), var_3.zyy)), 11u)];
    var var_5 = all(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), false), !select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(select(false, any(vec3<bool>(false, true, false)), true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1);
}

