struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<i32> = vec2<i32>(0i, i32(-2147483648));

var<private> global2: bool = false;

var<private> global3: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec4<u32>(1u, 0u, 8999u, 34479u), 185f, vec2<i32>(-35334i, -48027i), vec3<u32>(0u, 21449u, 0u)), Struct_1(vec4<u32>(1u, 0u, 1u, 0u), 2210f, vec2<i32>(64699i, 2147483647i), vec3<u32>(1u, 36477u, 12265u)), Struct_1(vec4<u32>(32914u, 1u, 4294967295u, 4030u), 174f, vec2<i32>(-21681i, 1i), vec3<u32>(71766u, 1u, 16974u)), Struct_1(vec4<u32>(0u, 0u, 19660u, 0u), -229f, vec2<i32>(-18191i, -8561i), vec3<u32>(4294967295u, 15736u, 6400u)), Struct_1(vec4<u32>(4294967295u, 0u, 71569u, 4294967295u), -1000f, vec2<i32>(-54017i, 13281i), vec3<u32>(1u, 13842u, 1u)), Struct_1(vec4<u32>(11940u, 47100u, 58280u, 43065u), -341f, vec2<i32>(-1i, -1i), vec3<u32>(1u, 0u, 1u)), Struct_1(vec4<u32>(4294967295u, 18673u, 0u, 59933u), 132f, vec2<i32>(2147483647i, 1i), vec3<u32>(484u, 4294967295u, 18965u)));

var<private> global4: vec3<i32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = arg_0.a;
    var var_1 = arg_0;
    global2 = !(_wgslsmith_f_op_f32(sign(global0.b)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(490f, _wgslsmith_f_op_f32(-var_1.b))) * _wgslsmith_f_op_f32(step(-480f, _wgslsmith_f_op_f32(-1384f - 388f)))));
    global4 = vec3<i32>(i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(global4.x, 0i, global0.c, arg_0.c), vec4<i32>(global1.x, 2147483647i, 2147483647i, 1i)), ~(~var_1.c), var_1.c);
    let var_2 = global0.a;
    return 4294967295u;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: vec4<f32>) -> Struct_2 {
    var var_0 = func_3(Struct_2(!global0.a, 396f, 1i));
    let var_1 = Struct_2(true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(round(arg_0.x)))))), global0.c);
    var var_2 = -2147483647i;
    global4 = select(abs(vec3<i32>(_wgslsmith_add_i32(var_1.c, 6797i), global4.x, ~(-27905i))), max(vec3<i32>(1i, 1i, 1i), _wgslsmith_mult_vec3_i32(vec3<i32>(-31501i, -2147483647i, 1i), vec3<i32>(-40364i, -1487i, -2147483647i) ^ vec3<i32>(1i, global0.c, 15379i))), var_1.a && true) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u));
    var var_3 = 1u;
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~reverseBits(_wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(29433u, 0u)), ~arg_0.a.xx)), firstTrailingBit(abs(vec2<u32>(9267u, 0u) & vec2<u32>(0u, arg_0.d.x)) << (arg_0.a.yx % vec2<u32>(32u)))), 7u)];
    global3 = array<Struct_1, 7>();
    var var_1 = Struct_1(vec4<u32>(min(var_0.a.x, _wgslsmith_sub_u32(func_3(Struct_2(global0.a, global0.b, 25781i)), _wgslsmith_mod_u32(var_0.a.x, 0u))), ~arg_0.a.x, _wgslsmith_add_u32(~(~arg_0.d.x), arg_0.a.x), reverseBits(4294967295u)), global0.b, countOneBits(firstLeadingBit(vec2<i32>(global4.x, var_0.c.x)) & min(global4.xx, vec2<i32>(global1.x, 1i))) ^ firstLeadingBit(_wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(-2147483647i, global0.c)), var_0.c)), ~(~(~_wgslsmith_clamp_vec3_u32(arg_0.a.wzy, arg_0.a.yyy, vec3<u32>(4294967295u, arg_0.d.x, var_0.d.x)))));
    var var_2 = func_2(vec4<f32>(arg_2.b, _wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-343f + 2403f), arg_2.b))), _wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_vec4_f32(select(arg_1, vec4<f32>(var_0.b, arg_1.x, -252f, 1558f), vec4<bool>(arg_2.a, arg_2.a, true, global0.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(427f, 234f, arg_1.x, arg_2.b)), vec4<f32>(var_0.b, var_1.b, arg_2.b, arg_2.b)).b), _wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_vec4_f32(arg_1 - arg_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1))))));
    var var_3 = vec3<bool>(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.b), arg_0.b, _wgslsmith_f_op_f32(2385f + arg_1.x), 228f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(680f, _wgslsmith_f_op_f32(-arg_0.b), var_2.b, _wgslsmith_f_op_f32(-860f - arg_2.b)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_1, vec4<f32>(751f, 1273f, 748f, arg_1.x)))), vec4<f32>(_wgslsmith_f_op_f32(-881f + arg_2.b), -240f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-125f - arg_1.x))), var_1.b)).a, all(vec2<bool>(!var_2.a, all(vec2<bool>(global0.a, var_2.a)))), true);
    return func_2(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(ceil(-2480f)), global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.b, -289f))) * 748f)), _wgslsmith_f_op_vec4_f32(floor(arg_1)), vec4<f32>(_wgslsmith_f_op_f32(arg_2.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-184f + global0.b))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_2.b)), _wgslsmith_f_op_f32(max(-161f, _wgslsmith_f_op_f32(868f + -698f))), arg_2.a)), _wgslsmith_f_op_f32(ceil(arg_1.x)), -965f));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec2<i32>) -> i32 {
    return min(~countOneBits(22452i), min(global4.x, _wgslsmith_add_i32(arg_1.c, 44900i) | _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.x, -35172i, -17323i), vec3<i32>(2147483647i, -1i, global0.c)))) & -332i;
}

fn func_1(arg_0: vec4<u32>, arg_1: bool, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = reverseBits(vec3<i32>((-global4.x | 8090i) << (arg_3.a.x % 32u), -2147483647i, global4.x));
    let var_1 = _wgslsmith_mod_i32(global0.c, ~(-1210i));
    var var_2 = arg_3.a;
    let var_3 = firstTrailingBit(vec2<i32>(var_0.x, func_5(1u, func_4(arg_3, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, 162f, global0.b) - vec4<f32>(arg_3.b, 770f, -2015f, -710f)), func_2(vec4<f32>(arg_3.b, global0.b, -1526f, -726f), vec4<f32>(arg_3.b, 250f, 559f, arg_2.x), vec4<f32>(arg_3.b, arg_2.x, global0.b, 1409f))), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -1i, 0i, global1.x), vec4<i32>(58216i, 0i, 2147483647i, -83464i)), firstLeadingBit(vec4<i32>(1i, var_0.x, -1i, -22694i))), vec2<i32>(u_input.a, -2147483647i))));
    let var_4 = true;
    return Struct_1(_wgslsmith_add_vec4_u32(min(firstLeadingBit(arg_3.a | vec4<u32>(2155u, 4294967295u, 4294967295u, 26732u)), ~(vec4<u32>(4294967295u, arg_3.a.x, arg_0.x, 4294967295u) << (vec4<u32>(var_2.x, 70552u, 82595u, 4294967295u) % vec4<u32>(32u)))), min((vec4<u32>(var_2.x, 103809u, 57876u, 21412u) << (vec4<u32>(arg_0.x, var_2.x, arg_0.x, arg_0.x) % vec4<u32>(32u))) | arg_0, ~(~arg_3.a))), -1429f, abs(vec2<i32>(_wgslsmith_sub_i32(firstTrailingBit(var_3.x), ~(-2147483647i)), u_input.a)), ~(firstTrailingBit(~vec3<u32>(47409u, 26957u, arg_0.x)) << (max(arg_0.xyw, ~arg_0.yzy) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -global0.c <= 2147483647i;
    global2 = global0.a;
    global4 = -vec3<i32>(max(firstLeadingBit(~71807i), -2147483647i), global1.x, 1i);
    let var_1 = func_1(vec4<u32>(~_wgslsmith_div_u32(abs(70796u), max(1u, 0u)), ~(~max(41507u, 59276u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(9972u, 90203u), vec2<u32>(abs(1u), 0u)), 27352u), var_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(977f + 144f), global0.b)), global3[_wgslsmith_index_u32(~1u, 7u)]);
    global3 = array<Struct_1, 7>();
    global0 = func_4(Struct_1(vec4<u32>(abs(~var_1.a.x), 59814u, var_1.d.x, var_1.d.x | abs(var_1.d.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(822f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global0.b)))))), select(var_1.c, vec2<i32>(global1.x, 1i), true) | _wgslsmith_clamp_vec2_i32(vec2<i32>(global0.c, 2147483647i), vec2<i32>(0i, -6722i) | var_1.c, _wgslsmith_mod_vec2_i32(global4.xz, vec2<i32>(var_1.c.x, global0.c))), vec3<u32>(4294967295u, ~4294967295u, ~var_1.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-603f, -1000f, global0.b, var_1.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, -704f, 1600f, global0.b) * vec4<f32>(var_1.b, global0.b, -1000f, var_1.b)), var_0))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(180f, global0.b, global0.b, 622f) * _wgslsmith_div_vec4_f32(vec4<f32>(var_1.b, -718f, 771f, -114f), vec4<f32>(1374f, 369f, var_1.b, var_1.b)))))), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-178f, _wgslsmith_div_f32(653f, -1438f), _wgslsmith_f_op_f32(f32(-1f) * -740f), _wgslsmith_f_op_f32(f32(-1f) * -422f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.b, 674f, global0.b, var_1.b))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(758f, var_1.b, var_1.b, -428f))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, 1382f, 691f, 375f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-671f, 1558f, var_1.b, -669f), vec4<f32>(-902f, -330f, global0.b, -1292f), vec4<bool>(false, global0.a, true, true)))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(630f, 1588f, 1129f, var_1.b)))), vec4<f32>(_wgslsmith_f_op_f32(372f + var_1.b), _wgslsmith_f_op_f32(-var_1.b), var_1.b, _wgslsmith_f_op_f32(step(global0.b, var_1.b)))))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec2<i32>(_wgslsmith_div_i32(global4.x, 18229i), 49091i)) >> (firstTrailingBit(abs(var_1.d.yy << (var_1.a.yx % vec2<u32>(32u)))) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-447f, global0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.b)) + -822f), _wgslsmith_f_op_f32(799f - var_1.b), global0.b) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.b))), _wgslsmith_f_op_f32(ceil(var_1.b)), 1120f, 763f)));
}

