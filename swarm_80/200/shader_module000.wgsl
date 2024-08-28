struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<i32>) -> vec4<f32> {
    let var_0 = arg_1;
    let var_1 = var_0.b;
    let var_2 = arg_1.b;
    var var_3 = countOneBits(~countOneBits(-2147483647i & min(-2147483647i, var_0.b.a)));
    var_3 = _wgslsmith_div_i32(-20495i, -2539i);
    return vec4<f32>(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(705f))), -418f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-905f, -467f))), -1189f))));
}

fn func_2(arg_0: bool) -> bool {
    let var_0 = Struct_1(~_wgslsmith_div_u32(u_input.a.x, ~abs(u_input.a.x)), all(!vec3<bool>(1u <= u_input.a.x, false, true)), false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_2(_wgslsmith_div_i32(2147483647i, 10790i)), Struct_3(vec4<u32>(u_input.a.x, 1u, 0u, 58741u) >> (vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 39729u) % vec4<u32>(32u)), Struct_2(2147483647i)), vec4<i32>(1i, 1i, 1i, 1i)))), 0u);
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(-1i, abs(0i)), abs(-1i), _wgslsmith_add_i32(~(~0i), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), min(vec4<i32>(0i, 6523i, 52435i, 0i), vec4<i32>(-11132i, 340i, 72111i, -27412i))))));
    var var_2 = Struct_2(var_1);
    var var_3 = var_0;
    let var_4 = var_0;
    return var_0.c;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec4<i32>) -> Struct_3 {
    let var_0 = Struct_3(vec4<u32>(1u, ~countOneBits(1u), 40882u, u_input.a.x), arg_1);
    var var_1 = -38707i ^ var_0.b.a;
    var_1 = 25490i;
    var var_2 = !select(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(all(vec4<bool>(true, true, true, true)), true, true, true), all(vec2<bool>(true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, any(vec3<bool>(false, true, true)), var_0.b.a >= arg_1.a, true), vec4<bool>(true, any(vec3<bool>(true, true, false)), true, false)));
    var_1 = _wgslsmith_sub_i32(arg_2.x, _wgslsmith_dot_vec2_i32(arg_2.zw, vec2<i32>(firstLeadingBit(arg_1.a), -max(1i, 2147483647i))));
    return var_0;
}

fn func_5(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    var var_0 = Struct_3(~vec4<u32>(_wgslsmith_sub_u32(~arg_1.x, ~u_input.a.x), arg_1.x, ~u_input.a.x, 1u), func_4(0i, func_4(firstLeadingBit(~arg_3.a), arg_3, vec4<i32>(-1i) * -vec4<i32>(arg_3.a, 1i, -2147483647i, -29166i)).b, abs(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_3.a, arg_0.b.a, arg_3.a, -32480i), reverseBits(vec4<i32>(arg_0.b.a, -2147483647i, 6809i, 2147483647i))))).b);
    var_0 = arg_0;
    var var_1 = Struct_1(arg_1.x, func_2(false), any(!vec4<bool>(arg_2, !arg_2, arg_1.x > arg_0.a.x, true)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1377f)))), -597f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-864f, -764f)) + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(757f, 285f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-462f, 465f, false)))), _wgslsmith_f_op_f32(-1475f + _wgslsmith_f_op_f32(554f + -813f)))), 1u);
    var_1 = Struct_1(u_input.a.x, all(select(vec3<bool>(true, true, arg_2), !vec3<bool>(var_1.c, true, true), select(vec3<bool>(true, var_1.b, false), vec3<bool>(true, false, false), vec3<bool>(arg_2, false, false)))) & !select(any(vec2<bool>(true, true)), true, !arg_2), all(!vec4<bool>(!var_1.c, true, !arg_2, var_1.d.x < 368f)), var_1.d, func_4(~(firstLeadingBit(arg_3.a) & firstLeadingBit(var_0.b.a)), func_4(arg_3.a, func_4(-3898i, arg_0.b, _wgslsmith_mod_vec4_i32(vec4<i32>(-41395i, var_0.b.a, arg_0.b.a, -1i), vec4<i32>(var_0.b.a, arg_3.a, arg_3.a, var_0.b.a))).b, firstLeadingBit(abs(vec4<i32>(var_0.b.a, var_0.b.a, var_0.b.a, 0i)))).b, min(vec4<i32>(-arg_0.b.a, arg_0.b.a, -4602i, max(arg_3.a, arg_3.a)), vec4<i32>(~arg_0.b.a, -7181i, -9019i, _wgslsmith_mult_i32(-1i, var_0.b.a)))).a.x);
    var_0 = Struct_3(arg_1, arg_3);
    return Struct_1(u_input.a.x, !(-1468f <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(-5155i), Struct_3(arg_0.a, arg_3), vec4<i32>(arg_3.a, arg_3.a, 21732i, 33218i))).x))), var_1.b, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, 810f, var_1.d.x, var_1.d.x)))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -514f), _wgslsmith_f_op_f32(round(222f)), _wgslsmith_f_op_f32(select(-1001f, var_1.d.x, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.x, var_1.d.x, 1882f, 379f) * vec4<f32>(var_1.d.x, 392f, var_1.d.x, 1028f))), select(vec4<bool>(var_1.c, false, false, false), !vec4<bool>(true, arg_2, false, arg_2), vec4<bool>(false, arg_2, var_1.c, true)))))), ~u_input.a.x);
}

fn func_1(arg_0: vec3<f32>, arg_1: u32) -> Struct_2 {
    let var_0 = func_5(func_4(select(-firstTrailingBit(28668i), 1085i, func_2(true)), Struct_2(-firstTrailingBit(10660i)), vec4<i32>(-select(-29893i, -11959i, false), 56719i, -_wgslsmith_clamp_i32(24905i, 19383i, 0i), 1i)), vec4<u32>(4306u, min(reverseBits(0u), 18573u), ~reverseBits(10597u), ~firstTrailingBit(func_4(0i, Struct_2(3259i), vec4<i32>(15156i, -1i, -1i, -2147483647i)).a.x)), true, func_4(-_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 20130i, -2147483647i), vec3<i32>(2147483647i, -2147483647i, 5594i)), vec3<i32>(-1i, 4926i, -67558i)), Struct_2(2147483647i), firstTrailingBit(-vec4<i32>(-36321i, -20696i, 72327i, -2147483647i) ^ (vec4<i32>(1i, -195i, 2147483647i, 0i) << (vec4<u32>(4294967295u, u_input.a.x, 89951u, arg_1) % vec4<u32>(32u))))).b);
    var var_1 = func_4(-1i, Struct_2(firstTrailingBit(countOneBits(~1i))), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(~(-1i), i32(-1i) * -22217i, 1i), 1i, -980i, ~(-1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-31519i, ~(-38296i), _wgslsmith_div_i32(23330i, 36349i), 43952i), vec4<i32>(1i, _wgslsmith_clamp_i32(27644i, 0i, -13708i), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2424i, -1i, -63933i, 1i), vec4<i32>(2147483647i, -2147483647i, 0i, -1i))))));
    var var_2 = Struct_1(_wgslsmith_div_u32(75562u, arg_1), var_0.b, select(!(_wgslsmith_f_op_f32(f32(-1f) * -1099f) < var_0.d.x), var_0.b, abs(_wgslsmith_add_i32(var_1.b.a, var_1.b.a)) >= _wgslsmith_mult_i32(_wgslsmith_mod_i32(2147483647i, var_1.b.a), -var_1.b.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(837f, -945f, -650f, var_0.d.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_0.d, vec4<f32>(-139f, 448f, var_0.d.x, var_0.d.x), vec4<bool>(true, true, false, var_0.c))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-827f, arg_0.x, var_0.d.x, arg_0.x) + var_0.d)))), max(_wgslsmith_mult_u32(_wgslsmith_mult_u32(var_1.a.x << (var_1.a.x % 32u), ~4294967295u), 96328u), firstLeadingBit(u_input.a.x) ^ arg_1));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(func_5(func_4(var_1.b.a, var_1.b, vec4<i32>(var_1.b.a, -2147483647i, 0i, -11482i)), func_4(2748i, var_1.b, vec4<i32>(-1i, 5745i, var_1.b.a, -1i)).a, !var_2.b, func_4(-2147483647i, Struct_2(28383i), vec4<i32>(-32269i, var_1.b.a, var_1.b.a, var_1.b.a)).b).d.x, _wgslsmith_f_op_f32(select(var_0.d.x, _wgslsmith_f_op_f32(ceil(arg_0.x)), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x))), 1500f), var_0.d));
    let var_4 = var_2.b;
    return func_4(_wgslsmith_add_i32(19742i, -func_4(var_1.b.a, var_1.b, -vec4<i32>(var_1.b.a, var_1.b.a, var_1.b.a, 0i)).b.a), Struct_2(var_1.b.a), select(-vec4<i32>(2147483647i, var_1.b.a >> (u_input.a.x % 32u), reverseBits(var_1.b.a), -var_1.b.a), -(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.b.a, var_1.b.a, var_1.b.a, -35813i), vec4<i32>(var_1.b.a, var_1.b.a, var_1.b.a, var_1.b.a)) ^ ~vec4<i32>(var_1.b.a, 4706i, -50016i, 30411i)), select(vec4<bool>(true, !var_0.b, var_2.c, func_5(Struct_3(var_1.a, Struct_2(1i)), vec4<u32>(arg_1, var_0.e, 44719u, 18312u), false, Struct_2(var_1.b.a)).c), !vec4<bool>(var_2.c, var_2.c, var_2.b, var_2.c), select(select(vec4<bool>(false, var_0.b, var_2.c, false), vec4<bool>(true, var_2.b, true, var_2.c), vec4<bool>(false, var_2.c, true, false)), select(vec4<bool>(var_0.c, false, var_0.b, var_0.c), vec4<bool>(true, var_0.b, var_0.b, false), var_0.c), vec4<bool>(var_2.b, var_0.c, true, var_0.c))))).b;
}

fn func_6(arg_0: Struct_2, arg_1: vec3<u32>) -> f32 {
    var var_0 = vec2<i32>(max(_wgslsmith_mod_i32(arg_0.a, _wgslsmith_div_i32(arg_0.a, arg_0.a)) >> (u_input.a.x % 32u), -reverseBits(~arg_0.a)), arg_0.a);
    let var_1 = (1u >> (_wgslsmith_sub_u32(u_input.a.x, 33666u) % 32u)) ^ ~arg_1.x;
    var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(firstLeadingBit(abs(func_4(0i, arg_0, vec4<i32>(-59917i, arg_0.a, 2147483647i, 1i)).b.a)), 1i), ~vec2<i32>(_wgslsmith_dot_vec2_i32(min(vec2<i32>(-1i, arg_0.a), vec2<i32>(-2160i, arg_0.a)), vec2<i32>(var_0.x, arg_0.a) & vec2<i32>(2147483647i, arg_0.a)), func_1(vec3<f32>(1025f, -798f, 483f), 4294967295u).a));
    var_0 = -vec2<i32>(-2147483647i, i32(-1i) * -2147483647i);
    let var_2 = vec2<i32>(0i, -_wgslsmith_div_i32(arg_0.a, var_0.x));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-376f + 718f), _wgslsmith_f_op_f32(1519f + 1492f)) + 404f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1653f - _wgslsmith_f_op_f32(f32(-1f) * -1817f)) - _wgslsmith_f_op_f32(func_6(func_1(vec3<f32>(286f, -933f, 355f), 4294967295u), vec3<u32>(17975u, 4093u, 1u)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-561f)), _wgslsmith_f_op_f32(1000f - -1265f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1233f, 1161f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1212f, -143f), vec2<f32>(-614f, 699f), vec2<bool>(false, false)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1368f, -341f)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(641f, -1597f), vec2<f32>(1656f, 1162f))))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(-2147483647i), Struct_3(vec4<u32>(u_input.a.x, 1u, 29892u, 43755u), Struct_2(2147483647i)), vec4<i32>(1i, -1757i, 2147483647i, 24848i))).xz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1017f, -1348f))))))));
    let var_1 = _wgslsmith_dot_vec2_i32(max(vec2<i32>(2147483647i, reverseBits(1i)), vec2<i32>(1i, 1i)), vec2<i32>(1i, 1i));
    let var_2 = func_5(func_4(~(~(~var_1)), func_4(~var_1, Struct_2(-58480i), vec4<i32>(var_1, ~2147483647i, 16895i, i32(-1i) * -2147483647i)).b, vec4<i32>(var_1, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_1), vec2<i32>(var_1, -1202i)), countOneBits(-11058i), _wgslsmith_mod_i32(-18468i, var_1)) << (select(countOneBits(vec4<u32>(43538u, u_input.a.x, u_input.a.x, u_input.a.x)), ~vec4<u32>(38488u, u_input.a.x, 385u, 1u), vec4<bool>(true, false, true, true)) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 11178u, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, 32845u)), ~vec3<u32>(u_input.a.x, u_input.a.x, 5558u) & vec3<u32>(0u, 1u, u_input.a.x)), firstTrailingBit(54986u), u_input.a.x, 4294967295u ^ reverseBits(_wgslsmith_div_u32(u_input.a.x, u_input.a.x))), all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, -531f == var_0.x), select(vec2<bool>(true, true), vec2<bool>(true, false), select(true, true, false)))), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 1296f)), vec3<f32>(1242f, -1668f, var_0.x))), u_input.a.x));
    let var_3 = Struct_3(max(~(~(vec4<u32>(1u, u_input.a.x, var_2.a, 0u) & vec4<u32>(var_2.e, 4294967295u, 18555u, var_2.e))), vec4<u32>(~(~0u), _wgslsmith_dot_vec2_u32(select(u_input.a, u_input.a, vec2<bool>(true, var_2.c)), u_input.a), 18299u, 1u)), func_1(_wgslsmith_f_op_vec4_f32(func_3(func_4(_wgslsmith_sub_i32(47803i, var_1), func_1(var_2.d.zwx, var_2.a), firstLeadingBit(vec4<i32>(2147483647i, var_1, var_1, var_1))).b, Struct_3(max(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, var_2.a, u_input.a.x, 1u)), func_4(-1i, Struct_2(-1i), vec4<i32>(-2147483647i, var_1, var_1, var_1)).b), firstLeadingBit(vec4<i32>(var_1, 49205i, 2147483647i, var_1)) | vec4<i32>(var_1, -44087i, 1i, var_1))).zyx, ~(u_input.a.x | u_input.a.x) | u_input.a.x));
    let var_4 = vec2<bool>(!var_2.c, var_2.c);
    let var_5 = Struct_1(var_3.a.x, var_4.x | false, select(true != !func_2(false), all(!select(vec3<bool>(false, true, var_4.x), vec3<bool>(var_4.x, true, var_2.b), vec3<bool>(var_2.c, var_4.x, false))), true), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1632f))), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, false)) * -2290f)) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(181f, var_0.x, var_2.d.x, var_0.x) + var_2.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-863f, var_0.x, var_0.x, var_2.d.x)))))), 49610u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -220f), _wgslsmith_f_op_f32(-var_2.d.x), max(var_3.a.wwx, ~var_3.a.yzy), var_5.d.x, _wgslsmith_f_op_vec2_f32(exp2(var_2.d.yy)));
}

