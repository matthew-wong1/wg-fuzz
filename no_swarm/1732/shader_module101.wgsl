struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<f32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<i32>(2147483647i, 2147483647i), 2614u, vec4<bool>(true, false, false, true), false), vec4<i32>(-1i, 24596i, 1i, 0i), vec4<bool>(false, false, false, false), Struct_1(vec2<i32>(0i, 1i), 6138u, vec4<bool>(true, false, false, true), false));

var<private> global1: u32;

var<private> global2: vec3<bool> = vec3<bool>(false, false, true);

var<private> global3: Struct_1 = Struct_1(vec2<i32>(10499i, i32(-2147483648)), 0u, vec4<bool>(false, false, false, false), false);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> bool {
    let var_0 = -global0.b;
    let var_1 = Struct_2(global0.d, var_0, select(select(!select(global0.c, global3.c, global3.c), vec4<bool>(true, u_input.d >= 0u, u_input.b > global0.a.b, true), global0.a.c), !vec4<bool>(true, global2.x, global0.c.x, false), vec4<bool>(false, ~1u <= global3.b, global3.c.x, global2.x)), global0.a);
    let var_2 = ~firstTrailingBit(~countOneBits(vec4<u32>(u_input.d, global0.a.b, 1u, global3.b)));
    global3 = Struct_1((vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(global0.b.zw, vec2<i32>(global3.a.x, -4106i))) & select(_wgslsmith_div_vec2_i32(abs(vec2<i32>(0i, var_1.b.x)), ~vec2<i32>(2147483647i, u_input.c)), ~vec2<i32>(-21373i, 71244i), global0.a.d), var_1.a.b ^ ~u_input.d, global0.d.c, var_1.d.d);
    global1 = ~var_1.d.b;
    return var_0.x < (abs(_wgslsmith_div_i32(0i, global0.a.a.x)) >> (abs(4294967295u) % 32u));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> bool {
    global3 = global0.d;
    return all(!(!vec4<bool>(false, false, func_3(), true && global2.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global0 = Struct_2(arg_1.d, _wgslsmith_div_vec4_i32(arg_1.b, _wgslsmith_add_vec4_i32(firstLeadingBit(global0.b), vec4<i32>(max(-27633i, 1i), 3550i, -23895i ^ u_input.c, -26300i))), !vec4<bool>(-498f >= _wgslsmith_f_op_f32(arg_3 * 1000f), !arg_0.d, all(vec2<bool>(global2.x, global0.d.d)), arg_1.a.c.x), Struct_1(_wgslsmith_mult_vec2_i32(global3.a, abs(vec2<i32>(30205i, -9811i))), ~arg_2.b, select(vec4<bool>(false, !arg_1.a.c.x, !arg_0.c.x, true), select(arg_2.c, select(vec4<bool>(true, false, arg_2.c.x, global3.d), arg_1.c, global3.d), vec4<bool>(global0.d.c.x, arg_0.d, true, arg_2.c.x)), select(!vec4<bool>(false, global3.d, false, arg_2.c.x), global0.d.c, !arg_0.c)), !(!(!global3.c.x))));
    global1 = global0.a.b;
    return Struct_1(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, arg_2.a.x) >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)), countOneBits(vec2<i32>(1557i, 27619i)) | vec2<i32>(arg_1.b.x, 0i), select(vec2<i32>(-23667i, arg_1.d.a.x), vec2<i32>(-2147483647i, global0.b.x), global2.x) & _wgslsmith_mod_vec2_i32(global3.a, vec2<i32>(0i, -2147483647i))), _wgslsmith_dot_vec3_u32(vec3<u32>(0u << (global3.b % 32u), u_input.a.x, min(1u, 4294967295u)), _wgslsmith_add_vec3_u32(firstLeadingBit(abs(vec3<u32>(0u, arg_1.d.b, global0.a.b))), firstLeadingBit(vec3<u32>(arg_0.b, arg_1.d.b, u_input.a.x)))), arg_2.c, !(1u < (arg_0.b >> (~0u % 32u))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = -681f;
    var var_1 = Struct_2(func_4(Struct_1(vec2<i32>(-2147483647i, arg_1.x) ^ global0.b.xx, global3.b, vec4<bool>(all(arg_0), func_2(vec3<i32>(global0.d.a.x, arg_1.x, 0i), 52522u), global2.x, all(global0.d.c.xz)), true), Struct_2(global0.d, vec4<i32>(_wgslsmith_mult_i32(-1i, global0.d.a.x), _wgslsmith_mod_i32(34912i, arg_1.x), -1i, global3.a.x), !select(vec4<bool>(false, global2.x, arg_0.x, true), vec4<bool>(false, global3.d, true, global2.x), false), Struct_1(~vec2<i32>(global0.d.a.x, -1i), ~u_input.d, !vec4<bool>(global3.d, global3.c.x, false, false), all(vec3<bool>(false, true, false)))), Struct_1(abs(_wgslsmith_mult_vec2_i32(global0.b.yz, vec2<i32>(31820i, -1i))), min(min(u_input.b, global3.b), countOneBits(81158u)), global3.c, true || arg_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-141f - -195f))))), _wgslsmith_div_vec4_i32(vec4<i32>(-10322i, -_wgslsmith_div_i32(1i, arg_1.x), 0i, ~firstLeadingBit(-1i)), max(-(global0.b | arg_1), vec4<i32>(1i, i32(-1i) * -2147483647i, -2147483647i, 49897i))), vec4<bool>(~u_input.b != max(global3.b, 28083u), false, false, all(global3.c)), global0.a);
    let var_2 = func_4(Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(-18237i, global0.b.x), ~vec2<i32>(-1i, -9097i) >> (u_input.a % vec2<u32>(32u))), ~0u, vec4<bool>(arg_0.x, var_1.c.x, !var_1.d.d && true, any(vec2<bool>(true, true))), !all(global0.a.c.yyw)), Struct_2(func_4(Struct_1(vec2<i32>(0i, -1i), _wgslsmith_div_u32(global3.b, global0.a.b), select(vec4<bool>(true, arg_0.x, var_1.c.x, global0.a.d), vec4<bool>(arg_0.x, arg_0.x, global0.c.x, true), false), true), Struct_2(Struct_1(vec2<i32>(u_input.c, 1i), u_input.d, var_1.d.c, var_1.a.c.x), firstLeadingBit(vec4<i32>(-1i, -1385i, 9582i, -2003i)), vec4<bool>(false, true, global2.x, arg_0.x), Struct_1(arg_1.yx, global0.a.b, var_1.a.c, true)), Struct_1(select(arg_1.yy, arg_1.wx, vec2<bool>(global0.c.x, arg_0.x)), u_input.d, vec4<bool>(true, false, true, true), false), -1901f), arg_1, global0.d.c, Struct_1(vec2<i32>(func_4(var_1.a, Struct_2(var_1.d, var_1.b, var_1.d.c, Struct_1(var_1.d.a, global3.b, vec4<bool>(global0.d.d, arg_0.x, false, arg_0.x), global3.c.x)), Struct_1(global3.a, global0.a.b, vec4<bool>(false, var_1.d.d, false, true), false), -1191f).a.x, global0.b.x), abs(global0.a.b) & ~var_1.d.b, var_1.d.c, true)), Struct_1(~(~arg_1.ww) << (vec2<u32>(u_input.b, 0u << (u_input.b % 32u)) % vec2<u32>(32u)), global3.b, global0.a.c, global0.a.a.x == u_input.c), 1f).c.xx;
    let var_3 = Struct_1(vec2<i32>(~(-(i32(-1i) * -28339i)), -var_1.b.x), _wgslsmith_mult_u32(~global0.d.b, ~(~1u)), global0.c, any(!global3.c.yxy));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(floor(-1691f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -954f, var_1.a.c.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1074f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(411f, 521f) - _wgslsmith_div_f32(690f, -234f)))));
    return global0.d;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32, arg_3: u32) -> bool {
    global0 = arg_1;
    var var_0 = Struct_2(func_4(func_4(func_4(Struct_1(arg_0.a, 15773u, vec4<bool>(global0.c.x, true, false, true), global2.x), Struct_2(Struct_1(vec2<i32>(arg_1.d.a.x, 110454i), 1u, global3.c, global2.x), global0.b, arg_0.c, global0.a), arg_1.d, _wgslsmith_f_op_f32(select(-1072f, 690f, false))), arg_1, func_1(vec3<bool>(arg_1.a.c.x, arg_1.a.d, true), vec4<i32>(arg_0.a.x, arg_0.a.x, u_input.c, 0i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1258f)) - _wgslsmith_f_op_f32(f32(-1f) * -1086f))), Struct_2(arg_0, arg_1.b, select(select(global0.a.c, vec4<bool>(global2.x, arg_1.a.d, true, arg_1.d.d), vec4<bool>(false, arg_1.d.d, false, arg_0.c.x)), !vec4<bool>(true, global2.x, global3.c.x, true), !arg_0.c.x), func_1(global3.c.yyz, select(vec4<i32>(arg_1.b.x, global0.d.a.x, 2147483647i, -51346i), vec4<i32>(arg_1.d.a.x, 2147483647i, 57672i, arg_1.b.x), vec4<bool>(global0.a.d, false, true, false)))), func_4(Struct_1(arg_1.b.xz & arg_1.b.xz, global3.b, !vec4<bool>(false, true, global3.d, arg_1.d.d), any(global3.c.zw)), Struct_2(arg_0, -vec4<i32>(2147483647i, 0i, arg_0.a.x, 1i), select(vec4<bool>(false, false, arg_0.d, global0.a.d), vec4<bool>(true, global0.d.d, global3.d, true), vec4<bool>(global0.d.d, arg_1.d.c.x, arg_1.d.d, global0.a.d)), Struct_1(vec2<i32>(16098i, u_input.c), 4294967295u, global3.c, global3.d)), arg_1.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -825f), _wgslsmith_f_op_f32(trunc(382f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-196f + 1098f)), _wgslsmith_f_op_f32(-1f)))), min(vec4<i32>(-12137i, _wgslsmith_dot_vec4_i32(vec4<i32>(5943i, global0.b.x, u_input.c, -7962i), arg_1.b) >> (~4294967295u % 32u), _wgslsmith_div_i32(_wgslsmith_div_i32(2147483647i, arg_0.a.x), arg_1.b.x), -(~global3.a.x)), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(arg_1.d.a.x, -1i, arg_1.b.x, arg_0.a.x)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.d.b, arg_0.b, u_input.d, arg_3), vec4<u32>(u_input.a.x, arg_1.a.b, 4294967295u, 25807u), vec4<u32>(arg_1.d.b, 1u, arg_2, arg_1.d.b)) % vec4<u32>(32u)), -vec4<i32>(2147483647i, 0i, arg_1.b.x, -2147483647i))), !select(vec4<bool>(!global3.d, true, true, any(arg_1.c.xy)), func_4(func_4(arg_1.d, arg_1, global0.d, -486f), arg_1, arg_0, _wgslsmith_div_f32(-304f, 860f)).c, func_4(func_4(global0.a, Struct_2(arg_0, vec4<i32>(arg_1.a.a.x, arg_0.a.x, 2147483647i, 1i), arg_0.c, global0.d), global0.a, -1614f), Struct_2(Struct_1(vec2<i32>(17279i, arg_0.a.x), u_input.b, vec4<bool>(true, false, arg_1.d.d, arg_1.c.x), false), arg_1.b, vec4<bool>(global0.d.c.x, false, global3.d, global3.d), arg_0), func_1(global0.c.yyx, vec4<i32>(global0.d.a.x, arg_0.a.x, 1i, 16562i)), _wgslsmith_f_op_f32(select(994f, -824f, false))).c), func_4(func_4(Struct_1(global0.d.a ^ global3.a, ~arg_1.d.b, vec4<bool>(false, arg_1.d.d, global0.a.c.x, arg_1.c.x), global2.x), arg_1, arg_0, -1206f), Struct_2(arg_1.a, abs(_wgslsmith_div_vec4_i32(vec4<i32>(-42276i, 1i, 95615i, 11669i), arg_1.b)), select(vec4<bool>(arg_1.d.d, false, global2.x, global0.c.x), !vec4<bool>(false, false, true, global2.x), arg_1.c), func_4(func_1(global0.a.c.wxx, vec4<i32>(2147483647i, 2147483647i, 2147483647i, 30101i)), arg_1, func_4(Struct_1(arg_1.a.a, arg_2, global0.a.c, global2.x), arg_1, arg_1.d, -980f), _wgslsmith_f_op_f32(max(1922f, 1536f)))), Struct_1(reverseBits(vec2<i32>(-61785i, arg_1.d.a.x) | arg_1.a.a), arg_1.a.b, !func_4(Struct_1(vec2<i32>(2147483647i, 2147483647i), arg_2, vec4<bool>(arg_0.d, true, global2.x, false), global0.c.x), arg_1, Struct_1(vec2<i32>(global3.a.x, -14990i), 45081u, global0.c, global0.a.d), -662f).c, arg_1.a.c.x), _wgslsmith_div_f32(_wgslsmith_div_f32(224f, 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(199f + 716f)))));
    global2 = select(vec3<bool>(func_4(func_4(func_1(arg_0.c.yyx, var_0.b), arg_1, func_4(Struct_1(vec2<i32>(var_0.a.a.x, u_input.c), arg_0.b, var_0.a.c, global3.d), arg_1, Struct_1(vec2<i32>(8017i, -34795i), 0u, vec4<bool>(var_0.d.c.x, true, false, arg_0.c.x), var_0.d.d), -160f), _wgslsmith_f_op_f32(round(-1914f))), arg_1, func_4(Struct_1(vec2<i32>(0i, arg_0.a.x), 8445u, vec4<bool>(false, true, arg_1.d.c.x, arg_0.d), global3.d), arg_1, global0.d, _wgslsmith_f_op_f32(f32(-1f) * -804f)), -1344f).d, !var_0.c.x, _wgslsmith_f_op_f32(-299f - _wgslsmith_f_op_f32(f32(-1f) * -359f)) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1588f * -1860f)))), !arg_0.c.yxw, any(func_1(select(select(arg_0.c.yzy, global3.c.zxz, true), !vec3<bool>(global3.d, true, global0.c.x), global0.a.c.x && global2.x), ~(~vec4<i32>(global0.a.a.x, 1i, global0.a.a.x, global3.a.x))).c));
    var var_1 = var_0.d;
    var var_2 = Struct_2(arg_0, arg_1.b, !func_4(func_4(func_4(arg_0, Struct_2(Struct_1(arg_0.a, 73786u, vec4<bool>(false, true, false, true), false), arg_1.b, arg_1.c, Struct_1(global0.a.a, 52805u, arg_0.c, global2.x)), Struct_1(vec2<i32>(u_input.c, -16700i), global3.b, global0.d.c, global2.x), 504f), Struct_2(var_0.a, arg_1.b, arg_1.c, arg_1.d), func_1(global3.c.zxz, vec4<i32>(u_input.c, var_1.a.x, 12033i, u_input.c)), _wgslsmith_f_op_f32(1774f * 185f)), arg_1, func_4(Struct_1(vec2<i32>(1i, 0i), var_0.d.b, arg_1.c, var_1.c.x), Struct_2(Struct_1(vec2<i32>(arg_0.a.x, 39078i), 38691u, arg_0.c, arg_1.c.x), vec4<i32>(-2147483647i, 0i, -13644i, global3.a.x), arg_1.a.c, Struct_1(vec2<i32>(-14678i, -2147483647i), global3.b, vec4<bool>(false, true, arg_0.c.x, var_0.a.d), global3.d)), func_1(var_1.c.wwy, vec4<i32>(global3.a.x, -1i, global0.b.x, -1i)), -1115f), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(289f + 1281f))).c, func_4(Struct_1(var_0.a.a, ~_wgslsmith_clamp_u32(42380u, 4330u, global0.a.b), !func_4(arg_0, arg_1, arg_1.a, -270f).c, global3.c.x), Struct_2(func_4(func_1(var_1.c.zyw, vec4<i32>(var_0.d.a.x, arg_0.a.x, 0i, arg_0.a.x)), arg_1, Struct_1(vec2<i32>(-3050i, -13780i), arg_0.b, vec4<bool>(global2.x, global2.x, global0.a.d, var_0.c.x), true), -692f), global0.b, !select(vec4<bool>(false, true, arg_0.d, false), var_0.d.c, vec4<bool>(arg_0.d, arg_1.c.x, arg_0.d, false)), func_1(vec3<bool>(true, true, false), vec4<i32>(-8637i, -2147483647i, -2147483647i, var_0.b.x))), func_4(arg_0, arg_1, Struct_1(-vec2<i32>(u_input.c, -1i), ~0u, vec4<bool>(global3.d, var_1.c.x, global2.x, var_0.c.x), true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(309f * 509f), _wgslsmith_f_op_f32(floor(1245f))))), _wgslsmith_f_op_f32(391f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-338f + 2598f)))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !vec3<bool>(func_5(func_1(vec3<bool>(true, true, true), -global0.b), Struct_2(Struct_1(global3.a, 10436u, global3.c, global3.c.x), vec4<i32>(1i, global3.a.x, 2147483647i, global0.b.x), global3.c, func_1(vec3<bool>(global3.c.x, false, true), vec4<i32>(global3.a.x, u_input.c, global0.b.x, 8127i))), reverseBits(4349u) >> (1u % 32u), 1u), !global0.c.x, global3.d);
    let var_0 = func_5(Struct_1(global3.a, func_1(global0.d.c.xxz, global0.b).b, select(vec4<bool>(global2.x, global0.a.a.x >= -1i, all(global3.c.yyx), global2.x), vec4<bool>(global2.x, global3.d, true, true), !select(global0.a.c, vec4<bool>(false, global2.x, false, true), false)), global3.c.x), Struct_2(func_4(global0.a, Struct_2(func_1(global0.a.c.zww, vec4<i32>(35546i, 11077i, -53650i, 13068i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, global3.a.x, -48918i, u_input.c), global0.b), select(global0.c, vec4<bool>(global2.x, true, global2.x, global2.x), true), global0.d), global0.a, 1132f), global0.b, !vec4<bool>(global2.x, global2.x, func_4(global0.d, Struct_2(global0.d, vec4<i32>(20921i, 0i, -11627i, global0.d.a.x), global3.c, Struct_1(global3.a, global0.d.b, vec4<bool>(true, false, global0.a.d, global3.c.x), true)), Struct_1(vec2<i32>(1i, -8589i), 40533u, global3.c, true), 547f).c.x, false), func_1(global0.c.yzw, global0.b)), max(select(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.b, global3.b, 23347u), _wgslsmith_add_vec3_u32(vec3<u32>(global0.a.b, 6585u, 65585u), vec3<u32>(41922u, global0.a.b, 0u))), ~_wgslsmith_mult_u32(u_input.d, global3.b), global0.a.c.x), 14037u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 7042u, 1u, 0u | (0u & global3.b)), _wgslsmith_add_vec4_u32(select(countOneBits(vec4<u32>(global3.b, global0.a.b, 55233u, 20010u)), vec4<u32>(4294967295u, global0.d.b, global3.b, 53098u), true), select(~vec4<u32>(38052u, global3.b, 1u, 34311u), vec4<u32>(global3.b, global0.a.b, 4645u, 57808u) & vec4<u32>(2809u, global0.d.b, u_input.b, 49202u), global3.c))));
    global1 = ~55893u;
    global0 = Struct_2(global0.a, -vec4<i32>(i32(-1i) * -1i, i32(-1i) * -23628i, _wgslsmith_add_i32(~18089i, abs(global0.d.a.x)), 0i), !vec4<bool>(global0.d.c.x || global2.x, all(vec3<bool>(false, true, global3.c.x)), all(!vec4<bool>(true, true, global0.a.c.x, global0.a.d)), true), Struct_1(vec2<i32>(-1i) * -countOneBits(global3.a), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, 0u, 4294967295u, global3.b)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(28425u, 0u, global0.d.b, global0.a.b), vec4<u32>(25039u, global3.b, u_input.d, global0.d.b))), !global0.a.c, func_2(vec3<i32>(global3.a.x, 13587i, global3.a.x) ^ max(vec3<i32>(-4588i, global3.a.x, 21211i), global0.b.yzy), ~_wgslsmith_sub_u32(4294967295u, 1u))));
    let var_1 = Struct_2(global0.a, _wgslsmith_sub_vec4_i32(vec4<i32>(abs(0i), ~1i, -2147483647i, ~46221i), min(-vec4<i32>(-1i, global3.a.x, -2147483647i, 2147483647i), ~global0.b)) | vec4<i32>(_wgslsmith_add_i32(global3.a.x, _wgslsmith_dot_vec2_i32(global0.d.a, vec2<i32>(u_input.c, u_input.c))), -(~u_input.c), ~1i, ~(~20297i)), vec4<bool>(func_5(Struct_1(global3.a, min(30083u, 32629u), global3.c, global3.b > 1u), Struct_2(Struct_1(global3.a, u_input.b, vec4<bool>(global0.c.x, global0.a.c.x, false, global0.a.d), true), _wgslsmith_clamp_vec4_i32(global0.b, global0.b, vec4<i32>(1i, global3.a.x, global0.a.a.x, 1i)), vec4<bool>(true, true, global0.c.x, global3.d), func_4(Struct_1(global0.b.yx, 4294967295u, global3.c, var_0), Struct_2(Struct_1(vec2<i32>(36988i, -1i), global3.b, global0.d.c, var_0), global0.b, global3.c, Struct_1(global3.a, 65057u, global0.c, false)), global0.a, 206f)), 1u, u_input.d), true, global2.x, true), func_1(!func_4(func_1(global3.c.yzx, vec4<i32>(global3.a.x, global3.a.x, 0i, global3.a.x)), Struct_2(Struct_1(vec2<i32>(33416i, global0.a.a.x), global3.b, vec4<bool>(false, false, global0.c.x, false), global0.c.x), global0.b, vec4<bool>(true, false, global3.c.x, global2.x), Struct_1(global3.a, global3.b, global3.c, true)), func_4(global0.d, Struct_2(Struct_1(vec2<i32>(u_input.c, global0.a.a.x), 0u, global3.c, false), vec4<i32>(global0.d.a.x, global3.a.x, 2147483647i, -48924i), global0.c, global0.a), global0.a, -988f), -1941f).c.wzy, _wgslsmith_div_vec4_i32(global0.b, firstTrailingBit(_wgslsmith_add_vec4_i32(global0.b, vec4<i32>(-17426i, global3.a.x, 22131i, 0i))))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.b.www, u_input.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 521f) * vec2<f32>(119f, -1000f)))))), vec4<i32>(min(-1i, 1i & (global0.a.a.x | global0.d.a.x)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(39096i, var_1.b.x), vec2<i32>(59164i, -1i)) | global0.a.a.x, -min(u_input.c, var_1.d.a.x) << ((_wgslsmith_clamp_u32(581u, u_input.d, 0u) << (_wgslsmith_add_u32(18863u, 6009u) % 32u)) % 32u), firstTrailingBit(min(16058i, _wgslsmith_sub_i32(global3.a.x, global3.a.x)))), _wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(-859f, _wgslsmith_f_op_f32(f32(-1f) * -1487f))));
}

