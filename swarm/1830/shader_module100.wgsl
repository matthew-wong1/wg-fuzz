struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<bool>(true, false, true), vec2<f32>(-959f, 428f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: Struct_3) -> bool {
    var var_0 = Struct_5(vec2<f32>(-593f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-585f + 764f))))), 231f, _wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-arg_0.x)), !all(select(global0.a, global0.a, false)))));
    var_0 = Struct_5(var_0.a, _wgslsmith_div_f32(global0.b.x, -1198f), _wgslsmith_f_op_f32(-global0.b.x));
    var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(-arg_0.zz), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.c.x))) + _wgslsmith_f_op_f32(1347f - _wgslsmith_f_op_f32(sign(321f)))), 1f), var_0.c);
    global0 = Struct_2(vec3<bool>(true, all(select(!global0.a.yz, global0.a.xy, global0.a.yy)), _wgslsmith_dot_vec3_i32(arg_2.a, vec3<i32>(-2147483647i, u_input.a.x, 2147483647i) & arg_2.a) < 1i), vec2<f32>(_wgslsmith_f_op_f32(max(var_0.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(arg_2.c.x, -174f)), _wgslsmith_div_f32(-1015f, var_0.a.x), false)))), _wgslsmith_f_op_f32(-var_0.b)));
    let var_1 = u_input.a;
    return global0.a.x;
}

fn func_2() -> vec4<f32> {
    let var_0 = ~vec3<u32>(~(firstTrailingBit(62947u) >> (~75326u % 32u)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(118534u, _wgslsmith_mod_u32(34342u, 108821u)), 39038u), 32828u);
    global0 = Struct_2(select(!global0.a, global0.a, select(global0.a.x | all(vec4<bool>(global0.a.x, true, global0.a.x, global0.a.x)), select(false, !global0.a.x, false), any(global0.a.xz))), vec2<f32>(2509f, -375f));
    global0 = Struct_2(select(!(!(!global0.a)), vec3<bool>(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, -1454f, 1947f) - vec3<f32>(703f, 263f, global0.b.x)), var_0, Struct_3(vec3<i32>(-21648i, u_input.a.x, u_input.a.x), u_input.a.zy, vec2<f32>(863f, global0.b.x), u_input.a.x)), u_input.a.x >= 12570i, global0.a.x), global0.a.x), global0.b);
    var var_1 = true;
    let var_2 = 255f;
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(global0.b.x - 682f), _wgslsmith_f_op_f32(exp2(global0.b.x)), var_2))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-414f)))), _wgslsmith_div_f32(197f, _wgslsmith_f_op_f32(max(-822f, -597f))), 2393f))), select(global0.a.x, false, any(vec4<bool>(global0.a.x, true, u_input.a.x != -1i, all(global0.a.zy))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<f32>) -> vec3<i32> {
    let var_0 = firstTrailingBit(min(arg_0.b.x, ~(~(~4294967295u))));
    global0 = Struct_2(select(arg_1, arg_1, global0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_2.yz)), vec2<f32>(-903f, 990f)), vec2<f32>(_wgslsmith_f_op_f32(floor(arg_2.x)), _wgslsmith_f_op_f32(select(-112f, -231f, arg_1.x))))));
    global0 = Struct_2(vec3<bool>(any(vec4<bool>(true, true, true, true)), all(global0.a.yy), all(vec2<bool>(true, var_0 < 55742u))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.b.x, global0.b.x))), _wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_vec2_f32(-arg_2.zw), global0.a.zz)));
    let var_1 = ~(~0u);
    global0 = Struct_2(global0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global0.b))) - arg_2.yx));
    return ~((vec3<i32>(43978i, -6276i, u_input.a.x) >> (countOneBits(vec3<u32>(0u, 92818u, var_0)) % vec3<u32>(32u))) & firstLeadingBit(min(arg_0.c, vec3<i32>(6432i, 0i, arg_0.c.x)))) << (abs(_wgslsmith_sub_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.b.x, 12538u, 0u), vec3<u32>(var_1, 50094u, arg_0.b.x)), vec3<u32>(~109672u, _wgslsmith_sub_u32(var_0, arg_0.b.x), _wgslsmith_clamp_u32(arg_0.b.x, arg_0.b.x, 38234u)))) % vec3<u32>(32u));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: vec3<u32>, arg_3: vec4<f32>) -> Struct_2 {
    global0 = Struct_2(vec3<bool>(true, any(vec4<bool>(false, arg_1.a.x && global0.a.x, -1i >= arg_1.b.x, global0.a.x)), any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, global0.a.x, global0.a.x, true), true))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(609f, arg_3.x)))), _wgslsmith_f_op_f32(step(-1000f, 220f)))), _wgslsmith_f_op_f32(max(arg_3.x, _wgslsmith_f_op_f32(-764f - arg_3.x)))));
    var var_0 = global0.a;
    let var_1 = _wgslsmith_f_op_f32(arg_3.x + -1765f);
    var var_2 = _wgslsmith_clamp_vec4_u32(reverseBits(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(max(vec4<u32>(0u, 22873u, arg_1.c.b.x, 4294967295u), vec4<u32>(arg_1.c.b.x, arg_2.x, 33839u, 46470u)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.x, 32862u, arg_1.c.b.x, 1u), vec4<u32>(1u, 83469u, 59891u, arg_1.c.b.x))), select(abs(vec4<u32>(arg_1.c.b.x, arg_2.x, 6606u, 0u)), vec4<u32>(4294967295u, 1u, 13706u, arg_1.c.b.x), all(global0.a.zx)))), ~(~vec4<u32>(arg_1.c.b.x, 0u, arg_1.c.b.x, arg_1.c.b.x)), vec4<u32>(arg_2.x, _wgslsmith_div_u32(0u, 71597u), arg_2.x, ~2063u));
    var var_3 = arg_1;
    return Struct_2(vec3<bool>(var_0.x, any(vec4<bool>(-5098i != arg_1.c.c.x, false || global0.a.x, any(vec3<bool>(global0.a.x, false, var_3.a.x)), false)), var_3.a.x), var_3.d.c);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: vec3<u32>) -> u32 {
    global0 = func_5(-vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, 24633i), 1i, _wgslsmith_mod_i32(abs(2147483647i), i32(-1i) * -24132i), 1i), Struct_4(global0.a.yy, func_4(Struct_1(vec3<i32>(0i, u_input.a.x, -6596i), vec2<u32>(0u, 0u) & arg_2.xz, u_input.a.wwy), !(!vec3<bool>(true, arg_0.x, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-655f, 666f, -352f, -1069f)))), Struct_1(vec3<i32>(firstLeadingBit(1869i), _wgslsmith_sub_i32(16040i, u_input.a.x), -15887i << (arg_2.x % 32u)), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(arg_2.yy, vec2<u32>(arg_2.x, 0u)), _wgslsmith_mod_vec2_u32(arg_2.zy, arg_2.zz)), vec3<i32>(func_4(Struct_1(vec3<i32>(14508i, -15316i, -1363i), arg_2.yy, vec3<i32>(u_input.a.x, 32740i, -30837i)), vec3<bool>(false, true, true), vec4<f32>(1582f, global0.b.x, global0.b.x, -2384f)).x, _wgslsmith_mult_i32(u_input.a.x, 44877i), ~u_input.a.x)), Struct_3(abs(vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x)) & select(u_input.a.yyz, u_input.a.xzz, vec3<bool>(global0.a.x, global0.a.x, arg_1.x)), u_input.a.zw, vec2<f32>(_wgslsmith_f_op_vec4_f32(func_2()).x, global0.b.x), _wgslsmith_mult_i32(u_input.a.x | 2147483647i, 11014i))), ~((abs(vec3<u32>(arg_2.x, 18784u, arg_2.x)) & vec3<u32>(arg_2.x, 5149u, arg_2.x)) << (~arg_2 % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(136f, -527f, 624f, global0.b.x), vec4<f32>(-2243f, global0.b.x, -511f, -475f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1134f, global0.b.x, global0.b.x, global0.b.x) + vec4<f32>(-1000f, -340f, -264f, global0.b.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1317f, _wgslsmith_f_op_f32(global0.b.x - 1684f), _wgslsmith_f_op_f32(-global0.b.x), 1073f)), !arg_0.x)));
    let var_0 = Struct_2(func_5(vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, ~1i), -39363i, u_input.a.x, -1i), Struct_4(global0.a.yy, u_input.a.yyw, Struct_1(_wgslsmith_clamp_vec3_i32(u_input.a.yzx, u_input.a.xzw, u_input.a.zyw), abs(vec2<u32>(arg_2.x, arg_2.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, 29950i, u_input.a.x), vec3<i32>(0i, u_input.a.x, -2147483647i))), Struct_3(~u_input.a.xzz, firstTrailingBit(u_input.a.zx), _wgslsmith_f_op_vec2_f32(global0.b + vec2<f32>(global0.b.x, 290f)), i32(-1i) * -2147483647i)), max(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(arg_2, vec3<u32>(4294967295u, 10026u, 0u)), vec3<u32>(arg_2.x, 2839u, 53040u) ^ arg_2), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, arg_2.x, arg_2.x), vec3<u32>(0u, arg_2.x, arg_2.x)), reverseBits(1u), arg_2.x & arg_2.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.b.x, 387f, global0.b.x, global0.b.x)))))).a, _wgslsmith_f_op_vec2_f32(-global0.b));
    var var_1 = 16144u;
    global0 = func_5(~(~abs(max(vec4<i32>(-11258i, 23683i, u_input.a.x, -2147483647i), u_input.a))), Struct_4(var_0.a.yy, _wgslsmith_add_vec3_i32(vec3<i32>(5840i, _wgslsmith_mult_i32(2147483647i, 1i), u_input.a.x), u_input.a.ywx >> (~vec3<u32>(25040u, 97935u, 24623u) % vec3<u32>(32u))), Struct_1(~u_input.a.zyy << (_wgslsmith_add_vec3_u32(arg_2, vec3<u32>(arg_2.x, arg_2.x, arg_2.x)) % vec3<u32>(32u)), max(vec2<u32>(1u, arg_2.x), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_2.x, arg_2.x), vec2<u32>(arg_2.x, arg_2.x))), reverseBits(countOneBits(u_input.a.wxw))), Struct_3(_wgslsmith_mult_vec3_i32(~u_input.a.xxx, u_input.a.ywx >> (arg_2 % vec3<u32>(32u))), vec2<i32>(-u_input.a.x, func_4(Struct_1(vec3<i32>(-2147483647i, 0i, 823i), arg_2.zy, u_input.a.zxw), var_0.a, vec4<f32>(var_0.b.x, -673f, -1000f, 2036f)).x), global0.b, u_input.a.x)), vec3<u32>(arg_2.x, arg_2.x, arg_2.x), vec4<f32>(_wgslsmith_f_op_f32(select(-1282f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global0.b.x)))), any(select(vec4<bool>(true, var_0.a.x, true, arg_1.x), vec4<bool>(true, true, true, arg_0.x), false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.b.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-703f - 963f) * _wgslsmith_f_op_f32(f32(-1f) * -622f))), global0.b.x, -238f));
    var_1 = ~arg_2.x;
    return arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(vec4<u32>(_wgslsmith_add_u32(abs(1u), _wgslsmith_mod_u32(~0u, reverseBits(68458u))), ~abs(_wgslsmith_sub_u32(127149u, 1u)), ~(~1u), select(12352u, ~func_1(vec2<bool>(global0.a.x, global0.a.x), global0.a, vec3<u32>(32365u, 1u, 4294967295u)), global0.a.x)));
    let var_1 = 1f;
    var var_2 = var_0.x;
    let var_3 = Struct_1(_wgslsmith_div_vec3_i32((_wgslsmith_mod_vec3_i32(u_input.a.zzz, u_input.a.xwy) ^ ~vec3<i32>(54950i, 1i, 0i)) << (_wgslsmith_sub_vec3_u32(~var_0.ywy, var_0.wzz) % vec3<u32>(32u)), countOneBits(vec3<i32>(10057i, abs(u_input.a.x), -25951i))), vec2<u32>(4294967295u, 1u), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, reverseBits(~27821i), i32(-1i) * -60477i), vec3<i32>(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), 6191i, ~(-14571i)) ^ (firstLeadingBit(u_input.a.wzw) & u_input.a.xzz)));
    let var_4 = all(global0.a.zy);
    let var_5 = u_input.a.x;
    let var_6 = vec2<bool>(-102f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-576f * _wgslsmith_div_f32(var_1, global0.b.x))), var_4);
    let var_7 = ~_wgslsmith_mod_u32(var_0.x, var_3.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-var_1), var_1, _wgslsmith_f_op_f32(min(var_1, _wgslsmith_f_op_f32(round(global0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-855f - 933f))), var_0.x, global0.b.x);
}

