struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: bool,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<bool>(false, true, true));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_3 {
    global0 = Struct_2(global0.a);
    global0 = Struct_2(!global0.a);
    let var_0 = vec4<bool>(true, true, select(true, all(select(vec4<bool>(true, true, global0.a.x, true), select(vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x), vec4<bool>(true, true, global0.a.x, global0.a.x), false), true)), global0.a.x), all(!select(select(vec4<bool>(false, global0.a.x, global0.a.x, false), vec4<bool>(global0.a.x, global0.a.x, false, false), true), select(vec4<bool>(global0.a.x, global0.a.x, true, false), vec4<bool>(true, true, global0.a.x, false), true), !vec4<bool>(global0.a.x, false, global0.a.x, true))));
    var var_1 = u_input.d.x;
    var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(min(min(u_input.d.zx, vec2<i32>(-1i, -30265i) & u_input.d.xz), vec2<i32>(-u_input.a.x, -2147483647i)), vec2<i32>(u_input.b << (max(u_input.c, u_input.c) % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-25442i, 21262i, 2147483647i), min(u_input.d, u_input.a)))), -vec2<i32>(i32(-1i) * -u_input.d.x, -u_input.d.x));
    return Struct_3(Struct_1(u_input.a), _wgslsmith_div_vec4_i32(~(-abs(vec4<i32>(u_input.a.x, u_input.b, -12028i, u_input.a.x))), vec4<i32>(abs(firstTrailingBit(u_input.d.x)), _wgslsmith_mult_i32(1i, _wgslsmith_sub_i32(u_input.b, u_input.d.x)), _wgslsmith_clamp_i32(34676i, u_input.d.x, u_input.a.x) << (u_input.c % 32u), 1i)), true | any(global0.a), ~vec2<u32>(_wgslsmith_clamp_u32(u_input.c, firstTrailingBit(u_input.c), 62042u << (u_input.c % 32u)), ~(~u_input.c)), Struct_1(u_input.d ^ vec3<i32>(u_input.a.x, -u_input.d.x, reverseBits(u_input.d.x))));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec4<i32>) -> vec3<bool> {
    global0 = Struct_2(vec3<bool>(arg_1.x, all(!vec2<bool>(global0.a.x, arg_0.c)), global0.a.x));
    global0 = Struct_2(global0.a);
    global0 = Struct_2(global0.a);
    global0 = Struct_2(!global0.a);
    global0 = Struct_2(!vec3<bool>(arg_0.c, arg_0.c & arg_0.c, _wgslsmith_mod_u32(17567u, arg_0.d.x) > ~73030u));
    return !select(select(select(select(global0.a, vec3<bool>(global0.a.x, arg_0.c, arg_0.c), global0.a), vec3<bool>(true, arg_0.c, true), vec3<bool>(false, true, false)), !(!global0.a), global0.a), select(vec3<bool>(true, arg_1.x, false), !(!vec3<bool>(global0.a.x, false, false)), !select(global0.a, vec3<bool>(false, arg_1.x, false), false)), any(global0.a));
}

fn func_1() -> Struct_2 {
    let var_0 = func_2();
    var var_1 = Struct_3(var_0.e, firstLeadingBit(var_0.b), true, ~var_0.d, var_0.e);
    var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-695f, _wgslsmith_div_f32(-459f, 861f), 377f)), true)));
    var var_3 = Struct_2(func_3(func_2(), vec2<bool>(true, var_0.c), ~vec4<i32>(-2183i, select(11676i, var_0.a.a.x, var_0.c), 2147483647i, 19254i)));
    return Struct_2(!vec3<bool>(var_0.c, var_0.a.a.x != -2147483647i, all(vec3<bool>(false, true, var_3.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_u32(~(~min(vec4<u32>(0u, 72075u, u_input.c, u_input.c), vec4<u32>(u_input.c, 4237u, u_input.c, u_input.c)) | ~(~vec4<u32>(u_input.c, u_input.c, 1u, 4294967295u))), _wgslsmith_clamp_vec4_u32(~(~countOneBits(vec4<u32>(u_input.c, 0u, u_input.c, 28385u))), vec4<u32>(18655u, min(u_input.c, 1u), u_input.c, 4826u), select(vec4<u32>(u_input.c, 4294967295u, 1u, 9985u) >> ((vec4<u32>(1u, 4294967295u, u_input.c, 0u) >> (vec4<u32>(u_input.c, 1u, u_input.c, u_input.c) % vec4<u32>(32u))) % vec4<u32>(32u)), (vec4<u32>(u_input.c, 1u, 14940u, u_input.c) >> (vec4<u32>(u_input.c, 0u, 0u, 4294967295u) % vec4<u32>(32u))) >> (vec4<u32>(4294967295u, 34124u, u_input.c, 4294967295u) % vec4<u32>(32u)), !vec4<bool>(global0.a.x, false, global0.a.x, global0.a.x))));
    let var_1 = -u_input.a.x;
    global0 = func_1();
    var var_2 = func_1();
    global0 = Struct_2(!(!(!vec3<bool>(global0.a.x, global0.a.x, global0.a.x))));
    var var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(309f, -1031f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1054f, -1164f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1401f, -866f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(715f, -1426f)), !global0.a.x))), select(global0.a.yz, vec2<bool>(true, true), vec2<bool>(global0.a.x, !var_2.a.x)))), var_0, vec4<i32>(abs(abs(u_input.a.x ^ 0i)), _wgslsmith_add_i32(u_input.b, _wgslsmith_sub_i32(u_input.b, select(u_input.d.x, u_input.b, global0.a.x))), u_input.b, u_input.a.x));
    let var_4 = Struct_2(select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, global0.a.x, var_2.a.x), vec3<bool>(global0.a.x, true, global0.a.x), vec3<bool>(true, false, global0.a.x)), func_3(Struct_3(Struct_1(u_input.d), vec4<i32>(-1i, 35932i, 42029i, u_input.a.x), false, var_3.b.xy, Struct_1(vec3<i32>(var_3.c.x, 46177i, var_1))), global0.a.xz, var_3.c), !global0.a.x), var_2.a.x), var_2.a, false));
    let x = u_input.a;
    s_output = StorageBuffer(~(-(vec3<i32>(-1i) * -vec3<i32>(u_input.b, -39443i, var_1))), _wgslsmith_sub_i32(_wgslsmith_mult_i32(~(-1i), firstTrailingBit(var_1 << (265u % 32u))), -(i32(-1i) * -13668i)), min(var_3.b.zyw | vec3<u32>(~0u, _wgslsmith_div_u32(var_0.x, 107131u), ~var_3.b.x), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_3.b.x, u_input.c, var_3.b.x), ~var_0.x), _wgslsmith_sub_u32(_wgslsmith_mult_u32(29082u, 0u), var_3.b.x), countOneBits(u_input.c))), 10375i);
}

