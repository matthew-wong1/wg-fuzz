struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: i32,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-673f, vec2<bool>(false, true), -30170i, vec4<f32>(1271f, 1044f, -608f, 164f), vec3<bool>(false, false, false));

var<private> global1: vec4<u32>;

var<private> global2: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(1i, 48064i, 2147483647i), vec3<i32>(41354i, 2147483647i, 1i), vec3<i32>(-99378i, 1i, 1i), vec3<i32>(2147483647i, -31784i, 1i), vec3<i32>(2147483647i, 77089i, 1i), vec3<i32>(-42652i, -20149i, 2147483647i), vec3<i32>(i32(-2147483648), -1i, 0i), vec3<i32>(-4741i, -17340i, -23358i), vec3<i32>(i32(-2147483648), 29425i, -46687i), vec3<i32>(0i, -7802i, 25424i), vec3<i32>(48839i, 11770i, 2147483647i), vec3<i32>(-3643i, 63504i, i32(-2147483648)), vec3<i32>(0i, -62212i, 5898i), vec3<i32>(-7201i, 4647i, -1i), vec3<i32>(-48735i, 17i, 14110i), vec3<i32>(-46325i, -5749i, i32(-2147483648)), vec3<i32>(2147483647i, -63184i, -41909i), vec3<i32>(-45622i, -1i, -8930i), vec3<i32>(53780i, 1i, i32(-2147483648)), vec3<i32>(2147483647i, 27455i, -15644i), vec3<i32>(i32(-2147483648), -14198i, 51233i), vec3<i32>(0i, -1i, 14478i));

var<private> global3: Struct_3 = Struct_3(vec4<i32>(1i, -35325i, i32(-2147483648), -18656i), Struct_1(vec3<f32>(-396f, 410f, 986f), vec4<u32>(4294967295u, 1u, 46191u, 11330u), vec3<bool>(false, false, true)), -1i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: u32) -> i32 {
    let var_0 = _wgslsmith_dot_vec4_i32(reverseBits(-_wgslsmith_sub_vec4_i32(vec4<i32>(global0.c, global0.c, 3080i, global0.c), global3.a)), global3.a);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-global0.a), global0.b, ~(-24586i ^ ~_wgslsmith_sub_i32(global0.c, -1i)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -606f) + _wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -823f)), -604f), -1559f, global3.b.a.x), select(global0.e, global0.e, global0.e.x));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(561f)));
    var var_3 = vec4<f32>(-1520f, _wgslsmith_f_op_f32(-var_2), var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 + 617f)));
    var var_4 = ~_wgslsmith_mod_i32(~(~global3.c ^ (-2070i >> (1u % 32u))), -30091i ^ var_0);
    return _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(global2[_wgslsmith_index_u32(~519u, 22u)], vec3<i32>(i32(-1i) * -1i, 1i, 1i)), min(vec3<i32>(67765i, 1i >> (1u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.c, 14282i, -26593i, -2147483647i), vec4<i32>(-2147483647i, var_0, global0.c, global3.c))), ~global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 47765u), 22u)])) ^ _wgslsmith_clamp_i32(~(i32(-1i) * -28286i), global3.c, var_1.c);
}

fn func_2(arg_0: vec4<bool>) -> vec4<bool> {
    var var_0 = select(~func_3(_wgslsmith_dot_vec2_u32(min(global3.b.b.wz, global1.zw), _wgslsmith_sub_vec2_u32(vec2<u32>(7459u, global3.b.b.x), vec2<u32>(1u, u_input.a))), min(4294967295u, u_input.a)), global3.a.x, false);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-1f), select(!global3.b.c.yx, global0.b, all(!(!vec4<bool>(arg_0.x, true, true, true)))), ~_wgslsmith_mult_i32(6734i, select(global0.c, func_3(4294967295u, global1.x), arg_0.x)), global0.d, !select(select(select(global0.e, global3.b.c, vec3<bool>(true, arg_0.x, global3.b.c.x)), !vec3<bool>(global0.b.x, global0.b.x, true), !global0.e), vec3<bool>(!global3.b.c.x, any(arg_0.zz), !global0.e.x), all(arg_0)));
    var var_2 = select(global3.b.c.yx, !global3.b.c.xx, var_1.b.x);
    let var_3 = reverseBits(global1.x) != 103242u;
    global0 = Struct_2(var_1.d.x, var_1.e.zy, global3.c << ((abs(~u_input.a) ^ global3.b.b.x) % 32u), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1205f - global0.d.x))), global3.b.a.x, _wgslsmith_f_op_f32(-global3.b.a.x), -104f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.d * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1035f, global0.a, var_1.a, -548f), vec4<f32>(1180f, global0.d.x, 182f, global3.b.a.x)))) + vec4<f32>(_wgslsmith_div_f32(global3.b.a.x, global3.b.a.x), -197f, _wgslsmith_f_op_f32(select(global3.b.a.x, global3.b.a.x, false)), _wgslsmith_div_f32(465f, 508f)))), vec3<bool>(_wgslsmith_f_op_f32(min(-1234f, _wgslsmith_f_op_f32(-var_1.a))) >= _wgslsmith_f_op_f32(global0.d.x + _wgslsmith_div_f32(474f, global0.d.x)), global1.x >= 0u, !all(vec4<bool>(true, false, var_2.x, true))));
    return vec4<bool>(!all(vec3<bool>(u_input.a >= global3.b.b.x, global3.b.c.x, false)), true, var_1.e.x, !var_3);
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_3, arg_3: Struct_1) -> Struct_1 {
    var var_0 = abs(~_wgslsmith_add_vec2_u32(~(~arg_2.b.b.zw), countOneBits(vec2<u32>(arg_3.b.x, u_input.a))));
    var var_1 = 338u;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3.b.a.x, _wgslsmith_f_op_f32(exp2(global0.a)), _wgslsmith_f_op_f32(floor(global3.b.a.x))), arg_2.b.a)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_2.b.a.x, -342f) + vec3<f32>(-882f, -1233f, global3.b.a.x)))), vec4<u32>(9805u, reverseBits(var_0.x | global1.x), ~1u, select(0u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_0.x, u_input.a), _wgslsmith_dot_vec3_u32(arg_2.b.b.wxy, global1.xzy)), !arg_1)), global0.e);
    let var_3 = arg_2;
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.a.x, arg_2.b.a.x, -1000f)), vec3<f32>(512f, -711f, global0.d.x), false)))) + vec3<f32>(_wgslsmith_f_op_f32(floor(-658f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-188f, arg_3.a.x)), 618f), _wgslsmith_f_op_f32(-global3.b.a.x))), _wgslsmith_mod_vec4_u32(~arg_2.b.b, _wgslsmith_clamp_vec4_u32(var_3.b.b, vec4<u32>(var_2.b.x, var_0.x, abs(var_0.x), arg_2.b.b.x), _wgslsmith_mult_vec4_u32(~var_3.b.b, _wgslsmith_mult_vec4_u32(vec4<u32>(24054u, 62440u, 4294967295u, 34293u), vec4<u32>(1u, var_3.b.b.x, var_0.x, var_0.x))))), !(!vec3<bool>(true, global0.b.x && var_2.c.x, select(false, global3.b.c.x, arg_2.b.c.x))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.a.x, -438f, 739f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-656f, -910f, var_4.a.x))))), arg_2.b.b, !select(var_2.c, select(select(vec3<bool>(false, true, false), vec3<bool>(false, arg_0, true), vec3<bool>(var_2.c.x, arg_3.c.x, arg_0)), global3.b.c, true), !var_3.b.c));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: Struct_3) -> Struct_2 {
    var var_0 = false;
    let var_1 = all(!select(!(!vec4<bool>(global3.b.c.x, false, arg_2.b.x, arg_3.b.c.x)), select(!vec4<bool>(global3.b.c.x, true, arg_0.c.x, true), !vec4<bool>(false, arg_3.b.c.x, arg_3.b.c.x, arg_3.b.c.x), vec4<bool>(false, false, arg_3.b.c.x, false)), global3.b.c.x));
    global2 = array<vec3<i32>, 22>();
    global1 = ~(~_wgslsmith_clamp_vec4_u32(~_wgslsmith_sub_vec4_u32(arg_0.b, vec4<u32>(u_input.a, 0u, u_input.a, arg_3.b.b.x)), arg_0.b, firstLeadingBit(firstLeadingBit(arg_0.b))));
    let var_2 = var_1;
    return Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -907f), vec2<bool>(true, true), max(max(arg_3.c, _wgslsmith_div_i32(countOneBits(arg_2.c), reverseBits(global0.c))), ~(-31856i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(arg_2.d))), global3.b.c);
}

fn func_6(arg_0: f32, arg_1: Struct_2) -> Struct_3 {
    var var_0 = vec3<bool>(func_5(func_4(any(global0.e), false, Struct_3(vec4<i32>(global3.a.x, 5031i, 49762i, 16674i), global3.b, reverseBits(global3.c)), global3.b), arg_1.d.zy, func_5(func_4(true, !arg_1.b.x, Struct_3(global3.a, Struct_1(vec3<f32>(arg_0, arg_0, global3.b.a.x), vec4<u32>(0u, global3.b.b.x, 10366u, 0u), arg_1.e), global0.c), global3.b), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, -1000f)), _wgslsmith_div_vec2_f32(vec2<f32>(-444f, global3.b.a.x), global3.b.a.zy), global0.b.x)), func_5(global3.b, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-171f, -1357f))), Struct_2(-799f, global0.b, arg_1.c, global0.d, vec3<bool>(arg_1.b.x, true, true)), Struct_3(vec4<i32>(global0.c, arg_1.c, arg_1.c, -2147483647i), global3.b, global0.c)), Struct_3(abs(vec4<i32>(global0.c, global3.a.x, global3.c, global0.c)), func_4(arg_1.e.x, true, Struct_3(vec4<i32>(2147483647i, -20147i, arg_1.c, arg_1.c), global3.b, global3.a.x), Struct_1(global0.d.xzx, global3.b.b, global3.b.c)), _wgslsmith_dot_vec3_i32(global3.a.xww, vec3<i32>(global0.c, 33734i, arg_1.c)))), Struct_3(vec4<i32>(-arg_1.c, global0.c, global0.c, 94411i), func_4(arg_1.b.x | true, true, Struct_3(global3.a, global3.b, global0.c), Struct_1(arg_1.d.xzz, vec4<u32>(global1.x, u_input.a, 55227u, global3.b.b.x), vec3<bool>(false, global3.b.c.x, true))), 1i)).b.x, all(select(vec3<bool>(global3.b.c.x, arg_1.b.x, arg_1.b.x), !vec3<bool>(global0.b.x, arg_1.b.x, true), !arg_1.e)) | false, _wgslsmith_mod_i32(55363i, -7267i) == countOneBits(max(select(-29943i, global3.a.x, global3.b.c.x), min(arg_1.c, global0.c))));
    let var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~countOneBits(vec3<i32>(global0.c, -150i, -78819i)), abs(global3.a.zzx)), -min(_wgslsmith_mod_vec3_i32(~vec3<i32>(arg_1.c, global3.a.x, -13691i), vec3<i32>(global3.a.x, global0.c, global3.c)), -(global2[_wgslsmith_index_u32(global1.x, 22u)] ^ global2[_wgslsmith_index_u32(4294967295u, 22u)])));
    var var_2 = 428f;
    let var_3 = var_0.x;
    global3 = Struct_3(-(vec4<i32>(i32(-1i) * -13973i, 33603i, ~17940i, 1i) & (_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.c, -11173i, var_1, -2147483647i), vec4<i32>(4961i, global3.c, var_1, arg_1.c)) & min(vec4<i32>(global0.c, 0i, global3.c, var_1), vec4<i32>(global3.c, var_1, global3.c, global0.c)))), func_4(any(!(!vec2<bool>(var_0.x, global3.b.c.x))), any(func_4(true, arg_1.e.x, Struct_3(global3.a, global3.b, global0.c), global3.b).c), Struct_3(~_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, arg_1.c, 38809i, -11109i), global3.a), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(133f, global0.d.x, global0.d.x)), reverseBits(global3.b.b), !arg_1.e), arg_1.c), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, arg_1.d.x, -786f)))), ~min(vec4<u32>(global1.x, global1.x, 34759u, global3.b.b.x), global3.b.b), !select(arg_1.e, vec3<bool>(arg_1.e.x, false, true), vec3<bool>(global3.b.c.x, global0.b.x, var_0.x)))), _wgslsmith_mod_i32(~(-global0.c), ~var_1) ^ var_1);
    return Struct_3(vec4<i32>(i32(-1i) * -15966i, 0i, _wgslsmith_sub_i32(arg_1.c | reverseBits(0i), func_3(global1.x << (global3.b.b.x % 32u), _wgslsmith_dot_vec3_u32(global3.b.b.www, vec3<u32>(4294967295u, u_input.a, 11729u)))), ~2147483647i), func_4(func_4(any(global0.e.yy) & global0.e.x, true, Struct_3(vec4<i32>(global0.c, global3.a.x, var_1, global0.c), func_4(false, false, Struct_3(vec4<i32>(arg_1.c, arg_1.c, var_1, global3.c), global3.b, -45903i), global3.b), -1i), global3.b).c.x, any(!vec2<bool>(var_0.x, global0.e.x)), Struct_3(~vec4<i32>(arg_1.c, 8295i, 9441i, var_1), func_4(false, 4294967295u >= u_input.a, Struct_3(global3.a, global3.b, global0.c), func_4(false, global0.e.x, Struct_3(global3.a, Struct_1(arg_1.d.zzw, vec4<u32>(u_input.a, global1.x, global1.x, 23431u), arg_1.e), 2147483647i), global3.b)), global3.c), func_4(!all(vec3<bool>(var_0.x, false, false)), !(!arg_1.b.x), Struct_3(vec4<i32>(var_1, var_1, arg_1.c, -32867i), global3.b, i32(-1i) * -2147483647i), func_4(any(arg_1.b), arg_1.b.x, Struct_3(vec4<i32>(2147483647i, arg_1.c, -21772i, 2147483647i), Struct_1(vec3<f32>(167f, 844f, global3.b.a.x), global3.b.b, global0.e), global0.c), global3.b))), -1i);
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: f32) -> Struct_1 {
    global3 = func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-467f - arg_1)))), func_5(func_4(all(func_2(vec4<bool>(true, false, global3.b.c.x, global3.b.c.x))), all(vec2<bool>(true, true)), Struct_3(vec4<i32>(0i, 1i, global0.c, -17189i), global3.b, min(global3.c, -15853i)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.a.x, -1008f, 1117f)), global3.b.b, vec3<bool>(true, global0.b.x, global0.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1838f, -1502f) - vec2<f32>(-1452f, -669f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(220f, 849f)))), Struct_2(232f, vec2<bool>(true, global0.e.x), global3.c, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(global0.d)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b.a.x, 1000f, arg_2, arg_2) * vec4<f32>(global0.a, -1000f, arg_1, global0.d.x)), vec4<bool>(global3.b.c.x, global0.b.x, true, true))), vec3<bool>(global3.b.b.x < 27723u, true, true)), Struct_3(firstTrailingBit(max(vec4<i32>(global0.c, global3.a.x, global0.c, global3.a.x), vec4<i32>(global3.c, 1805i, -2147483647i, -43421i))), func_4(-2147483647i == global0.c, true, Struct_3(global3.a, Struct_1(vec3<f32>(-243f, arg_1, arg_0), global3.b.b, vec3<bool>(true, false, global3.b.c.x)), global3.c), global3.b), -12747i)));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global0.d.zz)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(131f, 378f), global3.b.a.yz)) - vec2<f32>(-1593f, arg_0)))));
    global2 = array<vec3<i32>, 22>();
    global2 = array<vec3<i32>, 22>();
    let var_1 = global3.b;
    return func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(func_6(var_1.a.x, func_5(Struct_1(vec3<f32>(var_0.x, 219f, -292f), vec4<u32>(4294967295u, 1u, 32051u, global3.b.b.x), var_1.c), vec2<f32>(1627f, -580f), Struct_2(var_0.x, vec2<bool>(global3.b.c.x, global0.b.x), global0.c, global0.d, vec3<bool>(true, var_1.c.x, false)), Struct_3(vec4<i32>(global3.c, global3.a.x, 1i, -1819i), global3.b, -35408i))).b.a.x, global0.d.x, true))), func_5(global3.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-992f, -134f)), _wgslsmith_f_op_f32(-arg_0))), func_5(func_4(!global0.b.x, true, Struct_3(global3.a, global3.b, global3.a.x), global3.b), global0.d.xw, func_5(func_4(false, false, Struct_3(global3.a, global3.b, 1i), global3.b), _wgslsmith_f_op_vec2_f32(-global3.b.a.yx), Struct_2(582f, vec2<bool>(true, global0.b.x), global3.a.x, vec4<f32>(var_0.x, arg_2, var_0.x, 950f), vec3<bool>(global0.e.x, false, global3.b.c.x)), Struct_3(vec4<i32>(4485i, global3.c, global3.a.x, global3.c), Struct_1(vec3<f32>(-107f, -202f, global0.a), global3.b.b, vec3<bool>(global3.b.c.x, global0.b.x, global0.b.x)), 14628i)), Struct_3(global3.a, func_4(true, var_1.c.x, Struct_3(global3.a, Struct_1(vec3<f32>(268f, global0.d.x, -642f), global3.b.b, vec3<bool>(true, global0.e.x, global3.b.c.x)), global3.c), Struct_1(global3.b.a, vec4<u32>(var_1.b.x, 4294967295u, u_input.a, u_input.a), var_1.c)), 2147483647i)), Struct_3(_wgslsmith_sub_vec4_i32(abs(global3.a), min(global3.a, vec4<i32>(-3720i, global0.c, global0.c, global3.a.x))), global3.b, 0i))).b;
}

fn func_7(arg_0: Struct_1, arg_1: i32) -> Struct_2 {
    global0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.a.x - _wgslsmith_f_op_f32(f32(-1f) * -296f))) * -759f), !func_6(-440f, Struct_2(_wgslsmith_f_op_f32(arg_0.a.x + -199f), global0.e.yz, arg_1, _wgslsmith_f_op_vec4_f32(abs(global0.d)), vec3<bool>(global0.b.x, arg_0.c.x, false))).b.c.xy, ~(~_wgslsmith_sub_i32(firstTrailingBit(1i), -73894i)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(global0.d - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, global0.d.x, global0.d.x, 188f) + vec4<f32>(-520f, 804f, global0.d.x, -763f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.a, -365f, -1151f, -1166f), vec4<f32>(global0.d.x, global0.a, arg_0.a.x, arg_0.a.x)) - _wgslsmith_f_op_vec4_f32(abs(global0.d)))))), global3.b.c);
    let var_0 = all(func_2(vec4<bool>(false, global0.b.x, func_1(-357f, _wgslsmith_f_op_f32(1350f - -293f), global3.b.a.x).c.x, true)));
    let var_1 = -2147483647i;
    var var_2 = _wgslsmith_f_op_f32(-global0.a);
    let var_3 = ~vec2<u32>(u_input.a, 25257u);
    return func_5(func_4(global3.b.c.x, true, func_6(global0.a, Struct_2(_wgslsmith_f_op_f32(global3.b.a.x + global3.b.a.x), vec2<bool>(global3.b.c.x, global0.e.x), 0i, _wgslsmith_f_op_vec4_f32(-global0.d), func_1(1000f, global3.b.a.x, 763f).c)), func_6(_wgslsmith_div_f32(-436f, 406f), Struct_2(_wgslsmith_f_op_f32(global3.b.a.x + -858f), global0.b, firstTrailingBit(9007i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(802f, 1582f, global3.b.a.x, global3.b.a.x)), arg_0.c)).b), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-func_5(func_1(global0.d.x, 114f, global0.a), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1540f, -1021f))), func_5(arg_0, global3.b.a.zy, Struct_2(global0.d.x, global0.e.zx, -10392i, global0.d, arg_0.c), Struct_3(global3.a, Struct_1(global3.b.a, arg_0.b, vec3<bool>(global3.b.c.x, global3.b.c.x, var_0)), arg_1)), Struct_3(vec4<i32>(-49950i, arg_1, 0i, var_1), Struct_1(vec3<f32>(arg_0.a.x, -786f, global0.a), vec4<u32>(global1.x, global1.x, u_input.a, var_3.x), vec3<bool>(global0.e.x, false, false)), var_1)).d.wy))), func_5(Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_0.a))), ~firstTrailingBit(vec4<u32>(u_input.a, 1u, global1.x, 4294967295u)), vec3<bool>(!global0.b.x, global0.e.x, arg_0.a.x <= -300f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1146f)) - arg_0.a.xz), Struct_2(_wgslsmith_f_op_f32(step(1032f, -155f)), global3.b.c.zy, abs(arg_1 << (1u % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-209f, -551f, 748f, arg_0.a.x)) - vec4<f32>(-617f, -1411f, arg_0.a.x, global3.b.a.x)), func_2(!vec4<bool>(true, var_0, false, global0.e.x)).yzy), Struct_3(global3.a, Struct_1(_wgslsmith_f_op_vec3_f32(global0.d.zzy - arg_0.a), ~arg_0.b, arg_0.c), ~(-arg_1))), func_6(_wgslsmith_f_op_f32(global0.d.x - _wgslsmith_f_op_f32(f32(-1f) * -1396f)), func_5(global3.b, vec2<f32>(1f, global3.b.a.x), Struct_2(-1000f, !global0.b, _wgslsmith_mult_i32(arg_1, 2147483647i), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, 434f, arg_0.a.x, global3.b.a.x))), vec3<bool>(false, false, false)), func_6(_wgslsmith_f_op_f32(step(global3.b.a.x, global3.b.a.x)), func_5(arg_0, vec2<f32>(1178f, global0.d.x), Struct_2(-422f, vec2<bool>(global0.b.x, arg_0.c.x), global0.c, vec4<f32>(arg_0.a.x, global0.a, arg_0.a.x, 180f), global0.e), Struct_3(global3.a, Struct_1(global3.b.a, arg_0.b, vec3<bool>(global3.b.c.x, global3.b.c.x, arg_0.c.x)), arg_1))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -194f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_div_f32(-1461f, 846f)))), global0.a, -985f), ~(-(~global3.a.x ^ (-29268i ^ global3.c))));
    global2 = array<vec3<i32>, 22>();
    let var_1 = vec2<i32>(countOneBits(func_7(func_1(_wgslsmith_div_f32(-405f, global0.d.x), _wgslsmith_f_op_f32(993f * global3.b.a.x), _wgslsmith_f_op_f32(var_0.d.x + -1090f)), global3.c).c), i32(-1i) * -1i);
    let var_2 = _wgslsmith_f_op_f32(-var_0.d.x);
    var var_3 = global1.wzw;
    var var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global3.b.a.x * -650f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.d.xz, global3.b.b, var_0.d.yw, _wgslsmith_f_op_f32(min(1048f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1057f)), -499f, true)), -1287f))), global3.b.b.xz);
}

