struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 12>;

var<private> global1: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    global1 = arg_0.b;
    let var_0 = Struct_2(arg_0.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.b, 117f, arg_0.b), vec3<f32>(1718f, -467f, -628f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.b, arg_0.b, 823f), vec3<f32>(arg_0.b, -138f, -1528f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, -1000f, -737f) + vec3<f32>(317f, -1018f, 702f)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) + arg_0.b) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f * arg_0.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), arg_0.b)));
    let var_2 = -517f;
    let var_3 = ~u_input.c;
    return (vec2<i32>(-(i32(-1i) * -2147483647i), 2147483647i) & (reverseBits(~vec2<i32>(19337i, var_3)) << (u_input.b.zx % vec2<u32>(32u)))) ^ select(_wgslsmith_clamp_vec2_i32(~_wgslsmith_div_vec2_i32(vec2<i32>(34176i, 1i), vec2<i32>(-2147483647i, u_input.c)), vec2<i32>(u_input.c, -2147483647i), -(~vec2<i32>(u_input.c, u_input.c))), max(countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, -1i), vec2<i32>(var_3, -2147483647i))), abs(abs(vec2<i32>(1i, var_3)))), true);
}

fn func_4(arg_0: vec2<i32>, arg_1: bool) -> vec4<bool> {
    var var_0 = !(!select(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(arg_1, true), arg_1), true), vec2<bool>(any(vec2<bool>(arg_1, arg_1)), 38897u == u_input.b.x), true));
    var var_1 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(~(~74950u), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.d, u_input.b.x), vec4<u32>(u_input.d, u_input.a, 0u, u_input.d))), u_input.b.x, u_input.a), _wgslsmith_mult_vec4_u32(~reverseBits(global0[_wgslsmith_index_u32(61266u, 12u)]), abs(~global0[_wgslsmith_index_u32(u_input.a, 12u)])) << (global0[_wgslsmith_index_u32(~u_input.b.x, 12u)] % vec4<u32>(32u)), ~_wgslsmith_div_vec4_u32(global0[_wgslsmith_index_u32(~(~u_input.b.x), 12u)], _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, 4294967295u, u_input.d, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.a), global0[_wgslsmith_index_u32(32735u, 12u)], global0[_wgslsmith_index_u32(77450u, 12u)]))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -848f);
    var var_3 = Struct_1(select(select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(var_0.x, var_0.x, arg_1, var_0.x), vec4<bool>(arg_1, true, var_0.x, arg_1)), !vec4<bool>(arg_1, true, true, true), select(vec4<bool>(arg_1, arg_1, false, var_0.x), vec4<bool>(true, true, false, false), vec4<bool>(var_0.x, true, false, true))), select(!vec4<bool>(var_0.x, false, true, var_0.x), select(vec4<bool>(false, false, arg_1, true), vec4<bool>(true, false, false, arg_1), arg_1), !vec4<bool>(var_0.x, arg_1, false, arg_1)), any(vec2<bool>(true, true))), select(vec4<bool>(true, true, var_0.x, true), !select(vec4<bool>(false, true, false, arg_1), vec4<bool>(false, var_0.x, true, arg_1), vec4<bool>(true, var_0.x, true, arg_1)), !var_0.x), !(!arg_1)), var_2);
    var var_4 = Struct_1(!vec4<bool>(var_3.a.x, var_3.a.x, !var_0.x, arg_1), _wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(478f - _wgslsmith_f_op_f32(trunc(var_2))))));
    return select(select(var_3.a, !vec4<bool>(any(vec4<bool>(false, true, var_4.a.x, var_3.a.x)), var_0.x, false, !var_0.x), var_4.a), vec4<bool>(_wgslsmith_sub_i32(u_input.c, -arg_0.x) != (firstTrailingBit(arg_0.x) >> (_wgslsmith_div_u32(var_1.x, 4174u) % 32u)), !select(true, 4294967295u <= var_1.x, false & var_4.a.x), var_0.x, var_0.x), var_3.a);
}

fn func_2() -> f32 {
    global1 = -315f;
    let var_0 = Struct_2(!(!(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false)))));
    var var_1 = Struct_1(func_4(func_3(Struct_1(select(var_0.a, var_0.a, var_0.a.x), _wgslsmith_f_op_f32(sign(-1389f)))), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(818f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1550f, 422f)))))));
    let var_2 = Struct_2(var_0.a);
    let var_3 = abs(max(firstLeadingBit(u_input.b.xz), firstTrailingBit(~(~u_input.b.zz))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1469f, var_1.b))) * -1427f))) + _wgslsmith_f_op_f32(299f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(905f)) * -1128f)))));
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: i32, arg_3: i32) -> Struct_1 {
    var var_0 = !func_4(vec2<i32>(30412i, ~arg_3), -1121f == arg_0).xz;
    var var_1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(190f)))), _wgslsmith_f_op_f32(arg_0 * -260f)), arg_0, _wgslsmith_f_op_f32(1475f + 2175f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-413f - arg_0)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 551f, arg_0))) * vec4<f32>(arg_0, 232f, arg_0, 387f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1596f, arg_0, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(abs(-892f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 141f, arg_0) * vec4<f32>(-838f, -388f, arg_0, 523f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1146f, -298f, -462f, arg_0) - vec4<f32>(arg_0, 483f, arg_0, 1216f))), arg_1))))));
    let var_2 = min(max(vec4<i32>(-49841i, ~arg_3, countOneBits(_wgslsmith_sub_i32(2147483647i, 8986i)), _wgslsmith_mult_i32(2511i, i32(-1i) * -47488i)), ~(~(~vec4<i32>(-2147483647i, arg_2, arg_2, 2147483647i)))), select(vec4<i32>(arg_2 ^ arg_3, firstLeadingBit(~arg_2), -min(arg_2, u_input.c), -u_input.c), firstTrailingBit(~(~vec4<i32>(-7561i, 1i, -37171i, -1622i))), !func_4(vec2<i32>(27845i, arg_3), func_4(vec2<i32>(arg_3, arg_3), true).x)));
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1567f * _wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_div_f32(-1215f, _wgslsmith_f_op_f32(-1386f * _wgslsmith_f_op_f32(-var_1.x)))));
    let var_3 = Struct_2(!select(vec4<bool>(!arg_1, arg_1, arg_1, var_0.x), !(!vec4<bool>(false, var_0.x, true, true)), !vec4<bool>(true, false, var_0.x, var_0.x)));
    return Struct_1(func_4(vec2<i32>(-1i) * -firstLeadingBit(vec2<i32>(14814i, -69236i)), !(arg_1 & true)), _wgslsmith_div_f32(-1416f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(482f * _wgslsmith_f_op_f32(max(var_1.x, arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-574f - var_1.x) - _wgslsmith_f_op_f32(-var_1.x)))));
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: vec3<bool>, arg_3: u32) -> vec4<bool> {
    let var_0 = -1i;
    global1 = arg_1;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-933f, _wgslsmith_f_op_f32(-arg_0.b))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(724f, -318f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, -1000f) + vec2<f32>(1642f, -1431f))))));
    global0 = array<vec4<u32>, 12>();
    var var_2 = -abs(-vec3<i32>(0i, abs(var_0), -2147483647i));
    return arg_0.a;
}

fn func_1() -> Struct_1 {
    var var_0 = func_6(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -424f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))), true, ~(-(u_input.c & u_input.c)), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, u_input.c, -7913i), vec3<i32>(1i, 2147483647i, u_input.c)), vec3<i32>(u_input.c, 2147483647i, u_input.c)), ~(-vec3<i32>(-23910i, u_input.c, u_input.c)))), 252f, !(!func_5(-275f, true, -u_input.c, 8044i).a.zzx), 1u);
    global0 = array<vec4<u32>, 12>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1206f, 1184f), vec2<f32>(-427f, -282f))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-541f, 620f), vec2<f32>(1644f, 623f))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-593f, 612f), vec2<f32>(-465f, -1510f)))))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-263f - 700f)), _wgslsmith_f_op_f32(f32(-1f) * -176f))));
    var var_2 = Struct_1(func_4(vec2<i32>(-1i, func_3(Struct_1(vec4<bool>(false, true, true, true), 834f)).x), !var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x))));
    var_0 = select(select(var_2.a, var_2.a, var_2.a.x), vec4<bool>(var_2.a.x, var_2.a.x && func_5(var_1.x, true, ~2147483647i, 2147483647i).a.x, (-293f >= var_1.x) && all(vec3<bool>(true, var_0.x, true)), select(false, true, var_0.x)), select(select(func_4(~vec2<i32>(0i, u_input.c), var_0.x), !vec4<bool>(var_0.x, var_0.x, true, var_0.x), var_2.a), func_6(func_5(-1147f, var_0.x, i32(-1i) * -1i, ~u_input.c), 2356f, select(vec3<bool>(true, var_2.a.x, true), !var_2.a.yzx, func_5(361f, var_0.x, -1i, 0i).a.zyz), 0u), vec4<bool>(all(var_2.a), var_0.x, var_0.x, all(select(var_2.a.www, var_0.xyy, var_2.a.x)))));
    return func_5(var_1.x, select(var_0.x, true, true), u_input.c, func_3(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -511f)), !var_0.x, -3843i, abs(-19358i))).x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -313f))))));
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1415f, -1000f, 524f, 1068f), vec4<f32>(-497f, -1065f, -1000f, 895f), vec4<bool>(false, false, true, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2082f, -1228f, -1000f, 1000f) - vec4<f32>(-344f, -873f, -458f, -385f)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-290f - -796f), -1160f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1962f)))), 1462f, _wgslsmith_f_op_f32(f32(-1f) * -129f))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -241f), -1000f);
    let var_2 = func_1();
    var var_3 = select(func_1().a.zx, !var_2.a.zz, var_2.a.x);
    var var_4 = !select(func_1().a.wxx, !var_2.a.wwx, func_4(vec2<i32>(firstTrailingBit(-1i), _wgslsmith_div_i32(u_input.c, u_input.c)), !all(var_2.a)).zyx);
    let var_5 = Struct_2(!(!select(func_4(vec2<i32>(-57009i, 10535i), var_3.x), vec4<bool>(false, var_2.a.x, var_2.a.x, false), var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1478f, var_0.x, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, -645f, 564f)))) + vec4<f32>(_wgslsmith_f_op_f32(-778f - var_1), -1217f, _wgslsmith_f_op_f32(floor(796f)), -964f)), var_2.a.x)));
}

