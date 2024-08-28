struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(-1i, vec4<u32>(26992u, 1u, 20682u, 0u), 2147483647i, 7377u), Struct_1(i32(-2147483648), vec4<u32>(0u, 8580u, 4294967295u, 89715u), 33989i, 4294967295u), Struct_1(-1i, vec4<u32>(4294967295u, 21450u, 42784u, 1u), 1i, 1u), Struct_1(65i, vec4<u32>(0u, 4294967295u, 3827u, 12433u), -16498i, 0u), Struct_1(1i, vec4<u32>(4294967295u, 0u, 29821u, 78499u), 38271i, 36518u));

var<private> global1: array<vec2<u32>, 30>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> i32 {
    let var_0 = u_input.a.xy;
    var var_1 = arg_0 && any(vec4<bool>(all(vec4<bool>(true, arg_0, true, true)), arg_0 || !arg_0, arg_0, select(true, arg_0, any(vec2<bool>(arg_0, arg_0)))));
    let var_2 = 1u;
    let var_3 = u_input.a.yy;
    global1 = array<vec2<u32>, 30>();
    return 1i;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(~(-59644i), abs(arg_0.b), arg_0.c ^ u_input.a.x, _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(10594u, arg_0.b.x, 1u), vec3<u32>(arg_0.d, 21560u, 13813u)), ~(~arg_0.d) ^ _wgslsmith_clamp_u32(~1u, 1u, arg_0.b.x)));
    let var_1 = Struct_1(func_3(true, arg_0) << ((1u << (var_0.b.x % 32u)) % 32u), vec4<u32>(_wgslsmith_mod_u32(arg_0.d, arg_0.b.x), max(~(~11316u), 57745u), 1u, var_0.b.x), select(-1i, _wgslsmith_mult_i32(arg_0.c, u_input.a.x << (52343u % 32u)) >> (~_wgslsmith_dot_vec4_u32(var_0.b, arg_0.b) % 32u), all(vec2<bool>(true, true)) && (_wgslsmith_sub_u32(var_0.b.x, 18199u) != ~arg_0.b.x)), var_0.b.x);
    var var_2 = vec4<bool>(any(vec4<bool>((var_1.b.x > var_1.b.x) | true, true, all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false))), ~0u <= arg_0.b.x)), any(vec2<bool>(true, select(true, true, any(vec3<bool>(false, true, true))))), !any(!select(vec2<bool>(true, false), vec2<bool>(true, false), true)), true);
    let var_3 = Struct_1(func_3(var_2.x, Struct_1(var_0.a | _wgslsmith_mod_i32(-26283i, -4837i), vec4<u32>(arg_0.b.x, arg_0.d, 9946u, 23837u) | ~vec4<u32>(var_0.d, var_1.d, var_0.b.x, 9386u), 1i, _wgslsmith_mod_u32(arg_0.d, _wgslsmith_dot_vec2_u32(var_0.b.zz, vec2<u32>(var_1.b.x, 0u))))), ~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(arg_0.b.x, var_0.b.x, var_1.b.x, 1u), countOneBits(arg_0.b)), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 32618u, var_0.b.x, 63792u), vec4<u32>(34565u, 4294967295u, arg_0.b.x, var_1.d), vec4<u32>(28562u, var_0.b.x, arg_0.b.x, arg_0.d)), _wgslsmith_div_vec4_u32(var_1.b, arg_0.b))), max(var_0.a >> (var_1.b.x % 32u), i32(-1i) * -2147483647i), ~0u);
    var var_4 = vec3<u32>(select(_wgslsmith_add_u32(_wgslsmith_div_u32(~var_1.d, countOneBits(56260u)), ~(var_0.d | var_3.d)), _wgslsmith_div_u32(_wgslsmith_mult_u32(20367u, var_1.b.x) >> (1157u % 32u), ~var_1.b.x >> ((29344u << (var_3.b.x % 32u)) % 32u)), any(select(!vec4<bool>(true, var_2.x, false, var_2.x), vec4<bool>(var_2.x, false, false, var_2.x), select(vec4<bool>(false, true, var_2.x, var_2.x), vec4<bool>(var_2.x, false, var_2.x, true), false)))), ~var_1.d, 87317u);
    return Struct_1(firstLeadingBit(i32(-1i) * -54580i), abs(_wgslsmith_add_vec4_u32(firstTrailingBit(var_1.b), countOneBits(var_0.b & arg_0.b))), -_wgslsmith_clamp_i32(43420i, _wgslsmith_div_i32(firstTrailingBit(var_0.a), _wgslsmith_add_i32(-1i, -14239i)), _wgslsmith_mod_i32(-u_input.a.x, reverseBits(var_1.a))), 1u);
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> vec4<bool> {
    return vec4<bool>(true, true, !(arg_1.d != 0u), true);
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1176f, -579f, -1570f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 632f, 1696f)))))));
    var var_1 = global0[_wgslsmith_index_u32(1u, 5u)];
    var var_2 = select(!(!func_4(u_input.a.x, func_2(Struct_1(var_1.c, var_1.b, u_input.a.x, 0u)))), select(select(vec4<bool>(var_1.d <= 76399u, true, false, true), vec4<bool>(true, all(vec4<bool>(false, true, true, false)), all(vec3<bool>(true, false, false)), true), select(true, var_0.x == 1078f, all(vec4<bool>(false, true, true, false)))), vec4<bool>(false, false, false, all(vec3<bool>(true, true, true))), vec4<bool>(true, false, true, any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))))), select(!func_4(~4345i, func_2(Struct_1(var_1.c, var_1.b, var_1.c, var_1.d))), vec4<bool>(true, true, true, all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)))), vec4<bool>(-942f > _wgslsmith_f_op_f32(round(var_0.x)), true, true, ~var_1.a == (-3977i >> (1u % 32u)))));
    global1 = array<vec2<u32>, 30>();
    var_2 = func_4(u_input.a.x, Struct_1(var_1.c, var_1.b, -1i >> (var_1.b.x % 32u), ~0u));
    return var_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    let var_0 = global0[_wgslsmith_index_u32(1u, 5u)];
    var var_1 = global0[_wgslsmith_index_u32(~func_1(), 5u)];
    var var_2 = global0[_wgslsmith_index_u32(var_1.b.x, 5u)];
    var var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1067f, 1529f), vec2<f32>(-1450f, 1000f)))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -863f), 462f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2538f, -1000f) * vec2<f32>(423f, 654f))), true))))));
    let var_4 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(round(var_3.x)), var_3.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(411f, _wgslsmith_div_f32(var_3.x, var_3.x)))), _wgslsmith_div_f32(-229f, -170f))));
    global1 = array<vec2<u32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_0.b));
}

