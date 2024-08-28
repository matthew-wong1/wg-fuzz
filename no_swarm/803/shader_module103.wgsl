struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<f32>,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> i32 {
    let var_0 = -arg_0;
    return -3900i;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_3) -> vec4<i32> {
    return vec4<i32>(u_input.d, func_3(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(19593i, u_input.a.x, u_input.d, -38317i), ~vec4<i32>(u_input.d, -3403i, 2147483647i, 25951i)), vec4<i32>(60653i, 1903i, -2147483647i, countOneBits(2147483647i))), -1010f, Struct_2(Struct_1(_wgslsmith_div_f32(478f, 926f)), any(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1110f, -557f, -1801f))), arg_1.a.xy, vec2<bool>(false, any(vec2<bool>(true, true))))), _wgslsmith_mult_i32(u_input.a.x, firstLeadingBit(abs(u_input.d))), _wgslsmith_add_i32((min(u_input.a.x, u_input.a.x) << (16805u % 32u)) & u_input.d, u_input.d));
}

fn func_1(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = -(_wgslsmith_clamp_vec4_i32(abs(select(vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.d), vec4<i32>(u_input.a.x, 1i, u_input.a.x, 30783i), true)), func_2(vec4<u32>(u_input.c, 4294967295u, u_input.c, 51743u), Struct_3(vec3<u32>(u_input.b, 4294967295u, 4375u))) | vec4<i32>(u_input.a.x, -1i, 19607i, 2147483647i), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.d, -18311i)) << (_wgslsmith_mult_vec4_u32(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(15121u, 0u, 1u, u_input.c), vec4<u32>(u_input.b, 75868u, u_input.b, 0u))), _wgslsmith_mult_vec4_u32(~vec4<u32>(53016u, u_input.b, u_input.c, u_input.b), vec4<u32>(u_input.c, 4294967295u, u_input.b, u_input.b))) % vec4<u32>(32u)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(arg_0.a * arg_0.a))), true, vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(arg_0.a + arg_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1098f)))), _wgslsmith_f_op_f32(arg_0.a * arg_0.a), arg_0.a), min(min(~(~vec2<u32>(u_input.c, 4294967295u)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.c), vec2<u32>(u_input.b, u_input.b))), _wgslsmith_add_vec2_u32(reverseBits(reverseBits(vec2<u32>(65590u, 1u))), abs(min(vec2<u32>(u_input.b, u_input.c), vec2<u32>(u_input.c, u_input.b))))), vec2<bool>(true, true));
    let var_2 = ~vec4<i32>(firstTrailingBit(~u_input.d) >> (_wgslsmith_sub_u32(u_input.c, 4294967295u) % 32u), var_0.x, ~firstLeadingBit(_wgslsmith_add_i32(u_input.a.x, 0i)), _wgslsmith_add_i32(reverseBits(-23587i), countOneBits(_wgslsmith_sub_i32(0i, -1i))));
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f))) <= _wgslsmith_f_op_f32(min(arg_0.a, arg_0.a));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, -(i32(-1i) * -u_input.a.x)), _wgslsmith_dot_vec4_i32(func_1(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -756f))), _wgslsmith_mult_vec4_i32(vec4<i32>(reverseBits(18267i), -u_input.d, -u_input.d, u_input.d & u_input.d), vec4<i32>(-1i) * -vec4<i32>(u_input.d, 2147483647i, u_input.a.x, 2147483647i))), u_input.d);
    var var_1 = Struct_3(~(~select(vec3<u32>(26032u, 64447u, u_input.b), vec3<u32>(4294967295u, 117251u, 43079u), true)));
    var var_2 = ~var_1.a.zx;
    var var_3 = u_input.a.x;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-2846f * _wgslsmith_div_f32(-1716f, 1428f)), _wgslsmith_f_op_f32(ceil(-216f)), -139f);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x);
}

