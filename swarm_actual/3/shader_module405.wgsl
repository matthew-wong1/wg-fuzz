struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 27> = array<Struct_5, 27>(Struct_5(true, 20668i, Struct_3(42165i)), Struct_5(false, 1i, Struct_3(19294i)), Struct_5(true, -1i, Struct_3(-7507i)), Struct_5(false, -1i, Struct_3(i32(-2147483648))), Struct_5(false, 16572i, Struct_3(1i)), Struct_5(true, 10006i, Struct_3(42816i)), Struct_5(false, 644i, Struct_3(435i)), Struct_5(true, 57287i, Struct_3(-22843i)), Struct_5(true, 1i, Struct_3(0i)), Struct_5(false, 1i, Struct_3(0i)), Struct_5(true, i32(-2147483648), Struct_3(-23361i)), Struct_5(false, 1i, Struct_3(0i)), Struct_5(true, -42166i, Struct_3(-1i)), Struct_5(true, 55832i, Struct_3(i32(-2147483648))), Struct_5(false, 20122i, Struct_3(31322i)), Struct_5(false, 0i, Struct_3(-17860i)), Struct_5(false, i32(-2147483648), Struct_3(-49291i)), Struct_5(false, -54184i, Struct_3(39681i)), Struct_5(false, 1i, Struct_3(6844i)), Struct_5(true, 23790i, Struct_3(-30160i)), Struct_5(true, 17848i, Struct_3(16665i)), Struct_5(true, -1i, Struct_3(-47941i)), Struct_5(true, i32(-2147483648), Struct_3(54269i)), Struct_5(false, i32(-2147483648), Struct_3(-37753i)), Struct_5(true, 92433i, Struct_3(2676i)), Struct_5(true, i32(-2147483648), Struct_3(-41492i)), Struct_5(true, 0i, Struct_3(-1i)));

var<private> global1: array<vec4<i32>, 25>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    let var_0 = ~(~vec3<u32>(1u, 1u, 1u)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(abs(_wgslsmith_mod_u32(48276u, 1u)), 1u, ~_wgslsmith_mod_u32(29376u, 5901u)), vec3<u32>(select(1u, 1u, true), 46652u, 1u)) % vec3<u32>(32u));
    var var_1 = ~firstTrailingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, var_0.x, 73516u, var_0.x), firstLeadingBit(vec4<u32>(16515u, var_0.x, var_0.x, 4294967295u))), firstLeadingBit(~vec4<u32>(var_0.x, var_0.x, 31064u, 0u))));
    let var_2 = ~(~1u);
    global1 = array<vec4<i32>, 25>();
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(903f, _wgslsmith_div_f32(-461f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -843f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(652f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1378f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -405f), _wgslsmith_f_op_f32(min(-2091f, -1514f))), 243f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -595f)))));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1000f, var_3.x, !all(vec2<bool>(false, false)))), _wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(min(1060f, _wgslsmith_f_op_f32(abs(var_3.x))))))));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(5029u, Struct_1(abs(~1u), firstLeadingBit(~max(68955u, 0u)), _wgslsmith_sub_vec2_u32(vec2<u32>(~14972u, ~68256u), max(~vec2<u32>(20836u, 94144u), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(8032u, 4294967295u))))));
    global0 = array<Struct_5, 27>();
    var var_1 = (var_0.b.c.x ^ countOneBits(var_0.a)) >> (~(~var_0.b.c.x) % 32u);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * -1042f)) - _wgslsmith_div_f32(_wgslsmith_div_f32(183f, 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1116f + -1041f))))));
    global1 = array<vec4<i32>, 25>();
    return var_0;
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    var var_1 = Struct_2(47732u, func_2().b);
    var var_2 = var_0.b;
    var_1 = var_0;
    var_1 = func_2();
    return Struct_1(firstTrailingBit(1u), var_2.a, _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(var_0.b.c, var_0.b.c), vec2<u32>(4294967295u, 0u)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_5, arg_3: vec3<u32>) -> vec3<i32> {
    var var_0 = Struct_4(vec3<i32>(-1i, 31975i, -2147483647i));
    var var_1 = func_1();
    let var_2 = arg_0;
    var var_3 = var_0.a.x;
    let var_4 = var_0.a << (_wgslsmith_mult_vec3_u32(arg_3, ~(arg_3 >> (firstTrailingBit(vec3<u32>(1u, 4294967295u, var_1.b)) % vec3<u32>(32u)))) % vec3<u32>(32u));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(64075u, func_1()), !(!vec3<bool>(select(false, false, true), true, true)), global0[_wgslsmith_index_u32(0u, 27u)], vec3<u32>(abs(~0u), func_2().b.c.x, ~max(39288u, _wgslsmith_sub_u32(1u, 0u))));
    var var_1 = Struct_1(func_2().b.a, 11167u, vec2<u32>(countOneBits(~(~59107u)), select(1u, countOneBits(func_1().a), true)));
    var var_2 = 484f;
    let var_3 = true;
    global1 = array<vec4<i32>, 25>();
    var var_4 = Struct_5(true, 65259i, Struct_3(1i));
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(20452u, 25u)]);
}

