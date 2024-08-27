struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4>;

var<private> global1: vec2<i32> = vec2<i32>(1i, 0i);

var<private> global2: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(-17580i, Struct_1(41117i), Struct_1(-32568i)), Struct_2(2147483647i, Struct_1(i32(-2147483648)), Struct_1(-1i)), Struct_2(-9781i, Struct_1(-10444i), Struct_1(19742i)), Struct_2(-1i, Struct_1(46552i), Struct_1(2147483647i)), Struct_2(2147483647i, Struct_1(-39459i), Struct_1(i32(-2147483648))), Struct_2(1i, Struct_1(1i), Struct_1(-29828i)), Struct_2(-1i, Struct_1(i32(-2147483648)), Struct_1(-43554i)), Struct_2(i32(-2147483648), Struct_1(2147483647i), Struct_1(-40684i)), Struct_2(-13786i, Struct_1(-1i), Struct_1(0i)), Struct_2(-15805i, Struct_1(-9277i), Struct_1(29632i)), Struct_2(-47181i, Struct_1(2147483647i), Struct_1(6807i)), Struct_2(1i, Struct_1(-35489i), Struct_1(1i)), Struct_2(-45172i, Struct_1(-1i), Struct_1(-57523i)), Struct_2(13871i, Struct_1(41924i), Struct_1(2147483647i)), Struct_2(-52020i, Struct_1(1i), Struct_1(1i)), Struct_2(-65191i, Struct_1(0i), Struct_1(1i)), Struct_2(14843i, Struct_1(-38574i), Struct_1(2147483647i)), Struct_2(0i, Struct_1(47829i), Struct_1(-60063i)), Struct_2(i32(-2147483648), Struct_1(2598i), Struct_1(40891i)), Struct_2(-13276i, Struct_1(4988i), Struct_1(38195i)), Struct_2(0i, Struct_1(2147483647i), Struct_1(-78006i)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_2) -> vec2<f32> {
    var var_0 = _wgslsmith_div_i32(arg_3.c.a, -1i);
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-281f, -1830f)))))), _wgslsmith_f_op_f32(276f - -1260f)));
    var var_2 = !vec3<bool>(74096i > _wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, arg_1, 0i, u_input.a.x), vec4<i32>(arg_3.a, 0i, 70632i, u_input.a.x), true), reverseBits(vec4<i32>(u_input.a.x, -72126i, u_input.a.x, arg_1))), true, true);
    let var_3 = Struct_2(~arg_3.b.a, arg_3.c, Struct_1(arg_3.b.a));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(135f, -1168f, all(select(vec2<bool>(true, true), var_2.zy, vec2<bool>(var_2.x, var_2.x)))))), var_1);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<i32>) -> f32 {
    global1 = arg_0.zw;
    global1 = vec2<i32>(-2147483647i, i32(-1i) * -1i);
    var var_0 = vec3<bool>(false, select((global1.x >= global1.x) | all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), false, true), !(_wgslsmith_f_op_f32(sign(922f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2239f * 105f))));
    var var_1 = false;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(117f, 234f), _wgslsmith_f_op_vec2_f32(func_3(global0[_wgslsmith_index_u32(u_input.b, 4u)], arg_1.x, vec2<u32>(4225u, global0[_wgslsmith_index_u32(0u, 4u)]), Struct_2(12041i, Struct_1(global1.x), Struct_1(-32021i))))))))));
    return var_2.x;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>) -> Struct_1 {
    global0 = array<u32, 4>();
    var var_0 = max(~(~abs(vec4<i32>(2147483647i, 8387i, arg_0.c.a, global1.x)) | (vec4<i32>(-1i) * -vec4<i32>(arg_0.c.a, u_input.a.x, global1.x, arg_0.a.a))), -max(max(vec4<i32>(u_input.c.x, -13197i, u_input.c.x, 1i), vec4<i32>(global1.x, global1.x, arg_0.a.a, global1.x)) & vec4<i32>(93028i, 2147483647i, arg_0.a.a, global1.x), -vec4<i32>(2147483647i, 2147483647i, arg_0.a.a, global1.x)));
    let var_1 = arg_0.a;
    var var_2 = true;
    global1 = abs(~vec2<i32>(_wgslsmith_add_i32(24754i, u_input.c.x), _wgslsmith_clamp_i32(global1.x, 1i, var_1.a)) >> (~firstTrailingBit(vec2<u32>(u_input.b, global0[_wgslsmith_index_u32(u_input.b, 4u)]) >> (vec2<u32>(global0[_wgslsmith_index_u32(u_input.b, 4u)], 0u) % vec2<u32>(32u))) % vec2<u32>(32u)));
    return Struct_1(_wgslsmith_mod_i32(global1.x, var_1.a) << (_wgslsmith_dot_vec4_u32(~min(vec4<u32>(u_input.b, u_input.b, u_input.b, 38669u), vec4<u32>(38258u, u_input.b, u_input.b, 21601u)), ~(vec4<u32>(0u, u_input.b, 1u, global0[_wgslsmith_index_u32(u_input.b, 4u)]) << (vec4<u32>(58228u, 29359u, global0[_wgslsmith_index_u32(45638u, 4u)], 15251u) % vec4<u32>(32u)))) % 32u));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: vec4<f32>) -> i32 {
    let var_0 = Struct_3(func_4(Struct_3(Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a, arg_1.c.a), u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-320f + arg_3.x)), global2[_wgslsmith_index_u32(select(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22786u, 4u)], 4u)], firstLeadingBit(0u), true), 21u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(trunc(711f))))), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2 - arg_3.x))), Struct_2(i32(-1i) * -_wgslsmith_div_i32(-104564i, 2147483647i), arg_0, Struct_1(-_wgslsmith_mult_i32(-4491i, -2271i))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-595f, 953f) * _wgslsmith_f_op_f32(abs(arg_3.x))));
    var var_1 = firstTrailingBit(firstLeadingBit(21226i));
    let var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(abs(4294967295u), 1u >> (u_input.b % 32u)), max(vec2<u32>(u_input.b, 1u), firstTrailingBit(vec2<u32>(global0[_wgslsmith_index_u32(21355u, 4u)], 32039u)))), 30165u), vec3<u32>(1u, ~33398u, ~max(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.b, 4u)], 78862u), 4u)], select(0u, 16665u, false))));
    var_1 = -30648i;
    let var_3 = Struct_2(global1.x, arg_0, func_4(var_0, !(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), false))));
    return var_0.a.a;
}

fn func_1(arg_0: vec2<u32>) -> Struct_3 {
    let var_0 = all(vec2<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec4<bool>(false, false, false, true)))), true));
    var var_1 = func_5(func_4(Struct_3(Struct_1(-8143i), _wgslsmith_f_op_f32(func_2(vec4<i32>(2147483647i, u_input.c.x, 71359i, u_input.c.x), vec4<i32>(-6166i, u_input.c.x, u_input.a.x, u_input.a.x))), Struct_2(u_input.a.x, Struct_1(52595i), Struct_1(global1.x)), -1510f), select(select(vec4<bool>(false, false, var_0, true), vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(false, false, var_0, true)), !vec4<bool>(true, var_0, false, false), !var_0)), Struct_2(select(global1.x, _wgslsmith_clamp_i32(1i, 2147483647i, u_input.a.x), var_0), func_4(Struct_3(Struct_1(u_input.a.x), -1034f, global2[_wgslsmith_index_u32(1u, 21u)], 1948f), vec4<bool>(false, false, var_0, var_0)), func_4(Struct_3(Struct_1(u_input.c.x), -302f, global2[_wgslsmith_index_u32(arg_0.x, 21u)], 442f), select(vec4<bool>(var_0, var_0, var_0, false), vec4<bool>(true, false, var_0, true), vec4<bool>(var_0, false, var_0, true)))), -1089f, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1415f, 511f, -920f, 750f) + vec4<f32>(-1330f, 106f, -267f, 671f))), vec4<f32>(-1334f, _wgslsmith_div_f32(1302f, 3711f), 161f, _wgslsmith_f_op_f32(step(655f, -808f))), false))) & select(_wgslsmith_mod_i32(global1.x, func_4(Struct_3(Struct_1(u_input.c.x), 1418f, Struct_2(-2147483647i, Struct_1(u_input.a.x), Struct_1(2815i)), -335f), !vec4<bool>(true, false, var_0, var_0)).a), _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a.x, ~u_input.c.x, u_input.a.x >> (global0[_wgslsmith_index_u32(1u, 4u)] % 32u)), _wgslsmith_clamp_i32(~u_input.a.x, _wgslsmith_mult_i32(global1.x, 56280i), 2147483647i)), !var_0);
    let var_2 = Struct_3(func_4(Struct_3(func_4(Struct_3(Struct_1(u_input.a.x), 113f, global2[_wgslsmith_index_u32(50494u, 21u)], -411f), vec4<bool>(var_0, true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(273f)) + -863f), Struct_2(abs(global1.x), func_4(Struct_3(Struct_1(u_input.a.x), 625f, global2[_wgslsmith_index_u32(0u, 21u)], 1014f), vec4<bool>(true, var_0, var_0, var_0)), func_4(Struct_3(Struct_1(global1.x), 574f, Struct_2(-2147483647i, Struct_1(u_input.a.x), Struct_1(u_input.a.x)), 1643f), vec4<bool>(false, var_0, var_0, true))), 236f), select(select(vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(true, true, var_0, var_0), all(vec3<bool>(false, true, var_0))), select(vec4<bool>(true, true, var_0, true), select(vec4<bool>(var_0, true, true, false), vec4<bool>(true, true, var_0, true), true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, var_0, var_0), vec4<bool>(var_0, var_0, var_0, true))), var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) + 319f)), global2[_wgslsmith_index_u32(firstTrailingBit(global0[_wgslsmith_index_u32(min(abs(countOneBits(1u)), 77433u << (min(global0[_wgslsmith_index_u32(arg_0.x, 4u)], global0[_wgslsmith_index_u32(6724u, 4u)]) % 32u)), 4u)]), 21u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<i32>(u_input.c.x, _wgslsmith_mult_i32(1i, u_input.a.x), 0i, abs(u_input.a.x)), vec4<i32>(u_input.c.x, 6510i, 24306i, 1i) << (_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.b, global0[_wgslsmith_index_u32(29940u, 4u)], arg_0.x), vec4<u32>(26794u, 0u, 19169u, 1u)) % vec4<u32>(32u)))) * _wgslsmith_f_op_f32(func_2(vec4<i32>(_wgslsmith_add_i32(u_input.c.x, 53099i), _wgslsmith_dot_vec2_i32(u_input.c.zx, u_input.a), -17651i, -830i), reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-19611i, 0i, -813i, global1.x), vec4<i32>(-36623i, u_input.a.x, global1.x, -69533i)))))));
    let var_3 = select(!select(select(!vec4<bool>(false, var_0, true, var_0), !vec4<bool>(false, var_0, var_0, var_0), select(vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(true, var_0, var_0, true), vec4<bool>(false, false, false, true))), vec4<bool>(var_0, false, true, true), select(!vec4<bool>(false, true, var_0, var_0), !vec4<bool>(var_0, var_0, false, var_0), vec4<bool>(false, var_0, true, var_0))), !vec4<bool>(var_0, all(vec4<bool>(var_0, false, true, var_0)), var_0, var_0), !vec4<bool>(false, true, all(select(vec3<bool>(true, true, var_0), vec3<bool>(var_0, true, false), true)), false));
    var var_4 = vec2<f32>(983f, -1069f);
    return var_2;
}

fn func_6(arg_0: bool, arg_1: Struct_3, arg_2: Struct_2) -> f32 {
    let var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(min(arg_2.a, arg_1.c.a) & (arg_2.b.a | arg_1.c.c.a), arg_2.c.a, 15707i, arg_2.c.a) & abs(~vec4<i32>(-14152i, arg_1.a.a, arg_1.c.a, arg_1.a.a)), vec4<i32>(-34553i, arg_2.c.a, ~arg_1.c.a, _wgslsmith_clamp_i32(reverseBits(-global1.x), _wgslsmith_div_i32(global1.x, -56052i), -24147i)));
    var var_1 = vec3<i32>(arg_2.c.a, 0i, arg_1.c.b.a);
    global1 = vec2<i32>(5312i, global1.x) ^ max(vec2<i32>(~1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(var_0.wx, var_0.yy), arg_1.a.a)), vec2<i32>(~(arg_2.b.a >> (global0[_wgslsmith_index_u32(0u, 4u)] % 32u)), -14622i));
    global1 = var_1.zy;
    var var_2 = func_4(Struct_3(arg_1.a, arg_1.d, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~35327u, 4u)], 21u)], _wgslsmith_f_op_f32(f32(-1f) * -774f)), select(!(!vec4<bool>(true, arg_0, arg_0, arg_0)), vec4<bool>(!arg_0, arg_0, true, false), select(vec4<bool>(all(vec2<bool>(true, false)), 1799f > arg_1.d, arg_0, false), select(vec4<bool>(arg_0, true, arg_0, false), !vec4<bool>(arg_0, false, false, arg_0), select(arg_0, false, arg_0)), select(!vec4<bool>(arg_0, false, true, arg_0), !vec4<bool>(true, false, arg_0, true), vec4<bool>(true, arg_0, false, false)))));
    return -330f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 4>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1093f, 1683f, 603f, -2099f) + vec4<f32>(1000f, -1104f, -1000f, 883f)))))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_6(true, func_1(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(84877u, 4u)], 4u)], u_input.b)), Struct_2(global1.x, Struct_1(u_input.c.x), Struct_1(2147483647i)))), 964f), -479f, -513f, _wgslsmith_f_op_f32(f32(-1f) * -279f)));
    var var_1 = Struct_1(_wgslsmith_div_i32(i32(-1i) * -2147483647i, reverseBits(abs(global1.x))));
    let var_2 = 26941u;
    var var_3 = Struct_1(_wgslsmith_add_i32(countOneBits(36426i), -24516i));
    let var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.zxw), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_0.yzy))));
    let var_5 = !select(!vec2<bool>(any(vec3<bool>(false, false, true)), true), vec2<bool>(true, true), vec2<bool>(false, var_0.x == -1599f));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(1i, u_input.c.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_4.x + var_0.x), -282f)));
}

