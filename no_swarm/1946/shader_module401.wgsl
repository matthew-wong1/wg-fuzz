struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec4<f32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(52924u, 684u);

var<private> global1: Struct_2 = Struct_2(vec3<f32>(-1125f, -519f, -200f), Struct_1(vec2<u32>(63538u, 13112u), vec2<bool>(true, true), vec4<f32>(1186f, -826f, 990f, -1070f), vec2<bool>(false, true)), Struct_1(vec2<u32>(930u, 10672u), vec2<bool>(false, false), vec4<f32>(-509f, 369f, 782f, -298f), vec2<bool>(true, true)), Struct_1(vec2<u32>(24466u, 1u), vec2<bool>(true, false), vec4<f32>(1222f, 1568f, 902f, 386f), vec2<bool>(true, true)));

var<private> global2: array<vec2<u32>, 24> = array<vec2<u32>, 24>(vec2<u32>(0u, 26860u), vec2<u32>(4717u, 9077u), vec2<u32>(0u, 27203u), vec2<u32>(11300u, 19463u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 0u), vec2<u32>(107591u, 2478u), vec2<u32>(28667u, 144u), vec2<u32>(23163u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(41284u, 4294967295u), vec2<u32>(5419u, 4294967295u), vec2<u32>(66605u, 35575u), vec2<u32>(0u, 75898u), vec2<u32>(4294967295u, 9044u), vec2<u32>(6008u, 4294967295u), vec2<u32>(60871u, 4294967295u), vec2<u32>(0u, 20430u), vec2<u32>(10701u, 4294967295u), vec2<u32>(4294967295u, 6919u), vec2<u32>(97293u, 52985u), vec2<u32>(31178u, 43714u), vec2<u32>(1u, 20622u), vec2<u32>(4294967295u, 1u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32) -> vec2<bool> {
    var var_0 = _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(u_input.b, ~(~vec4<u32>(22668u, global0.x, 4294967295u, arg_0.x))), ~vec4<u32>(~global1.c.a.x, global1.b.a.x & 23125u, 1u, 4294967295u) & _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 1u, global0.x, arg_0.x), u_input.a));
    let var_1 = Struct_4(_wgslsmith_clamp_u32(max(global1.b.a.x, u_input.b.x << ((65494u ^ arg_0.x) % 32u)), ~(~u_input.d | 4294967295u), reverseBits(4294967295u) & _wgslsmith_mod_u32(global1.b.a.x, abs(arg_0.x))), ~vec3<u32>(71060u, 4294967295u, 16444u), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -348f), 1535f, _wgslsmith_f_op_f32(trunc(global1.a.x)))), global1.b, global1.b, Struct_1(~(~vec2<u32>(0u, 3239u)), vec2<bool>(true, global1.b.d.x | true), global1.b.c, !global1.b.d)));
    global1 = var_1.c;
    var_0 = (_wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, 47504u), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(var_1.b.x, 24u)], global2[_wgslsmith_index_u32(global1.c.a.x, 24u)]), ~u_input.c)) & _wgslsmith_sub_u32(~(~global0.x), global1.c.a.x)) << (~4294967295u % 32u);
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -729f), _wgslsmith_f_op_f32(ceil(var_1.c.b.c.x)), _wgslsmith_f_op_f32(732f * -558f))))), global1.c, global1.b, var_1.c.d);
    return select(var_1.c.b.b, global1.c.d, vec2<bool>(global1.d.d.x, any(select(!vec4<bool>(global1.c.b.x, global1.b.d.x, false, true), select(vec4<bool>(true, global1.b.b.x, true, true), vec4<bool>(var_1.c.b.d.x, true, true, true), vec4<bool>(true, false, true, false)), !vec4<bool>(var_1.c.d.b.x, var_1.c.c.d.x, true, false)))));
}

fn func_2() -> Struct_4 {
    global1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -701f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.c.x)) - _wgslsmith_f_op_f32(f32(-1f) * -643f))), Struct_1(_wgslsmith_mult_vec2_u32(abs(global2[_wgslsmith_index_u32(u_input.c, 24u)]), vec2<u32>(global0.x, 54960u)) >> (vec2<u32>(~87853u, global0.x) % vec2<u32>(32u)), vec2<bool>(true, all(vec4<bool>(true, global1.c.d.x, global1.d.d.x, true))), vec4<f32>(global1.d.c.x, -120f, -351f, global1.d.c.x), global1.d.d), Struct_1(vec2<u32>(global0.x, u_input.d), vec2<bool>(true, true), vec4<f32>(global1.c.c.x, global1.c.c.x, _wgslsmith_f_op_f32(-global1.b.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.b.c.x)) + global1.c.c.x)), !global1.c.d), global1.b);
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(-global1.b.c.yxz), global1.b, Struct_1(~vec2<u32>(~u_input.b.x, abs(u_input.d)), select(select(global1.d.d, vec2<bool>(false, true), true), !func_3(u_input.a.xwx, 4834i), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.c.c * vec4<f32>(global1.a.x, global1.b.c.x, global1.d.c.x, global1.d.c.x)) - _wgslsmith_f_op_vec4_f32(-global1.d.c)), vec2<bool>(any(vec4<bool>(global1.c.d.x, true, true, global1.c.b.x)), true)), Struct_1(max(u_input.b.xx, _wgslsmith_sub_vec2_u32(min(u_input.b.zy, global2[_wgslsmith_index_u32(7793u, 24u)]), abs(vec2<u32>(4294967295u, 0u)))), !global1.b.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.c.x, global1.c.c.x, 354f, _wgslsmith_f_op_f32(global1.a.x * global1.a.x))), vec2<bool>(global1.b.b.x, !global1.d.d.x | all(vec4<bool>(true, true, false, false)))));
    let var_0 = u_input.a;
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(sign(global1.b.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -141f))), Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(global1.c.a), vec2<u32>(0u, 57284u)) ^ 29461u, 24u)], !func_3(vec3<u32>(var_0.x, 0u, 0u), u_input.e), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d.c.x, 1085f, 504f, 1568f)))))), global1.b.d), global1.d, Struct_1(~vec2<u32>(countOneBits(8848u), ~var_0.x), func_3(_wgslsmith_sub_vec3_u32(u_input.b.wyy, ~vec3<u32>(0u, 40218u, 0u)), _wgslsmith_mult_i32(0i >> (var_0.x % 32u), abs(-13674i))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.d.c + global1.d.c)))), !(!vec2<bool>(false, global1.c.b.x))));
    var var_1 = Struct_1(vec2<u32>(_wgslsmith_sub_u32(~(u_input.b.x >> (53622u % 32u)), 11362u), ~(global0.x | ~0u)), global1.b.b, global1.c.c, !(!global1.d.d));
    return Struct_4(20444u, vec3<u32>(firstTrailingBit(abs(~global1.b.a.x)), global0.x, 73832u), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(var_1.c.wzx, vec3<f32>(1000f, global1.d.c.x, 293f))))), global1.d, Struct_1(vec2<u32>(12035u, 22792u), !select(vec2<bool>(true, global1.c.d.x), vec2<bool>(true, true), false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-829f, var_1.c.x, global1.a.x, 2413f)), global1.c.d), global1.b));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: f32) -> i32 {
    var var_0 = ~(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a.x, ~0u), global0.x & 0u));
    let var_1 = func_2();
    var_0 = _wgslsmith_div_u32(var_1.c.b.a.x, abs(~reverseBits(u_input.d) << (0u % 32u)));
    let var_2 = _wgslsmith_f_op_f32(step(global1.c.c.x, arg_2));
    let var_3 = min(~global1.c.a.x, max(global1.d.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(89135u, 60653u, 0u) >> (var_1.b % vec3<u32>(32u)), abs(_wgslsmith_mult_vec3_u32(u_input.b.ywz, u_input.b.xxz)))));
    return abs(_wgslsmith_dot_vec2_i32(abs(arg_1.yx) << (~vec2<u32>(u_input.d, 57808u) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(arg_1.zx, arg_1.xy) ^ arg_1.zz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(u_input.e, -1i, select(2147483647i, func_1(select(vec4<bool>(false, false, global1.c.b.x, true), vec4<bool>(true, false, global1.d.d.x, global1.c.b.x), vec4<bool>(global1.c.b.x, false, true, global1.d.b.x)), select(vec3<i32>(64036i, u_input.e, u_input.e), vec3<i32>(u_input.e, u_input.e, 1i), true), _wgslsmith_f_op_f32(-367f - 873f)) ^ u_input.e, any(!select(vec4<bool>(global1.d.b.x, global1.c.d.x, false, false), vec4<bool>(false, true, global1.d.d.x, global1.d.d.x), vec4<bool>(true, true, false, global1.c.b.x)))), i32(-1i) * -1i);
    global0 = countOneBits(global2[_wgslsmith_index_u32(1u, 24u)]);
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.c.x, -1597f, global1.d.c.x))))))), Struct_1(~(~(vec2<u32>(u_input.b.x, 98434u) ^ vec2<u32>(4294967295u, u_input.c))), global1.c.d, global1.d.c, vec2<bool>(global1.b.b.x, !global1.d.b.x)), func_2().c.b, global1.d);
    global0 = countOneBits(_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1366u, global0.x), vec2<u32>(u_input.d, 4294967295u)))), select(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1.c.a.x, 1u, u_input.c), 24u)] >> (~global2[_wgslsmith_index_u32(u_input.c, 24u)] % vec2<u32>(32u)), global2[_wgslsmith_index_u32(~(~4294967295u), 24u)], global1.a.x == -767f)));
    let var_1 = 1523f;
    var var_2 = func_2().c.d.a;
    let var_3 = select(~(~var_0), _wgslsmith_div_vec4_i32(-vec4<i32>(27763i, -69875i, 0i, 2147483647i) << (max(vec4<u32>(global1.b.a.x, 1u, 129078u, 0u), vec4<u32>(0u, 12539u, global0.x, global0.x)) % vec4<u32>(32u)), ~(~vec4<i32>(-2147483647i, u_input.e, u_input.e, u_input.e))) >> (~u_input.b % vec4<u32>(32u)), !global1.b.b.x);
    let var_4 = 7451u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1 - global1.a.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + var_1) * global1.c.c.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, 1743f, var_1, 1183f), global1.b.c, vec4<bool>(global1.d.b.x, global1.d.d.x, global1.b.b.x, false))))), global1.b.c), ~(~vec3<u32>(global0.x, var_2.x, global1.b.a.x)) >> (func_2().b % vec3<u32>(32u)));
}

