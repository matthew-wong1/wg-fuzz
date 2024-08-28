struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: vec4<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-873i, -17059i, 38736i);

var<private> global1: array<vec4<u32>, 16>;

var<private> global2: f32 = 173f;

var<private> global3: vec3<u32> = vec3<u32>(4294967295u, 17774u, 58471u);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec3<f32>, arg_3: Struct_5) -> vec3<u32> {
    let var_0 = ~min(vec3<u32>(1u, _wgslsmith_clamp_u32(global3.x, _wgslsmith_mult_u32(0u, global3.x), max(u_input.c, global3.x)), u_input.e.x), vec3<u32>(1u, ~max(64064u, u_input.a.x), global3.x));
    var var_1 = arg_3;
    let var_2 = -global0.x;
    var var_3 = vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(abs(4927i), 1i) << (_wgslsmith_add_u32(78753u & var_0.x, abs(0u)) % 32u), 1i), reverseBits(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-14437i, -41802i, u_input.b), -vec3<i32>(2147483647i, -2147483647i, 2147483647i)), vec3<i32>(0i, var_2, global0.x))), ~0i, ~firstTrailingBit(1i));
    let var_4 = ~var_0.x;
    return _wgslsmith_sub_vec3_u32(~(~vec3<u32>(2418u, 0u, var_4)), var_0) & vec3<u32>(23452u, ~4294967295u, 43372u);
}

fn func_2() -> vec3<i32> {
    global0 = _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, u_input.b, global0.x) << (~u_input.a % vec3<u32>(32u)), ~(~vec3<i32>(u_input.b, 1i, global0.x))) << (~firstTrailingBit(vec3<u32>(global3.x, u_input.d.x, 59043u) << (u_input.a % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<i32>(-13029i, 1i, 0i));
    var var_0 = Struct_5(_wgslsmith_f_op_f32(1522f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2205f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2172f)) - -345f), true))));
    var var_1 = ~(~(~max(~global3.x, 24428u << (u_input.e.x % 32u))));
    var var_2 = Struct_5(_wgslsmith_f_op_f32(abs(-1163f)));
    let var_3 = min(-17140i, -29876i);
    return firstTrailingBit((_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, global0.x, var_3), vec3<i32>(0i, u_input.b, -2147483647i)) | _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-3660i, global0.x, u_input.b), vec3<i32>(u_input.b, var_3, u_input.b)), vec3<i32>(-1i, u_input.b, u_input.b), ~vec3<i32>(u_input.b, -15703i, -1i))) & (~max(vec3<i32>(u_input.b, -1i, var_3), vec3<i32>(-20221i, u_input.b, u_input.b)) & (vec3<i32>(var_3, 0i, -29275i) << (func_3(var_0.a, var_0.a, vec3<f32>(231f, var_0.a, var_0.a), Struct_5(220f)) % vec3<u32>(32u)))));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(380f))), arg_1.x, 1000f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -721f, 1980f, 720f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-983f, 1413f, -650f, arg_1.x)))))))));
    global1 = array<vec4<u32>, 16>();
    global1 = array<vec4<u32>, 16>();
    let var_1 = Struct_2((_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -49488i, -10571i) ^ vec3<i32>(global0.x, 15793i, 1i), countOneBits(vec3<i32>(0i, u_input.b, global0.x)), func_2()) << (_wgslsmith_mult_vec3_u32(vec3<u32>(2504u, 4294967295u, global3.x) & u_input.a, _wgslsmith_mod_vec3_u32(u_input.a, u_input.a)) % vec3<u32>(32u))) << (_wgslsmith_add_vec3_u32(reverseBits(u_input.a) << (~u_input.a % vec3<u32>(32u)), vec3<u32>(u_input.e.x | global3.x, 14767u, _wgslsmith_sub_u32(1u, global3.x))) % vec3<u32>(32u)), Struct_1(_wgslsmith_sub_vec2_i32(~vec2<i32>(global0.x, global0.x) << (vec2<u32>(70237u, u_input.a.x) % vec2<u32>(32u)), global0.yx), ~(~vec2<u32>(global3.x, 0u)), true, false));
    var var_2 = -1i != _wgslsmith_div_i32(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, u_input.b) | global0.xx, ~vec2<i32>(global0.x, u_input.b))), _wgslsmith_mod_i32(4044i, _wgslsmith_dot_vec3_i32(var_1.a, countOneBits(vec3<i32>(global0.x, -1i, -11603i)))));
    return 1009f;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -405f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 2026f, 417f, 896f)))) * _wgslsmith_f_op_f32(f32(-1f) * -735f))));
}

