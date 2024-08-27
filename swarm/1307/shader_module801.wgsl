struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(50935i, vec4<f32>(766f, 1508f, 1607f, -1208f), vec2<u32>(22810u, 35481u), vec2<bool>(true, true));

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(1i, vec4<f32>(-229f, 736f, -2124f, -1248f), vec2<u32>(15137u, 45278u), vec2<bool>(false, true)), Struct_1(-41203i, vec4<f32>(1581f, 118f, -379f, 2284f), vec2<u32>(1u, 4294967295u), vec2<bool>(false, true)));

var<private> global2: f32 = -451f;

var<private> global3: f32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: f32) -> vec2<u32> {
    var var_0 = all(global0.d) && true;
    var var_1 = Struct_1(global0.a, _wgslsmith_f_op_vec4_f32(-global0.b), _wgslsmith_clamp_vec2_u32(vec2<u32>(~global0.c.x << (_wgslsmith_dot_vec2_u32(global0.c, global0.c) % 32u), ~(~4294967295u)), vec2<u32>(1u, 4920u), ~_wgslsmith_mult_vec2_u32(~vec2<u32>(global0.c.x, u_input.a), abs(vec2<u32>(global0.c.x, global0.c.x)))), select(vec2<bool>(global0.d.x, false), vec2<bool>(any(vec3<bool>(true, true, false)), true && global0.d.x), !(!global0.d)));
    var var_2 = !vec4<bool>(true, true, any(vec4<bool>(!var_1.d.x, var_1.d.x | var_1.d.x, !global0.d.x, all(vec3<bool>(false, true, false)))), _wgslsmith_f_op_f32(select(global0.b.x, _wgslsmith_f_op_f32(arg_1 * -1172f), var_1.d.x)) != _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_1, 483f))));
    let var_3 = Struct_1(i32(-1i) * -12659i, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -250f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.b.x)) * _wgslsmith_f_op_f32(-global0.b.x))), -257f, _wgslsmith_f_op_f32(-global0.b.x)), reverseBits(global0.c), global0.d);
    global3 = arg_0;
    return vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(~var_3.c.x, _wgslsmith_div_u32(var_3.c.x, 59832u)) & _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.c.x, 2978u), vec3<u32>(u_input.a, global0.c.x, global0.c.x)), global0.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 55455u ^ var_3.c.x, 8944u) ^ firstLeadingBit(~vec3<u32>(1u, 28885u, global0.c.x)), vec3<u32>(_wgslsmith_sub_u32(abs(global0.c.x), var_3.c.x), 7725u, abs(select(1u, var_3.c.x, false)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: vec4<u32>) -> vec4<u32> {
    global0 = Struct_1(reverseBits(u_input.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, -129f, 2361f, -239f)), vec4<f32>(1603f, 3187f, arg_0.b.x, global0.b.x))), arg_0.b))), vec2<u32>(abs(98464u), _wgslsmith_add_u32(~func_3(global0.b.x, arg_0.b.x).x, countOneBits(8529u))), select(!arg_0.d, !select(select(vec2<bool>(true, false), arg_0.d, arg_0.d.x), global0.d, vec2<bool>(arg_0.d.x, global0.d.x)), vec2<bool>(true, true)));
    global1 = array<Struct_1, 2>();
    let var_0 = global1[_wgslsmith_index_u32(~(~1u), 2u)];
    global3 = _wgslsmith_f_op_f32(select(var_0.b.x, arg_0.b.x, global0.d.x));
    var var_1 = vec4<u32>(63501u, ~(~(arg_1.x & arg_3.x)), var_0.c.x, func_3(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(673f, -1306f)))).x) & (reverseBits(arg_3) & ~(~arg_3));
    return (reverseBits(arg_3) >> ((countOneBits(min(arg_3, arg_3)) | ~arg_3) % vec4<u32>(32u))) << (arg_3 % vec4<u32>(32u));
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: vec3<i32>, arg_3: f32) -> vec3<i32> {
    var var_0 = global1[_wgslsmith_index_u32(1u, 2u)];
    var var_1 = -(vec4<i32>(0i, -70083i, 2147483647i, ~1i) << (firstLeadingBit(func_4(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(19923u, global0.c.x), 2u)], func_3(var_0.b.x, global0.b.x), vec4<i32>(arg_2.x, -1i, -2147483647i, 0i) & vec4<i32>(2147483647i, -16703i, arg_2.x, -1i), vec4<u32>(global0.c.x, 0u, 31264u, u_input.a) & vec4<u32>(4294967295u, u_input.a, u_input.a, global0.c.x))) % vec4<u32>(32u)));
    global0 = Struct_1(2147483647i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_0.b)) + global0.b), ~(~(func_3(arg_3, -244f) << (_wgslsmith_mod_vec2_u32(global0.c, global0.c) % vec2<u32>(32u)))), !(!vec2<bool>(arg_0.x, !global0.d.x)));
    global0 = global1[_wgslsmith_index_u32(u_input.a, 2u)];
    let var_2 = Struct_1(0i, _wgslsmith_f_op_vec4_f32(-var_0.b), ~var_0.c, !vec2<bool>(arg_1, var_1.x > u_input.b.x));
    return -countOneBits(vec3<i32>(var_2.a, global0.a, i32(-1i) * -16931i));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = -_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(min(6531i, global0.a), -1i, _wgslsmith_mod_i32(2147483647i, 1559i)), ~func_2(vec2<bool>(arg_0.d.x, arg_0.d.x), arg_0.d.x, vec3<i32>(-28495i, 2147483647i, 19811i), 1000f)), firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(global0.a, -1i, 1i), vec3<i32>(1i, 37508i, u_input.b.x)) | firstLeadingBit(vec3<i32>(arg_0.a, 1i, arg_0.a))));
    var var_1 = global1[_wgslsmith_index_u32(1u, 2u)];
    let var_2 = global0.a;
    var var_3 = _wgslsmith_div_u32(~(~0u), ~_wgslsmith_mod_u32(~4294967295u, var_1.c.x));
    let var_4 = _wgslsmith_mult_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.a, ~30060u, 0u, 61451u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 28289u, 4294967295u, 67870u), vec4<u32>(arg_0.c.x, var_1.c.x, 116060u, 0u))), vec4<u32>(~0u, ~59132u, ~(~arg_0.c.x), firstTrailingBit(global0.c.x)));
    return global1[_wgslsmith_index_u32(u_input.a, 2u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    global1 = array<Struct_1, 2>();
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_1(func_1(func_1(arg_3, -476f), -1269f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.b.x + 648f)))).b.x) * _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))));
    var var_1 = arg_2;
    var var_2 = all(select(select(vec3<bool>(true, all(vec2<bool>(arg_0.d.x, false)), false), !(!vec3<bool>(true, true, arg_1.d.x)), func_1(func_1(global1[_wgslsmith_index_u32(global0.c.x, 2u)], -1351f), arg_0.b.x).d.x), select(select(vec3<bool>(true, var_0.d.x, global0.d.x), !vec3<bool>(arg_1.d.x, true, false), false), select(select(vec3<bool>(arg_2.d.x, true, arg_3.d.x), vec3<bool>(arg_3.d.x, arg_3.d.x, global0.d.x), vec3<bool>(arg_0.d.x, false, arg_2.d.x)), vec3<bool>(false, true, arg_1.d.x), !vec3<bool>(false, arg_1.d.x, true)), !(!vec3<bool>(true, var_0.d.x, true))), !select(!vec3<bool>(arg_2.d.x, var_0.d.x, true), select(vec3<bool>(arg_1.d.x, true, false), vec3<bool>(var_1.d.x, var_0.d.x, true), arg_0.d.x), select(vec3<bool>(true, false, arg_3.d.x), vec3<bool>(true, true, true), vec3<bool>(arg_0.d.x, var_0.d.x, arg_1.d.x)))));
    return func_1(Struct_1(-(~global0.a) | _wgslsmith_add_i32(abs(arg_0.a), ~arg_0.a), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(arg_3.b)))))), ~(func_1(Struct_1(global0.a, vec4<f32>(arg_1.b.x, var_1.b.x, arg_0.b.x, arg_3.b.x), var_0.c, arg_3.d), -473f).c | max(vec2<u32>(3935u, arg_1.c.x), var_0.c)), arg_3.d), -335f);
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: vec3<u32>, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = global0.d.x;
    global3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(678f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(floor(arg_0.b.x)), true)) * global0.b.x))));
    var var_1 = select(!(!(!select(vec2<bool>(true, false), vec2<bool>(arg_0.d.x, true), global0.d))), !func_1(func_1(arg_0, _wgslsmith_f_op_f32(1237f * 769f)), 332f).d, !vec2<bool>(false, global0.d.x));
    global0 = arg_0;
    let var_2 = global0.d.x;
    return Struct_1(1i, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(arg_0.b, global0.b), vec4<f32>(1345f, -1057f, -931f, -1573f), any(vec4<bool>(global0.d.x, false, arg_0.d.x, var_1.x))))))), vec2<u32>(~u_input.a, (u_input.a << (_wgslsmith_add_u32(0u, arg_2.x) % 32u)) & 0u), arg_0.d);
}

fn func_7(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(global0.c, vec2<u32>(30334u, global0.c.x) >> (_wgslsmith_mod_vec2_u32(arg_3.c, vec2<u32>(global0.c.x, arg_3.c.x)) % vec2<u32>(32u))), func_5(global1[_wgslsmith_index_u32(~firstLeadingBit(arg_2.c.x), 2u)], Struct_1(0i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b.x, arg_2.b.x, -545f, 1000f)), arg_2.c, vec2<bool>(arg_3.d.x, global0.d.x)), Struct_1(-84786i, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.b.x, arg_3.b.x, 216f, arg_3.b.x), global0.b, arg_3.d.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_3.c.x, u_input.a), global0.c), vec2<bool>(true, true)), Struct_1(arg_1, arg_3.b, func_1(arg_2, arg_3.b.x).c, select(vec2<bool>(arg_2.d.x, arg_0), arg_2.d, global0.d))).c.x) == ((~arg_2.c.x << ((func_6(Struct_1(2147483647i, vec4<f32>(1024f, global0.b.x, arg_3.b.x, arg_2.b.x), global0.c, arg_3.d), arg_1, vec3<u32>(global0.c.x, 66903u, 1u), vec3<i32>(arg_2.a, arg_2.a, arg_2.a)).c.x | func_4(arg_2, vec2<u32>(26544u, arg_2.c.x), vec4<i32>(u_input.b.x, global0.a, 0i, arg_1), vec4<u32>(arg_2.c.x, global0.c.x, 4294967295u, global0.c.x)).x) % 32u)) | arg_3.c.x);
    let var_1 = arg_2;
    let var_2 = var_1.a;
    global0 = global1[_wgslsmith_index_u32(func_5(func_5(var_1, arg_2, Struct_1(9415i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.x, 1177f, arg_3.b.x, arg_3.b.x) + vec4<f32>(global0.b.x, arg_3.b.x, arg_3.b.x, global0.b.x))), vec2<u32>(31846u, global0.c.x), arg_2.d), arg_3), arg_2, arg_3, Struct_1(_wgslsmith_sub_i32(1i, 60533i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1209f, arg_3.b.x, var_1.b.x, arg_2.b.x))))), arg_2.c, !global0.d)).c.x, 2u)];
    let var_3 = Struct_1(-15303i, arg_3.b, var_1.c, var_1.d);
    return func_6(arg_2, func_6(Struct_1(-2147483647i, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(arg_2.b, vec4<f32>(arg_2.b.x, var_1.b.x, 690f, 1421f), arg_3.d.x)))), func_1(func_1(var_3, global0.b.x), 465f).c, global0.d), -(1i >> (func_1(var_1, -1320f).c.x % 32u)), vec3<u32>(~4294967295u, var_3.c.x, ~4294967295u), vec3<i32>(22355i, countOneBits(abs(var_2)), u_input.b.x)).a, vec3<u32>(59882u, ~17255u, 1u), _wgslsmith_clamp_vec3_i32(-select(vec3<i32>(-1i, 2147483647i, -536i), ~vec3<i32>(var_1.a, -52282i, -8224i), select(vec3<bool>(false, var_3.d.x, false), vec3<bool>(arg_3.d.x, var_3.d.x, true), vec3<bool>(true, var_1.d.x, false))), abs(func_2(arg_3.d, true, vec3<i32>(2147483647i, global0.a, -12767i), arg_2.b.x) >> (select(vec3<u32>(u_input.a, 13259u, arg_3.c.x), vec3<u32>(9794u, 0u, arg_3.c.x), true) % vec3<u32>(32u))), vec3<i32>(1i ^ -global0.a, var_3.a >> (73247u % 32u), global0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(false, -7904i, global1[_wgslsmith_index_u32(global0.c.x, 2u)], func_6(func_5(Struct_1(1i, vec4<f32>(2660f, global0.b.x, -1102f, global0.b.x), min(global0.c, vec2<u32>(1u, 4294967295u)), global0.d), global1[_wgslsmith_index_u32(max(~u_input.a, _wgslsmith_add_u32(85872u, global0.c.x)), 2u)], func_1(Struct_1(u_input.b.x, vec4<f32>(global0.b.x, global0.b.x, -1000f, global0.b.x), global0.c, vec2<bool>(global0.d.x, global0.d.x)), -938f), func_1(func_1(Struct_1(global0.a, vec4<f32>(global0.b.x, global0.b.x, global0.b.x, global0.b.x), global0.c, global0.d), global0.b.x), _wgslsmith_f_op_f32(941f - global0.b.x))), u_input.b.x, vec3<u32>(0u, u_input.a, min(u_input.a, 4294967295u) ^ 0u), ~(~vec3<i32>(-51338i, 24990i, global0.a) & vec3<i32>(global0.a, u_input.b.x, -2147483647i))));
    let var_1 = false;
    var var_2 = var_0.a;
    global2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), func_5(func_5(global1[_wgslsmith_index_u32(global0.c.x, 2u)], global1[_wgslsmith_index_u32(~global0.c.x, 2u)], Struct_1(func_2(vec2<bool>(true, false), var_1, vec3<i32>(17788i, -1i, 31954i), -616f).x, vec4<f32>(-172f, global0.b.x, -748f, var_0.b.x), ~vec2<u32>(global0.c.x, global0.c.x), var_0.d), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(func_3(2393f, var_0.b.x).x, ~9707u, func_6(Struct_1(12902i, vec4<f32>(1540f, var_0.b.x, global0.b.x, global0.b.x), global0.c, var_0.d), 0i, vec3<u32>(var_0.c.x, u_input.a, global0.c.x), vec3<i32>(2147483647i, global0.a, 1i)).c.x), 2u)]), global1[_wgslsmith_index_u32(90167u, 2u)], Struct_1(59582i, _wgslsmith_f_op_vec4_f32(-var_0.b), ~global0.c >> (_wgslsmith_mult_vec2_u32(var_0.c, vec2<u32>(6575u, global0.c.x)) % vec2<u32>(32u)), global0.d), var_0).b.x));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-254f, global0.b.x)) * -1883f);
    let var_3 = vec4<u32>(min(~u_input.a, firstLeadingBit(~_wgslsmith_mod_u32(0u, 4294967295u))), ~(~u_input.a), u_input.a, global0.c.x);
    let var_4 = true;
    let var_5 = !vec3<bool>(var_0.d.x, false, var_4);
    let var_6 = -u_input.b ^ ~_wgslsmith_mult_vec2_i32(reverseBits(-vec2<i32>(3993i, -62597i)), vec2<i32>(global0.a, firstLeadingBit(var_0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.ywy);
}

