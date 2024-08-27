struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<i32>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<u32> {
    var var_0 = _wgslsmith_mult_i32(0i, global1.x);
    let var_1 = Struct_1(~_wgslsmith_sub_u32(u_input.b, abs(~0u)), ~(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 1u), ~vec2<u32>(28903u, 79929u)) >> (vec2<u32>(u_input.b, 1u) % vec2<u32>(32u))), _wgslsmith_f_op_f32(trunc(475f)));
    let var_2 = _wgslsmith_mod_u32(_wgslsmith_div_u32(firstLeadingBit(max(32766u, u_input.a)), _wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(31960u, 4294967295u, 530u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(38273u, var_1.a, var_1.a)) | min(var_1.b.x, u_input.b), 4294967295u)), u_input.a);
    let var_3 = vec4<bool>(!(!(-13376i < _wgslsmith_clamp_i32(global1.x, global1.x, global1.x))), true, true, true & any(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)));
    let var_4 = var_3.x;
    return vec4<u32>(~68981u, var_1.b.x, _wgslsmith_clamp_u32(var_2, countOneBits(~var_2), _wgslsmith_dot_vec3_u32(~(vec3<u32>(var_1.b.x, 43756u, 4294967295u) & vec3<u32>(var_1.a, 4294967295u, u_input.a)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, var_2, u_input.a) ^ vec3<u32>(55476u, 11262u, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(var_2, 26632u, 25032u), vec3<u32>(48294u, 1u, var_1.a)), select(vec3<u32>(var_2, 4294967295u, var_2), vec3<u32>(16665u, var_2, u_input.b), var_3.x)))), var_1.a);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1) -> f32 {
    let var_0 = firstTrailingBit(~(max(vec4<u32>(u_input.b, 0u, 4294967295u, u_input.a), vec4<u32>(arg_1.b.x, 4294967295u, 1u, arg_1.b.x)) ^ ~vec4<u32>(92835u, 52124u, 4294967295u, u_input.b)) & (func_3() >> (vec4<u32>(~4294967295u, u_input.a, _wgslsmith_sub_u32(arg_1.a, u_input.b), ~85524u) % vec4<u32>(32u))));
    let var_1 = -_wgslsmith_add_vec3_i32(~firstTrailingBit(vec3<i32>(59025i, 2147483647i, 2147483647i)) | vec3<i32>(-1i, global1.x, firstLeadingBit(global1.x)), -(vec3<i32>(global1.x, -2147483647i, 2811i) ^ abs(vec3<i32>(2147483647i, 14734i, -2147483647i))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-911f, -751f)), vec2<f32>(arg_1.c, arg_1.c))))) - vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.c))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -189f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.c), 240f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1.c, 1000f), vec2<f32>(-1081f, arg_1.c))), vec2<bool>(all(arg_0), arg_0.x)))));
    let var_3 = Struct_1(114107u, arg_1.b, -476f);
    var var_4 = Struct_1(~max(4294967295u, _wgslsmith_sub_u32(func_3().x, u_input.a)), _wgslsmith_add_vec2_u32(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(50906u, u_input.b), vec2<u32>(var_0.x, 0u))), vec2<u32>(~var_3.b.x, ~var_0.x)), _wgslsmith_f_op_f32(min(-674f, 506f)));
    return -1034f;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> vec2<i32> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<bool>(false, false, false, false), Struct_1(arg_0.b.x, arg_0.b, arg_0.c))))));
    var var_0 = global1.x;
    let var_1 = abs(_wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_2.b.x, 0u, 45218u), vec4<u32>(u_input.b, 75173u, u_input.b, u_input.a)), vec4<u32>(u_input.a, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 52706u, 1u, u_input.a), vec4<u32>(u_input.a, arg_0.a, 1u, u_input.a)), u_input.b)) >> (_wgslsmith_mod_vec4_u32(~abs(vec4<u32>(6414u, arg_2.b.x, arg_0.a, u_input.a)), ~vec4<u32>(15029u, 12452u, u_input.a, u_input.b)) % vec4<u32>(32u)));
    let var_2 = func_3().x;
    var var_3 = Struct_1(~(func_3().x & 15027u), _wgslsmith_div_vec2_u32(vec2<u32>(var_1.x, _wgslsmith_sub_u32(~0u, arg_0.b.x)), arg_2.b), _wgslsmith_f_op_f32(round(-667f)));
    return abs(-countOneBits(vec2<i32>(global1.x, global1.x))) << (countOneBits(vec2<u32>(0u << (reverseBits(0u) % 32u), _wgslsmith_dot_vec3_u32(var_1.yzx, vec3<u32>(var_2, var_1.x, 0u)))) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(154f * -183f);
    var var_1 = -vec4<i32>(global1.x, -2147483647i, 9491i, global1.x);
    var var_2 = max(var_1.xy ^ (~global1.zy ^ _wgslsmith_div_vec2_i32(func_1(Struct_1(13792u, vec2<u32>(23879u, u_input.a), 1672f), vec4<f32>(-383f, -814f, -1000f, 729f), Struct_1(u_input.b, vec2<u32>(1u, 4294967295u), -1680f)), -global1.yx)), -(vec2<i32>(_wgslsmith_add_i32(global1.x, global1.x), min(var_1.x, 1i)) ^ (vec2<i32>(-1i) * -global1.yy)));
    let var_3 = Struct_1(~73990u, firstLeadingBit(~firstTrailingBit(vec2<u32>(u_input.a, 4294967295u))) ^ ~select(~vec2<u32>(29327u, 0u), min(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.b, u_input.b)), true), _wgslsmith_f_op_f32(f32(-1f) * -1310f));
    var_1 = _wgslsmith_clamp_vec4_i32(firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(8136i, var_2.x, var_1.x, var_2.x), abs(vec4<i32>(2147483647i, 2147483647i, var_2.x, 2147483647i)))), -_wgslsmith_add_vec4_i32(max(vec4<i32>(var_1.x, var_2.x, -21264i, 9124i), vec4<i32>(var_1.x, 0i, 7195i, 1i)), -vec4<i32>(var_2.x, -2147483647i, -2147483647i, var_2.x)), abs(firstTrailingBit(vec4<i32>(var_1.x, -30755i, 0i, global1.x))) ^ abs(~vec4<i32>(var_2.x, global1.x, -8298i, global1.x))) & ~abs(vec4<i32>(max(48317i, -17301i), 2147483647i, -2147483647i, -15860i));
    global0 = var_3.c;
    var var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec3<u32>(u_input.b, 1u, ~(~u_input.b)) ^ (vec3<u32>(func_3().x, ~12535u, 1u) | vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_3.b.x, var_4.b.x), vec3<u32>(u_input.b, 0u, 0u)), var_4.b.x, ~var_3.b.x)), _wgslsmith_div_u32(1u, 76370u), -17015i);
}

