struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: Struct_1,
    d: vec3<u32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec3<f32>, 19>;

var<private> global2: vec4<f32>;

var<private> global3: array<f32, 16>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: bool, arg_3: i32) -> vec3<bool> {
    global1 = array<vec3<f32>, 19>();
    global1 = array<vec3<f32>, 19>();
    global1 = array<vec3<f32>, 19>();
    var var_0 = firstTrailingBit(-(~_wgslsmith_mod_i32(select(arg_3, 21682i, arg_2), -u_input.b.x)));
    let var_1 = vec2<u32>(arg_1, 52509u) | select(_wgslsmith_div_vec2_u32(~max(vec2<u32>(33900u, arg_1), vec2<u32>(54048u, arg_1)), ~countOneBits(vec2<u32>(arg_1, 0u))), vec2<u32>(~62130u, ~arg_1 ^ ~1u), select(!arg_0.yy, arg_0.wz, vec2<bool>(true, true)));
    return arg_0.ywx;
}

fn func_3() -> u32 {
    return 38830u;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: u32, arg_3: vec4<f32>) -> u32 {
    var var_0 = true;
    let var_1 = Struct_2(1u, select(!vec2<bool>(all(vec4<bool>(global0.x, false, false, global0.x)), !global0.x), vec2<bool>(all(func_1(vec4<bool>(arg_1.x, global0.x, arg_1.x, arg_1.x), arg_2, false, -1i).zy), true), u_input.c >= u_input.c), Struct_1(select(0u, abs(arg_2), global0.x) ^ reverseBits(63678u), ~(vec4<u32>(arg_2, 13949u, 6504u, 31426u) | vec4<u32>(arg_2, arg_0.x, 4294967295u, arg_0.x)) << (vec4<u32>(1u, arg_0.x, 0u, 0u) % vec4<u32>(32u))), _wgslsmith_mod_vec3_u32(vec3<u32>(firstLeadingBit(0u), select(arg_0.x, arg_2, global0.x), arg_0.x), vec3<u32>(44635u, 4294967295u, ~arg_2)) | (abs(~vec3<u32>(arg_0.x, arg_2, arg_2)) & vec3<u32>(arg_0.x, _wgslsmith_clamp_u32(1u, 1u, 17293u), 0u)), -2147483647i);
    global0 = !(!(!select(arg_1, !arg_1, any(vec4<bool>(global0.x, false, var_1.b.x, true)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(1u, 16u)], global2.x), _wgslsmith_f_op_f32(f32(-1f) * -641f), var_1.b.x || true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-916f, -531f, arg_1.x))))), vec2<f32>(-194f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1506f))))));
    let var_3 = Struct_2(var_1.c.b.x, arg_1.xz, var_1.c, _wgslsmith_div_vec3_u32(abs(select(vec3<u32>(43771u, 36416u, arg_0.x), vec3<u32>(4294967295u, arg_2, var_1.c.a), vec3<bool>(false, false, true))), vec3<u32>(~arg_2, max(arg_2, var_1.c.a), abs(9425u))) & vec3<u32>(~(4294967295u >> (var_1.d.x % 32u)), arg_0.x, 52537u), var_1.e);
    return 1u;
}

fn func_2() -> u32 {
    var var_0 = Struct_1(select(firstLeadingBit(firstLeadingBit(49012u)), 0u, global0.x), _wgslsmith_div_vec4_u32(~abs(vec4<u32>(4294967295u, 45082u, 1u, 1u)), reverseBits(vec4<u32>(1u, 1u, 1u, 1u))) << ((vec4<u32>(1u, 1u, 1u, 1u) << (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(~(~(~u_input.a)), -6466i), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(-(u_input.b.wy << (vec2<u32>(11289u, 0u) % vec2<u32>(32u))), abs(vec2<i32>(1i, u_input.b.x))), u_input.b.yx));
    let var_2 = ~16428u & ~func_4(_wgslsmith_sub_vec3_u32(reverseBits(var_0.b.yww), vec3<u32>(81068u, 1u, 42263u) | var_0.b.wzz), vec3<bool>(global0.x, true, !global0.x), func_3(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -475f, 1000f, global2.x))));
    var var_3 = Struct_1(var_2, vec4<u32>(var_0.b.x, ~(~var_2), select(1u, 52500u, any(vec2<bool>(global0.x, global0.x))), var_2));
    let var_4 = 4294967295u;
    return var_3.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~25609u, 16u)]), 713f);
    let var_1 = !func_1(select(select(vec4<bool>(false, true, true, true), select(vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(false, false, global0.x, false)), true), !select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(true, false, true, true)), true), ~reverseBits(~35922u), global0.x, 2147483647i);
    let var_2 = Struct_1(abs(_wgslsmith_add_u32(~(~1u), 1u)), ~(~vec4<u32>(1u, 1u, 1u, 1u)));
    var var_3 = firstTrailingBit(0u);
    global3 = array<f32, 16>();
    let var_4 = vec4<u32>(reverseBits(_wgslsmith_clamp_u32(func_2(), ~var_2.a, ~4294967295u) ^ 0u), 11976u, ~1u, ~(~20020u << (~(~var_2.a) % 32u)));
    var var_5 = 22719i ^ _wgslsmith_add_i32(u_input.b.x, u_input.c);
    var_0 = -1131f;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.x);
}

