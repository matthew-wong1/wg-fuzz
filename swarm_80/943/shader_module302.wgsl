struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 26>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, countOneBits(u_input.b)), firstLeadingBit(vec2<u32>(abs(u_input.b), u_input.b)), (~abs(u_input.c.zy) << (vec2<u32>(max(u_input.d, u_input.c.x), 1u) % vec2<u32>(32u))) << (u_input.c.zz % vec2<u32>(32u)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2757f), _wgslsmith_f_op_f32(f32(-1f) * -993f)))), -1445f, arg_0.c.b);
    var_0 = firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(15705u, u_input.c.x), abs(4294967295u)) << (select(~u_input.c.zy, ~u_input.c.zy, arg_0.b.a.zx) % vec2<u32>(32u)), select(vec2<u32>(u_input.b, u_input.d), ~vec2<u32>(u_input.c.x, 12880u), arg_0.c.a.wx) << (~min(vec2<u32>(72367u, 79607u), vec2<u32>(u_input.b, var_0.x)) % vec2<u32>(32u))));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-460f, var_1.x, -1000f, var_1.x), vec4<f32>(-327f, 1698f, 347f, var_1.x))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, var_1.x, 2024f, 722f), vec4<f32>(var_1.x, 926f, arg_0.b.b, 380f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, var_1.x, 192f, 520f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 621f, arg_0.b.b, 229f))), (u_input.a.x >= -7227i) & (0i >= u_input.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.b, var_1.x, 1040f, 1000f) + vec4<f32>(var_1.x, -571f, 192f, var_1.x))))), select(select(arg_0.b.a, vec4<bool>(false, select(arg_0.c.a.x, arg_0.b.a.x, true), any(arg_0.c.a.xx), select(arg_0.a.x, true, false)), arg_0.b.a), arg_0.b.a, !arg_0.b.a)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.b) - -1000f);
    return -147f;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: f32, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_2(select(select(!(!arg_1.a.a.xz), vec2<bool>(arg_1.a.a.x & true, u_input.d <= u_input.c.x), arg_1.a.a.x), !arg_1.a.a.xy, any(vec3<bool>(true, true, true))), Struct_1(!(!(!vec4<bool>(arg_1.a.a.x, arg_1.a.a.x, arg_1.a.a.x, true))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-990f))))), Struct_1(!arg_1.a.a, arg_2), arg_1.a.a.x);
    let var_1 = arg_1.a;
    let var_2 = vec3<bool>(!select(false, true, var_0.b.a.x), arg_1.a.a.x, u_input.c.x == _wgslsmith_add_u32(26110u, _wgslsmith_sub_u32(~0u, ~u_input.b)));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(253f, 448f)))))), var_0, vec3<f32>(297f, arg_1.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1232f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(vec2<bool>(var_0.d, false), var_0.c, arg_1.a, arg_1.a.a.x))) * -632f))), var_1);
    global0 = array<vec2<f32>, 26>();
    return var_3.b.c;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2) -> Struct_3 {
    var var_0 = arg_1.c.a.wx;
    let var_1 = vec2<u32>(~(~77261u), u_input.d);
    global0 = array<vec2<f32>, 26>();
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(1613f, func_2(vec3<i32>(0i, 0i, u_input.a.x), Struct_4(Struct_1(vec4<bool>(false, arg_1.b.a.x, arg_1.c.a.x, var_0.x), arg_1.c.b), arg_1.b.b), -190f, u_input.a.x).b), -1124f)), arg_1, vec3<f32>(arg_1.b.b, _wgslsmith_f_op_f32(max(arg_1.c.b, -765f)), -357f), Struct_1(select(arg_1.b.a, vec4<bool>(any(vec4<bool>(arg_1.c.a.x, true, arg_1.a.x, true)), true, true, any(arg_1.c.a.zwy)), select(arg_1.c.a, arg_1.b.a, true)), -436f));
    var var_3 = Struct_4(func_2(u_input.a.xwx, Struct_4(arg_1.c, var_2.d.b), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.b.b))), i32(-1i) * -reverseBits(17292i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.b) - 693f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(454f, 788f)), _wgslsmith_f_op_f32(831f - 1313f))), arg_1.b.b)));
    return var_2;
}

fn func_5(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_3, arg_3: Struct_2) -> vec2<bool> {
    global0 = array<vec2<f32>, 26>();
    var var_0 = _wgslsmith_f_op_f32(floor(-977f));
    let var_1 = func_4(arg_2.c.zz, arg_3).b;
    let var_2 = u_input.a & vec4<i32>(min(u_input.a.x ^ abs(-59567i), -u_input.a.x), max(_wgslsmith_clamp_i32(firstTrailingBit(u_input.a.x), 0i, 41585i), -1i), reverseBits(min(u_input.a.x, u_input.a.x)), ~(_wgslsmith_add_i32(u_input.a.x, u_input.a.x) ^ select(25038i, 0i, true)));
    let var_3 = countOneBits(u_input.a.zx);
    return var_1.c.a.xx;
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: f32) -> vec2<bool> {
    global0 = array<vec2<f32>, 26>();
    global0 = array<vec2<f32>, 26>();
    var var_0 = arg_1.c;
    var var_1 = arg_1.b.a;
    var_1 = !(!select(vec2<bool>(u_input.d == u_input.c.x, select(false, arg_1.b.d, arg_1.d.a.x)), arg_1.b.a, !all(vec4<bool>(true, false, var_1.x, false))));
    return func_5(~vec2<u32>(u_input.d, 0u), false, func_4(global0[_wgslsmith_index_u32(abs(0u) | ~(~u_input.b), 26u)], Struct_2(!vec2<bool>(var_1.x, false), arg_1.d, func_2(u_input.a.yyx ^ arg_2, Struct_4(arg_1.d, arg_0), _wgslsmith_f_op_f32(abs(arg_0)), u_input.a.x), false)), Struct_2(vec2<bool>(true, false), arg_1.b.b, func_4(_wgslsmith_f_op_vec2_f32(trunc(arg_1.c.zz)), func_4(arg_1.c.zx, arg_1.b).b).d, var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 26>();
    var var_0 = Struct_1(vec4<bool>(true, !all(func_1(2328f, Struct_3(472f, Struct_2(vec2<bool>(true, true), Struct_1(vec4<bool>(true, true, true, true), -1800f), Struct_1(vec4<bool>(false, true, false, false), 1000f), false), vec3<f32>(1158f, -502f, -316f), Struct_1(vec4<bool>(false, true, true, true), -752f)), u_input.a.wxz, -754f)), true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -298f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a.wz, u_input.a.wz), (_wgslsmith_div_i32(u_input.a.x, -1i) | max(-13605i, u_input.a.x)) >> ((14337u ^ (107140u ^ u_input.d)) % 32u), max(22423i, -1i), -(~_wgslsmith_clamp_i32(u_input.a.x, 90186i, u_input.a.x))), ~u_input.c.zy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * var_0.b) - _wgslsmith_f_op_f32(func_3(Struct_2(var_0.a.ww, Struct_1(vec4<bool>(false, false, false, var_0.a.x), -797f), Struct_1(vec4<bool>(var_0.a.x, false, false, var_0.a.x), var_0.b), false)))) * _wgslsmith_f_op_f32(var_0.b * var_0.b))));
}

