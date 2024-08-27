struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: f32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_4, arg_1: bool) -> bool {
    global0 = arg_0.a.c.c;
    let var_0 = -min(max(vec4<i32>(arg_0.b, _wgslsmith_mult_i32(30232i, -41178i), arg_0.b, arg_0.b << (arg_0.a.c.a.x % 32u)), -(~vec4<i32>(arg_0.b, -37862i, 3756i, arg_0.b))), vec4<i32>(16255i, ~(arg_0.b >> (arg_0.a.a.a.x % 32u)), firstTrailingBit(firstTrailingBit(arg_0.b)), 1i));
    global0 = arg_0.a.b.c;
    global0 = vec3<bool>(!arg_1, false, arg_0.b != firstTrailingBit(max(arg_0.b, -2147483647i >> (arg_0.a.c.a.x % 32u))));
    let var_1 = _wgslsmith_div_i32(1i, arg_0.b);
    return true;
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec4<bool>, arg_3: u32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-377f, arg_0.a.b))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.a.b, 248f), vec2<f32>(arg_0.a.b, 2017f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.b, -837f) * vec2<f32>(arg_0.b.b, arg_0.b.b))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.b.b, arg_0.b.b), vec2<f32>(arg_0.a.b, arg_0.d.b))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.b, arg_0.b.b) + vec2<f32>(1048f, 1000f))))));
    var var_1 = (vec3<i32>(10034i, arg_1 >> (1u % 32u), reverseBits(_wgslsmith_mult_i32(arg_1, -15762i))) ^ vec3<i32>(arg_1 >> ((arg_3 >> (arg_3 % 32u)) % 32u), 13232i, 32139i)) ^ (~(-(vec3<i32>(33875i, arg_1, 2147483647i) | vec3<i32>(0i, arg_1, -2147483647i))) ^ _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, -39594i, arg_1) & vec3<i32>(arg_1, arg_1, arg_1), vec3<i32>(-1i, arg_1, arg_1)), vec3<i32>(-1i) * -vec3<i32>(18881i, arg_1, -38189i)));
    return Struct_3(Struct_2(Struct_1(~arg_0.d.a, _wgslsmith_f_op_f32(abs(191f)), select(vec3<bool>(arg_0.a.c.x, true, true), select(vec3<bool>(global0.x, arg_0.a.c.x, false), arg_2.xzx, vec3<bool>(true, true, global0.x)), var_1.x == var_1.x)), Struct_1(arg_0.d.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_2.yzy), arg_0.c, Struct_1(arg_0.a.a | ~vec4<u32>(arg_3, u_input.a.x, 4294967295u, 33953u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x * 553f))), select(select(arg_0.a.c, vec3<bool>(arg_2.x, arg_2.x, false), global0.x), arg_0.a.c, arg_0.c.c))), Struct_2(arg_0.c, Struct_1(~reverseBits(arg_0.c.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), arg_2.wxy), arg_0.a, Struct_1(vec4<u32>(~0u, arg_0.b.a.x << (0u % 32u), max(u_input.a.x, 4989u), ~59672u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x + 498f))), arg_0.a.c)));
}

fn func_1(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = func_3(arg_0, _wgslsmith_mult_i32(42269i, -(~(~3623i))), vec4<bool>(true, !func_2(Struct_4(Struct_2(Struct_1(arg_0.a.a, -251f, arg_0.c.c), arg_0.b, Struct_1(arg_0.c.a, arg_0.c.b, vec3<bool>(global0.x, arg_0.b.c.x, false)), arg_0.c), 0i), arg_0.d.c.x) && false, _wgslsmith_div_f32(-1300f, _wgslsmith_f_op_f32(-arg_0.b.b)) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.d.b - arg_0.b.b), -417f)), true | arg_0.a.c.x), ~firstLeadingBit(1u));
    let var_1 = true;
    var var_2 = !select(vec4<bool>(true, true, false, global0.x), select(select(vec4<bool>(false, true, var_0.b.c.c.x, global0.x), vec4<bool>(false, var_0.a.d.c.x, var_1, true), vec4<bool>(var_1, false, true, var_1)), vec4<bool>(all(vec4<bool>(false, true, true, var_1)), true, all(vec4<bool>(true, global0.x, global0.x, var_1)), true), -889f != _wgslsmith_f_op_f32(1782f - var_0.b.c.b)), true);
    var_2 = select(vec4<bool>(false, global0.x, false, !func_3(Struct_2(Struct_1(var_0.b.b.a, -466f, var_0.a.c.c), Struct_1(arg_0.c.a, arg_0.a.b, vec3<bool>(true, true, var_2.x)), Struct_1(arg_0.b.a, var_0.b.b.b, var_2.zwz), var_0.b.a), 0i, !vec4<bool>(arg_0.c.c.x, global0.x, true, true), min(u_input.a.x, 4294967295u)).b.b.c.x), !(!select(vec4<bool>(true, false, false, var_1), select(vec4<bool>(arg_0.a.c.x, false, false, false), vec4<bool>(false, true, true, var_1), true), true)), var_2.x);
    global0 = var_2.xwz;
    return vec3<bool>(var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-182f)), -1484f) <= _wgslsmith_f_op_f32(-var_0.a.b.b), !func_2(Struct_4(Struct_2(Struct_1(vec4<u32>(var_0.a.b.a.x, arg_0.c.a.x, u_input.a.x, var_0.b.c.a.x), -392f, vec3<bool>(false, false, var_0.b.a.c.x)), Struct_1(arg_0.c.a, var_0.b.a.b, vec3<bool>(var_1, true, true)), arg_0.c, arg_0.d), 0i), (var_0.b.b.a.x < u_input.a.x) && select(true, true, var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec3<bool>(true, !(true || any(vec4<bool>(false, false, global0.x, global0.x))), global0.x);
    let var_0 = Struct_1(~(~(~firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))), -1558f, select(!select(vec3<bool>(true, false, global0.x), func_1(Struct_2(Struct_1(vec4<u32>(18593u, 4294967295u, 4294967295u, u_input.a.x), 1235f, vec3<bool>(global0.x, false, global0.x)), Struct_1(vec4<u32>(68252u, 39857u, 16758u, u_input.a.x), -2079f, vec3<bool>(true, global0.x, global0.x)), Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, 48842u, u_input.a.x), -1007f, vec3<bool>(false, true, global0.x)), Struct_1(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), -1103f, vec3<bool>(global0.x, false, global0.x)))), true), vec3<bool>(true, select(!global0.x, func_1(Struct_2(Struct_1(vec4<u32>(1u, 50034u, 24482u, 73390u), -1991f, vec3<bool>(true, false, true)), Struct_1(vec4<u32>(u_input.a.x, 4294967295u, 50322u, 1u), 483f, vec3<bool>(false, global0.x, global0.x)), Struct_1(vec4<u32>(45442u, u_input.a.x, 39255u, 0u), 288f, vec3<bool>(global0.x, global0.x, global0.x)), Struct_1(vec4<u32>(897u, 31658u, 54794u, 63110u), -870f, vec3<bool>(false, false, false)))).x, func_3(Struct_2(Struct_1(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), 605f, vec3<bool>(global0.x, global0.x, true)), Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), 384f, vec3<bool>(false, global0.x, true)), Struct_1(vec4<u32>(4294967295u, u_input.a.x, 0u, 4294967295u), 455f, vec3<bool>(true, false, false)), Struct_1(vec4<u32>(u_input.a.x, 57597u, 4294967295u, u_input.a.x), 541f, vec3<bool>(true, false, global0.x))), 1i, vec4<bool>(global0.x, global0.x, global0.x, false), u_input.a.x).b.d.c.x), true), !(!select(vec3<bool>(global0.x, true, false), vec3<bool>(true, global0.x, false), vec3<bool>(global0.x, true, true)))));
    let var_1 = -(-_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-58755i, -2147483647i, 1i)), vec3<i32>(1i, 1i, 1i)) ^ _wgslsmith_clamp_i32(-12603i, 1i, -_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -1i, 1i), vec3<i32>(-39155i, 27204i, 0i))));
    global0 = vec3<bool>(var_0.c.x, any(vec3<bool>(!any(var_0.c), global0.x & false, 78158i == _wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_1, var_1, var_1), vec4<i32>(var_1, var_1, -23764i, 0i)))), func_2(Struct_4(Struct_2(var_0, var_0, var_0, var_0), var_1), any(vec2<bool>(true, true))) && func_1(Struct_2(var_0, var_0, func_3(Struct_2(Struct_1(var_0.a, var_0.b, var_0.c), var_0, Struct_1(vec4<u32>(var_0.a.x, u_input.a.x, 4294967295u, 1u), -270f, var_0.c), var_0), var_1, vec4<bool>(false, global0.x, global0.x, false), 74781u).a.b, func_3(Struct_2(Struct_1(vec4<u32>(54768u, u_input.a.x, u_input.a.x, 9451u), var_0.b, vec3<bool>(false, var_0.c.x, var_0.c.x)), var_0, var_0, Struct_1(vec4<u32>(62067u, 4294967295u, 1u, 4294967295u), -656f, var_0.c)), var_1, vec4<bool>(var_0.c.x, global0.x, true, true), 1u).a.c)).x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(737f, _wgslsmith_f_op_f32(abs(var_0.b))) - -193f);
    global1 = var_2;
    var var_3 = firstTrailingBit(var_0.a.x);
    let var_4 = func_3(func_3(func_3(Struct_2(Struct_1(vec4<u32>(var_0.a.x, u_input.a.x, var_0.a.x, var_0.a.x), var_0.b, vec3<bool>(false, true, global0.x)), var_0, Struct_1(vec4<u32>(4294967295u, var_0.a.x, var_0.a.x, u_input.a.x), 1025f, vec3<bool>(false, true, global0.x)), var_0), -10015i, vec4<bool>(func_3(Struct_2(Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, var_0.a.x), var_0.b, vec3<bool>(false, var_0.c.x, false)), Struct_1(vec4<u32>(var_0.a.x, var_0.a.x, 4294967295u, var_0.a.x), var_2, vec3<bool>(var_0.c.x, var_0.c.x, true)), Struct_1(vec4<u32>(u_input.a.x, var_0.a.x, 914u, 7016u), var_0.b, var_0.c), var_0), var_1, vec4<bool>(global0.x, false, var_0.c.x, false), var_0.a.x).b.b.c.x, var_0.c.x, true, var_0.c.x), ~51701u).b, var_1, !vec4<bool>(var_0.c.x & true, !var_0.c.x, select(true, true, var_0.c.x), false), var_0.a.x).a, 20917i, !select(select(select(vec4<bool>(var_0.c.x, false, global0.x, global0.x), vec4<bool>(true, true, var_0.c.x, var_0.c.x), global0.x), select(vec4<bool>(global0.x, false, true, var_0.c.x), vec4<bool>(true, var_0.c.x, false, var_0.c.x), true), select(vec4<bool>(true, true, var_0.c.x, var_0.c.x), vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, true, false, var_0.c.x))), vec4<bool>(true, true, true, false), select(select(vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(global0.x, true, true, false)), vec4<bool>(global0.x, true, global0.x, false), !vec4<bool>(global0.x, false, var_0.c.x, global0.x))), countOneBits(1u));
    var var_5 = ~(~(~(~abs(var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(874f, 698f, var_0.b, -362f) - vec4<f32>(var_0.b, var_4.a.d.b, -177f, 2388f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-246f, 1090f, var_0.b, var_4.b.c.b), vec4<f32>(-330f, var_4.b.c.b, -535f, 497f)))))), firstTrailingBit(abs(firstLeadingBit(vec2<i32>(2147483647i, 1i) ^ vec2<i32>(var_1, 0i)))));
}

