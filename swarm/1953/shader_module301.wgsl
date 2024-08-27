struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: Struct_1 = Struct_1(false, i32(-2147483648), vec2<u32>(73418u, 1u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: u32, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(308f, arg_1.x) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_1), _wgslsmith_div_vec2_f32(arg_1, arg_1), select(vec2<bool>(true, arg_0.a), vec2<bool>(true, global1.a), global1.a)))))));
    let var_1 = arg_0;
    var var_2 = true;
    global0 = -322f;
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1, _wgslsmith_div_vec2_f32(vec2<f32>(-128f, _wgslsmith_f_op_f32(min(arg_1.x, 221f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_1, vec2<f32>(var_0.x, 278f), arg_3))))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -563f), 886f));
    return arg_0;
}

fn func_3(arg_0: vec4<bool>, arg_1: f32) -> Struct_1 {
    var var_0 = arg_1;
    global0 = _wgslsmith_f_op_f32(ceil(-309f));
    var_0 = arg_1;
    global0 = 1064f;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + arg_1) - _wgslsmith_f_op_f32(-arg_1));
    return Struct_1(false, global1.b, vec2<u32>(global1.c.x, global1.c.x) << (~firstTrailingBit(global1.c) % vec2<u32>(32u)));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = -1i;
    let var_1 = vec3<i32>(2240i, 0i, ~arg_0.x);
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-411f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-330f, 437f)))))));
    var var_2 = vec4<u32>(_wgslsmith_clamp_u32(1u, ~1u, 0u), 4748u, _wgslsmith_sub_u32(~(~global1.c.x & 0u), 42300u), ~_wgslsmith_mod_u32(_wgslsmith_div_u32(reverseBits(global1.c.x), global1.c.x | global1.c.x), global1.c.x));
    var var_3 = func_2(Struct_1(global1.a, _wgslsmith_sub_i32(-var_1.x, arg_0.x), ~(~abs(vec2<u32>(50707u, global1.c.x)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(720f, 909f))))))), var_2.x, global1.a);
    return func_3(vec4<bool>(var_3.a, var_3.a, var_3.a, global1.a), 426f);
}

fn func_4(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_1(true, arg_0.b, arg_0.c);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(580f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1546f * -1901f) * _wgslsmith_f_op_f32(round(-784f))))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-337f, -785f) - _wgslsmith_f_op_f32(-519f * -489f)))))));
    let var_2 = _wgslsmith_sub_i32(1i, 786i | (u_input.b.x & abs(countOneBits(-20399i))));
    var var_3 = !vec4<bool>(select(any(!vec2<bool>(arg_0.a, var_0.a)), true, true), true, func_3(select(!vec4<bool>(global1.a, true, global1.a, false), select(vec4<bool>(global1.a, var_0.a, var_0.a, arg_0.a), vec4<bool>(false, arg_0.a, var_0.a, arg_0.a), vec4<bool>(arg_0.a, true, true, global1.a)), arg_0.a), -210f).a, arg_0.a);
    var var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(657f, 1244f)))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1456f, -1000f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, 524f)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -139f), vec2<f32>(-461f, 549f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, -1499f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-283f, -599f) - vec2<f32>(-467f, -797f))) * vec2<f32>(_wgslsmith_f_op_f32(round(-658f)), _wgslsmith_f_op_f32(f32(-1f) * -876f))) + vec2<f32>(1f, _wgslsmith_f_op_f32(-2147f - _wgslsmith_f_op_f32(floor(1248f))))));
    return _wgslsmith_mult_i32(arg_0.b, 976i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(round(-887f));
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(992f, 1454f, 993f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1074f, 1970f), -1138f, -322f)))));
    var var_1 = Struct_1(true, func_4(func_1(_wgslsmith_div_vec2_i32(select(vec2<i32>(global1.b, 0i), u_input.b.zx, global1.a), _wgslsmith_clamp_vec2_i32(u_input.b.yx, vec2<i32>(-2147483647i, global1.b), u_input.a.zy)))), _wgslsmith_mult_vec2_u32(vec2<u32>(~0u, 4294967295u), ~global1.c) ^ global1.c);
    let var_2 = 1u << (~global1.c.x % 32u);
    let var_3 = var_0.x;
    var var_4 = var_0.x;
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))), 1075f, var_0.x);
    let var_5 = !func_3(!(!select(vec4<bool>(var_1.a, global1.a, var_1.a, true), vec4<bool>(global1.a, true, var_1.a, true), global1.a)), -216f).a;
    let var_6 = ~select(~reverseBits(~vec3<u32>(global1.c.x, global1.c.x, 0u)), ~vec3<u32>(1u, var_1.c.x >> (0u % 32u), var_2), true);
    let x = u_input.a;
    s_output = StorageBuffer(var_6, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, -1000f), vec2<f32>(-733f, -1000f))))) + vec2<f32>(449f, _wgslsmith_div_f32(-938f, 431f)))), ~(var_6.x & (~var_2 >> (_wgslsmith_dot_vec4_u32(vec4<u32>(3322u, 1u, var_1.c.x, 0u), vec4<u32>(var_1.c.x, 59373u, 63970u, 42342u)) % 32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-953f, -774f, _wgslsmith_f_op_f32(f32(-1f) * -430f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 1085f) + vec3<f32>(597f, -274f, var_0.x))))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(555f, var_0.x, 1062f))))))));
}

