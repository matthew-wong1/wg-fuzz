struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(vec3<u32>(62569u, 1u, 18033u)), Struct_3(vec3<u32>(1u, 17955u, 4294967295u)), Struct_3(vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_3(vec3<u32>(1u, 20593u, 51387u)), Struct_3(vec3<u32>(1u, 50271u, 1u)), Struct_3(vec3<u32>(0u, 0u, 0u)), Struct_3(vec3<u32>(25391u, 4294967295u, 41901u)), Struct_3(vec3<u32>(42376u, 0u, 1u)), Struct_3(vec3<u32>(14711u, 1u, 7364u)), Struct_3(vec3<u32>(59477u, 78176u, 0u)), Struct_3(vec3<u32>(4294967295u, 33143u, 1u)), Struct_3(vec3<u32>(4294967295u, 85896u, 4294967295u)), Struct_3(vec3<u32>(10760u, 3062u, 0u)), Struct_3(vec3<u32>(4294967295u, 0u, 29210u)), Struct_3(vec3<u32>(0u, 1u, 28039u)), Struct_3(vec3<u32>(16553u, 4294967295u, 0u)));

var<private> global1: i32;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = -1437f;
    global1 = u_input.a;
    return ~(-_wgslsmith_dot_vec4_i32(abs(_wgslsmith_div_vec4_i32(vec4<i32>(1i, -2147483647i, u_input.a, 52705i), vec4<i32>(-8113i, u_input.c, u_input.a, -1i))), _wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(2406i, u_input.c, -17509i, -40045i)), firstLeadingBit(vec4<i32>(u_input.c, u_input.a, u_input.c, 1i)))));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    global0 = array<Struct_3, 16>();
    var var_0 = !(u_input.b != abs(u_input.d.x));
    let var_1 = Struct_4(_wgslsmith_mod_i32(arg_0.c.x, arg_0.c.x), abs(~select(vec2<u32>(67274u, arg_0.d), vec2<u32>(1u, arg_0.d), arg_0.b) ^ ~(~vec2<u32>(arg_0.e, u_input.b))));
    global0 = array<Struct_3, 16>();
    return _wgslsmith_mod_vec2_u32(select(~(vec2<u32>(19238u, arg_0.d) >> (vec2<u32>(0u, arg_0.d) % vec2<u32>(32u))), var_1.b, select(!vec2<bool>(arg_0.b, arg_0.b), select(vec2<bool>(arg_0.b, false), vec2<bool>(true, false), vec2<bool>(arg_0.b, false)), all(vec2<bool>(arg_0.b, arg_0.b)))) & u_input.d.wy, var_1.b & select((vec2<u32>(4294967295u, 0u) ^ var_1.b) ^ u_input.e.wx, ~(~vec2<u32>(var_1.b.x, 0u)), vec2<bool>(any(vec4<bool>(arg_0.b, arg_0.b, arg_0.b, arg_0.b)), any(vec2<bool>(true, false)))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: i32) -> bool {
    let var_0 = Struct_4(abs(u_input.c), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(arg_1, func_3(Struct_1(146f, true, vec3<i32>(arg_2, arg_2, 0i), arg_1.x, 24736u))), ~arg_1));
    let var_1 = _wgslsmith_clamp_vec4_u32(select(reverseBits(u_input.d) | vec4<u32>(1u ^ u_input.e.x, u_input.d.x, arg_1.x, 4294967295u), u_input.e, false | arg_0.x), vec4<u32>(_wgslsmith_div_u32(u_input.d.x, abs(_wgslsmith_div_u32(0u, 75409u))), _wgslsmith_dot_vec3_u32(vec3<u32>(~1u, 57364u, abs(u_input.d.x)), abs(reverseBits(vec3<u32>(u_input.b, arg_1.x, 37720u)))), firstLeadingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.x, var_0.b.x, 19603u, 55134u), vec4<u32>(1u, 47410u, 32428u, u_input.e.x)), vec4<u32>(4294967295u, 26994u, 4294967295u, 934u))), min(1u, 25160u)), u_input.d);
    var var_2 = select(!vec4<bool>(true, false, arg_0.x, arg_0.x & all(vec4<bool>(true, false, arg_0.x, true))), !select(!(!vec4<bool>(arg_0.x, false, false, false)), vec4<bool>(true, arg_0.x, !arg_0.x, all(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x))), true), vec4<bool>(!arg_0.x, false, true & ((var_1.x & arg_1.x) == ~var_1.x), !((arg_1.x == arg_1.x) | true)));
    var var_3 = Struct_3(var_1.wzz);
    var var_4 = -(~4018i);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~0i;
    global0 = array<Struct_3, 16>();
    let var_0 = vec3<bool>(func_2(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true)), ~vec2<u32>(60374u, 36222u), min(1i, func_1(19220i))) & select(false, !any(vec3<bool>(false, false, true)), true), any(vec3<bool>(true, true, true)), !(any(vec2<bool>(true, true)) | !all(vec3<bool>(false, true, false))));
    global0 = array<Struct_3, 16>();
    let var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-144f, -775f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-1152f - -365f), _wgslsmith_f_op_f32(f32(-1f) * -440f)))), var_0.xx)), _wgslsmith_f_op_f32(f32(-1f) * -913f), ~countOneBits(~u_input.d.yw) >> (min(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, u_input.e.x)), u_input.d.yx) % vec2<u32>(32u)));
}

