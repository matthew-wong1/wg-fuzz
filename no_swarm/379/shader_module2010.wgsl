struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec3<f32>,
    d: u32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec3<i32> = vec3<i32>(2147483647i, 2147483647i, 2964i);

var<private> global2: f32;

var<private> global3: Struct_2 = Struct_2(vec2<bool>(false, true));

var<private> global4: array<vec4<bool>, 21> = array<vec4<bool>, 21>(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_div_f32(-1000f, -806f), true)))), 1f)));
    var var_1 = vec3<i32>(44415i, global1.x, _wgslsmith_sub_i32(min(global1.x, -2147483647i), ~31645i) << (4294967295u % 32u)) | ~u_input.a.xwz;
    global2 = _wgslsmith_f_op_f32(260f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - 554f));
    var var_2 = _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 0u), vec3<u32>(4294967295u, u_input.b.x, 0u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 1u, u_input.b.x), vec3<u32>(36004u, 59548u, 85413u)), global3.a.x), ~vec3<u32>(4294967295u, 55680u, u_input.b.x)) >> ((_wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.b.x, 93997u, u_input.b.x), u_input.b.x) | _wgslsmith_mult_u32(~u_input.b.x, u_input.b.x << (u_input.b.x % 32u))) % 32u));
    var var_3 = ~(~max(_wgslsmith_sub_vec4_u32(vec4<u32>(121397u, u_input.b.x, u_input.b.x, u_input.b.x), countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u))), ~max(vec4<u32>(0u, u_input.b.x, u_input.b.x, 8513u), vec4<u32>(u_input.b.x, u_input.b.x, 1u, 7802u))));
    return any(global0.wxy);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(u_input.b.x & max(4294967295u, (u_input.b.x << (u_input.b.x % 32u)) ^ _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(0u, 41231u))), Struct_1(abs(vec4<u32>(4294967295u, ~4294967295u, 6897u, 1u)), 6393u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-929f, -917f, 1085f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(2672f, 1812f, 1557f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-560f, -639f, -1416f), vec3<f32>(1478f, 659f, 658f), vec3<bool>(true, global3.a.x, true)))))), u_input.b.x, _wgslsmith_mult_vec2_i32(min(vec2<i32>(-12564i, u_input.a.x), vec2<i32>(u_input.a.x, -18651i)), global1.xz) >> (vec2<u32>(1u, ~4294967295u) % vec2<u32>(32u))));
    let var_1 = var_0;
    global1 = u_input.a.zww;
    global1 = u_input.a.yzy;
    global3 = Struct_2(global3.a);
    return Struct_2(select(vec2<bool>(true, global3.a.x), global0.yz, func_3()));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: i32, arg_3: Struct_3) -> vec3<u32> {
    var var_0 = arg_1;
    global3 = func_2();
    let var_1 = u_input.b.x;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(arg_3.b.c.x + arg_3.b.c.x), _wgslsmith_f_op_f32(-arg_3.b.c.x), arg_3.b.c.x);
    global1 = ~select(u_input.a.xxx, min(~u_input.a.wzy, abs(vec3<i32>(u_input.a.x, arg_3.b.e.x, -28047i)) & _wgslsmith_add_vec3_i32(u_input.a.wwz, u_input.a.yzx)), !global0.wzy);
    return arg_3.b.a.wzx;
}

fn func_4(arg_0: vec3<u32>) -> vec3<f32> {
    global0 = vec4<bool>(any(select(vec3<bool>(!global0.x, true, true || global3.a.x), select(vec3<bool>(true, true, global0.x), select(global0.xxz, global0.yzy, true), !global0.x), global0.x)), true, global3.a.x, !global3.a.x);
    global3 = Struct_2(vec2<bool>(false, select(all(vec2<bool>(true, global0.x)), true, select(global0.x, global3.a.x, global3.a.x))));
    var var_0 = Struct_3(4294967295u, Struct_1(vec4<u32>(_wgslsmith_div_u32(1u, arg_0.x), 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 24377u), arg_0), 4056u) & (select(vec4<u32>(0u, u_input.b.x, arg_0.x, arg_0.x), vec4<u32>(u_input.b.x, 24042u, u_input.b.x, arg_0.x), true) | vec4<u32>(84226u, u_input.b.x, 54180u, arg_0.x)), arg_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(464f, -737f, 1774f))), _wgslsmith_clamp_u32(1u, countOneBits(reverseBits(14812u)), _wgslsmith_mult_u32(max(u_input.b.x, u_input.b.x), func_1(-2147483647i, false, -1i, Struct_3(20854u, Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, arg_0.x, 1u), 14470u, vec3<f32>(1542f, 1299f, -585f), u_input.b.x, vec2<i32>(u_input.a.x, -49055i)))).x)), -u_input.a.yy));
    var var_1 = countOneBits(~_wgslsmith_dot_vec4_u32(select(var_0.b.a, var_0.b.a, global3.a.x) ^ vec4<u32>(var_0.b.d, var_0.a, 72048u, 2595u), _wgslsmith_mult_vec4_u32(vec4<u32>(40523u, var_0.a, arg_0.x, arg_0.x), vec4<u32>(var_0.b.d, u_input.b.x, var_0.b.d, 74999u)) >> (firstLeadingBit(vec4<u32>(44814u, 78996u, var_0.a, u_input.b.x)) % vec4<u32>(32u))));
    let var_2 = Struct_1(abs(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(~var_0.b.a, ~var_0.b.a), _wgslsmith_mod_vec4_u32(select(vec4<u32>(4294967295u, 4294967295u, arg_0.x, u_input.b.x), var_0.b.a, vec4<bool>(global3.a.x, true, false, global0.x)), ~vec4<u32>(arg_0.x, var_0.a, u_input.b.x, var_0.b.a.x)))), _wgslsmith_clamp_u32(var_0.b.a.x, ~arg_0.x, ~(~4294967295u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.b.c.x, var_0.b.c.x, -341f), var_0.b.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b.c * vec3<f32>(var_0.b.c.x, 501f, var_0.b.c.x)))) - vec3<f32>(238f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b.c.x))), -175f)), ~(var_0.b.a.x << (firstTrailingBit(u_input.b.x) % 32u)), firstTrailingBit(vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(56522i, global1.x, 2147483647i, u_input.a.x) ^ vec4<i32>(u_input.a.x, global1.x, -1i, 0i)), _wgslsmith_mult_i32(_wgslsmith_sub_i32(var_0.b.e.x, -2147483647i), ~var_0.b.e.x))));
    return vec3<f32>(_wgslsmith_f_op_f32(round(118f)), _wgslsmith_f_op_f32(var_2.c.x * -923f), var_0.b.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_sub_vec4_u32(~select(vec4<u32>(u_input.b.x, u_input.b.x, 0u, 4294967295u), vec4<u32>(1u, 66890u, 4294967295u, u_input.b.x) >> (vec4<u32>(u_input.b.x, 1u, 4294967295u, u_input.b.x) % vec4<u32>(32u)), vec4<bool>(true, global0.x, false, false)), ~countOneBits(vec4<u32>(90689u, u_input.b.x, 1u, 21416u)) & vec4<u32>(abs(18574u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b.x, 4294967295u), vec3<u32>(u_input.b.x, u_input.b.x, 0u)), u_input.b.x, u_input.b.x << (u_input.b.x % 32u))), u_input.b.x, _wgslsmith_f_op_vec3_f32(func_4(~(~func_1(-2147483647i, true, u_input.a.x, Struct_3(57199u, Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, 45341u, u_input.b.x), 6554u, vec3<f32>(367f, 1767f, 121f), u_input.b.x, global1.yy)))))), u_input.b.x, ~global1.yx);
    let var_1 = countOneBits(~(-2147483647i) | abs(_wgslsmith_sub_i32(1i, global1.x))) << (u_input.b.x % 32u);
    let var_2 = 14736i;
    var var_3 = !(!global3.a.x);
    global4 = array<vec4<bool>, 21>();
    global3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-280f - var_0.c.x) * _wgslsmith_div_f32(1666f, var_0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2298f + -1437f) + var_0.c.x)), _wgslsmith_f_op_f32(max(var_0.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-286f, _wgslsmith_f_op_f32(trunc(var_0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -771f) - _wgslsmith_f_op_f32(var_0.c.x - var_0.c.x)))))));
}

