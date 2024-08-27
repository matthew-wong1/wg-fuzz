struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 14>;

var<private> global1: vec4<i32> = vec4<i32>(1i, -75856i, 32291i, 2147483647i);

var<private> global2: vec4<u32> = vec4<u32>(1531u, 4294967295u, 169523u, 27856u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: i32, arg_3: vec2<i32>) -> u32 {
    let var_0 = Struct_1(595f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-671f * -768f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -381f))) - _wgslsmith_div_f32(-904f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2235f + 887f) - -684f))), vec3<f32>(-481f, -1000f, 1321f), vec2<i32>(arg_3.x, 9860i));
    global0 = array<vec3<u32>, 14>();
    global1 = _wgslsmith_clamp_vec4_i32(select(~max(vec4<i32>(1i, 1i, -1653i, u_input.a), vec4<i32>(-1i, arg_1, -2147483647i, arg_1)), ~(countOneBits(vec4<i32>(arg_3.x, 0i, -2147483647i, -1i)) & min(vec4<i32>(arg_2, -2147483647i, 1i, -2147483647i), vec4<i32>(-16441i, arg_1, var_0.d.x, 25998i))), true), vec4<i32>(~(-arg_2), _wgslsmith_sub_i32(global1.x, 18478i) >> (arg_0 % 32u), _wgslsmith_add_i32(max(global1.x, -2147483647i), u_input.a & u_input.a), i32(-1i) * -1i) << (vec4<u32>(4294967295u, _wgslsmith_add_u32(_wgslsmith_sub_u32(global2.x, arg_0), _wgslsmith_clamp_u32(21745u, arg_0, global2.x)), global2.x, ~firstLeadingBit(9607u)) % vec4<u32>(32u)), -countOneBits(vec4<i32>(-2147483647i, 19900i, -2147483647i, -2147483647i)) ^ vec4<i32>(arg_3.x ^ 1i, global1.x, ~global1.x >> (arg_0 % 32u), u_input.a));
    let var_1 = var_0;
    global1 = ~select(-(~max(vec4<i32>(var_1.d.x, global1.x, arg_3.x, -1i), vec4<i32>(arg_3.x, -2147483647i, -1i, -1i))), vec4<i32>(1i & global1.x, -firstTrailingBit(2147483647i), var_1.d.x, var_1.d.x), true);
    return ~_wgslsmith_dot_vec3_u32(global2.wyw, vec3<u32>(~global2.x, firstLeadingBit(~62411u), (global2.x & 67268u) | firstLeadingBit(0u)));
}

fn func_3() -> vec2<u32> {
    global2 = firstTrailingBit(min(reverseBits(abs(~vec4<u32>(global2.x, global2.x, global2.x, 1593u))), vec4<u32>(global2.x ^ 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, global2.x, 0u, 1u), countOneBits(vec4<u32>(4294967295u, 29337u, 0u, 21736u))), ~(~0u), 0u)));
    global2 = abs(countOneBits(~(countOneBits(vec4<u32>(45740u, global2.x, global2.x, 68705u)) ^ (vec4<u32>(global2.x, global2.x, 0u, global2.x) & vec4<u32>(global2.x, global2.x, 1u, global2.x)))));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(300f - 309f)))), _wgslsmith_div_f32(-781f, 1f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(103f)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1535f)) + 475f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 921f) - _wgslsmith_f_op_f32(step(397f, -389f))), -622f))), global1.zz);
    let var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(global2.x, max(global2.x, reverseBits(global2.x)), 48334u) | vec3<u32>(0u, max(global2.x, global2.x), global2.x), vec3<u32>(firstLeadingBit(13739u), 68928u, 0u));
    global0 = array<vec3<u32>, 14>();
    return ~_wgslsmith_mod_vec2_u32(~firstTrailingBit(global2.yx ^ vec2<u32>(52303u, 1u)), var_1.yy);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> f32 {
    global2 = vec4<u32>(~72839u, 30663u, 1u, ~global2.x);
    global0 = array<vec3<u32>, 14>();
    global0 = array<vec3<u32>, 14>();
    var var_0 = global2.x;
    var var_1 = Struct_1(arg_1.b, _wgslsmith_f_op_f32(f32(-1f) * -115f), arg_0, _wgslsmith_sub_vec2_i32(-select(global1.ww, vec2<i32>(-1i, 3542i), false), arg_1.d << (func_3() % vec2<u32>(32u))));
    return _wgslsmith_f_op_f32(200f * arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(0u, global2.x);
    global2 = countOneBits(reverseBits(~vec4<u32>(_wgslsmith_add_u32(global2.x, global2.x), abs(1u), 1u, global2.x)));
    let var_1 = _wgslsmith_add_u32(_wgslsmith_mod_u32(func_1(38009u, -22550i, abs(2147483647i), ~global1.wy), global2.x), _wgslsmith_div_u32(16597u, global2.x)) | func_1(~33861u, -u_input.a, -1i, vec2<i32>(37749i, firstLeadingBit(global1.x) ^ (-39520i << (global2.x % 32u))));
    var var_2 = Struct_1(2224f, _wgslsmith_f_op_f32(step(1188f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(125f))))))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(355f + _wgslsmith_f_op_f32(f32(-1f) * -659f)), 607f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2183f, 977f)))), vec3<f32>(_wgslsmith_f_op_f32(func_2(vec3<f32>(-2378f, 203f, -1090f), Struct_1(278f, -106f, vec3<f32>(551f, 416f, 499f), vec2<i32>(u_input.a, u_input.a)))), _wgslsmith_f_op_f32(-1050f - _wgslsmith_div_f32(1362f, 469f)), _wgslsmith_f_op_f32(floor(668f))))), (vec2<i32>(-1i) * -global1.yy) | _wgslsmith_mod_vec2_i32(vec2<i32>(~u_input.a, u_input.a), global1.yz ^ (vec2<i32>(-2147483647i, global1.x) >> (global2.yx % vec2<u32>(32u)))));
    var var_3 = Struct_1(var_2.b, -697f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_2.c))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.c * vec3<f32>(var_2.b, var_2.c.x, var_2.a)) * vec3<f32>(3084f, -325f, var_2.c.x)))), select(var_2.d, ~global1.wz, true | select(all(vec4<bool>(true, false, false, true)), any(vec3<bool>(true, true, true)), true)));
    let var_4 = !(!(!select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)))));
    global0 = array<vec3<u32>, 14>();
    let var_5 = _wgslsmith_mult_i32(0i, _wgslsmith_mod_i32(-13120i, ~(~(global1.x >> (global2.x % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.a), -209f, _wgslsmith_f_op_f32(round(var_2.a)), _wgslsmith_f_op_f32(max(var_3.a, var_2.c.x)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.a, -1252f, var_3.a, var_3.a), vec4<f32>(var_2.c.x, 1224f, 1961f, -138f), vec4<bool>(true, false, false, false))))))), (_wgslsmith_mod_u32(max(53873u, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1, global2.x, 0u), vec4<u32>(15422u, var_1, 0u, global2.x))) >> (func_3().x % 32u)) ^ global2.x, -var_3.d.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.c.x), 2225f)), vec2<u32>(1u, ~reverseBits(var_1)));
}

