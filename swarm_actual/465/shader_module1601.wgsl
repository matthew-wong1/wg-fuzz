struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec4<f32>,
    d: i32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: f32;

var<private> global2: f32 = -1122f;

var<private> global3: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> bool {
    global3 = Struct_3(Struct_1(select(global0.a.a, vec2<bool>(any(vec3<bool>(global0.a.a.x, global3.b.a.x, true)), true), vec2<bool>(select(false, false, false), all(vec3<bool>(global0.a.a.x, global3.a.a.x, global0.a.a.x)))), vec3<f32>(global0.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.b.x)), _wgslsmith_f_op_f32(max(-642f, _wgslsmith_f_op_f32(-global0.a.b.x))))), global0.b, _wgslsmith_mod_vec4_i32(min(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global3.c.x, u_input.a, global0.c.x, -79338i), vec4<i32>(43471i, global0.c.x, global3.c.x, u_input.c.x)), -u_input.c), select(vec4<i32>(35706i, 44977i, global3.c.x, -27034i), vec4<i32>(global3.c.x, -37665i, 23018i, 1i), !vec4<bool>(global3.a.a.x, false, global3.a.a.x, global3.a.a.x))), ~(-vec4<i32>(-1i, 2147483647i, global3.c.x, 34801i)) ^ countOneBits(-global3.c)));
    let var_0 = !(!global0.b.a);
    var var_1 = Struct_3(Struct_1(select(global0.b.a, vec2<bool>(var_0.x, !global0.a.a.x), true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.b.x, global0.a.b.x, -299f)))), global0.a.b)), Struct_1(!var_0, _wgslsmith_f_op_vec3_f32(-arg_0)), vec4<i32>(~global3.c.x, select(~(~(-1i)), -(54305i << (1u % 32u)), all(!vec4<bool>(global0.b.a.x, true, false, global3.a.a.x))), -3807i | _wgslsmith_add_i32(~u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), global3.c.zx)), ~global0.c.x));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.b.b.x - 1100f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -244f)), global0.c.x > ~(var_1.c.x ^ 60i))));
    var var_3 = vec2<bool>(true, !(!(_wgslsmith_f_op_f32(floor(global0.b.b.x)) < _wgslsmith_f_op_f32(1317f - 361f))));
    return any(select(select(vec3<bool>(var_3.x, select(false, true, true), true), select(vec3<bool>(var_3.x, global3.b.a.x, global3.a.a.x), !vec3<bool>(false, true, global0.a.a.x), !vec3<bool>(var_0.x, var_1.a.a.x, var_0.x)), vec3<bool>(!var_1.a.a.x, any(global0.b.a), false)), vec3<bool>(29357u >= _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 5728u), u_input.b.yz), global3.a.a.x, any(!vec3<bool>(var_3.x, true, true))), select(false, all(!global0.a.a), !all(vec4<bool>(false, var_1.a.a.x, global3.b.a.x, true)))));
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1012f, global0.a.b.x, -901f))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.b.b.x, 663f, -816f, global3.a.b.x)))) + vec4<f32>(-1478f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.b.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.a.b.x - -2247f), _wgslsmith_f_op_f32(exp2(global3.a.b.x)), true)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_1 = Struct_3(Struct_1(!(!(!global3.b.a)), vec3<f32>(966f, _wgslsmith_div_f32(-263f, global3.b.b.x), var_0.x)), Struct_1(vec2<bool>(func_3(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1000f, global0.b.b.x, var_0.x)))), true), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(global0.b.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.b.b.x, -352f, -1695f))) * var_0.zxx), vec3<bool>(true, true, true)))), -(~(-vec4<i32>(1i, 2147483647i, -42767i, u_input.a) >> (u_input.d % vec4<u32>(32u)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 324f) - global0.b.b.xz), _wgslsmith_f_op_vec2_f32(exp2(global0.a.b.zx)))))));
    var_1 = Struct_3(Struct_1(vec2<bool>(false, false), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(427f * 655f) - _wgslsmith_f_op_f32(184f + -1126f)), 795f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_2.x, 109f))))), var_1.a, vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.c, vec4<i32>(global3.c.x, u_input.a, 0i, 14204i)), ~vec4<i32>(global0.c.x, var_1.c.x, u_input.c.x, u_input.a)));
    var_1 = Struct_3(Struct_1(select(select(vec2<bool>(true, false), global3.b.a, select(global0.b.a, var_1.a.a, true)), global3.a.a, any(select(vec4<bool>(global3.b.a.x, false, global3.b.a.x, global0.b.a.x), vec4<bool>(false, true, global0.a.a.x, false), false))), _wgslsmith_div_vec3_f32(vec3<f32>(global3.b.b.x, _wgslsmith_f_op_f32(trunc(-417f)), var_2.x), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.b.b.x, var_2.x, var_1.b.b.x), _wgslsmith_f_op_vec3_f32(-var_0.zzx)))), Struct_1(!vec2<bool>(global3.b.a.x, all(vec4<bool>(true, global3.b.a.x, false, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.a.b) + _wgslsmith_f_op_vec3_f32(-global0.a.b))), global3.c);
    return Struct_2(global0.c.x, Struct_1(select(!(!var_1.b.a), vec2<bool>(global0.a.a.x, global0.a.a.x | global0.b.a.x), !select(global3.a.a, var_1.a.a, vec2<bool>(var_1.a.a.x, var_1.b.a.x))), _wgslsmith_f_op_vec3_f32(-var_1.b.b)));
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = func_2(abs(0u));
    var var_1 = !vec3<bool>(var_0.b.a.x, false, false);
    let var_2 = arg_0;
    global0 = Struct_3(var_0.b, func_2(_wgslsmith_sub_u32(u_input.b.x, 0u | u_input.d.x) >> (27405u % 32u)).b, ~global3.c);
    let var_3 = Struct_4(Struct_3(global0.a, Struct_1(select(func_2(u_input.b.x).b.a, select(global3.b.a, vec2<bool>(false, global3.a.a.x), global0.a.a), var_1.yy), vec3<f32>(var_0.b.b.x, global0.a.b.x, func_2(50173u).b.b.x)), global0.c), func_2(1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-423f, var_0.b.b.x, global3.a.b.x, 188f), vec4<f32>(global3.b.b.x, global0.b.b.x, var_0.b.b.x, -933f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-119f, global3.a.b.x, global3.a.b.x, 276f) + vec4<f32>(global0.a.b.x, var_0.b.b.x, -1283f, 1000f)))))), ~_wgslsmith_clamp_i32(select(_wgslsmith_dot_vec3_i32(global3.c.xxx, vec3<i32>(0i, var_0.a, global3.c.x)), 1i, true), i32(-1i) * -2147483647i, global3.c.x));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.c.x, -185f)))), var_0.b.b.x)), func_2(_wgslsmith_sub_u32(var_2 | _wgslsmith_dot_vec3_u32(u_input.b.wzz, vec3<u32>(0u, u_input.d.x, 1u)), ~1u)).b.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d.zwx << (u_input.d.wzx % vec3<u32>(32u));
    global1 = _wgslsmith_f_op_f32(func_1(1u));
    global3 = Struct_3(global3.b, global3.a, reverseBits(_wgslsmith_sub_vec4_i32(u_input.c, ~global0.c)));
    let var_1 = Struct_1(global3.b.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global3.b.b, _wgslsmith_f_op_vec3_f32(global0.b.b - vec3<f32>(global0.b.b.x, -1000f, global0.b.b.x)))) - global3.a.b));
    var var_2 = 19423i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.zzz, global3.c.wz);
}

