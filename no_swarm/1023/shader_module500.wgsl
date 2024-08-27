struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(vec2<i32>(15046i, -57307i), i32(-2147483648), 876f), Struct_1(vec2<i32>(1i, 48447i), i32(-2147483648), 1567f)), Struct_2(Struct_1(vec2<i32>(-68829i, 4572i), -1i, 411f), Struct_1(vec2<i32>(-11329i, 0i), -6852i, 272f)), Struct_2(Struct_1(vec2<i32>(-1i, -33924i), -34579i, -838f), Struct_1(vec2<i32>(-8781i, 38608i), -1i, -383f)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 3044i), 2147483647i, -338f), Struct_1(vec2<i32>(0i, 0i), 12179i, 1000f)), Struct_2(Struct_1(vec2<i32>(-16551i, 36844i), 0i, 1020f), Struct_1(vec2<i32>(i32(-2147483648), -9377i), -41849i, -479f)), Struct_2(Struct_1(vec2<i32>(-26899i, i32(-2147483648)), 0i, 886f), Struct_1(vec2<i32>(0i, -1i), 0i, -1505f)), Struct_2(Struct_1(vec2<i32>(61277i, -15473i), -55923i, -471f), Struct_1(vec2<i32>(2147483647i, -1i), 17000i, 368f)), Struct_2(Struct_1(vec2<i32>(-1i, 2147483647i), -10028i, 1346f), Struct_1(vec2<i32>(2725i, -17238i), -29419i, 1171f)));

var<private> global1: vec2<i32> = vec2<i32>(2147483647i, 5374i);

var<private> global2: array<vec2<u32>, 24> = array<vec2<u32>, 24>(vec2<u32>(23111u, 1u), vec2<u32>(89243u, 41924u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(58020u, 24843u), vec2<u32>(0u, 47633u), vec2<u32>(35126u, 0u), vec2<u32>(21244u, 81699u), vec2<u32>(27549u, 46845u), vec2<u32>(0u, 61942u), vec2<u32>(0u, 8435u), vec2<u32>(1u, 5328u), vec2<u32>(19459u, 0u), vec2<u32>(0u, 1u), vec2<u32>(80714u, 4294967295u), vec2<u32>(0u, 31198u), vec2<u32>(16308u, 0u), vec2<u32>(0u, 59021u), vec2<u32>(66376u, 10352u), vec2<u32>(20684u, 4294967295u), vec2<u32>(17453u, 1u), vec2<u32>(0u, 47043u), vec2<u32>(4294967295u, 0u), vec2<u32>(3969u, 38328u), vec2<u32>(4294967295u, 1u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<i32> {
    global2 = array<vec2<u32>, 24>();
    global1 = ~abs(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, global1.x), vec2<i32>(32817i, global1.x))));
    global1 = vec2<i32>(62086i, 1i);
    var var_0 = _wgslsmith_f_op_f32(1f - -1000f);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, 258f)) + _wgslsmith_f_op_f32(floor(-1196f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(f32(-1f) * -944f)))));
    return ~u_input.b.yyw;
}

fn func_2(arg_0: u32, arg_1: u32) -> vec4<f32> {
    var var_0 = u_input.b;
    var var_1 = u_input.b.yz;
    let var_2 = Struct_2(Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, global1.x, -54364i), ~vec3<i32>(-64052i, -2147483647i, var_0.x)), min(1i, ~var_1.x)), 23180i, -1118f), Struct_1(var_0.yz, -2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 686f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1555f)) + -1000f))));
    var var_3 = vec4<i32>(-var_1.x, _wgslsmith_dot_vec3_i32(~u_input.b.wyy, _wgslsmith_mult_vec3_i32(max(u_input.b.zyy, func_3()), var_0.zzz)), global1.x, countOneBits(2147483647i));
    var_3 = reverseBits(u_input.b);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-331f, 116f, -1650f, var_2.b.c))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1112f)), -877f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.b.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.a.c, _wgslsmith_f_op_f32(108f - var_2.a.c))))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(874f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1284f, 616f)))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(func_2(~u_input.a, 0u >> (((~4294967295u ^ u_input.a) | 0u) % 32u)));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, firstLeadingBit(min(0u, 41875u))), 8u)];
    let var_3 = ~(reverseBits((vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a) & vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)) & vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) | vec4<u32>(1u, countOneBits(u_input.a), u_input.a, reverseBits(u_input.a)));
    let var_4 = firstLeadingBit(94855u);
    return Struct_1(select(vec2<i32>(2147483647i, countOneBits(1i)), u_input.b.xw, !(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)))), ~(firstTrailingBit(countOneBits(var_2.b.b)) & ~(-u_input.b.x)), _wgslsmith_f_op_f32(var_2.a.c * _wgslsmith_f_op_f32(var_2.a.c + _wgslsmith_f_op_f32(min(-1358f, _wgslsmith_f_op_f32(var_1.x * 652f))))));
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = Struct_2(func_1(firstTrailingBit(-21026i)), func_1(2147483647i));
    let var_1 = arg_1.c;
    return vec4<u32>(~u_input.a, u_input.a, ~firstLeadingBit((4294967295u << (u_input.a % 32u)) >> (u_input.a % 32u)), ~(~u_input.a));
}

fn func_5(arg_0: i32, arg_1: vec4<u32>, arg_2: i32) -> Struct_2 {
    let var_0 = Struct_1(vec2<i32>(-13841i, arg_2), _wgslsmith_mult_i32(select(-1i, -1i, true), select(arg_2 << ((arg_1.x >> (4294967295u % 32u)) % 32u), select(i32(-1i) * -22524i, arg_0, true), _wgslsmith_f_op_vec4_f32(func_2(4294967295u, u_input.a)).x <= -1143f)), _wgslsmith_f_op_f32(f32(-1f) * -1013f));
    global0 = array<Struct_2, 8>();
    var var_1 = true;
    global2 = array<vec2<u32>, 24>();
    var_1 = false;
    return Struct_2(var_0, func_1(reverseBits(u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_dot_vec2_i32(u_input.b.xx, u_input.b.yz), select(min(~vec4<u32>(64789u, u_input.a, 25662u, u_input.a) | (vec4<u32>(35008u, 1u, u_input.a, 5961u) << (vec4<u32>(57749u, u_input.a, 1u, u_input.a) % vec4<u32>(32u))), ~(~vec4<u32>(4294967295u, u_input.a, u_input.a, 0u))), func_4(_wgslsmith_f_op_f32(f32(-1f) * -443f), func_1(12072i >> (1u % 32u))), select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, false), true), vec4<bool>(false, true, true, true), select(false, true, u_input.a < u_input.a))), select(i32(-1i) * -1i, 46613i, all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))) && false));
    global1 = ~(~_wgslsmith_mod_vec2_i32(~(-vec2<i32>(2147483647i, u_input.b.x)), vec2<i32>(var_0.a.a.x, global1.x)));
    let var_1 = vec3<f32>(-312f, func_5(1i, ~(vec4<u32>(49804u, u_input.a, 4294967295u, 17170u) ^ countOneBits(vec4<u32>(51762u, 1u, 56857u, u_input.a))), _wgslsmith_sub_i32(global1.x, _wgslsmith_div_i32(~u_input.b.x, _wgslsmith_mod_i32(-18645i, -11041i)))).a.c, 757f);
    let var_2 = min(abs(~countOneBits(~7268u)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(~(1u << (1u % 32u)), _wgslsmith_mult_u32(0u, u_input.a)), u_input.a));
    let var_3 = func_1(var_0.b.b | _wgslsmith_clamp_i32(-1i, u_input.b.x, ~var_0.a.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_1.zz * _wgslsmith_f_op_vec2_f32(min(var_1.zz, _wgslsmith_f_op_vec2_f32(min(var_1.zy, vec2<f32>(var_3.c, -165f)))))))), vec3<u32>(var_2, 1u, 44437u));
}

