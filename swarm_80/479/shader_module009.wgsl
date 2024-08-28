struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 0u, 40637u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(~_wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(u_input.b.x, 102665u, 4294967295u, 16914u)), vec4<u32>(max(0u, 4294967295u), u_input.c ^ u_input.b.x, global0.x, ~4294967295u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, -1369f))) * -822f), 535f)), true == (u_input.c <= 11532u));
    var var_1 = firstTrailingBit(~(-u_input.a.x));
    var var_2 = Struct_1(reverseBits(0u), var_0.b, var_0.c);
    var_0 = Struct_1(_wgslsmith_add_u32(global0.x, select(~29086u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, u_input.c, 70997u, 1u), vec4<u32>(u_input.b.x, 4294967295u, 37911u, 0u)), 4294967295u), select(-20899i >= u_input.a.x, var_2.c, any(vec2<bool>(var_2.c, var_2.c))))), var_2.b, false && ((!var_0.c & (false & var_0.c)) || true));
    let var_3 = vec3<i32>(~u_input.a.x, 1i, u_input.a.x);
    return 97524u;
}

fn func_4(arg_0: u32, arg_1: vec2<bool>) -> vec3<bool> {
    var var_0 = ~vec3<u32>(global0.x >> (global0.x % 32u), _wgslsmith_clamp_u32(~4294967295u, _wgslsmith_add_u32(4294967295u, arg_0), _wgslsmith_clamp_u32(14245u, arg_0, arg_0)), arg_0) ^ vec3<u32>(global0.x, 4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 4294967295u, 60945u, u_input.b.x), vec4<u32>(u_input.c, 70318u, global0.x, global0.x)));
    global0 = reverseBits(reverseBits(countOneBits(~vec3<u32>(arg_0, 0u, 12502u) | ~vec3<u32>(var_0.x, 0u, 4294967295u))));
    let var_1 = 550f;
    var var_2 = i32(-1i) * -1i;
    var var_3 = vec4<bool>(true, (!all(vec3<bool>(arg_1.x, arg_1.x, false)) && all(select(arg_1, vec2<bool>(arg_1.x, false), arg_1))) | all(select(arg_1, arg_1, vec2<bool>(true, arg_1.x))), arg_1.x, !arg_1.x);
    return select(vec3<bool>(all(vec2<bool>(select(false, true, true), arg_1.x)), !var_3.x, true), var_3.wyx, select(vec3<bool>(!(arg_0 < 4294967295u), 8108i != u_input.a.x, arg_1.x), var_3.wxx, vec3<bool>(!var_3.x, !var_3.x, var_3.x)));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_mult_u32(countOneBits(1u), u_input.c), (vec2<u32>(global0.x ^ 12028u, abs(0u)) << (vec2<u32>(0u, 17348u) % vec2<u32>(32u))) << (vec2<u32>(abs(4294967295u), min(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 1u), vec2<u32>(32467u, 4294967295u)))) % vec2<u32>(32u)), Struct_1(reverseBits(1u), 1739f, !(!arg_1)), Struct_1(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1414f), _wgslsmith_f_op_f32(round(-892f))))), any(func_4(func_3(), select(vec2<bool>(arg_1, false), vec2<bool>(false, false), vec2<bool>(arg_1, false))))));
    global0 = ~(vec3<u32>(u_input.b.x, 82215u, global0.x) ^ vec3<u32>(_wgslsmith_div_u32(abs(0u), 46626u), min(_wgslsmith_clamp_u32(4294967295u, 2508u, global0.x), _wgslsmith_sub_u32(87050u, 30057u)), _wgslsmith_mod_u32(u_input.c, u_input.c >> (global0.x % 32u))));
    global0 = ~select(select(countOneBits(countOneBits(vec3<u32>(arg_2, var_0.c.a, global0.x))), ~vec3<u32>(1u, 1u, 1u), func_4(~16424u, vec2<bool>(var_0.d.c, var_0.c.c))), vec3<u32>(_wgslsmith_clamp_u32(select(4294967295u, arg_2, true), firstTrailingBit(arg_2), _wgslsmith_add_u32(0u, 4294967295u)), func_3(), 31488u), arg_1);
    let var_1 = var_0.c.c;
    let var_2 = ~(~vec2<u32>(~_wgslsmith_add_u32(1u, global0.x), reverseBits(arg_2)));
    return var_0.d;
}

fn func_1(arg_0: i32, arg_1: vec3<f32>) -> Struct_2 {
    var var_0 = func_2(arg_0, all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), _wgslsmith_mult_u32(~_wgslsmith_add_u32(max(u_input.b.x, global0.x), ~u_input.c), abs(0u)));
    var_0 = func_2(arg_0, func_2(_wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_div_i32(-2147483647i, u_input.a.x), arg_0, 1i), -2147483647i), false, _wgslsmith_add_u32(u_input.c, ~global0.x & 2735u)).c, _wgslsmith_add_u32(1u, ~(~4114u)));
    var_0 = Struct_1(global0.x, 754f, var_0.c);
    let var_1 = Struct_2(7478u, vec2<u32>(countOneBits(max(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 32437u), vec2<u32>(4294967295u, 34055u)), ~32554u)), abs(~abs(0u))), Struct_1(~var_0.a, _wgslsmith_f_op_f32(244f - _wgslsmith_f_op_f32(-arg_1.x)), !var_0.c), Struct_1(1u, func_2(_wgslsmith_mult_i32(10129i & u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(-1i, u_input.a.x))), any(vec2<bool>(true, true)), select(1u, global0.x, all(vec3<bool>(var_0.c, var_0.c, var_0.c)))).b, var_0.c));
    let var_2 = arg_1.yz;
    return Struct_2(~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(55969u, 0u, global0.x)) >> (~vec3<u32>(var_1.b.x, 0u, var_0.a) % vec3<u32>(32u)), ~select(vec3<u32>(0u, 1u, u_input.b.x), vec3<u32>(global0.x, 19042u, 66312u), true)), var_1.b, Struct_1(1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-282f + var_0.b)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-210f))))), true), func_2(-1i, var_1.c.c, ~func_3()));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = Struct_1(select(~(~1u), _wgslsmith_mult_u32(~global0.x, 0u), true), _wgslsmith_f_op_f32(step(-354f, _wgslsmith_div_f32(694f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.b))))), !arg_0);
    let var_1 = 0i;
    global0 = ~(~_wgslsmith_div_vec3_u32(vec3<u32>(12017u, global0.x, arg_3.a), ~vec3<u32>(10065u, 0u, 0u)) & abs(select(_wgslsmith_div_vec3_u32(vec3<u32>(0u, global0.x, 30925u), vec3<u32>(var_0.a, 4294967295u, u_input.b.x)), vec3<u32>(0u, u_input.b.x, arg_1.b.x), vec3<bool>(false, false, false))));
    var_0 = func_1(~(~(-2147483647i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b, 1000f, -268f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-190f, 1948f, -732f))))) + vec3<f32>(arg_3.b, -1900f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1140f * -464f))))).d;
    var_0 = func_1(_wgslsmith_mod_i32(~(~0i), abs(-u_input.a.x)) ^ firstTrailingBit(min(_wgslsmith_mod_i32(-1i, u_input.a.x), _wgslsmith_sub_i32(-2153i, var_1))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_3.b, 1433f, arg_3.b), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, arg_1.d.b, -341f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.b, -600f, -1000f)))), vec3<f32>(292f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1119f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(148f, 2192f, arg_0))))))).d;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec4_i32(u_input.a, _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, 1i, u_input.a.x, 19137i), u_input.a) >> (~(~vec4<u32>(u_input.b.x, 40844u, u_input.c, u_input.b.x)) % vec4<u32>(32u)), firstTrailingBit(~u_input.a ^ _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.a.x, -8041i, u_input.a.x), vec4<i32>(20973i, -1i, -12133i, 0i))));
    let var_1 = u_input.a.zz;
    let var_2 = -242f;
    global0 = abs(vec3<u32>(0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 3150u, 5274u), ~vec3<u32>(20758u, 109403u, 4294967295u)), _wgslsmith_mod_u32(~u_input.b.x, u_input.c)));
    let var_3 = func_5(global0.x != 0u, func_1(~(~(-2147483647i)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_2)), _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)))), vec4<i32>(~u_input.a.x, 8833i, u_input.a.x, -26181i), func_1(var_0.x, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(660f, var_2, 544f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-919f, -623f, var_2) + vec3<f32>(var_2, var_2, -361f)))))).c);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xzx);
}

