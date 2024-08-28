struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<i32>;

var<private> global2: i32 = 22913i;

var<private> global3: Struct_1;

var<private> global4: array<vec2<i32>, 30>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<u32> {
    let var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~(~vec3<u32>(33704u, global3.b.x, 25067u)), select(vec3<u32>(global0.b.x, 8901u, global0.a) ^ global3.b.zyz, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 25732u, global3.b.x), global0.b.wwy, u_input.a.zxz), vec3<bool>(false, true, false))), global0.b.yxz >> (global3.b.zwx % vec3<u32>(32u))) >> (17676u % 32u);
    global1 = _wgslsmith_div_vec4_i32(-(~(~_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.x, -85526i, -19475i, global1.x), vec4<i32>(-2147483647i, u_input.d.x, global1.x, global1.x), vec4<i32>(global1.x, global1.x, 15934i, 1428i)))), vec4<i32>(global1.x, global1.x, _wgslsmith_mod_i32(firstTrailingBit(1i), abs(-10882i)), -(~u_input.d.x)) | abs(vec4<i32>(1i, u_input.d.x, 13193i, -global1.x)));
    var var_1 = ~(min(min(~vec4<i32>(-2147483647i, u_input.d.x, global1.x, u_input.d.x), _wgslsmith_div_vec4_i32(vec4<i32>(global1.x, 0i, 2972i, u_input.d.x), vec4<i32>(-2147483647i, u_input.d.x, 0i, global1.x))), -vec4<i32>(global1.x, -2147483647i, 1i, 40554i)) << (reverseBits(vec4<u32>(0u, var_0, ~6896u, ~global3.a)) % vec4<u32>(32u)));
    var var_2 = Struct_1(u_input.c, ~(countOneBits(vec4<u32>(5391u, u_input.b, var_0, global3.b.x)) ^ u_input.a));
    var var_3 = vec2<i32>(u_input.d.x, 2147483647i);
    return select((~vec4<u32>(4294967295u, 2908u, global3.b.x, 7177u) & vec4<u32>(countOneBits(var_2.a), var_2.a, ~4294967295u, 76285u)) & vec4<u32>(_wgslsmith_mod_u32(u_input.c, 36265u), 7807u, 1u, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a.x, 4294967295u)), vec2<u32>(global3.b.x, global3.a))), vec4<u32>(min(var_2.b.x, 4294967295u), ~_wgslsmith_mod_u32(global3.a, u_input.c), (73940u >> (global3.b.x % 32u)) & max(global3.b.x, u_input.a.x), 1u) ^ global0.b, all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true))));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: f32) -> Struct_1 {
    global2 = arg_0;
    var var_0 = Struct_1(firstTrailingBit(~(~1u)), vec4<u32>(~reverseBits(~1u), ~u_input.b, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(global0.a, 90932u, 4294967295u, 50586u)), ~global0.b ^ func_3()), u_input.b));
    var var_1 = global0.b.yzz;
    var var_2 = Struct_1(min(0u, 4294967295u >> (_wgslsmith_div_u32(var_1.x, 20695u) % 32u)), u_input.a);
    let var_3 = ~_wgslsmith_mod_u32(global0.b.x, 1u);
    return Struct_1(0u, vec4<u32>(30603u, global0.a, var_1.x, 19929u));
}

fn func_1() -> Struct_1 {
    global3 = func_2(0i, _wgslsmith_f_op_f32(1672f + _wgslsmith_f_op_f32(-1654f - -1670f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1415f, -936f))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1745f - 571f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -451f, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-551f, _wgslsmith_div_f32(1177f, -2008f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(782f + -2026f), _wgslsmith_f_op_f32(select(-431f, -851f, true)), true)))));
    global3 = func_2(firstLeadingBit(max(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, 2147483647i, global1.x, -7380i), vec4<i32>(global1.x, 10556i, u_input.d.x, -29527i))), -2147483647i ^ -global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -397f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-964f + 1467f) - _wgslsmith_f_op_f32(round(674f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-293f, _wgslsmith_f_op_f32(1669f - -335f))))));
    let var_0 = ~(13843i >> (u_input.b % 32u)) | global1.x;
    global1 = vec4<i32>(u_input.d.x, -35460i, _wgslsmith_div_i32(-52725i, var_0), -var_0);
    global1 = reverseBits(vec4<i32>(_wgslsmith_mult_i32(global1.x, global1.x), u_input.d.x, -2147483647i, u_input.d.x) & ~(-_wgslsmith_mod_vec4_i32(vec4<i32>(16792i, 15581i, -8821i, -9801i), vec4<i32>(2147483647i, var_0, global1.x, -13415i))));
    return Struct_1(61525u, min(u_input.a, global0.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(380f, -826f)))));
    global3 = func_1();
    let var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.yw, vec2<u32>(u_input.a.x, reverseBits(1u))), global3.b.zx), global0.b.zw);
    var var_2 = _wgslsmith_mod_u32(~(~abs(firstTrailingBit(22998u))), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.a), global1.x, 29417u, ~(~(-62136i)));
}

