struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = true;
    var_0 = true;
    let var_1 = Struct_5(vec4<i32>((_wgslsmith_add_i32(1i, 30434i) >> (0u % 32u)) ^ _wgslsmith_clamp_i32(arg_0.b, min(15373i, arg_0.b), 1i), select(arg_0.b, ~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b, -48399i), vec2<i32>(-2147483647i, arg_0.b)), true), arg_0.b, arg_0.b), Struct_1(arg_0.a, ~(arg_0.b >> (abs(1u) % 32u))));
    var var_2 = Struct_2(Struct_1(firstLeadingBit(~abs(vec3<u32>(u_input.a, u_input.a, arg_0.a.x))), ~(-2147483647i)));
    let var_3 = Struct_3(vec3<bool>(true, true, true), Struct_1(~(~(~arg_0.a)), var_1.a.x));
    return _wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(5092i, -8254i, var_1.b.b), var_1.a.xyz), ~vec3<i32>(2147483647i, var_3.b.b, -2147483647i)) ^ var_1.a.xzw), var_1.a.xxw);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_5(~(~abs(vec4<i32>(32478i, -2173i, -1i, 2147483647i))), Struct_1(vec3<u32>(1u, ~(~111946u), _wgslsmith_add_u32(u_input.a, min(49831u, 13358u))), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(select(vec2<i32>(28355i, -11283i), vec2<i32>(-1i, -13407i), true), _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -64997i), vec2<i32>(0i, 27733i), vec2<i32>(-61136i, 2147483647i))), -1i)));
    return Struct_2(Struct_1(reverseBits(vec3<u32>(~var_0.b.a.x, u_input.a & var_0.b.a.x, 4294967295u)), func_3(Struct_1(var_0.b.a, abs(5069i)))));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = Struct_5(vec4<i32>(func_3(func_2().a), -2147483647i, ~_wgslsmith_add_i32(arg_0.a.b, arg_0.a.b) << (u_input.a % 32u), arg_0.a.b), func_2().a);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-908f + 1590f))) * _wgslsmith_f_op_f32(-296f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1404f + -1243f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1033f), _wgslsmith_f_op_f32(min(712f, -659f))), _wgslsmith_f_op_f32(1353f + _wgslsmith_div_f32(-285f, 678f)))))));
    var var_2 = !vec2<bool>(false, all(vec4<bool>(select(true, false, true), true, true, all(vec4<bool>(false, true, true, false)))));
    var_2 = !(!vec2<bool>(true, !var_2.x));
    var_2 = !select(select(select(vec2<bool>(var_2.x, false), select(vec2<bool>(false, var_2.x), vec2<bool>(var_2.x, var_2.x), var_2.x), select(vec2<bool>(true, var_2.x), vec2<bool>(true, true), true)), vec2<bool>(true, var_2.x & var_2.x), vec2<bool>(select(var_2.x, true, var_2.x), !var_2.x)), select(!vec2<bool>(true, var_2.x), select(vec2<bool>(true, var_2.x), !vec2<bool>(false, var_2.x), !var_2.x), vec2<bool>(!var_2.x, var_2.x)), !(var_2.x & (var_0.b.a.x >= arg_0.a.a.x)));
    return func_2();
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = !(!vec2<bool>(true && !arg_0, false));
    let var_1 = func_4(func_2());
    let var_2 = -1000f;
    let var_3 = Struct_3(vec3<bool>(1287f <= _wgslsmith_f_op_f32(-var_2), !all(select(vec4<bool>(var_0.x, arg_0, false, arg_0), vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(var_0.x, true, false, var_0.x))), any(!vec2<bool>(true, var_0.x))), func_4(func_2()).a);
    let var_4 = var_3;
    return var_1.a;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_4, arg_3: vec4<i32>) -> Struct_3 {
    let var_0 = vec2<bool>(arg_2.a.a.x, true);
    var var_1 = 14971u;
    var var_2 = Struct_5(arg_3, Struct_1(arg_2.a.b.a, arg_2.a.b.b));
    return arg_2.a;
}

fn func_6(arg_0: Struct_3, arg_1: i32, arg_2: f32) -> Struct_1 {
    var var_0 = vec4<u32>(~(~_wgslsmith_dot_vec3_u32(arg_0.b.a, ~vec3<u32>(arg_0.b.a.x, arg_0.b.a.x, u_input.a))), u_input.a, 370u, _wgslsmith_clamp_u32(17009u, arg_0.b.a.x, ~arg_0.b.a.x));
    var var_1 = select(!select(arg_0.a.yx, arg_0.a.yy, vec2<bool>(true, arg_0.a.x)), select(arg_0.a.zy, vec2<bool>((arg_0.a.x && false) || any(arg_0.a), arg_0.a.x | !arg_0.a.x), vec2<bool>(arg_0.a.x, (var_0.x >> (9290u % 32u)) >= arg_0.b.a.x)), !(any(vec2<bool>(true, true)) || !arg_0.a.x));
    var var_2 = func_4(func_2());
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - -141f));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(max(-231f, arg_2)), -1000f, _wgslsmith_f_op_f32(exp2(arg_2))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, 1237f)))) - vec3<f32>(-1712f, _wgslsmith_f_op_f32(floor(arg_2)), 672f)))));
    return func_1(!(!(!arg_0.a.x)) || ((~92628i >> (func_2().a.a.x % 32u)) < -var_2.a.b));
}

fn func_7(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = 2147483647i ^ ~arg_2.b;
    var var_1 = arg_2.a.yx;
    let var_2 = Struct_5(vec4<i32>(_wgslsmith_mult_i32(abs(-1i), ~0i) ^ ~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_2.b, arg_0.x), arg_0), -min(0i, abs(-2147483647i)), arg_2.b, arg_2.b), func_5(Struct_1(arg_1.a, -(~(-1i))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 4294967295u), max(vec2<u32>(34010u, u_input.a), arg_2.a.xz)), Struct_4(Struct_3(vec3<bool>(false, true, false), arg_2)), ~(vec4<i32>(arg_2.b, arg_0.x, arg_2.b, arg_1.b) | _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.b, -1i, arg_0.x, arg_2.b), vec4<i32>(arg_0.x, 23469i, arg_0.x, arg_2.b)))).b);
    var var_3 = Struct_4(func_5(func_5(arg_2, 1u, Struct_4(func_5(Struct_1(var_2.b.a, arg_2.b), 4294967295u, Struct_4(Struct_3(vec3<bool>(true, true, true), arg_1)), vec4<i32>(arg_2.b, -38267i, 2147483647i, arg_1.b))), var_2.a).b, u_input.a, Struct_4(func_5(func_5(Struct_1(vec3<u32>(4294967295u, 1u, var_1.x), arg_0.x), var_2.b.a.x, Struct_4(Struct_3(vec3<bool>(true, true, false), var_2.b)), vec4<i32>(arg_1.b, -32373i, -32666i, -15606i)).b, _wgslsmith_add_u32(0u, arg_1.a.x), Struct_4(Struct_3(vec3<bool>(false, false, true), arg_2)), ~var_2.a)), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(~var_2.a, _wgslsmith_mod_vec4_i32(var_2.a, vec4<i32>(arg_2.b, arg_1.b, arg_0.x, -15932i))), select(vec4<i32>(arg_0.x, arg_0.x, 1i, arg_2.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.b, arg_2.b, -3780i, arg_2.b), vec4<i32>(-1i, 8209i, 44340i, arg_2.b), var_2.a), vec4<bool>(false, true, false, true)))));
    var var_4 = _wgslsmith_dot_vec4_i32(var_2.a, ~var_2.a);
    return i32(-1i) * -6537i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = i32(-1i) * -15260i;
    var_0 = func_7(max(~(~vec3<i32>(2147483647i, 22550i, -1801i)), vec3<i32>(~(~(-2797i)), 1i, _wgslsmith_sub_i32(1i, 17508i))), Struct_1(~vec3<u32>(_wgslsmith_add_u32(30923u, 4158u), _wgslsmith_dot_vec2_u32(vec2<u32>(44652u, 1u), vec2<u32>(u_input.a, u_input.a)), 4294967295u << (u_input.a % 32u)), firstLeadingBit(~0i) << ((4294967295u >> (u_input.a % 32u)) % 32u)), func_6(func_5(func_1(true), 25097u, Struct_4(Struct_3(vec3<bool>(false, true, true), Struct_1(vec3<u32>(5689u, 11895u, u_input.a), -21210i))), ~min(vec4<i32>(13923i, 1i, 26164i, -1i), vec4<i32>(3615i, -1i, -2147483647i, -40071i))), firstLeadingBit(1i) << (firstTrailingBit(abs(u_input.a)) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-512f * 1000f))) - -1108f)));
    var_0 = 19070i;
    let var_1 = vec4<i32>(func_3(func_2().a), ~(-2147483647i), 0i, ~1i);
    var_0 = var_1.x;
    var var_2 = !any(vec4<bool>(true, _wgslsmith_mod_i32(-67551i, var_1.x) <= -1i, (var_1.x ^ var_1.x) <= ~(-17415i), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, u_input.a)) <= 62320u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -583f), -1112f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-783f - 628f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2156f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2621f, -996f))))), ~u_input.a, i32(-1i) * -countOneBits(var_1.x));
}

