struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: Struct_2,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24>;

var<private> global1: Struct_1 = Struct_1(-626f, vec2<u32>(4294967295u, 0u), vec2<bool>(false, false), vec2<f32>(1279f, -1045f));

var<private> global2: Struct_1;

var<private> global3: array<u32, 24>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: Struct_3, arg_1: f32) -> Struct_1 {
    let var_0 = true;
    global0 = array<f32, 24>();
    var var_1 = global1.d;
    let var_2 = var_0;
    global3 = array<u32, 24>();
    return Struct_1(global2.a, min(abs(~vec2<u32>(global1.b.x, u_input.e.x)), ~vec2<u32>(~arg_0.c.b.b.x, ~u_input.e.x)), vec2<bool>(!any(arg_0.e) || global1.c.x, all(select(global2.c, select(arg_0.c.b.c, global2.c, true), vec2<bool>(arg_0.e.x, true)))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-643f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(1u, 24u)], 480f)) + -1574f)))));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec3<f32>) -> vec3<u32> {
    var var_0 = firstTrailingBit(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.a.x, arg_1.a.x), i32(-1i) * -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 2944i), _wgslsmith_div_vec2_i32(u_input.a.zx, vec2<i32>(u_input.d, u_input.d))), 1i) & -vec3<i32>(-2147483647i, -8138i, abs(1i)));
    global0 = array<f32, 24>();
    let var_1 = 0u;
    return arg_1.d;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_2 {
    global2 = func_1(Struct_3(-vec3<i32>(42420i, u_input.d, u_input.d) & vec3<i32>(8270i, 1i, ~(-2147483647i)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.d.x + 1f), _wgslsmith_f_op_f32(-global2.d.x))), Struct_2(!global2.c.x, func_1(Struct_3(u_input.a.wxx, -1637f, Struct_2(false, Struct_1(1902f, vec2<u32>(global2.b.x, 4294967295u), global2.c, global2.d)), vec3<u32>(14949u, 53033u, global1.b.x), vec3<bool>(global2.c.x, true, global1.c.x)), 1450f)), _wgslsmith_clamp_vec3_u32(~(vec3<u32>(4294967295u, global2.b.x, arg_1.b.x) ^ u_input.e.xzz), func_3(true, Struct_3(vec3<i32>(u_input.d, -35014i, u_input.d), 973f, Struct_2(false, Struct_1(global2.a, arg_1.b, arg_1.c, vec2<f32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], -321f))), vec3<u32>(4294967295u, 4294967295u, global3[_wgslsmith_index_u32(u_input.c, 24u)]), vec3<bool>(true, global2.c.x, arg_1.c.x)), arg_0) & min(u_input.e.zzx, u_input.e.www), vec3<u32>(global1.b.x, global3[_wgslsmith_index_u32(u_input.b.x, 24u)], 74719u)), !select(select(vec3<bool>(arg_1.c.x, arg_1.c.x, global1.c.x), vec3<bool>(global1.c.x, global2.c.x, true), vec3<bool>(true, global1.c.x, false)), vec3<bool>(global1.c.x, global2.c.x, false), select(vec3<bool>(false, global1.c.x, arg_1.c.x), vec3<bool>(global1.c.x, global1.c.x, global2.c.x), global2.c.x))), _wgslsmith_div_f32(global2.d.x, _wgslsmith_f_op_f32(exp2(arg_1.d.x))));
    let var_0 = !select(!(!(!vec4<bool>(arg_1.c.x, false, arg_1.c.x, global2.c.x))), !(!(!vec4<bool>(global2.c.x, global1.c.x, global2.c.x, global1.c.x))), false);
    global0 = array<f32, 24>();
    global0 = array<f32, 24>();
    global2 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.a), global0[_wgslsmith_index_u32(1u, 24u)], any(select(vec3<bool>(false, var_0.x, global1.c.x), !var_0.yyw, global2.c.x)))), u_input.e.zw, select(select(vec2<bool>(global1.c.x, true), func_1(Struct_3(u_input.a.xzz, -415f, Struct_2(true, Struct_1(243f, vec2<u32>(global1.b.x, u_input.e.x), vec2<bool>(false, true), global1.d)), u_input.e.yzz, var_0.yzw), global0[_wgslsmith_index_u32(u_input.c, 24u)]).c, false), !vec2<bool>(false, global1.c.x), arg_1.c.x), _wgslsmith_f_op_vec2_f32(floor(arg_0.yy)));
    return Struct_2(all(!select(select(global1.c, arg_1.c, true), select(global2.c, vec2<bool>(true, true), true), func_1(Struct_3(u_input.a.wyz, 340f, Struct_2(var_0.x, Struct_1(global0[_wgslsmith_index_u32(arg_1.b.x, 24u)], arg_1.b, arg_1.c, vec2<f32>(global2.d.x, global2.a))), vec3<u32>(1u, 1u, 1u), var_0.zxw), global1.d.x).c.x)), func_1(Struct_3(vec3<i32>(max(u_input.a.x, 1i), abs(u_input.a.x), u_input.a.x), global2.d.x, Struct_2(true, func_1(Struct_3(u_input.a.yxw, global0[_wgslsmith_index_u32(0u, 24u)], Struct_2(global1.c.x, arg_1), vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 24u)], global1.b.x, arg_1.b.x), vec3<bool>(true, global1.c.x, arg_1.c.x)), global2.a)), func_3(false, Struct_3(vec3<i32>(u_input.a.x, u_input.d, 1535i), global2.d.x, Struct_2(arg_1.c.x, arg_1), vec3<u32>(global3[_wgslsmith_index_u32(global2.b.x, 24u)], 0u, u_input.c), var_0.wzw), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.a, 1603f, 210f)))), var_0.wwz), global1.d.x));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> f32 {
    global1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.e.yxz, u_input.e.yzx), 24u)]))), _wgslsmith_f_op_f32(global2.d.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(355f)), 1159f))), !arg_0.b.c.x)), vec2<u32>(u_input.e.x, _wgslsmith_sub_u32(4294967295u, 4294967295u)), arg_0.b.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(4294967295u, 24u)]))), global2.d.x)));
    let var_0 = arg_1.c;
    global2 = arg_0.b;
    let var_1 = vec4<bool>(global1.c.x || any(select(select(arg_1.e, vec3<bool>(global2.c.x, var_0.b.c.x, false), false), !arg_1.e, arg_1.e)), true, var_0.a, any(func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1720f, global2.a, -179f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.d.x, -813f, -339f))), select(vec3<bool>(true, global1.c.x, arg_1.e.x), arg_1.e, global1.c.x))), arg_0.b).b.c));
    let var_2 = 4294967295u;
    return _wgslsmith_f_op_f32(arg_0.b.d.x * 320f);
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: vec2<u32>, arg_3: bool) -> Struct_2 {
    let var_0 = Struct_3(select(vec3<i32>(_wgslsmith_sub_i32(-58305i, 36289i), max(-2147483647i, 0i), -2147483647i >> (1u % 32u)), -max(vec3<i32>(u_input.d, u_input.d, -16719i), u_input.a.xyw), vec3<bool>(arg_1 > 0u, select(global1.c.x, true, global1.c.x), true)) ^ reverseBits(u_input.a.xzx), arg_0, func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1059f), _wgslsmith_f_op_f32(arg_0 + 265f), _wgslsmith_div_f32(arg_0, arg_0))), Struct_1(-662f, ~global2.b, global1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.d)))), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.c, u_input.e.x, arg_2.x), ~u_input.e.zzz) | u_input.e.xxx, vec3<bool>(all(func_2(vec3<f32>(global2.a, -361f, 2132f), Struct_1(global2.d.x, arg_2, global2.c, global1.d)).b.c), true, true));
    return func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.a)) + global1.a)), _wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(var_0.c, Struct_3(var_0.a, 343f, var_0.c, vec3<u32>(0u, 1u, var_0.c.b.b.x), vec3<bool>(true, var_0.c.b.c.x, false)))))), -819f), var_0.c.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.x + _wgslsmith_f_op_f32(-global2.d.x))), global1.b.x, _wgslsmith_add_vec2_u32(u_input.e.xz, global1.b), global0[_wgslsmith_index_u32(30776u, 24u)] < _wgslsmith_f_op_f32(func_4(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-512f, global0[_wgslsmith_index_u32(4294967295u, 24u)], global2.d.x)), func_1(Struct_3(u_input.a.yyx, global0[_wgslsmith_index_u32(1u, 24u)], Struct_2(true, Struct_1(-481f, global1.b, global1.c, global2.d)), u_input.e.yxz, vec3<bool>(global1.c.x, true, global1.c.x)), global1.a)), Struct_3(u_input.a.zzz ^ u_input.a.yww, 922f, Struct_2(global1.c.x, Struct_1(global2.a, vec2<u32>(8708u, global3[_wgslsmith_index_u32(global1.b.x, 24u)]), vec2<bool>(true, true), vec2<f32>(1376f, global1.d.x))), u_input.e.wzw, !vec3<bool>(global1.c.x, true, false)))));
    let var_1 = false;
    var var_2 = Struct_1(432f, (global2.b | vec2<u32>(1u, abs(1u))) >> (~global2.b % vec2<u32>(32u)), !vec2<bool>(var_1, var_0.b.c.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1455f, -125f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(959f, -1226f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(36653u, 24u)]) - -761f), -527f), func_2(vec3<f32>(global0[_wgslsmith_index_u32(func_1(Struct_3(u_input.a.wyz, 2307f, var_0, u_input.e.xzx, vec3<bool>(global2.c.x, true, false)), var_0.b.d.x).b.x, 24u)], _wgslsmith_f_op_f32(global2.d.x * 423f), _wgslsmith_f_op_f32(global1.d.x * var_0.b.a)), var_0.b).b.c)));
    global0 = array<f32, 24>();
    global1 = Struct_1(162f, var_2.b, !vec2<bool>(!var_0.b.c.x | !var_1, global1.c.x), _wgslsmith_f_op_vec2_f32(global1.d + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-892f, 1000f))));
    let var_3 = var_0.b.b;
    var_2 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a))) - 1f), u_input.e.x, _wgslsmith_sub_vec2_u32(vec2<u32>(global2.b.x, 4294967295u), _wgslsmith_sub_vec2_u32(min(vec2<u32>(global1.b.x, 0u), vec2<u32>(global3[_wgslsmith_index_u32(0u, 24u)], 46462u)), _wgslsmith_add_vec2_u32(vec2<u32>(var_3.x, global2.b.x), var_0.b.b))) | (global1.b | var_3), global2.c.x).b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.wwz, firstLeadingBit(vec4<i32>(i32(-1i) * -1i, firstLeadingBit(u_input.a.x), u_input.d, _wgslsmith_div_i32(abs(u_input.d), u_input.d))), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_2.b.x | reverseBits(_wgslsmith_sub_u32(var_2.b.x, global2.b.x)), global2.b.x), 24u)], max(global1.b.x, 1u), _wgslsmith_f_op_vec2_f32(-var_2.d));
}

