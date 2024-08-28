struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<i32>,
    d: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 4> = array<vec2<f32>, 4>(vec2<f32>(519f, -237f), vec2<f32>(2187f, -1000f), vec2<f32>(275f, 547f), vec2<f32>(125f, 1000f));

var<private> global1: array<vec4<bool>, 20> = array<vec4<bool>, 20>(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true));

var<private> global2: bool;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1() -> vec3<f32> {
    return vec3<f32>(724f, _wgslsmith_f_op_f32(step(-454f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -793f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(242f, -333f)) - 1f)))), -1577f);
}

fn func_3() -> i32 {
    let var_0 = u_input.c >> (max(~min(~85360u, 60023u), _wgslsmith_dot_vec2_u32(u_input.b.yw, abs(max(u_input.b.zy, vec2<u32>(u_input.a, u_input.c))))) % 32u);
    var var_1 = Struct_3(_wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(~2147483647i | select(-2147483647i, 45524i, true), firstLeadingBit(0i), 1i)), _wgslsmith_sub_i32(0i, i32(-1i) * -50846i));
    var var_2 = Struct_3(countOneBits(~select(vec3<i32>(var_1.a.x, var_1.a.x, 34802i), var_1.a, false)) | -(vec3<i32>(-1i) * -var_1.a), 7983i);
    global1 = array<vec4<bool>, 20>();
    var var_3 = _wgslsmith_f_op_f32(min(-565f, _wgslsmith_f_op_f32(ceil(-571f))));
    return var_2.b;
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: i32) -> f32 {
    let var_0 = Struct_4(-2147483647i < max(_wgslsmith_sub_i32(arg_1.c.x, arg_1.c.x) ^ func_3(), abs(_wgslsmith_sub_i32(arg_1.c.x, arg_1.c.x))));
    let var_1 = _wgslsmith_mod_vec4_i32(arg_1.c, abs(-vec4<i32>(arg_3, 31553i, arg_1.c.x, arg_3)));
    let var_2 = _wgslsmith_f_op_f32(-arg_1.d);
    var var_3 = _wgslsmith_clamp_vec3_i32(-vec3<i32>(-74439i, -var_1.x, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_1.x, 39480i, 0i, arg_1.c.x)), vec4<i32>(0i, -2147483647i, var_1.x, 20799i))), _wgslsmith_mod_vec3_i32(~vec3<i32>(0i, 8055i, 0i) >> (abs(u_input.b.xwx) % vec3<u32>(32u)), select(var_1.xzy, var_1.zwx, true)), arg_1.c.wxz);
    let var_4 = 4294967295u;
    return var_2;
}

fn func_4(arg_0: u32, arg_1: f32) -> bool {
    var var_0 = Struct_1(abs(_wgslsmith_mod_vec3_u32(~(~u_input.b.yww), ~vec3<u32>(4294967295u, 1146u, arg_0))), 1u, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -604f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-253f * arg_1), arg_1), arg_1, _wgslsmith_f_op_f32(step(arg_1, -167f))), vec4<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1))) + _wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(1116f - arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(288f + -590f)), arg_1));
    global2 = all(vec4<bool>(false, true, true, !any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)))));
    let var_1 = 0u;
    let var_2 = !(all(vec2<bool>(true, true)) | all(global1[_wgslsmith_index_u32(firstLeadingBit(41996u), 20u)])) | all(select(select(vec4<bool>(true, false, true, false), global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(firstTrailingBit(arg_0), 20u)]), !select(vec4<bool>(true, false, true, true), global1[_wgslsmith_index_u32(0u, 20u)], true), true));
    var var_3 = Struct_3(vec3<i32>(select(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(2147483647i, -1i)), _wgslsmith_sub_i32(0i, 0i), select(var_2, false, var_2)) << (var_1 % 32u), 17620i, -25659i), ~44018i);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global0 = array<vec2<f32>, 4>();
    global2 = select(all(select(vec2<bool>(true, any(global1[_wgslsmith_index_u32(31262u, 20u)])), vec2<bool>(any(vec2<bool>(var_0, true)), !var_0), !var_0)), !any(global1[_wgslsmith_index_u32((u_input.a ^ 25778u) ^ 1u, 20u)]), all(vec4<bool>(var_0, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -30207i), vec2<i32>(0i, 11223i)) != 77862i, all(vec2<bool>(var_0, false)), !(var_0 && var_0))));
    let var_1 = _wgslsmith_f_op_vec3_f32(func_1());
    var var_2 = func_4(~abs(u_input.a ^ 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -611f), Struct_2(0u, Struct_1(u_input.b.zyx, 1u, vec4<f32>(var_1.x, 340f, var_1.x, -684f), vec4<f32>(215f, 144f, var_1.x, var_1.x)), vec4<i32>(-2147483647i, 2147483647i, 0i, 0i), var_1.x), _wgslsmith_sub_vec2_u32(u_input.b.xz, vec2<u32>(u_input.b.x, u_input.c)), 27173i))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))))));
    global1 = array<vec4<bool>, 20>();
    var var_3 = vec2<f32>(146f, _wgslsmith_f_op_vec3_f32(func_1()).x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-countOneBits(1i), -1i, ~(~(-2147483647i))), -5012i, vec2<u32>(~reverseBits(u_input.c), _wgslsmith_dot_vec3_u32(~vec3<u32>(51965u, u_input.b.x, u_input.b.x), u_input.b.wxy | u_input.b.wwz)) ^ vec2<u32>(abs(countOneBits(4294967295u)), _wgslsmith_add_u32(max(42711u, 35414u), u_input.b.x)), _wgslsmith_sub_u32(u_input.b.x, countOneBits(abs(u_input.b.x))), abs(-20957i));
}

