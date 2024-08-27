struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: Struct_4,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-25578i, Struct_1(-1635f), vec3<f32>(1023f, -970f, 1593f));

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_4, 30>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    let var_0 = Struct_5(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(437f * _wgslsmith_f_op_f32(max(-3323f, -442f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.c.x * global0.c.x), _wgslsmith_f_op_f32(global0.b.a + global0.c.x))))), 0u, global2[_wgslsmith_index_u32(~global1.x, 30u)], -vec3<i32>(global0.a, -20529i, reverseBits(-2655i)) ^ firstTrailingBit(vec3<i32>(_wgslsmith_clamp_i32(-1i, global0.a, u_input.e.x), u_input.e.x, 1i ^ u_input.a)), u_input.d.x);
    var var_1 = vec3<u32>(_wgslsmith_div_u32(select(~global1.x, u_input.d.x, var_0.c.a == -844f), u_input.d.x), abs(global1.x), abs(global1.x << (1u % 32u)) & _wgslsmith_dot_vec2_u32(global1.yy >> (~u_input.d.zx % vec2<u32>(32u)), vec2<u32>(global1.x, 8549u)));
    let var_2 = Struct_3(Struct_1(1029f), -select(vec3<i32>(global0.a, 0i, ~global0.a), -vec3<i32>(var_0.d.x, var_0.d.x, 1i), false));
    let var_3 = _wgslsmith_f_op_f32(global0.c.x - global0.b.a);
    var var_4 = var_0.a.a;
    return abs(_wgslsmith_mult_i32(~2147483647i, _wgslsmith_mod_i32(~(~0i), _wgslsmith_dot_vec3_i32(~var_2.b, vec3<i32>(u_input.e.x, var_2.b.x, -2147483647i)))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_5, arg_2: Struct_1, arg_3: vec2<u32>) -> vec4<bool> {
    let var_0 = Struct_2(func_3(), arg_1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_2.a + 1432f), arg_1.c.a, 569f) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(global0.c))))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -148f), 1461f, -1013f)));
    global1 = select(u_input.d.yyw, u_input.d.zzw, vec3<bool>(true, any(vec4<bool>(true, all(vec4<bool>(false, false, false, false)), true, any(vec4<bool>(false, true, false, true)))), 1000f > global0.c.x));
    let var_1 = vec4<bool>(any(select(vec2<bool>(any(vec2<bool>(false, false)), all(vec4<bool>(false, true, true, true))), vec2<bool>(true, true), !any(vec3<bool>(true, false, true)))), true, true, any(!vec3<bool>(global0.a == -2147483647i, true, any(vec3<bool>(true, false, true)))));
    global2 = array<Struct_4, 30>();
    global1 = u_input.d.zxy;
    return vec4<bool>(var_1.x, any(vec2<bool>(all(vec4<bool>(false, false, var_1.x, var_1.x)), var_1.x)), true | (_wgslsmith_mod_i32(arg_1.d.x, 1i & u_input.c) == 58747i), any(select(var_1.zy, !var_1.zx, !var_1.zz)) & all(vec3<bool>(var_0.a > global0.a, false, var_1.x)));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: bool) -> Struct_1 {
    let var_0 = vec2<u32>(~global1.x, 6269u);
    global1 = ~firstLeadingBit(vec3<u32>(4294967295u, 4213u, 3762u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1445f), 617f)));
    var_1 = global0.b.a;
    let var_2 = (global1.x >> (var_0.x % 32u)) >> (30200u % 32u);
    return global0.b;
}

fn func_5(arg_0: bool, arg_1: Struct_3) -> Struct_1 {
    var var_0 = vec2<i32>(u_input.e.x, _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.e.yz, vec2<i32>(2147483647i, u_input.e.x)), 49284i), -arg_1.b.x));
    let var_1 = Struct_3(func_4(vec4<bool>(arg_0, arg_0, _wgslsmith_dot_vec4_i32(u_input.e, u_input.e) > (u_input.e.x | -1i), arg_0), vec4<bool>(arg_0, arg_0 && true, arg_1.a.a <= _wgslsmith_f_op_f32(arg_1.a.a * global0.c.x), arg_0), arg_0 | true), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(-u_input.e.zxy, vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.e.xwz, vec3<i32>(-28432i, 40581i, 12896i)), -1i, 1i)), vec3<i32>(~var_0.x, -firstLeadingBit(arg_1.b.x), 0i)));
    var var_2 = Struct_2(arg_1.b.x, func_4(func_2(_wgslsmith_clamp_vec2_u32(u_input.d.yy, ~u_input.d.zx, ~vec2<u32>(1u, u_input.d.x)), Struct_5(Struct_1(global0.c.x), _wgslsmith_add_u32(u_input.d.x, 1u), Struct_4(global0.b.a), u_input.e.yyx, u_input.d.x), func_4(select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(false, arg_0, true, arg_0), vec4<bool>(true, arg_0, arg_0, false)), vec4<bool>(false, false, arg_0, true), arg_0), vec2<u32>(~21529u, global1.x)), !vec4<bool>(true, true == arg_0, false && arg_0, all(vec2<bool>(arg_0, true))), true), global0.c);
    let var_3 = -vec4<i32>(-39918i, -_wgslsmith_dot_vec2_i32(-arg_1.b.yz, vec2<i32>(u_input.e.x, global0.a)), -19862i, 0i);
    var var_4 = ~(vec4<u32>(abs(~56789u), max(~global1.x, 520u ^ u_input.d.x), u_input.d.x, 1u) ^ (min(vec4<u32>(37287u, u_input.d.x, 4294967295u, 59505u) << (u_input.d % vec4<u32>(32u)), u_input.d) | _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.d, u_input.d), u_input.d, abs(vec4<u32>(u_input.d.x, global1.x, 6355u, u_input.d.x)))));
    return Struct_1(var_1.a.a);
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_2;
    global0 = Struct_2(~1i, Struct_1(-543f), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1284f + arg_0))), 559f), _wgslsmith_f_op_f32(trunc(global0.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0)))));
    let var_1 = Struct_5(func_5(true, Struct_3(func_4(func_2(u_input.d.ww, Struct_5(global0.b, u_input.d.x, global2[_wgslsmith_index_u32(u_input.d.x, 30u)], u_input.e.wyz, 4294967295u), Struct_1(322f), u_input.d.xw), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), false), -29311i == global0.a), min(vec3<i32>(var_0.a, -3743i, var_0.a), u_input.e.zxy) | vec3<i32>(var_0.a, 2147483647i, var_0.a))), global1.x, Struct_4(_wgslsmith_f_op_f32(exp2(func_5(false, Struct_3(arg_2.b, vec3<i32>(0i, u_input.a, 2147483647i))).a))), -select(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, u_input.b, 2147483647i), u_input.e.zyy, vec3<i32>(-10709i, global0.a, 1i))), ~u_input.e.wxx, all(vec4<bool>(true, true, true, true))), ~_wgslsmith_div_u32(global1.x, ~33031u));
    let var_2 = global1.x;
    var var_3 = Struct_3(func_5(false, Struct_3(Struct_1(func_4(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), true).a), vec3<i32>(_wgslsmith_div_i32(u_input.b, u_input.a), max(2147483647i, u_input.b), _wgslsmith_dot_vec2_i32(u_input.e.yz, vec2<i32>(-4006i, arg_1.x))))), u_input.e.xzz);
    return Struct_1(1186f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -872f;
    global2 = array<Struct_4, 30>();
    var var_1 = global1.x;
    let var_2 = ~u_input.d.x;
    let var_3 = vec3<u32>(75129u, ~(~(~var_2)), 0u);
    let var_4 = _wgslsmith_f_op_f32(-global0.c.x);
    let var_5 = Struct_3(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + -1038f) + _wgslsmith_f_op_f32(-global0.c.x))), ~vec2<i32>(firstLeadingBit(u_input.a), -2147483647i), Struct_2(u_input.b, global0.b, global0.c)), select(countOneBits(select(vec3<i32>(16466i, 9307i, u_input.b), _wgslsmith_clamp_vec3_i32(u_input.e.wwz, vec3<i32>(-2147483647i, u_input.b, u_input.a), vec3<i32>(u_input.a, 8408i, global0.a)), all(vec4<bool>(false, false, true, false)))), u_input.e.xyy, !any(vec4<bool>(false, true, false, true)) | (-413f >= _wgslsmith_f_op_f32(round(global0.b.a)))));
    var var_6 = u_input.a;
    let var_7 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.zx);
}

