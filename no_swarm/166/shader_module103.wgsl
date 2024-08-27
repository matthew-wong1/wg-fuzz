struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: vec4<u32>,
    d: vec2<f32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(Struct_1(16293u, 51635u, vec3<i32>(-19719i, 9459i, 0i), vec4<f32>(639f, -206f, 456f, -1911f), -9147i), 4294967295u), Struct_2(Struct_1(0u, 12092u, vec3<i32>(i32(-2147483648), 30283i, -44487i), vec4<f32>(-214f, 1308f, -1547f, 319f), 0i), 143067u), Struct_2(Struct_1(62797u, 4294967295u, vec3<i32>(-12775i, 2147483647i, -31912i), vec4<f32>(-1223f, 1641f, -1841f, -1014f), -1i), 3370u), Struct_2(Struct_1(26681u, 1u, vec3<i32>(0i, 1i, i32(-2147483648)), vec4<f32>(-940f, 2825f, 1354f, 1383f), 3149i), 1u), Struct_2(Struct_1(4294967295u, 91234u, vec3<i32>(-91054i, 0i, -41845i), vec4<f32>(663f, 1000f, 601f, -958f), 0i), 51554u), Struct_2(Struct_1(17415u, 4294967295u, vec3<i32>(-24415i, -3325i, i32(-2147483648)), vec4<f32>(625f, 1139f, -227f, -1467f), 86220i), 42345u));

var<private> global1: array<vec4<i32>, 6> = array<vec4<i32>, 6>(vec4<i32>(16032i, 0i, 58435i, 59210i), vec4<i32>(2147483647i, -1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(i32(-2147483648), 19387i, -1i, -42731i), vec4<i32>(17091i, 2147483647i, 5262i, 2147483647i), vec4<i32>(i32(-2147483648), i32(-2147483648), -46597i, 0i), vec4<i32>(2147483647i, i32(-2147483648), -34749i, -3049i));

var<private> global2: Struct_3 = Struct_3(Struct_2(Struct_1(0u, 1u, vec3<i32>(0i, 3405i, -7534i), vec4<f32>(1000f, 232f, -318f, 170f), i32(-2147483648)), 1u), 12127i);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<bool>) -> vec3<i32> {
    global0 = array<Struct_2, 6>();
    global0 = array<Struct_2, 6>();
    let var_0 = vec3<u32>(firstTrailingBit(global2.a.b), firstTrailingBit(_wgslsmith_sub_u32(~(~15653u), _wgslsmith_clamp_u32(4294967295u, 0u, 1u) << (~u_input.d % 32u))), 0u);
    let var_1 = Struct_5(true, global0[_wgslsmith_index_u32(~global2.a.a.a, 6u)], ~vec4<u32>(_wgslsmith_dot_vec3_u32(var_0, var_0) >> (_wgslsmith_mult_u32(4294967295u, global2.a.a.a) % 32u), 4294967295u, _wgslsmith_mod_u32(reverseBits(u_input.a), 6631u), ~(~18304u)), global2.a.a.d.yz, Struct_4(_wgslsmith_mult_vec2_i32(firstTrailingBit(u_input.b.xz), global2.a.a.c.xx)));
    global1 = array<vec4<i32>, 6>();
    return firstTrailingBit(_wgslsmith_add_vec3_i32(abs(~u_input.b.wwx), u_input.b.yyy));
}

fn func_2() -> u32 {
    var var_0 = !(!(u_input.c == 1i)) && true;
    global2 = Struct_3(global0[_wgslsmith_index_u32(~(~(~34017u)), 6u)], global2.a.a.c.x);
    var_0 = true;
    var var_1 = Struct_5((all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true))) & true) | !(!any(vec2<bool>(false, true))), Struct_2(Struct_1(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 0u), vec3<u32>(16517u, u_input.a, 38785u)) | ~u_input.d, func_3(vec3<bool>(false, true, true)) >> (select(vec3<u32>(14042u, u_input.d, u_input.d), vec3<u32>(global2.a.b, 39813u, 1u), true) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.a.d.x, global2.a.a.d.x, -316f, global2.a.a.d.x)))), ~select(2147483647i, -14903i, true)), ~(countOneBits(u_input.a) & ~global2.a.a.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(global2.a.a.a, u_input.d, 50964u, 2888u)), _wgslsmith_add_vec4_u32(vec4<u32>(global2.a.a.a, 21019u, global2.a.b, 1u), vec4<u32>(4294967295u, 13054u, 4294967295u, global2.a.a.b))), _wgslsmith_add_u32(countOneBits(global2.a.a.a), _wgslsmith_div_u32(1u, 47569u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(25138u, global2.a.a.a), _wgslsmith_add_vec2_u32(vec2<u32>(global2.a.a.a, u_input.d), vec2<u32>(82693u, 44421u))), u_input.d), select(~vec4<u32>(u_input.d, 33792u, global2.a.a.a, 81435u), ~(~vec4<u32>(u_input.d, 9387u, global2.a.a.b, u_input.d)), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec2_f32(global2.a.a.d.yz * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(global2.a.a.d.x)), global2.a.a.d.x) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.a.a.d.x, -446f), global2.a.a.d.xz)))), Struct_4(vec2<i32>(global2.b, -37647i)));
    global0 = array<Struct_2, 6>();
    return max(_wgslsmith_mod_u32((30585u >> (var_1.c.x % 32u)) >> (1u % 32u), _wgslsmith_clamp_u32(max(6890u, 1u), 41446u << (global2.a.a.a % 32u), min(1u, var_1.c.x))) ^ 18240u, 346u);
}

fn func_1(arg_0: Struct_4) -> vec2<bool> {
    global1 = array<vec4<i32>, 6>();
    global1 = array<vec4<i32>, 6>();
    var var_0 = global0[_wgslsmith_index_u32(func_2(), 6u)];
    let var_1 = var_0.a;
    let var_2 = -193f;
    return vec2<bool>(true, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec2_u32(~(~select(vec2<u32>(u_input.a, u_input.d) | vec2<u32>(0u, global2.a.b), vec2<u32>(u_input.d, global2.a.b), func_1(Struct_4(vec2<i32>(1i, 0i))))), ~vec2<u32>(0u, ~(global2.a.a.b | 1691u)));
    var var_1 = 1i;
    global1 = array<vec4<i32>, 6>();
    let var_2 = global2.a.a.c.x;
    global0 = array<Struct_2, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(func_3(vec3<bool>(true, true, true)).x, firstTrailingBit(~u_input.b.x ^ -51543i)), global2.a.a.d.x, 466f, 10808u);
}

