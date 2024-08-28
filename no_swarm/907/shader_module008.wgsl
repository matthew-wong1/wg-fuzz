struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = arg_2.a.x;
    let var_1 = !arg_2.b.x;
    var var_2 = arg_2;
    var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.a) - arg_2.a), !(!vec2<bool>(arg_2.b.x, any(vec2<bool>(false, true)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(1622f)), arg_2.a.x), _wgslsmith_f_op_vec2_f32(ceil(arg_1))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(524f, -234f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -112f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.x, arg_0), var_2.a) - _wgslsmith_f_op_vec2_f32(-arg_2.a)))), arg_2.a));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0), -465f)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-878f, _wgslsmith_f_op_f32(sign(var_0))), _wgslsmith_f_op_vec2_f32(select(arg_2.a, arg_2.a, arg_2.b))))));
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = -min(-1i, 0i);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1292f, -357f), vec2<f32>(1593f, -2326f))))) * vec2<f32>(_wgslsmith_f_op_f32(step(-336f, -1103f)), _wgslsmith_f_op_f32(min(205f, -1096f)))), _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(443f, 597f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1031f, 136f))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(582f, -1000f)), vec2<bool>(true, true)))))), select(vec2<bool>(true, true), vec2<bool>(true, !(arg_0.x > arg_0.x)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(u_input.a.x == 0i, true), !select(vec2<bool>(false, true), vec2<bool>(true, false), true))));
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.x, var_1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -695f)), select(vec2<bool>(true, true), var_1.b, any(select(select(var_1.b, vec2<bool>(true, false), var_1.b), select(var_1.b, vec2<bool>(var_1.b.x, var_1.b.x), false), var_1.b.x))));
    var_2 = Struct_1(var_2.a, select(!(!var_2.b), select(vec2<bool>(1i == u_input.a.x, select(true, var_2.b.x, var_2.b.x)), select(select(vec2<bool>(false, var_1.b.x), var_2.b, var_1.b), !vec2<bool>(var_1.b.x, true), select(var_1.b, var_2.b, false)), select(select(var_2.b, var_2.b, var_2.b.x), !var_2.b, true)), false));
    let var_3 = ~(max(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.x, 4294967295u, arg_0.x), vec3<u32>(arg_0.x, arg_0.x, 0u)), vec3<u32>(arg_0.x, 0u, arg_0.x)) << (vec3<u32>(reverseBits(arg_0.x), arg_0.x, countOneBits(1u)) % vec3<u32>(32u))) >> (vec3<u32>(min(~arg_0.x >> ((arg_0.x << (arg_0.x % 32u)) % 32u), ~(~arg_0.x)), _wgslsmith_dot_vec3_u32(max(countOneBits(vec3<u32>(8953u, arg_0.x, 4294967295u)), _wgslsmith_sub_vec3_u32(vec3<u32>(17511u, arg_0.x, arg_0.x), vec3<u32>(31660u, 1u, arg_0.x))), firstTrailingBit(vec3<u32>(4294967295u, 53148u, 6943u))), ~(~(~arg_0.x))) % vec3<u32>(32u));
    return Struct_1(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3(-358f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(1702f, var_1.a, Struct_1(var_1.a, var_1.b))) + vec2<f32>(404f, -590f)), Struct_1(vec2<f32>(var_2.a.x, var_1.a.x), vec2<bool>(var_2.b.x, true)))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.a.x + 921f))) + var_1.a.x)), select(var_1.b, var_2.b, select(var_2.b, !(!var_2.b), var_2.b)));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = Struct_2(!any(select(vec4<bool>(arg_1.c.b.x, true, true, arg_2), vec4<bool>(arg_2, arg_1.c.b.x, true, arg_2), arg_3.b.x)), ~vec3<u32>(_wgslsmith_clamp_u32(1u, 78699u << (arg_0 % 32u), abs(68363u)), 60875u, 55657u), func_2(firstTrailingBit(abs(vec2<u32>(1u, arg_0) | arg_1.b.yz))));
    var var_1 = select(select(select(vec4<bool>(any(vec4<bool>(arg_1.a, true, true, arg_2)), false, any(vec4<bool>(arg_1.c.b.x, arg_1.a, var_0.a, false)), var_0.b.x > arg_1.b.x), !select(vec4<bool>(arg_3.b.x, false, false, arg_3.b.x), vec4<bool>(false, arg_3.b.x, arg_1.a, arg_1.a), var_0.a), false), !(!select(vec4<bool>(var_0.c.b.x, var_0.c.b.x, arg_1.a, arg_3.b.x), vec4<bool>(false, true, false, var_0.c.b.x), arg_1.a)), select(select(select(vec4<bool>(true, true, true, arg_3.b.x), vec4<bool>(false, false, arg_1.a, false), arg_1.a), !vec4<bool>(true, arg_3.b.x, arg_1.c.b.x, arg_1.a), select(vec4<bool>(arg_3.b.x, arg_3.b.x, var_0.a, arg_1.c.b.x), vec4<bool>(var_0.a, false, var_0.c.b.x, true), vec4<bool>(arg_2, arg_1.c.b.x, var_0.a, arg_2))), vec4<bool>(false, true, !arg_1.c.b.x, true), !vec4<bool>(false, true, true, arg_2))), select(select(!select(vec4<bool>(var_0.a, true, arg_1.c.b.x, true), vec4<bool>(arg_1.c.b.x, true, false, arg_2), vec4<bool>(arg_1.a, arg_1.c.b.x, arg_1.c.b.x, arg_3.b.x)), !select(vec4<bool>(var_0.c.b.x, arg_3.b.x, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, arg_3.b.x, false, arg_2)), true), !vec4<bool>(func_2(arg_1.b.yy).b.x, any(arg_3.b), arg_1.b.x == 1u, arg_2), false), false);
    var_0 = arg_1;
    let var_2 = select(u_input.a.x, abs(u_input.a.x), var_1.x);
    let var_3 = vec3<u32>(4294967295u, ~1u, abs(_wgslsmith_mult_u32(~4294967295u, ~abs(arg_1.b.x))));
    return -vec3<i32>(~(-42041i & _wgslsmith_mod_i32(var_2, 368i)), select(~var_2, countOneBits(var_2), func_2(_wgslsmith_mod_vec2_u32(var_0.b.yz, vec2<u32>(4294967295u, 0u))).b.x), _wgslsmith_mod_i32(u_input.a.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -1i, u_input.a.x, var_2), vec4<i32>(5202i, 3153i, var_2, u_input.a.x))));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = true;
    var var_1 = arg_3.c;
    var var_2 = reverseBits(-vec3<i32>(arg_0.x, _wgslsmith_mult_i32(_wgslsmith_sub_i32(arg_0.x, -12148i), u_input.a.x), 12146i));
    var var_3 = _wgslsmith_sub_u32(arg_1.x << (arg_1.x % 32u), 1u);
    let var_4 = func_2(vec2<u32>(arg_3.b.x, ~_wgslsmith_div_u32(select(1u, 24984u, false), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 4294967295u, arg_3.b.x), vec3<u32>(0u, 0u, 0u)))));
    return arg_3;
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = !arg_0;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-420f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3160f))));
    let var_2 = func_5(_wgslsmith_sub_vec3_i32(func_4(~1u, Struct_2(any(vec2<bool>(arg_0, true)), vec3<u32>(1u, 1u, 1u), func_2(vec2<u32>(3937u, 4294967295u))), func_2(vec2<u32>(0u, 5113u)).b.x, func_2(select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 11655u), vec2<bool>(false, false)))), _wgslsmith_sub_vec3_i32(vec3<i32>(~u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, -1i), u_input.a.x), vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), u_input.a.x >> (4294967295u % 32u), -8287i))), select(_wgslsmith_div_vec3_u32(~vec3<u32>(48403u, 0u, 0u), max(vec3<u32>(1u, 1u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1u, 41357u), vec3<u32>(42185u, 1u, 1u)))), firstLeadingBit(~vec3<u32>(2777u, 44035u, 30549u)) << (firstTrailingBit(vec3<u32>(1u, 0u, 22824u)) % vec3<u32>(32u)), arg_0), select(select(!(!vec4<bool>(true, var_0, true, arg_0)), !select(vec4<bool>(false, arg_0, false, false), vec4<bool>(arg_0, var_0, false, false), vec4<bool>(arg_0, var_0, var_0, arg_0)), vec4<bool>(any(vec3<bool>(false, var_0, false)), any(vec2<bool>(arg_0, true)), false, true)), !(!select(vec4<bool>(var_0, true, true, true), vec4<bool>(true, var_0, false, arg_0), false)), true), Struct_2(!(arg_0 | (var_0 && false)), _wgslsmith_clamp_vec3_u32(vec3<u32>(75007u, 6717u, 37580u), ~vec3<u32>(1u, 0u, 0u), vec3<u32>(6918u, 52592u, 1u)) | vec3<u32>(firstTrailingBit(1u), 1u, ~46701u), func_2(_wgslsmith_add_vec2_u32(vec2<u32>(27292u, 66006u), vec2<u32>(15337u, 40198u)))));
    var var_3 = Struct_1(var_2.c.a, vec2<bool>(any(!(!vec2<bool>(true, var_0))), false));
    let var_4 = Struct_2(any(vec4<bool>(!var_3.b.x, arg_0, any(vec4<bool>(arg_0, var_0, var_0, var_3.b.x)), -517f == var_3.a.x)) | false, vec3<u32>(4294967295u, _wgslsmith_sub_u32(~0u, firstLeadingBit(1u)), var_2.b.x) | (var_2.b | _wgslsmith_div_vec3_u32(var_2.b, vec3<u32>(1u, 63816u, 32046u))), func_2(countOneBits(var_2.b.zz)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.c.a.x, 2870f), var_3.a))) - var_4.c.a))), vec2<bool>(false, any(var_3.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(true);
    let var_1 = func_5(~(~abs(~vec3<i32>(u_input.a.x, 3626i, 0i))), abs(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(51935u, 78998u, 6026u)), vec3<u32>(1u, ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 68302u, 0u), vec3<u32>(13465u, 1u, 21891u))))), select(select(!(!vec4<bool>(var_0.b.x, true, true, false)), !vec4<bool>(false, var_0.b.x, var_0.b.x, true), func_2(vec2<u32>(5624u, 21584u)).b.x), !vec4<bool>(var_0.b.x, var_0.b.x, !var_0.b.x, var_0.b.x), var_0.b.x), func_5(select(func_4(~1u, func_5(vec3<i32>(55610i, 81295i, u_input.a.x), vec3<u32>(23446u, 4294967295u, 11420u), vec4<bool>(true, true, true, true), Struct_2(true, vec3<u32>(1u, 88611u, 46456u), Struct_1(var_0.a, vec2<bool>(true, false)))), all(vec4<bool>(var_0.b.x, false, true, var_0.b.x)), func_2(vec2<u32>(1u, 1u))), vec3<i32>(max(u_input.a.x, u_input.a.x), reverseBits(31030i), u_input.a.x), vec3<bool>(var_0.b.x, var_0.b.x, true)), max(_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, 4294967295u, 28524u)), vec3<u32>(4294967295u, 4294967295u, 16565u)), vec3<u32>(1u, 1u, 1u)), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, var_0.b.x, false, false), vec4<bool>(var_0.b.x, false, false, true), var_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, true, var_0.b.x), select(vec4<bool>(var_0.b.x, true, var_0.b.x, var_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), true)), var_0.b.x), func_5(reverseBits(vec3<i32>(-2147483647i, u_input.a.x, 1i)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(37656u, 0u), vec2<u32>(44245u, 1u)), abs(0u), 35816u), vec4<bool>(!var_0.b.x, func_2(vec2<u32>(7581u, 23875u)).b.x, true, false), Struct_2(!var_0.b.x, firstLeadingBit(vec3<u32>(40251u, 7867u, 48142u)), var_0)))).c;
    var var_2 = max(min(vec4<i32>(firstLeadingBit(u_input.a.x), select(1i, u_input.a.x, false), _wgslsmith_add_i32(2501i, u_input.a.x), select(u_input.a.x, u_input.a.x, true)) ^ firstTrailingBit(countOneBits(vec4<i32>(7108i, u_input.a.x, -15342i, 7730i))), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, -32894i, -1i, u_input.a.x), vec4<i32>(u_input.a.x, -1711i, 4965i, u_input.a.x)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(30546u, 65959u, 4294967295u, 4294967295u), vec4<u32>(99551u, 4294967295u, 19845u, 12526u), vec4<u32>(1u, 51631u, 4294967295u, 25709u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(1776i, 25935i, 52409i, u_input.a.x), vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, -1i) & vec4<i32>(-43952i, u_input.a.x, 1i, u_input.a.x)))), -countOneBits(vec4<i32>(-9034i, 2147483647i, u_input.a.x, -1i) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -7541i, u_input.a.x, -16796i), vec4<i32>(-1i, 0i, 1i, u_input.a.x))));
    var var_3 = _wgslsmith_sub_u32(1u, _wgslsmith_div_u32(~(~_wgslsmith_add_u32(1u, 27124u)), ~_wgslsmith_mod_u32(firstTrailingBit(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(63119u, 48394u), vec2<u32>(0u, 11125u)))));
    var var_4 = select(vec4<bool>(all(select(!var_0.b, var_1.b, func_2(vec2<u32>(54667u, 1u)).b.x)), !all(vec4<bool>(var_0.b.x, false, var_1.b.x, var_1.b.x)), var_0.b.x, func_5(var_2.zyy, ~(~vec3<u32>(46390u, 0u, 6599u)), !vec4<bool>(false, var_1.b.x, var_0.b.x, true), func_5(var_2.xzz, vec3<u32>(1u, 1u, 1u), select(vec4<bool>(true, var_0.b.x, var_0.b.x, true), vec4<bool>(false, true, var_1.b.x, true), var_1.b.x), func_5(var_2.wyy, vec3<u32>(15434u, 4294967295u, 1u), vec4<bool>(var_1.b.x, true, var_1.b.x, true), Struct_2(true, vec3<u32>(4294967295u, 19263u, 4294967295u), Struct_1(var_1.a, var_1.b))))).a), vec4<bool>(true, !(!(!var_0.b.x)), !((var_2.x >= 2147483647i) && all(vec4<bool>(var_1.b.x, false, var_0.b.x, var_1.b.x))), var_1.b.x), false);
    var var_5 = func_1(true);
    var var_6 = firstLeadingBit(30713u);
    var var_7 = abs(u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, vec3<f32>(865f, -1208f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-270f))))), select(vec4<i32>(_wgslsmith_sub_i32(var_2.x, -6582i), 0i, var_2.x, ~u_input.a.x), abs(vec4<i32>(var_2.x, u_input.a.x, -1i, var_2.x)), any(vec4<bool>(true, var_1.b.x, true, false))) | (-max(vec4<i32>(var_2.x, u_input.a.x, u_input.a.x, var_2.x), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, var_2.x)) ^ (reverseBits(vec4<i32>(-3983i, u_input.a.x, var_2.x, var_2.x)) << (vec4<u32>(51676u, 1u, 1u, 1u) % vec4<u32>(32u)))), 1u, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.a.x - -870f)))));
}

