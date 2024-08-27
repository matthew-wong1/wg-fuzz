struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(22951u, vec4<u32>(1u, 0u, 9705u, 4294967295u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> vec4<i32> {
    global0 = arg_2;
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-909f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1810f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-374f * 1191f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(386f, -174f, -1683f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1231f, 513f, 1415f), vec3<f32>(-1597f, 1000f, 1735f), arg_1)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-463f, -776f, -477f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1010f, -1153f, 1889f))))))));
    var var_1 = arg_2;
    let var_2 = var_0.x;
    let var_3 = !select(vec4<bool>(arg_1 && true, (u_input.a.x >> (var_1.a % 32u)) >= (var_1.a >> (arg_2.a % 32u)), false, arg_1), vec4<bool>(true, arg_1, true, arg_1), !(!(!vec4<bool>(false, arg_1, false, true))));
    return abs(~(~_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, -2147483647i, arg_0, 9258i), vec4<i32>(arg_0, arg_0, -2147483647i, -15616i)))) >> ((global0.b >> (_wgslsmith_mod_vec4_u32(global0.b, ~(~var_1.b)) % vec4<u32>(32u))) % vec4<u32>(32u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: i32) -> Struct_1 {
    let var_0 = ~select(-(~vec4<i32>(arg_3, arg_3, -13281i, -1i) >> (arg_0.b % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(func_3(1i, true, arg_0), abs(vec4<i32>(12650i, arg_3, arg_3, arg_3) | vec4<i32>(arg_3, arg_3, -4747i, arg_3))), any(vec2<bool>(true, true)));
    global0 = Struct_1(1u, (_wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.a.x, arg_1.a, arg_2.x, arg_2.x), arg_1.b, vec4<bool>(false, true, false, false)), arg_0.b) << (vec4<u32>(arg_0.b.x, 4072u, _wgslsmith_mult_u32(arg_0.b.x, arg_2.x), ~4294967295u) % vec4<u32>(32u))) & countOneBits(arg_0.b));
    var var_1 = var_0.xx;
    var var_2 = select(vec4<bool>(select(any(vec3<bool>(true, false, false)), select(all(vec4<bool>(true, false, false, false)), true, true), any(vec4<bool>(true, true, true, true))), any(vec4<bool>(true, true, true, true)), _wgslsmith_mod_u32(countOneBits(arg_0.b.x), ~1u) < arg_1.b.x, true), select(select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), true), vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false))), vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec4<bool>(false, true, false, false)), true, false)), vec4<bool>(true, true, true, true), !select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), false), true)), select(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), false)), vec4<bool>(_wgslsmith_add_i32(19838i, var_1.x) >= _wgslsmith_add_i32(var_1.x, var_0.x), select(any(vec3<bool>(true, true, false)), true, false), 1i > reverseBits(var_1.x), !all(vec4<bool>(false, false, false, false))), true));
    let var_3 = !any(vec3<bool>(all(var_2.xwy), var_2.x, !(true && var_2.x)));
    return Struct_1(global0.a ^ max(min(1106u, firstTrailingBit(47790u)), 1328u), vec4<u32>(4294967295u, min(_wgslsmith_dot_vec4_u32(arg_0.b ^ vec4<u32>(arg_2.x, 26857u, arg_0.b.x, global0.a), abs(vec4<u32>(arg_1.b.x, 7232u, 32146u, 30070u))), ~(~arg_1.a)), ~_wgslsmith_mult_u32(arg_0.b.x << (4294967295u % 32u), 12435u), ~(arg_1.b.x ^ _wgslsmith_mod_u32(arg_0.a, arg_0.a))));
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = func_2(Struct_1(u_input.b, abs(min(vec4<u32>(global0.b.x, global0.b.x, 0u, 4294967295u), countOneBits(arg_2.b)))), arg_2, global0.b.xzw, arg_0);
    global0 = Struct_1(_wgslsmith_mod_u32(func_2(Struct_1(arg_3.b.x, select(arg_3.b, vec4<u32>(11667u, 4294967295u, arg_2.b.x, u_input.a.x), false)), func_2(Struct_1(24977u, arg_3.b), arg_2, reverseBits(var_0.b.zwz), -1i), min(_wgslsmith_add_vec3_u32(vec3<u32>(arg_3.b.x, 19645u, arg_2.b.x), arg_2.b.wxy), vec3<u32>(0u, 13344u, var_0.a)), ~arg_0 | reverseBits(2147483647i)).a, ~_wgslsmith_mult_u32(global0.b.x, _wgslsmith_mult_u32(var_0.a, 4294967295u))), select(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 0u, var_0.a, 1u), arg_3.b), ~vec4<u32>(global0.a, arg_2.a, arg_3.b.x, 100444u), vec4<bool>(true, true, true, true)) | vec4<u32>(countOneBits(global0.a >> (2618u % 32u)), ~var_0.b.x, global0.b.x, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, 1u, 4294967295u, 9244u)), ~global0.b)));
    let var_1 = firstLeadingBit(~(vec3<u32>(~arg_2.b.x, _wgslsmith_mult_u32(var_0.a, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(28248u, 12294u, u_input.a.x), vec3<u32>(arg_3.a, 32234u, 1u))) ^ arg_3.b.wyz));
    var_0 = func_2(func_2(Struct_1(var_1.x, vec4<u32>(abs(1u), var_1.x, 27177u, arg_2.b.x)), Struct_1(_wgslsmith_div_u32(global0.b.x >> (arg_3.b.x % 32u), _wgslsmith_add_u32(0u, arg_3.a)), _wgslsmith_mod_vec4_u32(arg_3.b, ~var_0.b)), vec3<u32>(global0.b.x, _wgslsmith_sub_u32(1u, arg_3.b.x << (var_0.b.x % 32u)), _wgslsmith_mod_u32(70590u, 1u)), ~arg_1.x), func_2(arg_2, Struct_1(81539u, global0.b), min(var_1, vec3<u32>(abs(0u), 16620u, _wgslsmith_dot_vec3_u32(arg_3.b.zyy, vec3<u32>(45764u, global0.a, 21357u)))), ~46185i), var_1, select(29050i, -195i, !(u_input.a.x < arg_3.a)));
    var_0 = Struct_1(_wgslsmith_sub_u32(arg_3.b.x, _wgslsmith_clamp_u32(1u, var_0.b.x, firstLeadingBit(abs(var_1.x)))), arg_3.b);
    return 25572u;
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0;
    var var_1 = select(vec4<bool>((func_2(Struct_1(global0.a, vec4<u32>(58672u, u_input.a.x, global0.a, 11620u)), arg_0, arg_0.b.xzy, -30806i).b.x <= abs(u_input.a.x)) || (~var_0.a < var_0.a), false, all(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), all(vec3<bool>(true, true, true))), !select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true)), !select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), true), all(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    let var_2 = vec3<bool>(var_1.x, false, true);
    var var_3 = 490f;
    var var_4 = ~7473i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), 1415f, false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 51833u ^ u_input.b), ~vec2<u32>(u_input.b, 119327u)), u_input.b), ~(~(global0.b >> (vec4<u32>(global0.b.x, 101098u, 18323u, global0.b.x) % vec4<u32>(32u))) << (abs(vec4<u32>(4527u, global0.b.x, 0u, 42675u)) % vec4<u32>(32u))));
    let var_0 = _wgslsmith_f_op_f32(func_4(Struct_1(1u, _wgslsmith_sub_vec4_u32(~global0.b, vec4<u32>(u_input.a.x, global0.a, u_input.b, 32056u) | global0.b) & vec4<u32>(_wgslsmith_div_u32(global0.a, 8240u), func_1(895i, vec3<i32>(71510i, -9468i, 1i), Struct_1(1u, global0.b), Struct_1(4294967295u, vec4<u32>(22564u, 37219u, u_input.b, global0.b.x))), global0.a, _wgslsmith_add_u32(u_input.b, 62578u)))));
    var var_1 = func_2(func_2(Struct_1(_wgslsmith_clamp_u32(~111370u, global0.b.x, global0.b.x), _wgslsmith_mult_vec4_u32(global0.b | vec4<u32>(60962u, 0u, 30157u, u_input.a.x), vec4<u32>(u_input.b, u_input.a.x, 1u, 66808u))), func_2(Struct_1(u_input.a.x, global0.b), Struct_1(global0.b.x << (0u % 32u), vec4<u32>(global0.b.x, global0.b.x, 25567u, global0.a)), ~max(vec3<u32>(4294967295u, 1u, global0.a), vec3<u32>(0u, 38308u, 12646u)), _wgslsmith_div_i32(2806i, -10094i >> (1u % 32u))), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a.x, 1u, global0.b.x), global0.b.wzy), 1i), Struct_1(~u_input.a.x, ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(35888u, 1u, 57367u, 65665u), vec4<u32>(56538u, 1u, 1u, 1u)))), max(global0.b.yxw, ~global0.b.wxw >> (_wgslsmith_add_vec3_u32(func_2(Struct_1(106274u, vec4<u32>(1u, 0u, 22833u, 110077u)), Struct_1(4294967295u, vec4<u32>(18878u, global0.a, 34004u, u_input.b)), vec3<u32>(26314u, 4294967295u, global0.a), -2147483647i).b.wwx, vec3<u32>(u_input.a.x, 0u, global0.b.x) | vec3<u32>(u_input.a.x, global0.a, 15575u)) % vec3<u32>(32u))), 35937i);
    let var_2 = Struct_1(~(~firstTrailingBit(var_1.a)) >> (abs(0u) % 32u), abs(~_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(global0.b, global0.b, vec4<u32>(var_1.a, 19133u, 44417u, 0u)), abs(global0.b))));
    var_1 = var_2;
    global0 = var_2;
    var var_3 = ~_wgslsmith_mod_vec4_i32(~min(vec4<i32>(0i, 10977i, -1i, -8414i), select(vec4<i32>(0i, -19611i, 28597i, 2147483647i), vec4<i32>(0i, 62495i, 2147483647i, 6975i), vec4<bool>(true, true, true, true))), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(27942i, 64067i, 13852i, 35011i), ~vec4<i32>(0i, 1i, 0i, 9265i), vec4<i32>(-2147483647i, 0i, 19352i, -1190i) >> (global0.b % vec4<u32>(32u)))));
    let var_4 = -49776i > _wgslsmith_mod_i32(-var_3.x, ~var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - var_0)), _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(f32(-1f) * -323f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-731f - var_0) * var_0))), var_0);
}

