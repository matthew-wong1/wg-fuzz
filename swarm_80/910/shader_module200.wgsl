struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 17>;

var<private> global1: u32 = 4294967295u;

var<private> global2: array<bool, 14>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<u32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(round(-1930f))), ~1i, ~(~0u) >> (arg_1.x % 32u), u_input.b.x);
    var var_1 = ~1u | arg_1.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1013f)) - -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - var_0.a) * -1791f))));
    let var_3 = Struct_2(Struct_1(-1277f, var_0.b, ~((29323u << (var_0.c % 32u)) | arg_1.x), u_input.b.x), abs((1u & var_0.c) ^ 21323u) >> (1405u % 32u), global0[_wgslsmith_index_u32(firstTrailingBit(0u), 17u)] << ((~vec3<u32>(var_0.c, 7306u, arg_1.x) | (arg_1 << (~vec3<u32>(arg_1.x, 14761u, 53815u) % vec3<u32>(32u)))) % vec3<u32>(32u)), var_0);
    let var_4 = var_3.a;
    return 159f;
}

fn func_4(arg_0: f32, arg_1: vec2<bool>) -> u32 {
    let var_0 = reverseBits(firstTrailingBit(u_input.a));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(-arg_0)), 1i, 9129u & ~_wgslsmith_clamp_u32(10542u, ~2460u, 82453u), -1i);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - 843f), -445f)) + vec2<f32>(-550f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-626f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)))));
    let var_3 = _wgslsmith_sub_vec2_i32(u_input.b.wy, u_input.b.zz);
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.a), var_1.a));
    return countOneBits(1u);
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(func_4(_wgslsmith_f_op_f32(func_3(vec3<f32>(-1175f, 2229f, -648f), vec3<u32>(24509u, 1u, 4294967295u))), !vec2<bool>(global2[_wgslsmith_index_u32(1383u, 14u)], global2[_wgslsmith_index_u32(53175u, 14u)])), 64348u), vec2<u32>(~abs(2618u), ~firstTrailingBit(0u))) << (~vec2<u32>(76924u, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 68012u, 4294967295u, 10296u), ~vec4<u32>(4294967295u, 4294967295u, 71719u, 1u))) % vec2<u32>(32u));
    var var_1 = all(!vec4<bool>(global2[_wgslsmith_index_u32(var_0.x, 14u)], global2[_wgslsmith_index_u32(71910u, 14u)], global2[_wgslsmith_index_u32(var_0.x, 14u)], !global2[_wgslsmith_index_u32(4294967295u, 14u)])) && true;
    var var_2 = (92393u & var_0.x) | var_0.x;
    var_2 = ~var_0.x;
    var_1 = true;
    return Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-427f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1239f))))))), _wgslsmith_add_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(-21755i, -27049i), ~u_input.b.zz), ~_wgslsmith_dot_vec4_i32(u_input.b, u_input.b) ^ ~reverseBits(u_input.b.x)), 30999u, u_input.a);
}

fn func_1() -> Struct_2 {
    var var_0 = func_2();
    var var_1 = vec3<bool>(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, 31580u, 35906u), reverseBits(vec3<u32>(1u, 4294967295u, 27528u)), vec3<u32>(var_0.c, var_0.c, 0u) << (vec3<u32>(1u, 0u, 96204u) % vec3<u32>(32u))), ~vec3<u32>(20977u, 4294967295u, var_0.c) << (abs(vec3<u32>(17117u, 1u, var_0.c)) % vec3<u32>(32u))), 14u)], global2[_wgslsmith_index_u32(~var_0.c, 14u)], global2[_wgslsmith_index_u32(var_0.c, 14u)]);
    var var_2 = Struct_2(func_2(), ~_wgslsmith_div_u32(var_0.c, 9863u), _wgslsmith_mult_vec3_i32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.c, 62336u, 1u, var_0.c), vec4<u32>(4294967295u, var_0.c, var_0.c, var_0.c) >> (vec4<u32>(var_0.c, 788u, 29173u, var_0.c) % vec4<u32>(32u))), 17u)], _wgslsmith_mult_vec3_i32(u_input.b.zzy << (select(vec3<u32>(var_0.c, var_0.c, 1u), vec3<u32>(var_0.c, 3722u, var_0.c), vec3<bool>(global2[_wgslsmith_index_u32(var_0.c, 14u)], true, var_1.x)) % vec3<u32>(32u)), u_input.b.zww)), Struct_1(func_2().a, ~var_0.d, ~firstTrailingBit(var_0.c >> (var_0.c % 32u)), var_0.d));
    let var_3 = func_2();
    global1 = abs(reverseBits(_wgslsmith_div_u32(~func_2().c, abs(_wgslsmith_add_u32(88531u, 5338u)))));
    return Struct_2(var_2.a, _wgslsmith_add_u32(~(~31093u), var_2.b), _wgslsmith_sub_vec3_i32(select(u_input.b.wwy, vec3<i32>(-10142i, var_3.d & 2147483647i, ~var_3.b), any(vec2<bool>(global2[_wgslsmith_index_u32(var_0.c, 14u)], var_1.x))), vec3<i32>(_wgslsmith_add_i32(-1i, firstLeadingBit(1i)), countOneBits(u_input.b.x), 25499i)), var_2.d);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 14>();
    var var_0 = min(u_input.b.wx, countOneBits(vec2<i32>(u_input.a, u_input.b.x)));
    let var_1 = func_1();
    global1 = 4294967295u;
    global1 = ~max(~var_1.b, reverseBits(_wgslsmith_add_u32(_wgslsmith_add_u32(var_1.b, 1u), 77232u)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_div_u32(0u, select(var_1.b, var_1.a.c, true))), func_1().a.c), select(9144i, u_input.b.x, all(select(select(vec2<bool>(global2[_wgslsmith_index_u32(var_1.b, 14u)], true), vec2<bool>(global2[_wgslsmith_index_u32(36912u, 14u)], global2[_wgslsmith_index_u32(0u, 14u)]), global2[_wgslsmith_index_u32(56713u, 14u)]), !vec2<bool>(global2[_wgslsmith_index_u32(0u, 14u)], global2[_wgslsmith_index_u32(var_1.a.c, 14u)]), true))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(342f)) - -710f), _wgslsmith_f_op_f32(-var_1.a.a)), -131f, -472f, 319f));
}

