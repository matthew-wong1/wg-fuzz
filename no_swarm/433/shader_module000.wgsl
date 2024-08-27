struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
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

var<private> global0: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(-23427i, vec4<u32>(6998u, 48675u, 33754u, 10792u), Struct_1(6607i), vec4<u32>(0u, 4294967295u, 4294967295u, 1u)), Struct_2(-38934i, vec4<u32>(23112u, 6649u, 49034u, 41935u), Struct_1(28013i), vec4<u32>(0u, 10u, 67805u, 57455u)), Struct_2(23788i, vec4<u32>(1u, 0u, 70899u, 4294967295u), Struct_1(1i), vec4<u32>(1u, 1u, 39373u, 4294967295u)), Struct_2(28079i, vec4<u32>(12374u, 0u, 0u, 1u), Struct_1(8506i), vec4<u32>(1u, 83528u, 4294967295u, 9500u)), Struct_2(4657i, vec4<u32>(4294967295u, 7931u, 93705u, 14609u), Struct_1(-9886i), vec4<u32>(0u, 0u, 0u, 0u)), Struct_2(43180i, vec4<u32>(4294967295u, 0u, 4294967295u, 1u), Struct_1(16578i), vec4<u32>(44651u, 4294967295u, 4294967295u, 27963u)), Struct_2(i32(-2147483648), vec4<u32>(0u, 4294967295u, 71008u, 0u), Struct_1(2147483647i), vec4<u32>(114801u, 4294967295u, 8515u, 199u)), Struct_2(i32(-2147483648), vec4<u32>(1u, 21462u, 4294967295u, 95697u), Struct_1(1i), vec4<u32>(4294967295u, 1u, 16703u, 0u)), Struct_2(i32(-2147483648), vec4<u32>(37601u, 3385u, 2564u, 1u), Struct_1(i32(-2147483648)), vec4<u32>(62314u, 40661u, 30135u, 0u)), Struct_2(1i, vec4<u32>(50556u, 8046u, 1u, 25674u), Struct_1(2147483647i), vec4<u32>(1u, 83737u, 34846u, 54200u)), Struct_2(-15045i, vec4<u32>(27695u, 4294967295u, 4294967295u, 4294967295u), Struct_1(-20407i), vec4<u32>(0u, 12794u, 1u, 46799u)), Struct_2(-1i, vec4<u32>(12013u, 57149u, 46459u, 1u), Struct_1(1i), vec4<u32>(9974u, 82649u, 24816u, 32733u)), Struct_2(-12280i, vec4<u32>(29356u, 0u, 4294967295u, 11706u), Struct_1(-1532i), vec4<u32>(1u, 28875u, 154191u, 0u)), Struct_2(2147483647i, vec4<u32>(0u, 4294967295u, 5500u, 56839u), Struct_1(1i), vec4<u32>(4294967295u, 19076u, 1u, 45598u)), Struct_2(i32(-2147483648), vec4<u32>(0u, 0u, 4294967295u, 0u), Struct_1(-27259i), vec4<u32>(0u, 1u, 1u, 33996u)), Struct_2(0i, vec4<u32>(1u, 4294967295u, 16459u, 1u), Struct_1(2147483647i), vec4<u32>(0u, 4294967295u, 2005u, 4294967295u)), Struct_2(0i, vec4<u32>(1917u, 5254u, 63009u, 75134u), Struct_1(i32(-2147483648)), vec4<u32>(97432u, 11005u, 1u, 4292u)), Struct_2(-1i, vec4<u32>(1u, 28348u, 4294967295u, 4294967295u), Struct_1(-36590i), vec4<u32>(22802u, 54867u, 20313u, 0u)), Struct_2(-20716i, vec4<u32>(0u, 0u, 67288u, 0u), Struct_1(i32(-2147483648)), vec4<u32>(0u, 50153u, 1u, 1u)));

var<private> global1: array<Struct_1, 14>;

var<private> global2: array<vec3<f32>, 17> = array<vec3<f32>, 17>(vec3<f32>(-1000f, -171f, 1362f), vec3<f32>(314f, 1265f, -637f), vec3<f32>(324f, -624f, -2561f), vec3<f32>(709f, 2000f, -740f), vec3<f32>(-1086f, -295f, 1252f), vec3<f32>(387f, -686f, 668f), vec3<f32>(-756f, 1000f, 730f), vec3<f32>(1050f, 245f, -349f), vec3<f32>(-804f, -240f, -1000f), vec3<f32>(902f, -694f, -2457f), vec3<f32>(157f, 1031f, 1341f), vec3<f32>(490f, 107f, 1448f), vec3<f32>(178f, 1167f, 1032f), vec3<f32>(566f, -501f, 200f), vec3<f32>(-1000f, 1000f, 565f), vec3<f32>(-325f, 155f, 1000f), vec3<f32>(1361f, -1162f, 1545f));

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: bool) -> u32 {
    global0 = array<Struct_2, 19>();
    global3 = Struct_1(u_input.d);
    global3 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit((vec3<u32>(u_input.c, u_input.a.x, 0u) << (u_input.a.yww % vec3<u32>(32u))) | countOneBits(u_input.a.zxy)), u_input.a.zzy), ~u_input.a.x, ~(~_wgslsmith_mod_u32(u_input.a.x << (45605u % 32u), 165055u))), 14u)];
    global2 = array<vec3<f32>, 17>();
    let var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(0i, -1i), u_input.d), global3.a), -abs(_wgslsmith_div_vec2_i32(select(vec2<i32>(2147483647i, u_input.b), vec2<i32>(u_input.d, u_input.d), true), vec2<i32>(1i, global3.a) ^ vec2<i32>(u_input.b, 0i))));
    return _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(firstLeadingBit(u_input.a), ~select(vec4<u32>(45291u, 31668u, u_input.c, u_input.a.x), vec4<u32>(4294967295u, 0u, 41069u, u_input.c), vec4<bool>(false, arg_1, arg_1, arg_1))), u_input.a.x);
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: vec3<i32>) -> vec4<bool> {
    global3 = global1[_wgslsmith_index_u32(~func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(12142u, 17u)] + vec3<f32>(-1411f, arg_0.x, arg_0.x))), true), 14u)];
    let var_0 = ~u_input.a.x;
    var var_1 = -(vec2<i32>(-1i) * -reverseBits(min(arg_2.yz, vec2<i32>(arg_2.x, -14366i))));
    let var_2 = Struct_3(global1[_wgslsmith_index_u32(max(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-805f, -702f, arg_0.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, arg_0.x) - global2[_wgslsmith_index_u32(u_input.c, 17u)])), all(vec3<bool>(true, true, true))), var_0), 14u)], vec4<u32>(~_wgslsmith_sub_u32(_wgslsmith_add_u32(46395u, 20063u), 36830u), ~37001u, ~(~(~0u)), reverseBits(u_input.a.x)), false);
    var var_3 = vec4<bool>(any(!vec3<bool>(!var_2.c, true, !var_2.c)), false, any(select(select(!vec4<bool>(true, var_2.c, var_2.c, false), !vec4<bool>(var_2.c, var_2.c, false, var_2.c), select(vec4<bool>(true, var_2.c, var_2.c, true), vec4<bool>(var_2.c, var_2.c, var_2.c, var_2.c), false)), !(!vec4<bool>(false, var_2.c, var_2.c, var_2.c)), !(!vec4<bool>(var_2.c, true, true, var_2.c)))), any(vec4<bool>(!(!var_2.c), true, select(all(vec3<bool>(var_2.c, true, true)), all(vec3<bool>(false, false, var_2.c)), false), var_2.c)));
    return vec4<bool>(false, false, 4294967295u >= var_0, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1024f + arg_0.x) + _wgslsmith_f_op_f32(arg_0.x - arg_0.x))) == arg_0.x);
}

fn func_1(arg_0: vec3<u32>) -> vec3<bool> {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x | ~arg_0.x, 0u), 19u)];
    let var_1 = select(!(!vec4<bool>(true, 17618u >= var_0.d.x, true, true)), !vec4<bool>(!(arg_0.x > 18426u), true, true, all(func_2(global2[_wgslsmith_index_u32(12530u, 17u)], var_0.a, vec3<i32>(18732i, -2147483647i, global3.a)))), any(select(vec4<bool>(-2147483647i == global3.a, true, select(false, false, false), true), vec4<bool>(true, func_2(vec3<f32>(-341f, 786f, 471f), 6989i, vec3<i32>(-69396i, -50244i, global3.a)).x, true, true), func_2(global2[_wgslsmith_index_u32(0u, 17u)], -12326i, vec3<i32>(var_0.c.a, 16489i, global3.a)).x)));
    var var_2 = Struct_4(vec3<bool>(!(var_1.x || var_1.x), true, !var_1.x), Struct_1(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 1i, -13062i, u_input.b), max(vec4<i32>(1i, 0i, 1i, -22031i), vec4<i32>(global3.a, u_input.d, 2147483647i, var_0.a))), 9720i, ~(~(-1i)))), !var_1.zz, ~var_0.b.zzx);
    let var_3 = var_0.a;
    let var_4 = Struct_1(53020i);
    return vec3<bool>(!any(!vec4<bool>(false, var_1.x, var_1.x, true)), select(var_2.a.x, !(!all(var_1)), false), var_2.a.x);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec2<bool>) -> StorageBuffer {
    let var_0 = _wgslsmith_mult_vec2_u32(arg_1.d.xx, min(select(abs(vec2<u32>(4294967295u, 4294967295u) | arg_1.d.xy), arg_0.d.xz, arg_2.x), ~u_input.a.wz));
    let var_1 = vec4<i32>(u_input.d, abs(~u_input.d), reverseBits(1i ^ -(arg_1.b.a ^ -2147483647i)), arg_0.b.a);
    global2 = array<vec3<f32>, 17>();
    var var_2 = arg_0;
    global1 = array<Struct_1, 14>();
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-721f, 2484f)), -212f, -1000f, -1000f) * vec4<f32>(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(-1759f + 1576f), -689f, -1598f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    let var_1 = global1[_wgslsmith_index_u32(~(~var_0), 14u)];
    let var_2 = abs(u_input.a.x);
    global1 = array<Struct_1, 14>();
    var var_3 = true;
    var_3 = !(_wgslsmith_f_op_f32(round(-1097f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-657f, 1000f)))));
    var var_4 = select(~(-(~(vec2<i32>(-1i, global3.a) & vec2<i32>(global3.a, 0i)))), vec2<i32>(var_1.a, _wgslsmith_div_i32(1i, ~(-global3.a))), false);
    let var_5 = countOneBits(u_input.d);
    let x = u_input.a;
    s_output = func_4(Struct_4(func_1(u_input.a.wxx), Struct_1(_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.d, u_input.d), 2147483647i)), vec2<bool>(any(func_1(vec3<u32>(var_2, var_2, 1729u))), true), u_input.a.xzy), Struct_4(func_2(_wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(1u, 17u)] - _wgslsmith_f_op_vec3_f32(-vec3<f32>(730f, 1000f, -1462f))), max(62687i, global3.a), max(~vec3<i32>(-2147483647i, 1i, var_5), vec3<i32>(33178i, -2147483647i, -2147483647i))).zzw, global1[_wgslsmith_index_u32(0u, 14u)], vec2<bool>(true, -1i != abs(global3.a)), vec3<u32>(_wgslsmith_div_u32(4294967295u, var_2) & u_input.c, 1u, _wgslsmith_add_u32(max(u_input.c, 1u), _wgslsmith_mult_u32(1u, u_input.c)))), vec2<bool>(all(select(func_1(u_input.a.xwz), func_1(u_input.a.zzx), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true))), true));
}

