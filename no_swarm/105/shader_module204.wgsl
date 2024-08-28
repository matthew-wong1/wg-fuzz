struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global1: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(Struct_2(90763u, 60421u, vec2<f32>(109f, 2317f), vec4<u32>(0u, 2755u, 8960u, 41398u))), Struct_3(Struct_2(62090u, 84560u, vec2<f32>(-986f, 147f), vec4<u32>(1u, 1u, 0u, 5074u))), Struct_3(Struct_2(1u, 95553u, vec2<f32>(400f, 1533f), vec4<u32>(1u, 15668u, 26648u, 20485u))), Struct_3(Struct_2(0u, 4294967295u, vec2<f32>(-1098f, -1129f), vec4<u32>(3216u, 49033u, 17926u, 1u))), Struct_3(Struct_2(0u, 21627u, vec2<f32>(-553f, 1363f), vec4<u32>(60061u, 0u, 6439u, 55555u))), Struct_3(Struct_2(1u, 0u, vec2<f32>(-1113f, -2877f), vec4<u32>(8565u, 4294967295u, 68360u, 0u))), Struct_3(Struct_2(4294967295u, 65205u, vec2<f32>(397f, 253f), vec4<u32>(1u, 4294967295u, 4294967295u, 39121u))), Struct_3(Struct_2(26472u, 4294967295u, vec2<f32>(542f, -350f), vec4<u32>(0u, 0u, 0u, 12868u))), Struct_3(Struct_2(1u, 8770u, vec2<f32>(-417f, 387f), vec4<u32>(20107u, 1u, 1u, 4294967295u))), Struct_3(Struct_2(4294967295u, 0u, vec2<f32>(452f, -3005f), vec4<u32>(1u, 40254u, 0u, 25901u))), Struct_3(Struct_2(55195u, 45198u, vec2<f32>(-675f, 112f), vec4<u32>(0u, 1u, 4294967295u, 34860u))), Struct_3(Struct_2(1u, 23255u, vec2<f32>(435f, -744f), vec4<u32>(1u, 2969u, 4294967295u, 69200u))), Struct_3(Struct_2(25389u, 4294967295u, vec2<f32>(-1337f, 1470f), vec4<u32>(0u, 1u, 0u, 4294967295u))), Struct_3(Struct_2(22902u, 23312u, vec2<f32>(1191f, 930f), vec4<u32>(4294967295u, 91671u, 1u, 0u))), Struct_3(Struct_2(47173u, 0u, vec2<f32>(-706f, -2201f), vec4<u32>(0u, 0u, 120133u, 4294967295u))), Struct_3(Struct_2(1u, 4294967295u, vec2<f32>(-785f, -581f), vec4<u32>(49337u, 110727u, 1u, 33694u))), Struct_3(Struct_2(0u, 1u, vec2<f32>(-1869f, -1764f), vec4<u32>(4294967295u, 63767u, 17697u, 104273u))), Struct_3(Struct_2(1u, 37826u, vec2<f32>(539f, -285f), vec4<u32>(4294967295u, 48847u, 1u, 25139u))), Struct_3(Struct_2(4294967295u, 4294967295u, vec2<f32>(714f, -233f), vec4<u32>(4294967295u, 4294967295u, 1u, 15449u))), Struct_3(Struct_2(31339u, 19798u, vec2<f32>(1368f, -662f), vec4<u32>(4294967295u, 4294967295u, 63935u, 7594u))), Struct_3(Struct_2(16737u, 23144u, vec2<f32>(1000f, -996f), vec4<u32>(1u, 55381u, 82054u, 4294967295u))));

var<private> global2: array<vec2<bool>, 31> = array<vec2<bool>, 31>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global3: vec4<i32> = vec4<i32>(-23493i, -1i, i32(-2147483648), 0i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> bool {
    var var_0 = Struct_4(Struct_1(1420f, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-155f, -178f))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.b));
    return select(!(!global0.x), select(any(select(!vec4<bool>(global0.x, global0.x, global0.x, false), !vec4<bool>(global0.x, global0.x, global0.x, false), !global0.x)), true, global0.x & (global3.x <= 14767i)), any(!select(vec4<bool>(false, global0.x, false, true), !vec4<bool>(global0.x, false, global0.x, global0.x), !vec4<bool>(global0.x, global0.x, true, false))));
}

fn func_3() -> vec4<bool> {
    var var_0 = _wgslsmith_mod_i32(-2147483647i, _wgslsmith_mod_i32(-_wgslsmith_mod_i32(0i, _wgslsmith_add_i32(u_input.b, global3.x)), 0i));
    global2 = array<vec2<bool>, 31>();
    var var_1 = vec3<bool>(true, !(!global0.x), true == func_2());
    let var_2 = Struct_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -595f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-267f, -2165f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-169f, 1543f))), false))));
    global0 = vec4<bool>(all(!vec4<bool>(!global0.x, true, global0.x, all(var_1.yy))), !(!(any(vec2<bool>(false, false)) && var_1.x)), any(vec4<bool>((var_2.a.b.x > 111f) || any(vec4<bool>(false, var_1.x, true, global0.x)), var_1.x && !var_1.x, !global0.x | false, _wgslsmith_f_op_f32(f32(-1f) * -318f) > var_2.a.b.x)), !((_wgslsmith_clamp_u32(u_input.e, u_input.d, u_input.d) <= u_input.d) || true));
    return !vec4<bool>(false, !var_1.x, true, !any(vec4<bool>(var_1.x, global0.x, true, true)));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: u32) -> Struct_5 {
    global1 = array<Struct_3, 21>();
    let var_0 = select(select(!(!(!vec4<bool>(true, false, arg_0, arg_0))), !vec4<bool>(true, all(vec2<bool>(global0.x, global0.x)), !global0.x, func_2()), !vec4<bool>(arg_0, false, all(global0.yyy), all(vec3<bool>(global0.x, global0.x, global0.x)))), func_3(), func_3());
    let var_1 = Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(0u), arg_1), firstTrailingBit(vec2<u32>(1u, _wgslsmith_mult_u32(13810u, 98710u)))), u_input.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(243f, -896f) + vec2<f32>(-1000f, -325f))))) + vec2<f32>(703f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -694f)))), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(abs(vec4<u32>(18981u, arg_2, 0u, u_input.d)) >> (vec4<u32>(arg_1, arg_2, u_input.d, u_input.e) % vec4<u32>(32u)), min(vec4<u32>(11732u, arg_1, arg_2, 20528u), firstLeadingBit(vec4<u32>(arg_1, 0u, arg_2, arg_1)))), ~reverseBits(vec4<u32>(13686u, arg_2, arg_1, 0u)) ^ (vec4<u32>(15191u, u_input.e, arg_1, arg_1) | max(vec4<u32>(0u, arg_2, arg_2, u_input.e), vec4<u32>(1u, 0u, 1u, arg_2)))));
    global2 = array<vec2<bool>, 31>();
    let var_2 = arg_0;
    return Struct_5(global1[_wgslsmith_index_u32(arg_2, 21u)], Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(984f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(930f)))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_1.c)))), Struct_3(Struct_2(arg_1, ~_wgslsmith_dot_vec4_u32(var_1.d, vec4<u32>(u_input.e, arg_1, 1u, 92484u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(236f, 798f) - var_1.c), countOneBits(var_1.d))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(global0.x, global0.x || any(!(!vec4<bool>(global0.x, false, global0.x, true))), global0.x, all(!vec2<bool>(true, all(global0.zy))));
    var var_0 = func_1(global0.x, _wgslsmith_div_u32(2729u, ~1u), 1u);
    let var_1 = Struct_2(~abs(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(firstTrailingBit(u_input.e), var_0.a.a.b), ~(~0u), var_0.a.a.d.x, u_input.e), var_0.c.a.d), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_0.c.a.c)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.a.c.x, var_0.b.b.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-128f * -2709f), 2083f) - _wgslsmith_f_op_vec2_f32(var_0.a.a.c - var_0.b.b)), global0.x)), vec4<u32>(var_0.a.a.a, var_0.c.a.d.x, u_input.d, var_0.a.a.a));
    var var_2 = -global3.xz;
    global0 = vec4<bool>(!all(select(global0.xxy, global0.zxy, true)), true, global0.x, global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.a.c.x, _wgslsmith_mult_vec4_i32(vec4<i32>(abs(0i), 61043i, 0i ^ var_2.x, _wgslsmith_dot_vec3_i32(global3.www, countOneBits(vec3<i32>(0i, -17846i, var_2.x)))), select(max(~vec4<i32>(u_input.c.x, 2147483647i, -1i, u_input.a), ~vec4<i32>(63963i, var_2.x, u_input.a, -24392i)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, u_input.a, global3.x, 2147483647i), vec4<i32>(var_2.x, u_input.a, u_input.c.x, u_input.a)), abs(1i), -var_2.x, -1i), any(vec3<bool>(false, global0.x, false)))), _wgslsmith_div_vec4_u32(firstTrailingBit(~vec4<u32>(var_1.a, var_1.d.x, 7689u, var_0.c.a.d.x)), var_1.d), var_0.a.a.d.ww);
}

