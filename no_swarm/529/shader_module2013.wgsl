struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec2<i32>(10815i, 12649i), true, 4294967295u), Struct_1(vec2<i32>(1i, i32(-2147483648)), false, 0u), Struct_1(vec2<i32>(34854i, 9090i), false, 0u), Struct_1(vec2<i32>(2147483647i, -26414i), true, 0u), Struct_1(vec2<i32>(-16287i, i32(-2147483648)), false, 18151u), Struct_1(vec2<i32>(-1i, i32(-2147483648)), false, 8308u), Struct_1(vec2<i32>(34067i, i32(-2147483648)), true, 1u), Struct_1(vec2<i32>(1i, i32(-2147483648)), true, 1u), Struct_1(vec2<i32>(1i, -14469i), false, 1u), Struct_1(vec2<i32>(58488i, 35370i), false, 69053u), Struct_1(vec2<i32>(-1i, 29257i), false, 4294967295u), Struct_1(vec2<i32>(2147483647i, 17416i), true, 61759u), Struct_1(vec2<i32>(-23667i, 32204i), false, 46144u), Struct_1(vec2<i32>(i32(-2147483648), 13800i), false, 69626u), Struct_1(vec2<i32>(-1920i, i32(-2147483648)), false, 0u), Struct_1(vec2<i32>(2147483647i, 1i), false, 4294967295u), Struct_1(vec2<i32>(29946i, 6394i), false, 31524u), Struct_1(vec2<i32>(29252i, -1i), true, 468u), Struct_1(vec2<i32>(26217i, 2147483647i), true, 39434u), Struct_1(vec2<i32>(-1i, 27897i), true, 55063u), Struct_1(vec2<i32>(36673i, -25846i), true, 13770u), Struct_1(vec2<i32>(44250i, -26326i), false, 17940u), Struct_1(vec2<i32>(2147483647i, -17069i), true, 1u), Struct_1(vec2<i32>(i32(-2147483648), -1i), true, 1u), Struct_1(vec2<i32>(-32325i, 0i), false, 1178u), Struct_1(vec2<i32>(2147483647i, -1i), false, 22027u), Struct_1(vec2<i32>(-1i, 45101i), true, 42165u), Struct_1(vec2<i32>(0i, -9617i), false, 0u), Struct_1(vec2<i32>(-9560i, -19049i), false, 0u));

var<private> global1: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<u32> {
    global1 = Struct_1(vec2<i32>(2147483647i, countOneBits(2147483647i)), any(select(!vec3<bool>(global1.b, false, global1.b), select(select(vec3<bool>(false, global1.b, false), vec3<bool>(false, global1.b, true), vec3<bool>(global1.b, global1.b, global1.b)), vec3<bool>(global1.b, global1.b, true), !vec3<bool>(true, global1.b, global1.b)), !vec3<bool>(global1.b, global1.b, global1.b))), ~firstLeadingBit(global1.c));
    let var_0 = _wgslsmith_add_i32(-(~(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, global1.a.x, -2147483647i), u_input.b.xxy))), ~_wgslsmith_add_i32(max(u_input.a, _wgslsmith_mult_i32(global1.a.x, global1.a.x)), -1i));
    let var_1 = global0[_wgslsmith_index_u32(25086u, 29u)];
    var var_2 = global0[_wgslsmith_index_u32(select(var_1.c, global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(486f, -422f, global1.b))) * _wgslsmith_f_op_f32(round(-1000f))) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(113f)) - _wgslsmith_f_op_f32(round(-596f))), _wgslsmith_div_f32(-440f, -364f)))), 29u)];
    let var_3 = true;
    return ~max(vec4<u32>(var_2.c, min(global1.c, var_1.c), ~var_1.c, global1.c), ~(vec4<u32>(var_1.c, global1.c, 0u, var_1.c) & vec4<u32>(0u, 33667u, 1u, 31030u))) ^ vec4<u32>(var_1.c & 1u, _wgslsmith_clamp_u32(select(112061u, ~0u, !var_1.b), global1.c, 1u), _wgslsmith_mod_u32(70889u, _wgslsmith_mult_u32(firstTrailingBit(4294967295u), min(16834u, var_1.c))), var_2.c);
}

fn func_2(arg_0: vec4<bool>) -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(i32(-1i) * -2147483647i, i32(-1i) * -32969i), global1.a), _wgslsmith_dot_vec2_i32(-u_input.b.xy, -abs(vec2<i32>(u_input.b.x, -1i))) > _wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.a, global1.a.x)), firstLeadingBit(global1.a)), ~(~(~global1.c) ^ ((4294967295u | global1.c) ^ select(global1.c, global1.c, true))));
    global1 = Struct_1(vec2<i32>(~var_0.a.x >> (global1.c % 32u), u_input.a >> (775u % 32u)) & vec2<i32>(_wgslsmith_add_i32(1i, -57227i), var_0.a.x), var_0.b, _wgslsmith_mod_u32(38823u, ~abs(firstLeadingBit(67218u))));
    var_0 = Struct_1(global1.a, global1.b, _wgslsmith_dot_vec4_u32(func_3(), max(_wgslsmith_clamp_vec4_u32(min(vec4<u32>(0u, var_0.c, var_0.c, global1.c), vec4<u32>(4294967295u, 4294967295u, var_0.c, 5336u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 37970u, global1.c, var_0.c), vec4<u32>(4294967295u, 22812u, global1.c, global1.c)), _wgslsmith_mult_vec4_u32(vec4<u32>(36872u, 55278u, global1.c, global1.c), vec4<u32>(4294967295u, var_0.c, global1.c, 1u))), ~firstTrailingBit(vec4<u32>(global1.c, 14488u, var_0.c, var_0.c)))));
    global0 = array<Struct_1, 29>();
    var_0 = global0[_wgslsmith_index_u32(select(~var_0.c, _wgslsmith_sub_u32(_wgslsmith_mod_u32(abs(var_0.c << (var_0.c % 32u)), ~global1.c ^ var_0.c), func_3().x), var_0.b), 29u)];
    return u_input.b;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_1) -> i32 {
    var var_0 = vec3<i32>(-2147483647i, u_input.a, select(u_input.b.x, -46801i, arg_3.b));
    let var_1 = global0[_wgslsmith_index_u32(arg_1 & ~firstTrailingBit(61745u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(31485u, 0u, 39090u), vec3<u32>(77348u, arg_1, 0u))), 29u)];
    global1 = Struct_1(vec2<i32>(func_2(select(!vec4<bool>(var_1.b, arg_0, false, global1.b), !vec4<bool>(arg_3.b, true, true, true), select(vec4<bool>(true, var_1.b, true, true), vec4<bool>(global1.b, var_1.b, true, false), vec4<bool>(global1.b, true, arg_3.b, arg_3.b)))).x, arg_2.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-833f + 154f)))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -611f) - -282f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(241f))))), arg_3.c);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1123f * _wgslsmith_f_op_f32(-1515f + 160f))))));
    var var_3 = Struct_1(_wgslsmith_mult_vec2_i32(max(func_2(!vec4<bool>(true, true, arg_0, true)).xy, func_2(!vec4<bool>(true, global1.b, arg_0, false)).zy), vec2<i32>(reverseBits(global1.a.x), firstTrailingBit(u_input.b.x)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(arg_3.c, 38047u) >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)), ~vec2<u32>(17656u, 0u)) % vec2<u32>(32u))), false, arg_3.c);
    return 29342i;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<i32>) -> Struct_1 {
    global0 = array<Struct_1, 29>();
    global1 = Struct_1(vec2<i32>(func_4(all(select(vec2<bool>(false, false), vec2<bool>(false, true), false)), firstTrailingBit(global1.c), _wgslsmith_add_vec4_i32(func_2(vec4<bool>(false, global1.b, false, false)), ~vec4<i32>(2147483647i, 1i, 0i, -21634i)), global0[_wgslsmith_index_u32(func_3().x, 29u)]), _wgslsmith_clamp_i32(firstTrailingBit(arg_1.x), arg_0.x, 20712i | _wgslsmith_div_i32(u_input.b.x, u_input.b.x))), true, _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(global1.c, 4294967295u, 47861u, 47893u))), vec4<u32>(1u, 4294967295u, 1u, ~abs(0u))));
    return Struct_1(max(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, 2147483647i, u_input.a, u_input.a) >> (vec4<u32>(global1.c, global1.c, global1.c, global1.c) % vec4<u32>(32u)), u_input.b), -_wgslsmith_mult_i32(u_input.a, u_input.a)), ~(-select(vec2<i32>(u_input.b.x, -4343i), vec2<i32>(global1.a.x, -47771i), true))), any(select(select(!vec4<bool>(global1.b, global1.b, global1.b, global1.b), vec4<bool>(true, false, false, true), vec4<bool>(global1.b, global1.b, global1.b, false)), !vec4<bool>(true, true, global1.b, true), global1.b)), select(~global1.c, global1.c, false) ^ abs(reverseBits(global1.c)));
}

fn func_5(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = arg_0;
    var var_1 = func_1(abs(vec4<i32>(-global1.a.x, 44410i, ~(~2147483647i), _wgslsmith_clamp_i32(arg_0.a.x, var_0.a.x, ~(-21969i)))), -vec3<i32>(-_wgslsmith_dot_vec2_i32(u_input.b.xy, arg_0.a), abs(2147483647i), _wgslsmith_add_i32(~(-31269i), global1.a.x)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-842f, -230f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-551f, -121f)))));
    let var_3 = select(select(select(!(!vec2<bool>(global1.b, arg_0.b)), select(select(vec2<bool>(var_1.b, global1.b), vec2<bool>(global1.b, var_0.b), vec2<bool>(false, global1.b)), select(vec2<bool>(var_0.b, true), vec2<bool>(true, arg_0.b), vec2<bool>(global1.b, var_1.b)), var_1.b), global1.b), select(select(select(vec2<bool>(true, global1.b), vec2<bool>(global1.b, var_1.b), var_1.b), select(vec2<bool>(var_1.b, var_1.b), vec2<bool>(true, global1.b), vec2<bool>(global1.b, false)), true), select(!vec2<bool>(global1.b, false), select(vec2<bool>(var_1.b, var_1.b), vec2<bool>(false, global1.b), false), !vec2<bool>(var_1.b, true)), !vec2<bool>(var_0.b, false)), var_0.b), select(vec2<bool>(var_1.c < 1u, any(vec3<bool>(var_0.b, true, true))), select(vec2<bool>(!arg_0.b, true), !select(vec2<bool>(var_0.b, true), vec2<bool>(var_1.b, true), vec2<bool>(false, false)), !select(vec2<bool>(false, false), vec2<bool>(global1.b, false), vec2<bool>(false, var_0.b))), true), true);
    global0 = array<Struct_1, 29>();
    return vec4<bool>((!var_1.b || !var_3.x) == var_3.x, var_1.b & func_1(u_input.b, abs(vec3<i32>(-12636i, var_1.a.x, u_input.b.x))).b, ~(~_wgslsmith_mult_u32(41652u, var_0.c)) > 4294967295u, var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(-(vec4<i32>(global1.a.x, -49902i, 2147483647i, 1i) << (vec4<u32>(0u, 14308u, global1.c, global1.c) % vec4<u32>(32u))) ^ u_input.b, u_input.b.xzz));
    var var_1 = ~func_3().ww << (vec2<u32>(~global1.c, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global1.c, 1u, global1.c, 1u), firstTrailingBit(vec4<u32>(global1.c, global1.c, global1.c, global1.c))), ~vec4<u32>(11061u, 4097u, global1.c, global1.c) & ~vec4<u32>(global1.c, 38097u, 0u, global1.c))) % vec2<u32>(32u));
    global0 = array<Struct_1, 29>();
    global1 = Struct_1(vec2<i32>(0i, _wgslsmith_mult_i32(firstLeadingBit(u_input.a), firstLeadingBit(-1i))) << ((_wgslsmith_mod_vec2_u32(vec2<u32>(global1.c, 22478u), ~vec2<u32>(33513u, global1.c)) >> (_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global1.c, var_1.x), vec2<u32>(var_1.x, var_1.x)), vec2<u32>(global1.c, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, global1.c), vec2<u32>(global1.c, 88665u))) % vec2<u32>(32u))) % vec2<u32>(32u)), !any(vec3<bool>(true, all(var_0.ywz), global1.b)), 4294967295u);
    let var_2 = u_input.b.wzw;
    var_1 = firstLeadingBit(vec2<u32>(_wgslsmith_div_u32(max(var_1.x, 0u), _wgslsmith_sub_u32(1u, ~global1.c)), abs(firstTrailingBit(_wgslsmith_div_u32(50493u, var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-553f * -2228f), 347f), _wgslsmith_div_f32(-516f, _wgslsmith_f_op_f32(891f - -367f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(776f, 206f), _wgslsmith_f_op_f32(f32(-1f) * -992f))), 1f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1586f, -152f, 895f, -120f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-332f, 1020f, -487f, 902f)), !var_0)))), reverseBits(abs(u_input.b)), func_1(firstLeadingBit(reverseBits(-vec4<i32>(global1.a.x, -1i, global1.a.x, 1i))), vec3<i32>(~(2147483647i | var_2.x), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(global1.a.x, 8145i)), 1i)).c, u_input.b.zy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2051f)) + -1120f));
}

