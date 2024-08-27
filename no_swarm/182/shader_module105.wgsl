struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> u32 {
    global0 = arg_0;
    let var_0 = ~1i;
    global0 = arg_0;
    global1 = arg_0;
    global1 = arg_0;
    return ~32949u;
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = any(!vec3<bool>(global1.c.x, (true | global0.c.x) | arg_0, global1.c.x));
    var_0 = any(!vec2<bool>(true, global0.c.x));
    return Struct_1(687f, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1344f))), global1.b.x, -792f) - vec3<f32>(1463f, -462f, -1016f)), vec4<bool>(false, global1.c.x, any(global1.c.zwy), false));
}

fn func_1() -> bool {
    let var_0 = func_3(global0.c.x, u_input.b.x, _wgslsmith_add_vec4_i32(~select(u_input.b, vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, u_input.b.x), vec4<bool>(global1.c.x, false, false, true)) >> (vec4<u32>(~u_input.d, firstTrailingBit(u_input.d), ~0u, func_2(Struct_1(global1.a, vec3<f32>(global1.a, global0.b.x, global1.b.x), vec4<bool>(global0.c.x, false, global0.c.x, true)), 2147483647i)) % vec4<u32>(32u)), -u_input.b));
    let var_1 = firstLeadingBit(u_input.b.ww) & abs(vec2<i32>(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x) << ((u_input.d >> (45261u % 32u)) % 32u), -u_input.b.x));
    let var_2 = !vec4<bool>(~1i == -(2147483647i << (u_input.a % 32u)), global0.c.x, global1.c.x, true);
    global1 = var_0;
    let var_3 = var_0.c;
    return any(vec3<bool>(~max(u_input.c, u_input.c) >= ~(u_input.a >> (u_input.c % 32u)), true, u_input.c <= 21870u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    var var_1 = _wgslsmith_f_op_f32(trunc(global1.b.x));
    let var_2 = select(vec3<bool>(global0.c.x, all(!(!vec4<bool>(false, false, false, global0.c.x))), any(vec3<bool>(!global1.c.x, global1.c.x, global0.c.x))), select(!select(select(global1.c.zyy, global1.c.yyx, false), global0.c.yxz, any(global0.c.yxx)), select(global1.c.yzy, select(global0.c.zzy, select(vec3<bool>(global0.c.x, global0.c.x, false), global1.c.yyy, global1.c.wxy), global1.a == global0.a), global1.c.x), true), vec3<bool>(false, !(_wgslsmith_f_op_f32(select(global1.a, -572f, global0.c.x)) >= _wgslsmith_f_op_f32(-global0.a)), !(!func_1())));
    var_1 = 1f;
    var_1 = _wgslsmith_f_op_f32(global1.a + global0.a);
    let var_3 = vec4<i32>(-(~1060i), reverseBits(-18926i << (_wgslsmith_mult_u32(~u_input.e, ~1315u) % 32u)), _wgslsmith_dot_vec4_i32(-vec4<i32>(-7728i, var_0, min(u_input.b.x, var_0), var_0), -abs(u_input.b)), _wgslsmith_dot_vec3_i32(vec3<i32>(17979i, ~var_0, 1i), u_input.b.zzz) | ~(-u_input.b.x));
    global0 = Struct_1(global0.b.x, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(638f + global0.b.x) * global1.a), global1.b.x, _wgslsmith_f_op_f32(func_3(true, u_input.b.x, vec4<i32>(-1i, -25973i, -10300i, var_0)).b.x - global1.b.x)), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-690f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.b.x, global1.a))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1830f), _wgslsmith_f_op_f32(185f - global0.a)))))), global1.c);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.d, global1.b.xy, abs(firstTrailingBit(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 7143u), vec2<u32>(u_input.a, 1u), vec2<u32>(28415u, 34320u)), select(vec2<u32>(u_input.a, u_input.c), vec2<u32>(44930u, 1u), var_2.x), firstTrailingBit(vec2<u32>(4294967295u, 1u))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global0.b), _wgslsmith_f_op_vec3_f32(-global1.b))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-191f, 1827f, global1.b.x, -1000f), vec4<f32>(global0.a, -303f, -194f, global1.a)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.b.x, 508f, global0.b.x, -489f), vec4<f32>(1096f, global1.b.x, global1.b.x, global1.a)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(ceil(global0.a)), _wgslsmith_div_f32(326f, -181f), _wgslsmith_f_op_f32(global1.a * 111f))))));
}

