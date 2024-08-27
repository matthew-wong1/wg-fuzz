struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_1, 30>;

var<private> global2: i32;

var<private> global3: vec3<bool> = vec3<bool>(true, false, true);

var<private> global4: vec4<bool>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec3<i32> {
    global4 = !select(select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(global3.x, arg_1.b.x, true, false), global4.x), vec4<bool>(global3.x, true, false, false), true), !vec4<bool>(global4.x, global3.x, false, true), !vec4<bool>(false, true, arg_0.b.x, false)), vec4<bool>(!all(arg_1.b), _wgslsmith_div_i32(arg_0.c.x, arg_0.c.x) > _wgslsmith_dot_vec2_i32(arg_3.c, arg_3.c), true & !arg_1.b.x, true), vec4<bool>(false, min(1u, u_input.b) <= ~arg_3.e, false, !any(vec4<bool>(true, arg_1.b.x, true, arg_3.b.x))));
    let var_0 = arg_3;
    global1 = array<Struct_1, 30>();
    return countOneBits(~(-_wgslsmith_sub_vec3_i32(min(vec3<i32>(1i, arg_2, -1i), vec3<i32>(arg_1.d, var_0.c.x, -2147483647i)), firstTrailingBit(vec3<i32>(var_0.d, arg_3.d, -11762i)))));
}

fn func_2() -> Struct_1 {
    global3 = vec3<bool>(global4.x, any(!global4.yxz) && false, any(global4.yxw));
    global1 = array<Struct_1, 30>();
    let var_0 = min(-func_3(Struct_1(-656f, select(global3.zz, vec2<bool>(global3.x, true), vec2<bool>(global3.x, false)), ~vec2<i32>(7321i, -1i), 52599i >> (u_input.b % 32u), 99615u), Struct_1(-474f, !global4.zz, _wgslsmith_add_vec2_i32(vec2<i32>(1i, -14626i), vec2<i32>(1i, -6851i)), _wgslsmith_sub_i32(-899i, 30269i), ~6297u), _wgslsmith_mod_i32(-2147483647i, 1i), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(41514u, u_input.a.x, 0u) & 1u, 30u)]), vec3<i32>(~min(11278i, -1i), _wgslsmith_div_i32(i32(-1i) * -1i, -(~(-17683i))), _wgslsmith_add_i32(abs(10621i), -(~0i))));
    let var_1 = 38407u;
    global0 = global4.x;
    return global1[_wgslsmith_index_u32(u_input.b ^ u_input.a.x, 30u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    global4 = select(vec4<bool>(!(!any(global4.wwz)), arg_0.b.x, false, all(!(!arg_0.b))), !select(select(!vec4<bool>(global3.x, arg_0.b.x, false, global3.x), vec4<bool>(false, arg_0.b.x, arg_0.b.x, global4.x), true), vec4<bool>(all(vec4<bool>(global3.x, global4.x, true, arg_1.b.x)), global3.x | global4.x, true, true), true), !(arg_1.a >= -1000f));
    var var_0 = global1[_wgslsmith_index_u32(~u_input.a.x, 30u)];
    let var_1 = var_0.b;
    global2 = -(~arg_1.d);
    return _wgslsmith_f_op_f32(-var_0.a) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.a), func_2().a)) * 161f);
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: u32) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(1u, 30u)];
    global4 = vec4<bool>(global4.x, any(!vec3<bool>(true, false, u_input.c == var_0.e)), true, func_4(func_2(), global1[_wgslsmith_index_u32(~(~112611u), 30u)]));
    global4 = select(select(select(!select(vec4<bool>(global4.x, false, true, false), vec4<bool>(var_0.b.x, var_0.b.x, false, global3.x), vec4<bool>(global4.x, var_0.b.x, false, false)), !(!vec4<bool>(var_0.b.x, global3.x, global3.x, true)), !select(vec4<bool>(global3.x, true, global4.x, global3.x), vec4<bool>(global4.x, false, global4.x, global4.x), global3.x)), !select(!vec4<bool>(global4.x, false, true, false), vec4<bool>(false, false, var_0.b.x, false), false), vec4<bool>((1u != u_input.b) != false, func_2().b.x, any(!vec3<bool>(false, global3.x, true)), global4.x)), vec4<bool>(!(!all(vec3<bool>(true, true, global3.x))), var_0.b.x, global4.x, false & ((8188u <= u_input.d) || all(vec3<bool>(false, global3.x, global3.x)))), select(vec4<bool>(true, var_0.b.x, true || (var_0.b.x || global3.x), false), !(!(!vec4<bool>(global4.x, global4.x, global4.x, var_0.b.x))), vec4<bool>(true, func_2().b.x, !global3.x, true)));
    let var_1 = _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(16232i, _wgslsmith_sub_i32(arg_1, firstTrailingBit(1i)), _wgslsmith_add_i32(-var_0.c.x, ~(-23892i)))), firstTrailingBit(arg_0 >> (reverseBits(~u_input.a) % vec3<u32>(32u))));
    global4 = vec4<bool>(!(~arg_2 != firstLeadingBit(29915u)), true, !all(!vec4<bool>(false, global3.x, var_0.b.x, var_0.b.x)), select(true, global3.x, true));
    return global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(31465u, ~(~var_0.e & _wgslsmith_div_u32(u_input.a.x, 1u))), 30u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2087f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1256f))), global4.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -460f)) + -726f)), global4.wx, vec2<i32>(-31359i, ~(-1i)), 2147483647i, u_input.d);
    global0 = false;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a));
    var var_2 = func_1(select(~reverseBits(vec3<i32>(-39009i, var_0.d, -43462i) & vec3<i32>(-2029i, -7906i, var_0.d)), vec3<i32>(var_0.d, var_0.d, var_0.d), global4.yzw), var_0.d, u_input.b);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(exp2(func_2().a)), global4.xx, max(~(-vec2<i32>(1i, 1i)), ~(~vec2<i32>(var_2.c.x, -2147483647i))), 2147483647i, ~u_input.a.x);
    global1 = array<Struct_1, 30>();
    global0 = var_0.b.x;
    var var_4 = vec4<u32>(var_2.e, firstLeadingBit(var_0.e), 1u, _wgslsmith_add_u32(var_2.e, _wgslsmith_add_u32(reverseBits(abs(29555u)), (1u ^ var_0.e) & 10367u)));
    var_4 = _wgslsmith_sub_vec4_u32(~select(vec4<u32>(_wgslsmith_add_u32(var_3.e, u_input.c), var_0.e, 66271u, ~var_2.e), ~vec4<u32>(1u, 1u, 17942u, var_2.e), vec4<bool>(var_3.b.x, false, var_0.b.x, false)), vec4<u32>(0u, 1u, 0u, ~_wgslsmith_div_u32(var_4.x ^ var_2.e, _wgslsmith_sub_u32(var_2.e, 13315u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, 572f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(435f, var_1)), _wgslsmith_f_op_f32(exp2(var_2.a)))), _wgslsmith_div_f32(-287f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3.a - 1151f), 353f))), var_2.a), ~max(u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(var_4.x, 1u, var_0.e), vec3<u32>(var_3.e, 1u, var_4.x) & vec3<u32>(u_input.a.x, 4294967295u, 1u))), _wgslsmith_div_i32(select(var_2.c.x, 1i, all(!global4.zxw)), firstTrailingBit(reverseBits(4527i))), _wgslsmith_add_u32(~(~1u), var_2.e), vec2<u32>(~max(var_3.e, 0u), var_2.e) ^ _wgslsmith_div_vec2_u32(vec2<u32>(var_2.e, 22030u), ~_wgslsmith_sub_vec2_u32(var_4.yy, vec2<u32>(1u, var_3.e))));
}

