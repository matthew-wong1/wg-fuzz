struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1248f, 2227f, 505f);

var<private> global1: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> i32 {
    let var_0 = Struct_2(vec2<u32>(~_wgslsmith_sub_u32(u_input.b, ~u_input.b), _wgslsmith_sub_u32(min(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 37270u), vec3<u32>(26114u, 1u, 4294967295u)), ~4294967295u), ~u_input.b)), _wgslsmith_f_op_f32(-979f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_div_f32(960f, 1530f)) - -1850f)));
    var var_1 = global0.yx;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(859f + _wgslsmith_div_f32(-413f, 1105f))));
    global0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(round(global0.x)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(180f - -520f))) * var_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1418f - var_0.b)), _wgslsmith_f_op_f32(round(1f)), var_2.a))));
    global1 = select(!select(select(select(vec2<bool>(global1.x, false), vec2<bool>(global1.x, true), true), !vec2<bool>(global1.x, true), true), vec2<bool>(true, true), global1.x), select(select(!select(vec2<bool>(global1.x, true), vec2<bool>(global1.x, true), vec2<bool>(false, global1.x)), vec2<bool>(global1.x, true), !select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, true), global1.x)), !(!vec2<bool>(false, global1.x)), 4294967295u >= (var_0.a.x | 4294967295u)), vec2<bool>(!any(!vec4<bool>(false, global1.x, true, false)), !global1.x));
    return i32(-1i) * -55860i;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<f32>) -> Struct_2 {
    global1 = vec2<bool>(!any(!vec2<bool>(global1.x, global1.x)), !any(vec4<bool>(any(vec2<bool>(global1.x, global1.x)), true, true, !global1.x)));
    global0 = arg_1;
    var var_0 = Struct_2(arg_0.xx, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(max(1264f, global0.x))))));
    let var_1 = select((vec2<i32>(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 1i), vec2<i32>(u_input.a, -2147483647i))) | (vec2<i32>(-2147483647i, u_input.c) ^ -vec2<i32>(2147483647i, -30568i))) ^ _wgslsmith_mult_vec2_i32(reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.c), vec2<i32>(u_input.c, u_input.c))), _wgslsmith_mod_vec2_i32(vec2<i32>(61502i, u_input.c), vec2<i32>(-2147483647i, u_input.a)) ^ vec2<i32>(u_input.a, u_input.a)), min(_wgslsmith_sub_vec2_i32(-vec2<i32>(-45455i, u_input.a), abs(vec2<i32>(u_input.c, u_input.c))) >> (countOneBits(vec2<u32>(arg_0.x, u_input.b)) % vec2<u32>(32u)), vec2<i32>(abs(-u_input.c), func_3())), !global1.x && select(global1.x, abs(29266u) >= var_0.a.x, all(!vec4<bool>(false, global1.x, false, false))));
    let var_2 = Struct_2(~_wgslsmith_add_vec2_u32(arg_0.zy, var_0.a), global0.x);
    return var_2;
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> u32 {
    global1 = select(!select(vec2<bool>(true, true), vec2<bool>(global1.x, global1.x != false), true), vec2<bool>(global1.x, !any(vec2<bool>(true, true))), any(select(!select(vec3<bool>(false, true, global1.x), vec3<bool>(false, false, global1.x), true), vec3<bool>(u_input.c != u_input.a, any(vec2<bool>(false, global1.x)), global1.x), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), global1.x), !vec3<bool>(true, global1.x, global1.x), arg_0.b == arg_0.b))));
    global1 = select(!(!select(vec2<bool>(true, true), vec2<bool>(global1.x, false), !vec2<bool>(global1.x, global1.x))), !vec2<bool>(all(!vec2<bool>(true, global1.x)), select(global1.x, !global1.x, global1.x)), all(vec3<bool>(global1.x, false, false)));
    let var_0 = -(i32(-1i) * -2147483647i) >> ((u_input.b ^ select(u_input.b, func_2(vec3<u32>(arg_0.a.x, 0u, 56660u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-496f, global0.x, global0.x) + vec3<f32>(global0.x, global0.x, -348f))).a.x, global1.x)) % 32u);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_1 * 1295f), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(round(710f))))) + vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(722f - _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, arg_0.b, global0.x, arg_1))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1385f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), arg_0.b), _wgslsmith_f_op_f32(round(-809f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b + arg_1) - _wgslsmith_f_op_f32(select(1824f, -499f, global1.x)))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-254f, global0.x, -813f, 688f)))))));
    return abs(firstLeadingBit(select(arg_0.a.x, ~(~u_input.b), global1.x | any(vec3<bool>(false, global1.x, false)))));
}

fn func_1() -> Struct_1 {
    let var_0 = ~vec4<i32>(u_input.a >> (reverseBits(_wgslsmith_sub_u32(u_input.b, u_input.b)) % 32u), u_input.a, -countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(24651i, -46042i, 0i), vec3<i32>(-13864i, 0i, u_input.c))), ~u_input.a);
    var var_1 = ~vec4<u32>(countOneBits(~(~1u)), u_input.b, _wgslsmith_mod_u32(0u, ~(~u_input.b)), ~(~_wgslsmith_div_u32(u_input.b, 0u)));
    var var_2 = var_0.x;
    var_2 = var_0.x;
    var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(87991u, _wgslsmith_sub_u32(0u, u_input.b), _wgslsmith_mult_u32(func_4(func_2(var_1.xww, vec3<f32>(global0.x, global0.x, global0.x)), global0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 8366u, var_1.x) >> (var_1.xwx % vec3<u32>(32u)), reverseBits(vec3<u32>(4294967295u, 1u, 6118u)))), var_1.x), ~vec4<u32>(0u, 4294967295u, 0u, 48148u));
    return Struct_1(-155f);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: u32) -> i32 {
    var var_0 = arg_0;
    let var_1 = ~1u;
    let var_2 = Struct_1(global0.x);
    var var_3 = func_1();
    var var_4 = select(firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, u_input.a, u_input.c) >> (vec3<u32>(var_1, var_1, u_input.b) % vec3<u32>(32u)), select(vec3<i32>(u_input.c, 11307i, 1619i), vec3<i32>(1i, 2147483647i, 29412i), false))), ~vec3<i32>(max(u_input.a, u_input.a), 0i, u_input.a), global1.x) ^ vec3<i32>(_wgslsmith_add_i32(2147483647i, min(-1i, u_input.a)) << (firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<u32>(u_input.b, arg_2, var_1))) % 32u), u_input.c, u_input.c);
    return -2147483647i;
}

fn func_6(arg_0: i32, arg_1: vec3<u32>, arg_2: vec2<bool>) -> vec2<bool> {
    global1 = arg_2;
    let var_0 = arg_1;
    global1 = !vec2<bool>(true, arg_2.x);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, -115f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(589f, -2003f, 485f), vec3<f32>(global0.x, global0.x, 807f), vec3<bool>(arg_2.x, false, arg_2.x)))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, global0.x, global0.x), _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, -1261f), vec3<f32>(global0.x, 516f, global0.x)), !vec3<bool>(arg_2.x, arg_2.x, false))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-928f - global0.x), global0.x, _wgslsmith_f_op_f32(select(global0.x, -1000f, arg_2.x))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, global0.x, global0.x))))))));
    global1 = arg_2;
    return !arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(reverseBits(firstLeadingBit(abs(vec3<u32>(u_input.b, u_input.b, 4294967295u) | vec3<u32>(1u, 1u, u_input.b)))), vec3<u32>(_wgslsmith_dot_vec3_u32(min(abs(vec3<u32>(u_input.b, u_input.b, 7224u)), select(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(4294967295u, 50442u, u_input.b), global1.x)), vec3<u32>(~u_input.b, ~u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, 4294967295u), vec4<u32>(u_input.b, u_input.b, u_input.b, 1u)))), ~_wgslsmith_mult_u32(u_input.b | u_input.b, u_input.b), min(~u_input.b, ~49163u) << (u_input.b % 32u)), true && global1.x);
    let var_1 = !select(vec4<bool>(true, any(vec2<bool>(true, false)), any(!vec3<bool>(true, true, global1.x)), global1.x), vec4<bool>(true, !global1.x | false, !(true & global1.x), global1.x), global1.x);
    global1 = vec2<bool>(true, !any(!var_1));
    global1 = select(vec2<bool>(false, var_1.x), vec2<bool>(!var_1.x, false), var_1.zw);
    global1 = vec2<bool>(var_1.x, false);
    let var_2 = func_6(-func_5(func_1(), vec2<f32>(1000f, _wgslsmith_f_op_f32(287f + global0.x)), var_0.x), firstTrailingBit(vec3<u32>(var_0.x, ~abs(0u), ~_wgslsmith_div_u32(var_0.x, 1u))), vec2<bool>(true, (1u & var_0.x) < (u_input.b | 4294967295u)));
    let var_3 = vec2<i32>(u_input.a, _wgslsmith_clamp_i32(-37692i, ~min(u_input.a, u_input.a), _wgslsmith_div_i32(-5630i, 24496i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-621f * _wgslsmith_f_op_f32(abs(global0.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-542f)) - _wgslsmith_f_op_f32(global0.x + -1358f))), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(var_3, abs(var_3)), i32(-1i) * -22085i));
}

