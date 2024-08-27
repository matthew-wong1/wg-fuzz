struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_4;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: vec3<bool>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.a.b.x))) - -518f))));
    global1 = Struct_4(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0, 1898f, select(false, false, arg_3.x)))) != arg_1.a.b.x, select(vec3<bool>(all(select(vec4<bool>(true, arg_2.x, arg_0.e.c.x, true), vec4<bool>(true, true, global1.d.c.x, false), vec4<bool>(arg_0.a.c.x, arg_0.e.c.x, false, true))), all(!arg_2), arg_0.a.c.x), vec3<bool>(true, true, true), arg_3.x), global1.d);
    var var_1 = arg_1.c.b;
    var var_2 = Struct_4(Struct_2(Struct_1(_wgslsmith_clamp_i32(i32(-1i) * -10657i, -50974i, -2147483647i), arg_0.e.b, global1.d.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b)), Struct_1(-24530i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.e.b.x, -564f, -866f, -580f)), arg_0.e.b), vec4<bool>(all(vec2<bool>(false, arg_0.c.c.x)), all(arg_3), false, arg_1.e.c.x)), arg_1.d, arg_0.e), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.c.b.x, arg_0.c.b.x), _wgslsmith_f_op_f32(f32(-1f) * -407f)) - _wgslsmith_f_op_f32(-var_1.x)) >= 1088f, vec3<bool>(arg_2.x, ~arg_1.c.a >= _wgslsmith_mult_i32(u_input.d.x & arg_1.c.a, u_input.d.x), true), Struct_1(arg_0.a.a, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -629f))), 2504f, global1.d.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -273f))), select(vec4<bool>(true, any(global1.d.c.ww), arg_2.x && true, u_input.a.x > arg_1.a.a), global1.a.a.c, all(!global1.a.a.c))));
    var var_3 = ~firstTrailingBit(~((vec4<u32>(u_input.c.x, var_2.a.d.x, 1u, arg_1.d.x) >> (vec4<u32>(0u, var_2.a.d.x, u_input.c.x, 6093u) % vec4<u32>(32u))) & _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, var_2.a.d.x, 0u, u_input.c.x), vec4<u32>(u_input.e.x, var_2.a.d.x, arg_1.d.x, global1.a.d.x))));
    return vec4<f32>(var_1.x, 1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1225f)) + -502f), global0.x)), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-780f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.d.b.x, -1324f)))));
}

fn func_2(arg_0: Struct_4, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    let var_0 = Struct_3(Struct_2(Struct_1(abs(arg_0.d.a), vec4<f32>(_wgslsmith_f_op_f32(global0.x * -383f), -1438f, _wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(step(-1681f, -1713f))), vec4<bool>(!arg_3.e.c.x, select(true, arg_0.b, arg_3.a.c.x), arg_2.b.x > arg_2.b.x, arg_3.c.c.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.xzz * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d.b.x, 607f, arg_3.b.x) + global0.yyx)) + arg_3.a.b.zzy), global1.a.c, vec2<u32>(1277u ^ _wgslsmith_clamp_u32(arg_0.a.d.x, arg_3.d.x, arg_3.d.x), _wgslsmith_add_u32(global1.a.d.x, arg_0.a.d.x) >> (u_input.e.x % 32u)), Struct_1(_wgslsmith_div_i32(_wgslsmith_div_i32(1i, -1116i), 38085i | arg_2.a), _wgslsmith_f_op_vec4_f32(func_3(global1.a, global1.a, arg_2.c.zyw, vec3<bool>(true, false, true))), vec4<bool>(arg_3.e.a >= global1.d.a, true, arg_3.a.c.x, true))));
    let var_1 = vec4<i32>(~_wgslsmith_clamp_i32(_wgslsmith_add_i32(-48145i, ~arg_2.a), ~arg_0.d.a, arg_2.a), _wgslsmith_add_i32(arg_3.c.a, arg_3.a.a), _wgslsmith_dot_vec4_i32(reverseBits(u_input.a), u_input.a), abs(_wgslsmith_sub_i32(-(~global1.a.e.a), var_0.a.a.a)));
    global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_0.a.a.b), _wgslsmith_f_op_vec4_f32(func_3(global1.a, arg_3, !select(!vec3<bool>(false, global1.a.a.c.x, true), select(vec3<bool>(true, false, global1.c.x), vec3<bool>(true, false, true), true), vec3<bool>(true, true, global1.d.c.x)), select(!arg_3.e.c.wwz, !vec3<bool>(arg_2.c.x, true, global1.c.x), arg_2.c.x)))));
    var var_2 = -3869i;
    let var_3 = var_0.a.e.c.x;
    return 579f;
}

fn func_1(arg_0: Struct_4) -> Struct_1 {
    let var_0 = ~vec2<i32>(2147483647i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(global1.d.a, global1.a.c.a), -2147483647i)) & u_input.d;
    let var_1 = abs(arg_0.a.d.x);
    global1 = arg_0;
    global0 = vec4<f32>(_wgslsmith_f_op_f32(select(-2525f, arg_0.a.c.b.x, !arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.a.b.x))), _wgslsmith_div_f32(278f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1001f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_0, -1i, Struct_1(arg_0.a.e.a, arg_0.a.e.b, vec4<bool>(arg_0.d.c.x, arg_0.d.c.x, arg_0.a.a.c.x, true)), global1.a))) - _wgslsmith_f_op_f32(f32(-1f) * -685f)))));
    var var_2 = Struct_4(Struct_2(Struct_1(reverseBits(4266i), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(global1.d.b, vec4<f32>(1752f, global0.x, arg_0.a.b.x, global0.x), vec4<bool>(arg_0.b, arg_0.d.c.x, global1.c.x, false))))), select(vec4<bool>(true, global1.d.c.x, false, false), !global1.d.c, select(arg_0.c.x, global1.b, true))), global1.d.b.yww, Struct_1(1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, arg_0.d.b.x, -109f, global1.a.e.b.x), global1.a.c.b)) * arg_0.a.a.b), vec4<bool>(true, !arg_0.c.x, arg_0.b & arg_0.c.x, !global1.a.c.c.x)), reverseBits((vec2<u32>(global1.a.d.x, 32728u) >> (vec2<u32>(370u, 22833u) % vec2<u32>(32u))) & vec2<u32>(arg_0.a.d.x, 0u)), global1.d), true, vec3<bool>(_wgslsmith_f_op_f32(step(global1.d.b.x, global0.x)) < _wgslsmith_f_op_f32(max(-520f, -595f)), 49366u >= max(global1.a.d.x, max(arg_0.a.d.x, var_1)), true), global1.d);
    return Struct_1(global1.d.a, _wgslsmith_f_op_vec4_f32(func_3(Struct_2(Struct_1(var_0.x, vec4<f32>(global0.x, var_2.d.b.x, 421f, -759f), !vec4<bool>(var_2.c.x, var_2.d.c.x, arg_0.d.c.x, global1.a.c.c.x)), vec3<f32>(-1107f, _wgslsmith_f_op_f32(global0.x * -2276f), _wgslsmith_div_f32(285f, global0.x)), global1.a.a, global1.a.d, Struct_1(_wgslsmith_dot_vec3_i32(u_input.a.wyw, vec3<i32>(global1.a.e.a, -2147483647i, -2147483647i)), global1.a.c.b, var_2.d.c)), global1.a, select(!global1.d.c.xyw, select(!var_2.c, !var_2.c, global1.d.c.x), var_2.a.e.c.x & all(vec3<bool>(false, false, var_2.a.c.c.x))), arg_0.a.e.c.zzy)), vec4<bool>(global1.b, var_2.d.c.x, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_4(global1.a, any(global1.a.c.c.wyy), vec3<bool>(true, (u_input.c.x < 4294967295u) | !global1.b, all(!vec3<bool>(global1.a.e.c.x, false, false))), Struct_1(reverseBits(u_input.a.x), _wgslsmith_f_op_vec4_f32(global1.a.c.b * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 105f, -1039f, -387f))), select(select(global1.d.c, vec4<bool>(global1.b, false, global1.c.x, false), global1.b), vec4<bool>(global1.a.a.c.x, global1.d.c.x, global1.a.c.c.x, global1.a.a.c.x), !global1.d.c.x))));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_1(Struct_4(Struct_2(var_0, global1.a.a.b.xzy, global1.d, vec2<u32>(global1.a.d.x, global1.a.d.x), var_0), global1.d.c.x, !global1.d.c.xxy, func_1(Struct_4(global1.a, var_0.c.x, vec3<bool>(true, false, true), global1.a.a)))).b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b.x))), _wgslsmith_f_op_f32(select(var_0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.a.b.x * 190f), _wgslsmith_f_op_f32(select(global1.a.e.b.x, 638f, true))), true)), global0.x));
    let var_1 = _wgslsmith_mod_u32(0u, 779u);
    global1 = Struct_4(global1.a, var_0.c.x, global1.d.c.zzx, Struct_1(-28406i & global1.a.e.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_3(global1.a, Struct_2(Struct_1(46543i, global1.d.b, vec4<bool>(global1.a.a.c.x, false, var_0.c.x, false)), var_0.b.yxw, Struct_1(u_input.d.x, var_0.b, global1.d.c), vec2<u32>(var_1, u_input.c.x), Struct_1(global1.d.a, var_0.b, vec4<bool>(false, global1.c.x, false, false))), var_0.c.zxx, global1.c)))) + _wgslsmith_f_op_vec4_f32(-var_0.b)), !(!func_1(Struct_4(Struct_2(var_0, vec3<f32>(1614f, var_0.b.x, global1.d.b.x), Struct_1(u_input.a.x, vec4<f32>(-145f, global0.x, -1000f, var_0.b.x), vec4<bool>(global1.a.c.c.x, false, global1.c.x, var_0.c.x)), vec2<u32>(4294967295u, var_1), global1.d), var_0.c.x, vec3<bool>(var_0.c.x, false, true), Struct_1(u_input.a.x, var_0.b, global1.a.c.c))).c)));
    var var_2 = Struct_3(Struct_2(func_1(Struct_4(Struct_2(var_0, global0.xwz, global1.d, global1.a.d, global1.a.e), !var_0.c.x, !vec3<bool>(false, global1.b, global1.d.c.x), Struct_1(var_0.a, vec4<f32>(var_0.b.x, global0.x, 1000f, var_0.b.x), global1.a.a.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(654f, global1.a.c.b.x, 1298f) - _wgslsmith_f_op_vec3_f32(-var_0.b.yww)) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, global0.x, global1.d.b.x))), _wgslsmith_f_op_vec3_f32(-global0.yzx)))), func_1(Struct_4(Struct_2(global1.d, vec3<f32>(1362f, global1.a.c.b.x, 248f), Struct_1(-2147483647i, vec4<f32>(665f, -1106f, global0.x, global0.x), vec4<bool>(var_0.c.x, true, var_0.c.x, global1.a.e.c.x)), vec2<u32>(var_1, 33086u), Struct_1(global1.a.e.a, vec4<f32>(-1699f, 125f, 581f, global0.x), global1.d.c)), select(true, true, true), !var_0.c.ywz, var_0)), select(select(vec2<u32>(global1.a.d.x, global1.a.d.x), global1.a.d, var_0.c.yw), reverseBits(global1.a.d), !vec2<bool>(var_0.c.x, var_0.c.x)) | vec2<u32>(~1u, countOneBits(var_1)), var_0));
    var_2 = Struct_3(Struct_2(global1.a.e, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(global1.d.b.x, var_2.a.a.b.x)), _wgslsmith_f_op_f32(exp2(var_2.a.e.b.x)), -701f), _wgslsmith_f_op_vec3_f32(-var_0.b.ywz)), var_0, _wgslsmith_mult_vec2_u32(global1.a.d, var_2.a.d & ~global1.a.d), func_1(Struct_4(Struct_2(Struct_1(var_2.a.c.a, var_2.a.c.b, global1.a.e.c), vec3<f32>(-1668f, global0.x, global1.a.e.b.x), var_2.a.c, vec2<u32>(4294967295u, 4952u), global1.a.c), var_1 > 31852u, func_1(Struct_4(global1.a, global1.d.c.x, vec3<bool>(var_0.c.x, global1.a.e.c.x, global1.a.a.c.x), Struct_1(-5033i, vec4<f32>(global0.x, 1355f, global0.x, 507f), global1.a.e.c))).c.yxw, Struct_1(var_2.a.a.a, vec4<f32>(global1.d.b.x, var_2.a.c.b.x, 414f, var_0.b.x), vec4<bool>(var_2.a.a.c.x, true, true, true))))));
    let var_3 = !(!var_2.a.e.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(~((vec3<u32>(var_2.a.d.x, u_input.e.x, u_input.c.x) | vec3<u32>(4294967295u, 51742u, 1u)) | (vec3<u32>(4294967295u, var_2.a.d.x, var_1) & vec3<u32>(var_2.a.d.x, 1u, var_1))), max(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 8894u, 52098u), reverseBits(vec3<u32>(24813u, var_1, var_2.a.d.x))), abs(firstLeadingBit(vec3<u32>(0u, 34015u, 1u))))), vec4<f32>(global0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-298f * -803f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), -2599f)) * 1421f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.b.x, _wgslsmith_f_op_f32(global1.a.a.b.x - 731f), global1.a.e.c.x)) - var_2.a.a.b.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(~(-2147483647i), ~min(global1.a.c.a, 42039i), _wgslsmith_sub_i32(func_1(Struct_4(Struct_2(var_0, vec3<f32>(global0.x, global1.d.b.x, var_2.a.b.x), var_0, u_input.c, var_0), var_3, vec3<bool>(true, var_2.a.c.c.x, true), global1.d)).a, -var_0.a), _wgslsmith_clamp_i32(-2147483647i, var_0.a, global1.d.a)), countOneBits(-countOneBits(u_input.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(global0.x - 208f), _wgslsmith_f_op_f32(f32(-1f) * -1567f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1046f, global0.x))))))));
}

