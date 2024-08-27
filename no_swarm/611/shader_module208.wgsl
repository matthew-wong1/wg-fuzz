struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec3<bool>, 22> = array<vec3<bool>, 22>(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true));

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec4<bool>(true, true, true, false)), Struct_1(vec2<i32>(45216i, 0i), vec4<bool>(true, true, false, true)), Struct_1(vec2<i32>(36316i, 846i), vec4<bool>(false, true, true, false)), Struct_1(vec2<i32>(-36092i, i32(-2147483648)), vec4<bool>(true, true, false, false)), Struct_1(vec2<i32>(i32(-2147483648), 68779i), vec4<bool>(true, true, false, true)), Struct_1(vec2<i32>(-1i, -6469i), vec4<bool>(true, false, false, false)), Struct_1(vec2<i32>(-5746i, 2147483647i), vec4<bool>(false, true, true, false)), Struct_1(vec2<i32>(1i, 8313i), vec4<bool>(false, true, false, true)));

var<private> global3: u32;

var<private> global4: array<vec4<i32>, 17> = array<vec4<i32>, 17>(vec4<i32>(1i, 10518i, 0i, 4900i), vec4<i32>(26427i, i32(-2147483648), 2147483647i, 45110i), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), -5110i), vec4<i32>(25169i, 1i, 16206i, 0i), vec4<i32>(822i, 0i, 0i, -61065i), vec4<i32>(-46468i, 0i, -33229i, -5040i), vec4<i32>(-21917i, 1i, -60494i, -1i), vec4<i32>(-32464i, 1i, 1i, 2147483647i), vec4<i32>(2147483647i, -58240i, 0i, 0i), vec4<i32>(1i, -16423i, 0i, -584i), vec4<i32>(17755i, 0i, 0i, 10717i), vec4<i32>(-6340i, -17954i, 0i, -10324i), vec4<i32>(0i, -7413i, 6128i, -4211i), vec4<i32>(0i, 1i, 72000i, -8554i), vec4<i32>(i32(-2147483648), -62894i, -45891i, 0i), vec4<i32>(i32(-2147483648), 0i, -9279i, -1499i), vec4<i32>(2879i, 2147483647i, 0i, 5845i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: f32) -> Struct_3 {
    global2 = array<Struct_1, 8>();
    global4 = array<vec4<i32>, 17>();
    global2 = array<Struct_1, 8>();
    let var_0 = _wgslsmith_mod_u32(1u, ~2886u);
    var var_1 = arg_1;
    return Struct_3(~(~(~(~vec2<u32>(0u, 9038u)))), 38795u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.c))));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: u32, arg_3: u32) -> u32 {
    var var_0 = Struct_1(-vec2<i32>(-2147483647i, 1i) >> (countOneBits(global0.a ^ global0.a) % vec2<u32>(32u)), !vec4<bool>(true, false, (arg_0 < 2070f) && true, select(all(vec4<bool>(true, false, false, true)), true, true)));
    global4 = array<vec4<i32>, 17>();
    global4 = array<vec4<i32>, 17>();
    return min(arg_2, ~1u);
}

fn func_1() -> Struct_3 {
    global0 = func_2(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c * global0.c)), -1246f)), _wgslsmith_f_op_f32(ceil(global0.c)), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2266f)) - -1272f)), Struct_2(global2[_wgslsmith_index_u32(~(~global0.b << (~0u % 32u)), 8u)], _wgslsmith_f_op_f32(global0.c - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1290f)) * _wgslsmith_f_op_f32(global0.c * 440f))), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(75544u, 53584u, u_input.c, u_input.a.x) << (vec4<u32>(4294967295u, 42110u, global0.a.x, 1u) % vec4<u32>(32u)), select(vec4<u32>(global0.a.x, u_input.a.x, global0.b, u_input.c), vec4<u32>(global0.b, global0.a.x, global0.b, 15161u), false)), global0.a.x), 8u)], 45441u, reverseBits(~(~u_input.c))), 1000f);
    var var_0 = global0.c;
    global2 = array<Struct_1, 8>();
    var var_1 = Struct_3(~(~abs(u_input.b.yz) << (min(~global0.a, func_2(vec4<f32>(global0.c, global0.c, global0.c, global0.c), Struct_2(global2[_wgslsmith_index_u32(global0.b, 8u)], global0.c, global2[_wgslsmith_index_u32(global0.a.x, 8u)], global0.a.x, 0u), -156f).a) % vec2<u32>(32u))), global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.c, -318f)))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(2076f, _wgslsmith_f_op_f32(f32(-1f) * -946f))))));
    let var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(-select(vec2<i32>(2147483647i, 40054i), vec2<i32>(34480i, -49054i), true), max(vec2<i32>(-4287i, 1i), -vec2<i32>(2147483647i, -2147483647i))), vec2<i32>(1i, 0i)), -_wgslsmith_mult_vec2_i32(~firstTrailingBit(vec2<i32>(-1i, 0i)), vec2<i32>(_wgslsmith_sub_i32(-16009i, -2147483647i), 0i)));
    return func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(373f, 1000f, -455f, 322f)), vec4<f32>(_wgslsmith_f_op_f32(global0.c + global0.c), global0.c, _wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(-global0.c)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1830f, global0.c, -433f, var_1.c))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c, -1924f, global0.c, var_1.c) * vec4<f32>(-1297f, -543f, var_1.c, global0.c)))), vec4<bool>(true, all(global1[_wgslsmith_index_u32(4294967295u, 22u)]), true, false)))), Struct_2(Struct_1(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, var_2), vec2<i32>(1i, var_2), vec2<i32>(var_2, var_2)), firstLeadingBit(vec2<i32>(-2147483647i, var_2))), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), true)), 367f, Struct_1(~(~vec2<i32>(var_2, 2147483647i)), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), func_3(_wgslsmith_div_f32(var_1.c, global0.c), 517f, var_1.b, ~var_1.b) << (53415u % 32u), ~var_1.a.x), -769f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = global0.b ^ ~(~global0.a.x);
    global2 = array<Struct_1, 8>();
    let var_2 = all(!(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(1000f)), -1220f, global0.c);
}

