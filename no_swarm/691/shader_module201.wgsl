struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>) -> u32 {
    var var_0 = Struct_2(Struct_1(~vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_clamp_i32(arg_1.x, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(2147483647i, -2147483647i), u_input.a, firstLeadingBit(u_input.a)), _wgslsmith_mod_i32(-11953i, _wgslsmith_mod_i32(u_input.a, u_input.a))), -2051i), ~57042u);
    var_0 = Struct_2(Struct_1(var_0.a.a, (var_0.a.c >> (var_0.b % 32u)) >> (1u % 32u), u_input.a), 42390u);
    var_0 = Struct_2(Struct_1(min(var_0.a.a, ~reverseBits(vec4<u32>(24874u, var_0.a.a.x, 1u, var_0.b))), ~u_input.a, max(var_0.a.b, firstTrailingBit(arg_1.x ^ var_0.a.c))), min(select(min(var_0.b, var_0.a.a.x), var_0.a.a.x, arg_0), 47662u) >> (77769u % 32u));
    var var_1 = Struct_3(Struct_2(Struct_1(~firstTrailingBit(var_0.a.a), -_wgslsmith_dot_vec3_i32(arg_1.wyz, vec3<i32>(arg_1.x, arg_1.x, 2788i)), arg_1.x), _wgslsmith_div_u32(var_0.a.a.x, var_0.a.a.x)), vec3<i32>(firstTrailingBit(u_input.a), -1i | ~(~var_0.a.b), _wgslsmith_clamp_i32(arg_1.x, 52592i, firstLeadingBit(var_0.a.c))), Struct_2(var_0.a, 23053u));
    var_0 = Struct_2(var_0.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(41669u, ~var_1.c.a.a.x, var_1.a.b), vec3<u32>(reverseBits(0u), 0u, 1u)));
    return ((14325u | _wgslsmith_div_u32(_wgslsmith_mod_u32(var_1.a.a.a.x, 1u), reverseBits(22580u))) | ~abs(var_0.b)) ^ var_1.a.b;
}

fn func_2() -> Struct_1 {
    var var_0 = vec2<bool>(true, false);
    let var_1 = Struct_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(~37076u, _wgslsmith_mult_u32(func_3(var_0.x, vec4<i32>(-65473i, u_input.a, 86818i, u_input.a)), _wgslsmith_mult_u32(1u, 71856u)), ~(~1u), min(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 51905u, 0u), vec3<u32>(0u, 7123u, 19119u)), ~4294967295u)), vec4<u32>(_wgslsmith_mult_u32(0u, 1u), 1u, 20745u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(19973u, 4294967295u)))), countOneBits(firstLeadingBit(17064i)), u_input.a);
    var_0 = select(select(select(select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, false)), select(vec2<bool>(var_0.x, true), select(vec2<bool>(true, false), vec2<bool>(true, var_0.x), var_0.x), vec2<bool>(var_0.x, var_0.x)), !vec2<bool>(var_0.x, var_0.x)), select(!select(vec2<bool>(false, true), vec2<bool>(var_0.x, true), vec2<bool>(false, false)), vec2<bool>(!var_0.x, false), !var_0.x), vec2<bool>(!var_0.x, true)), select(!select(select(vec2<bool>(var_0.x, false), vec2<bool>(true, var_0.x), vec2<bool>(true, var_0.x)), select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, true), var_0.x), vec2<bool>(var_0.x, var_0.x)), vec2<bool>(!(var_0.x & false), _wgslsmith_dot_vec3_u32(vec3<u32>(71463u, 1u, var_1.a.x), vec3<u32>(0u, var_1.a.x, 57724u)) != ~var_1.a.x), false | !(!var_0.x)), vec2<bool>(select(_wgslsmith_dot_vec4_i32(vec4<i32>(12594i, 0i, 0i, var_1.c), vec4<i32>(u_input.a, u_input.a, 17612i, var_1.c)) == -1i, any(!vec2<bool>(var_0.x, var_0.x)), any(vec2<bool>(var_0.x, var_0.x))), !any(select(vec2<bool>(false, true), vec2<bool>(var_0.x, false), var_0.x))));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -464f))));
    let var_3 = !all(!vec4<bool>(false, var_0.x, any(vec2<bool>(false, false)), true));
    return var_1;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_3 {
    var var_0 = Struct_3(Struct_2(arg_0, 88904u), vec3<i32>(reverseBits(68i), i32(-1i) * -9502i, firstTrailingBit(4920i)), Struct_2(func_2(), arg_0.a.x ^ 16201u));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(2318f, -1654f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1594f, 637f) * vec2<f32>(-187f, -1270f))))))) * vec2<f32>(669f, _wgslsmith_f_op_f32(ceil(775f))));
    var var_2 = select(firstLeadingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-23463i, -2147483647i, 1i, arg_0.c), vec4<i32>(u_input.a, -1i, arg_0.c, u_input.a), vec4<i32>(0i, 2147483647i, u_input.a, -1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-11195i, arg_0.b, -30179i, -1i), vec4<i32>(var_0.a.a.c, arg_0.c, 3205i, -2147483647i), vec4<i32>(var_0.b.x, var_0.c.a.b, arg_0.c, var_0.b.x)))) >> (~_wgslsmith_sub_u32(arg_0.a.x, arg_0.a.x) % 32u), 1i, true | select((u_input.a | u_input.a) > max(arg_0.b, -8215i), _wgslsmith_f_op_f32(step(-575f, var_1.x)) <= 369f, arg_0.a.x <= ~var_0.a.b));
    var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-730f + _wgslsmith_f_op_f32(-var_1.x))) * vec2<f32>(var_1.x, _wgslsmith_f_op_f32(trunc(var_1.x)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-864f * var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * 496f)))));
    let var_3 = Struct_3(Struct_2(arg_0, arg_1.x), var_0.b, Struct_2(Struct_1(arg_0.a, ~arg_0.c, abs(arg_0.c) >> (~1u % 32u)), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(11178u, 8872u, arg_1.x), var_0.a.a.a.yxy & vec3<u32>(1u, arg_1.x, arg_1.x)), ~arg_0.a.wyw >> (arg_0.a.zwx % vec3<u32>(32u)))));
    return var_3;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: i32) -> Struct_1 {
    let var_0 = arg_1.c.a;
    var var_1 = arg_1.c.a.a.x;
    let var_2 = ~func_1(arg_1.c.a, _wgslsmith_div_vec4_u32(abs(func_1(Struct_1(arg_1.a.a.a, 19657i, u_input.a), var_0.a).c.a.a), vec4<u32>(49382u, arg_1.a.b | arg_1.c.b, abs(0u), var_0.a.x))).c.a.a.zz;
    var_1 = min(_wgslsmith_div_u32(var_0.a.x, ~1u), var_2.x);
    var var_3 = arg_1.c;
    return Struct_1(~_wgslsmith_div_vec4_u32(select(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.c.b, arg_1.c.b, var_0.a.x, 54296u), arg_1.c.a.a), var_0.a & vec4<u32>(var_0.a.x, 4294967295u, arg_1.c.a.a.x, var_2.x), false), ~(var_0.a ^ var_0.a)), 1i >> (~(_wgslsmith_add_u32(24787u, var_0.a.x) & func_2().a.x) % 32u), max(arg_1.c.a.c, arg_2));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: i32) -> Struct_1 {
    var var_0 = vec2<bool>(false, !(!all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)))));
    var var_1 = vec2<bool>(var_0.x, any(vec2<bool>(select(var_0.x, var_0.x, true), var_0.x)) & !var_0.x);
    let var_2 = u_input.a;
    var var_3 = arg_1.a;
    var_0 = vec2<bool>(all(vec3<bool>(!var_0.x, var_1.x, false)), true);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_5(vec3<i32>(~(~(-1i)), u_input.a << (~4294967295u % 32u), abs(0i)), Struct_2(func_4(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), true), func_1(Struct_1(vec4<u32>(43177u, 18221u, 4294967295u, 11641u), -1i, 2147483647i), vec4<u32>(31413u, 0u, 1u, 4294967295u)), _wgslsmith_sub_i32(10800i, u_input.a)), ~(~44645u)), func_1(func_2(), vec4<u32>(~1967u, 0u, 9066u, ~161479u)).c, max(-1i, u_input.a)), 1u);
    var var_1 = var_0.a;
    let var_2 = u_input.a;
    var var_3 = func_5(-vec3<i32>(var_2, -var_2, _wgslsmith_sub_i32(-var_2, _wgslsmith_add_i32(var_2, -40963i))), var_0, Struct_2(var_0.a, func_1(Struct_1(var_0.a.a, abs(var_2), -var_2), select(_wgslsmith_mod_vec4_u32(var_1.a, vec4<u32>(var_0.b, 46902u, 1u, 0u)), var_1.a, select(true, true, false))).c.a.a.x), var_0.a.b);
    let var_4 = var_0;
    var_3 = var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(firstLeadingBit(var_4.a.a.yxx)));
}

