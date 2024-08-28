struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(-7963i), Struct_1(21144i), Struct_1(-6924i), Struct_1(i32(-2147483648)), Struct_1(31137i), Struct_1(-9245i), Struct_1(7102i), Struct_1(-26466i));

var<private> global1: array<vec3<i32>, 10>;

var<private> global2: array<Struct_3, 19>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3) -> vec4<f32> {
    global2 = array<Struct_3, 19>();
    var var_0 = -1512f;
    let var_1 = arg_1;
    var var_2 = Struct_4(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c << (4294967295u % 32u), 0u), firstTrailingBit(vec2<u32>(u_input.c, u_input.c) & (vec2<u32>(u_input.c, 4294967295u) << (vec2<u32>(120518u, 11886u) % vec2<u32>(32u))))));
    let var_3 = arg_1;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(980f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1401f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(264f - -2740f))), 648f, -473f));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: vec2<bool>) -> bool {
    global0 = array<Struct_1, 8>();
    let var_0 = _wgslsmith_add_vec4_u32(abs(~vec4<u32>(~4294967295u, countOneBits(4294967295u), 1u, 35875u)), ~abs(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 4294967295u, 20714u, 0u), vec4<u32>(arg_1, 1u, 38407u, 27691u)))));
    var var_1 = vec3<bool>(-1i <= reverseBits(u_input.b), false, reverseBits(1i) < u_input.a.x);
    global0 = array<Struct_1, 8>();
    let var_2 = select(_wgslsmith_mult_vec2_u32(abs(var_0.wz), select(var_0.xy, var_0.zz, true)), min(var_0.yy, var_0.yx), arg_2);
    return false;
}

fn func_1() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(575f, 353f, -106f, -1102f) + vec4<f32>(-237f, 1137f, 377f, 1000f)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1012f, 115f, -154f, -250f), _wgslsmith_f_op_vec4_f32(func_2(Struct_2(true), global2[_wgslsmith_index_u32(32233u, 19u)])))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1014f, -575f, 1000f, 2650f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-419f, -1179f, -1926f, -500f), vec4<f32>(-201f, 537f, -237f, -1000f)))))));
    let var_1 = select(vec2<bool>(!(!func_3(var_0.wy, u_input.c, vec2<bool>(true, true))), !((u_input.c & u_input.c) > abs(u_input.c))), vec2<bool>(true, !(!(-39577i == u_input.a.x))), vec2<bool>(false, true));
    global0 = array<Struct_1, 8>();
    global2 = array<Struct_3, 19>();
    var var_2 = global0[_wgslsmith_index_u32(7701u, 8u)];
    return vec2<f32>(1910f, 1000f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    var var_1 = Struct_2(true);
    global2 = array<Struct_3, 19>();
    global2 = array<Struct_3, 19>();
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1030f, -1362f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-201f, 242f) * vec2<f32>(302f, -1849f)), !vec2<bool>(var_1.a, false))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1855f, 623f) * vec2<f32>(-1494f, 702f)), _wgslsmith_f_op_vec2_f32(func_1()))))));
    global0 = array<Struct_1, 8>();
    var var_3 = Struct_2(any(vec2<bool>(var_1.a, false)));
    let var_4 = select(vec2<i32>(u_input.a.x, _wgslsmith_sub_i32(_wgslsmith_div_i32(-5484i, 1i), var_0)), vec2<i32>(i32(-1i) * -2147483647i, ~u_input.a.x), var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(787f, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-183f, var_2.x, -1659f)))))))));
}

