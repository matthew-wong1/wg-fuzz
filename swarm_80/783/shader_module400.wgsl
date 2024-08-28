struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 303f;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = Struct_2(u_input.b, !all(!arg_2.a.wzx) & arg_2.a.x, Struct_1(!arg_2.a, !vec3<bool>(arg_2.b.x, select(arg_2.a.x, arg_2.b.x, arg_2.a.x), false)), u_input.b.x, true);
    var var_1 = ~max(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(1u, 4294967295u, 0u)), select(select(u_input.b, var_0.a, true), reverseBits(vec3<u32>(4294967295u, 1u, 54012u)), select(arg_2.a.yzw, vec3<bool>(false, arg_2.b.x, arg_2.a.x), false))), ~abs(~var_0.a));
    let var_2 = vec2<i32>(i32(-1i) * -(i32(-1i) * -1i), -min(arg_1.x, ~0i << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 18678u, var_0.a.x, arg_0.x), vec4<u32>(u_input.b.x, u_input.b.x, 120582u, var_0.a.x)) % 32u)));
    var var_3 = -_wgslsmith_div_i32(min(var_2.x, -52632i), _wgslsmith_dot_vec3_i32(u_input.d, ~firstTrailingBit(arg_1)));
    let var_4 = ~arg_1.x;
    return vec2<bool>(true, true);
}

fn func_2(arg_0: f32, arg_1: vec2<i32>) -> vec4<bool> {
    let var_0 = !select(!(!func_3(vec2<u32>(u_input.b.x, u_input.b.x), u_input.d, Struct_1(vec4<bool>(true, true, false, true), vec3<bool>(true, false, true)))), func_3(~u_input.b.zy, firstTrailingBit(_wgslsmith_clamp_vec3_i32(u_input.d, vec3<i32>(arg_1.x, -9942i, -18514i), u_input.d)), Struct_1(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false))), true);
    let var_1 = ~(~vec3<u32>(max(0u, 1u), u_input.b.x, ~u_input.b.x));
    var var_2 = select(vec3<bool>(true, var_0.x && all(func_3(vec2<u32>(u_input.b.x, 50265u), u_input.d, Struct_1(vec4<bool>(false, true, var_0.x, var_0.x), vec3<bool>(true, false, var_0.x)))), true), !select(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(false, false, var_0.x), func_3(vec2<u32>(1u, 22726u), u_input.d, Struct_1(vec4<bool>(var_0.x, true, true, true), vec3<bool>(var_0.x, true, false))).x), !(!vec3<bool>(var_0.x, var_0.x, false)), vec3<bool>(!var_0.x, u_input.b.x != 14297u, true)), false);
    var var_3 = ~var_1;
    let var_4 = -_wgslsmith_mult_vec3_i32(-u_input.d, u_input.d);
    return vec4<bool>(var_2.x, true | (all(!vec3<bool>(true, var_2.x, var_0.x)) | all(vec3<bool>(true, false, false))), all(vec2<bool>(var_0.x, true)), _wgslsmith_f_op_f32(f32(-1f) * -1398f) < arg_0);
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_2(u_input.b, !(min(i32(-1i) * -22332i, -48673i) > _wgslsmith_mod_i32(u_input.a.x, -u_input.d.x)), Struct_1(select(vec4<bool>(true, false, true, all(vec3<bool>(false, false, true))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true))), !select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), true)), (u_input.b.x >> (u_input.b.x % 32u)) | abs(u_input.b.x), any(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1848f)), _wgslsmith_f_op_f32(f32(-1f) * -2332f)), u_input.c)));
    var var_1 = true;
    var_1 = var_0.b;
    var_1 = select(!var_0.c.b.x, any(var_0.c.b.xy), func_3(vec2<u32>(0u, u_input.b.x), select(~vec3<i32>(u_input.d.x, 2147483647i, -1i), vec3<i32>(u_input.a.x, u_input.a.x, -23624i), false), Struct_1(vec4<bool>(var_0.e, true, var_0.b, true), select(var_0.c.a.zxx, vec3<bool>(true, false, false), var_0.c.a.wwy))).x || var_0.e);
    var var_2 = ~(~var_0.d);
    return StorageBuffer(-990f, u_input.c.x >> (~min(u_input.b.x >> (57512u % 32u), u_input.b.x) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

