struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30>;

var<private> global1: vec2<f32> = vec2<f32>(648f, -991f);

var<private> global2: Struct_1;

var<private> global3: i32;

var<private> global4: array<Struct_1, 16>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: vec4<f32>, arg_3: f32) -> vec4<f32> {
    var var_0 = global4[_wgslsmith_index_u32(u_input.e.x, 16u)];
    var var_1 = 2147483647i;
    let var_2 = false;
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_2.zw, _wgslsmith_f_op_vec2_f32(step(arg_2.ww, vec2<f32>(1593f, arg_3))), var_2))))));
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(383f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, global1.x)))), vec2<f32>(1f, 1f));
    return vec4<f32>(-751f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + 1539f) + -239f) * -1000f) * -1770f), -509f, _wgslsmith_f_op_f32(-241f * _wgslsmith_f_op_f32(f32(-1f) * -496f)));
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: vec4<f32>) -> vec2<bool> {
    let var_0 = Struct_1(vec4<i32>(arg_0 ^ ~firstTrailingBit(arg_0), arg_0, arg_0, global2.b), min(~(firstTrailingBit(u_input.a) << (~4821u % 32u)), -8685i), ~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(abs(global2.a.yx), vec2<i32>(global2.c, u_input.a)), -1i));
    let var_1 = var_0;
    let var_2 = 0u;
    let var_3 = Struct_1(vec4<i32>(-abs(u_input.a), global2.c, 17801i, firstTrailingBit(~_wgslsmith_mult_i32(-2147483647i, var_0.a.x))), -10290i, 11830i);
    var var_4 = Struct_1(var_0.a, ~(-max(arg_0 | var_1.a.x, -16616i)), ~(-global2.c));
    return select(select(vec2<bool>(select(all(vec2<bool>(false, true)), false, true), global0[_wgslsmith_index_u32(~57001u, 30u)] > var_2), select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), !all(vec4<bool>(true, false, false, false))), arg_2.x > arg_1.x), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, !(78589u > u_input.e.x))), !vec2<bool>(true, !all(vec2<bool>(false, true))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(abs(global1.x));
    let var_1 = reverseBits(~5442u);
    global4 = array<Struct_1, 16>();
    var var_2 = Struct_1(~vec4<i32>(~u_input.a ^ min(-2147483647i, u_input.a), _wgslsmith_clamp_i32(reverseBits(u_input.b), i32(-1i) * -2147483647i, reverseBits(u_input.a)), global2.c, u_input.b), global2.b, -2147483647i ^ -(21965i ^ -u_input.b));
    let var_3 = func_4(-_wgslsmith_mult_i32((var_2.c << (var_1 % 32u)) >> (_wgslsmith_clamp_u32(0u, var_1, 42446u) % 32u), u_input.b), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-447f, 568f, global1.x, 1873f) * vec4<f32>(-205f, -273f, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(func_3(vec3<i32>(var_2.a.x, u_input.b, var_2.b), global2.b, vec4<f32>(global1.x, 247f, -1000f, 282f), global1.x)))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + 2146f)), -1001f, -375f))));
    return global4[_wgslsmith_index_u32(0u, 16u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> i32 {
    return abs(~arg_1.c.x);
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> f32 {
    global3 = _wgslsmith_add_i32(21355i, -46413i);
    global1 = arg_1.b.zx;
    var var_0 = arg_1;
    global3 = func_5(func_2(), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1428f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 106f, arg_1.a))))), vec2<i32>(_wgslsmith_div_i32(~var_0.c.x, -56880i), ~u_input.b)), arg_1, _wgslsmith_f_op_vec4_f32(func_3(global2.a.xyx, ~arg_1.c.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1655f, -1269f, global1.x, global1.x)))) * vec4<f32>(_wgslsmith_f_op_f32(-global1.x), 195f, 1000f, global1.x)), var_0.b.x)).x);
    var_0 = Struct_2(-1635f, arg_1.b, vec2<i32>(-_wgslsmith_clamp_i32(-global2.c, 30196i << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 30u)], 30u)] % 32u), 0i), 27609i & -func_5(Struct_1(vec4<i32>(32323i, global2.c, -1i, 2147483647i), -39322i, arg_1.c.x), Struct_2(global1.x, vec3<f32>(312f, 553f, var_0.a), global2.a.wy), arg_1, global1.x)));
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(4294967295u, Struct_2(_wgslsmith_f_op_f32(ceil(735f)), vec3<f32>(global1.x, -1374f, global1.x), global2.a.xx)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-301f)))) + 479f), 262f);
    let var_1 = !all(vec4<bool>(true, false, true, !all(vec3<bool>(false, false, false))));
    var var_2 = select(select(vec4<bool>(true, false, func_4(_wgslsmith_sub_i32(u_input.b, u_input.b), vec4<f32>(global1.x, global1.x, 271f, 2485f), var_0).x, true), vec4<bool>(!any(vec4<bool>(var_1, var_1, false, var_1)), var_1, all(select(vec3<bool>(var_1, var_1, true), vec3<bool>(var_1, var_1, var_1), var_1)), all(vec3<bool>(var_1, false, true))), vec4<bool>(true, var_1, true, true)), vec4<bool>(any(select(!vec3<bool>(false, var_1, var_1), select(vec3<bool>(true, true, true), vec3<bool>(var_1, var_1, true), vec3<bool>(var_1, var_1, false)), select(vec3<bool>(var_1, true, false), vec3<bool>(false, false, var_1), vec3<bool>(var_1, var_1, var_1)))), !var_1, true, !(~global0[_wgslsmith_index_u32(0u, 30u)] == (u_input.d.x << (49666u % 32u)))), vec4<bool>(!(_wgslsmith_dot_vec3_i32(global2.a.wzz, global2.a.yzw) == ~u_input.a), !((0u << (u_input.e.x % 32u)) < _wgslsmith_mod_u32(71683u, 5659u)), all(vec2<bool>(true, var_1)), true));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(trunc(global1.x)), var_0.xwy, vec2<i32>(~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.b, u_input.b, 1i)), vec3<i32>(14615i, global2.b, global2.a.x)), min(1i, u_input.b)));
    var var_4 = -u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(~(-_wgslsmith_dot_vec3_i32(vec3<i32>(35199i, 2147483647i, var_3.c.x), global2.a.wyy)), ~var_3.c.x, -31613i), ~global2.a.xy, func_5(func_2(), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-292f * 1043f) * var_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-339f, -388f, global1.x) - var_3.b)), var_3.c), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -280f), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec3_f32(step(var_3.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(-295f, global1.x, var_3.a) - var_0.yzy))), vec2<i32>(_wgslsmith_mult_i32(-919i, global2.b), select(var_3.c.x, -10977i, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec4_f32(func_3(vec3<i32>(var_3.c.x, 15218i, -20963i), -18378i, vec4<f32>(840f, -506f, var_3.b.x, 341f), var_3.b.x)).x)) * _wgslsmith_f_op_f32(f32(-1f) * -1038f))), select(vec2<u32>(u_input.e.x, reverseBits(1u)), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), vec2<u32>(3176u, global0[_wgslsmith_index_u32(4294967295u, 30u)])), ~u_input.c) & u_input.c, true));
}

