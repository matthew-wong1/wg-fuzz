struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec2<i32>(-3287i, i32(-2147483648)), 6557i, vec2<i32>(-1i, -4795i)), Struct_1(vec2<i32>(2147483647i, -42663i), -15952i, vec2<i32>(2147483647i, -48546i)), Struct_1(vec2<i32>(35751i, 1i), 1i, vec2<i32>(0i, -1i)), Struct_1(vec2<i32>(-7122i, -33385i), 3496i, vec2<i32>(1i, i32(-2147483648))), Struct_1(vec2<i32>(-1i, -6319i), -10836i, vec2<i32>(2147483647i, 0i)), Struct_1(vec2<i32>(17993i, 67105i), -19405i, vec2<i32>(0i, -19887i)), Struct_1(vec2<i32>(-104i, -18956i), 88533i, vec2<i32>(43185i, -18172i)), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), 5337i, vec2<i32>(-8361i, 44148i)), Struct_1(vec2<i32>(1i, -3948i), -1i, vec2<i32>(60898i, 0i)), Struct_1(vec2<i32>(2147483647i, -99042i), -1i, vec2<i32>(15904i, -14797i)));

var<private> global1: vec2<f32>;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 21>;

var<private> global4: array<bool, 22> = array<bool, 22>(true, false, false, true, false, true, true, false, true, true, true, false, false, true, false, false, true, true, true, false, false, false);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec4<bool>) -> u32 {
    var var_0 = Struct_1(global2.c, ~_wgslsmith_add_i32(~(~arg_0.c.x), -u_input.a), firstLeadingBit(arg_2.a));
    var var_1 = Struct_1(countOneBits(arg_0.a), 32061i, arg_2.a);
    global2 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(42900u, firstTrailingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 10271u, 58619u), u_input.b))), abs(~1u)), 21u)];
    let var_2 = !(!select(true, global4[_wgslsmith_index_u32(1u, 22u)], true));
    global3 = array<Struct_1, 21>();
    return 0u;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> bool {
    var var_0 = max(vec3<u32>(u_input.b.x, 33573u, ~(~(~u_input.b.x))), ~firstLeadingBit(~(~u_input.b.zxy)));
    var var_1 = 102789u;
    let var_2 = var_0.x;
    let var_3 = abs(u_input.c);
    let var_4 = Struct_1(-vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.x, global2.c.x, var_3.x), vec3<i32>(-16834i, 20751i, 0i)), -(~(-20723i))), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.b, arg_1.a.x, -_wgslsmith_add_i32(-2147483647i, arg_1.c.x)), ~vec3<i32>(_wgslsmith_add_i32(global2.b, u_input.c.x), ~arg_3.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -20226i, -22906i, arg_1.b), u_input.c))), u_input.c.wz);
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = !(!select(vec4<bool>(false, true, select(true, false, global4[_wgslsmith_index_u32(u_input.b.x, 22u)]), global4[_wgslsmith_index_u32(countOneBits(0u), 22u)]), vec4<bool>(func_3(global4[_wgslsmith_index_u32(0u, 22u)], arg_2, vec3<f32>(1138f, -102f, -711f), arg_0), false != global4[_wgslsmith_index_u32(arg_1, 22u)], -538f <= global1.x, global2.b != u_input.a), func_3(true, arg_2, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 309f, -137f)), global3[_wgslsmith_index_u32(~33970u, 21u)])));
    let var_1 = arg_0;
    var var_2 = global3[_wgslsmith_index_u32(func_1(arg_0, vec3<bool>(false, false, (1u != ~arg_1) == (_wgslsmith_f_op_f32(-global1.x) < _wgslsmith_f_op_f32(global1.x + global1.x))), Struct_1(firstLeadingBit(~min(arg_0.a, var_1.a)), 0i, abs(~vec2<i32>(0i, 0i))), !select(select(!vec4<bool>(true, var_0.x, global4[_wgslsmith_index_u32(arg_1, 22u)], var_0.x), vec4<bool>(false, true, var_0.x, true), false), vec4<bool>(!var_0.x, global4[_wgslsmith_index_u32(arg_1, 22u)], var_0.x & global4[_wgslsmith_index_u32(0u, 22u)], any(vec3<bool>(var_0.x, var_0.x, var_0.x))), u_input.c.x < ~(-12092i))), 21u)];
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - global1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x - global1.x), _wgslsmith_f_op_f32(trunc(global1.x)))))));
    var var_4 = reverseBits(u_input.b.xyy);
    return vec3<bool>(true, true, false);
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(min(15638u, _wgslsmith_sub_u32(~u_input.b.x ^ u_input.b.x, u_input.b.x) & min(76333u, select(~29818u, 18872u, true))), 21u)];
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global1.x + global1.x), 1011f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1915f, -1684f), vec2<f32>(833f, global1.x)) + vec2<f32>(global1.x, 484f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1812f, 1000f) + vec2<f32>(global1.x, global1.x)) - _wgslsmith_div_vec2_f32(vec2<f32>(global1.x, global1.x), vec2<f32>(-600f, 1400f)))))));
    var var_1 = Struct_1(abs(var_0.c) & ~vec2<i32>(var_0.c.x, firstTrailingBit(global2.a.x)), _wgslsmith_mult_i32(abs(~(-1891i)), ~global2.a.x), global2.a);
    global1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(global1.x)), -688f);
    var_0 = arg_2;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(356f, _wgslsmith_f_op_f32(-1209f + global1.x)) + _wgslsmith_div_vec2_f32(vec2<f32>(global1.x, global1.x), vec2<f32>(-156f, global1.x))))));
    global0 = array<Struct_1, 10>();
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(939f)), _wgslsmith_f_op_f32(global1.x - global1.x))), -1178f)));
    global2 = Struct_1(vec2<i32>(-_wgslsmith_mod_i32(-16124i, _wgslsmith_dot_vec2_i32(u_input.c.wx, vec2<i32>(global2.b, 0i))), ~(-u_input.d)), global2.a.x, u_input.c.xz);
    var var_0 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(u_input.a, u_input.c.x, global2.b, 0i)), ~global2.a.x), -2147483647i) | u_input.c.x, global2.c.x, -max(u_input.d, -32515i));
    var var_1 = _wgslsmith_sub_vec2_i32(-_wgslsmith_clamp_vec2_i32(-vec2<i32>(2147483647i, 1i) << ((vec2<u32>(u_input.b.x, 0u) | u_input.b.xz) % vec2<u32>(32u)), u_input.c.zw, vec2<i32>(2147483647i, ~u_input.a)), _wgslsmith_mult_vec2_i32(-firstTrailingBit(global2.a), max(abs(var_0.yz) & -vec2<i32>(var_0.x, global2.b), u_input.c.xy)));
    global2 = func_4(all(vec4<bool>(global4[_wgslsmith_index_u32(func_1(Struct_1(global2.c, -2147483647i, u_input.c.ww), vec3<bool>(true, false, global4[_wgslsmith_index_u32(u_input.b.x, 22u)]), global3[_wgslsmith_index_u32(0u, 21u)], vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.b.x, 22u)], false, global4[_wgslsmith_index_u32(4294967295u, 22u)])) ^ 4294967295u, 22u)], true, !(var_1.x > global2.c.x), any(func_2(Struct_1(vec2<i32>(var_0.x, u_input.c.x), 3306i, var_0.xz), 10217u, global0[_wgslsmith_index_u32(71588u, 10u)])))), reverseBits(u_input.d | firstTrailingBit(abs(u_input.a))), global3[_wgslsmith_index_u32(firstTrailingBit(12602u), 21u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~2147483647i, countOneBits(_wgslsmith_mult_vec2_i32(u_input.c.zx, firstTrailingBit(global2.c)) ^ -select(global2.c, vec2<i32>(var_0.x, global2.c.x), vec2<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 22u)], true))), global2.a);
}

