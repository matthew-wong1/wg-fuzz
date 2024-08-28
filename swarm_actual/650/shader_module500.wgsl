struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_3) -> bool {
    var var_0 = arg_0.a;
    let var_1 = false;
    var var_2 = arg_0;
    var var_3 = Struct_2(Struct_1(~vec2<u32>(~0u, arg_0.b.b), ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, 30057u, 0u, arg_0.a.a.b), vec4<u32>(1u, var_0.a.b, var_0.a.b, 31473u)), _wgslsmith_sub_u32(11919u, var_0.c)), vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, 2147483647i, 83463i, var_0.a.c.x), abs(vec4<i32>(-1i, arg_0.d.c.x, var_0.a.c.x, var_0.a.c.x))), var_0.a.c.x, 1i, arg_0.a.a.c.x)), select(select(var_2.a.b, !var_2.a.b, vec4<bool>(true, false, true, true)), vec4<bool>(var_2.a.b.x, (var_1 == true) | (-1i > var_2.b.c.x), var_2.a.b.x, true && !var_2.a.b.x), !vec4<bool>(all(vec2<bool>(true, var_2.a.b.x)), true, select(false, false, var_2.a.b.x), var_2.a.b.x)), arg_0.a.c);
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1282f - -1155f) + _wgslsmith_f_op_f32(round(-1055f))), _wgslsmith_f_op_f32(f32(-1f) * -382f))));
    return !(!all(!(!vec4<bool>(arg_0.a.b.x, arg_0.a.b.x, var_0.b.x, arg_0.a.b.x))));
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_2(Struct_1(firstLeadingBit(vec2<u32>(1u, 1u)), ~28315u, select(u_input.b ^ u_input.a, countOneBits(vec4<i32>(1926i, u_input.b.x, u_input.b.x, -2147483647i)) >> (~vec4<u32>(11563u, 0u, 0u, 70837u) % vec4<u32>(32u)), true || func_3(Struct_3(Struct_2(Struct_1(vec2<u32>(1u, 0u), 48980u, u_input.b), vec4<bool>(true, false, true, false), 71674u), Struct_1(vec2<u32>(0u, 61163u), 4294967295u, vec4<i32>(-14554i, 36919i, u_input.b.x, -37828i)), u_input.b.yx, Struct_1(vec2<u32>(37893u, 4294967295u), 4294967295u, u_input.b))))), vec4<bool>(all(vec2<bool>(true, true)), u_input.b.x == 61298i, !any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), false)), true), 50042u);
    var_0 = Struct_2(var_0.a, select(!select(select(var_0.b, var_0.b, vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, true)), select(var_0.b, vec4<bool>(var_0.b.x, false, true, true), true), !var_0.b), var_0.b, !(~1u > _wgslsmith_sub_u32(var_0.a.a.x, 8752u))), var_0.c);
    var_0 = Struct_2(var_0.a, select(var_0.b, select(!(!var_0.b), var_0.b, !var_0.b.x || func_3(Struct_3(Struct_2(var_0.a, vec4<bool>(false, var_0.b.x, true, var_0.b.x), var_0.a.b), Struct_1(var_0.a.a, var_0.c, vec4<i32>(u_input.a.x, var_0.a.c.x, -1i, 66066i)), vec2<i32>(var_0.a.c.x, var_0.a.c.x), Struct_1(vec2<u32>(var_0.a.b, var_0.a.a.x), 0u, u_input.b)))), vec4<bool>((var_0.b.x && false) & all(vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x)), true, true, var_0.b.x)), _wgslsmith_dot_vec2_u32((~var_0.a.a << (abs(var_0.a.a) % vec2<u32>(32u))) & var_0.a.a, select(var_0.a.a, vec2<u32>(var_0.a.b, max(var_0.c, var_0.c)), true)));
    let var_1 = Struct_4(Struct_1(vec2<u32>(46322u, var_0.a.b), 0u, ~vec4<i32>(~u_input.b.x, 0i, 42659i, var_0.a.c.x & 21791i)), var_0.a, Struct_2(Struct_1(var_0.a.a, var_0.c, abs(u_input.b) & var_0.a.c), select(vec4<bool>(any(vec3<bool>(true, true, var_0.b.x)), var_0.b.x, all(var_0.b.ywy), true), select(vec4<bool>(false, false, false, var_0.b.x), !var_0.b, var_0.b), var_0.b.x), var_0.c), Struct_1(abs(~(~var_0.a.a)), ~(~countOneBits(2370u)), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(var_0.a.c.x, 1i, u_input.a.x, var_0.a.c.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(-23798i, -2563i, 0i, var_0.a.c.x), u_input.b)), select(abs(var_0.a.c), u_input.a | vec4<i32>(-2147483647i, -1i, 1i, u_input.b.x), vec4<bool>(true, var_0.b.x, false, var_0.b.x)))));
    var_0 = var_1.c;
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: Struct_4) -> f32 {
    var var_0 = Struct_4(arg_3.c.a, arg_0, Struct_2(func_2().a, !vec4<bool>(20870u < arg_0.b, false, false != arg_3.c.b.x, select(arg_2, false, false)), _wgslsmith_dot_vec3_u32(vec3<u32>(~arg_3.a.b, arg_0.a.x, ~4294967295u), vec3<u32>(1u, _wgslsmith_mult_u32(arg_0.a.x, 15201u), _wgslsmith_add_u32(4294967295u, arg_0.b)))), arg_0);
    var_0 = arg_3;
    var_0 = Struct_4(arg_3.b, arg_0, func_2().c, arg_0);
    var var_1 = Struct_4(arg_3.a, Struct_1(abs(~var_0.c.a.a), arg_3.a.a.x, vec4<i32>(arg_3.b.c.x, 2147483647i, ~arg_1, -(0i << (1u % 32u)))), Struct_2(func_2().a, !(!(!vec4<bool>(false, arg_2, arg_3.c.b.x, var_0.c.b.x))), ~(~arg_3.b.b)), var_0.c.a);
    let var_2 = arg_3;
    return _wgslsmith_f_op_f32(-1f);
}

fn func_5(arg_0: f32, arg_1: vec4<f32>) -> Struct_2 {
    var var_0 = firstLeadingBit(u_input.a.wzy);
    var var_1 = Struct_3(Struct_2(func_2().a, vec4<bool>(true == all(vec4<bool>(false, true, true, false)), false, !func_3(Struct_3(Struct_2(Struct_1(vec2<u32>(4294967295u, 1u), 1u, vec4<i32>(1i, u_input.b.x, 32594i, u_input.b.x)), vec4<bool>(false, false, false, true), 4294967295u), Struct_1(vec2<u32>(1u, 1u), 1u, u_input.a), u_input.b.yw, Struct_1(vec2<u32>(4294967295u, 1u), 13969u, u_input.b))), false), 1u), Struct_1(~max(reverseBits(vec2<u32>(4294967295u, 29486u)), firstLeadingBit(vec2<u32>(28376u, 25458u))), 1u, firstTrailingBit((u_input.a | u_input.b) >> (reverseBits(vec4<u32>(1u, 1u, 4294967295u, 35272u)) % vec4<u32>(32u)))), func_2().d.c.xx, Struct_1(vec2<u32>(~43058u, ~1u) | select(min(vec2<u32>(1u, 4294967295u), vec2<u32>(99267u, 4181u)), vec2<u32>(1u, 1u), true), 7423u, vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(403i, var_0.x), vec2<i32>(u_input.b.x, -1i) >> (vec2<u32>(10983u, 1u) % vec2<u32>(32u))), u_input.b.x, max(_wgslsmith_dot_vec2_i32(var_0.zy, var_0.zx), -2147483647i), firstLeadingBit(u_input.a.x))));
    var var_2 = !func_3(Struct_3(func_2().c, var_1.b, vec2<i32>(_wgslsmith_mult_i32(var_1.c.x, 13936i), _wgslsmith_add_i32(-6000i, u_input.b.x)), func_2().b));
    var_0 = ~var_1.d.c.www;
    return var_1.a;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    let var_0 = Struct_3(func_5(_wgslsmith_f_op_f32(func_4(arg_1, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 40624i, u_input.b.x, arg_0.b.c.x) >> (vec4<u32>(arg_0.d.b, arg_0.d.a.x, arg_2, arg_0.b.a.x) % vec4<u32>(32u)), min(vec4<i32>(-27665i, 45678i, u_input.b.x, 6770i), u_input.b)), !arg_0.a.b.x, func_2())), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(369f, 463f, -1390f, -799f)), vec4<f32>(1472f, 1033f, 479f, -1205f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(118f, -1061f, -742f, -964f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1514f, -1000f, -580f, -979f))))), func_2().b, _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(~(~vec2<i32>(arg_0.a.a.c.x, -50845i)), vec2<i32>(select(25652i, arg_1.c.x, arg_0.a.b.x), arg_1.c.x << (27383u % 32u))), ~select(-u_input.b.yw, -arg_0.d.c.yy, vec2<bool>(arg_0.a.b.x, false))), func_5(_wgslsmith_f_op_f32(round(523f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))).a);
    let var_1 = func_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-237f + -1453f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(982f, -809f, 486f, 400f) - vec4<f32>(1073f, 1013f, 1191f, -706f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-470f, -1570f, -1654f, -1000f), vec4<f32>(-2282f, 226f, -1684f, 428f))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(599f, 791f, 1000f, 1000f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(678f, -153f, 646f, 226f))), false)))).b.xz;
    let var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-505f, -327f))) * _wgslsmith_f_op_f32(f32(-1f) * -565f)), _wgslsmith_f_op_f32(ceil(-1013f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-644f)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-494f * -1000f)))), -1174f), vec4<f32>(277f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1151f, _wgslsmith_f_op_f32(237f - 181f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2247f)), _wgslsmith_f_op_f32(func_4(arg_0.a.a, firstTrailingBit(~u_input.a.x), var_0.a.b.x, Struct_4(arg_1, func_2().d, Struct_2(Struct_1(arg_0.b.a, 23297u, vec4<i32>(-48444i, -2147483647i, u_input.b.x, u_input.b.x)), arg_0.a.b, 4294967295u), Struct_1(arg_0.b.a, 0u, var_0.a.a.c))))), all(func_2().c.b.yz)));
    let var_3 = max(~countOneBits(func_2().b.a), vec2<u32>(arg_0.b.a.x, ~_wgslsmith_sub_u32(firstLeadingBit(arg_0.d.b), ~41366u)));
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(min(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-231f, var_2.x)) - _wgslsmith_f_op_f32(f32(-1f) * -428f)) - _wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_f_op_f32(-var_2.x));
    return var_0.a;
}

fn func_6(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = vec3<bool>(true, !(arg_2.x > arg_1.x) || !arg_0.a.b.x, func_2().c.b.x);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -854f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(func_4(func_5(_wgslsmith_f_op_f32(f32(-1f) * -1549f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1275f, arg_2.x, arg_1.x, arg_2.x))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-644f, arg_1.x, arg_1.x, arg_2.x))))).a, ~u_input.a.x, -1i < _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.a.c.x, 46390i, 5953i), vec3<i32>(u_input.a.x, arg_0.a.a.c.x, -33565i)), func_2())), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-315f - -1000f))));
    let var_3 = -reverseBits(_wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(arg_0.a.a.c.x, u_input.a.x), ~33865i), 2147483647i));
    var var_4 = func_1(Struct_3(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1028f))), vec4<f32>(_wgslsmith_f_op_f32(abs(-792f)), -534f, arg_1.x, 148f)), arg_0.a.a, _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -2147483647i) & vec2<i32>(16411i, u_input.b.x), arg_0.b.c.wy), Struct_1(vec2<u32>(4294967295u, 71767u), 47959u, ~(~u_input.a))), func_2().c.a, arg_0.d.b);
    return arg_0.a;
}

fn func_7(arg_0: Struct_2) -> u32 {
    let var_0 = true;
    let var_1 = _wgslsmith_add_vec2_i32(func_2().a.c.yx | u_input.b.wy, -max(u_input.b.zw, arg_0.a.c.xz));
    var var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(0i, min(_wgslsmith_clamp_i32(func_1(Struct_3(arg_0, arg_0.a, u_input.a.xw, Struct_1(vec2<u32>(arg_0.c, 4294967295u), 0u, vec4<i32>(arg_0.a.c.x, 29042i, var_1.x, var_1.x))), Struct_1(vec2<u32>(arg_0.a.a.x, 4294967295u), arg_0.a.b, arg_0.a.c), 4294967295u).a.c.x, select(u_input.b.x, arg_0.a.c.x, false), arg_0.a.c.x), ~var_1.x), _wgslsmith_div_i32(var_1.x << (30501u % 32u), firstLeadingBit(~var_1.x))), ~vec3<i32>(_wgslsmith_dot_vec2_i32(~arg_0.a.c.zy, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, 6374i), u_input.b.xw)), 1i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(var_1.x, u_input.b.x), var_1.x, var_1.x)));
    return ~41724u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 76618u;
    let var_1 = Struct_1(~(~vec2<u32>(1u, 1u)), func_7(func_6(Struct_3(func_1(Struct_3(Struct_2(Struct_1(vec2<u32>(0u, 4294967295u), var_0, vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -2147483647i)), vec4<bool>(true, false, true, false), 22287u), Struct_1(vec2<u32>(22767u, 4294967295u), var_0, vec4<i32>(1i, u_input.b.x, -2147483647i, 0i)), u_input.a.zz, Struct_1(vec2<u32>(0u, var_0), 1u, vec4<i32>(-35835i, -10297i, u_input.b.x, u_input.b.x))), Struct_1(vec2<u32>(8832u, var_0), 0u, vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, u_input.b.x)), var_0), Struct_1(vec2<u32>(70093u, 24173u), var_0, u_input.a), vec2<i32>(-2147483647i, -23298i), func_2().d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1000f, 1549f) - vec3<f32>(-876f, 1159f, 967f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-925f, -600f, -560f), vec3<f32>(-591f, -1212f, -1508f), vec3<bool>(false, true, true)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-375f, -735f, -2833f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(314f, -1161f, 296f))), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(var_0, 0u)), ~vec2<u32>(var_0, var_0)))), (u_input.b >> (abs(~vec4<u32>(var_0, 27777u, var_0, 8448u)) % vec4<u32>(32u))) << (_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, var_0), vec2<u32>(var_0, var_0)), 0u, 19477u, ~var_0), vec4<u32>(var_0, var_0 >> (0u % 32u), var_0, 31398u >> (var_0 % 32u))) % vec4<u32>(32u)));
    let var_2 = Struct_2(Struct_1(var_1.a, ~_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(var_1.a, vec2<u32>(4294967295u, 4294967295u))), var_1.c), !vec4<bool>(any(vec2<bool>(true, true)), all(func_6(Struct_3(Struct_2(var_1, vec4<bool>(false, false, true, true), 62456u), var_1, vec2<i32>(-13868i, var_1.c.x), Struct_1(vec2<u32>(var_1.a.x, 42109u), 8834u, u_input.b)), vec3<f32>(1000f, 987f, -320f), vec3<f32>(425f, 1141f, 1641f), var_1.a).b), false, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 3643u, 4294967295u, var_0), vec4<u32>(var_0, 0u, var_0, 8656u)) < abs(var_0)), ~func_2().b.b);
    var var_3 = -vec3<i32>(~var_1.c.x, 1i, _wgslsmith_sub_i32(-9050i, ~_wgslsmith_mult_i32(1i, 15461i)));
    var var_4 = _wgslsmith_f_op_f32(-1f);
    let var_5 = !var_2.b.x != false;
    var var_6 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-488f - 1197f)))));
    var var_7 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(-6679i, var_3.x << (abs(~0u) % 32u), abs(reverseBits(_wgslsmith_div_vec4_u32(select(vec4<u32>(0u, 5285u, 80778u, 0u), vec4<u32>(var_2.c, 11743u, var_2.c, var_0), var_2.b.x), vec4<u32>(var_2.c, var_0, var_1.a.x, var_0)))), _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(var_2.a.a, ~var_1.a), ~(reverseBits(var_2.a.a) >> ((var_1.a | var_1.a) % vec2<u32>(32u)))), ~1u);
}

