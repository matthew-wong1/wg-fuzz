struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25>;

var<private> global1: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(Struct_1(vec3<i32>(1i, -42312i, -22405i), false, vec4<bool>(false, true, true, false)), true, 17129i, false), Struct_2(Struct_1(vec3<i32>(44104i, -513i, 1i), true, vec4<bool>(false, false, false, true)), true, 2147483647i, true), Struct_2(Struct_1(vec3<i32>(1i, 40818i, 2147483647i), false, vec4<bool>(false, true, false, false)), true, 83815i, true), Struct_2(Struct_1(vec3<i32>(41785i, 1i, i32(-2147483648)), false, vec4<bool>(false, false, true, false)), true, i32(-2147483648), true), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 18681i, -1389i), false, vec4<bool>(true, false, true, true)), true, -20225i, false), Struct_2(Struct_1(vec3<i32>(-10952i, 11151i, 34598i), true, vec4<bool>(false, true, false, true)), true, 17123i, false), Struct_2(Struct_1(vec3<i32>(2147483647i, -1i, i32(-2147483648)), true, vec4<bool>(false, true, true, false)), false, 1i, true), Struct_2(Struct_1(vec3<i32>(-18878i, -2180i, 1i), false, vec4<bool>(true, false, true, false)), false, -8718i, true), Struct_2(Struct_1(vec3<i32>(-46448i, 2147483647i, -16977i), true, vec4<bool>(false, true, true, false)), false, i32(-2147483648), true), Struct_2(Struct_1(vec3<i32>(-1i, 476i, 21739i), false, vec4<bool>(true, true, true, true)), true, -1i, false), Struct_2(Struct_1(vec3<i32>(-65505i, 2147483647i, 1i), true, vec4<bool>(true, true, true, false)), true, 10413i, false), Struct_2(Struct_1(vec3<i32>(0i, -1i, 53082i), true, vec4<bool>(true, false, true, false)), true, i32(-2147483648), false), Struct_2(Struct_1(vec3<i32>(0i, -8347i, -37365i), false, vec4<bool>(true, false, false, false)), false, 1i, false), Struct_2(Struct_1(vec3<i32>(-20098i, -1i, 36845i), false, vec4<bool>(false, false, true, true)), true, i32(-2147483648), false), Struct_2(Struct_1(vec3<i32>(-23051i, 48366i, -44482i), false, vec4<bool>(true, true, true, true)), false, -8666i, true), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 1i, -19462i), false, vec4<bool>(false, false, true, false)), false, 12444i, false), Struct_2(Struct_1(vec3<i32>(-1i, -47617i, 4613i), true, vec4<bool>(false, false, false, true)), true, 2147483647i, true), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -38197i, -23333i), false, vec4<bool>(false, true, true, false)), true, 36288i, false), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -50521i, -61664i), true, vec4<bool>(false, true, true, true)), false, -1i, false), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 36374i, -9907i), true, vec4<bool>(false, false, true, false)), true, -42941i, true), Struct_2(Struct_1(vec3<i32>(1i, -21024i, 1i), true, vec4<bool>(true, false, true, false)), false, -6538i, true), Struct_2(Struct_1(vec3<i32>(5204i, 0i, 2147483647i), false, vec4<bool>(false, false, true, false)), true, 2147483647i, false), Struct_2(Struct_1(vec3<i32>(13047i, 19632i, 13648i), true, vec4<bool>(true, true, true, true)), true, 1i, false), Struct_2(Struct_1(vec3<i32>(-25453i, 76843i, 2147483647i), false, vec4<bool>(true, true, false, true)), false, 37839i, true), Struct_2(Struct_1(vec3<i32>(11737i, -34763i, i32(-2147483648)), true, vec4<bool>(false, true, false, false)), true, -32412i, false), Struct_2(Struct_1(vec3<i32>(1i, i32(-2147483648), 1i), true, vec4<bool>(false, false, false, true)), false, -2423i, true), Struct_2(Struct_1(vec3<i32>(-25306i, 31386i, 11133i), true, vec4<bool>(true, true, false, true)), false, 1i, false), Struct_2(Struct_1(vec3<i32>(25317i, 4900i, 41223i), true, vec4<bool>(true, true, true, true)), false, 1i, false), Struct_2(Struct_1(vec3<i32>(47471i, -1i, 58819i), false, vec4<bool>(false, false, true, true)), true, -12924i, true), Struct_2(Struct_1(vec3<i32>(24152i, 0i, 22810i), false, vec4<bool>(false, true, false, false)), false, -30235i, true), Struct_2(Struct_1(vec3<i32>(-459i, 0i, 1i), false, vec4<bool>(true, false, false, true)), true, -16632i, false));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = arg_0.c.zwx;
    var var_1 = ~vec3<i32>(arg_0.a.x, 1i, ~select(_wgslsmith_mod_i32(0i, 43186i), arg_0.a.x, false));
    let var_2 = 8418u;
    var var_3 = Struct_1(arg_0.a, false, select(arg_0.c, arg_0.c, select(arg_0.c, !(!arg_0.c), arg_0.c.x)));
    global0 = array<Struct_2, 25>();
    return _wgslsmith_dot_vec3_i32(arg_0.a >> (countOneBits(firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 25261u, var_2), vec3<u32>(48790u, u_input.a, 4294967295u)))) % vec3<u32>(32u)), arg_0.a);
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: vec2<u32>) -> vec4<bool> {
    global0 = array<Struct_2, 25>();
    var var_0 = 4294967295u;
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-515f, -354f)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(309f, -220f), vec2<f32>(522f, 545f)))))));
    let var_2 = Struct_2(Struct_1(vec3<i32>(-2147483647i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(8011i, 5044i, 22108i, -27271i), vec4<i32>(0i, -32677i, 2147483647i, 16838i)), -2147483647i), func_3(Struct_1(vec3<i32>(47725i, 0i, 26240i), false, vec4<bool>(arg_0.x, false, false, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -583f) * _wgslsmith_f_op_f32(var_1.x - 400f)) == -549f, select(!(!vec4<bool>(true, true, true, arg_0.x)), select(vec4<bool>(false, false, true, true), !vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), select(vec4<bool>(true, false, arg_0.x, arg_0.x), vec4<bool>(false, true, false, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true))), arg_0.x)), all(vec4<bool>(true, true, !any(vec2<bool>(true, arg_0.x)), any(vec3<bool>(arg_0.x, true, false)))), _wgslsmith_add_i32(-1i, i32(-1i) * -_wgslsmith_sub_i32(4745i, -1i)), false);
    var var_3 = Struct_2(var_2.a, any(vec2<bool>(select(false, true, var_1.x > 1262f), any(select(var_2.a.c, vec4<bool>(false, true, false, true), vec4<bool>(arg_0.x, true, arg_0.x, false))))), firstTrailingBit(var_2.a.a.x), true);
    return !select(!var_2.a.c, var_2.a.c, false);
}

fn func_1() -> Struct_1 {
    let var_0 = 678f;
    global1 = array<Struct_2, 31>();
    var var_1 = true & all(func_2(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false), true), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(1u, 25144u)), ~(vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)))));
    let var_2 = _wgslsmith_f_op_f32(-var_0);
    let var_3 = countOneBits(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(-1i, 1i, -2147483647i, 43582i), ~vec4<i32>(-53172i, 1i, 2147483647i, -55836i)), ~(-vec4<i32>(-23037i, 65968i, 7182i, -6332i))), abs(~(-2147483647i)), -36991i));
    return Struct_1(var_3, false & !(_wgslsmith_f_op_f32(739f + -2112f) <= _wgslsmith_f_op_f32(trunc(var_2))), vec4<bool>(!(!any(vec4<bool>(true, false, true, false))), true, !any(vec3<bool>(false, false, false)) || all(vec3<bool>(true, false, true)), any(vec4<bool>(false, all(vec3<bool>(false, true, true)), false, any(vec3<bool>(true, true, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = array<Struct_2, 31>();
    let var_1 = Struct_2(var_0, !func_2(!(!var_0.c.yzx), 0u, firstTrailingBit(~vec2<u32>(u_input.a, 20849u))).x, 2147483647i, true);
    global0 = array<Struct_2, 25>();
    let var_2 = abs(vec3<u32>(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(88886u, u_input.a), vec2<u32>(3515u, u_input.a))), ~firstTrailingBit(u_input.a), ~u_input.a)) << (~vec3<u32>(~4294967295u, u_input.a, ~(~u_input.a)) % vec3<u32>(32u));
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_sub_u32(firstTrailingBit(16007u), 0u), _wgslsmith_mod_u32(min(~_wgslsmith_clamp_u32(10224u, u_input.a, u_input.a), ~(~4294967295u)), abs(~var_2.x))), 31u)];
    global0 = array<Struct_2, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(1u), var_2.x, var_2.x | var_2.x, ~(vec4<i32>(firstLeadingBit(var_0.a.x), func_3(var_1.a), ~var_3.c, _wgslsmith_mult_i32(0i, 18481i)) << (~(~vec4<u32>(var_2.x, 64167u, var_2.x, 72377u)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(260f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2476f, 1752f)) * _wgslsmith_f_op_f32(ceil(-379f))))));
}

