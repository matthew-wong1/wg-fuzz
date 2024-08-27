struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: vec2<f32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: f32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
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

var<private> global0: vec3<u32>;

var<private> global1: array<u32, 16>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: u32) -> u32 {
    global0 = ~(~_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, global1[_wgslsmith_index_u32(4294967295u, 16u)], arg_0), vec3<u32>(arg_0, 40398u, arg_0)), abs(vec3<u32>(arg_0, 51352u, 0u) ^ vec3<u32>(31362u, 1u, arg_0))));
    var var_0 = _wgslsmith_dot_vec2_i32(u_input.a.xw << (min(_wgslsmith_add_vec2_u32(u_input.c, select(vec2<u32>(global1[_wgslsmith_index_u32(94257u, 16u)], global0.x), u_input.c, vec2<bool>(true, true))), u_input.c) % vec2<u32>(32u)), -(u_input.a.yx | u_input.a.ww));
    var var_1 = _wgslsmith_mult_u32(arg_0, ~arg_0);
    var var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2229f, 1332f))))) * vec2<f32>(_wgslsmith_f_op_f32(round(293f)), 1046f)) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1453f * 145f)), -1285f)), vec2<i32>(-u_input.a.x, -(~_wgslsmith_div_i32(-12621i, u_input.a.x))), -1010f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(-651f, -1082f, 119f), vec3<f32>(672f, -673f, 1105f)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(907f)), -527f, _wgslsmith_div_f32(-597f, 472f)))));
    return _wgslsmith_add_u32(1u, ~u_input.b);
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = max(~(~(~global1[_wgslsmith_index_u32(func_3(global0.x), 16u)])), global1[_wgslsmith_index_u32(~33953u >> (~_wgslsmith_dot_vec4_u32(~vec4<u32>(8860u, 25232u, 0u, 50406u), max(vec4<u32>(global0.x, 15085u, global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(u_input.c.x, 16u)]), vec4<u32>(global1[_wgslsmith_index_u32(49211u, 16u)], u_input.c.x, global0.x, 50017u))) % 32u), 16u)]);
    let var_1 = _wgslsmith_mult_vec3_u32(select(_wgslsmith_clamp_vec3_u32(~reverseBits(vec3<u32>(29331u, 1025u, u_input.b)), vec3<u32>(firstLeadingBit(global0.x), global1[_wgslsmith_index_u32(~u_input.c.x, 16u)], 1u), _wgslsmith_add_vec3_u32(~vec3<u32>(1u, 32776u, global1[_wgslsmith_index_u32(global0.x, 16u)]), ~vec3<u32>(1u, 17364u, u_input.c.x))), vec3<u32>(~0u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 16u)], global0.x), global0.yy, u_input.c), reverseBits(vec2<u32>(14205u, 25514u))), select(global1[_wgslsmith_index_u32(4294967295u, 16u)], global0.x, true) | _wgslsmith_mod_u32(u_input.c.x, 37236u)), any(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)))), ~(~(~(~vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(global0.x, 16u)], 4294967295u)))));
    return u_input.a.x;
}

fn func_1(arg_0: Struct_5, arg_1: i32, arg_2: Struct_5) -> Struct_4 {
    let var_0 = _wgslsmith_div_i32(~abs(~u_input.a.x), firstLeadingBit(_wgslsmith_mod_i32(arg_2.b.x, ~func_2(arg_2.c))));
    let var_1 = u_input.c;
    var var_2 = !(_wgslsmith_div_i32(43818i, arg_2.b.x) > 2147483647i);
    var_2 = select(any(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false))), any(vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, true), true)), select(global0.x, u_input.b, false) < func_3(var_1.x), false, true)), any(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), true))));
    global0 = ~select(vec3<u32>(16051u, 22130u, 1u) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, global1[_wgslsmith_index_u32(global0.x, 16u)], global1[_wgslsmith_index_u32(25468u, 16u)]) & vec3<u32>(u_input.b, 12298u, 4294967295u), select(vec3<u32>(var_1.x, 20060u, 8150u), vec3<u32>(global1[_wgslsmith_index_u32(global0.x, 16u)], global0.x, global0.x), vec3<bool>(true, false, false)), ~vec3<u32>(4294967295u, 60744u, global1[_wgslsmith_index_u32(var_1.x, 16u)])) % vec3<u32>(32u)), ~_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(var_1.x, u_input.c.x, u_input.c.x)), vec3<u32>(19919u, var_1.x, 28949u), ~vec3<u32>(global0.x, var_1.x, 35438u)), !vec3<bool>(true, true, all(vec3<bool>(false, false, false))));
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.c * arg_2.c)))), Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -806f), u_input.a.yyz), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1829f)), -393f), select(vec3<i32>(-1i, 1i, 26499i), firstLeadingBit(u_input.a.www), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)))), Struct_1(_wgslsmith_f_op_f32(-arg_2.d.x), u_input.a.xwz & vec3<i32>(-1i, -14086i, arg_2.b.x)), Struct_1(2356f, -(vec3<i32>(27837i, 1i, -31991i) | vec3<i32>(u_input.a.x, 0i, arg_2.b.x))), _wgslsmith_f_op_f32(-arg_0.a.x)), Struct_2(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1000f, arg_2.c))), max(countOneBits(u_input.a.wyx), ~u_input.a.yyy)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d.x)), vec3<i32>(arg_0.b.x, arg_1, u_input.a.x)), Struct_1(1000f, u_input.a.xyz), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(661f))), select(-vec3<i32>(arg_0.b.x, 8066i, -1i), u_input.a.yyw, true)), 760f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1760f, arg_0.a.x) * vec2<f32>(arg_0.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.c))))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5, arg_2: Struct_5, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_1(520f, max(~abs(vec3<i32>(2147483647i, 14666i, 18838i)), _wgslsmith_sub_vec3_i32(~(-vec3<i32>(46298i, -20688i, arg_2.b.x)), u_input.a.zzx)));
    global0 = (~vec3<u32>(42249u, select(u_input.c.x, 0u, true), 81311u) ^ _wgslsmith_mod_vec3_u32(abs(reverseBits(vec3<u32>(0u, arg_3, global0.x))), firstTrailingBit(vec3<u32>(global1[_wgslsmith_index_u32(global0.x, 16u)], 75573u, 5024u)))) << ((vec3<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 16u)], u_input.b, ~41439u & ~u_input.c.x) >> (~vec3<u32>(~arg_3, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3, 44764u, global0.x, u_input.c.x), vec4<u32>(0u, 0u, u_input.b, global0.x))) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_1.a.x)), 1266f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(572f, _wgslsmith_f_op_f32(sign(arg_0.b.b.a)))) + arg_2.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.c.e))))));
    global1 = array<u32, 16>();
    let var_2 = Struct_4(600f, Struct_2(var_0, func_1(Struct_5(vec2<f32>(var_0.a, -1443f), vec2<i32>(arg_1.b.x, 2147483647i), var_0.a, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-368f, 189f, arg_0.a)))), ~_wgslsmith_mult_i32(arg_1.b.x, u_input.a.x), Struct_5(arg_2.a, arg_0.b.c.b.xx, -280f, _wgslsmith_f_op_vec3_f32(vec3<f32>(1125f, arg_0.d.x, 230f) - arg_2.d))).b.d, var_0, Struct_1(arg_1.d.x, u_input.a.ywy), -1000f), func_1(Struct_5(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(f32(-1f) * -713f)), -(u_input.a.yw ^ var_0.b.yx), var_1.x, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_1.yzx)))), arg_0.b.c.b.x, arg_1).c, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a.x, arg_0.d.x)))), arg_2.c));
    return var_0;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_2) -> StorageBuffer {
    var var_0 = Struct_2(arg_3.a, arg_3.a, Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(floor(378f))), _wgslsmith_f_op_f32(-952f * _wgslsmith_f_op_f32(exp2(arg_0.e))))), arg_0.c.b), arg_0.a, _wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(-arg_3.c.a)));
    var var_1 = select(vec4<bool>(!select(global1[_wgslsmith_index_u32(17858u, 16u)] == u_input.b, all(vec3<bool>(false, false, true)), global0.x >= 21291u), select(true, all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false)), !(70369i != arg_3.c.b.x)), all(vec3<bool>(true, true, true)), arg_3.c.b.x <= arg_1.b.x), select(select(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), false), vec4<bool>(arg_1.b.x <= 2147483647i, true, false, any(vec2<bool>(true, false))), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true))), !vec4<bool>(true, true, true, select(true, false, true))), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false))));
    let var_2 = Struct_3(arg_3, u_input.b >= 78954u);
    var var_3 = Struct_2(func_4(Struct_4(arg_1.a, func_1(Struct_5(vec2<f32>(arg_0.b.a, var_0.c.a), vec2<i32>(2147483647i, arg_0.b.b.x), arg_1.a, vec3<f32>(arg_3.a.a, arg_1.a, 447f)), ~u_input.a.x, Struct_5(vec2<f32>(var_0.a.a, 1510f), var_0.a.b.xy, 237f, vec3<f32>(arg_3.e, -175f, 3141f))).b, Struct_2(Struct_1(-1000f, vec3<i32>(u_input.a.x, arg_0.a.b.x, -1168i)), func_1(Struct_5(vec2<f32>(1000f, arg_1.a), vec2<i32>(arg_3.c.b.x, -1i), var_0.a.a, vec3<f32>(arg_0.c.a, 720f, arg_1.a)), -2147483647i, Struct_5(vec2<f32>(2002f, var_2.a.b.a), u_input.a.xw, arg_1.a, vec3<f32>(var_2.a.e, 1795f, 1823f))).b.c, func_4(Struct_4(var_2.a.a.a, Struct_2(Struct_1(-777f, vec3<i32>(13096i, -39930i, 2147483647i)), var_2.a.d, var_0.c, Struct_1(arg_3.b.a, vec3<i32>(-1i, var_2.a.c.b.x, 0i)), -1431f), Struct_2(Struct_1(var_0.c.a, arg_2), Struct_1(arg_3.b.a, vec3<i32>(2147483647i, u_input.a.x, var_0.c.b.x)), Struct_1(arg_1.a, vec3<i32>(8053i, 29671i, arg_0.a.b.x)), Struct_1(arg_3.c.a, u_input.a.yxz), var_2.a.e), vec2<f32>(-118f, arg_0.a.a)), Struct_5(vec2<f32>(-1000f, var_0.b.a), u_input.a.ww, -1090f, vec3<f32>(1322f, var_2.a.a.a, arg_3.b.a)), Struct_5(vec2<f32>(var_0.a.a, 794f), u_input.a.yx, arg_1.a, vec3<f32>(-1015f, arg_3.b.a, 471f)), u_input.b), Struct_1(arg_1.a, arg_1.b), _wgslsmith_f_op_f32(-arg_0.d.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, var_2.a.b.a) + vec2<f32>(arg_3.b.a, arg_0.c.a)) * vec2<f32>(var_0.a.a, var_2.a.b.a))), Struct_5(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-987f, 1123f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.a, 693f) * vec2<f32>(var_0.c.a, 1177f)))), vec2<i32>(func_4(Struct_4(-719f, Struct_2(arg_3.d, Struct_1(var_2.a.d.a, var_2.a.a.b), Struct_1(1000f, vec3<i32>(-1i, -2147483647i, arg_0.b.b.x)), arg_3.b, var_2.a.d.a), Struct_2(arg_3.b, Struct_1(var_0.e, vec3<i32>(u_input.a.x, arg_2.x, arg_1.b.x)), Struct_1(var_2.a.b.a, var_2.a.c.b), Struct_1(arg_0.e, vec3<i32>(u_input.a.x, u_input.a.x, 25848i)), var_2.a.d.a), vec2<f32>(126f, 1440f)), Struct_5(vec2<f32>(arg_3.a.a, arg_0.a.a), vec2<i32>(-1i, var_2.a.a.b.x), 346f, vec3<f32>(arg_3.a.a, var_0.a.a, arg_3.d.a)), Struct_5(vec2<f32>(-956f, arg_3.c.a), var_0.a.b.xx, arg_1.a, vec3<f32>(-901f, 245f, var_0.d.a)), global1[_wgslsmith_index_u32(9912u, 16u)]).b.x, -1i), -409f, vec3<f32>(func_1(Struct_5(vec2<f32>(arg_1.a, -1223f), vec2<i32>(-31515i, arg_3.b.b.x), 2029f, vec3<f32>(125f, arg_3.a.a, arg_0.d.a)), arg_1.b.x, Struct_5(vec2<f32>(var_2.a.b.a, arg_3.e), vec2<i32>(arg_1.b.x, arg_3.d.b.x), arg_3.d.a, vec3<f32>(-304f, var_2.a.d.a, -584f))).d.x, _wgslsmith_f_op_f32(var_2.a.e - arg_3.d.a), _wgslsmith_f_op_f32(select(730f, 637f, var_1.x)))), Struct_5(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.a, 296f), vec2<f32>(var_0.d.a, -1699f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1498f, var_0.e)))), _wgslsmith_mod_vec2_i32(-arg_0.a.b.xz, vec2<i32>(var_0.a.b.x, 1i)), _wgslsmith_f_op_f32(arg_1.a + func_4(Struct_4(arg_0.d.a, Struct_2(arg_0.a, var_2.a.b, Struct_1(-310f, arg_0.b.b), Struct_1(var_0.c.a, vec3<i32>(0i, var_2.a.d.b.x, 0i)), 125f), arg_3, vec2<f32>(1431f, var_2.a.a.a)), Struct_5(vec2<f32>(-803f, -1761f), vec2<i32>(arg_2.x, 0i), var_2.a.d.a, vec3<f32>(var_0.d.a, 821f, 283f)), Struct_5(vec2<f32>(arg_1.a, arg_3.b.a), vec2<i32>(var_2.a.b.b.x, -2147483647i), arg_1.a, vec3<f32>(1198f, arg_0.e, -1000f)), u_input.c.x).a), _wgslsmith_f_op_vec3_f32(vec3<f32>(-294f, arg_0.c.a, var_0.c.a) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.d.a, arg_0.a.a, -789f))))), abs(_wgslsmith_add_u32(u_input.b, ~u_input.c.x))), func_4(func_1(Struct_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.a, arg_1.a)), ~arg_2.xy, _wgslsmith_f_op_f32(1723f + arg_3.a.a), vec3<f32>(var_2.a.b.a, 279f, 1176f)), firstTrailingBit(countOneBits(u_input.a.x)), Struct_5(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1181f, -1000f))), _wgslsmith_clamp_vec2_i32(arg_1.b.xy, var_2.a.a.b.yz, vec2<i32>(0i, arg_2.x)), _wgslsmith_div_f32(var_0.c.a, arg_1.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.a, -548f, -173f)))), Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.a, arg_3.e)))), arg_2.xy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a) * _wgslsmith_f_op_f32(select(var_0.e, -1062f, var_1.x))), _wgslsmith_div_vec3_f32(vec3<f32>(var_2.a.c.a, arg_3.b.a, 835f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.e, 785f, -620f), vec3<f32>(801f, arg_0.e, 364f), true)))), Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-137f, 1831f), vec2<f32>(var_0.b.a, -479f)))), u_input.a.zy, _wgslsmith_f_op_f32(var_2.a.a.a * _wgslsmith_div_f32(255f, arg_1.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1000f, -535f) + vec3<f32>(arg_1.a, 1134f, arg_3.d.a))), global1[_wgslsmith_index_u32(37877u, 16u)]), Struct_1(arg_0.d.a, select(vec3<i32>(arg_2.x, ~arg_2.x, reverseBits(u_input.a.x)), _wgslsmith_clamp_vec3_i32(max(vec3<i32>(2147483647i, arg_0.b.b.x, 2585i), vec3<i32>(-1i, var_2.a.d.b.x, 24779i)), u_input.a.zyz, ~vec3<i32>(arg_2.x, -25301i, var_2.a.a.b.x)), var_1.x)), arg_3.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -146f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.d.a + -271f))), _wgslsmith_f_op_f32(floor(arg_3.b.a)))));
    var var_4 = func_1(Struct_5(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.a.a)), _wgslsmith_f_op_f32(f32(-1f) * -770f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, 1000f))), true)), func_1(Struct_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.b.a, 974f)), -arg_0.c.b.xx, _wgslsmith_f_op_f32(f32(-1f) * -690f), _wgslsmith_f_op_vec3_f32(vec3<f32>(770f, -870f, arg_0.a.a) + vec3<f32>(1011f, var_2.a.a.a, 1000f))), _wgslsmith_mult_i32(~2147483647i, _wgslsmith_clamp_i32(var_0.a.b.x, -1i, var_3.d.b.x)), Struct_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, 174f) + vec2<f32>(965f, arg_1.a)), max(u_input.a.xx, var_3.b.b.xx), _wgslsmith_f_op_f32(-759f - 1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, 811f, -1000f)))).c.b.b.xy, 1392f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.a, var_2.a.e, arg_0.d.a))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.a, 503f, -173f) * vec3<f32>(-480f, 423f, 1894f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1219f, 1302f, 673f) - vec3<f32>(var_2.a.d.a, arg_0.d.a, 910f))))), -arg_0.b.b.x, Struct_5(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-187f, func_4(Struct_4(2248f, Struct_2(var_2.a.d, var_0.d, arg_1, Struct_1(arg_1.a, vec3<i32>(var_2.a.c.b.x, 11035i, u_input.a.x)), var_3.c.a), Struct_2(Struct_1(-205f, vec3<i32>(-41810i, arg_0.b.b.x, 2147483647i)), var_3.b, arg_0.d, Struct_1(116f, vec3<i32>(-1i, u_input.a.x, arg_2.x)), 101f), vec2<f32>(var_3.c.a, 433f)), Struct_5(vec2<f32>(1432f, arg_3.a.a), vec2<i32>(0i, -1i), -330f, vec3<f32>(var_0.e, 1000f, 283f)), Struct_5(vec2<f32>(arg_0.e, arg_1.a), arg_1.b.zy, arg_3.c.a, vec3<f32>(var_3.c.a, var_3.d.a, var_3.b.a)), 44271u).a), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(302f, arg_1.a))), all(!vec4<bool>(var_2.b, true, var_1.x, true)))), abs(arg_3.d.b.zz) ^ vec2<i32>(-u_input.a.x, _wgslsmith_mult_i32(arg_1.b.x, var_3.a.b.x)), _wgslsmith_f_op_f32(-403f + -382f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1393f, var_0.c.a, 146f)))))).c;
    return StorageBuffer(~abs(~vec3<u32>(14900u, 0u, 22969u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(Struct_2(Struct_1(_wgslsmith_div_f32(-587f, _wgslsmith_f_op_f32(floor(896f))), _wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i)), vec3<i32>(-14390i, u_input.a.x, u_input.a.x))), func_4(func_1(Struct_5(vec2<f32>(1132f, -138f), u_input.a.wx, 1047f, vec3<f32>(109f, -267f, -470f)), 30457i, Struct_5(vec2<f32>(828f, -915f), u_input.a.yw, -1009f, vec3<f32>(947f, 888f, 434f))), Struct_5(func_1(Struct_5(vec2<f32>(-1105f, -317f), vec2<i32>(0i, 1i), 934f, vec3<f32>(-250f, -657f, 1000f)), 7962i, Struct_5(vec2<f32>(765f, -1608f), u_input.a.wx, 432f, vec3<f32>(-1376f, 913f, -2061f))).d, max(u_input.a.yy, u_input.a.zz), -162f, vec3<f32>(-1371f, 990f, -1272f)), Struct_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-580f, 236f)), ~u_input.a.xy, 444f, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-164f, 675f, -338f), vec3<f32>(-1000f, 1197f, -842f), false))), ~u_input.b), func_1(Struct_5(vec2<f32>(-1000f, -1304f), _wgslsmith_div_vec2_i32(u_input.a.zz, vec2<i32>(u_input.a.x, -1739i)), _wgslsmith_f_op_f32(floor(104f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-140f, 1574f, -1780f))), -(u_input.a.x | 2147483647i), Struct_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1356f, 1000f) - vec2<f32>(1949f, -1000f)), u_input.a.wz, 1000f, vec3<f32>(463f, -478f, -1000f))).b.c, func_1(Struct_5(vec2<f32>(-641f, 1086f), u_input.a.ww, _wgslsmith_f_op_f32(-450f - -726f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(938f, -1080f, -1556f))), u_input.a.x, Struct_5(_wgslsmith_div_vec2_f32(vec2<f32>(-672f, -610f), vec2<f32>(-1310f, 1377f)), reverseBits(vec2<i32>(0i, u_input.a.x)), _wgslsmith_f_op_f32(max(901f, -584f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(202f, -523f, -726f), vec3<f32>(-732f, 1000f, 1156f))))).b.d, -776f), Struct_1(_wgslsmith_f_op_f32(-175f * 245f), _wgslsmith_clamp_vec3_i32(vec3<i32>(-16155i, ~u_input.a.x, u_input.a.x), u_input.a.xwx, ~u_input.a.zwx)), select(u_input.a.zyy, vec3<i32>(u_input.a.x, func_2(_wgslsmith_f_op_f32(-216f + -196f)), u_input.a.x ^ 0i), true && any(vec4<bool>(true, true, true, false))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -664f)), func_1(Struct_5(vec2<f32>(1547f, 309f), u_input.a.wx, 295f, vec3<f32>(-133f, -1079f, -555f)), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x)), Struct_5(vec2<f32>(922f, 1148f), u_input.a.wx, 778f, vec3<f32>(627f, -644f, -360f))).b.b.b), Struct_1(868f, vec3<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a.xz, u_input.a.xx), firstLeadingBit(u_input.a.x))), Struct_1(-485f, u_input.a.yyz), func_4(func_1(Struct_5(vec2<f32>(494f, 899f), vec2<i32>(u_input.a.x, u_input.a.x), 107f, vec3<f32>(762f, -222f, 304f)), u_input.a.x & u_input.a.x, Struct_5(vec2<f32>(-587f, -601f), u_input.a.xx, -325f, vec3<f32>(420f, 116f, -656f))), Struct_5(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(615f, 1516f))), vec2<i32>(-1i, -2147483647i), -372f, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(168f, 204f, -667f)))), Struct_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(661f, 1166f)), select(u_input.a.yy, vec2<i32>(u_input.a.x, -24030i), vec2<bool>(true, false)), -589f, _wgslsmith_f_op_vec3_f32(vec3<f32>(395f, -466f, -217f) * vec3<f32>(-877f, 1116f, 408f))), ~(~global1[_wgslsmith_index_u32(0u, 16u)])), -806f));
}

