struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<bool>,
    d: u32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
    c: Struct_2,
    d: u32,
}

struct Struct_5 {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 12>;

var<private> global1: Struct_3;

var<private> global2: array<u32, 26>;

var<private> global3: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(2022f), Struct_3(311f), Struct_3(-1000f), Struct_3(-379f), Struct_3(376f), Struct_3(-243f), Struct_3(164f), Struct_3(-2016f), Struct_3(-1830f), Struct_3(1564f), Struct_3(-3089f), Struct_3(-349f), Struct_3(1000f), Struct_3(-451f), Struct_3(-1958f), Struct_3(-685f), Struct_3(371f), Struct_3(-439f), Struct_3(-252f), Struct_3(892f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: f32) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(275f, -1055f, 603f, arg_0), vec4<f32>(1220f, -567f, global1.a, global1.a))))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(377f, 835f, var_0.x, global1.a)))))));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1.a, 1f), _wgslsmith_f_op_f32(var_0.x + 675f)))), true));
    let var_2 = Struct_1(abs(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), true);
    global1 = global3[_wgslsmith_index_u32(max(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(~30651u, global2[_wgslsmith_index_u32(24946u, 26u)]), u_input.b), ~_wgslsmith_sub_u32(4294967295u, 17597u)), 20u)];
    return vec3<u32>(firstLeadingBit(~(~54611u)), ~1u, ~(~u_input.b));
}

fn func_3(arg_0: i32) -> vec3<u32> {
    var var_0 = vec3<u32>(u_input.b ^ (abs(_wgslsmith_clamp_u32(9813u, 4294967295u, 4294967295u)) << (u_input.b % 32u)), _wgslsmith_add_u32(global2[_wgslsmith_index_u32(72192u, 26u)], global2[_wgslsmith_index_u32(1u >> (~_wgslsmith_add_u32(global2[_wgslsmith_index_u32(u_input.b, 26u)], global2[_wgslsmith_index_u32(120303u, 26u)]) % 32u), 26u)]), _wgslsmith_sub_u32(firstLeadingBit(~u_input.b), abs(global2[_wgslsmith_index_u32(~(0u & u_input.b), 26u)])));
    global1 = Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -680f)))));
    var var_1 = Struct_1(arg_0, !(!select(false, true, true)) | (select(select(2147483647i, arg_0, false), firstLeadingBit(arg_0), -466f < global1.a) >= _wgslsmith_mod_i32(u_input.a.x, arg_0 & 2147483647i)));
    var var_2 = u_input.a.x;
    global0 = array<vec4<bool>, 12>();
    return vec3<u32>(var_0.x, 9688u, ~u_input.b);
}

fn func_2(arg_0: vec4<bool>, arg_1: f32) -> vec3<u32> {
    global2 = array<u32, 26>();
    let var_0 = vec3<bool>(arg_0.x, true, any(arg_0.xw));
    let var_1 = 86149u;
    global1 = Struct_3(1f);
    let var_2 = arg_0.x;
    return ~(~vec3<u32>(select(1u, u_input.b, false), _wgslsmith_add_u32(global2[_wgslsmith_index_u32(26038u, 26u)], var_1), _wgslsmith_add_u32(var_1, 26499u))) | _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_1, var_1, u_input.b) & vec3<u32>(4294967295u, var_1, var_1), vec3<u32>(global2[_wgslsmith_index_u32(u_input.b, 26u)], u_input.b, 16794u)), ~(~vec3<u32>(0u, 22503u, 54651u))), min(vec3<u32>(u_input.b, ~0u, 80236u), func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(-25685i, 2147483647i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.a.x, 0i, u_input.a.x, -1i)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: i32, arg_3: bool) -> Struct_1 {
    global1 = Struct_3(global1.a);
    global2 = array<u32, 26>();
    global3 = array<Struct_3, 20>();
    let var_0 = Struct_5(arg_2, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.a, global1.a))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(921f, global1.a)))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.a, 227f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, 1056f) - vec2<f32>(global1.a, global1.a)))))), u_input.a.x, global3[_wgslsmith_index_u32(u_input.b, 20u)]);
    let var_1 = ~vec4<u32>(~(~u_input.b) ^ 4294967295u, 1u, 3110u, 12843u);
    return Struct_1(var_0.a, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, true);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.a, global1.a, -954f, -1020f), vec4<f32>(global1.a, 188f, global1.a, global1.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(518f, 1091f, global1.a, global1.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-107f, global1.a, global1.a, 907f)))) * _wgslsmith_div_vec4_f32(vec4<f32>(global1.a, _wgslsmith_f_op_f32(ceil(-488f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.a, global1.a, false)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1596f, global1.a, _wgslsmith_f_op_f32(floor(-613f)), _wgslsmith_f_op_f32(-global1.a)))));
    var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -520f), -1928f, _wgslsmith_f_op_f32(-106f - global1.a), _wgslsmith_f_op_f32(-831f * var_1.x))))));
    let var_2 = func_4(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(39777u, u_input.b, u_input.b), vec3<u32>(u_input.b, global2[_wgslsmith_index_u32(19694u, 26u)], 116u)), vec3<u32>(1u, 1u, 1u)) ^ _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.b, 4294967295u, 26464u), func_1(global1.a)), ~func_2(!global0[_wgslsmith_index_u32(4294967295u, 12u)], _wgslsmith_f_op_f32(var_1.x - -943f))), !select(vec4<bool>(-839f <= var_1.x, true, !var_0.x, true), select(select(global0[_wgslsmith_index_u32(u_input.b, 12u)], global0[_wgslsmith_index_u32(35098u, 12u)], false), select(global0[_wgslsmith_index_u32(u_input.b, 12u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 26u)], 12u)], true), var_0.x), global0[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(~u_input.b, 26u)], 12u)]), -u_input.a.x, true);
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-720f, 1298f, 209f, var_1.x), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x))))) - vec4<f32>(-939f, _wgslsmith_f_op_f32(-170f + var_1.x), 1267f, 1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(115f, var_1.x, var_1.x, var_1.x)))))), global0[_wgslsmith_index_u32(select(~(~global2[_wgslsmith_index_u32(19222u, 26u)]) << (~global2[_wgslsmith_index_u32(u_input.b, 26u)] % 32u), _wgslsmith_div_u32(u_input.b, global2[_wgslsmith_index_u32(func_1(global1.a).x, 26u)]), select(true, !(global1.a == global1.a), var_2.b)), 12u)]));
    var var_4 = var_2;
    let var_5 = -862f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.a.x, ~u_input.a.x, var_4.a), u_input.c.yxw), _wgslsmith_mult_i32(abs(firstTrailingBit(19031i)), var_4.a), ~(~select(vec3<u32>(global2[_wgslsmith_index_u32(1u, 26u)], u_input.b, 42989u), vec3<u32>(u_input.b, u_input.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13995u, 26u)], 26u)], 26u)]) | vec3<u32>(1u, 24858u, global2[_wgslsmith_index_u32(u_input.b, 26u)]), select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, false, var_4.b), vec3<bool>(var_4.b, var_0.x, var_2.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -494f) + var_1.x));
}

