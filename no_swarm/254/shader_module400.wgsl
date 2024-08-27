struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec2<bool>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6> = array<bool, 6>(false, true, true, false, false, false);

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<f32>(-555f, -1000f), vec4<i32>(-1i, -12053i, 5645i, -15627i), vec2<bool>(true, false), -1i, vec2<u32>(0u, 46211u)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<i32>) -> vec2<f32> {
    global1 = Struct_2(global1.a);
    let var_0 = vec3<bool>(global1.a.c.x, false, global0[_wgslsmith_index_u32(countOneBits(4294967295u), 6u)]);
    let var_1 = Struct_2(Struct_1(global1.a.a, select(firstLeadingBit(~vec4<i32>(-2147483647i, u_input.d, arg_0.x, -2147483647i)), ~_wgslsmith_clamp_vec4_i32(global1.a.b, global1.a.b, vec4<i32>(-5864i, arg_0.x, global1.a.d, u_input.d)), true), select(var_0.xx, global1.a.c, vec2<bool>(!var_0.x, true)), i32(-1i) * -60420i, abs(~vec2<u32>(u_input.b, global1.a.e.x)) & ~vec2<u32>(global1.a.e.x, 72329u)));
    let var_2 = var_1;
    var var_3 = !(!all(vec3<bool>(!global1.a.c.x, true, false)));
    return vec2<f32>(1f, 1f);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = 0u;
    var var_1 = arg_3;
    global1 = Struct_2(arg_1);
    global0 = array<bool, 6>();
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.d, arg_3.d, var_1.d), var_1.b.xwx, arg_1.b.ywx) >> (arg_2.xyw % vec3<u32>(32u)), vec3<i32>(global1.a.d & 22385i, global1.a.d, 1i)))), min(vec4<i32>(~(~4123i), -1i, arg_3.d, u_input.d), vec4<i32>(~firstTrailingBit(1i), ~abs(-47666i), -var_1.b.x, -32365i)), arg_1.c, arg_3.b.x, reverseBits(~arg_0.zx));
    return _wgslsmith_add_vec2_u32(vec2<u32>(firstLeadingBit(4294967295u), arg_2.x), _wgslsmith_div_vec2_u32(~(~vec2<u32>(24514u, arg_2.x) << (~var_1.e % vec2<u32>(32u))), firstLeadingBit(~global1.a.e << ((global1.a.e << (arg_0.zw % vec2<u32>(32u))) % vec2<u32>(32u)))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    global0 = array<bool, 6>();
    let var_1 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-1169f - _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(max(371f, _wgslsmith_f_op_f32(floor(global1.a.a.x))))), global1.a.b, !var_0.c, select(1i, min(2147483647i, global1.a.d | global1.a.d), global1.a.c.x), ~(~func_2(vec4<u32>(27464u, global1.a.e.x, var_0.e.x, var_0.e.x), Struct_1(vec2<f32>(828f, -1299f), vec4<i32>(-13070i, 36205i, var_0.d, 1i), vec2<bool>(false, false), -90098i, arg_0.e), u_input.e, Struct_1(arg_0.a, vec4<i32>(2147483647i, 22940i, var_0.d, -1i), var_0.c, var_0.d, vec2<u32>(91080u, 1u))))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(333f, arg_0.a.x)) * global1.a.a) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(711f, var_0.a.x) + var_1.a.a) * vec2<f32>(-766f, var_1.a.a.x))), select(~vec4<i32>(global1.a.b.x, var_0.d, 64136i, 2147483647i), min(global1.a.b, vec4<i32>(2147483647i, var_1.a.d, arg_0.b.x, 2147483647i)), vec4<bool>(true, false, arg_0.c.x, true)) << (u_input.e % vec4<u32>(32u)), !arg_0.c, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(-23835i, 2147483647i), -global1.a.b.yy), var_1.a.b.x), ~vec2<u32>(~var_0.e.x, 44192u)));
    var var_3 = any(select(select(select(!vec4<bool>(var_2.a.c.x, false, true, true), !vec4<bool>(global0[_wgslsmith_index_u32(39781u, 6u)], var_1.a.c.x, true, false), vec4<bool>(global1.a.c.x, true, false, false)), select(!vec4<bool>(global0[_wgslsmith_index_u32(var_1.a.e.x, 6u)], arg_0.c.x, var_2.a.c.x, true), select(vec4<bool>(var_0.c.x, var_0.c.x, var_2.a.c.x, true), vec4<bool>(true, false, true, arg_0.c.x), var_0.c.x), var_0.e.x == 5365u), vec4<bool>(global1.a.c.x, any(vec4<bool>(global0[_wgslsmith_index_u32(var_0.e.x, 6u)], var_0.c.x, false, false)), any(vec2<bool>(arg_0.c.x, false)), true)), !(!select(vec4<bool>(global0[_wgslsmith_index_u32(var_1.a.e.x, 6u)], var_2.a.c.x, var_0.c.x, var_2.a.c.x), vec4<bool>(true, global1.a.c.x, var_1.a.c.x, false), vec4<bool>(arg_0.c.x, global0[_wgslsmith_index_u32(var_0.e.x, 6u)], false, var_2.a.c.x))), !var_1.a.c.x));
    return global1.a;
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = 0i;
    let var_1 = true;
    var var_2 = _wgslsmith_mod_u32(max(global1.a.e.x, ~(arg_0.a.e.x & 76762u)) & 4294967295u, 63438u);
    var var_3 = ~4294967295u;
    global0 = array<bool, 6>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -38014i;
    var_0 = 7743i;
    let var_1 = _wgslsmith_mult_u32(global1.a.e.x, ~(~global1.a.e.x));
    var var_2 = func_4(Struct_2(func_1(Struct_1(_wgslsmith_f_op_vec2_f32(-global1.a.a), global1.a.b ^ vec4<i32>(-2147483647i, -39565i, global1.a.d, -2415i), global1.a.c, -u_input.d, vec2<u32>(19099u, 6925u)))));
    let var_3 = 0u;
    var var_4 = global1.a.c.x;
    let var_5 = -19309i;
    var var_6 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1001f, global1.a.a.x))), vec4<i32>(-17247i, -12943i, _wgslsmith_clamp_i32(2147483647i, global1.a.b.x, u_input.d) | _wgslsmith_mult_i32(var_5, -1i), ~u_input.d), vec2<bool>(any(select(vec4<bool>(global1.a.c.x, false, var_2.a.c.x, false), vec4<bool>(true, false, global0[_wgslsmith_index_u32(var_3, 6u)], var_2.a.c.x), vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(var_2.a.e.x, 6u)]))), true != (false | global0[_wgslsmith_index_u32(4294967295u, 6u)])), -26515i, var_2.a.e));
    let var_7 = select(!vec3<bool>(-12797i != _wgslsmith_clamp_i32(global1.a.d, -20886i, global1.a.d), true, !var_6.a.c.x), vec3<bool>(global0[_wgslsmith_index_u32(func_4(func_4(Struct_2(Struct_1(global1.a.a, vec4<i32>(var_6.a.b.x, -3195i, var_2.a.b.x, -7457i), vec2<bool>(true, true), 37288i, vec2<u32>(1u, 27301u))))).a.e.x, 6u)], var_2.a.c.x, any(!func_4(Struct_2(Struct_1(vec2<f32>(var_6.a.a.x, var_2.a.a.x), vec4<i32>(var_2.a.b.x, 1i, u_input.d, 1i), var_2.a.c, 1i, var_6.a.e))).a.c)), var_6.a.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_6.a.a.x, var_6.a.a.x, -254f, var_2.a.a.x), vec4<f32>(-1531f, -803f, -1211f, global1.a.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(481f, 1130f, global1.a.a.x, -253f) - vec4<f32>(var_2.a.a.x, global1.a.a.x, var_6.a.a.x, 117f))))), firstLeadingBit(~select(var_2.a.b.xx, _wgslsmith_mult_vec2_i32(global1.a.b.xz, vec2<i32>(1420i, var_5)), true)));
}

