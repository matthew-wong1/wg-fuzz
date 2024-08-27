struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 6783u;

var<private> global1: i32 = 2147483647i;

var<private> global2: vec4<u32>;

var<private> global3: vec2<f32> = vec2<f32>(255f, 698f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    var var_0 = -1270f;
    var var_1 = Struct_1(abs(vec4<u32>(global2.x << (u_input.b.x % 32u), 19070u, global2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(61051u, u_input.a.x), u_input.a)) >> (vec4<u32>(40036u, ~global2.x, ~1u, 4294967295u) % vec4<u32>(32u))), ~(~select(~global2.x, global2.x, select(false, false, false))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global3.x, 528f)) - -602f), global3.x), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(global3.x, global3.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, global3.x) - vec2<f32>(-1339f, -2002f)))))), 62900u);
    var var_2 = 2147483647i;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -392f));
    global1 = 18626i;
    return var_1.b;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: f32) -> Struct_2 {
    var var_0 = arg_1.a.a;
    var var_1 = Struct_2(Struct_1(select(vec4<u32>(_wgslsmith_div_u32(0u, 36105u), global2.x, select(global2.x, arg_0.x, true), func_3(vec2<i32>(-1i, -32437i))), select(vec4<u32>(4294967295u, 16779u, 70177u, 7970u), arg_1.a.a, false) & arg_1.a.a, any(vec3<bool>(true, true, true))), 64017u << (_wgslsmith_mult_u32(4294967295u >> (u_input.d.x % 32u), ~19165u) % 32u), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1095f, _wgslsmith_f_op_f32(f32(-1f) * -1568f)) - arg_1.a.c), min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, arg_0.x, 4294967295u, 46346u), abs(vec4<u32>(32229u, var_0.x, global2.x, u_input.b.x))), 0u)), firstLeadingBit(var_0.x), arg_1.a.c, vec2<u32>(abs(global2.x), arg_0.x));
    var var_2 = true;
    let var_3 = -2147483647i;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, arg_2)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1371f, _wgslsmith_f_op_f32(sign(arg_1.a.c.x)))), global3.x)));
    return arg_1;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(arg_1.a, arg_2.a.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.c, arg_2.c)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.a.c), _wgslsmith_f_op_vec2_f32(step(arg_2.a.c, arg_1.c))))), 1u);
    let var_1 = func_2(~arg_2.a.a.wzz, Struct_2(arg_1, 5954u, var_0.c, vec2<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(arg_2.d.x, 4012u, 28019u)), func_2(vec3<u32>(25947u, u_input.d.x, var_0.b), Struct_2(arg_2.a, global2.x, vec2<f32>(-981f, -250f), vec2<u32>(24430u, global2.x)), var_0.c.x).a.a.xww), arg_2.b)), _wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-485f + -1000f)))).a;
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_1.c.x)), _wgslsmith_f_op_f32(select(-1849f, var_0.c.x, var_0.c.x < arg_2.a.c.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global3.x, 825f), vec2<f32>(811f, global3.x)) * vec2<f32>(-206f, -1000f))));
    let var_2 = Struct_2(func_2(vec3<u32>(3388u, u_input.d.x, func_3(~vec2<i32>(-2147483647i, 49770i))), func_2(abs(var_0.a.zyy), arg_2, 2228f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1000f * var_1.c.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1000f, -641f, true))))))).a, ~4294967295u, vec2<f32>(_wgslsmith_f_op_f32(trunc(-686f)), -993f), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(68515u & u_input.b.x, var_1.d), arg_2.d.x), 19438u));
    let var_3 = Struct_2(func_2(_wgslsmith_mult_vec3_u32(global2.zzw, arg_2.a.a.xzx << ((vec3<u32>(1u, 1u, arg_2.b) & arg_1.a.zyz) % vec3<u32>(32u))), func_2(select(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 2250u, 1u), vec3<u32>(4294967295u, arg_2.b, arg_1.d)), vec3<u32>(4294967295u, arg_1.d, 51738u) & vec3<u32>(global2.x, var_0.a.x, arg_2.d.x), true), func_2(global2.yzx, func_2(vec3<u32>(var_1.d, u_input.d.x, 0u), var_2, -982f), _wgslsmith_f_op_f32(1400f + global3.x)), -1306f), _wgslsmith_f_op_f32(-var_0.c.x)).a, _wgslsmith_dot_vec2_u32(arg_2.d, arg_2.a.a.wy), arg_1.c, abs(~vec2<u32>(reverseBits(0u), global2.x)));
    return arg_2.a;
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    global1 = u_input.c;
    global2 = ~_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(arg_2.d, 42562u, arg_3.a.x, 2509u)), ~vec4<u32>(arg_2.a.x, arg_0, arg_0, arg_0)), min(~vec4<u32>(1u, arg_3.a.x, 1u, arg_1.b), arg_1.a.a)), ~arg_1.a.a);
    return 1i;
}

fn func_1() -> vec2<f32> {
    let var_0 = func_5(_wgslsmith_sub_u32(u_input.b.x, ~_wgslsmith_div_u32(global2.x, u_input.a.x)), Struct_2(Struct_1(vec4<u32>(u_input.b.x, global2.x, 4294967295u, global2.x), _wgslsmith_mod_u32(global2.x, global2.x), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global3.x, 804f), vec2<f32>(504f, global3.x))), 11521u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(25174u, global2.x, 4294967295u), global2.yxx), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, global3.x) - vec2<f32>(global3.x, global3.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, -955f) - vec2<f32>(global3.x, global3.x))), global2.zw), func_4(vec4<i32>(-29341i, u_input.c ^ 0i, ~1i, min(69610i, 2147483647i)), Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 98939u, 37336u, 18305u), vec4<u32>(u_input.b.x, global2.x, 14623u, 1u), vec4<u32>(7244u, 43119u, u_input.a.x, global2.x)), global2.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1216f, -1222f) - vec2<f32>(global3.x, 1170f)), 4294967295u), func_2(u_input.b, Struct_2(Struct_1(vec4<u32>(global2.x, 0u, 25042u, 19778u), global2.x, vec2<f32>(global3.x, 990f), u_input.a.x), u_input.a.x, vec2<f32>(global3.x, global3.x), vec2<u32>(u_input.b.x, u_input.d.x)), global3.x)), func_2(_wgslsmith_add_vec3_u32(u_input.b, countOneBits(vec3<u32>(u_input.b.x, 0u, global2.x))), Struct_2(func_4(vec4<i32>(-47018i, u_input.c, u_input.c, 43270i), Struct_1(vec4<u32>(40377u, 57542u, 53055u, global2.x), u_input.a.x, vec2<f32>(global3.x, -384f), global2.x), Struct_2(Struct_1(vec4<u32>(global2.x, 42953u, 6073u, 4294967295u), u_input.a.x, vec2<f32>(global3.x, global3.x), global2.x), global2.x, vec2<f32>(global3.x, global3.x), vec2<u32>(25921u, 47526u))), ~u_input.d.x, vec2<f32>(global3.x, -570f), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, 42963u), global2.yx)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(848f)), _wgslsmith_f_op_f32(ceil(1235f)), false))).a) >> (~(~(~70254u)) % 32u);
    var var_1 = vec2<i32>(u_input.c, var_0);
    global1 = -2147483647i;
    let var_2 = select(vec4<bool>(true, true, true, true), vec4<bool>(!(~(-2147483647i) >= ~var_1.x), all(vec4<bool>(true, true, true, true)), true, true), vec4<bool>(true, select(!any(vec4<bool>(true, true, false, true)), all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), any(vec3<bool>(true, true, true))), true, true));
    var var_3 = ~(~_wgslsmith_mult_u32(u_input.d.x, 10900u) << (~abs(21872u) % 32u)) <= global2.x;
    return vec2<f32>(-252f, 810f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 77448u;
    var var_0 = global3.x;
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1())))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, global3.x))));
    global3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(931f, global3.x) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global3.x, -188f), vec2<f32>(-596f, -1000f)) - vec2<f32>(global3.x, -110f))))));
    let var_1 = vec4<i32>(_wgslsmith_mult_i32(func_5(~(global2.x | 0u), func_2(_wgslsmith_mult_vec3_u32(u_input.b, global2.yzy), func_2(global2.zyx, Struct_2(Struct_1(vec4<u32>(102837u, global2.x, 22666u, 14880u), global2.x, vec2<f32>(global3.x, 1219f), global2.x), global2.x, vec2<f32>(789f, global3.x), vec2<u32>(u_input.d.x, global2.x)), -881f), global3.x), Struct_1(~vec4<u32>(7916u, global2.x, 44761u, u_input.a.x), ~u_input.d.x, vec2<f32>(333f, 193f), ~u_input.a.x), Struct_1(vec4<u32>(u_input.a.x, 34254u, global2.x, 1224u) ^ vec4<u32>(3764u, 40822u, 62484u, 0u), u_input.a.x, vec2<f32>(global3.x, global3.x), ~4294967295u)), _wgslsmith_div_i32(-21669i << (~u_input.b.x % 32u), -_wgslsmith_mod_i32(u_input.c, -25624i))), -51493i, 9407i, -select(reverseBits(u_input.c) >> (~u_input.b.x % 32u), 2147483647i, true));
    var var_2 = Struct_1(vec4<u32>(u_input.b.x | u_input.b.x, global2.x, 0u, _wgslsmith_div_u32(global2.x, global2.x) & abs(u_input.b.x)) ^ (~vec4<u32>(0u, u_input.b.x, global2.x, 64051u) << (countOneBits(min(vec4<u32>(64780u, 22889u, 4057u, global2.x), vec4<u32>(u_input.d.x, 73372u, 0u, u_input.d.x))) % vec4<u32>(32u))), 45927u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global3.x, -601f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, -642f) * vec2<f32>(2001f, 1132f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, -1311f) + vec2<f32>(-1000f, -1594f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, 913f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global3.x, global3.x), vec2<f32>(global3.x, global3.x))))), _wgslsmith_clamp_u32(~global2.x, 1u, _wgslsmith_dot_vec3_u32(global2.xxx << (vec3<u32>(4294967295u, 6078u, 4294967295u) % vec3<u32>(32u)), vec3<u32>(global2.x, 0u, 13591u))) >> (~4294967295u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(11351i, abs(-1i), countOneBits(_wgslsmith_mult_i32(7193i, -u_input.c)), (i32(-1i) * -44868i) | u_input.c));
}

