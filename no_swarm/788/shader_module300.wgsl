struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 29>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_1) -> i32 {
    return -_wgslsmith_div_i32(i32(-1i) * -1i, -(~(i32(-1i) * -23305i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec3<u32>) -> i32 {
    var var_0 = arg_2;
    var var_1 = !vec3<bool>(arg_1.x, true, any(arg_1.zzz));
    var_0 = Struct_1(arg_0.a);
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(arg_2.a + _wgslsmith_f_op_vec2_f32(select(var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a + var_0.a) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, -1000f))), vec2<bool>(true, true)))));
    let var_3 = min(max(min(countOneBits(vec4<i32>(-1i, -1i, 1i, 0i)) >> (~vec4<u32>(u_input.a.x, 18638u, u_input.a.x, arg_3.x) % vec4<u32>(32u)), vec4<i32>(~(-32313i), ~48653i, 0i, ~10815i)), vec4<i32>(_wgslsmith_mult_i32(select(-1i, -45327i, false), -429i), _wgslsmith_sub_i32(-1i, _wgslsmith_mult_i32(0i, -1i)), -2147483647i, 1i)), _wgslsmith_div_vec4_i32(vec4<i32>(-_wgslsmith_mod_i32(20525i, -43644i), -4571i, i32(-1i) * -69028i, firstTrailingBit(select(-34837i, 0i, arg_1.x))), vec4<i32>(-1i) * -vec4<i32>(1i, 1i, 1i, 1i)));
    return var_3.x;
}

fn func_1() -> Struct_1 {
    var var_0 = reverseBits(vec4<i32>(28754i, 8405i, -func_2(false, vec4<u32>(0u, u_input.a.x, u_input.a.x, 0u), -975f, Struct_1(vec2<f32>(246f, 1155f))) | select(-8878i, func_2(true, vec4<u32>(u_input.a.x, 33087u, 1u, u_input.a.x), 2714f, Struct_1(vec2<f32>(-559f, -2600f))), all(vec3<bool>(true, true, false))), _wgslsmith_clamp_i32(reverseBits(func_3(Struct_1(vec2<f32>(-1000f, -1334f)), vec4<bool>(true, true, true, false), Struct_1(vec2<f32>(-1374f, 896f)), vec3<u32>(4294967295u, 1u, u_input.a.x))), _wgslsmith_add_i32(-41476i, countOneBits(-2147483647i)), max(-8300i, func_3(Struct_1(vec2<f32>(-444f, 505f)), vec4<bool>(true, true, true, true), Struct_1(vec2<f32>(-961f, 627f)), vec3<u32>(45551u, 4294967295u, 49368u))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(313f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(769f * 999f))) - vec3<f32>(_wgslsmith_f_op_f32(-2537f + -224f), 312f, _wgslsmith_f_op_f32(f32(-1f) * -793f))));
    let var_2 = -(~var_0.x & abs(-2147483647i));
    let var_3 = vec2<u32>(91233u, u_input.a.x);
    let var_4 = _wgslsmith_mod_u32(min(var_3.x, _wgslsmith_mod_u32(max(0u, ~1u), max(var_3.x, u_input.a.x))), var_3.x);
    return Struct_1(var_1.zy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1150f, -530f))))));
    let var_1 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(64461i, -57705i, 0i), abs(vec3<i32>(-1i, 2147483647i, -46i))) > -13744i;
    var var_2 = func_1();
    let var_3 = vec4<u32>(47211u | u_input.a.x, 527u | u_input.a.x, 92726u, 23947u);
    global0 = array<vec4<f32>, 29>();
    var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.x, _wgslsmith_f_op_f32(max(1000f, -148f))) * func_1().a), var_2.a, select(vec2<bool>(var_1, false), select(vec2<bool>(true, var_1), select(vec2<bool>(var_1, var_1), vec2<bool>(true, true), vec2<bool>(var_1, var_1)), !vec2<bool>(var_1, false)), !vec2<bool>(var_1, false)))));
    var_0 = var_2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(reverseBits(abs(2147483647i)) >> (u_input.a.x % 32u), _wgslsmith_clamp_i32(-2147483647i, abs(_wgslsmith_add_i32(-16611i, 2147483647i)), 1i)), _wgslsmith_f_op_f32(min(480f, _wgslsmith_f_op_f32(round(437f)))), u_input.a.x | 0u, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1215f - var_2.a.x)) * -183f), var_2.a.x, -1148f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.a.x))))));
}

