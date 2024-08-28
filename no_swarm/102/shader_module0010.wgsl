struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec4<i32>(28728i, 2147483647i, 42980i, -30763i), vec3<f32>(-1316f, -2773f, -673f));

var<private> global2: array<u32, 9> = array<u32, 9>(29897u, 7078u, 1u, 1u, 0u, 31297u, 5901u, 30703u, 105338u);

var<private> global3: array<bool, 12>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = false;
    let var_1 = Struct_1(global1.a, vec3<f32>(global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-646f * _wgslsmith_f_op_f32(step(-1417f, -1046f)))), 1f));
    var var_2 = _wgslsmith_mod_u32(163u, _wgslsmith_mod_u32(1u, global2[_wgslsmith_index_u32(u_input.b.x, 9u)]));
    global0 = Struct_1(global0.a, vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1233f), global0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -340f), arg_0.b.x));
    let var_3 = var_1.a.x;
    return ~(~(~46167u)) & _wgslsmith_div_u32(33082u, ~u_input.b.x);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(global1.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -215f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(global1.b.x)))), -799f) + global1.b));
    global3 = array<bool, 12>();
    global0 = Struct_1(-var_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, 700f, global0.b.x) + vec3<f32>(global1.b.x, 1697f, -363f)), var_0.b))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(465f, -1348f, var_0.b.x)), global0.b)));
    global1 = Struct_1(-(~var_0.a >> (vec4<u32>(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, global2[_wgslsmith_index_u32(1u, 9u)]), 9u)], u_input.b.x, func_3(Struct_1(global0.a, var_0.b)), global2[_wgslsmith_index_u32(u_input.b.x, 9u)] | global2[_wgslsmith_index_u32(61339u, 9u)]) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(trunc(369f)), var_0.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, global1.b.x, global1.b.x)))));
    let var_1 = -(i32(-1i) * -31465i);
    return Struct_1(global0.a, vec3<f32>(-676f, -256f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1522f * global1.b.x) * _wgslsmith_f_op_f32(max(global0.b.x, -800f))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = !select(!(!(!vec3<bool>(global3[_wgslsmith_index_u32(78091u, 12u)], false, global3[_wgslsmith_index_u32(47031u, 12u)]))), vec3<bool>((global0.b.x < arg_2.b.x) & true, true & all(vec2<bool>(global3[_wgslsmith_index_u32(0u, 12u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(359u, 9u)], 12u)])), _wgslsmith_f_op_f32(1103f - arg_0.b.x) != _wgslsmith_f_op_f32(-663f * global0.b.x)), any(!(!vec2<bool>(global3[_wgslsmith_index_u32(0u, 12u)], global3[_wgslsmith_index_u32(0u, 12u)]))));
    var var_1 = func_2();
    var var_2 = ~global2[_wgslsmith_index_u32(firstTrailingBit(global2[_wgslsmith_index_u32(~u_input.b.x, 9u)]), 9u)];
    global3 = array<bool, 12>();
    var_2 = 69032u;
    return !vec4<bool>(var_0.x, 361f >= _wgslsmith_f_op_f32(func_2().b.x * func_2().b.x), !global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, abs(global2[_wgslsmith_index_u32(u_input.b.x, 9u)])), 9u)], 12u)], true);
}

fn func_5(arg_0: vec4<bool>, arg_1: f32) -> Struct_1 {
    global3 = array<bool, 12>();
    global1 = Struct_1(vec4<i32>(firstLeadingBit(-23384i), -(~(~global1.a.x)), abs(_wgslsmith_mult_i32(countOneBits(1i), -10160i ^ global1.a.x)), -1i), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global1.b)) * _wgslsmith_f_op_vec3_f32(-global1.b)))));
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(func_2().b.x, arg_1, _wgslsmith_f_op_f32(-1000f - 1000f), _wgslsmith_f_op_f32(max(194f, global1.b.x)))) - vec4<f32>(global1.b.x, _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(floor(-680f)), -949f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(696f, 1804f, global0.b.x, -931f), vec4<f32>(global0.b.x, 876f, global0.b.x, -804f)))))));
    return Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c | select(u_input.d.x, 2147483647i, false), u_input.a, abs(-u_input.c), _wgslsmith_add_i32(2147483647i, _wgslsmith_div_i32(0i, -39319i))), global0.a, ~countOneBits(global0.a) >> (vec4<u32>(34570u, 4294967295u, 1u >> (u_input.b.x % 32u), 4294967295u) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, -792f, var_0.x)))))));
}

fn func_1() -> f32 {
    global2 = array<u32, 9>();
    global0 = func_5(func_4(Struct_1(global1.a, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -798f), global0.b.x, global1.b.x)), Struct_1(global1.a, vec3<f32>(_wgslsmith_f_op_f32(-1171f + 1762f), _wgslsmith_f_op_f32(min(1075f, global0.b.x)), -116f)), func_2()), -1259f);
    global2 = array<u32, 9>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-1343f)), _wgslsmith_f_op_f32(global1.b.x - -1642f), func_2().b.x, _wgslsmith_f_op_f32(max(-124f, -1189f)))));
    let var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(func_3(Struct_1(global1.a, global1.b)), _wgslsmith_mult_u32(6424u ^ u_input.b.x, 66941u), ~u_input.b.x, global2[_wgslsmith_index_u32(1u ^ min(global2[_wgslsmith_index_u32(6609u, 9u)], 1u), 9u)]), vec4<u32>(u_input.b.x ^ (u_input.b.x & 93878u), u_input.b.x, 52136u, 8566u)), _wgslsmith_add_vec4_u32(~firstTrailingBit(vec4<u32>(3385u, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 9u)], 9u)], 36974u)) | ~(~vec4<u32>(4294967295u, u_input.b.x, global2[_wgslsmith_index_u32(u_input.b.x, 9u)], 77169u)), vec4<u32>(7956u, global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_div_u32(40539u, 97467u)), 9u)], u_input.b.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(73398u, 0u, u_input.b.x), vec3<u32>(1u, 1u, 4294967295u)), 1u))));
    return global0.b.x;
}

fn func_6(arg_0: vec2<bool>, arg_1: f32) -> u32 {
    var var_0 = -18200i;
    let var_1 = ~(max(~(~vec3<u32>(83190u, 3573u, 0u)), countOneBits(vec3<u32>(global2[_wgslsmith_index_u32(0u, 9u)], global2[_wgslsmith_index_u32(11198u, 9u)], u_input.b.x)) & vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)) ^ vec3<u32>(35184u, u_input.b.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(39782u, 9u)], 9u)], 9u)], 0u, 8746u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))));
    var var_2 = func_2().a.wx;
    let var_3 = Struct_1(_wgslsmith_mult_vec4_i32(~_wgslsmith_mult_vec4_i32(global0.a, _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -31897i, global1.a.x, var_2.x), global1.a)), abs(min(global0.a >> (vec4<u32>(var_1.x, 62696u, 2017u, u_input.b.x) % vec4<u32>(32u)), ~vec4<i32>(-1i, 21822i, 2147483647i, 1i)))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-func_2().b.x), _wgslsmith_f_op_f32(trunc(-702f)), all(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)))), arg_1, -615f));
    global2 = array<u32, 9>();
    return ~u_input.b.x;
}

fn func_7(arg_0: u32, arg_1: u32, arg_2: u32, arg_3: vec2<bool>) -> f32 {
    var var_0 = ~(vec4<u32>(_wgslsmith_add_u32(24848u, global2[_wgslsmith_index_u32(1u, 9u)]) & (arg_1 >> (36149u % 32u)), _wgslsmith_sub_u32(reverseBits(85576u), func_3(Struct_1(vec4<i32>(1i, global0.a.x, global0.a.x, -28291i), global1.b))), arg_2, 70379u) << (vec4<u32>(1u, 1u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(98070u, arg_2, 4294967295u, 4294967295u), vec4<u32>(1u, 67757u, arg_0, 0u)) % 32u), ~1u & ~global2[_wgslsmith_index_u32(39428u, 9u)], 4294967295u) % vec4<u32>(32u)));
    var_0 = ~(~vec4<u32>(~4294967295u, 32255u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 108814u, global2[_wgslsmith_index_u32(34646u, 9u)], arg_0), vec4<u32>(4294967295u, 4294967295u, var_0.x, var_0.x)) & u_input.b.x, _wgslsmith_mult_u32(reverseBits(arg_1), _wgslsmith_add_u32(53905u, arg_1))));
    let var_1 = func_5(vec4<bool>(!arg_3.x, true, true, !((false & arg_3.x) & !global3[_wgslsmith_index_u32(arg_2, 12u)])), -770f);
    var var_2 = select(vec3<bool>(arg_3.x, (~23114u & ~arg_1) != global2[_wgslsmith_index_u32(u_input.b.x, 9u)], -var_1.a.x > abs(func_2().a.x)), !(!vec3<bool>(true, global3[_wgslsmith_index_u32(80437u & u_input.b.x, 12u)], any(vec4<bool>(true, true, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 9u)], 12u)], arg_3.x)))), select(func_4(Struct_1(var_1.a, var_1.b), var_1, func_5(!vec4<bool>(arg_3.x, false, false, true), _wgslsmith_f_op_f32(abs(-1000f)))).zxx, vec3<bool>(true, false, !func_4(var_1, Struct_1(vec4<i32>(0i, u_input.c, global0.a.x, var_1.a.x), var_1.b), var_1).x), func_4(func_5(vec4<bool>(arg_3.x, true, arg_3.x, true), _wgslsmith_f_op_f32(-global0.b.x)), var_1, Struct_1(-global1.a, global0.b)).zyy));
    global0 = func_5(select(select(!vec4<bool>(arg_3.x, false, var_2.x, true), !(!vec4<bool>(arg_3.x, global3[_wgslsmith_index_u32(var_0.x, 12u)], var_2.x, false)), func_4(func_2(), func_2(), var_1)), select(select(!vec4<bool>(false, false, false, global3[_wgslsmith_index_u32(u_input.b.x, 12u)]), vec4<bool>(false, false, false, var_2.x), !vec4<bool>(global3[_wgslsmith_index_u32(arg_1, 12u)], var_2.x, false, true)), !vec4<bool>(false, true, arg_3.x, true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(arg_3.x, arg_3.x, false, var_2.x), vec4<bool>(var_2.x, false, global3[_wgslsmith_index_u32(arg_1, 12u)], global3[_wgslsmith_index_u32(4294967295u, 12u)])), select(vec4<bool>(true, var_2.x, arg_3.x, arg_3.x), vec4<bool>(false, false, false, var_2.x), vec4<bool>(arg_3.x, true, arg_3.x, arg_3.x)), select(vec4<bool>(arg_3.x, false, var_2.x, false), vec4<bool>(true, var_2.x, false, false), false))), vec4<bool>(true, arg_3.x, ~var_1.a.x != firstTrailingBit(-21424i), false)), global0.b.x);
    return global1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~(0u << (~(33082u ^ global2[_wgslsmith_index_u32(u_input.b.x, 9u)]) % 32u)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2234f) + -1108f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(global1.b.x, _wgslsmith_f_op_f32(min(global1.b.x, _wgslsmith_f_op_f32(floor(-854f)))))))), -518f, -511f);
    var var_2 = Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(global1.a.x, -31250i, u_input.d.x), vec3<i32>(35864i, 10326i, -33352i)), global0.a.xyz | _wgslsmith_sub_vec3_i32(global0.a.zww, global1.a.xzw)), firstTrailingBit(2234i), global0.a.x, u_input.c ^ u_input.a), vec3<f32>(global1.b.x, _wgslsmith_f_op_f32(func_7(func_6(vec2<bool>(global3[_wgslsmith_index_u32(16284u, 12u)], global3[_wgslsmith_index_u32(1u, 12u)]), _wgslsmith_f_op_f32(func_1())), select(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(countOneBits(57850u), 9u)], 9u)], u_input.b.x | 17924u, true), 4294967295u, !vec2<bool>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(31116u, 9u)], 12u)], global3[_wgslsmith_index_u32(var_0, 12u)]))), 720f));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1296f)) - var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(global1.b)));
}

