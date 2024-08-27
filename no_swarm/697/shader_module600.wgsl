struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-226f, 1255f, vec4<bool>(false, false, false, false));

var<private> global1: vec3<u32>;

var<private> global2: vec3<bool> = vec3<bool>(false, false, true);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_3) -> vec4<bool> {
    global2 = select(arg_3.a.c.yyw, arg_2.a.b.zwx, true);
    var var_0 = select(vec4<i32>(1i, ~_wgslsmith_mod_i32(u_input.b, u_input.c.x), 2147483647i, -(u_input.b >> ((global1.x ^ global1.x) % 32u))), firstTrailingBit(vec4<i32>(~u_input.c.x, (0i << (0u % 32u)) | u_input.b, 1i, ~1i)), !any(vec4<bool>(any(arg_1.c.wyz), arg_0.c.x && global2.x, false, u_input.c.x > u_input.b)));
    var_0 = abs(-vec4<i32>(_wgslsmith_mult_i32(-25582i >> (global1.x % 32u), firstTrailingBit(u_input.a.x)), -17689i, _wgslsmith_clamp_i32(var_0.x, -2147483647i, var_0.x), _wgslsmith_mult_i32(2147483647i, u_input.a.x) ^ _wgslsmith_add_i32(var_0.x, u_input.c.x)));
    var var_1 = arg_2;
    let var_2 = global1.x;
    return arg_1.c;
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> vec4<bool> {
    var var_0 = Struct_2(true, vec4<bool>(true, true, select(i32(-1i) * -56491i, _wgslsmith_mod_i32(u_input.c.x, u_input.b), !global0.c.x) > u_input.c.x, !any(arg_1.b.wy)), !arg_1.b.wxw);
    global0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-403f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b * 1736f) + global0.b)), -2183f)), _wgslsmith_f_op_f32(select(global0.a, 1011f, false)), select(func_3(arg_1, Struct_1(_wgslsmith_f_op_f32(139f * global0.b), -1919f, vec4<bool>(false, global0.c.x, false, arg_1.a)), Struct_4(Struct_2(arg_1.a, global0.c, global0.c.yxw)), Struct_3(Struct_1(-664f, global0.b, vec4<bool>(var_0.c.x, true, true, global0.c.x)))), !var_0.b, vec4<bool>(firstTrailingBit(1u) <= global1.x, true, !(55872i < u_input.c.x), false)));
    let var_1 = !var_0.b;
    global2 = select(vec3<bool>(select(true, !all(vec4<bool>(arg_1.a, global2.x, true, false)), true), !(!global0.c.x), var_0.c.x), select(vec3<bool>(true, true, true), vec3<bool>(global0.c.x, (false && global2.x) | true, select(arg_1.a != false, !global2.x, arg_1.c.x)), var_1.xwz), true);
    var var_2 = 53255i & u_input.b;
    return vec4<bool>(var_1.x, var_0.c.x, var_1.x && !any(vec4<bool>(global0.c.x, var_0.a, var_1.x, true)), _wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(195f + global0.b))) == 191f);
}

fn func_2() -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.a))))), select(func_4(global1.x, Struct_2(false, func_3(Struct_2(false, global0.c, global0.c.yxx), Struct_1(-276f, global0.a, global0.c), Struct_4(Struct_2(true, vec4<bool>(true, global2.x, global0.c.x, false), global0.c.zwx)), Struct_3(Struct_1(570f, -877f, global0.c))), !vec3<bool>(true, global0.c.x, global2.x))), global0.c, global0.c));
    let var_1 = global1.x;
    global2 = vec3<bool>(false, true, var_0.c.x);
    var var_2 = Struct_1(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-471f, _wgslsmith_div_f32(-202f, -104f)), var_0.a))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(166f)), _wgslsmith_f_op_f32(abs(-1972f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(342f + var_0.a) - global0.a), 1230f)))), !vec4<bool>(!(global2.x || var_0.c.x), global0.c.x, var_0.c.x, false));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    return ~reverseBits(select(~(vec3<u32>(1u, global1.x, 52252u) ^ vec3<u32>(1u, 16873u, global1.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, 16884u, 13489u), select(vec3<u32>(27450u, global1.x, global1.x), vec3<u32>(32686u, 4294967295u, 12371u), var_0.c.wyy)), _wgslsmith_div_f32(var_2.b, var_0.b) <= _wgslsmith_f_op_f32(trunc(global0.a))));
}

fn func_1(arg_0: Struct_1) -> u32 {
    global1 = _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(~select(vec3<u32>(global1.x, 0u, 0u), vec3<u32>(global1.x, 1u, 54521u), true), firstLeadingBit(vec3<u32>(71249u, global1.x, global1.x))), vec3<u32>(global1.x, 1u, 31404u), func_2()), vec3<u32>(abs(global1.x) ^ (global1.x << (1u % 32u)), global1.x, firstLeadingBit(~4294967295u)) | vec3<u32>(63446u | _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, global1.x, 0u, 1u), vec4<u32>(global1.x, global1.x, 42613u, 4294967295u)), ~_wgslsmith_div_u32(global1.x, 22580u), 0u));
    global1 = ~(vec3<u32>(_wgslsmith_div_u32(~452u, abs(3501u)), min(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 19140u, 10825u), vec3<u32>(22735u, global1.x, 57214u))), global1.x) << (firstTrailingBit(select(vec3<u32>(7802u, 0u, 63449u), vec3<u32>(global1.x, 1u, global1.x), true)) % vec3<u32>(32u)));
    let var_0 = arg_0;
    global2 = var_0.c.zwx;
    global0 = arg_0;
    return firstTrailingBit(global1.x);
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-global0.b);
    let var_1 = !global2.x;
    global2 = select(select(func_4(min(arg_2.x, _wgslsmith_dot_vec3_u32(arg_1.zyw, vec3<u32>(arg_1.x, 33833u, arg_1.x))), Struct_2(false, global0.c, !arg_3.c.yxy)).yyy, !arg_3.c.zzy, arg_0.x), select(vec3<bool>(all(vec4<bool>(var_1, arg_3.c.x, false, false)), !(!arg_3.c.x), var_1), arg_0, false), !arg_0);
    let var_2 = vec3<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1343f, _wgslsmith_f_op_f32(abs(var_0))))) >= -1000f, var_1, func_3(Struct_2(any(global0.c.wz), select(global0.c, vec4<bool>(global0.c.x, true, global2.x, arg_0.x), false), select(!vec3<bool>(true, global2.x, true), arg_0, !var_1)), Struct_1(-2549f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.b * -311f))), global0.c), Struct_4(Struct_2(false, vec4<bool>(global0.c.x, arg_3.c.x, var_1, arg_3.c.x), arg_3.c.yxw)), Struct_3(Struct_1(193f, global0.b, select(global0.c, arg_3.c, global0.c)))).x);
    global2 = arg_0;
    return Struct_3(Struct_1(-385f, _wgslsmith_f_op_f32(-1018f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(384f - arg_3.b), -963f)), select(global0.c, arg_3.c, _wgslsmith_clamp_i32(0i, -1i, u_input.a.x) > -u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1410f + 1084f) * _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(abs(501f))), global0.a)), !global0.c);
    global1 = _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(global1.x, 4294967295u), global1.x), 103126u | (global1.x | global1.x), countOneBits(~global1.x))), ~(~vec3<u32>(global1.x, global1.x, global1.x) >> ((vec3<u32>(0u, global1.x, global1.x) ^ firstLeadingBit(vec3<u32>(global1.x, 1u, global1.x))) % vec3<u32>(32u))));
    global2 = vec3<bool>(all(global0.c.xxw), select(any(global0.c.yz), !global0.c.x, true), true);
    let var_0 = func_5(!(!(!global0.c.yww)), ~(~vec4<u32>(1u, 1u, _wgslsmith_mult_u32(4294967295u, global1.x), func_1(Struct_1(global0.a, -1000f, global0.c)))), vec2<u32>(firstLeadingBit(global1.x >> (1u % 32u)), ~(12300u << (global1.x % 32u))) >> (vec2<u32>(global1.x, _wgslsmith_mult_u32(0u, 40311u) << (abs(1u) % 32u)) % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1396f), _wgslsmith_f_op_f32(select(-2514f, global0.a, global2.x)))) + _wgslsmith_f_op_f32(global0.a + 1023f)), global0.b, func_3(Struct_2(!global0.c.x, vec4<bool>(global0.c.x, global0.c.x, global0.c.x, global0.c.x), global0.c.xwz), Struct_1(_wgslsmith_f_op_f32(round(global0.b)), _wgslsmith_f_op_f32(-global0.b), select(global0.c, vec4<bool>(false, global0.c.x, false, false), global2.x)), Struct_4(Struct_2(global2.x, vec4<bool>(global0.c.x, global0.c.x, false, true), vec3<bool>(global0.c.x, global2.x, true))), Struct_3(Struct_1(-1158f, global0.a, global0.c)))));
    var var_1 = global2.x;
    var var_2 = min(~vec4<i32>(44335i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -1i, u_input.b, u_input.b), vec4<i32>(0i, u_input.c.x, u_input.c.x, u_input.c.x)), -2147483647i, 19831i) & vec4<i32>(max(u_input.c.x, u_input.b), 31458i, u_input.b | firstTrailingBit(1698i), 1i), ~vec4<i32>(countOneBits(0i | u_input.a.x), u_input.a.x & _wgslsmith_dot_vec4_i32(vec4<i32>(17852i, u_input.c.x, u_input.c.x, -49750i), vec4<i32>(-59827i, u_input.a.x, 44150i, u_input.a.x)), -836i, 1i));
    let var_3 = vec2<bool>(all(!var_0.a.c.zwy), true);
    let var_4 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + global0.a))), ~select(~_wgslsmith_sub_vec4_u32(vec4<u32>(global1.x, 42728u, global1.x, global1.x), vec4<u32>(0u, global1.x, 0u, 0u)), vec4<u32>(~global1.x, global1.x, 4294967295u, global1.x), true), abs(~u_input.b ^ (i32(-1i) * -7370i)) << (~_wgslsmith_sub_u32(global1.x, func_2().x) % 32u), (~(vec3<i32>(-9586i, 0i, u_input.c.x) & u_input.a) << (~(~vec3<u32>(global1.x, 8792u, 0u)) % vec3<u32>(32u))) & vec3<i32>(firstLeadingBit(1i), _wgslsmith_clamp_i32(var_2.x, 1035i, _wgslsmith_add_i32(u_input.c.x, 14486i)), var_4));
}

