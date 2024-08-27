struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-607f, 1989f, -1660f, -497f), vec4<bool>(true, true, false, true));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<bool> {
    global1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-2903f)), _wgslsmith_f_op_f32(max(global1.a.x, global1.a.x)), _wgslsmith_f_op_f32(global1.a.x - 1000f), global1.a.x) + global1.a), vec4<f32>(-529f, 1f, global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)))), vec4<bool>(true, false, false, global1.b.x));
    global1 = global0[_wgslsmith_index_u32(u_input.e, 21u)];
    global1 = Struct_1(global1.a, select(!(!vec4<bool>(global1.b.x, true, false, true)), !vec4<bool>(true, u_input.a.x >= u_input.a.x, global1.b.x, true), all(select(global1.b, !global1.b, !global1.b))));
    global0 = array<Struct_1, 21>();
    return select(!vec3<bool>(select(false, true, true), any(global1.b.yzz), !(global1.a.x >= global1.a.x)), global1.b.xyx, select(!(!global1.b.yzz), vec3<bool>(any(select(vec3<bool>(global1.b.x, true, true), global1.b.zyw, vec3<bool>(true, global1.b.x, false))), (25098i << (1u % 32u)) >= max(u_input.c.x, u_input.a.x), select(global1.b.x, global1.b.x && true, -21620i != u_input.c.x)), !(!any(vec2<bool>(false, true)))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>) -> u32 {
    var var_0 = ~u_input.a;
    var var_1 = 12968i;
    let var_2 = global0[_wgslsmith_index_u32(~(~arg_0 >> (firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(96137u, arg_0), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.e, 1u), u_input.b.xz))) % 32u)), 21u)];
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-arg_1.a), !vec4<bool>(true, !all(global1.b.yy), false == !var_2.b.x, false));
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(-arg_1.a.x), 969f, global1.a.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_3.a.x, var_3.a.x, arg_1.a.x, var_2.a.x))))))), !vec4<bool>(false, all(!vec4<bool>(true, false, true, var_2.b.x)), select(false, false, arg_2.x) | var_3.b.x, arg_2.x));
    return ~_wgslsmith_add_u32(~firstLeadingBit(arg_0), max(28174u, arg_0));
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: bool, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = !(!global1.b.yzx);
    global1 = global0[_wgslsmith_index_u32(~firstTrailingBit(abs(_wgslsmith_dot_vec2_u32(~u_input.b.wz, firstLeadingBit(vec2<u32>(u_input.b.x, arg_0.x))))), 21u)];
    let var_1 = global0[_wgslsmith_index_u32(~(~u_input.d), 21u)];
    let var_2 = func_4(~u_input.d, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(max(vec2<u32>(43212u, u_input.b.x), vec2<u32>(1u, u_input.b.x)), _wgslsmith_mod_vec2_u32(u_input.b.ww, arg_3.yx)), u_input.d), 21u)], func_3());
    var var_3 = abs(select(u_input.b.wz, vec2<u32>(1u, arg_3.x), global1.b.ww));
    return global0[_wgslsmith_index_u32(~(var_3.x >> (var_2 % 32u)), 21u)];
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global1 = arg_0;
    global1 = global0[_wgslsmith_index_u32(0u, 21u)];
    let var_0 = -u_input.c.x;
    let var_1 = vec4<i32>(var_0, -7802i, var_0, ~(_wgslsmith_dot_vec2_i32(~u_input.a.zx, u_input.c.xx) | max(-2287i ^ u_input.c.x, var_0)));
    var var_2 = _wgslsmith_f_op_f32(-global1.a.x);
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global1.a.x, _wgslsmith_f_op_f32(global1.a.x + arg_0.a.x), true)))), 202f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1482f + global1.a.x) + _wgslsmith_f_op_f32(-280f - global1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1757f - 438f) - _wgslsmith_div_f32(arg_0.a.x, arg_0.a.x)))), _wgslsmith_f_op_f32(abs(arg_0.a.x))), global1.b);
}

fn func_1(arg_0: vec4<i32>) -> i32 {
    global1 = func_5(func_2(countOneBits(vec3<u32>(u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, 4294967295u), ~u_input.b.x)), _wgslsmith_f_op_f32(sign(global1.a.x)), (max(-20233i, 0i) == _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), u_input.a.yy)) || all(vec4<bool>(true, true, global1.b.x, false)), u_input.b.yzx >> (~(~vec3<u32>(4294967295u, 0u, 27271u)) % vec3<u32>(32u))));
    var var_0 = global0[_wgslsmith_index_u32(~abs(0u), 21u)];
    var var_1 = true;
    global1 = global0[_wgslsmith_index_u32(15944u, 21u)];
    var var_2 = 816f;
    return max(u_input.c.x, firstTrailingBit(_wgslsmith_div_i32(~arg_0.x, _wgslsmith_mult_i32(firstTrailingBit(1i), ~arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1088f, -724f, 701f, 1877f))), global1.a)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a))), !global1.b);
    global0 = array<Struct_1, 21>();
    var var_0 = u_input.a.x;
    let var_1 = vec2<f32>(global1.a.x, _wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(-global1.a.x)));
    let var_2 = vec4<bool>(true, all(global1.b.zzz) || (any(vec2<bool>(global1.b.x, global1.b.x)) & false), !global1.b.x, !select(global1.b.x, func_1(vec4<i32>(57298i, u_input.c.x, u_input.c.x, u_input.c.x)) <= u_input.c.x, true));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -466f);
    let var_4 = reverseBits(-(~u_input.c));
    var var_5 = !(min(-19895i >> (firstTrailingBit(50215u) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(8296i, 15906i, u_input.c.x, 0i), vec4<i32>(var_4.x, 2147483647i, -2147483647i, var_4.x)) ^ abs(var_4.x)) < _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x & u_input.c.x, ~(-1i)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a.x), vec2<i32>(var_4.x, 1i)), -var_4.x)));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(~(~0u), func_5(func_2(~u_input.b.wwx, func_2(vec3<u32>(69174u, 47903u, 76174u), var_1.x, false, vec3<u32>(u_input.d, 77216u, 8358u)).a.x, var_1.x >= var_3, vec3<u32>(u_input.b.x, u_input.e, u_input.d))), global1.b.xxz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(360f, var_1.x, var_3) - global1.a.yyz) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, var_1.x, 1171f) + global1.a.wyx)))), ~_wgslsmith_add_vec4_i32(-(~vec4<i32>(u_input.c.x, 18025i, 16394i, u_input.a.x)), select(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, var_4.x, var_4.x, var_4.x), vec4<i32>(u_input.c.x, -7309i, var_4.x, u_input.a.x)), -vec4<i32>(var_4.x, 1i, var_4.x, 0i), vec4<bool>(true, false, global1.b.x, true))), vec3<i32>(_wgslsmith_add_i32(max(countOneBits(var_4.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.c.x, 2147483647i, 2914i), vec4<i32>(0i, -1i, 4155i, 46117i))), i32(-1i) * -27926i), (u_input.c.x & _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)) ^ 24087i, var_4.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3))));
}

