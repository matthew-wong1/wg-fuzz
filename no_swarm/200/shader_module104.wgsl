struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31> = array<i32, 31>(i32(-2147483648), -1i, -41565i, 0i, -35718i, -15516i, 2147483647i, -1i, 1i, 0i, 2147483647i, 0i, -29286i, 1i, 13387i, 0i, 72497i, 27531i, 13584i, 0i, 14250i, 14282i, 1i, i32(-2147483648), -1957i, 1i, -1i, -17645i, 54815i, -22998i, 0i);

var<private> global1: Struct_3;

var<private> global2: array<vec4<bool>, 15> = array<vec4<bool>, 15>(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: f32, arg_3: u32) -> vec2<i32> {
    return vec2<i32>(u_input.a.x, -_wgslsmith_mod_i32(_wgslsmith_add_i32(28474i | u_input.a.x, _wgslsmith_mult_i32(-1i, -47439i)), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_0, u_input.a.x, 0i), vec4<i32>(-1i, u_input.a.x, u_input.a.x, arg_0)), 1i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec3<bool>) -> f32 {
    var var_0 = arg_1;
    global2 = array<vec4<bool>, 15>();
    let var_1 = Struct_2(vec2<i32>((10787i & _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -83410i, 2147483647i), arg_0.xzz)) & _wgslsmith_mod_i32(u_input.a.x, 34284i), countOneBits(-(u_input.a.x >> (1u % 32u)))));
    let var_2 = firstTrailingBit(abs(min(i32(-1i) * -23180i, 38283i)) >> (~firstTrailingBit(~1u) % 32u));
    let var_3 = Struct_3(global1.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - 290f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    var var_0 = vec4<bool>(true, !any(vec4<bool>(false, arg_3.b.x & arg_3.b.x, true, false)), arg_3.b.x, any(vec4<bool>(!arg_3.b.x, true, arg_3.b.x, any(!vec3<bool>(arg_3.b.x, global1.a.b.x, false)))));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global1.a.a - vec2<f32>(arg_0.x, arg_0.x))))), !vec2<bool>(true, any(vec3<bool>(false, false, arg_3.b.x)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1566f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -813f) * _wgslsmith_f_op_f32(func_3(vec4<i32>(6268i, u_input.a.x, 0i, arg_1.x), global2[_wgslsmith_index_u32(u_input.b, 15u)], var_0.xxy)))))), select(vec2<bool>(select(true, !var_0.x, false), true), select(vec2<bool>(arg_3.b.x, true), var_1.a.b, select(!vec2<bool>(var_1.a.b.x, false), var_0.yy, arg_3.b)), true));
    var var_3 = any(!var_0.zyx);
    let var_4 = _wgslsmith_clamp_u32(~53066u, countOneBits(firstTrailingBit(countOneBits(select(u_input.b, u_input.b, var_1.a.b.x)))), min(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, u_input.b, u_input.b), abs(~vec3<u32>(18816u, 4294967295u, 1u))), 22718u));
    return Struct_2(vec2<i32>(-_wgslsmith_mod_i32(2147483647i, -56546i), reverseBits(abs(24694i))) << (((~vec2<u32>(4294967295u, u_input.b) & (vec2<u32>(1u, 33343u) | vec2<u32>(u_input.b, 1u))) << (~vec2<u32>(36286u, 135678u) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-global1.a.a.x), -257f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -273f));
    var var_1 = -_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(abs(u_input.b), 31u)], _wgslsmith_div_i32(-67038i, 7981i)), u_input.a.yx), u_input.a.zz);
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(floor(global1.a.a.x)), var_0.x, _wgslsmith_div_f32(global1.a.a.x, _wgslsmith_f_op_f32(-var_0.x)), 805f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.a.a.x, 1999f, var_0.x, 1219f))))))), ~_wgslsmith_mod_vec2_i32(func_1(global0[_wgslsmith_index_u32(1u, 31u)], u_input.b, -668f, u_input.b), -vec2<i32>(14218i, 20139i)), Struct_2(vec2<i32>(-1i, i32(-1i) * -2147483647i)), global1.a);
    global0 = array<i32, 31>();
    global1 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.a.x, global1.a.a.x) + var_0.zw))), vec2<bool>(global1.a.b.x, !global1.a.b.x & true)));
    let var_3 = firstTrailingBit(vec3<u32>(_wgslsmith_div_u32(u_input.b, u_input.b), u_input.b, u_input.b ^ u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, var_2.a.x, i32(-1i) * -57441i, u_input.a.x << (u_input.b % 32u)), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.b, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(var_3.x, 31u)]), vec4<i32>(u_input.a.x, -1i, -1i, 1i))))), -31166i, abs(vec4<i32>(u_input.a.x, 10199i, 35590i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(55137u, 31u)], var_2.a.x, u_input.a.x, 0i), select(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, 7559i), vec4<i32>(32794i, -18014i, -42881i, global0[_wgslsmith_index_u32(4294967295u, 31u)]), global2[_wgslsmith_index_u32(var_3.x, 15u)])))), ~_wgslsmith_sub_vec2_u32(~select(vec2<u32>(u_input.b, 4294967295u), var_3.xy, global1.a.b), _wgslsmith_add_vec2_u32(vec2<u32>(var_3.x, 35280u), var_3.yz) >> (~vec2<u32>(var_3.x, 4294967295u) % vec2<u32>(32u))), ~(~(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, var_3.x), var_3.xy) | (vec2<u32>(u_input.b, u_input.b) << (vec2<u32>(u_input.b, var_3.x) % vec2<u32>(32u))))));
}

