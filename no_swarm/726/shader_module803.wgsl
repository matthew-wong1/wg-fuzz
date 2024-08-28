struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 26>;

var<private> global1: array<vec2<bool>, 10> = array<vec2<bool>, 10>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global2: array<i32, 27> = array<i32, 27>(-4054i, i32(-2147483648), 26241i, -1i, i32(-2147483648), i32(-2147483648), 1102i, 38318i, 2147483647i, -29145i, 1i, -13291i, i32(-2147483648), 97577i, -1i, -1i, -1i, 2147483647i, 1i, 2494i, 1i, 1i, 0i, 16334i, 0i, -14541i, 2362i);

var<private> global3: u32 = 17112u;

var<private> global4: array<vec3<i32>, 12> = array<vec3<i32>, 12>(vec3<i32>(9346i, -2232i, 35663i), vec3<i32>(-45237i, -18753i, 0i), vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), vec3<i32>(22514i, 0i, 1i), vec3<i32>(2147483647i, 0i, 0i), vec3<i32>(1i, -13982i, -25229i), vec3<i32>(52056i, 46527i, 0i), vec3<i32>(-32854i, -4253i, -40943i), vec3<i32>(42915i, 47533i, -65475i), vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), vec3<i32>(2147483647i, 15908i, 1i), vec3<i32>(0i, 0i, 11299i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> u32 {
    let var_0 = ~u_input.a;
    var var_1 = arg_1;
    global2 = array<i32, 27>();
    var var_2 = arg_0.a;
    var var_3 = vec3<bool>(any(!(!select(vec2<bool>(true, false), global1[_wgslsmith_index_u32(var_2.x, 10u)], vec2<bool>(true, true)))), all(select(vec3<bool>(true, all(vec2<bool>(false, true)), 1u == var_0), vec3<bool>(true, true, true), any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), false)))), var_2.x < (29416u & var_2.x));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_sub_u32(var_0, u_input.a), ~firstTrailingBit(1u), _wgslsmith_dot_vec4_u32(select(countOneBits(arg_0.a), arg_0.a ^ arg_0.a, !vec4<bool>(var_3.x, false, var_3.x, var_3.x)), ~arg_0.a)), ~vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(arg_0.a.x, 6147u), arg_0.a.x), 0u, 1u));
}

fn func_2() -> u32 {
    var var_0 = vec4<i32>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(~(~0u), _wgslsmith_mult_u32(u_input.a >> (u_input.a % 32u), u_input.a)), reverseBits(_wgslsmith_mult_u32(1u, u_input.a)) << (countOneBits(55694u) % 32u)), 27u)], global2[_wgslsmith_index_u32(1u, 27u)], (~reverseBits(global2[_wgslsmith_index_u32(u_input.a, 27u)]) | global2[_wgslsmith_index_u32(~func_3(Struct_1(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), global2[_wgslsmith_index_u32(0u, 27u)]), vec4<f32>(615f, 1161f, 1132f, 1000f)), 27u)]) << (4294967295u % 32u), (-global2[_wgslsmith_index_u32(u_input.a, 27u)] << (u_input.a % 32u)) ^ ~(~global2[_wgslsmith_index_u32(firstLeadingBit(4405u), 27u)]));
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-514f, 1185f, -315f, -1000f), vec4<f32>(-814f, 107f, 1174f, 1448f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(151f, -351f, -1315f, -200f) + vec4<f32>(502f, -1000f, 1956f, -759f)))))));
    global4 = array<vec3<i32>, 12>();
    let var_2 = -2147483647i;
    global4 = array<vec3<i32>, 12>();
    return min(u_input.a, ~u_input.a) & (~u_input.a ^ firstLeadingBit(_wgslsmith_mult_u32(u_input.a, 10005u | u_input.a)));
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> Struct_2 {
    var var_0 = 1000f;
    var var_1 = vec3<i32>(arg_1.a.c, firstLeadingBit(1i), countOneBits(_wgslsmith_clamp_i32(-global2[_wgslsmith_index_u32(~u_input.a, 27u)], 19825i, global2[_wgslsmith_index_u32(~arg_1.b.x & ~arg_1.b.x, 27u)])));
    var_1 = _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(global4[_wgslsmith_index_u32(arg_1.b.x, 12u)], vec3<i32>(26324i, var_1.x, -33959i) | (vec3<i32>(var_1.x, global2[_wgslsmith_index_u32(arg_1.b.x, 27u)], arg_1.a.c) << (_wgslsmith_mult_vec3_u32(arg_1.b, vec3<u32>(45771u, 1u, 24677u)) % vec3<u32>(32u)))), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_1.x, -2147483647i, 21132i), global4[_wgslsmith_index_u32(41687u, 12u)]) ^ global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.x, u_input.a, arg_1.b.x), vec3<u32>(4294967295u, 4294967295u, 1u)), 12u)], min(abs(global4[_wgslsmith_index_u32(arg_1.b.x, 12u)]), -vec3<i32>(2147483647i, arg_0, var_1.x))), vec3<i32>(firstLeadingBit(-2147483647i), arg_1.a.c, abs(30535i))));
    let var_2 = vec4<bool>(true, true, true, true);
    let var_3 = Struct_1(~(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 18479u, 4294967295u), vec4<u32>(u_input.a, arg_1.b.x, arg_1.b.x, arg_1.b.x)), firstTrailingBit(u_input.a), arg_1.b.x, max(arg_1.b.x, arg_1.b.x)) << (~abs(vec4<u32>(arg_1.b.x, 48453u, 1u, 34809u)) % vec4<u32>(32u))), abs(~((arg_1.a.c & -1i) & 1i)));
    return arg_1.a;
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    var var_0 = -1583f;
    global1 = array<vec2<bool>, 10>();
    global4 = array<vec3<i32>, 12>();
    global0 = array<vec3<u32>, 26>();
    let var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x) * _wgslsmith_f_op_f32(trunc(-948f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))), arg_0.a.x, ~_wgslsmith_dot_vec4_i32(~(vec4<i32>(73612i, global2[_wgslsmith_index_u32(20872u, 27u)], global2[_wgslsmith_index_u32(u_input.a, 27u)], arg_0.c) << (vec4<u32>(5863u, u_input.a, u_input.a, 0u) % vec4<u32>(32u))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.c, 52016i, 17666i, global2[_wgslsmith_index_u32(u_input.a, 27u)]), vec4<i32>(arg_0.c, -16189i, 1i, 1i))));
    return func_4(_wgslsmith_dot_vec3_i32(~max(global4[_wgslsmith_index_u32(u_input.a, 12u)] | vec3<i32>(53788i, global2[_wgslsmith_index_u32(u_input.a, 27u)], -1i), vec3<i32>(var_1.c, -20826i, 1i)), global4[_wgslsmith_index_u32(u_input.a, 12u)]), Struct_3(Struct_2(var_1.a, 1339f, -_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(u_input.a, 27u)], var_1.c)), vec3<u32>(~u_input.a, u_input.a, func_2())));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~max(~firstTrailingBit(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)), ~select(vec4<u32>(0u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 57165u), false)), -13445i);
    let var_1 = select(!vec4<bool>(select(true, any(vec3<bool>(true, true, true)), false), !any(vec3<bool>(false, false, true)), any(vec2<bool>(false, true)), select(true, true, false) && true), !(!vec4<bool>(true, any(global1[_wgslsmith_index_u32(4294967295u, 10u)]), global2[_wgslsmith_index_u32(1u, 27u)] <= var_0.b, true)), !(any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))) == ((var_0.b == global2[_wgslsmith_index_u32(0u, 27u)]) & true)));
    var var_2 = func_1(Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-811f, -444f), vec2<f32>(1134f, -1443f))))), 1f, _wgslsmith_mult_i32(-(var_0.b >> (1u % 32u)), 2147483647i)));
    global3 = ~(~u_input.a);
    global4 = array<vec3<i32>, 12>();
    var var_3 = abs(min(select(abs(-vec2<i32>(31340i, -1i)), vec2<i32>(-12543i, firstLeadingBit(-2147483647i)), true), _wgslsmith_mod_vec2_i32(abs(firstTrailingBit(vec2<i32>(global2[_wgslsmith_index_u32(8408u, 27u)], var_0.b))), vec2<i32>(-1i) * -vec2<i32>(-1i, 0i))));
    let x = u_input.a;
    s_output = StorageBuffer(13997u, u_input.a, _wgslsmith_clamp_vec2_u32(firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 4294967295u) << (vec2<u32>(13311u, 4294967295u) % vec2<u32>(32u)), var_0.a.xy << (var_0.a.yy % vec2<u32>(32u)))), vec2<u32>(u_input.a, 6393u), var_0.a.zz >> (firstLeadingBit(var_0.a.zy) % vec2<u32>(32u))), var_0.b);
}

