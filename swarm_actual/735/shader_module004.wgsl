struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<bool>,
    d: Struct_2,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_3 = Struct_3(Struct_1(vec2<u32>(57491u, 18219u), vec2<i32>(2147483647i, -1i), 46181u, vec4<u32>(19576u, 4294967295u, 49146u, 0u), false), Struct_2(Struct_1(vec2<u32>(32210u, 0u), vec2<i32>(0i, 46401i), 0u, vec4<u32>(62149u, 48133u, 10423u, 53721u), false), vec2<u32>(24678u, 0u), Struct_1(vec2<u32>(24064u, 41370u), vec2<i32>(9136i, 0i), 43366u, vec4<u32>(4629u, 4294967295u, 25703u, 0u), true)), vec3<bool>(true, false, true), Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u), vec2<i32>(-35084i, -34105i), 1u, vec4<u32>(49043u, 6873u, 0u, 82924u), true), vec2<u32>(1u, 52499u), Struct_1(vec2<u32>(1u, 56366u), vec2<i32>(-63720i, -1i), 1u, vec4<u32>(4294967295u, 1u, 49296u, 39196u), true)), vec4<bool>(false, false, false, false));

var<private> global2: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_2) -> i32 {
    global1 = Struct_3(arg_2.a, Struct_2(arg_2.a, vec2<u32>(u_input.a, ~arg_2.c.d.x), global1.d.a), global1.e.ywz, Struct_2(Struct_1(max(_wgslsmith_div_vec2_u32(global0.c.a, vec2<u32>(arg_2.a.c, global0.b.x)), global1.a.a), -vec2<i32>(global0.a.b.x, 9671i), ~(arg_2.b.x | 1u), ~global1.a.d, true), ~arg_2.c.d.yz, Struct_1(~firstLeadingBit(vec2<u32>(global0.a.c, arg_2.b.x)), firstLeadingBit(_wgslsmith_add_vec2_i32(arg_2.c.b, arg_2.c.b)), ~reverseBits(0u), vec4<u32>(~arg_2.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, global1.b.c.a.x, 0u), vec4<u32>(global0.a.a.x, global0.c.c, 0u, u_input.a)), _wgslsmith_add_u32(u_input.a, 51522u), ~4294967295u), global2.x)), vec4<bool>(false, false, global0.c.e, select(true, select(select(false, arg_2.c.e, false), 62880i <= global1.a.b.x, all(global1.c.zx)), true)));
    global1 = Struct_3(Struct_1(~global0.a.d.zy, ~(~global0.a.b), global0.a.c, global0.c.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-786f))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(625f + arg_0), _wgslsmith_f_op_f32(min(arg_0, -849f)))), Struct_2(Struct_1(vec2<u32>(~26759u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.a.x, arg_2.a.a.x), global1.d.a.a)), select(global0.a.b, vec2<i32>(global0.a.b.x, 20067i), false), u_input.a << (_wgslsmith_mod_u32(0u, global0.b.x) % 32u), ~firstTrailingBit(global1.d.a.d), true), global1.a.d.xy, Struct_1(arg_2.a.a, _wgslsmith_sub_vec2_i32(global0.c.b, vec2<i32>(global1.b.c.b.x, -2147483647i)) << (countOneBits(global1.d.b) % vec2<u32>(32u)), 0u, global1.d.c.d, any(vec2<bool>(arg_1.x, true)))), select(select(select(global1.c, vec3<bool>(false, false, global0.a.e), arg_1.xww), !(!arg_1.zww), select(vec3<bool>(false, global2.x, global1.e.x), select(vec3<bool>(false, false, arg_2.c.e), global1.e.wzx, false), true || global1.e.x)), global1.c, select(global1.c, !(!arg_1.zyz), select(vec3<bool>(arg_2.c.e, global2.x, false), !arg_1.xzz, false))), Struct_2(Struct_1(~(~vec2<u32>(global0.b.x, arg_2.c.c)), global0.a.b << (max(global1.a.a, global0.a.a) % vec2<u32>(32u)), countOneBits(19152u), vec4<u32>(_wgslsmith_add_u32(u_input.a, 4294967295u), 7698u, global0.a.a.x, _wgslsmith_mod_u32(global1.b.c.d.x, 5478u)), global0.c.b.x >= (global1.d.a.b.x >> (arg_2.b.x % 32u))), countOneBits(global0.b), arg_2.a), !(!select(select(global1.e, arg_1, vec4<bool>(false, arg_1.x, global0.c.e, global1.e.x)), select(vec4<bool>(true, arg_1.x, true, true), global1.e, true), false)));
    global0 = Struct_2(global0.c, abs(max(min(~vec2<u32>(4294967295u, u_input.a), global1.b.a.d.wy), ~(~vec2<u32>(4294967295u, arg_2.a.d.x)))), Struct_1(vec2<u32>(global0.c.c | arg_2.c.a.x, ~(global0.c.c << (arg_2.c.d.x % 32u))), _wgslsmith_div_vec2_i32(vec2<i32>(global0.a.b.x, _wgslsmith_add_i32(global1.d.c.b.x, -2147483647i)), _wgslsmith_mult_vec2_i32(~vec2<i32>(global0.c.b.x, global1.d.a.b.x), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_2.c.b.x, -2147483647i), global1.d.c.b))), u_input.a & abs(116418u), vec4<u32>(18533u, arg_2.b.x, 0u, firstLeadingBit(~1u)), true));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(round(-337f)), !any(vec4<bool>(true, arg_2.c.e, true, true))))), _wgslsmith_f_op_f32(f32(-1f) * -108f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(sign(-1785f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_0)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-377f, arg_0)) - _wgslsmith_f_op_f32(round(-1592f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(243f, var_0.x)), arg_0))), _wgslsmith_f_op_f32(floor(var_0.x)), arg_0, arg_0)));
    return min(-(abs(global0.c.b.x) | max(~global1.b.c.b.x, _wgslsmith_sub_i32(1i, global1.d.c.b.x))), 7208i);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec2<i32>) -> f32 {
    var var_0 = global1.a.b;
    let var_1 = select((i32(-1i) * -1i) < (abs(-2147483647i) | global1.d.c.b.x), true, !(!global1.a.e));
    global0 = global1.b;
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(950f, arg_0, arg_0, arg_0) - vec4<f32>(-1328f, arg_0, -201f, -1135f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2548f, 1039f, 426f, arg_0) * vec4<f32>(arg_0, arg_0, arg_0, 1000f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 155f, -567f, _wgslsmith_div_f32(137f, arg_0))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1000f, -2238f, -375f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-753f, -336f, arg_0, arg_0))), global1.e)), !global1.e));
    var var_3 = vec3<i32>(-54064i >> (_wgslsmith_clamp_u32(arg_1.c, global0.a.c, global1.a.c) % 32u), var_0.x, _wgslsmith_mult_i32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_2.x)), !global1.e, global1.d), global0.c.b.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-866f, _wgslsmith_f_op_f32(-var_2.x))))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: f32) -> vec4<f32> {
    var var_0 = _wgslsmith_dot_vec4_u32(min(~_wgslsmith_clamp_vec4_u32(arg_1.d, vec4<u32>(u_input.a, arg_0.x, global1.d.b.x, u_input.a), arg_1.d), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.c.d.x, 4294967295u, 22089u, 73211u), arg_1.d), vec4<u32>(global0.a.d.x, global0.b.x, arg_0.x, 1u))), arg_0) | 18568u;
    var var_1 = Struct_3(global0.c, Struct_2(Struct_1(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(102657u, global1.d.a.c), vec2<u32>(global0.a.a.x, global0.a.d.x), vec2<u32>(u_input.a, arg_1.c)), vec2<u32>(arg_0.x, 57019u) | vec2<u32>(28738u, 0u)), ~vec2<i32>(global0.c.b.x, arg_1.b.x), ~global1.d.a.c, countOneBits(arg_1.d), false), max(~(~vec2<u32>(1u, global0.a.c)), max(global0.b, arg_1.a)), global0.a), global1.e.wwx, Struct_2(arg_1, vec2<u32>(~(~arg_1.c), ~max(0u, 47293u)), global0.c), vec4<bool>(true, global1.b.a.e, global1.d.a.e, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(arg_2)), arg_2)) <= _wgslsmith_f_op_f32(floor(-290f))));
    var var_2 = global2.x;
    var var_3 = arg_1.d;
    var var_4 = ~vec4<u32>(~(~max(global1.b.b.x, 77283u)), u_input.a, 2763u, ~28264u);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_2 + arg_2), _wgslsmith_f_op_f32(-arg_2), arg_2, -2071f)))));
}

fn func_5(arg_0: vec4<f32>, arg_1: u32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(215f + _wgslsmith_f_op_vec4_f32(func_4(~vec4<u32>(19156u, 56037u, 39782u, 4294967295u) << (global0.c.d % vec4<u32>(32u)), global1.a, arg_0.x)).x));
    global2 = select(global1.e.xw, vec2<bool>(global2.x, false), vec2<bool>(global1.b.a.e, true));
    var var_1 = arg_0.x;
    var var_2 = Struct_3(global0.c, Struct_2(global1.a, global1.a.a | vec2<u32>(~223u, ~u_input.a), Struct_1(global0.a.d.xy, select(global0.c.b, vec2<i32>(34222i, 37918i), all(vec2<bool>(global1.c.x, false))), 1u, reverseBits(select(vec4<u32>(0u, global0.a.d.x, 4294967295u, 4294967295u), global1.a.d, global1.d.c.e)), all(global1.e))), vec3<bool>(all(global1.e), global2.x, true | all(global1.e)), global1.b, global1.e);
    global0 = Struct_2(Struct_1(reverseBits(abs(max(vec2<u32>(global1.d.c.a.x, 54172u), vec2<u32>(var_2.b.c.d.x, 17586u)))), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(global1.b.a.b.x, global0.c.b.x, -36595i), -var_2.b.c.b.x), max(global0.a.b << (global0.c.d.yy % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(var_2.d.a.b, global0.a.b))), ~global1.d.a.a.x, vec4<u32>(global1.a.c | countOneBits(74492u), firstLeadingBit(var_2.b.a.d.x) << (~0u % 32u), _wgslsmith_dot_vec3_u32(~global1.a.d.yzx, var_2.a.d.wxx), u_input.a), true), _wgslsmith_add_vec2_u32(global1.a.a, vec2<u32>(var_2.b.b.x, _wgslsmith_mult_u32(global1.a.c, var_2.b.c.d.x))), global1.d.a);
    return Struct_3(Struct_1(~_wgslsmith_sub_vec2_u32(global1.a.d.yz ^ global0.c.a, _wgslsmith_sub_vec2_u32(global1.b.c.d.yz, vec2<u32>(global1.a.d.x, 7289u))), firstLeadingBit(global0.c.b ^ abs(vec2<i32>(var_2.d.a.b.x, global1.a.b.x))), 1594u, vec4<u32>(4294967295u, abs(17468u), 4294967295u & global0.c.c, global0.a.d.x), all(var_2.e)), global1.d, select(var_2.e.yxw, vec3<bool>(false, global0.a.e, true & global2.x), select(select(select(vec3<bool>(global1.a.e, var_2.e.x, global1.e.x), vec3<bool>(var_2.b.a.e, var_2.a.e, global2.x), global1.e.x), !var_2.c, vec3<bool>(true, var_2.d.a.e, global1.e.x)), select(global1.e.yxz, var_2.e.xwx, true), false)), global1.b, global1.e);
}

fn func_1() -> u32 {
    let var_0 = func_5(_wgslsmith_f_op_vec4_f32(func_4(global1.d.c.d, Struct_1(~(~vec2<u32>(0u, 13950u)), global0.c.b, firstLeadingBit(~4294967295u), ~(~global0.c.d), false), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(484f * 829f)), global1.b.a, vec4<i32>(50945i, -2147483647i, -4997i, global0.c.b.x << (0u % 32u)), -global0.c.b)))), _wgslsmith_dot_vec2_u32(global0.a.d.xw, global0.c.a));
    global2 = vec2<bool>(!((global0.a.b.x <= reverseBits(-2147483647i)) || global0.c.e), !(true & var_0.d.a.e));
    global2 = vec2<bool>(false, global0.c.e);
    global0 = Struct_2(var_0.d.c, var_0.b.c.d.yx, Struct_1(vec2<u32>(_wgslsmith_div_u32(global1.a.c, 55040u), global1.d.b.x), vec2<i32>(-global1.d.c.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.b.x, global1.a.b.x, 22667i, global0.c.b.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(-33407i, global1.b.c.b.x, global0.c.b.x, global0.c.b.x), vec4<i32>(var_0.b.a.b.x, 0i, -1i, var_0.b.c.b.x), vec4<i32>(global1.a.b.x, global1.d.c.b.x, -2147483647i, global1.a.b.x)))), _wgslsmith_mod_u32(62583u, ~abs(u_input.a)), global0.a.d, func_5(vec4<f32>(_wgslsmith_f_op_f32(-1067f * -488f), 223f, _wgslsmith_f_op_f32(floor(3138f)), -1328f), 0u).b.c.e));
    let var_1 = ~(~vec4<u32>(var_0.d.a.d.x >> (~global0.a.c % 32u), 72867u, ~_wgslsmith_sub_u32(4294967295u, 27341u), ~func_5(vec4<f32>(482f, -549f, 2778f, 1000f), 21275u).d.a.c));
    return firstLeadingBit(~_wgslsmith_dot_vec3_u32(global0.c.d.zxw, global1.d.c.d.zzw));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(global1.a.d.x), vec4<u32>(func_1(), global1.b.a.c, _wgslsmith_mult_u32(~4294967295u, max(u_input.a, _wgslsmith_div_u32(0u, 1u))), ~(~_wgslsmith_mod_u32(0u, 63430u))), 1i, -abs(_wgslsmith_div_vec4_i32(vec4<i32>(global1.b.a.b.x, global1.d.a.b.x, -8708i, global1.b.c.b.x) | vec4<i32>(-2147483647i, global1.d.a.b.x, global1.a.b.x, global1.d.a.b.x), select(vec4<i32>(-15521i, global0.c.b.x, global1.a.b.x, global0.c.b.x), vec4<i32>(global0.a.b.x, 17422i, global0.c.b.x, global0.a.b.x), vec4<bool>(global0.c.e, global0.a.e, global0.a.e, true)))));
}

