struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, true, true), vec3<i32>(0i, i32(-2147483648), 0i), 34310u);

var<private> global1: array<bool, 8>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<f32> {
    let var_0 = i32(-1i) * -2269i;
    let var_1 = !all(vec4<bool>(select(true, true, true), true, true, !(false != global0.a.x)));
    let var_2 = 2147483647i;
    let var_3 = min(~vec4<u32>(_wgslsmith_div_u32(global0.c, u_input.d.x) >> (_wgslsmith_div_u32(global0.c, 42645u) % 32u), ~(~global0.c), global0.c, _wgslsmith_add_u32(~u_input.d.x, u_input.d.x)), vec4<u32>(10476u, ~4294967295u, global0.c, 0u >> (u_input.b % 32u)));
    global1 = array<bool, 8>();
    return vec4<f32>(-180f, -104f, _wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(866f + -1837f))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, 833f, -311f) - vec4<f32>(-1028f, -411f, 156f, arg_2))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(129f, arg_2, arg_2, arg_2))), false)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + arg_2)), -1806f, _wgslsmith_div_f32(-163f, _wgslsmith_f_op_f32(-235f + _wgslsmith_div_f32(arg_2, -888f))), 1170f));
    global0 = Struct_1(global0.a, vec3<i32>(i32(-1i) * -42512i, -_wgslsmith_add_i32(_wgslsmith_sub_i32(arg_0.b.x, -44117i), min(arg_1.b.x, -2147483647i)), arg_1.b.x), 84553u);
    let var_1 = Struct_3(arg_1, arg_1);
    let var_2 = 101707u;
    global1 = array<bool, 8>();
    return _wgslsmith_mult_vec4_i32(select(-_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.b.x, 27800i, var_1.b.b.x, -1i), vec4<i32>(arg_1.b.x, arg_1.b.x, 2147483647i, var_1.a.b.x), vec4<i32>(u_input.e.x, u_input.e.x, 37725i, var_1.b.b.x)) << (firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.a.c, u_input.b, 4294967295u, global0.c), vec4<u32>(1u, var_1.b.c, global0.c, 0u))) % vec4<u32>(32u)), max(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.b.b.x, -2147483647i, arg_0.b.x, -11319i), vec4<i32>(arg_1.b.x, arg_1.b.x, 17856i, 2147483647i)), ~vec4<i32>(2147483647i, -25980i, 28906i, u_input.c)) >> (min(~vec4<u32>(u_input.b, var_2, 81502u, arg_1.c), ~vec4<u32>(23571u, var_1.b.c, 46752u, 4294967295u)) % vec4<u32>(32u)), vec4<bool>(global0.a.x, !(arg_2 > -284f), false, -100f >= _wgslsmith_f_op_f32(round(var_0.x)))), max(vec4<i32>(i32(-1i) * -4468i, -2147483647i, -1i, ~countOneBits(u_input.e.x)), -(~vec4<i32>(arg_0.b.x, 29180i, -43671i, 34271i))));
}

fn func_1(arg_0: i32, arg_1: Struct_4, arg_2: vec3<f32>) -> Struct_3 {
    global0 = arg_1.b;
    global1 = array<bool, 8>();
    let var_0 = 1u;
    let var_1 = firstTrailingBit(~func_2(arg_1.b, arg_1.b, _wgslsmith_f_op_f32(arg_2.x * -625f))) >> ((~(~(vec4<u32>(1u, 10333u, 1u, 125579u) << (vec4<u32>(u_input.d.x, 1u, arg_1.b.c, 94035u) % vec4<u32>(32u)))) & vec4<u32>(reverseBits(14483u), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(28309u, var_0), u_input.d), 47396u), global0.c, 15749u >> (u_input.d.x % 32u))) % vec4<u32>(32u));
    global0 = Struct_1(global0.a, var_1.xzx, _wgslsmith_mult_u32(u_input.b, abs(~484u)));
    return Struct_3(arg_1.b, Struct_1(arg_1.a, select(countOneBits(-vec3<i32>(var_1.x, var_1.x, arg_1.c.x)), min(vec3<i32>(1i, arg_1.b.b.x, u_input.c), _wgslsmith_add_vec3_i32(vec3<i32>(global0.b.x, 1i, -1318i), var_1.xww)), select(true, false, arg_1.a.x & false)), ~105314u));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    global0 = func_1(i32(-1i) * -_wgslsmith_clamp_i32(u_input.c, u_input.a, global0.b.x), Struct_4(arg_0.b.a, func_1(-arg_0.b.b.x, Struct_4(!vec3<bool>(false, global0.a.x, global0.a.x), Struct_1(arg_0.b.a, vec3<i32>(u_input.a, 2147483647i, u_input.e.x), 9311u), func_2(Struct_1(vec3<bool>(arg_0.a.a.x, false, arg_0.b.a.x), global0.b, 49902u), Struct_1(vec3<bool>(true, global1[_wgslsmith_index_u32(9494u, 8u)], global1[_wgslsmith_index_u32(u_input.d.x, 8u)]), arg_0.b.b, u_input.b), -1459f).zyw), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(145f, 872f, -585f), vec3<f32>(729f, -497f, 597f))))).a, vec3<i32>(arg_0.a.b.x, u_input.e.x, -1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1045f), _wgslsmith_f_op_f32(-429f * -922f), _wgslsmith_f_op_f32(303f * -1489f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(542f, -1318f, 1114f)))))))).a;
    let var_0 = arg_0.b.c;
    let var_1 = global0.a.xy;
    var var_2 = abs(func_1(-20604i, Struct_4(!select(vec3<bool>(global0.a.x, global1[_wgslsmith_index_u32(u_input.b, 8u)], global1[_wgslsmith_index_u32(var_0, 8u)]), arg_0.a.a, arg_0.b.a.x), func_1(24844i, Struct_4(global0.a, Struct_1(global0.a, arg_0.b.b, 0u), vec3<i32>(arg_0.a.b.x, u_input.c, global0.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-606f, 347f, -969f))).a, vec3<i32>(max(15939i, u_input.a), max(-13503i, u_input.e.x), reverseBits(arg_0.b.b.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-799f, 297f, 1042f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-669f, 369f, -528f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-468f, 1493f, 187f) + vec3<f32>(244f, 629f, -1027f))))).a.b.yx);
    let var_3 = select(select(select(!(!vec4<bool>(var_1.x, false, false, var_1.x)), vec4<bool>(false, arg_0.b.a.x, true, true), !(!vec4<bool>(global0.a.x, global1[_wgslsmith_index_u32(u_input.b, 8u)], arg_0.b.a.x, true))), vec4<bool>(!global1[_wgslsmith_index_u32(97252u, 8u)] & global0.a.x, true, any(vec3<bool>(false, true, false)), global0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1907f) - _wgslsmith_f_op_f32(-1212f + -455f)) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-2937f)), _wgslsmith_f_op_f32(f32(-1f) * -1544f)))), vec4<bool>(true, true, arg_0.b.a.x, false), vec4<bool>(any(vec3<bool>(var_0 != u_input.b, false, global0.a.x || false)), false, global1[_wgslsmith_index_u32(~global0.c, 8u)], var_2.x != func_2(func_1(2147483647i, Struct_4(global0.a, Struct_1(vec3<bool>(var_1.x, global1[_wgslsmith_index_u32(24036u, 8u)], global0.a.x), arg_0.a.b, arg_0.a.c), arg_0.a.b), vec3<f32>(1559f, 1887f, -732f)).a, Struct_1(global0.a, global0.b, var_0), -673f).x));
    return arg_0.b;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: Struct_2, arg_3: bool) -> Struct_3 {
    global1 = array<bool, 8>();
    let var_0 = arg_2;
    var var_1 = arg_2;
    var var_2 = select(_wgslsmith_mult_vec3_u32(firstLeadingBit(~_wgslsmith_div_vec3_u32(vec3<u32>(1093u, u_input.d.x, 4294967295u), vec3<u32>(arg_1.b.c, 48009u, 4294967295u))), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(var_0.c.c, global0.c, 1685u), vec3<u32>(4294967295u, var_0.a, arg_1.b.c)))), _wgslsmith_mult_vec3_u32(min(vec3<u32>(global0.c, 15184u << (var_0.c.c % 32u), arg_1.b.c), max(vec3<u32>(u_input.d.x, arg_1.b.c, var_1.c.c), abs(vec3<u32>(4294967295u, arg_2.a, 6630u)))), ~countOneBits(vec3<u32>(u_input.d.x, arg_1.b.c, 4294967295u))), vec3<bool>(all(!(!var_0.b.zz)), arg_1.b.a.x, false));
    var var_3 = 249f;
    return func_1(-6977i, arg_1, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1512f, -422f, -424f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1365f, -926f, -729f))))));
}

fn func_6(arg_0: Struct_3) -> Struct_1 {
    var var_0 = !(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -107f) * _wgslsmith_f_op_f32(max(-830f, -642f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -359f)), any(!arg_0.a.a.xz))) <= _wgslsmith_f_op_f32(-231f + 513f));
    let var_1 = func_5(vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(0i, 1i, global0.b.x), arg_0.b.b), func_2(Struct_1(!vec3<bool>(arg_0.b.a.x, global1[_wgslsmith_index_u32(global0.c, 8u)], arg_0.b.a.x), global0.b, global0.c), func_4(func_5(vec4<i32>(-34878i, arg_0.a.b.x, 2147483647i, -34075i), Struct_4(arg_0.a.a, Struct_1(vec3<bool>(false, true, global0.a.x), global0.b, 4294967295u), vec3<i32>(global0.b.x, -2147483647i, global0.b.x)), Struct_2(u_input.b, vec4<bool>(arg_0.b.a.x, global0.a.x, true, global1[_wgslsmith_index_u32(1u, 8u)]), Struct_1(vec3<bool>(true, global0.a.x, arg_0.a.a.x), arg_0.b.b, arg_0.b.c)), global1[_wgslsmith_index_u32(88996u, 8u)])), 603f).x, i32(-1i) * -firstLeadingBit(u_input.a), u_input.e.x), Struct_4(select(select(vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 8u)], global0.a.x), global0.a, !arg_0.b.a.x), select(arg_0.a.a, arg_0.b.a, arg_0.a.a.x), !vec3<bool>(false, global0.a.x, false)), Struct_1(arg_0.a.a, _wgslsmith_mod_vec3_i32(-vec3<i32>(-2147483647i, u_input.c, u_input.e.x), _wgslsmith_mod_vec3_i32(global0.b, global0.b)), global0.c), vec3<i32>(arg_0.b.b.x, arg_0.b.b.x, ~2147483647i)), Struct_2(arg_0.b.c, vec4<bool>(false & any(global0.a.zz), !func_4(arg_0).a.x, true, global0.a.x), func_5(vec4<i32>(arg_0.b.b.x, 1i, i32(-1i) * -1i, _wgslsmith_add_i32(arg_0.b.b.x, 38895i)), Struct_4(!vec3<bool>(false, global0.a.x, global0.a.x), Struct_1(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 8u)], global0.a.x), vec3<i32>(u_input.c, 3802i, -51173i), arg_0.b.c), _wgslsmith_clamp_vec3_i32(arg_0.a.b, vec3<i32>(arg_0.a.b.x, 2147483647i, global0.b.x), arg_0.a.b)), Struct_2(u_input.b << (arg_0.b.c % 32u), !vec4<bool>(global0.a.x, true, true, arg_0.b.a.x), Struct_1(arg_0.b.a, vec3<i32>(-1i, u_input.a, 0i), 1u)), !arg_0.b.a.x).a), true);
    global0 = var_1.a;
    var var_2 = vec4<u32>(17002u, ~var_1.b.c, 7197u, _wgslsmith_div_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.d | u_input.d, ~vec2<u32>(global0.c, var_1.b.c))), _wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 33507u, arg_0.a.c, 76356u), ~vec4<u32>(0u, var_1.a.c, 0u, u_input.b)), 4294967295u)));
    var_2 = ~_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_div_u32(var_1.a.c, 1u), var_1.b.c, ~16983u, firstLeadingBit(arg_0.a.c)) | select(vec4<u32>(22367u, 2226u, global0.c, u_input.d.x), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_1.b.c, 66901u, 0u), vec4<u32>(56815u, 0u, 36891u, 23438u)), select(vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 8u)], arg_0.b.a.x, true), vec4<bool>(global0.a.x, global1[_wgslsmith_index_u32(u_input.b, 8u)], global0.a.x, global1[_wgslsmith_index_u32(var_2.x, 8u)]), vec4<bool>(false, true, global0.a.x, var_1.b.a.x))), vec4<u32>(_wgslsmith_mod_u32(var_2.x >> (1594u % 32u), var_1.b.c ^ u_input.b), _wgslsmith_sub_u32(~global0.c, 1u), arg_0.a.c, _wgslsmith_div_u32(_wgslsmith_mod_u32(0u, arg_0.b.c), firstTrailingBit(var_2.x))));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(func_5(_wgslsmith_mult_vec4_i32(~(-vec4<i32>(u_input.c, 26763i, 49924i, u_input.e.x)), vec4<i32>(u_input.a, global0.b.x, global0.b.x, -20634i) >> (_wgslsmith_div_vec4_u32(vec4<u32>(global0.c, global0.c, 0u, 1u), vec4<u32>(0u, global0.c, global0.c, 1u)) % vec4<u32>(32u))), Struct_4(select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 8u)], global0.a.x, global1[_wgslsmith_index_u32(global0.c, 8u)]), vec3<bool>(global0.a.x, true, global1[_wgslsmith_index_u32(45624u, 8u)]), true), func_4(func_1(global0.b.x, Struct_4(global0.a, Struct_1(vec3<bool>(global0.a.x, global1[_wgslsmith_index_u32(global0.c, 8u)], false), vec3<i32>(global0.b.x, global0.b.x, u_input.e.x), global0.c), global0.b), vec3<f32>(674f, 929f, 830f))), -global0.b), Struct_2(u_input.b, vec4<bool>(any(vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(1u, 8u)])), global0.a.x & false, false, false && global1[_wgslsmith_index_u32(1u, 8u)]), Struct_1(!global0.a, abs(global0.b), ~0u)), true));
    var var_0 = u_input.d.x;
    let var_1 = global0.c;
    let var_2 = Struct_3(func_1(global0.b.x, Struct_4(vec3<bool>(all(vec4<bool>(global0.a.x, global1[_wgslsmith_index_u32(27594u, 8u)], global1[_wgslsmith_index_u32(global0.c, 8u)], false)), u_input.e.x <= u_input.c, func_5(vec4<i32>(global0.b.x, u_input.e.x, 2393i, 2147483647i), Struct_4(vec3<bool>(global0.a.x, false, global0.a.x), Struct_1(global0.a, vec3<i32>(global0.b.x, u_input.c, u_input.e.x), 40240u), vec3<i32>(11860i, -24814i, 1i)), Struct_2(56589u, vec4<bool>(global0.a.x, global1[_wgslsmith_index_u32(u_input.b, 8u)], true, global1[_wgslsmith_index_u32(41656u, 8u)]), Struct_1(global0.a, vec3<i32>(1i, -2679i, global0.b.x), global0.c)), global0.a.x).a.a.x), func_5(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, global0.b.x, global0.b.x, global0.b.x), vec4<i32>(global0.b.x, global0.b.x, 1i, global0.b.x)), Struct_4(global0.a, Struct_1(global0.a, vec3<i32>(66316i, 29088i, 15764i), 4936u), vec3<i32>(u_input.e.x, u_input.c, 1i)), Struct_2(53105u, vec4<bool>(global0.a.x, true, true, true), Struct_1(vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 8u)], global0.a.x), vec3<i32>(-29703i, -43201i, -30148i), global0.c)), true & global1[_wgslsmith_index_u32(0u, 8u)]).a, -_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, u_input.e.x, 19255i), global0.b)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1000f, -949f)), vec3<f32>(-549f, 1f, -581f)))).b, Struct_1(!global0.a, vec3<i32>(~u_input.e.x << (global0.c % 32u), u_input.e.x, firstTrailingBit(reverseBits(global0.b.x))), 5479u));
    var var_3 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.b.x);
}

