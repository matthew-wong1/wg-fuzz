struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2() -> i32 {
    var var_0 = Struct_1(vec2<i32>(u_input.b.x, -u_input.b.x << (~u_input.a.x % 32u)), _wgslsmith_f_op_f32(select(-572f, -1344f, all(vec2<bool>(true, true)))), -(~vec4<i32>(1i, u_input.b.x, _wgslsmith_mult_i32(-2147483647i, u_input.b.x), -34348i & u_input.b.x)), countOneBits(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 0u, 12591u), ~u_input.a.wyy)));
    let var_1 = Struct_1(var_0.a, _wgslsmith_f_op_f32(floor(var_0.b)), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.a.x, var_0.a.x, u_input.b.x, 0i) >> (u_input.a % vec4<u32>(32u)), vec4<i32>(var_0.a.x, var_0.c.x, var_0.a.x, var_0.a.x))) << (select(reverseBits(u_input.a) >> (u_input.a % vec4<u32>(32u)), vec4<u32>(~1u, u_input.a.x, var_0.d.x >> (0u % 32u), var_0.d.x & 1u), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), true), vec4<bool>(false, true, true, false))) % vec4<u32>(32u)), vec3<u32>(_wgslsmith_clamp_u32(~41867u, max(~4294967295u, 36843u), min(u_input.a.x, 4294967295u)), var_0.d.x, countOneBits(var_0.d.x)));
    let var_2 = 1229f;
    var_0 = var_1;
    var_0 = var_1;
    return -2147483647i;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_1(arg_0, 310f, vec4<i32>(func_2(), -22769i, ~(reverseBits(2147483647i) >> (u_input.a.x % 32u)), _wgslsmith_sub_i32(-abs(-2147483647i), ~(-arg_0.x))), u_input.a.yzw);
    let var_1 = Struct_1(arg_0, _wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(-var_0.b)))), -vec4<i32>((u_input.b.x & 7674i) ^ u_input.b.x, ~firstTrailingBit(var_0.c.x), 1i, arg_0.x), ~vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(var_0.d.x, 0u), u_input.a.x), _wgslsmith_add_u32(arg_1.x, abs(arg_1.x)), _wgslsmith_add_u32(0u, var_0.d.x ^ 1u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-104f, var_1.b))), _wgslsmith_f_op_f32(-1732f * var_0.b))))));
    var_0 = var_1;
    let var_3 = 1u;
    return var_1;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_2) -> vec4<i32> {
    var var_0 = min(vec3<u32>(120660u, _wgslsmith_dot_vec3_u32(countOneBits(arg_0.d), ~(vec3<u32>(1u, 4294967295u, arg_0.d.x) | vec3<u32>(arg_2.e.d.x, 54098u, arg_0.d.x))), 24081u), ~u_input.a.xwy);
    var_0 = ~max(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.x, 0u), vec3<u32>(var_0.x, 33233u, 1u)) << (max(var_0.x, arg_2.b.d.x) % 32u), 1u, var_0.x), ~_wgslsmith_clamp_vec3_u32(firstTrailingBit(arg_2.b.d), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.b.d.x, arg_0.d.x, 66481u), vec3<u32>(var_0.x, 0u, 4294967295u), vec3<u32>(u_input.a.x, 108690u, var_0.x)), vec3<u32>(45664u, arg_2.b.d.x, 18999u)));
    var var_1 = !any(select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), true), vec2<bool>(true, true)));
    var_1 = all(select(vec3<bool>(true, true, true), select(vec3<bool>(any(vec4<bool>(false, false, false, true)), true, all(vec3<bool>(false, false, false))), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), true)), true));
    let var_2 = 0i;
    return arg_2.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    let var_1 = func_1(_wgslsmith_mod_vec2_i32(-_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b.zy, vec2<i32>(-1i, 0i)), vec2<i32>(var_0, var_0) << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))), ~u_input.b.yy), vec2<u32>(u_input.a.x, ~(~42697u)) << (reverseBits(vec2<u32>(u_input.a.x, ~u_input.a.x)) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_mod_i32(-3205i, select(u_input.b.x, -2147483647i, true));
    var var_3 = all(vec4<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.b), -790f)) < _wgslsmith_div_f32(1739f, 1f), true, select(u_input.b.x, var_1.c.x, true) == -var_1.c.x, false));
    let var_4 = 50954i;
    let var_5 = 2147483647i <= _wgslsmith_dot_vec4_i32(~func_3(var_1, vec4<f32>(1081f, var_1.b, var_1.b, -454f), Struct_2(vec3<i32>(var_1.a.x, var_2, var_4), Struct_1(var_1.a, -1419f, var_1.c, vec3<u32>(1u, u_input.a.x, u_input.a.x)), var_1.b, var_1.b, var_1)) | vec4<i32>(~(-28155i), var_1.a.x, -42825i, ~(-2147483647i)), ~var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d, ~(1u << (select(u_input.a.x >> (1u % 32u), u_input.a.x, !var_5) % 32u)));
}

