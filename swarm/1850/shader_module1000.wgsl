struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17> = array<bool, 17>(true, false, true, true, false, true, true, true, true, true, true, true, true, false, false, false, true);

var<private> global1: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(vec4<i32>(-1i, -33617i, -7295i, 0i), Struct_1(2157f), Struct_1(962f)), Struct_4(vec4<i32>(2147483647i, 0i, -20485i, -63083i), Struct_1(-1207f), Struct_1(1000f)), Struct_4(vec4<i32>(-7372i, 1981i, -1i, 2147483647i), Struct_1(-225f), Struct_1(-1010f)), Struct_4(vec4<i32>(-54617i, 1i, 4344i, 2147483647i), Struct_1(-1613f), Struct_1(296f)), Struct_4(vec4<i32>(25628i, -51081i, i32(-2147483648), 2147483647i), Struct_1(-311f), Struct_1(1379f)), Struct_4(vec4<i32>(i32(-2147483648), -22847i, 0i, 49938i), Struct_1(1639f), Struct_1(739f)), Struct_4(vec4<i32>(24717i, 0i, 0i, -35605i), Struct_1(1746f), Struct_1(1720f)), Struct_4(vec4<i32>(-10068i, 0i, 5350i, -15057i), Struct_1(-624f), Struct_1(1341f)), Struct_4(vec4<i32>(-1i, 26922i, -63669i, 6609i), Struct_1(672f), Struct_1(-430f)), Struct_4(vec4<i32>(0i, -21987i, 0i, -24172i), Struct_1(100f), Struct_1(-195f)), Struct_4(vec4<i32>(2147483647i, 2147483647i, 0i, 0i), Struct_1(-1313f), Struct_1(782f)), Struct_4(vec4<i32>(-1i, 0i, 2147483647i, -34511i), Struct_1(-622f), Struct_1(1000f)), Struct_4(vec4<i32>(3236i, -13366i, -8318i, 22454i), Struct_1(1302f), Struct_1(-784f)), Struct_4(vec4<i32>(i32(-2147483648), 1i, 1i, 0i), Struct_1(448f), Struct_1(838f)), Struct_4(vec4<i32>(-1i, -1i, -25384i, -1i), Struct_1(-1496f), Struct_1(383f)), Struct_4(vec4<i32>(0i, 1i, 5677i, -1i), Struct_1(-1000f), Struct_1(-280f)), Struct_4(vec4<i32>(-206i, 5710i, i32(-2147483648), -9674i), Struct_1(-1129f), Struct_1(-1463f)), Struct_4(vec4<i32>(i32(-2147483648), 61319i, -1i, i32(-2147483648)), Struct_1(289f), Struct_1(-1029f)), Struct_4(vec4<i32>(-14912i, -1i, 0i, 0i), Struct_1(1334f), Struct_1(-683f)), Struct_4(vec4<i32>(i32(-2147483648), -19486i, -27501i, -15861i), Struct_1(2495f), Struct_1(1537f)), Struct_4(vec4<i32>(0i, 1i, 2147483647i, 37073i), Struct_1(973f), Struct_1(-1333f)), Struct_4(vec4<i32>(0i, 45252i, 83009i, -28592i), Struct_1(499f), Struct_1(-274f)), Struct_4(vec4<i32>(-52196i, i32(-2147483648), -23958i, 2147483647i), Struct_1(1000f), Struct_1(-361f)), Struct_4(vec4<i32>(0i, 2147483647i, -58827i, 11204i), Struct_1(-1677f), Struct_1(1148f)));

var<private> global2: array<Struct_3, 25>;

var<private> global3: Struct_1 = Struct_1(234f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> u32 {
    let var_0 = select(!select(select(vec4<bool>(global0[_wgslsmith_index_u32(18540u, 17u)], true, false, global0[_wgslsmith_index_u32(u_input.c, 17u)]), vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(1u, 17u)]), !vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a.x, 17u)], false)), !select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(23576u, 17u)]), vec4<bool>(false, false, global0[_wgslsmith_index_u32(30956u, 17u)], global0[_wgslsmith_index_u32(u_input.c, 17u)]), true), 1u > ~u_input.a.x), select(!(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 17u)], true, false, global0[_wgslsmith_index_u32(1u, 17u)])), vec4<bool>(true, global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, 3051u, 4294967295u), vec4<u32>(80249u, u_input.c, 4294967295u, u_input.a.x)), 17u)], any(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 17u)], global0[_wgslsmith_index_u32(u_input.c, 17u)], false), vec3<bool>(false, global0[_wgslsmith_index_u32(30982u, 17u)], global0[_wgslsmith_index_u32(53594u, 17u)]), vec3<bool>(global0[_wgslsmith_index_u32(18083u, 17u)], true, false))), false | global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), !(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 17u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)]))), select(global0[_wgslsmith_index_u32(25724u, 17u)], false, all(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 17u)], global0[_wgslsmith_index_u32(u_input.c, 17u)])) || !global0[_wgslsmith_index_u32(1u, 17u)]));
    let var_1 = !vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(81573u, u_input.c), 17u)] && !all(var_0), false);
    var var_2 = Struct_3(Struct_1(global3.a), 4294967295u);
    let var_3 = firstLeadingBit(11437i);
    global1 = array<Struct_4, 24>();
    return 37802u;
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec2<u32>) -> vec3<bool> {
    var var_0 = Struct_4(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2147483647i, 2147483647i), vec3<i32>(u_input.b, u_input.b, u_input.b)), 0i) >> (arg_1.b % 32u), 20488i, _wgslsmith_sub_i32(u_input.b, ~1i), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, u_input.b, u_input.b), vec3<i32>(0i, 0i, u_input.b)), u_input.b)), arg_1.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(918f, arg_1.a.a)) * -1377f))));
    var_0 = global1[_wgslsmith_index_u32(4294967295u, 24u)];
    let var_1 = all(select(select(select(vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 17u)], false), true), vec2<bool>(global0[_wgslsmith_index_u32(~1u, 17u)], select(global0[_wgslsmith_index_u32(1u, 17u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 17u)])), false), vec2<bool>(!(false | global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), (u_input.b >= 2022i) || global0[_wgslsmith_index_u32(arg_2.x, 17u)]), true));
    var var_2 = var_0.a.xzz;
    let var_3 = Struct_2(any(select(!vec3<bool>(global0[_wgslsmith_index_u32(arg_2.x, 17u)], var_1, var_1), vec3<bool>(true, true, true), select(!vec3<bool>(false, true, var_1), !vec3<bool>(global0[_wgslsmith_index_u32(arg_1.b, 17u)], true, var_1), true))), Struct_1(_wgslsmith_f_op_f32(arg_0 + -362f)), var_0.b, var_0.c, -_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(19787i, -2147483647i), var_2.xy & vec2<i32>(var_2.x, 2147483647i), var_2.xz), var_0.a.zy, vec2<i32>(-82924i, i32(-1i) * -20161i)));
    return select(!(!(!select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 17u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)], true), false))), !vec3<bool>(false, !select(var_1, false, global0[_wgslsmith_index_u32(arg_2.x, 17u)]), global0[_wgslsmith_index_u32(abs(~arg_1.b), 17u)]), false);
}

fn func_2(arg_0: bool, arg_1: u32) -> vec3<bool> {
    return func_4(1001f, Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(298f)) + _wgslsmith_f_op_f32(select(693f, 214f, false)))), u_input.a.x | func_3()), ~(vec2<u32>(88369u, 77776u) ^ ~(~vec2<u32>(48680u, u_input.c))));
}

fn func_1() -> f32 {
    global1 = array<Struct_4, 24>();
    var var_0 = min(vec3<u32>((u_input.c << (u_input.c % 32u)) | (5217u | u_input.c), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.a.yz) >> (u_input.a.x % 32u), 1u) | ((firstLeadingBit(vec3<u32>(20130u, 16738u, 0u)) ^ ~vec3<u32>(u_input.c, u_input.a.x, u_input.c)) << (u_input.a % vec3<u32>(32u))), u_input.a);
    var var_1 = Struct_2(all(select(select(vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 17u)], global0[_wgslsmith_index_u32(var_0.x, 17u)]), select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.c, 17u)]), vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.c, 17u)]), vec3<bool>(false, false, false)), global0[_wgslsmith_index_u32(~u_input.c, 17u)]), func_2(false, ~u_input.c), vec3<bool>(true, true, select(global0[_wgslsmith_index_u32(0u, 17u)], false, global0[_wgslsmith_index_u32(0u, 17u)])))), Struct_1(-334f), Struct_1(324f), Struct_1(-508f), abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(u_input.b, u_input.b), vec2<i32>(2147483647i, u_input.b)) | max(~vec2<i32>(-1i, 461i), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(40932i, u_input.b)))));
    global3 = var_1.b;
    let var_2 = var_1.c;
    return _wgslsmith_f_op_f32(global3.a * var_1.d.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-327f, -1000f, -104f, 437f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a, global3.a, _wgslsmith_f_op_f32(global3.a * 207f), global3.a))) + vec4<f32>(global3.a, _wgslsmith_f_op_f32(func_1()), global3.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1114f * -1160f))))));
    let var_1 = Struct_2(any(vec2<bool>(global0[_wgslsmith_index_u32(~(~68352u), 17u)], func_4(416f, global2[_wgslsmith_index_u32(1u | u_input.a.x, 25u)], vec2<u32>(u_input.a.x, 4294967295u)).x)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-155f, _wgslsmith_f_op_f32(f32(-1f) * -173f))))), Struct_1(-1000f), Struct_1(625f), vec2<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(0i, u_input.b)), 2147483647i) & _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(8509i, u_input.b)) ^ -vec2<i32>(1i, u_input.b), _wgslsmith_mod_vec2_i32(abs(vec2<i32>(3236i, 0i)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-2147483647i, u_input.b)))));
    let var_2 = select(~vec4<i32>(u_input.b, var_1.e.x, _wgslsmith_mod_i32(-5784i, min(-13970i, u_input.b)), 16105i), select(firstTrailingBit(-vec4<i32>(1i, u_input.b, u_input.b, 2147483647i)) ^ vec4<i32>(var_1.e.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, var_1.e.x), vec2<i32>(u_input.b, var_1.e.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(-66287i, -2147483647i), var_1.e), u_input.b), _wgslsmith_mult_vec4_i32(firstLeadingBit(-vec4<i32>(var_1.e.x, -2147483647i, -1300i, 2147483647i)), countOneBits(-vec4<i32>(-29730i, u_input.b, -5329i, -21670i))), !(!(!vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 17u)], global0[_wgslsmith_index_u32(10308u, 17u)], true)))), vec4<bool>(var_1.a, (-1590f <= _wgslsmith_f_op_f32(-var_1.d.a)) || true, false, _wgslsmith_clamp_i32(~2147483647i, _wgslsmith_sub_i32(2147483647i, u_input.b), min(var_1.e.x, 1i)) >= 1i));
    let var_3 = var_1;
    var var_4 = Struct_4(vec4<i32>(countOneBits(3389i), -firstTrailingBit(~var_2.x), var_2.x, var_1.e.x), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(784f)) - _wgslsmith_f_op_f32(func_1()))), Struct_1(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_3.c.a, var_1.b.a)) - -840f)))));
    let var_5 = Struct_3(var_3.c, func_3());
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(0u), 1132u, var_3.d.a);
}

