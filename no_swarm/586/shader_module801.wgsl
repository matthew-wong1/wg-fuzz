struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(true, false, false, false, false, true, true, true, false, false, false, false, false, false, false, false, true, true, true, true, true);

var<private> global1: array<bool, 23>;

var<private> global2: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(-65936i), Struct_3(0i), Struct_3(37915i), Struct_3(-31620i), Struct_3(2147483647i), Struct_3(-1i), Struct_3(2147483647i), Struct_3(-1i), Struct_3(11543i), Struct_3(-1i), Struct_3(-27049i), Struct_3(-1i), Struct_3(-1i), Struct_3(-31273i), Struct_3(-40536i), Struct_3(46738i), Struct_3(27733i), Struct_3(32584i), Struct_3(0i), Struct_3(1i), Struct_3(2147483647i), Struct_3(i32(-2147483648)), Struct_3(0i), Struct_3(14550i), Struct_3(-23980i), Struct_3(13382i), Struct_3(1i), Struct_3(18636i), Struct_3(-13045i), Struct_3(-20894i), Struct_3(-31417i));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: vec4<bool>) -> vec2<i32> {
    return reverseBits(vec2<i32>(-_wgslsmith_clamp_i32(~u_input.a, 1i, u_input.a & 28267i), _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.a, u_input.b), vec2<i32>(-1i, -1i), vec2<bool>(global0[_wgslsmith_index_u32(34644u, 21u)], true)), -vec2<i32>(u_input.b, 47656i)) << (_wgslsmith_mult_u32(~47486u, 0u) % 32u)));
}

fn func_3() -> f32 {
    let var_0 = ~_wgslsmith_sub_i32(-68675i, countOneBits(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.a, 1i, -70479i), vec4<i32>(u_input.b, 1i, u_input.a, -35589i)), u_input.b | u_input.b)));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1108f) * -294f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2290f), _wgslsmith_f_op_f32(f32(-1f) * -531f), any(vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 23u)], false, false))))))), ~27244u);
    let var_2 = var_1;
    var var_3 = countOneBits(_wgslsmith_mod_vec3_u32(~vec3<u32>(49732u, 51979u, var_2.b), firstLeadingBit(_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_1.b, 84202u, 30420u), _wgslsmith_div_vec3_u32(vec3<u32>(77249u, 1u, 25990u), vec3<u32>(var_2.b, 10213u, 4294967295u)), vec3<u32>(0u, 1u, 32329u)))));
    var var_4 = ~_wgslsmith_mod_u32(1u << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 6073u, 1u, var_3.x), abs(vec4<u32>(var_2.b, var_2.b, 0u, var_3.x))) % 32u), reverseBits(4294967295u & var_2.b) >> (~countOneBits(6805u) % 32u));
    return _wgslsmith_f_op_f32(-var_2.a);
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: vec4<bool>) -> vec3<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-622f)), _wgslsmith_f_op_f32(floor(-518f)), 513f)), vec3<f32>(_wgslsmith_f_op_f32(func_3()), 1f, -215f))));
    var var_1 = -vec2<i32>(2147483647i, -1i);
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1607f), 1000f) + _wgslsmith_f_op_f32(f32(-1f) * -1744f))), ~_wgslsmith_mult_u32(3467u, 6537u));
    var_1 = -(~vec2<i32>(arg_0.a, -1i));
    let var_3 = vec2<i32>(func_1(!(!arg_2)).x, (i32(-1i) * -1i) >> (_wgslsmith_clamp_u32(var_2.b, 46080u, 0u) % 32u));
    return select(vec3<bool>(false, arg_2.x, false), vec3<bool>(global1[_wgslsmith_index_u32(var_2.b, 23u)], false, !global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(10808u, 2395u, 70867u), 21u)]), true);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: i32) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(1u, 31u)];
    global1 = array<bool, 23>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(414f, arg_1.x, _wgslsmith_f_op_f32(-arg_1.x))))));
    global0 = array<bool, 21>();
    var var_2 = Struct_1(-(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, 28464i, 1i), vec3<i32>(var_0.a, -2147483647i, arg_3)) | -2147483647i), ~vec3<u32>(_wgslsmith_mod_u32(~1u, 33624u), 23221u, ~(~0u)));
    return Struct_1(_wgslsmith_clamp_i32(i32(-1i) * -58504i, _wgslsmith_mod_i32(min(_wgslsmith_sub_i32(var_0.a, var_2.a), firstLeadingBit(0i)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, u_input.b, var_2.a, 2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.x, var_0.a, u_input.a, arg_3), vec4<i32>(-1i, var_0.a, 0i, 1i)))), 2147483647i), ~firstTrailingBit(vec3<u32>(~var_2.b.x, ~var_2.b.x, 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 21>();
    let var_0 = func_4(-firstLeadingBit(func_1(select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(4294967295u, 23u)], true, false), vec4<bool>(false, false, global1[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(35520u, 21u)]), vec4<bool>(true, false, false, false)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-585f, 1746f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-159f * 1562f)), -460f))), select(vec4<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(54662u, 21u)], global0[_wgslsmith_index_u32(50138u, 21u)], true)), true, _wgslsmith_sub_i32(u_input.b, u_input.b) == ~52498i, !(!global1[_wgslsmith_index_u32(103453u, 23u)])), vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(114704u, 47237u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 40855u, 49328u), vec4<u32>(81521u, 32747u, 1u, 95328u)) % 32u), 21u)], true, all(func_2(Struct_3(u_input.b), global1[_wgslsmith_index_u32(4294967295u, 23u)], vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 21u)], true, global1[_wgslsmith_index_u32(62659u, 23u)], true))), !global1[_wgslsmith_index_u32(~4294967295u, 23u)]), !vec4<bool>(global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(1u, 21u)], select(false, global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(1u, 23u)]), false)), ~_wgslsmith_clamp_i32(~_wgslsmith_mult_i32(0i, u_input.a), -(~2147483647i), 12001i));
    let var_1 = _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b | -1i, reverseBits(0i)), func_1(select(vec4<bool>(false, global0[_wgslsmith_index_u32(63779u, 21u)], global1[_wgslsmith_index_u32(27373u, 23u)], global1[_wgslsmith_index_u32(4294967295u, 23u)]), vec4<bool>(global1[_wgslsmith_index_u32(40577u, 23u)], global0[_wgslsmith_index_u32(0u, 21u)], false, global0[_wgslsmith_index_u32(var_0.b.x, 21u)]), vec4<bool>(false, true, global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)])))), vec2<i32>(0i, 2147483647i)), ~vec2<i32>(~(-var_0.a), 1i));
    var var_2 = vec2<f32>(770f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1005f + 709f)));
    global0 = array<bool, 21>();
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-808f * _wgslsmith_f_op_f32(step(var_2.x, var_2.x))), var_2.x, false)) - _wgslsmith_f_op_f32(abs(var_2.x))), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1994f, -1000f))));
    var var_4 = Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(func_1(vec4<bool>(global1[_wgslsmith_index_u32(var_0.b.x, 23u)], global1[_wgslsmith_index_u32(var_0.b.x, 23u)], true, global0[_wgslsmith_index_u32(26595u, 21u)])).x, _wgslsmith_clamp_i32(var_1.x, func_1(vec4<bool>(false, global1[_wgslsmith_index_u32(var_0.b.x, 23u)], false, true)).x, countOneBits(-2147483647i)), u_input.b, ~select(2342i, -20904i, true)), ~vec4<i32>(i32(-1i) * -24854i, ~39226i, reverseBits(0i), i32(-1i) * -37346i)));
    let var_5 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x * -789f) + -526f))), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(var_0.b, vec3<u32>(~28307u, var_0.b.x << (1u % 32u), var_0.b.x)), var_0.b.x << (var_0.b.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(select(vec2<u32>(_wgslsmith_dot_vec2_u32(var_0.b.zx, vec2<u32>(var_5.b, var_5.b)), 1u), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(var_0.b.zy, vec2<u32>(var_0.b.x, var_0.b.x)), reverseBits(vec2<u32>(0u, 20530u))), !func_2(Struct_3(var_1.x), true, vec4<bool>(global1[_wgslsmith_index_u32(10436u, 23u)], global1[_wgslsmith_index_u32(var_5.b, 23u)], global0[_wgslsmith_index_u32(var_5.b, 21u)], global1[_wgslsmith_index_u32(var_0.b.x, 23u)])).x)), (var_0.b.x >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, 27363u, 1u, var_0.b.x), vec4<u32>(4294967295u, 0u, var_5.b, 2556u)) % 32u)) ^ var_5.b, var_0.b);
}

