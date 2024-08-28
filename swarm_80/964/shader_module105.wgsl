struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(303f, -2083f, 713f, 325f);

var<private> global1: f32;

var<private> global2: array<Struct_4, 3>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> f32 {
    global1 = global0.x;
    var var_0 = Struct_5(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-295f)), -1000f, _wgslsmith_f_op_f32(-global0.x), global0.x)), 65336i, vec4<u32>(1u | u_input.c.x, u_input.c.x, min(~arg_1.x, ~arg_1.x), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, u_input.a.x, arg_1.x), u_input.c.wxx))), 35340i, false);
    global1 = _wgslsmith_f_op_f32(-var_0.a.a.x);
    let var_1 = var_0.a.c.xz;
    let var_2 = 806f;
    return _wgslsmith_div_f32(var_0.a.a.x, _wgslsmith_div_f32(var_0.a.a.x, var_2));
}

fn func_3(arg_0: f32) -> vec4<f32> {
    let var_0 = global2[_wgslsmith_index_u32(1364u, 3u)];
    let var_1 = Struct_4(var_0.a, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.xx) + vec2<f32>(global0.x, 923f)))))), any(!vec3<bool>(true, false || var_0.c, true)));
    global0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a.x, arg_0, var_1.b.x, var_1.b.x)), _wgslsmith_f_op_vec4_f32(var_1.a.a + var_1.a.a)))))));
    global2 = array<Struct_4, 3>();
    let var_2 = select(vec4<bool>(global0.x == arg_0, true, !(true & (false | var_0.c)), all(select(!vec2<bool>(true, var_0.c), vec2<bool>(true, var_1.c), vec2<bool>(var_1.c, true)))), vec4<bool>(all(!select(vec4<bool>(var_1.c, false, var_0.c, var_0.c), vec4<bool>(var_1.c, false, false, false), var_1.c)), any(select(vec4<bool>(false, true, var_1.c, var_1.c), select(vec4<bool>(var_1.c, var_0.c, true, true), vec4<bool>(var_1.c, var_0.c, var_1.c, true), vec4<bool>(var_0.c, var_0.c, false, false)), vec4<bool>(var_1.c, true, var_1.c, false))), !(108888u > max(var_0.a.c.x, var_1.a.c.x)), all(!select(vec3<bool>(true, true, var_1.c), vec3<bool>(var_1.c, var_1.c, false), vec3<bool>(var_0.c, var_1.c, false)))), any(select(select(select(vec4<bool>(false, true, true, var_0.c), vec4<bool>(true, var_1.c, var_0.c, true), vec4<bool>(false, var_1.c, true, var_1.c)), vec4<bool>(true, false, var_0.c, false), any(vec3<bool>(true, var_0.c, var_1.c))), select(select(vec4<bool>(false, false, var_0.c, false), vec4<bool>(var_1.c, false, false, false), true), select(vec4<bool>(var_1.c, var_1.c, true, var_1.c), vec4<bool>(true, true, true, true), vec4<bool>(var_1.c, false, var_1.c, var_1.c)), select(vec4<bool>(true, var_0.c, var_1.c, true), vec4<bool>(false, var_1.c, var_0.c, var_1.c), var_1.c)), select(vec4<bool>(true, var_0.c, var_0.c, var_0.c), select(vec4<bool>(false, true, var_0.c, false), vec4<bool>(false, var_1.c, true, var_0.c), vec4<bool>(true, var_0.c, true, var_1.c)), any(vec3<bool>(false, var_0.c, false))))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-820f, 925f, var_0.a.a.x, -221f) + var_1.a.a) - _wgslsmith_f_op_vec4_f32(ceil(var_1.a.a))))));
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-558f)), arg_0.x, global0.x, _wgslsmith_f_op_f32(f32(-1f) * -132f)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, global0.x, 109f, -769f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 509f, 1314f, _wgslsmith_f_op_f32(-global0.x)))));
    let var_0 = Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(1661f)) - vec4<f32>(398f, global0.x, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-500f, arg_0.x, global0.x, global0.x) * vec4<f32>(arg_0.x, global0.x, 673f, global0.x))), !any(vec4<bool>(true, false, false, false)))), ~_wgslsmith_mod_i32(~(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(10087i, -1i, u_input.d, 8143i), u_input.b)), u_input.a), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(227f, -775f) + _wgslsmith_f_op_f32(floor(global0.x)))) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-312f, arg_0.x, true)))));
    var var_1 = vec3<i32>(_wgslsmith_sub_i32(0i, min(-1i, -48932i & u_input.b.x)), ~firstLeadingBit(~var_0.a.b), max(37248i, abs(u_input.b.x)) >> (min(1u, var_0.a.c.x) % 32u)) << (firstTrailingBit(var_0.a.c.xxy) % vec3<u32>(32u));
    let var_2 = var_0.c;
    var var_3 = global2[_wgslsmith_index_u32(u_input.c.x, 3u)];
    return _wgslsmith_mult_u32(71261u, _wgslsmith_mod_u32(22081u, _wgslsmith_mult_u32(var_3.a.c.x & 1u, ~118150u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(select(-1i, 2147483647i, false), vec4<u32>(u_input.c.x, u_input.c.x, u_input.a.x, u_input.c.x))) * global0.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * global0.x)), u_input.b.xzy, ~_wgslsmith_clamp_vec3_u32(u_input.c.zwy, select(vec3<u32>(u_input.c.x, u_input.a.x, u_input.c.x), u_input.a.yyw >> (vec3<u32>(u_input.a.x, u_input.a.x, 39494u) % vec3<u32>(32u)), vec3<bool>(true, true, true)), _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(1u, 0u, 4538u)), u_input.a.yxx)));
    var var_1 = _wgslsmith_div_vec4_u32(~(~u_input.a) << (u_input.c % vec4<u32>(32u)), vec4<u32>(var_0.c.x, var_0.c.x, func_2(_wgslsmith_div_vec2_f32(global0.wx, vec2<f32>(global0.x, -591f))), ~func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1501f, -1000f)))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, var_0.a, global0.x, 749f), vec4<f32>(var_0.a, global0.x, var_0.a, -1194f))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1761f, var_0.a, -1670f, global0.x)))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, 832f, 1190f, 564f), vec4<f32>(-365f, var_0.a, -849f, var_0.a))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1111f, global0.x, 150f, global0.x))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(433f, 368f, -632f, var_0.a))))))), -17055i, min(vec4<u32>(47156u, ~_wgslsmith_dot_vec2_u32(var_0.c.zy, vec2<u32>(var_1.x, 49656u)), 4294967295u, ~u_input.c.x), _wgslsmith_add_vec4_u32(max(~vec4<u32>(4463u, 55773u, var_1.x, u_input.a.x), ~u_input.a), vec4<u32>(var_1.x, ~var_0.c.x, ~0u, abs(38993u)))));
    var var_3 = ~select(var_0.c.zx, vec2<u32>(~(4294967295u & var_1.x), ~_wgslsmith_mod_u32(var_0.c.x, var_1.x)), any(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))));
    let var_4 = _wgslsmith_add_i32(0i, _wgslsmith_div_i32(-5508i, -((u_input.b.x | u_input.d) << ((0u ^ u_input.c.x) % 32u))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(var_2.a)))))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a, -389f, global0.x, global0.x), vec4<f32>(317f, var_2.a.x, global0.x, var_0.a), false))), var_2.a))) + var_2.a);
    var var_5 = min(-max(-var_0.b.zy >> ((u_input.a.wy | vec2<u32>(var_2.c.x, var_1.x)) % vec2<u32>(32u)), vec2<i32>(1i, u_input.d)), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_add_i32(firstLeadingBit(var_4), select(2147483647i, 0i, false)), -2147483647i), u_input.b.xy));
    var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1127f), select(u_input.b.wxz, firstTrailingBit(u_input.b.zzw) & -vec3<i32>(var_4, -1i, 1i), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)) & reverseBits(select(vec3<i32>(var_0.b.x, u_input.b.x, 31369i), vec3<i32>(var_2.b, 1i, 1i), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)))), var_0.c);
    var_1 = ~(~u_input.c & _wgslsmith_sub_vec4_u32(u_input.c, ~abs(u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, -1468f, var_0.a, var_2.a.x) + _wgslsmith_f_op_vec4_f32(-var_2.a)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1366f, 640f, global0.x, global0.x) - var_2.a) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global0.x, global0.x, -1153f)))), vec4<f32>(_wgslsmith_f_op_f32(604f * _wgslsmith_f_op_f32(-772f - -1000f)), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(var_0.b.x, vec4<u32>(1u, 1u, 9386u, var_1.x))) + global0.x)))));
}

