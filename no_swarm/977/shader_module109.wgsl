struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec2<bool>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: f32, arg_3: vec4<f32>) -> bool {
    global0 = Struct_1(false, arg_1, -20776i, _wgslsmith_mod_vec3_i32(-_wgslsmith_mod_vec3_i32(global0.d, global0.d) << (~vec3<u32>(4294967295u, u_input.b, u_input.a) % vec3<u32>(32u)), vec3<i32>(~countOneBits(global0.d.x), max(_wgslsmith_sub_i32(-23831i, global0.d.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, global0.d.x, global0.c), vec4<i32>(global0.d.x, 1i, -56173i, global0.d.x))), global0.c)));
    let var_0 = Struct_3(Struct_1(false, arg_1, ~_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(global0.c, global0.d.x, 57064i)), global0.d), global0.d));
    global0 = var_0.a;
    global0 = var_0.a;
    let var_1 = -global0.d.xz;
    return false;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<i32>) -> u32 {
    global0 = Struct_1(!(!select(!arg_0.a.b, any(vec3<bool>(arg_1.a, arg_1.b, false)), !global0.b)), !any(!vec3<bool>(arg_0.a.b, arg_0.a.b, false)), reverseBits(~(arg_2.x ^ 9798i)) & -6381i, firstTrailingBit(max(reverseBits(~vec3<i32>(-29259i, 0i, arg_0.a.c)), vec3<i32>(~(-10310i), firstTrailingBit(arg_0.a.d.x), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.d.x, arg_0.a.d.x), arg_0.a.d.xz)))));
    let var_0 = arg_0;
    global0 = arg_0.a;
    var var_1 = vec3<bool>(any(vec3<bool>(!global0.a != select(arg_1.a, false, false), func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-655f, 620f, 608f) - vec3<f32>(-1101f, -156f, 980f)), true, 1173f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(320f, 968f, -1425f, 1000f))), true)), any(vec3<bool>(true, any(select(vec4<bool>(global0.b, true, false, false), vec4<bool>(true, false, var_0.a.b, true), arg_1.b)), any(vec2<bool>(true, arg_0.a.a)))), true);
    let var_2 = true;
    return u_input.b;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: Struct_2, arg_3: bool) -> bool {
    let var_0 = vec3<u32>(~(firstTrailingBit(arg_0) ^ ~70605u), _wgslsmith_mod_u32(~(~38293u), ~(~4294967295u)), 4294967295u) ^ vec3<u32>(0u, 57259u | (u_input.b & u_input.b), arg_0);
    var var_1 = Struct_2(arg_2.a, Struct_1(arg_2.b.b != any(arg_2.d), arg_3, 9334i, _wgslsmith_div_vec3_i32(vec3<i32>(arg_2.a.d.x, global0.c, arg_2.b.d.x) >> (_wgslsmith_div_vec3_u32(var_0, var_0) % vec3<u32>(32u)), -reverseBits(vec3<i32>(global0.c, -1i, 0i)))), false, vec2<bool>(any(select(select(vec3<bool>(arg_2.b.a, false, global0.b), vec3<bool>(false, arg_2.b.b, false), vec3<bool>(arg_2.a.a, true, false)), vec3<bool>(arg_2.a.a, true, true), vec3<bool>(arg_2.d.x, arg_3, true))), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2047f - arg_2.e))), _wgslsmith_div_f32(arg_2.e, arg_2.e)));
    var_1 = Struct_2(var_1.b, var_1.b, var_1.c, vec2<bool>(arg_2.b.a, false), _wgslsmith_f_op_f32(1507f * var_1.e));
    var var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, ~_wgslsmith_dot_vec3_u32(var_0, ~var_0), var_0.x, ~(~(103833u >> (arg_1 % 32u)))), vec4<u32>(arg_0, ~4294967295u, ~_wgslsmith_div_u32(~18470u, arg_0), 9629u));
    var_2 = vec4<u32>(13526u, _wgslsmith_sub_u32(_wgslsmith_div_u32(90721u >> (func_2(Struct_3(Struct_1(false, true, -2147483647i, vec3<i32>(1i, var_1.b.d.x, -10711i))), var_1.a, arg_2.a.d) % 32u), func_2(Struct_3(Struct_1(true, false, 14258i, var_1.b.d)), Struct_1(false, arg_3, -64870i, global0.d), ~var_1.b.d)), 50574u), u_input.a, 58036u);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(u_input.a, ~u_input.b, u_input.a);
    global0 = Struct_1(!func_1(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.a, 8850u), _wgslsmith_mod_vec3_u32(var_0, var_0)), Struct_2(Struct_1(global0.a, true, 75258i, global0.d), Struct_1(global0.a, global0.b, global0.c, vec3<i32>(global0.d.x, 1i, -1i)), all(vec3<bool>(global0.b, false, true)), select(vec2<bool>(false, global0.b), vec2<bool>(global0.a, global0.a), vec2<bool>(false, true)), 653f), false), !global0.b, max(-1i, -abs(~global0.d.x)), global0.d);
    let var_1 = _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(356f + _wgslsmith_f_op_f32(ceil(-942f))) - -1714f), func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(351f, 486f, 576f) - vec3<f32>(1477f, -1142f, 1115f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(461f, 703f, 393f)))))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(1000f, 980f)), _wgslsmith_f_op_f32(ceil(982f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))));
    var var_2 = var_0;
    global0 = Struct_1(func_1(~(~0u), var_0.x, Struct_2(Struct_1(true, !global0.b, -global0.d.x, vec3<i32>(global0.d.x, -19272i, global0.c)), Struct_1(any(vec4<bool>(false, global0.b, true, true)), true, 1i, max(global0.d, vec3<i32>(global0.d.x, -28121i, global0.d.x))), true, vec2<bool>(true, false), _wgslsmith_f_op_f32(-var_1)), true), true, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(global0.d.xx, global0.d.yx), 2147483647i), vec3<i32>(-max(~46650i, global0.d.x), global0.c, 17039i));
    var var_3 = _wgslsmith_f_op_f32(sign(-1026f));
    var var_4 = Struct_3(Struct_1(!(global0.a != global0.b), !global0.b | true, global0.d.x << (var_0.x % 32u), global0.d));
    var_2 = reverseBits(abs(reverseBits(var_0)));
    var_4 = Struct_3(Struct_1(var_4.a.a, any(!vec2<bool>(var_4.a.a, global0.b)), _wgslsmith_add_i32(var_4.a.d.x, -global0.c) & -2147483647i, -var_4.a.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1284f, var_1, -903f))), vec4<f32>(1824f, _wgslsmith_f_op_f32(ceil(var_1)), _wgslsmith_f_op_f32(max(var_1, var_1)), _wgslsmith_f_op_f32(abs(var_1)))))), vec4<i32>(i32(-1i) * -48154i, 2147483647i, 2147483647i, ~var_4.a.c), var_2.x, global0.d.yz);
}

