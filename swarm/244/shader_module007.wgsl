struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
    d: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 0u);

var<private> global1: vec4<i32>;

var<private> global2: vec4<bool> = vec4<bool>(true, true, true, false);

var<private> global3: Struct_1 = Struct_1(vec3<bool>(true, true, true), vec4<f32>(-542f, -719f, -2730f, 253f));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_5, arg_3: vec4<f32>) -> vec4<i32> {
    global0 = vec2<u32>(_wgslsmith_mult_u32(u_input.a, 0u), global0.x);
    var var_0 = Struct_1(select(!select(arg_0.a, select(global2.xyz, vec3<bool>(arg_0.a.x, true, true), arg_0.a.x), -1i != global1.x), global3.a, vec3<bool>(global3.a.x, false, all(select(vec4<bool>(true, global2.x, true, global3.a.x), vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, true), true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.b.x, -1685f, _wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(arg_0.b.x - -1000f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global3.b + arg_0.b), arg_3))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_3 + vec4<f32>(1511f, 707f, global3.b.x, -1788f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.b.x, global3.b.x, 744f, -983f))) - vec4<f32>(arg_3.x, 1151f, arg_0.b.x, arg_0.b.x)))));
    var var_1 = ~(~abs(vec4<u32>(1u, ~u_input.a, u_input.a, _wgslsmith_mod_u32(u_input.a, u_input.a))));
    var var_2 = ~(select(~(~vec4<u32>(0u, var_1.x, var_1.x, 0u)), min(_wgslsmith_sub_vec4_u32(vec4<u32>(66891u, var_1.x, 0u, u_input.a), vec4<u32>(var_1.x, global0.x, global0.x, 75027u)), ~vec4<u32>(var_1.x, var_1.x, 49869u, u_input.a)), true) >> (_wgslsmith_add_vec4_u32(~(~vec4<u32>(var_1.x, 0u, 80651u, global0.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, u_input.a, 0u, 0u), reverseBits(vec4<u32>(var_1.x, 4373u, global0.x, var_1.x)))) % vec4<u32>(32u)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.x) + _wgslsmith_div_f32(493f, _wgslsmith_f_op_f32(-arg_3.x)));
    return abs(select(firstTrailingBit(-vec4<i32>(global1.x, -54732i, global1.x, arg_2.a.x)), ~vec4<i32>(_wgslsmith_clamp_i32(-21042i, global1.x, -2147483647i), reverseBits(39783i), global1.x, countOneBits(-1i)), select(select(vec4<bool>(true, true, true, false), !vec4<bool>(var_0.a.x, global3.a.x, true, true), !vec4<bool>(arg_0.a.x, true, true, global2.x)), vec4<bool>(true, all(vec2<bool>(true, true)), global2.x, global2.x), true)));
}

fn func_2(arg_0: i32) -> f32 {
    let var_0 = global2.xzx;
    global1 = ~(func_3(Struct_1(global2.xww, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, 826f, 1772f, global3.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global3.b.yyy, vec3<f32>(global3.b.x, 1222f, -911f))), Struct_5(-global1.wzw), vec4<f32>(253f, -624f, _wgslsmith_f_op_f32(min(-1593f, global3.b.x)), -103f)) << ((~firstLeadingBit(vec4<u32>(u_input.a, u_input.a, 4294967295u, 4294967295u)) >> (~(~vec4<u32>(4294967295u, global0.x, 1u, global0.x)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global1 = ~_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(22628i, arg_0, 57120i, global1.x), -vec4<i32>(-1i, global1.x, -7361i, 1i)), ~(vec4<i32>(arg_0, arg_0, arg_0, -2147483647i) << (vec4<u32>(0u, 4294967295u, global0.x, u_input.a) % vec4<u32>(32u)))) & min(-firstLeadingBit(vec4<i32>(arg_0, global1.x, arg_0, arg_0)), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.x, 1122i, global1.x, -2147483647i), -vec4<i32>(arg_0, 792i, arg_0, -57067i)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(2147483647i, global1.x, arg_0, arg_0), vec4<i32>(arg_0, -47375i, global1.x, 1i), -vec4<i32>(arg_0, 48625i, -29434i, 0i))));
    global0 = min(firstLeadingBit(~(_wgslsmith_div_vec2_u32(vec2<u32>(global0.x, u_input.a), vec2<u32>(4294967295u, global0.x)) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(30763u, global0.x), vec2<u32>(4294967295u, u_input.a), vec2<u32>(global0.x, u_input.a)) % vec2<u32>(32u)))), vec2<u32>(4245u, ~global0.x));
    let var_1 = global3.b.xzx;
    return 1f;
}

fn func_4(arg_0: f32, arg_1: i32) -> Struct_1 {
    var var_0 = vec4<bool>(global3.a.x, global2.x, select(true, false, true), global3.a.x);
    global3 = Struct_1(!(!(!(!vec3<bool>(true, global3.a.x, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_div_f32(global3.b.x, global3.b.x), _wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(2211f + -895f)) + vec4<f32>(_wgslsmith_f_op_f32(arg_0 - -788f), -701f, 1465f, _wgslsmith_f_op_f32(abs(-397f))))));
    let var_1 = 606f;
    let var_2 = Struct_4(Struct_3(~_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, global0.x), vec2<u32>(global0.x, 4294967295u)), vec4<f32>(-237f, _wgslsmith_f_op_f32(global3.b.x * -914f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(-var_1)), global3.b.x), Struct_1(!(!vec3<bool>(true, global2.x, var_0.x)), vec4<f32>(907f, -1479f, -259f, _wgslsmith_f_op_f32(-arg_0)))));
    var var_3 = Struct_1(select(select(!(!vec3<bool>(global3.a.x, var_0.x, var_2.a.c.a.x)), !vec3<bool>(false, global3.a.x, false), abs(global1.x) <= arg_1), select(global2.wyx, vec3<bool>(global3.a.x | true, false, global2.x), !(!global3.a.x)), global3.a), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -727f), 1126f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.a.b.x)) + _wgslsmith_f_op_f32(-var_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 - 717f), _wgslsmith_f_op_f32(-arg_0))))));
    return Struct_1(var_0.zwy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1462f, global3.b.x, global3.b.x, var_1))) + _wgslsmith_f_op_vec4_f32(-var_3.b)), vec4<f32>(_wgslsmith_f_op_f32(-var_2.a.b.x), -1230f, _wgslsmith_f_op_f32(max(var_2.a.b.x, -919f)), _wgslsmith_f_op_f32(f32(-1f) * -171f)))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec3<i32>) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.c.b.x, _wgslsmith_f_op_f32(arg_0.c.b.x + arg_1.a.c.b.x), _wgslsmith_f_op_f32(step(-830f, arg_1.a.c.b.x)), _wgslsmith_f_op_f32(-global3.b.x)))), _wgslsmith_f_op_vec4_f32(-global3.b)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, arg_0.c.b.x, -605f, -1296f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_1.a.b))), func_4(_wgslsmith_f_op_f32(step(449f, 1166f)), _wgslsmith_mod_i32(19950i, 1i)).a.x)))), vec4<bool>(any(vec2<bool>(true, any(arg_1.a.c.a.yx))), all(vec3<bool>(true, true, true)), false, true)));
}

fn func_1() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_5(Struct_3(_wgslsmith_sub_vec2_u32(vec2<u32>(global0.x, u_input.a), ~vec2<u32>(4294967295u, u_input.a)), vec4<f32>(global3.b.x, _wgslsmith_f_op_f32(1628f + -536f), -1000f, _wgslsmith_f_op_f32(753f * global3.b.x)), func_4(_wgslsmith_f_op_f32(func_2(0i)), -global1.x)), Struct_4(Struct_3(vec2<u32>(global0.x, 0u) >> (vec2<u32>(u_input.a, 21039u) % vec2<u32>(32u)), global3.b, Struct_1(global3.a, vec4<f32>(665f, 493f, global3.b.x, 1176f)))), vec3<i32>(abs(0i) << (_wgslsmith_mod_u32(4294967295u, u_input.a) % 32u), 2147483647i, -(i32(-1i) * -20414i)))));
    global3 = Struct_1(!select(func_4(1306f, -global1.x).a, vec3<bool>(true, true, global2.x), global3.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.b.x, 758f, -577f, var_0.x))) * vec4<f32>(-670f, 587f, var_0.x, 1472f))))));
    global0 = ~(~(_wgslsmith_add_vec2_u32(vec2<u32>(12194u, 0u), vec2<u32>(25719u, u_input.a)) ^ reverseBits(~vec2<u32>(4294967295u, 22521u))));
    let var_1 = func_4(var_0.x, 1i);
    global1 = -_wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -(vec4<i32>(global1.x, global1.x, global1.x, global1.x) << (vec4<u32>(104989u, 71861u, 1u, 29206u) % vec4<u32>(32u))), ~(~(~vec4<i32>(global1.x, global1.x, 746i, global1.x))));
    return !vec4<bool>(true, global2.x, all(vec3<bool>(true, !global3.a.x, !global2.x)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(!vec4<bool>(true, global2.x, global2.x, true), select(!select(vec4<bool>(global2.x, false, true, false), vec4<bool>(true, global2.x, global2.x, true), vec4<bool>(false, global2.x, false, global2.x)), !vec4<bool>(global2.x, global2.x, global2.x, global2.x), func_1()), false), vec4<bool>(global2.x, !global2.x | global3.a.x, !(true || !global2.x), select(true || !global2.x, func_1().x & global3.a.x, !(global3.b.x == global3.b.x))), func_4(_wgslsmith_f_op_vec4_f32(func_5(Struct_3(countOneBits(vec2<u32>(4294967295u, 125901u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, -306f, global3.b.x, 1000f)), func_4(global3.b.x, global1.x)), Struct_4(Struct_3(vec2<u32>(global0.x, 4294967295u), global3.b, Struct_1(global3.a, global3.b))), global1.xww)).x, ~(-39579i)).a.x);
    var var_1 = Struct_3(firstTrailingBit(~_wgslsmith_clamp_vec2_u32(vec2<u32>(38909u, u_input.a), vec2<u32>(global0.x, global0.x), vec2<u32>(u_input.a, global0.x)) & ~(~vec2<u32>(u_input.a, 40343u))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(global3.b + global3.b))), Struct_1(select(global3.a, select(func_1().zxw, func_4(global3.b.x, -36119i).a, vec3<bool>(false, true, true)), vec3<bool>(all(global3.a.yy), any(vec3<bool>(var_0.x, false, true)), true)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global3.b * global3.b) + global3.b)))));
    let var_2 = Struct_4(Struct_3(vec2<u32>(~1u, 18093u << (0u % 32u)) ^ var_1.a, _wgslsmith_f_op_vec4_f32(-func_4(_wgslsmith_f_op_f32(-global3.b.x), max(2147483647i, global1.x)).b), func_4(var_1.b.x, (global1.x | global1.x) & -2147483647i)));
    let var_3 = _wgslsmith_sub_u32(var_2.a.a.x, firstLeadingBit(4294967295u));
    global3 = Struct_1(vec3<bool>(!var_2.a.c.a.x, global3.a.x, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global3.b))), vec4<f32>(-687f, _wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(-var_2.a.c.b.x), _wgslsmith_f_op_f32(-278f * var_1.b.x)))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(var_1.b.x)), _wgslsmith_f_op_f32(-var_2.a.b.x), _wgslsmith_f_op_f32(-101f - global3.b.x), 465f), _wgslsmith_f_op_vec4_f32(func_5(var_2.a, var_2, vec3<i32>(global1.x, global1.x, 7318i))))));
    var var_4 = Struct_2(var_2.a.c, _wgslsmith_add_i32(-abs(0i), ~firstTrailingBit(-2147483647i << (0u % 32u))), ~(~(abs(vec4<u32>(36982u, 0u, 1u, u_input.a)) | vec4<u32>(4294967295u, var_1.a.x, var_1.a.x, u_input.a))), var_2.a.b.x);
    let var_5 = select(var_0.xx, !select(vec2<bool>(global2.x, global3.a.x), var_0.wx, any(vec3<bool>(var_0.x, true, false))), func_1().zx);
    let var_6 = firstLeadingBit(_wgslsmith_mod_i32(global1.x, min(_wgslsmith_clamp_i32(var_4.b, firstTrailingBit(1i), var_4.b), ~1i)));
    let var_7 = Struct_3(vec2<u32>(_wgslsmith_add_u32(4294967295u, ~var_2.a.a.x), _wgslsmith_dot_vec2_u32(~var_4.c.zw, _wgslsmith_mod_vec2_u32(vec2<u32>(64598u, 23765u), var_4.c.ww)) >> (~(var_1.a.x ^ 37273u) % 32u)), var_2.a.b, func_4(var_2.a.c.b.x, var_4.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(556f, 123f)) + _wgslsmith_f_op_f32(var_4.a.b.x * -1516f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(835f, var_2.a.b.x) - var_4.d)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_2.a.c.b.ww, vec2<f32>(var_7.c.b.x, var_7.b.x))) - var_4.a.b.xy)))));
}

