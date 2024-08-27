struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<i32>, 18>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(Struct_1(global0.a), Struct_1(global0.a), Struct_1(true || global0.a));
    global0 = var_0.c;
    var var_1 = var_0;
    let var_2 = true;
    var var_3 = true;
    return var_1.b;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: u32) -> vec2<u32> {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(2007f - 252f), !arg_2.a)), -1683f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1704f), 855f, -1000f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-445f * -129f), 1f, _wgslsmith_f_op_f32(round(553f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1255f, -928f, -255f) + vec3<f32>(-1033f, -1853f, 495f))), all(vec4<bool>(false, false, false, false))))));
    var var_1 = Struct_1(true);
    var var_2 = _wgslsmith_clamp_i32(u_input.a, ~u_input.a, u_input.b.x) | ~(-11272i);
    var var_3 = Struct_1(true);
    let var_4 = arg_2;
    return arg_0.xz << (arg_0.xz % vec2<u32>(32u));
}

fn func_1() -> Struct_1 {
    var var_0 = global0.a;
    global1 = array<vec2<i32>, 18>();
    var var_1 = ~(~abs(reverseBits(vec2<u32>(8774u, 49377u))) >> (abs(func_3(vec4<u32>(1708u, 31722u, 64943u, 2905u), vec4<bool>(global0.a, true, global0.a, true), func_2(), _wgslsmith_mult_u32(16218u, 3606u))) % vec2<u32>(32u)));
    var var_2 = ~max(var_1.x, ~(var_1.x << (0u % 32u))) ^ 1u;
    let var_3 = vec4<i32>(_wgslsmith_mult_i32(~firstLeadingBit(-1i), ~u_input.a) >> ((~25951u >> (~(~var_1.x) % 32u)) % 32u), abs(-2147483647i), 39003i, u_input.a);
    return Struct_1(any(!vec3<bool>(var_3.x == var_3.x, all(vec3<bool>(false, global0.a, global0.a)), all(vec3<bool>(false, true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(!(_wgslsmith_dot_vec3_i32(-vec3<i32>(27994i, 11092i, -2147483647i), ~vec3<i32>(-2147483647i, u_input.b.x, u_input.a)) <= 9994i));
    let var_0 = func_1();
    var var_1 = select(reverseBits(vec3<i32>(~u_input.a, abs(1i), ~22946i) | reverseBits(vec3<i32>(2147483647i, u_input.a, 13056i) | vec3<i32>(28661i, -51229i, u_input.b.x))), firstLeadingBit(vec3<i32>(2147483647i, 8654i, select(u_input.b.x, -64272i, true))) << (~(~(~vec3<u32>(4294967295u, 1u, 26436u))) % vec3<u32>(32u)), !any(select(vec4<bool>(global0.a, var_0.a, global0.a, false), !vec4<bool>(true, var_0.a, true, global0.a), select(vec4<bool>(true, true, false, global0.a), vec4<bool>(true, true, false, var_0.a), var_0.a))));
    var var_2 = Struct_2(func_1(), var_0, Struct_1(!var_0.a));
    global1 = array<vec2<i32>, 18>();
    var var_3 = -863f;
    let x = u_input.a;
    s_output = StorageBuffer(-743f, _wgslsmith_add_i32(abs(~var_1.x), ~(u_input.a << (43017u % 32u)) ^ max(firstTrailingBit(var_1.x), u_input.b.x)), max(min(-vec2<i32>(u_input.a, -935i), var_1.xy), vec2<i32>(-28250i, -2147483647i) << (select(vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 24708u), !vec2<bool>(global0.a, false)) % vec2<u32>(32u))), select(abs(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1u, 29413u, 1u)), vec3<u32>(80565u, 20889u, 1u))), 107282u, !var_2.b.a));
}

