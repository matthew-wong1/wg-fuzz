struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 22>;

var<private> global1: array<f32, 14> = array<f32, 14>(-615f, -596f, 453f, 1083f, 623f, -2278f, 218f, 1130f, 1000f, 320f, -1000f, -460f, 1000f, 223f);

var<private> global2: vec4<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    let var_0 = reverseBits(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(40367i, -21724i), u_input.a.ww)) ^ -_wgslsmith_add_i32(1i, -u_input.a.x));
    global0 = array<vec4<bool>, 22>();
    var var_1 = Struct_1((~vec2<u32>(arg_1.a.x, global2.x) | _wgslsmith_mod_vec2_u32(~vec2<u32>(1u, arg_0.x), ~vec2<u32>(arg_1.a.x, arg_0.x))) & vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, 0u), vec2<u32>(arg_0.x, arg_2.a)), select(arg_2.a, ~6278u, true)));
    var var_2 = arg_1;
    let var_3 = 1u;
    return global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~arg_2.a >> (var_3 % 32u), arg_1.a.x, ~_wgslsmith_add_u32(_wgslsmith_mod_u32(arg_0.x, max(arg_0.x, global2.x)), var_2.a.x)), 14u)];
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(arg_3.x - -496f), global1[_wgslsmith_index_u32(countOneBits(global2.x ^ 55501u) << (global2.x % 32u), 14u)], _wgslsmith_f_op_f32(-var_0.b), arg_1.b), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<u32>(var_0.a, 0u), Struct_1(vec2<u32>(1u, 4294967295u)), Struct_2(arg_0.a, arg_2.x)))), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(max(481f, _wgslsmith_f_op_f32(arg_1.b - 371f)))), _wgslsmith_f_op_f32(f32(-1f) * -841f))));
    var var_2 = true;
    global0 = array<vec4<bool>, 22>();
    return Struct_2(13492u, _wgslsmith_f_op_f32(-arg_0.b));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<i32>) -> vec2<u32> {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global2.zxz, ~_wgslsmith_sub_vec3_u32(~global2.wzy, vec3<u32>(arg_1.a, arg_0.a, global2.x)) ^ min(select(reverseBits(vec3<u32>(13825u, 4294967295u, arg_1.a)), global2.wyw << (vec3<u32>(arg_1.a, 0u, 1u) % vec3<u32>(32u)), arg_2.x > -1i), ~(vec3<u32>(global2.x, 4294967295u, 22093u) & vec3<u32>(arg_0.a, 1u, 62535u)))), 14u)];
    global0 = array<vec4<bool>, 22>();
    global2 = ~abs(vec4<u32>(arg_1.a, 60692u, global2.x, select(4294967295u, global2.x, 0u >= global2.x)));
    global0 = array<vec4<bool>, 22>();
    return global2.xx;
}

fn func_5(arg_0: vec2<i32>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(global2.x), 14u)]) - 1000f);
    global1 = array<f32, 14>();
    global1 = array<f32, 14>();
    var var_1 = Struct_1(~global2.xz);
    var var_2 = vec4<u32>(abs(var_1.a.x), 33422u, select(_wgslsmith_div_u32(_wgslsmith_add_u32(~65609u, 26141u), _wgslsmith_div_u32(40696u, global2.x)), _wgslsmith_dot_vec3_u32((vec3<u32>(global2.x, 1u, 10314u) | global2.yxz) ^ vec3<u32>(var_1.a.x, var_1.a.x, 4294967295u), ~_wgslsmith_add_vec3_u32(global2.yzw, vec3<u32>(var_1.a.x, 1u, 19246u))), true), 0u);
    return firstLeadingBit(~(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), arg_0), vec2<i32>(0i, 2147483647i)) << (global2.xw % vec2<u32>(32u))));
}

fn func_1() -> i32 {
    global1 = array<f32, 14>();
    var var_0 = min(-(~firstTrailingBit(u_input.a.ywx)), firstTrailingBit(_wgslsmith_sub_vec3_i32(u_input.a.xxw, vec3<i32>(u_input.a.x, -1i, -51091i)))) << (~firstTrailingBit(global2.yxw) % vec3<u32>(32u));
    var var_1 = func_5(abs(countOneBits(~vec2<i32>(u_input.a.x, 1i)) << (func_4(func_2(Struct_2(68920u, 1637f), Struct_2(global2.x, 1000f), vec3<f32>(global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(39357u, 14u)], global1[_wgslsmith_index_u32(global2.x, 14u)]), vec2<f32>(678f, 2210f)), Struct_2(global2.x, 1583f), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, u_input.a.x), vec2<i32>(2147483647i, u_input.a.x))) % vec2<u32>(32u))));
    var var_2 = Struct_1(~vec2<u32>(~(0u << (global2.x % 32u)), 8972u));
    global2 = vec4<u32>(_wgslsmith_mod_u32(global2.x, ~abs(0u << (global2.x % 32u))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 3788u), vec2<u32>(~_wgslsmith_mod_u32(var_2.a.x, 0u), ~global2.x)), 4294967295u, 1u);
    return ~var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 14>();
    var var_0 = _wgslsmith_sub_i32(1i, _wgslsmith_clamp_i32(u_input.a.x, func_1(), u_input.a.x));
    global1 = array<f32, 14>();
    global1 = array<f32, 14>();
    var var_1 = _wgslsmith_sub_vec3_u32(min(global2.xyw, global2.wwx), ~vec3<u32>(global2.x, ~(~global2.x), global2.x));
    var_1 = abs(~_wgslsmith_sub_vec3_u32(global2.wzx, global2.wxx) ^ (firstLeadingBit(vec3<u32>(0u, 64839u, global2.x)) & ~global2.xyz)) | ~(~(~vec3<u32>(var_1.x, 4294967295u, global2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(firstTrailingBit(0u), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, var_1.x, 1u, var_1.x), vec4<u32>(var_1.x, global2.x, var_1.x, 12431u)) | ~global2.x)), ~vec2<u32>(abs(33501u), 63010u), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(reverseBits(79095u), 14u)] + _wgslsmith_f_op_f32(trunc(1272f))), 227f, -1817f, -395f))), vec2<i32>(-u_input.a.x, u_input.a.x) | vec2<i32>(-13825i, -13746i));
}

