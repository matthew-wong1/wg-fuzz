struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: u32,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: f32, arg_3: vec3<u32>) -> bool {
    let var_0 = u_input.b.xy;
    let var_1 = vec2<u32>(0u, firstTrailingBit(11718u));
    let var_2 = _wgslsmith_f_op_vec3_f32(arg_0.b.yzx + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(arg_0.b.wwy - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, arg_2, -542f) * vec3<f32>(-612f, 600f, arg_2))), _wgslsmith_f_op_vec3_f32(arg_0.b.xyz + _wgslsmith_f_op_vec3_f32(-arg_0.b.xxy))))));
    let var_3 = arg_0;
    var var_4 = _wgslsmith_mult_u32((1u ^ _wgslsmith_mult_u32(arg_3.x, ~53182u)) ^ min(~reverseBits(31104u), arg_3.x), u_input.c);
    return true;
}

fn func_2() -> bool {
    var var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1561f + -1391f)), -967f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1387f, 609f)))));
    let var_2 = u_input.b;
    var_0 = vec3<i32>(~(~2147483647i), u_input.a, _wgslsmith_clamp_i32(-20617i, select(1i, _wgslsmith_div_i32(var_2.x, ~21955i), !func_3(Struct_2(vec2<u32>(58914u, 34605u), vec4<f32>(-2933f, 1275f, -912f, -1719f), vec4<u32>(0u, u_input.c, 6822u, u_input.c), 16011u, vec4<i32>(-1i, -2147483647i, 2147483647i, -43325i)), var_0.x, -1452f, vec3<u32>(1u, 19125u, u_input.c))), firstLeadingBit(-5528i)));
    var var_3 = true | !(true & any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false)));
    return any(select(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, false), false)), select(vec2<bool>(false, true), vec2<bool>(true, true), !func_3(Struct_2(vec2<u32>(u_input.c, 41592u), vec4<f32>(var_1, var_1, -125f, var_1), vec4<u32>(u_input.c, 4294967295u, 7458u, u_input.c), 4294967295u, vec4<i32>(var_0.x, -1i, 2147483647i, 1i)), -1i, 128f, vec3<u32>(u_input.c, u_input.c, 28643u))), vec2<bool>(true, true)));
}

fn func_1() -> Struct_1 {
    var var_0 = !select(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)), true), vec4<bool>(true, true, true, true), func_2());
    let var_1 = var_0.xz;
    var_0 = select(select(!(!select(vec4<bool>(var_0.x, var_1.x, var_0.x, var_1.x), vec4<bool>(true, var_0.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_0.x, var_0.x, var_0.x))), select(select(!vec4<bool>(true, false, var_1.x, false), select(vec4<bool>(var_0.x, var_0.x, false, var_1.x), vec4<bool>(var_1.x, var_0.x, var_1.x, true), false), true), select(vec4<bool>(var_0.x, var_0.x, false, var_1.x), !vec4<bool>(false, var_1.x, var_1.x, var_0.x), select(vec4<bool>(var_1.x, false, var_0.x, true), vec4<bool>(false, false, true, true), false)), !var_1.x), !select(vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(true, true, var_0.x, false), var_0.x && true)), !select(vec4<bool>(false, var_0.x, var_1.x, var_1.x), select(!vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, true, var_0.x), !vec4<bool>(var_1.x, true, false, true)), vec4<bool>(var_0.x, var_1.x, var_1.x, true)), !any(!(!vec4<bool>(true, var_1.x, var_1.x, var_0.x))));
    let var_2 = _wgslsmith_clamp_u32(abs(u_input.c), (13389u << (u_input.c % 32u)) >> (u_input.c % 32u), reverseBits(_wgslsmith_mult_u32(0u, u_input.c)));
    var var_3 = abs(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.c, u_input.c, 0u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(28686u, u_input.c, 28399u))) >> (~min(vec3<u32>(var_2, 0u, u_input.c), vec3<u32>(var_2, 4294967295u, var_2)) % vec3<u32>(32u)), ~vec3<u32>(46977u, _wgslsmith_mod_u32(u_input.c, 4294967295u), var_2)));
    return Struct_1(firstLeadingBit(-(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x) ^ u_input.b)) ^ vec3<i32>(u_input.a, _wgslsmith_div_i32(1i, 1i) >> ((u_input.c >> (var_2 % 32u)) % 32u), select(countOneBits(u_input.a), -2147483647i, true)), !(func_3(Struct_2(var_3.xy, vec4<f32>(887f, -1000f, 863f, -1014f), vec4<u32>(29320u, u_input.c, 27396u, 78660u), 69119u, vec4<i32>(1i, -2147483647i, u_input.b.x, -8326i)), ~u_input.b.x, _wgslsmith_div_f32(-489f, 871f), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 1u, var_2), vec3<u32>(u_input.c, var_3.x, var_3.x))) & (true && var_0.x)), var_2, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-212f, _wgslsmith_div_f32(460f, 745f), -1357f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(623f, 181f, -491f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-760f, -1358f, 1528f)))), ~select(~u_input.c, _wgslsmith_clamp_u32(4294967295u, var_3.x & var_3.x, ~37903u), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = select(select(vec2<bool>(false || (u_input.c == var_0.c), !var_0.b || (var_0.b & false)), vec2<bool>(var_0.b, !var_0.b), !select(vec2<bool>(true, true), vec2<bool>(false, var_0.b), !vec2<bool>(var_0.b, var_0.b))), vec2<bool>(true != (var_0.b || var_0.b), !var_0.b), !select(vec2<bool>(all(vec4<bool>(var_0.b, var_0.b, true, false)), true), select(vec2<bool>(var_0.b, false), vec2<bool>(true, var_0.b), any(vec2<bool>(false, var_0.b))), var_0.b));
    let var_2 = Struct_1(vec3<i32>(reverseBits(var_0.a.x) << (16587u % 32u), -1i, -22624i) | ~_wgslsmith_div_vec3_i32(-var_0.a, var_0.a), false, firstLeadingBit(abs(min(var_0.e, min(1u, var_0.c)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1277f, var_0.d.x, var_0.d.x)))) * vec3<f32>(_wgslsmith_f_op_f32(floor(1000f)), -413f, var_0.d.x))), 4294967295u);
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-886f, var_0.d.x, -379f, 1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-876f, var_2.d.x, 905f, 851f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, 1000f, var_0.d.x, 912f) - vec4<f32>(var_2.d.x, -590f, 1326f, -1001f)))))));
    var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_0.d.x, var_3.x, var_2.d.x)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.d.x, 848f, -199f, 1554f), vec4<f32>(931f, -849f, var_2.d.x, var_0.d.x)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -1078f, var_2.d.x, -524f), vec4<f32>(var_2.d.x, -608f, 2872f, var_0.d.x), select(vec4<bool>(true, false, var_0.b, var_2.b), vec4<bool>(false, false, false, false), vec4<bool>(true, true, var_1.x, true)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1575f, -1000f, 672f, 2431f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, var_0.d.x, var_3.x, 332f) - vec4<f32>(-468f, 224f, var_3.x, var_3.x))))));
    var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, _wgslsmith_f_op_f32(2463f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x))), -1205f, -1594f) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-650f, var_3.x, 446f, var_2.d.x))) * vec4<f32>(-374f, _wgslsmith_f_op_f32(-976f * -932f), _wgslsmith_f_op_f32(exp2(var_2.d.x)), _wgslsmith_f_op_f32(-1000f + var_2.d.x))))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(222f, -1116f, false)), _wgslsmith_f_op_f32(var_2.d.x + var_2.d.x))) * -257f) - 155f));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec2<u32>(4294967295u, var_0.c), ~vec2<u32>(_wgslsmith_sub_u32(5524u, u_input.c), func_1().c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.d.x), _wgslsmith_f_op_f32(544f * var_0.d.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1269f - -420f) * -1274f))));
}

