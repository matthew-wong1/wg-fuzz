struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4136u, false, vec3<u32>(63707u, 65802u, 4294967295u), 0i);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = vec2<bool>(arg_0.b, true);
    var var_1 = any(!vec2<bool>(true, !any(vec2<bool>(true, true))));
    var_0 = select(vec2<bool>(select(true, !(!var_0.x), true), any(vec2<bool>(arg_0.b, true)) & true), select(vec2<bool>(true, arg_0.b), select(select(select(vec2<bool>(true, arg_0.b), vec2<bool>(true, var_0.x), true), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false), vec2<bool>(true, false)), !vec2<bool>(var_0.x, var_0.x)), !vec2<bool>(arg_0.b, false), false && any(vec3<bool>(false, var_0.x, false))), select(!(!vec2<bool>(arg_0.b, true)), select(vec2<bool>(true, arg_0.b), select(vec2<bool>(var_0.x, true), vec2<bool>(false, global0.b), false), select(vec2<bool>(global0.b, false), vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(true, global0.b))), select(!vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(true, true), vec2<bool>(true, true)))), any(select(!vec3<bool>(arg_0.b, var_0.x, true), !vec3<bool>(var_0.x, arg_0.b, global0.b), !var_0.x)));
    var var_2 = 1u;
    var_1 = true;
    return 4294967295u;
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = ~_wgslsmith_clamp_u32(arg_1.c.x, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(arg_1.c.xz, u_input.a), u_input.a), arg_1.a) ^ 14629u;
    let var_1 = Struct_1(_wgslsmith_sub_u32(func_3(Struct_1(arg_1.a, global0.b, global0.c, arg_1.d)) | u_input.a.x, arg_1.c.x), global0.b, ~(firstTrailingBit(vec3<u32>(121772u, 11480u, 16015u)) << (_wgslsmith_div_vec3_u32(min(vec3<u32>(u_input.a.x, global0.c.x, u_input.a.x), vec3<u32>(global0.c.x, arg_1.c.x, 46256u)), _wgslsmith_mult_vec3_u32(arg_1.c, arg_1.c)) % vec3<u32>(32u))), -9529i);
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-1285f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1153f, _wgslsmith_f_op_f32(-arg_0)), -1646f, false | !var_1.b)), 1000f) - vec3<f32>(arg_0, 2716f, arg_0));
    var_0 = firstTrailingBit(max(u_input.a.x, (~39986u | var_1.c.x) ^ (_wgslsmith_div_u32(var_1.a, 0u) & min(2825u, 9985u))));
    var var_3 = true;
    return Struct_1(select(~u_input.a.x, var_1.a, _wgslsmith_mult_i32(4288i | arg_1.d, 20525i) > ((global0.d << (var_1.a % 32u)) ^ 23560i)), !any(!select(vec2<bool>(true, global0.b), vec2<bool>(global0.b, var_1.b), vec2<bool>(global0.b, false))), (arg_1.c | arg_1.c) & firstLeadingBit(_wgslsmith_mod_vec3_u32(arg_1.c >> (vec3<u32>(1u, u_input.a.x, global0.c.x) % vec3<u32>(32u)), vec3<u32>(3264u, u_input.a.x, 2613u))), 14166i);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    global0 = arg_0;
    let var_0 = ~(~1u);
    let var_1 = any(vec2<bool>(false, select(!arg_0.b, any(!vec2<bool>(arg_2, true)), arg_2)));
    let var_2 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(437f + -108f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-745f, -485f)))), Struct_1(abs(global0.c.x | ~4294967295u), true, _wgslsmith_div_vec3_u32(select(vec3<u32>(0u, arg_1.c.x, global0.c.x) >> (arg_1.c % vec3<u32>(32u)), ~vec3<u32>(arg_1.c.x, 2849u, 0u), select(vec3<bool>(true, arg_1.b, arg_1.b), vec3<bool>(true, arg_0.b, false), false)), ~(~vec3<u32>(0u, 0u, var_0))), _wgslsmith_clamp_i32(arg_1.d, u_input.c.x, ~_wgslsmith_mod_i32(2147483647i, arg_0.d))));
    var var_3 = Struct_1(0u, all(!(!vec2<bool>(arg_2, var_2.b))), arg_1.c, -1i);
    return arg_1;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = Struct_1(4294967295u, false, arg_0.c, _wgslsmith_mult_i32(-2147483647i, 0i));
    global0 = arg_0;
    global0 = func_1(func_2(-108f, Struct_1(~abs(30453u), true, vec3<u32>(u_input.a.x << (u_input.a.x % 32u), arg_0.a >> (41780u % 32u), u_input.a.x), _wgslsmith_dot_vec3_i32(-vec3<i32>(15894i, 14133i, -1i), _wgslsmith_sub_vec3_i32(vec3<i32>(14373i, global0.d, global0.d), vec3<i32>(global0.d, 1i, u_input.c.x))))), Struct_1(_wgslsmith_clamp_u32(1u, firstTrailingBit(global0.a), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, 4294967295u, arg_0.a, u_input.a.x) >> (vec4<u32>(arg_0.a, u_input.a.x, arg_0.c.x, u_input.a.x) % vec4<u32>(32u)), vec4<u32>(u_input.a.x, arg_0.c.x, arg_0.c.x, global0.a))), true, arg_0.c, -24316i), true);
    let var_0 = 4294967295u;
    global0 = Struct_1(_wgslsmith_sub_u32(global0.a, 4294967295u), !(!arg_0.b), global0.c, global0.d);
    return Struct_1(u_input.a.x, arg_0.b, vec3<u32>(firstLeadingBit(36324u), countOneBits(~37468u), select(arg_0.c.x, _wgslsmith_mult_u32(4294967295u, 42176u ^ global0.c.x), true || func_1(arg_0, arg_0, global0.b).b)), _wgslsmith_mult_i32(2147483647i >> (select(_wgslsmith_sub_u32(4294967295u, u_input.a.x), 0u, false) % 32u), func_2(-998f, func_1(arg_0, func_2(191f, arg_0), global0.b)).d));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: f32) -> Struct_1 {
    var var_0 = -473f;
    var var_1 = _wgslsmith_mult_u32(~func_3(arg_0) >> (arg_0.c.x % 32u), ~(~42763u)) ^ ~global0.a;
    let var_2 = ~u_input.b;
    let var_3 = Struct_1(firstLeadingBit(17187u), func_4(Struct_1(u_input.a.x, arg_0.b, global0.c, ~(-global0.d))).b, func_2(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1378f)), _wgslsmith_f_op_f32(-arg_2)))), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1442f), func_1(Struct_1(19732u, arg_0.b, vec3<u32>(arg_0.a, arg_0.a, 3769u), 61108i), func_2(1000f, arg_0), 0i != global0.d))).c, ~arg_0.d);
    let var_4 = var_3.c.x;
    return arg_0;
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(56177u, global0.a), _wgslsmith_div_u32(21955u, 1u), 1u, 1u), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 16370u, global0.c.x), vec4<u32>(3285u, 16676u, 4294967295u, 4294967295u), vec4<u32>(arg_1.a, global0.c.x, 4294967295u, arg_1.c.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, arg_2.a, 75338u, global0.c.x), vec4<u32>(arg_1.a, 1u, arg_0, arg_0), vec4<u32>(arg_1.a, 93410u, 0u, arg_2.a)), true), ~vec4<u32>(18454u, 9380u, 70374u, arg_2.c.x) >> (vec4<u32>(43350u, 0u, arg_1.c.x, 0u) % vec4<u32>(32u))) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.c.x >> (arg_2.c.x % 32u), _wgslsmith_div_u32(~33326u, abs(1u)), arg_0, reverseBits(1u)), vec4<u32>(~min(0u, arg_1.a), _wgslsmith_sub_u32(abs(arg_1.c.x), ~arg_2.a), abs(max(0u, 31593u)), u_input.a.x)) % vec4<u32>(32u));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-157f + -245f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-351f, 1000f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1014f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1080f + 1310f) - -255f))), -464f)));
    var var_2 = arg_0;
    let var_3 = select(vec4<bool>(!all(vec2<bool>(true, true)), (max(u_input.b, global0.d) < firstTrailingBit(-22644i)) != !(var_0.x > var_0.x), false, global0.b), !vec4<bool>(arg_2.b, true & arg_3, all(vec4<bool>(false, arg_2.b, arg_1.b, false)), !any(vec3<bool>(true, false, global0.b))), true);
    let var_4 = arg_2;
    return func_5(Struct_1(~arg_1.a, any(var_3), vec3<u32>(_wgslsmith_div_u32(0u << (global0.a % 32u), _wgslsmith_add_u32(1u, var_0.x)), var_0.x, ~abs(0u)), max(select(0i, -6960i, arg_1.b), _wgslsmith_dot_vec4_i32(vec4<i32>(5850i, var_4.d, global0.d, arg_2.d), vec4<i32>(5160i, 33995i, u_input.b, 19493i)) << (min(arg_0, 141399u) % 32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(1791f, 765f, true)), 1201f, _wgslsmith_f_op_f32(round(114f)))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -364f, var_1.x)))))), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_div_f32(1490f, 380f)));
}

fn func_7(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = vec2<bool>(!arg_0.b, global0.b);
    var_0 = vec2<bool>(false, global0.b);
    var_0 = vec2<bool>(true, (arg_0.d > ~(~u_input.c.x)) && func_6(reverseBits(~u_input.a.x), Struct_1(1u, true, vec3<u32>(4294967295u, 1u, u_input.a.x), -1i), arg_0, func_6(_wgslsmith_mult_u32(1u, 0u), arg_0, Struct_1(global0.a, arg_0.b, arg_0.c, 7546i), true).b).b);
    var var_1 = -47382i;
    let var_2 = !global0.b || global0.b;
    return vec2<f32>(1f, 1f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_vec2_f32(func_7(func_6(abs(4294967295u), Struct_1(1u, global0.b, ~(~global0.c), global0.d), func_5(func_4(func_1(Struct_1(u_input.a.x, global0.b, vec3<u32>(global0.c.x, 10991u, 1u), global0.d), Struct_1(15150u, global0.b, vec3<u32>(u_input.a.x, 32989u, 0u), 1i), global0.b)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -706f), _wgslsmith_f_op_f32(-1954f + 277f), _wgslsmith_div_f32(688f, -252f)), 308f), !global0.b)));
    var var_2 = global0.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.a.x, firstTrailingBit(min(~16209u, 10620u))));
}

