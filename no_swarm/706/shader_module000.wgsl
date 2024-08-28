struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-6742i, 1i, 0i);

var<private> global1: Struct_4;

var<private> global2: i32 = i32(-2147483648);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: vec3<f32>) -> u32 {
    global2 = 2147483647i;
    var var_0 = ~(-max(max(-vec3<i32>(-1i, global0.x, arg_0.b.a), vec3<i32>(u_input.a, -2147483647i, global0.x)), -(vec3<i32>(u_input.a, arg_0.b.a, global0.x) ^ vec3<i32>(-47738i, -2424i, -14018i))));
    global0 = vec3<i32>(-(~firstTrailingBit(u_input.a) | abs(-1i)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(~global1.a.x, _wgslsmith_dot_vec2_i32(global0.zx, global0.xy)), -901i | (global0.x ^ var_0.x)), ~global0.x), 24340i);
    var var_1 = Struct_1(any(!(!(!vec4<bool>(false, global1.b.x, true, true)))), arg_2, true);
    var_1 = arg_0.a;
    return arg_1;
}

fn func_3() -> vec4<f32> {
    global1 = Struct_4(vec2<i32>(-22329i, _wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(global0.x, global0.x, global1.a.x), vec3<i32>(18131i, u_input.a, -1773i))), ~vec3<i32>(global1.a.x, -2147483647i, u_input.a))), !vec3<bool>(any(select(vec4<bool>(false, true, true, global1.b.x), vec4<bool>(global1.b.x, global1.b.x, global1.b.x, global1.b.x), true)), false, true));
    var var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-20305i, -7586i, select(0i, abs(2147483647i), any(vec3<bool>(global1.b.x, global1.b.x, global1.b.x))), global0.x), -vec4<i32>(~global0.x, min(u_input.a, -2147483647i), ~global1.a.x, max(1824i, 1950i))), _wgslsmith_dot_vec3_i32(vec3<i32>(abs(_wgslsmith_clamp_i32(51825i, 0i, 2147483647i)), global0.x ^ reverseBits(global0.x), ~(~2147483647i)), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(0i, u_input.a), abs(global1.a.x), u_input.a), vec3<i32>(40452i, 0i, u_input.a) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)))), ~u_input.a);
    var var_1 = Struct_3(Struct_1(false, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1287f, 1333f, -1426f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1173f, 270f, -659f)), select(vec3<bool>(global1.b.x, global1.b.x, true), vec3<bool>(global1.b.x, false, global1.b.x), vec3<bool>(true, global1.b.x, true)))))), all(!vec3<bool>(false, global1.b.x, global1.b.x))), Struct_2(1i), Struct_1(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1717f, 739f, 533f), vec3<f32>(-773f, 979f, 541f), false)) * vec3<f32>(-1000f, -1000f, -338f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(645f, 594f, 1502f))), global1.b.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1306f, 219f, -242f, -1369f) + vec4<f32>(292f, 473f, -384f, 407f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 1438f, -801f, 111f), vec4<f32>(541f, -346f, 1000f, -361f), false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(312f, -759f, -1000f, -185f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1123f - -712f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-873f, -733f))))) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-737f + 824f), _wgslsmith_f_op_f32(-1467f * -480f))))));
    let var_2 = (0i << (~_wgslsmith_mult_u32(func_1(Struct_3(var_1.c, var_1.b, var_1.c, vec4<f32>(var_1.e.x, var_1.d.x, 497f, -902f), var_1.e), 16048u, var_1.c.b), _wgslsmith_sub_u32(4294967295u, 104930u)) % 32u)) << (1u % 32u);
    let var_3 = _wgslsmith_f_op_f32(floor(var_1.e.x));
    return vec4<f32>(830f, -195f, var_1.a.b.x, var_1.c.b.x);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> vec3<i32> {
    global0 = firstLeadingBit(vec3<i32>(firstLeadingBit(arg_0.b.a), -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a, -1545i), ~vec3<i32>(global1.a.x, -14894i, arg_0.b.a)), reverseBits(arg_1.b.a)));
    let var_0 = arg_0.b;
    let var_1 = select(_wgslsmith_clamp_vec3_i32(~((vec3<i32>(8014i, 0i, global0.x) ^ vec3<i32>(-3051i, global0.x, global0.x)) & -vec3<i32>(global1.a.x, 21395i, 16248i)), vec3<i32>(-2147483647i, -30368i, ~(~u_input.a)), vec3<i32>(-1i) * -(vec3<i32>(-41313i, -27714i, 7567i) & vec3<i32>(u_input.a, -13398i, global0.x))), ~abs(abs(firstLeadingBit(vec3<i32>(arg_1.b.a, var_0.a, arg_0.b.a)))), select(global1.b, select(vec3<bool>(true, arg_1.d.x > 930f, select(false, true, false)), !vec3<bool>(global1.b.x, true, global1.b.x), vec3<bool>(true, true, true)), !(var_0.a > (global1.a.x ^ global0.x))));
    global0 = var_1;
    var var_2 = arg_0;
    return ~var_1;
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_4 {
    global0 = _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(-firstLeadingBit(~vec3<i32>(-895i, 2147483647i, u_input.a)), abs(firstLeadingBit(vec3<i32>(39313i, global0.x, -2147483647i) | vec3<i32>(arg_3.a, 14286i, -10400i)))), ~func_4(Struct_3(Struct_1(global1.b.x, arg_0, global1.b.x), Struct_2(29823i), Struct_1(true, vec3<f32>(473f, 1684f, 218f), true), _wgslsmith_f_op_vec4_f32(func_3()), vec2<f32>(511f, arg_2.x)), Struct_3(Struct_1(global1.b.x, arg_0, true), Struct_2(u_input.a), Struct_1(false, vec3<f32>(277f, 1511f, 204f), true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(923f, arg_2.x, 330f, 299f)), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, arg_0.x), vec2<f32>(-727f, arg_2.x)))));
    var var_0 = any(select(global1.b, !global1.b, select(vec3<bool>(false, false && global1.b.x, -1000f != arg_2.x), !select(vec3<bool>(false, true, global1.b.x), vec3<bool>(false, global1.b.x, true), vec3<bool>(false, false, true)), select(false, false != global1.b.x, !global1.b.x))));
    var var_1 = global1.b.x;
    let var_2 = vec2<i32>(max(_wgslsmith_div_i32(global1.a.x & firstLeadingBit(arg_1), -_wgslsmith_mod_i32(global1.a.x, 40295i)), 0i), -2147483647i);
    var var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-959f, arg_0.x, arg_0.x, -893f), vec4<f32>(arg_0.x, -124f, arg_0.x, 514f), global1.b.x))))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-244f, arg_0.x, arg_0.x, -1541f)))), vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -687f), _wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(arg_2.x - arg_2.x))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-539f, 1262f, arg_2.x, arg_2.x), vec4<f32>(arg_0.x, -344f, arg_0.x, 640f)) + vec4<f32>(arg_2.x, arg_2.x, arg_0.x, 1000f))))))));
    return Struct_4(vec2<i32>(max(arg_3.a, -arg_3.a >> (6247u % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_2.x), global1.a), var_2.x ^ -18869i, arg_3.a), _wgslsmith_add_vec4_i32(vec4<i32>(0i, 7236i, -29008i, -2147483647i) | vec4<i32>(-558i, 0i, u_input.a, var_2.x), ~vec4<i32>(-2147483647i, global0.x, arg_1, arg_3.a)))), select(global1.b, global1.b, global1.b));
}

fn func_5(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: f32) -> u32 {
    var var_0 = abs(min(vec3<u32>(1u, ~83106u, 86504u), vec3<u32>(21084u, ~(~69419u), 1u)));
    global2 = arg_1.x;
    var_0 = _wgslsmith_div_vec3_u32(min(firstLeadingBit(firstLeadingBit(vec3<u32>(var_0.x, 3208u, 0u))) ^ (_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, 1u), vec3<u32>(1u, 9008u, 50665u), vec3<u32>(4294967295u, 1u, 0u)) | abs(vec3<u32>(0u, 6901u, 0u))), (abs(vec3<u32>(0u, 4294967295u, var_0.x)) & ~vec3<u32>(4294967295u, 27974u, 17490u)) >> (_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(12882u, var_0.x, 4294967295u), vec3<u32>(1u, var_0.x, var_0.x), vec3<u32>(var_0.x, var_0.x, var_0.x)), firstTrailingBit(vec3<u32>(var_0.x, var_0.x, 1u))) % vec3<u32>(32u))), ~_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x) << (vec3<u32>(var_0.x, 5497u, var_0.x) % vec3<u32>(32u)), ~vec3<u32>(54315u, var_0.x, 50083u)), ~vec3<u32>(var_0.x, var_0.x, 52227u)));
    let var_1 = Struct_1(any(vec2<bool>(all(select(vec3<bool>(global1.b.x, true, true), global1.b, vec3<bool>(true, global1.b.x, global1.b.x))), any(select(vec2<bool>(false, true), vec2<bool>(true, false), arg_2.b.x)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 + arg_3))), -1282f, arg_3), any(!(!arg_2.b.xx)));
    global1 = arg_2;
    return ~(~_wgslsmith_sub_u32(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 29898u, var_0.x, var_0.x), vec4<u32>(var_0.x, var_0.x, 0u, var_0.x))), _wgslsmith_sub_u32(~0u, var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-435f, -1000f, 563f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(244f, -1000f, 464f))) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-171f, -342f, 594f), vec3<f32>(1000f, 2029f, 620f)))))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(40291u, 1u, 0u), firstTrailingBit(vec3<u32>(10806u, 44271u, 1u))), 1u, func_1(Struct_3(Struct_1(global1.b.x, vec3<f32>(1339f, -1107f, -1000f), global1.b.x), Struct_2(-2147483647i), Struct_1(false, vec3<f32>(-961f, 1840f, 951f), false), vec4<f32>(653f, 1324f, 1942f, 1150f), vec2<f32>(-396f, -1128f)), ~29151u, _wgslsmith_div_vec3_f32(vec3<f32>(1000f, 1703f, -561f), vec3<f32>(1324f, -1415f, 1000f)))) ^ vec3<u32>(~(~0u), func_5(global1.a.x, _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 1i, u_input.a), vec3<i32>(global1.a.x, -35353i, -2147483647i)), func_2(vec3<f32>(-1341f, 1000f, -314f), 2147483647i, vec2<f32>(-777f, -417f), Struct_2(u_input.a)), _wgslsmith_f_op_f32(-1221f + 985f)), ~1u));
}

