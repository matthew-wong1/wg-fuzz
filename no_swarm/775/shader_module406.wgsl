struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: bool,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 28> = array<vec2<i32>, 28>(vec2<i32>(-11732i, 42417i), vec2<i32>(i32(-2147483648), -5316i), vec2<i32>(-46571i, -33454i), vec2<i32>(-73790i, 4670i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(12788i, -59206i), vec2<i32>(2147483647i, 0i), vec2<i32>(18492i, 0i), vec2<i32>(-41883i, 56015i), vec2<i32>(1i, 34543i), vec2<i32>(-64781i, 18927i), vec2<i32>(-23434i, 1i), vec2<i32>(0i, 1i), vec2<i32>(-1i, 0i), vec2<i32>(0i, 23313i), vec2<i32>(2147483647i, 1i), vec2<i32>(18982i, -22968i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-25821i, -3786i), vec2<i32>(-1630i, i32(-2147483648)), vec2<i32>(56796i, 1i), vec2<i32>(19206i, -1i), vec2<i32>(-1297i, -17743i), vec2<i32>(2147483647i, -43946i), vec2<i32>(-1i, -50241i), vec2<i32>(0i, -41596i), vec2<i32>(23652i, 1i), vec2<i32>(1i, 62781i));

var<private> global1: vec2<i32> = vec2<i32>(17125i, 4902i);

var<private> global2: array<vec2<bool>, 32> = array<vec2<bool>, 32>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: u32) -> i32 {
    var var_0 = arg_0.a.e.x;
    let var_1 = Struct_2(arg_0.a, arg_0.b, 302f != arg_1.x, countOneBits(_wgslsmith_div_vec3_u32(reverseBits(arg_0.a.e), arg_0.d)) | ~firstLeadingBit(vec3<u32>(1u, 0u, arg_3)), arg_0.e);
    global2 = array<vec2<bool>, 32>();
    global2 = array<vec2<bool>, 32>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.b)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.a.a + vec3<f32>(var_1.a.a.x, 2802f, var_1.a.a.x)), _wgslsmith_f_op_vec3_f32(-arg_0.a.a))))), 978f, var_1.a.d, countOneBits(-vec2<i32>(-2147483647i, abs(arg_0.a.c.x))), vec3<u32>(~_wgslsmith_clamp_u32(reverseBits(134072u), ~arg_0.a.e.x, abs(arg_3)), ~46552u, arg_3));
    return ~(~_wgslsmith_mod_i32(i32(-1i) * -var_2.c.x, _wgslsmith_clamp_i32(1i, var_1.a.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-6059i, -33542i), vec2<i32>(0i, -2030i)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = 4294967295u;
    global1 = ~vec2<i32>(global1.x, arg_1.x & _wgslsmith_sub_i32(-arg_0.a.c.x, countOneBits(global1.x)));
    global1 = select(global0[_wgslsmith_index_u32(arg_0.a.e.x, 28u)], -abs(arg_3.d), arg_0.b.zx);
    return ~abs((arg_0.a.e ^ (vec3<u32>(arg_0.d.x, 1u, 30705u) << (vec3<u32>(84695u, 79682u, 1u) % vec3<u32>(32u)))) & (abs(arg_3.e) & abs(arg_0.a.e)));
}

fn func_2() -> Struct_1 {
    var var_0 = func_4(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-148f, 1018f, -1427f), vec3<f32>(-1345f, -1130f, 852f))), _wgslsmith_f_op_f32(-823f + _wgslsmith_f_op_f32(894f + 547f)), vec2<i32>(~u_input.e, func_3(Struct_2(Struct_1(vec3<f32>(2182f, 521f, 696f), -650f, vec2<i32>(23566i, global1.x), vec2<i32>(-23902i, 0i), vec3<u32>(0u, 0u, 21257u)), vec3<bool>(false, false, true), true, vec3<u32>(6861u, u_input.d, 1u), vec3<bool>(false, true, true)), vec3<f32>(-2023f, 2918f, 230f), vec3<i32>(u_input.e, u_input.c.x, 21594i), 13714u)), firstTrailingBit(global0[_wgslsmith_index_u32(u_input.d, 28u)] << (vec2<u32>(0u, u_input.d) % vec2<u32>(32u))), min(firstLeadingBit(vec3<u32>(u_input.d, 0u, 54047u)), ~vec3<u32>(u_input.d, u_input.d, 42119u))), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false)), vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true))), !all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true))), firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.b) | vec3<u32>(u_input.b, 34998u, u_input.d), ~vec3<u32>(u_input.b, u_input.d, 0u))), select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), !select(false, false, false))), reverseBits(vec4<i32>(global1.x, abs(_wgslsmith_dot_vec3_i32(u_input.c, u_input.a)), u_input.e, global1.x)), true, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1027f, -503f, 1622f), vec3<f32>(414f, -701f, -475f))))), -1919f, -_wgslsmith_sub_vec2_i32(vec2<i32>(-30414i, 6230i), vec2<i32>(24422i, -13668i)) | _wgslsmith_sub_vec2_i32(min(vec2<i32>(-2147483647i, u_input.c.x), vec2<i32>(global1.x, 15871i)), global0[_wgslsmith_index_u32(52340u, 28u)]), -(~vec2<i32>(-2147483647i, 18268i)), min(vec3<u32>(u_input.d & u_input.b, 18058u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 94595u))), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b, 0u, u_input.d), ~vec3<u32>(37076u, u_input.d, u_input.b)))));
    var var_1 = _wgslsmith_div_i32(~func_3(Struct_2(Struct_1(vec3<f32>(612f, 1000f, 2663f), 141f, vec2<i32>(-10908i, -2147483647i), u_input.a.yy, vec3<u32>(var_0.x, var_0.x, 85471u)), vec3<bool>(true, true, false), all(vec4<bool>(true, false, true, false)), vec3<u32>(u_input.d, u_input.b, 0u), vec3<bool>(true, true, true)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -519f), _wgslsmith_f_op_f32(step(-616f, 702f)), _wgslsmith_f_op_f32(max(-1000f, -2050f))), vec3<i32>(_wgslsmith_add_i32(-2671i, 2147483647i), countOneBits(global1.x), func_3(Struct_2(Struct_1(vec3<f32>(-961f, 1000f, 439f), -1827f, u_input.a.xy, vec2<i32>(9844i, global1.x), vec3<u32>(u_input.b, var_0.x, u_input.b)), vec3<bool>(false, false, true), false, vec3<u32>(0u, u_input.b, u_input.b), vec3<bool>(true, false, true)), vec3<f32>(-136f, -760f, -945f), vec3<i32>(13145i, 1i, 73370i), var_0.x)), _wgslsmith_mult_u32(~u_input.d, var_0.x)), global1.x);
    var_1 = -(_wgslsmith_add_i32(142i, _wgslsmith_div_i32(-30524i, u_input.e)) | global1.x);
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-342f, 224f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1444f, 1767f)))))))));
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(floor(var_2.x)))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -574f), _wgslsmith_f_op_f32(trunc(1107f)), var_3), vec3<f32>(_wgslsmith_f_op_f32(var_3 - var_2.x), _wgslsmith_f_op_f32(var_3 + var_2.x), _wgslsmith_f_op_f32(-755f * var_3)))))), -356f, global0[_wgslsmith_index_u32(~var_0.x, 28u)], -(~((global0[_wgslsmith_index_u32(4294967295u, 28u)] & vec2<i32>(-1i, -27543i)) << (vec2<u32>(46854u, u_input.d) % vec2<u32>(32u)))), vec3<u32>(var_0.x, 28907u, var_0.x));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_2 {
    global1 = select(arg_0.d, reverseBits(vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a & vec3<i32>(global1.x, -2147483647i, 0i), -vec3<i32>(-1i, arg_0.d.x, arg_0.d.x)), reverseBits(global1.x & arg_0.c.x))), !(!((-1i <= u_input.c.x) | true)));
    var var_0 = arg_0.e;
    let var_1 = select(select(~(vec2<i32>(arg_0.c.x, -2147483647i) << ((arg_0.e.yz | arg_0.e.xy) % vec2<u32>(32u))), vec2<i32>(u_input.e, 1i), true), u_input.a.xy, any(!vec3<bool>(any(vec4<bool>(true, false, false, false)), global1.x < u_input.c.x, var_0.x >= 4294967295u)));
    global2 = array<vec2<bool>, 32>();
    let var_2 = true;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_0.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, 493f, arg_0.b))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0.a.x, 1262f)), arg_0.a.x)), ~firstTrailingBit(global0[_wgslsmith_index_u32(reverseBits(16776u), 28u)]), vec2<i32>(~(-2147483647i), ~u_input.e), ~(~vec3<u32>(var_0.x, arg_1.x, 1u))), vec3<bool>(true, var_2, var_2), !any(vec4<bool>(true, var_2, true, all(vec3<bool>(var_2, var_2, var_2)))), ~(~_wgslsmith_mult_vec3_u32(arg_0.e, arg_0.e & arg_0.e)), select(vec3<bool>(false, !(var_2 && var_2), (arg_0.a.x != arg_0.b) & var_2), select(!select(vec3<bool>(var_2, false, false), vec3<bool>(var_2, var_2, true), vec3<bool>(true, false, var_2)), select(select(vec3<bool>(var_2, false, true), vec3<bool>(true, false, var_2), var_2), select(vec3<bool>(var_2, var_2, true), vec3<bool>(true, true, false), vec3<bool>(var_2, false, var_2)), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)), select(!select(var_2, true, false), !var_2, var_0.x == 4294967295u)));
}

fn func_1() -> vec4<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1242f, 336f, -298f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1316f, 1298f, -923f)))))), 1158f, vec2<i32>(1i, _wgslsmith_sub_i32(~(-6353i), 1i)), -vec2<i32>(abs(~(-1i)), -21845i), ~(~vec3<u32>(4294967295u, _wgslsmith_add_u32(u_input.d, 19632u), u_input.b)));
    var var_1 = func_5(func_2(), vec2<u32>(1u, 0u));
    var var_2 = Struct_2(Struct_1(var_1.a.a, -123f, firstTrailingBit(u_input.a.zz), _wgslsmith_sub_vec2_i32(-vec2<i32>(var_1.a.c.x, 1i), func_5(var_0, vec2<u32>(4294967295u, var_1.a.e.x)).a.c) << (var_1.a.e.yx % vec2<u32>(32u)), ~vec3<u32>(abs(var_1.a.e.x), 15864u, u_input.d)), !var_1.b, var_1.e.x, vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, 18826u), vec4<u32>(var_0.e.x, var_1.d.x, var_0.e.x, var_1.a.e.x)), max(vec4<u32>(var_1.a.e.x, 4294967295u, var_1.a.e.x, var_1.d.x), vec4<u32>(var_0.e.x, var_0.e.x, u_input.d, var_0.e.x))), 1u), _wgslsmith_add_u32(1u, _wgslsmith_div_u32(~var_1.a.e.x, ~4294967295u)), 10887u), vec3<bool>(true, var_1.b.x, !(_wgslsmith_f_op_f32(var_1.a.b * var_0.b) <= var_1.a.b)));
    global0 = array<vec2<i32>, 28>();
    let var_3 = false;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1306f, var_1.a.b, var_0.a.x, var_2.a.a.x), vec4<f32>(var_1.a.a.x, -263f, 1590f, var_0.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(floor(-1065f)), 160f, _wgslsmith_f_op_f32(f32(-1f) * -1282f), 371f))) * vec4<f32>(_wgslsmith_f_op_f32(min(-314f, -1554f)), var_2.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.a.x) + _wgslsmith_f_op_f32(215f - -923f))), var_0.a.x));
}

fn func_6(arg_0: vec4<f32>) -> Struct_2 {
    global2 = array<vec2<bool>, 32>();
    global2 = array<vec2<bool>, 32>();
    global0 = array<vec2<i32>, 28>();
    let var_0 = _wgslsmith_f_op_f32(round(-839f));
    global2 = array<vec2<bool>, 32>();
    return func_5(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1494f, var_0, -362f)) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_0.www)))), _wgslsmith_f_op_f32(sign(var_0)), -vec2<i32>(-19841i, u_input.e) & countOneBits(global0[_wgslsmith_index_u32(2042u, 28u)] >> (vec2<u32>(u_input.b, u_input.d) % vec2<u32>(32u))), -(global0[_wgslsmith_index_u32(u_input.d, 28u)] & -global0[_wgslsmith_index_u32(1u, 28u)]), ~_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 26506u, 0u), vec3<u32>(4294967295u, 4294967295u, u_input.d)), vec3<u32>(82458u, 15948u, 62748u))), vec2<u32>(u_input.d, countOneBits(select(23104u, select(u_input.d, u_input.b, true), true))));
}

fn func_7(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: f32) -> i32 {
    var var_0 = vec4<u32>(~arg_2.e.x, 4294967295u, arg_0.a.e.x, _wgslsmith_add_u32(21585u, ~(~u_input.b | _wgslsmith_div_u32(arg_0.a.e.x, 13532u))));
    let var_1 = vec4<u32>(~65688u, ~_wgslsmith_add_u32(_wgslsmith_add_u32(~arg_0.a.e.x, u_input.d | 0u), abs(~arg_2.e.x)), ~42530u << (select(0u, ~(u_input.d & arg_2.e.x), arg_0.a.b >= _wgslsmith_f_op_vec4_f32(func_1()).x) % 32u), arg_0.d.x);
    var var_2 = reverseBits(vec3<u32>(1u, ~func_6(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1476f, 507f, arg_3, -506f) * vec4<f32>(arg_1.x, arg_2.a.x, 1903f, arg_3))).a.e.x, 3392u));
    var var_3 = ~func_6(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(3257f, arg_0.a.b, arg_2.a.x, 481f) - vec4<f32>(-1341f, arg_3, arg_1.x, arg_1.x)), vec4<f32>(arg_0.a.b, -811f, 1380f, 424f), arg_0.b.x))).a.e.x >> (~(~2575u) % 32u);
    var var_4 = var_1;
    return abs(_wgslsmith_dot_vec2_i32(func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-533f, arg_1.x, arg_3, 2024f), vec4<f32>(1000f, 850f, arg_1.x, arg_1.x))))).a.c, _wgslsmith_clamp_vec2_i32(func_6(vec4<f32>(135f, arg_0.a.a.x, arg_2.b, 362f)).a.d, _wgslsmith_clamp_vec2_i32(arg_0.a.d, global0[_wgslsmith_index_u32(4294967295u, 28u)], vec2<i32>(-28896i, 12610i)), arg_0.a.d) ^ _wgslsmith_mod_vec2_i32(arg_0.a.d, _wgslsmith_clamp_vec2_i32(u_input.c.zy, vec2<i32>(arg_2.c.x, -1i), vec2<i32>(1i, u_input.e)))));
}

fn func_8(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> vec3<f32> {
    global0 = array<vec2<i32>, 28>();
    var var_0 = _wgslsmith_clamp_i32(firstTrailingBit(_wgslsmith_clamp_i32(-1i, arg_2.d.x, abs(2147483647i))), 0i, reverseBits(-25203i));
    let var_1 = func_5(func_5(func_2(), _wgslsmith_add_vec2_u32(arg_2.e.zz, vec2<u32>(abs(65150u), 1u))).a, vec2<u32>(85830u, arg_2.e.x));
    global0 = array<vec2<i32>, 28>();
    var var_2 = ~_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(var_1.d.x, 83553u, arg_2.e.x, 9802u) << (vec4<u32>(19168u, arg_2.e.x, arg_2.e.x, 0u) % vec4<u32>(32u))), ~select(vec4<u32>(0u, 24895u, 13698u, 58010u), vec4<u32>(0u, 4492u, arg_2.e.x, var_1.a.e.x), vec4<bool>(false, arg_3, arg_3, false)), ~vec4<u32>(arg_2.e.x, 0u, arg_2.e.x, arg_2.e.x)), vec4<u32>(0u, _wgslsmith_mod_u32(var_1.a.e.x, arg_2.e.x) >> (abs(4294967295u) % 32u), ~(var_1.d.x >> (u_input.d % 32u)), firstLeadingBit(~var_1.d.x)));
    return vec3<f32>(_wgslsmith_f_op_vec4_f32(func_1()).x, arg_2.a.x, arg_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 32>();
    let var_0 = ~_wgslsmith_div_vec2_i32(~_wgslsmith_sub_vec2_i32(~global0[_wgslsmith_index_u32(50532u, 28u)], ~u_input.c.yy), ~(vec2<i32>(-1i) * -vec2<i32>(global1.x, u_input.c.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(func_8(func_7(func_6(_wgslsmith_f_op_vec4_f32(func_1())), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-1432f - 529f), _wgslsmith_f_op_vec4_f32(func_1()).x))), func_2(), _wgslsmith_f_op_f32(f32(-1f) * -1236f)), 2147483647i, func_5(Struct_1(func_6(_wgslsmith_f_op_vec4_f32(-vec4<f32>(420f, -1159f, -427f, -693f))).a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(452f)) + _wgslsmith_f_op_f32(round(368f))), func_2().d, u_input.c.zx, _wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(1u, u_input.d, u_input.d)), firstTrailingBit(vec3<u32>(u_input.d, 4294967295u, 22687u)))), _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.d, u_input.b) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(u_input.d, u_input.b)), max(vec2<u32>(u_input.d, 4816u), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(91287u, 1u))))).a, true));
    var var_2 = firstTrailingBit(max(~27885u, u_input.d));
    let var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-962f))), _wgslsmith_f_op_f32(var_1.x + var_1.x), 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1449f, 1f))), vec2<i32>(func_2().c.x, -2147483647i), u_input.a.yx, vec3<u32>(u_input.d, ~_wgslsmith_div_u32(u_input.b, u_input.d), abs(u_input.d) << (1u % 32u)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(1u, 4294967295u), firstTrailingBit(u_input.d), ~60108u), vec3<u32>(u_input.b, u_input.b, _wgslsmith_div_u32(0u, u_input.d))) % vec3<u32>(32u)));
    var var_4 = vec4<bool>(true, !all(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true))), all(select(global2[_wgslsmith_index_u32(var_3.e.x, 32u)], global2[_wgslsmith_index_u32(1u, 32u)], func_6(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.x, 1000f, var_3.a.x, -317f))).e.zy)), !(_wgslsmith_f_op_f32(-402f * _wgslsmith_f_op_f32(min(-625f, var_3.a.x))) < _wgslsmith_div_f32(func_2().b, func_2().b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-788f, 1264f))), u_input.d, 57607u ^ abs(var_3.e.x), firstLeadingBit(vec4<u32>(10098u, u_input.b, u_input.d, 43645u) >> (vec4<u32>(1u, u_input.d, var_3.e.x, var_3.e.x) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_mult_u32(u_input.d, _wgslsmith_div_u32(3689u, var_3.e.x)), func_6(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1796f, 885f, 363f, -929f))).d.x, firstTrailingBit(45028u), 4294967295u | reverseBits(u_input.d)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1998f)) * -1000f));
}

