struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: i32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32) -> vec3<u32> {
    var var_0 = true;
    var var_1 = vec2<bool>((_wgslsmith_mod_u32(~1u, _wgslsmith_mult_u32(1u, 16201u)) | _wgslsmith_dot_vec4_u32(~vec4<u32>(28554u, 4294967295u, 4294967295u, 40823u), vec4<u32>(1u, 4294967295u, 0u, 23075u))) >= ~1u, true);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-569f - 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-942f * 261f), _wgslsmith_f_op_f32(576f * _wgslsmith_f_op_f32(163f - -464f)))), -1245f));
    var var_3 = _wgslsmith_mod_vec2_i32(vec2<i32>(~arg_0 & max(u_input.a, -1i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(arg_0, 11928i))), vec2<i32>(-2147483647i, 1i)) << (vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 67373u, 47011u), vec3<u32>(1u, 0u, 20917u)), vec3<u32>(4294967295u, 63389u, 47459u)), abs(60870u)) % vec2<u32>(32u));
    return abs(~(~vec3<u32>(1u, 1u, 1u)));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -333f)))))));
    let var_1 = Struct_1(vec2<f32>(1241f, var_0), arg_1, firstTrailingBit(-1i), -725f, arg_3.b.x);
    var var_2 = select(reverseBits(arg_3.b), ~abs(func_3(0i)), (any(vec4<bool>(false, false, arg_1, false)) & all(vec3<bool>(var_1.b, false, var_1.b))) | true) ^ ((vec3<u32>(~var_1.e, 0u, _wgslsmith_mod_u32(arg_3.b.x, 4294967295u)) & _wgslsmith_clamp_vec3_u32(~arg_3.b, firstTrailingBit(arg_3.b), arg_3.b)) & countOneBits(_wgslsmith_div_vec3_u32(arg_3.b, arg_3.b)));
    var_2 = select(vec3<u32>(35659u, 1u, _wgslsmith_mod_u32(0u, abs(4294967295u))), arg_3.b, vec3<bool>(true, !(arg_3.b.x <= var_2.x), true));
    var_2 = vec3<u32>(1u, var_2.x, ~arg_3.b.x >> (var_1.e % 32u));
    return var_1;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_mod_i32(25197i, -_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(arg_2.c, arg_2.c)), select(vec2<i32>(-22340i, -54723i), vec2<i32>(2147483647i, 1i), vec2<bool>(arg_0, true)))) << (~1u % 32u);
    let var_2 = Struct_3(vec4<i32>(reverseBits(firstTrailingBit(_wgslsmith_mult_i32(u_input.a, -1i))), abs(var_1), (arg_2.c & ~u_input.a) ^ -70951i, _wgslsmith_div_i32(18753i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1, u_input.a), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_2.c, u_input.a), vec2<i32>(u_input.a, arg_2.c))))), _wgslsmith_add_vec3_u32(max(~vec3<u32>(arg_2.e, arg_2.e, arg_2.e), min(vec3<u32>(120236u, arg_2.e, arg_2.e), vec3<u32>(arg_2.e, arg_2.e, 0u))) >> (~_wgslsmith_add_vec3_u32(vec3<u32>(arg_2.e, arg_2.e, arg_2.e), vec3<u32>(arg_2.e, 1u, 1u)) % vec3<u32>(32u)), func_3(arg_2.c)));
    var_0 = Struct_2(!var_0.a);
    var_0 = Struct_2(!(!(!vec4<bool>(false, var_0.a.x, false, var_0.a.x))));
    return false;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_3) -> Struct_1 {
    var var_0 = vec4<bool>(any(select(vec2<bool>(arg_2.a.x, true), arg_2.a.xy, any(arg_2.a))) & (func_4(all(vec3<bool>(arg_2.a.x, false, arg_0.b)), Struct_2(arg_2.a), func_2(-1000f, false, arg_1.a.zxx, arg_3)) & true), false, all(select(vec2<bool>(false, !arg_0.b), arg_2.a.xx, !vec2<bool>(arg_0.b, false))), arg_2.a.x);
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1164f + _wgslsmith_f_op_f32(f32(-1f) * -149f))));
    let var_2 = Struct_3(-max(~vec4<i32>(arg_3.a.x, arg_1.a.x, -2147483647i, 80823i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 0i, arg_1.a.x, arg_3.a.x), _wgslsmith_div_vec4_i32(vec4<i32>(22269i, 22121i, -2147483647i, -56i), arg_3.a))), arg_1.b);
    let var_3 = Struct_3(countOneBits(arg_1.a), var_2.b);
    var var_4 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(676f, arg_0.d)))), -1769f), _wgslsmith_f_op_vec2_f32(-arg_0.a)))));
    return func_2(-629f, all(arg_2.a), var_2.a.zxx, arg_1);
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> vec4<bool> {
    let var_0 = (~_wgslsmith_mod_u32(arg_1, 29860u) & ~_wgslsmith_mult_u32(~1u, 0u)) ^ func_1(arg_0, Struct_3(-min(vec4<i32>(-15001i, u_input.a, u_input.a, -2701i), vec4<i32>(4309i, -34643i, arg_0.c, arg_0.c)), _wgslsmith_sub_vec3_u32(vec3<u32>(102857u, 1u, arg_1), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 71878u, arg_0.e), vec3<u32>(arg_0.e, arg_0.e, arg_1), vec3<u32>(arg_0.e, arg_1, arg_0.e)))), Struct_2(select(select(vec4<bool>(true, arg_0.b, arg_0.b, arg_0.b), vec4<bool>(arg_0.b, false, arg_0.b, arg_0.b), vec4<bool>(true, arg_0.b, arg_0.b, true)), select(vec4<bool>(true, false, arg_0.b, false), vec4<bool>(arg_0.b, false, arg_0.b, false), false), arg_0.b)), Struct_3(vec4<i32>(~u_input.a, 25355i, arg_0.c & arg_0.c, 20394i), select(~vec3<u32>(arg_0.e, 28650u, arg_1), ~vec3<u32>(arg_1, 4294967295u, 4294967295u), true))).e;
    let var_1 = 17072u;
    let var_2 = !(!select(!vec4<bool>(false, arg_0.b, arg_0.b, arg_0.b), vec4<bool>(arg_0.b, arg_0.b, all(vec2<bool>(arg_0.b, true)), false), select(!vec4<bool>(arg_0.b, arg_0.b, arg_0.b, false), select(vec4<bool>(true, arg_0.b, arg_0.b, false), vec4<bool>(arg_0.b, true, arg_0.b, false), false), true)));
    let var_3 = arg_0.a.x;
    var var_4 = arg_0.b;
    return vec4<bool>(true && var_2.x, (var_3 <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(738f, arg_0.d))))) && false, arg_0.b, arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_5(func_1(Struct_1(vec2<f32>(-2336f, 851f), true, 27783i, -1000f, 1u), Struct_3(reverseBits(vec4<i32>(u_input.a, 6199i, -1i, -34500i)), vec3<u32>(1u, 1u, 1u)), Struct_2(vec4<bool>(true, false, true, true)), Struct_3(reverseBits(vec4<i32>(13895i, u_input.a, u_input.a, 14864i)), ~vec3<u32>(59564u, 4155u, 0u))), ~(_wgslsmith_mult_u32(0u, 0u) & _wgslsmith_dot_vec2_u32(vec2<u32>(36723u, 1u), vec2<u32>(31670u, 1u)))));
    let var_1 = false && var_0.a.x;
    var var_2 = Struct_2(vec4<bool>(false, true, func_5(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1671f, -1196f) * vec2<f32>(-1208f, -781f)), var_1, u_input.a, _wgslsmith_f_op_f32(-154f - 546f), func_1(Struct_1(vec2<f32>(-649f, 1328f), true, 0i, 2327f, 4294967295u), Struct_3(vec4<i32>(1i, u_input.a, u_input.a, u_input.a), vec3<u32>(62092u, 4294967295u, 534u)), var_0, Struct_3(vec4<i32>(-1i, 12660i, u_input.a, -66547i), vec3<u32>(36883u, 4294967295u, 83785u))).e), 1u).x, false));
    let var_3 = var_0;
    let var_4 = true;
    let var_5 = abs(countOneBits(abs(~(~vec4<u32>(28133u, 20264u, 0u, 0u)))));
    var var_6 = 102433u;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.wz, select(var_5.wz, vec2<u32>(~max(2563u, var_5.x), ~0u | var_5.x), var_3.a.zz), vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(min(vec2<i32>(u_input.a, u_input.a), vec2<i32>(8155i, u_input.a)), ~vec2<i32>(u_input.a, 2147483647i)), u_input.a);
}

