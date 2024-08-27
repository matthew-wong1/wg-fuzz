struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5> = array<f32, 5>(-3028f, -1000f, 1108f, -974f, 1549f);

var<private> global1: array<Struct_4, 20>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<u32>) -> i32 {
    global1 = array<Struct_4, 20>();
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(4294967295u, 5u)])), _wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(12964u, arg_1.x, arg_0.b.x) | ~8257u, 5u)])))));
    let var_1 = arg_0;
    var var_2 = Struct_2(arg_1.x, Struct_1(vec4<i32>(var_1.d.x, ~1i, countOneBits(~(-33643i)), _wgslsmith_div_i32(select(var_1.d.x, u_input.a, true), ~var_1.d.x)), arg_0.d), Struct_1(vec4<i32>(abs(i32(-1i) * -19907i), arg_0.d.x, (var_1.d.x & u_input.a) >> (_wgslsmith_sub_u32(60718u, arg_1.x) % 32u), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(arg_0.d.x, 2147483647i, arg_0.d.x)), countOneBits(vec3<i32>(arg_0.d.x, arg_0.d.x, var_1.d.x)))), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(var_1.d.x, var_1.d.x), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.d.x, u_input.a), var_1.d)), firstLeadingBit(arg_0.d))), select(~_wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.a, u_input.a, 21273i), vec4<i32>(0i, var_1.d.x, -34164i, -3174i)) & vec4<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.d.x, var_1.d.x, 13662i), vec3<i32>(-3328i, 1i, 0i)), 1i, i32(-1i) * -1i), ~firstTrailingBit(countOneBits(vec4<i32>(arg_0.d.x, var_1.d.x, u_input.a, var_1.d.x))), true));
    let var_3 = false;
    return firstTrailingBit(arg_0.d.x);
}

fn func_2(arg_0: Struct_4) -> vec2<i32> {
    global1 = array<Struct_4, 20>();
    let var_0 = -(~countOneBits(firstLeadingBit(abs(u_input.a))));
    var var_1 = Struct_1(vec4<i32>(47814i, -21343i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(arg_0.d.x, 33649i, 2147483647i, u_input.a), min(vec4<i32>(var_0, var_0, 2147483647i, 0i), vec4<i32>(var_0, -1i, u_input.a, arg_0.d.x))), _wgslsmith_add_vec4_i32(~vec4<i32>(51298i, 57251i, 0i, u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(9637i, -60339i, u_input.a, 0i), vec4<i32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, u_input.a)))), 2147483647i), select(_wgslsmith_sub_vec2_i32(vec2<i32>(-12174i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, -1i, var_0), vec4<i32>(-52394i, -1i, -1i, -55881i))), vec2<i32>(min(-13909i, u_input.a), 0i)), vec2<i32>(-reverseBits(-2147483647i), min(func_3(arg_0, vec4<u32>(0u, arg_0.b.x, 1u, arg_0.b.x)), -1i)), true | !(959f == arg_0.c.x)));
    let var_2 = Struct_1(var_1.a, var_1.b);
    var var_3 = Struct_2(_wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, 1u & arg_0.b.x), 1u), 4294967295u), Struct_1(var_1.a, vec2<i32>(arg_0.d.x, var_1.b.x << (~arg_0.b.x % 32u))), var_2, _wgslsmith_clamp_vec4_i32(-vec4<i32>(var_0 ^ 12632i, firstLeadingBit(-1i), 46544i, arg_0.d.x), var_1.a, vec4<i32>(select(_wgslsmith_sub_i32(-15648i, arg_0.d.x), -2147483647i, true), _wgslsmith_mod_i32(-1i, -14605i), var_0, _wgslsmith_mult_i32(-var_2.a.x, arg_0.d.x))));
    return vec2<i32>(2147483647i, var_1.b.x);
}

fn func_1(arg_0: i32) -> bool {
    var var_0 = abs(vec2<u32>(~select(1u, _wgslsmith_add_u32(1u, 22291u), all(vec4<bool>(false, false, false, false))), _wgslsmith_dot_vec2_u32(vec2<u32>(abs(1u), 27817u), vec2<u32>(1u, 1u))));
    var var_1 = vec4<u32>(var_0.x, 33483u & firstLeadingBit(var_0.x), 4294967295u, 21573u);
    global1 = array<Struct_4, 20>();
    var var_2 = false;
    let var_3 = _wgslsmith_add_vec2_i32(~abs(_wgslsmith_sub_vec2_i32(func_2(global1[_wgslsmith_index_u32(60895u, 20u)]), vec2<i32>(u_input.a, u_input.a) | vec2<i32>(u_input.a, u_input.a))), vec2<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(0i, u_input.a), firstTrailingBit(6775i), arg_0 & -3781i), firstTrailingBit(vec3<i32>(16719i, arg_0, 2147483647i)))));
    return !all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(reverseBits(0u), 20u)];
    var var_1 = Struct_3(select(select(vec4<bool>(func_1(16483i), all(var_0.a), any(vec3<bool>(var_0.a.x, var_0.a.x, false)), false), select(select(vec4<bool>(var_0.a.x, false, true, true), vec4<bool>(false, var_0.a.x, true, false), true), !vec4<bool>(var_0.a.x, false, var_0.a.x, var_0.a.x), u_input.a >= var_0.d.x), select(!vec4<bool>(var_0.a.x, false, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, true, var_0.a.x, false), true)), !vec4<bool>(any(var_0.a), false, var_0.c.x > 628f, var_0.a.x), vec4<bool>(false, any(select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(false, true, false, true), var_0.a.x)), !all(vec3<bool>(var_0.a.x, false, true)), false && !var_0.a.x)), Struct_1(_wgslsmith_sub_vec4_i32(min(reverseBits(vec4<i32>(-2147483647i, -1i, 0i, 2147483647i)), max(vec4<i32>(var_0.d.x, var_0.d.x, 0i, u_input.a), vec4<i32>(61450i, u_input.a, var_0.d.x, 22867i))), ~vec4<i32>(14277i, u_input.a, u_input.a, 13775i) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b.x, var_0.b.x, var_0.b.x, 1u), vec4<u32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x)) % vec4<u32>(32u))), abs(~_wgslsmith_mult_vec2_i32(var_0.d, vec2<i32>(u_input.a, -9626i)))));
    global0 = array<f32, 5>();
    let var_2 = var_0.b.x;
    var var_3 = max(~var_0.b.x, ~(~abs(var_0.b.x >> (4936u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(510f, global0[_wgslsmith_index_u32(var_0.b.x, 5u)], 371f, _wgslsmith_f_op_f32(1000f * global0[_wgslsmith_index_u32(var_0.b.x, 5u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(11685u, 5u)], 959f, 1444f, var_0.c.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, -635f, 248f, var_0.c.x) - vec4<f32>(-1489f, var_0.c.x, global0[_wgslsmith_index_u32(41123u, 5u)], var_0.c.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(var_0.b.x, 5u)], var_0.c.x, -1000f, 197f)))))), firstLeadingBit(1i), var_0.c.x, var_1.b.a.ww, -846f);
}

