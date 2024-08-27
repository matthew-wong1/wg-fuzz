struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 26>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<i32>) -> f32 {
    global0 = array<vec2<i32>, 26>();
    global0 = array<vec2<i32>, 26>();
    global0 = array<vec2<i32>, 26>();
    var var_0 = 44789u;
    let var_1 = true;
    return 2343f;
}

fn func_2() -> f32 {
    let var_0 = Struct_1(!vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true), _wgslsmith_mod_u32(abs(max(_wgslsmith_mod_u32(0u, 38823u), ~u_input.a)), _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, u_input.a << (1u % 32u)), u_input.a)));
    global0 = array<vec2<i32>, 26>();
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-431f + -741f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(vec4<i32>(-1i, 0i, -46406i, -1i), global0[_wgslsmith_index_u32(var_0.b, 26u)])), -271f)))), Struct_2(var_0, Struct_1(vec3<bool>(!var_0.a.x, true, var_0.a.x), firstLeadingBit(~11519u)), var_0.b), ~_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(4294967295u, var_0.b, var_0.b, var_0.b)), ~vec4<u32>(1u, var_0.b, 4294967295u, 9260u)), var_0);
    var var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(9738i, 1i, _wgslsmith_add_i32(-5529i, reverseBits(35837i)), -(950i << (var_1.c % 32u))), -min(abs(vec4<i32>(-42368i, 31675i, 51080i, 1i)), -vec4<i32>(0i, -2147483647i, -4647i, 1i))) | reverseBits(min(vec4<i32>(_wgslsmith_mod_i32(3016i, -1i), 1i, 0i, _wgslsmith_sub_i32(1i, 0i)), abs(vec4<i32>(-36163i, -43492i, 38055i, 0i))));
    let var_3 = _wgslsmith_div_vec4_u32(~firstTrailingBit(select(vec4<u32>(var_1.b.a.b, 15671u, 39487u, u_input.a), vec4<u32>(var_1.b.a.b, var_1.c, 37886u, 15226u), vec4<bool>(false, var_1.b.b.a.x, var_1.d.a.x, var_0.a.x))) >> (vec4<u32>(u_input.a, min(u_input.a, ~1u), ~32906u, var_0.b) % vec4<u32>(32u)), vec4<u32>(0u, _wgslsmith_div_u32(var_1.c, ~87264u), var_0.b, 16097u) >> (~(reverseBits(vec4<u32>(0u, 87642u, 0u, u_input.a)) >> (max(vec4<u32>(1u, 4294967295u, 0u, var_1.c), vec4<u32>(u_input.a, var_1.b.b.b, 0u, 23292u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(-var_1.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-112f + -452f) + var_1.a)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_2) -> vec3<u32> {
    var var_0 = Struct_2(Struct_1(select(select(vec3<bool>(arg_2.b.a.x, arg_2.b.a.x, false), !arg_2.b.a, select(true, arg_2.a.a.x, false)), !vec3<bool>(true, arg_2.b.a.x, arg_2.b.a.x), false && arg_2.a.a.x), 0u), Struct_1(vec3<bool>(arg_2.b.a.x, !(arg_2.c >= arg_2.c), true), ~(~44951u)), abs(_wgslsmith_add_u32(~(~arg_2.a.b), arg_2.c)));
    global0 = array<vec2<i32>, 26>();
    global0 = array<vec2<i32>, 26>();
    let var_1 = abs(countOneBits(41797u));
    var var_2 = arg_2;
    return ~(_wgslsmith_mod_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(22327u, 14036u, u_input.a), vec3<u32>(var_1, 1053u, 1u)), abs(vec3<u32>(var_1, 18594u, var_1))) | firstLeadingBit(vec3<u32>(0u, 19045u, var_0.c) | _wgslsmith_mod_vec3_u32(vec3<u32>(38159u, var_0.b.b, var_1), vec3<u32>(var_0.b.b, 0u, 31123u))));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2) -> f32 {
    var var_0 = vec2<i32>(-2147483647i, 1i);
    var_0 = arg_0.yy;
    let var_1 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1451f, -390f, 437f, -113f)) - _wgslsmith_div_vec4_f32(vec4<f32>(1329f, -833f, -794f, -487f), vec4<f32>(1056f, 1664f, -2339f, 500f))))), _wgslsmith_f_op_f32(select(728f, _wgslsmith_f_op_f32(func_2()), -789f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(381f - -1000f) - _wgslsmith_f_op_f32(floor(1140f))))), arg_1);
    var var_2 = Struct_1(vec3<bool>(all(select(vec3<bool>(arg_1.a.a.x, false, true), vec3<bool>(arg_1.b.a.x, false, false), arg_1.a.a.x)) | false, !all(select(arg_1.b.a, vec3<bool>(arg_1.a.a.x, arg_1.a.a.x, arg_1.a.a.x), true)), arg_1.a.a.x), ~1u);
    var_2 = arg_1.b;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(751f, _wgslsmith_f_op_f32(abs(-715f)))) * _wgslsmith_div_f32(390f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -706f) + 969f) * _wgslsmith_f_op_f32(func_2()))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_vec2_i32(global0[_wgslsmith_index_u32(1u, 26u)], vec2<i32>(abs(firstLeadingBit(2147483647i)), -14267i));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -316f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-522f - -230f))));
    global0 = array<vec2<i32>, 26>();
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec3<i32>(0i, var_0.x, var_0.x) << (vec3<u32>(43241u, u_input.a, u_input.a) % vec3<u32>(32u)), Struct_2(Struct_1(vec3<bool>(true, false, false), 9051u), Struct_1(vec3<bool>(true, true, true), 99498u), 85899u))), -961f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-845f)))));
    var var_3 = vec2<bool>(any(select(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(all(vec2<bool>(true, false)), true, u_input.a >= 38260u, 534f < var_1), false)), true);
    var_3 = select(select(select(!(!vec2<bool>(var_3.x, var_3.x)), vec2<bool>(true, any(vec4<bool>(false, var_3.x, var_3.x, false))), vec2<bool>(select(var_3.x, true, true), true)), vec2<bool>(var_3.x, var_3.x), !vec2<bool>(true, !var_3.x)), vec2<bool>(var_3.x, var_3.x), var_3.x);
    var var_4 = Struct_2(Struct_1(!vec3<bool>(false, var_3.x, all(vec3<bool>(var_3.x, true, false))), u_input.a), Struct_1(select(!select(vec3<bool>(true, true, var_3.x), vec3<bool>(var_3.x, false, var_3.x), vec3<bool>(false, false, true)), vec3<bool>(var_3.x, all(vec2<bool>(var_3.x, true)), !var_3.x), vec3<bool>(var_3.x || var_3.x, true, true)), 1u), 22249u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(abs(_wgslsmith_div_u32(_wgslsmith_div_u32(var_4.c, var_4.b.b), 4294967295u)), ~u_input.a), i32(-1i) * -1i, -firstLeadingBit(max(~vec3<i32>(2958i, 5076i, 0i), ~vec3<i32>(var_0.x, 0i, 39591i))));
}

