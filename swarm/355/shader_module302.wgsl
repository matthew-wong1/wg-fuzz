struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(Struct_1(-1479f), vec4<i32>(i32(-2147483648), 39158i, 28163i, 0i), -1i), Struct_2(Struct_1(920f), vec4<i32>(-26538i, -5062i, -5938i, 40877i), 2439i), Struct_2(Struct_1(1239f), vec4<i32>(50314i, 0i, -9625i, 33571i), -1914i), Struct_2(Struct_1(2196f), vec4<i32>(-3908i, 1i, 1247i, -1i), 2147483647i), Struct_2(Struct_1(1000f), vec4<i32>(21240i, 11162i, i32(-2147483648), -44339i), -29811i), Struct_2(Struct_1(109f), vec4<i32>(-26541i, 5749i, -467i, 41916i), 2147483647i), Struct_2(Struct_1(860f), vec4<i32>(2147483647i, 2147483647i, 2769i, i32(-2147483648)), 0i), Struct_2(Struct_1(1021f), vec4<i32>(i32(-2147483648), 28764i, 20452i, 1i), 0i), Struct_2(Struct_1(210f), vec4<i32>(i32(-2147483648), -60544i, -31671i, 0i), -1i), Struct_2(Struct_1(1690f), vec4<i32>(0i, -1i, -1i, -1i), -7954i), Struct_2(Struct_1(-621f), vec4<i32>(-1i, i32(-2147483648), -54107i, -9731i), -1i), Struct_2(Struct_1(967f), vec4<i32>(-8806i, i32(-2147483648), -1i, 16738i), -1i), Struct_2(Struct_1(-1000f), vec4<i32>(-18443i, 85145i, 1i, 5388i), -1i), Struct_2(Struct_1(-218f), vec4<i32>(-1i, 17318i, 1i, 93592i), -22522i), Struct_2(Struct_1(400f), vec4<i32>(-38021i, 2147483647i, 34878i, 0i), 0i), Struct_2(Struct_1(544f), vec4<i32>(5663i, 2147483647i, 1i, 1i), i32(-2147483648)), Struct_2(Struct_1(-1202f), vec4<i32>(1i, 1i, i32(-2147483648), -1i), 0i), Struct_2(Struct_1(831f), vec4<i32>(2147483647i, -62062i, 1i, 1i), 0i), Struct_2(Struct_1(292f), vec4<i32>(-1i, -35538i, 2147483647i, -1303i), 1i), Struct_2(Struct_1(1021f), vec4<i32>(2476i, -5785i, 2147483647i, -4689i), i32(-2147483648)), Struct_2(Struct_1(-298f), vec4<i32>(2147483647i, -1i, 0i, -43702i), 0i), Struct_2(Struct_1(325f), vec4<i32>(-31596i, -49127i, -192i, -22181i), -33446i), Struct_2(Struct_1(855f), vec4<i32>(26818i, 36217i, -33723i, i32(-2147483648)), -4433i), Struct_2(Struct_1(-1973f), vec4<i32>(-1i, -24511i, 1i, i32(-2147483648)), i32(-2147483648)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3) -> bool {
    global1 = array<Struct_2, 24>();
    let var_0 = vec2<i32>(-1i) * -arg_1.b.zy;
    global1 = array<Struct_2, 24>();
    let var_1 = arg_2;
    let var_2 = -5211i;
    return true;
}

fn func_2() -> Struct_1 {
    var var_0 = !select(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(false, false, true)), !vec2<bool>(true, func_3(Struct_1(-2056f), global1[_wgslsmith_index_u32(u_input.a.x, 24u)], Struct_3(Struct_1(global0.x), 211f))), select(vec2<bool>(false, true), vec2<bool>(true, true), true));
    let var_1 = global1[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(37908u, 1u)), 24u)];
    let var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(global0.x)));
    let var_3 = ~vec3<i32>(~(-1i), var_1.b.x, -10707i);
    let var_4 = select(firstLeadingBit(_wgslsmith_div_vec4_i32(-var_1.b | _wgslsmith_mult_vec4_i32(var_1.b, var_1.b), min(max(var_1.b, var_1.b), var_1.b))), max(-((vec4<i32>(var_1.c, -1i, 1i, -12957i) ^ vec4<i32>(-3495i, var_3.x, var_3.x, var_3.x)) ^ (var_1.b << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)))), -min(countOneBits(var_1.b), var_1.b)), false);
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -479f));
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_3 {
    var var_0 = func_2();
    let var_1 = 4294967295u;
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, -1106f, arg_0.x, arg_1))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 2525f, 1000f, arg_1)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1002f, 1000f, arg_2.a.a, arg_2.a.a)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -887f))) - vec4<f32>(arg_1, global0.x, global0.x, arg_1)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2.a.a, -587f, 2490f, _wgslsmith_f_op_f32(var_0.a + 256f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(420f, 265f, -295f, arg_0.x))))))));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1250f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1007f)), _wgslsmith_f_op_f32(-141f - var_0.a)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.a.a, -955f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), 1572f, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1146f) * _wgslsmith_f_op_f32(arg_1 - arg_0.x))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(-arg_1)))), -1568f, _wgslsmith_div_f32(-446f, 1178f), _wgslsmith_f_op_f32(arg_1 + arg_2.a.a)));
    let var_2 = arg_2.b.x;
    return Struct_3(func_2(), arg_0.x);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<i32>) -> vec2<i32> {
    var var_0 = all(select(vec3<bool>(any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), true)), select(true, true, true) == all(vec4<bool>(true, false, false, false)), all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)))), vec3<bool>(true, true, true), any(vec3<bool>(true, select(true, true, false), -100530i < arg_1.c))));
    var_0 = false;
    let var_1 = u_input.a.x;
    var var_2 = vec2<bool>(func_3(func_2(), Struct_2(func_1(vec2<f32>(566f, -347f), _wgslsmith_f_op_f32(-arg_1.a.a), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 1u), 24u)], vec4<i32>(-3342i, arg_2.x, -14031i, arg_1.b.x) >> (vec4<u32>(1u, var_1, u_input.a.x, 25158u) % vec4<u32>(32u))).a, ~abs(vec4<i32>(-35994i, 2147483647i, -2147483647i, arg_1.b.x)), abs(arg_2.x)), Struct_3(func_1(vec2<f32>(arg_0.a.a, global0.x), -334f, arg_1, vec4<i32>(-45437i, -17972i, 1i, arg_1.c) << (vec4<u32>(u_input.a.x, u_input.a.x, 52080u, u_input.a.x) % vec4<u32>(32u))).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.a + 1486f) + global0.x))), true);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1099f));
    return arg_2.zx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mult_vec2_i32(func_4(func_1(global0.xx, _wgslsmith_f_op_f32(-global0.x), Struct_2(Struct_1(global0.x), vec4<i32>(1i, 2147483647i, 43891i, 0i), -22945i), ~vec4<i32>(-1i, 0i, 6319i, 25794i)), Struct_2(func_1(vec2<f32>(1589f, -380f), -718f, global1[_wgslsmith_index_u32(0u, 24u)], vec4<i32>(-44720i, -2147483647i, 1i, 1i)).a, vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, 1i), vec3<i32>(-1i, -2147483647i, 6107i))), -select(vec3<i32>(2290i, -4334i, -17583i), vec3<i32>(0i, 2147483647i, -12069i), vec3<bool>(false, false, true))), -vec2<i32>(1i, 1i) ^ firstLeadingBit(vec2<i32>(1i, 2147483647i) >> (u_input.a.zx % vec2<u32>(32u))));
    var var_1 = vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(var_0.x, 38655i), _wgslsmith_clamp_i32(2509i, -min(-43218i, 544i), _wgslsmith_div_i32(_wgslsmith_sub_i32(var_0.x, 63612i), max(var_0.x, -78837i))), ~(~var_0.x | (var_0.x | 2147483647i))), var_0.x);
    var_0 = firstTrailingBit(~abs(~vec2<i32>(26081i, var_0.x)) ^ -_wgslsmith_mod_vec2_i32(~vec2<i32>(var_0.x, 2292i), vec2<i32>(var_0.x, var_1.x) & vec2<i32>(var_0.x, -16385i)));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, -1000f) * _wgslsmith_f_op_f32(-465f * _wgslsmith_f_op_f32(min(global0.x, global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -653f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1186f, -1358f, true)))))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - -115f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), global0.x, func_1(global0.xz, _wgslsmith_f_op_f32(step(-107f, -1962f)), global1[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 24u)], _wgslsmith_div_vec4_i32(vec4<i32>(-23699i, var_1.x, -1i, -4483i), vec4<i32>(25828i, var_0.x, var_0.x, 0i))).a.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 825f, global0.x, -1000f))) + vec4<f32>(785f, -419f, -232f, _wgslsmith_f_op_f32(exp2(global0.x)))))));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1039f)) - func_1(vec2<f32>(global0.x, global0.x), global0.x, global1[_wgslsmith_index_u32(1u, 24u)], reverseBits(vec4<i32>(18431i, -1i, 3744i, var_1.x))).a.a), -2360f, global0.x, func_2().a));
    let var_2 = !any(!select(vec2<bool>(true, true), vec2<bool>(true, false), true));
    let var_3 = global1[_wgslsmith_index_u32(~(~u_input.a.x), 24u)];
    var var_4 = vec4<i32>(-_wgslsmith_clamp_i32(~(-16839i) | var_1.x, _wgslsmith_add_i32(firstLeadingBit(var_1.x), var_3.c), -25384i), var_0.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(~0i, ~var_1.x, var_0.x, 20492i), vec4<i32>(59137i, abs(var_0.x), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(20812i, -62682i), vec2<i32>(1358i, var_0.x)), ~vec2<i32>(var_3.c, 1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -68121i, var_0.x, var_0.x) & var_3.b, var_3.b | var_3.b))), var_0.x);
    var_4 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_f_op_f32(ceil(var_3.a.a)), 2147483647i);
}

