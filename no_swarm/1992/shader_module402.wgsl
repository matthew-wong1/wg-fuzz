struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
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

var<private> global0: f32 = 604f;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>) -> i32 {
    global0 = 1205f;
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -501f));
    var var_1 = ~firstTrailingBit(vec3<i32>(12081i, _wgslsmith_mod_i32(u_input.c, u_input.c), -1i) | vec3<i32>(firstTrailingBit(u_input.c), u_input.c, _wgslsmith_add_i32(1726i, u_input.c)));
    var_0 = Struct_1(var_0.a);
    var var_2 = vec3<i32>(var_1.x, ~u_input.c, max(min(min(u_input.c, u_input.b.x), u_input.b.x), ~1i) >> (arg_1.x % 32u));
    return i32(-1i) * -1i;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec2<bool>) -> i32 {
    global0 = _wgslsmith_f_op_f32(361f + 441f);
    global0 = _wgslsmith_f_op_f32(arg_1.a - _wgslsmith_div_f32(-720f, arg_1.a));
    let var_0 = Struct_1(arg_1.a);
    var var_1 = -min(vec4<i32>(12450i, min(u_input.c, u_input.c << (u_input.a % 32u)), u_input.b.x, _wgslsmith_div_i32(-2581i, u_input.c) ^ -u_input.c), select(vec4<i32>(u_input.c ^ 9107i, -2147483647i, func_3(u_input.a, vec2<u32>(45353u, 66536u)), -2147483647i), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.b.x, 2173i, -1i), vec4<i32>(u_input.c, u_input.c, u_input.c, -13401i)), vec4<i32>(u_input.c, u_input.c, -19637i, 39886i), vec4<i32>(2147483647i, 21469i, 1i, u_input.c)), true));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1250f + var_0.a))))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -347f), -276f)));
    return _wgslsmith_sub_i32(-2147483647i, max(0i, ~(~var_1.x)));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    return ~vec4<i32>(abs(~func_2(Struct_1(791f), arg_1, vec3<bool>(false, false, true), vec2<bool>(true, false))), 35606i, 36773i, ~(-func_3(9803u, vec2<u32>(4294967295u, 106745u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1301f) * _wgslsmith_f_op_f32(915f - _wgslsmith_f_op_f32(abs(-2212f))));
    let var_0 = _wgslsmith_add_vec4_i32(abs(~vec4<i32>(-9567i, -1i, 33488i, u_input.c)), (vec4<i32>(u_input.b.x, -1i, 2147483647i, u_input.c) | _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, -2147483647i, -19974i, -2147483647i), vec4<i32>(38188i, 33179i, u_input.c, u_input.c))) ^ -func_1(u_input.c, Struct_1(-1318f), Struct_1(1838f))) >> (vec4<u32>(22353u, ~min(~57922u, u_input.a), _wgslsmith_mod_u32(firstTrailingBit(~u_input.a), u_input.a), u_input.a) % vec4<u32>(32u));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1254f * _wgslsmith_f_op_f32(f32(-1f) * -143f))));
    let var_2 = Struct_1(471f);
    var_1 = Struct_1(var_2.a);
    var var_3 = var_0.x;
    var var_4 = _wgslsmith_sub_i32(~u_input.c, _wgslsmith_dot_vec3_i32(-var_0.wyy, var_0.xww)) ^ u_input.c;
    var var_5 = -48678i;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a);
}

