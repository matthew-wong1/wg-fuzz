struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global1: array<bool, 18>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> vec3<i32> {
    var var_0 = arg_0.a;
    var var_1 = arg_0.a;
    global0 = vec4<bool>(true, true, false, arg_0.a.a.x >= _wgslsmith_dot_vec3_u32(arg_0.a.a.xwz, vec3<u32>(reverseBits(0u), _wgslsmith_add_u32(arg_0.a.a.x, 70406u), _wgslsmith_mult_u32(var_1.a.x, 133580u))));
    let var_2 = select(vec2<bool>(all(global0.ww), global0.x | global0.x), global0.ww, global1[_wgslsmith_index_u32(~1u, 18u)]);
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-445f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -171f) + arg_0.b.x))), 2303f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2611f * _wgslsmith_f_op_f32(arg_0.b.x * arg_0.b.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-444f, 1000f, arg_0.b.x, 133f), vec4<f32>(arg_0.b.x, arg_0.b.x, -255f, arg_0.b.x)) - vec4<f32>(1429f, 268f, 1229f, arg_0.b.x)))));
    return arg_0.a.b;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: vec4<bool>) -> bool {
    var var_0 = Struct_2(Struct_1(abs(select(abs(vec4<u32>(3332u, 4294967295u, 1u, 0u)), select(vec4<u32>(3328u, 42521u, 0u, 24126u), vec4<u32>(4294967295u, 4294967295u, 0u, 12152u), vec4<bool>(true, false, global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(27895u, 18u)])), arg_2)), arg_0.wwx >> (select(~vec3<u32>(37543u, 1u, 0u), vec3<u32>(23343u, 3745u, 0u), true) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(468f, -700f), vec2<f32>(461f, -857f)))))), select(vec2<bool>(any(!vec4<bool>(false, true, false, arg_2.x)), true), global0.xz, select(!vec2<bool>(true, arg_2.x), vec2<bool>(global0.x, global0.x), select(global0.zx, global0.yx, false))), arg_1.x == arg_0.x);
    var var_1 = _wgslsmith_mult_vec4_i32(-arg_0, vec4<i32>(-arg_1.x, min(-7775i, _wgslsmith_mod_i32(arg_1.x & arg_1.x, ~u_input.a.x)), _wgslsmith_dot_vec3_i32(arg_0.wwy | arg_1, vec3<i32>(-1i) * -var_0.a.b), ~_wgslsmith_dot_vec4_i32(select(vec4<i32>(arg_0.x, u_input.a.x, var_0.a.b.x, -2147483647i), arg_0, vec4<bool>(global1[_wgslsmith_index_u32(var_0.a.a.x, 18u)], global0.x, global0.x, global0.x)), max(arg_0, arg_0))));
    var var_2 = Struct_2(Struct_1(~(~vec4<u32>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x, 76996u)), arg_1), var_0.b, global0.zx, false | !global0.x);
    var_0 = Struct_2(var_2.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2.b.x, -562f), var_0.b))))), !vec2<bool>(global1[_wgslsmith_index_u32(var_2.a.a.x, 18u)], false), var_2.a.a.x != _wgslsmith_div_u32(var_2.a.a.x, var_0.a.a.x & ~var_0.a.a.x));
    var_2 = Struct_2(var_2.a, _wgslsmith_f_op_vec2_f32(var_0.b - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.b.x, 1087f))))), global0.ww, var_2.d);
    return var_0.d;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<f32>) -> Struct_1 {
    global1 = array<bool, 18>();
    global0 = !arg_0;
    let var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -(~select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 6676i), vec4<i32>(u_input.a.x, 12283i, u_input.a.x, -33241i), false)), -min((vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i) & vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x)) & ~vec4<i32>(10271i, u_input.a.x, 1i, -54362i), select(vec4<i32>(u_input.a.x, 1i, u_input.a.x, 40493i), vec4<i32>(-1i, u_input.a.x, u_input.a.x, 2147483647i), false) >> (firstLeadingBit(vec4<u32>(1u, 32946u, 47168u, 6984u)) % vec4<u32>(32u))));
    global0 = select(arg_0, !select(select(arg_0, vec4<bool>(true, global0.x, false, arg_0.x), !arg_0.x), arg_0, true), vec4<bool>(global1[_wgslsmith_index_u32(1u, 18u)] || true, arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1081f - arg_1.x) - -151f) <= -715f, any(!arg_0.xyz)));
    let var_1 = select(select(vec4<bool>(all(select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, arg_0.x), arg_0.yx)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(52945u, ~22710u), 18u)], func_4(_wgslsmith_div_vec4_i32(vec4<i32>(-15579i, var_0.x, -1i, -27863i), vec4<i32>(var_0.x, -1213i, u_input.a.x, u_input.a.x)), func_3(Struct_2(Struct_1(vec4<u32>(76606u, 0u, 4294967295u, 13293u), vec3<i32>(var_0.x, u_input.a.x, u_input.a.x)), vec2<f32>(867f, -555f), vec2<bool>(global1[_wgslsmith_index_u32(72583u, 18u)], global1[_wgslsmith_index_u32(67113u, 18u)]), false)), select(vec4<bool>(true, true, false, global0.x), vec4<bool>(false, global1[_wgslsmith_index_u32(78195u, 18u)], arg_0.x, true), arg_0)), !select(false, arg_0.x, global1[_wgslsmith_index_u32(4294967295u, 18u)])), arg_0, arg_0), !vec4<bool>(true, any(select(arg_0.yww, arg_0.zzy, vec3<bool>(true, global0.x, arg_0.x))), !(global0.x && true), true), global1[_wgslsmith_index_u32(0u, 18u)]);
    return Struct_1(vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 27448u, 87201u, 12188u), vec4<u32>(4294967295u, 4451u, 0u, 64958u)), 4166u & _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(4294967295u, 4294967295u, 1u, 13446u)), 0u, 37289u), firstLeadingBit(~reverseBits(_wgslsmith_add_vec3_i32(var_0.wzy, vec3<i32>(781i, 29700i, 1i)))));
}

fn func_1() -> Struct_2 {
    global1 = array<bool, 18>();
    let var_0 = ~(~54626u) >> (firstLeadingBit(~max(countOneBits(11848u), ~4294967295u)) % 32u);
    return Struct_2(func_2(!select(vec4<bool>(true, global0.x, false, global1[_wgslsmith_index_u32(var_0, 18u)]), !vec4<bool>(false, global1[_wgslsmith_index_u32(var_0, 18u)], global0.x, false), false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(886f, -129f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 740f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -207f), _wgslsmith_f_op_f32(sign(402f))) * _wgslsmith_div_vec2_f32(vec2<f32>(-337f, -940f), vec2<f32>(862f, 505f)))), vec2<bool>(global1[_wgslsmith_index_u32(~56594u, 18u)], true), any(vec3<bool>(select(true, !global1[_wgslsmith_index_u32(var_0, 18u)], true), func_4(vec4<i32>(u_input.a.x, u_input.a.x, -48905i, 0i), _wgslsmith_clamp_vec3_i32(vec3<i32>(36969i, u_input.a.x, -55148i), vec3<i32>(u_input.a.x, 6426i, -1i), vec3<i32>(-1i, u_input.a.x, u_input.a.x)), select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 18u)], false, false, global0.x), vec4<bool>(false, global1[_wgslsmith_index_u32(40299u, 18u)], true, false), true)), global1[_wgslsmith_index_u32(4294967295u << (var_0 % 32u), 18u)])));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec3_i32(func_3(func_1()), vec3<i32>(_wgslsmith_sub_i32(arg_0.a.b.x, -6760i), firstTrailingBit(-1i), arg_0.a.b.x) ^ _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(-arg_0.a.b, arg_1.b), vec3<i32>(arg_1.b.x, arg_0.a.b.x, 0i)));
    let var_1 = arg_3;
    var var_2 = ~45541u;
    global1 = array<bool, 18>();
    var var_3 = arg_1.a.xzy ^ _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.a.a.x, arg_1.a.x, arg_1.a.x), ~vec3<u32>(1u, arg_1.a.x, 64146u)) ^ vec3<u32>(arg_1.a.x, 100373u, _wgslsmith_clamp_u32(1u, 67784u, 17658u)), _wgslsmith_add_vec3_u32(select(vec3<u32>(1u, arg_0.a.a.x, 46034u), select(arg_0.a.a.yyy, vec3<u32>(arg_0.a.a.x, 17157u, 1u), false), vec3<bool>(false, var_1.x, true)), countOneBits(arg_1.a.zzy)));
    return func_1().a;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = global0.wwz;
    global1 = array<bool, 18>();
    var var_1 = arg_0;
    let var_2 = _wgslsmith_clamp_i32(-2147483647i, u_input.a.x, -_wgslsmith_dot_vec2_i32(~(arg_1.a.b.yx & u_input.a), u_input.a));
    var var_3 = arg_0.a.yzy;
    return arg_0;
}

fn func_7(arg_0: Struct_1, arg_1: vec3<u32>) -> bool {
    let var_0 = func_1();
    global0 = select(!vec4<bool>(func_4(-vec4<i32>(u_input.a.x, var_0.a.b.x, u_input.a.x, -21412i), arg_0.b & vec3<i32>(-1i, -1i, 2147483647i), select(vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(false, global1[_wgslsmith_index_u32(arg_1.x, 18u)], global1[_wgslsmith_index_u32(arg_0.a.x, 18u)], var_0.d), false)), select(any(global0.yxw), !global1[_wgslsmith_index_u32(36940u, 18u)], true), false, _wgslsmith_f_op_f32(var_0.b.x - 542f) >= _wgslsmith_f_op_f32(-var_0.b.x)), select(select(!(!vec4<bool>(true, var_0.c.x, var_0.c.x, true)), !vec4<bool>(global0.x, global1[_wgslsmith_index_u32(60420u, 18u)], global1[_wgslsmith_index_u32(var_0.a.a.x, 18u)], false), !select(vec4<bool>(false, false, true, global0.x), vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 18u)], var_0.c.x, global1[_wgslsmith_index_u32(arg_1.x, 18u)]), vec4<bool>(var_0.d, var_0.c.x, false, global0.x))), !vec4<bool>(func_4(vec4<i32>(-32554i, u_input.a.x, var_0.a.b.x, 54601i), var_0.a.b, vec4<bool>(true, true, false, true)), var_0.d, select(true, true, false), true), _wgslsmith_f_op_f32(-var_0.b.x) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1491f, 314f)), -193f, true))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(arg_0.a.x, max(var_0.a.a.x, arg_0.a.x)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 17032u), vec3<u32>(4294967295u, arg_0.a.x, arg_0.a.x)), min(4294967295u, 24321u)), arg_0.a.x, (arg_1.x | var_0.a.a.x) & 51904u), vec4<u32>(_wgslsmith_mod_u32(~var_0.a.a.x, 1u), 1u, 0u, _wgslsmith_dot_vec4_u32(var_0.a.a, ~vec4<u32>(var_0.a.a.x, arg_1.x, var_0.a.a.x, 1u)))), 18u)]);
    var var_1 = _wgslsmith_div_vec4_i32(-countOneBits(~_wgslsmith_add_vec4_i32(vec4<i32>(var_0.a.b.x, arg_0.b.x, u_input.a.x, u_input.a.x), vec4<i32>(0i, 61582i, 1i, 708i))), countOneBits(vec4<i32>(66260i, u_input.a.x >> (50013u % 32u), reverseBits(2147483647i), var_0.a.b.x)) | -vec4<i32>(arg_0.b.x, func_6(arg_0, Struct_2(arg_0, vec2<f32>(-1080f, var_0.b.x), vec2<bool>(true, true), true), var_0.a.b).b.x, _wgslsmith_sub_i32(var_0.a.b.x, 2147483647i), min(u_input.a.x, arg_0.b.x)));
    let var_2 = vec3<bool>(9319u >= var_0.a.a.x, !all(global0.xz), var_0.c.x);
    let var_3 = var_0;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(func_7(func_6(func_5(func_1(), func_2(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 18u)], false, global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(53075u, 18u)]), vec2<f32>(-1197f, -315f)), _wgslsmith_div_vec2_f32(vec2<f32>(615f, 398f), vec2<f32>(1179f, -329f)), vec4<bool>(true, false, true, global0.x)), Struct_2(Struct_1(vec4<u32>(35408u, 53293u, 4294967295u, 71037u), vec3<i32>(58291i, -2147483647i, -10336i)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(828f, -408f), vec2<f32>(-957f, -1028f))), !global0.zz, global0.x), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)) << (vec3<u32>(1u, 40410u, 21567u) % vec3<u32>(32u))), ~countOneBits(vec3<u32>(4294967295u, 29012u, 66019u))), false, !(firstTrailingBit(u_input.a.x) != _wgslsmith_clamp_i32(-815i, -1i, u_input.a.x)) && true, true);
    let var_0 = Struct_2(func_5(func_1(), Struct_1(max(func_1().a.a, vec4<u32>(4294967295u, 0u, 19373u, 14656u)), vec3<i32>(1i, 1i, 1i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1370f, -718f) + vec2<f32>(-998f, 1000f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1026f, -581f), vec2<f32>(914f, 1337f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1397f, -468f)) - vec2<f32>(-1135f, -1569f))), select(!select(vec4<bool>(global1[_wgslsmith_index_u32(128123u, 18u)], true, true, global1[_wgslsmith_index_u32(32604u, 18u)]), vec4<bool>(global0.x, global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(50738u, 18u)], global1[_wgslsmith_index_u32(24418u, 18u)]), global1[_wgslsmith_index_u32(0u, 18u)]), select(select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(81092u, 18u)], false), vec4<bool>(global0.x, false, global1[_wgslsmith_index_u32(0u, 18u)], false)), !vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 18u)], true, global1[_wgslsmith_index_u32(3809u, 18u)]), global0.x), vec4<bool>(true, func_7(Struct_1(vec4<u32>(0u, 1u, 1u, 1u), vec3<i32>(u_input.a.x, 4111i, -50381i)), vec3<u32>(48015u, 3048u, 75609u)), global1[_wgslsmith_index_u32(max(34130u, 35988u), 18u)], global0.x))), vec2<f32>(_wgslsmith_f_op_f32(floor(-178f)), _wgslsmith_f_op_f32(sign(-1963f))), vec2<bool>(true, true), true);
    var var_1 = var_0;
    let var_2 = Struct_1(select(~var_1.a.a, _wgslsmith_sub_vec4_u32(vec4<u32>(20129u, var_0.a.a.x, var_1.a.a.x, 8740u), abs(vec4<u32>(var_1.a.a.x, var_1.a.a.x, 0u, 46255u))) | (vec4<u32>(var_1.a.a.x, var_0.a.a.x, var_0.a.a.x, var_1.a.a.x) & var_0.a.a), select(var_0.d, !all(vec4<bool>(true, var_0.c.x, true, var_1.c.x)), global1[_wgslsmith_index_u32(38219u, 18u)])), var_0.a.b << ((~func_5(Struct_2(var_1.a, var_1.b, vec2<bool>(global1[_wgslsmith_index_u32(var_1.a.a.x, 18u)], var_0.d), global1[_wgslsmith_index_u32(var_1.a.a.x, 18u)]), Struct_1(var_1.a.a, vec3<i32>(var_0.a.b.x, 22104i, var_0.a.b.x)), vec2<f32>(var_0.b.x, 233f), vec4<bool>(false, var_0.d, var_1.c.x, true)).a.zyz << (_wgslsmith_add_vec3_u32(vec3<u32>(44399u, var_0.a.a.x, 26063u), ~var_0.a.a.zxy) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_3 = (_wgslsmith_mod_vec4_i32(vec4<i32>(23046i, i32(-1i) * -28446i, var_2.b.x, func_5(var_0, var_0.a, var_0.b, vec4<bool>(var_0.d, var_1.d, false, false)).b.x), vec4<i32>(1i, _wgslsmith_add_i32(49600i, var_0.a.b.x), u_input.a.x, ~u_input.a.x)) << (~select(~vec4<u32>(var_0.a.a.x, 4294967295u, 58338u, var_2.a.x), ~var_2.a, 2147483647i <= var_2.b.x) % vec4<u32>(32u))) ^ vec4<i32>(var_0.a.b.x, -76139i, u_input.a.x, i32(-1i) * -1i);
    var var_4 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(var_2.b.x, 22550i), func_3(var_0).x, abs(~var_0.a.b.x >> (1u % 32u))), _wgslsmith_add_vec3_i32(vec3<i32>(43657i >> (var_1.a.a.x % 32u), min(83126i, 59915i), -var_0.a.b.x), reverseBits(var_0.a.b)));
    var_3 = -vec4<i32>(max(-2147483647i, _wgslsmith_add_i32(var_4.x, -11202i)), -(~var_2.b.x), ~18127i, -18362i) << (~var_0.a.a % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-602f - -2569f))) + _wgslsmith_f_op_f32(-401f - _wgslsmith_f_op_f32(-var_1.b.x)))), _wgslsmith_f_op_f32(-2005f * var_1.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(230f, 661f, var_0.b.x, -953f) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(457f, 906f, 445f, var_0.b.x)))), vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.x), -1265f, _wgslsmith_f_op_f32(1879f * var_0.b.x), _wgslsmith_div_f32(340f, var_0.b.x)))), ~(~var_3.x));
}

