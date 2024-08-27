struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    global0 = Struct_1(vec2<u32>(0u, ~(~global0.a.x)));
    let var_0 = Struct_2(global0.a.x, Struct_1(vec2<u32>(~_wgslsmith_clamp_u32(u_input.a.x, 6102u, global0.a.x), ~42908u)));
    global0 = Struct_1(vec2<u32>(_wgslsmith_div_u32(abs(var_0.a | 1u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.x, 4294967295u), vec2<u32>(var_0.a, u_input.b.x))), var_0.a));
    var var_1 = var_0;
    global0 = var_1.b;
    return Struct_2(0u, Struct_1(~(~select(var_0.b.a, global0.a, true))));
}

fn func_3(arg_0: u32) -> vec2<u32> {
    global0 = Struct_1(countOneBits(~u_input.a.zx) | global0.a);
    global0 = func_2(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, u_input.d.x, 50130i), -u_input.e)), u_input.d.yxw)).b;
    global0 = Struct_1(~_wgslsmith_sub_vec2_u32(~global0.a, vec2<u32>(1u, 4294967295u)));
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-1480f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2037f * -490f), _wgslsmith_f_op_f32(ceil(-1764f)))), true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(825f, -274f, true))))))));
    let var_1 = -1i;
    return u_input.a.xz;
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    let var_0 = func_2(u_input.d.xzw);
    global0 = var_0.b;
    let var_1 = ~min(_wgslsmith_mod_vec2_u32(func_3(global0.a.x), global0.a) | var_0.b.a, ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, global0.a.x), u_input.b));
    return arg_0;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(_wgslsmith_add_i32(~_wgslsmith_sub_i32(98897i, u_input.c), u_input.c) | abs(0i), u_input.d.x, u_input.c | -22923i, select(i32(-1i) * -1i, u_input.d.x >> (_wgslsmith_div_u32(countOneBits(111773u), 45009u) % 32u), true));
    var var_1 = func_4(func_1(Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-403f, 1047f, -407f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(696f, -184f, -2128f), vec3<f32>(262f, 1450f, 449f))), vec3<bool>(true, false, true))), _wgslsmith_div_f32(-319f, 701f) <= _wgslsmith_f_op_f32(sign(-397f)))), Struct_2(global0.a.x, func_2(~(~vec3<i32>(var_0.x, var_0.x, 1i))).b), Struct_2(22418u, Struct_1(firstTrailingBit(vec2<u32>(u_input.b.x, 1u)))));
    let var_2 = Struct_1(countOneBits(var_1.b.a));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-903f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1638f) * _wgslsmith_div_f32(1821f, 1470f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1537f) + _wgslsmith_f_op_f32(select(639f, -102f, true))))));
    var var_4 = func_2(u_input.e);
    let var_5 = _wgslsmith_mod_i32(~u_input.c, -19021i);
    var var_6 = ~u_input.a.zzx;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.ww);
}

