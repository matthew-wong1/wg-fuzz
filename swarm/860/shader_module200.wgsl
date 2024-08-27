struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21>;

var<private> global1: f32;

var<private> global2: Struct_1 = Struct_1(1540f, vec4<u32>(0u, 0u, 1u, 0u), vec4<u32>(33759u, 1u, 9145u, 4105u));

var<private> global3: array<vec2<i32>, 17>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec4<bool>) -> i32 {
    var var_0 = arg_2;
    global2 = Struct_1(_wgslsmith_div_f32(global2.a, 203f), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0, 1u, 3690u, global0[_wgslsmith_index_u32(82186u, 21u)]), ~countOneBits(vec4<u32>(96967u, 1u, arg_0, 0u))), global2.c);
    global1 = global2.a;
    let var_1 = arg_1;
    global2 = Struct_1(_wgslsmith_div_f32(-2292f, global2.a), vec4<u32>(~4294967295u, 0u, abs(~global2.c.x), ~23245u), vec4<u32>(~global0[_wgslsmith_index_u32(arg_0, 21u)], global2.c.x, global2.b.x, ~4294967295u));
    return 1i;
}

fn func_4(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-188f, _wgslsmith_f_op_f32(global2.a - _wgslsmith_f_op_f32(f32(-1f) * -246f)), -1000f, global2.a) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1389f, global2.a, global2.a, -476f), vec4<f32>(711f, -1000f, global2.a, global2.a), vec4<bool>(arg_0.b.x, true, arg_0.a, false))), vec4<f32>(1190f, 824f, global2.a, -894f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, global2.a, global2.a, -395f)))))));
    global3 = array<vec2<i32>, 17>();
    let var_1 = _wgslsmith_add_i32(-2147483647i, abs(select(reverseBits(u_input.a) | ~(-24952i), abs(-42003i), select(true, arg_0.b.x, arg_0.b.x != arg_0.a))));
    var var_2 = arg_0;
    let var_3 = any(!(!(!var_2.b.wyz)));
    return !vec3<bool>(var_3, true, !var_3 & true);
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = select(vec3<bool>(!any(arg_0.b.yxy), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.a)) * _wgslsmith_f_op_f32(min(-2005f, -729f))) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.a)))), vec3<bool>(true, false, true), !arg_0.b.zzy);
    global3 = array<vec2<i32>, 17>();
    let var_1 = select(vec3<bool>(all(vec3<bool>(var_0.x, false, true)) == all(arg_0.b.wzz), select(true, true, any(vec3<bool>(true, true, true))), arg_0.a), func_4(Struct_2(arg_0.b.x, !select(vec4<bool>(true, arg_0.b.x, var_0.x, var_0.x), arg_0.b, vec4<bool>(true, arg_1, arg_0.b.x, false)), abs(func_3(4294967295u, Struct_2(true, vec4<bool>(true, false, true, var_0.x), arg_0.c), arg_0.b)))), func_4(arg_0));
    global2 = arg_2;
    let var_2 = Struct_2(var_1.x, arg_0.b, firstTrailingBit(u_input.a));
    return arg_2;
}

fn func_5(arg_0: Struct_1) -> bool {
    let var_0 = Struct_2(true, vec4<bool>(func_4(Struct_2(func_4(Struct_2(false, vec4<bool>(false, false, false, false), u_input.a)).x, select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), false), func_3(global2.c.x, Struct_2(true, vec4<bool>(false, true, false, true), -16776i), vec4<bool>(false, false, false, true)))).x, all(func_4(Struct_2(false, vec4<bool>(false, false, false, false), u_input.a))), true, true), select(-1i, -50459i, !select(global2.c.x == 4294967295u, true, true)));
    let var_1 = abs(_wgslsmith_add_vec2_i32(global3[_wgslsmith_index_u32(~(~global2.b.x), 17u)], ~vec2<i32>(_wgslsmith_mult_i32(-2147483647i, var_0.c), u_input.a)));
    var var_2 = var_0;
    global0 = array<u32, 21>();
    var var_3 = arg_0.c;
    return true;
}

fn func_1() -> Struct_1 {
    global0 = array<u32, 21>();
    let var_0 = Struct_2(func_5(func_2(Struct_2(true, vec4<bool>(true, true, true, true), u_input.a), global2.a < _wgslsmith_f_op_f32(global2.a * global2.a), Struct_1(global2.a, global2.c, firstTrailingBit(vec4<u32>(global2.c.x, global0[_wgslsmith_index_u32(0u, 21u)], global2.b.x, global0[_wgslsmith_index_u32(1u, 21u)]))))), !select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), 1i);
    let var_1 = var_0;
    global3 = array<vec2<i32>, 17>();
    var var_2 = func_2(var_1, any(select(!func_4(Struct_2(var_0.b.x, var_1.b, u_input.a)), vec3<bool>(true, var_1.a & false, var_0.b.x), true)), Struct_1(_wgslsmith_f_op_f32(max(global2.a, _wgslsmith_f_op_f32(global2.a - -479f))), ~(~_wgslsmith_sub_vec4_u32(global2.c, global2.b)), vec4<u32>(global2.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~75896u, 21u)], 21u)], _wgslsmith_add_u32(reverseBits(1u), 28965u), reverseBits(global0[_wgslsmith_index_u32(select(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.b.x, 21u)], 21u)], 21u)], 21u)], var_0.b.x), 21u)]))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-var_2.a)), global2.a, var_0.a))), vec4<u32>(~1u, 4306u, ~(~var_2.b.x), ~(~global2.b.x) ^ 15965u), firstTrailingBit(vec4<u32>(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(var_2.c.x, 21u)], global2.b.x), max(38006u, _wgslsmith_div_u32(var_2.c.x, var_2.c.x)), ~countOneBits(1u), global2.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(false, (u_input.a << (global2.c.x % 32u)) > 0i, ~u_input.a != -28879i, true);
    var var_1 = global2.c.xzx;
    let var_2 = global2.a;
    let var_3 = ~19968i << (~global2.b.x % 32u);
    var var_4 = global2.b.zxx;
    global0 = array<u32, 21>();
    let var_5 = func_1();
    var var_6 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_5.a, global2.a)))))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global2.a, global2.a), vec2<f32>(global2.a, 1021f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2177f, -122f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(2958f, 627f), vec2<f32>(global2.a, -513f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-926f, -220f) * vec2<f32>(var_5.a, var_5.a))))));
    var var_7 = Struct_2(true, select(vec4<bool>(true, all(vec3<bool>(var_0.x, false, var_0.x)), var_0.x, var_0.x), select(vec4<bool>(true, false, false, true), !(!vec4<bool>(false, false, var_0.x, var_0.x)), var_0.x), !(!(!var_0.x))), ~8768i);
    let x = u_input.a;
    s_output = StorageBuffer(var_7.c, _wgslsmith_sub_i32(u_input.a, var_7.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_6.x), 1000f, _wgslsmith_f_op_f32(global2.a * var_6.x)))), _wgslsmith_f_op_f32(sign(1187f)), vec3<i32>(-1i) * -vec3<i32>(-2147483647i | var_7.c, _wgslsmith_dot_vec3_i32(vec3<i32>(var_7.c, var_3, var_3), vec3<i32>(0i, -3740i, var_3)), i32(-1i) * -2147483647i));
}

