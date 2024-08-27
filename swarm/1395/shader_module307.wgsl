struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30>;

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(23260i, vec3<f32>(441f, 1552f, -453f), vec3<f32>(-196f, -380f, 580f), 0u, vec4<i32>(-3522i, -38071i, -1i, -27844i)), Struct_1(2147483647i, vec3<f32>(679f, 1185f, 142f), vec3<f32>(-1270f, 1328f, 932f), 67536u, vec4<i32>(2147483647i, 1i, 2147483647i, 39297i)), Struct_1(-23562i, vec3<f32>(1000f, -1000f, -906f), vec3<f32>(-677f, -571f, 301f), 4294967295u, vec4<i32>(46365i, 0i, -47382i, 0i)), Struct_1(-2107i, vec3<f32>(-854f, 458f, -893f), vec3<f32>(399f, 1720f, 1223f), 4294967295u, vec4<i32>(-21688i, 1i, -1i, 1i)), Struct_1(1i, vec3<f32>(1432f, -365f, 1206f), vec3<f32>(-1802f, 738f, -280f), 28026u, vec4<i32>(0i, -4140i, 0i, 0i)), Struct_1(0i, vec3<f32>(-1000f, -1237f, 1128f), vec3<f32>(-322f, -2109f, 113f), 35423u, vec4<i32>(1i, i32(-2147483648), 1i, 1i)), Struct_1(63471i, vec3<f32>(-1051f, -1159f, -171f), vec3<f32>(1000f, 657f, 585f), 0u, vec4<i32>(6019i, -36503i, 4457i, 30369i)), Struct_1(-1i, vec3<f32>(267f, -2399f, -393f), vec3<f32>(848f, 1000f, -727f), 24219u, vec4<i32>(2638i, 2147483647i, 1962i, 1i)), Struct_1(-18429i, vec3<f32>(-327f, 1354f, -1789f), vec3<f32>(-457f, -764f, -779f), 0u, vec4<i32>(-23886i, -21778i, 52413i, 68123i)), Struct_1(14224i, vec3<f32>(-418f, -2040f, 3019f), vec3<f32>(-1094f, 1000f, -145f), 30209u, vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 32182i)), Struct_1(1i, vec3<f32>(-2818f, 844f, -1000f), vec3<f32>(1108f, 558f, 413f), 46000u, vec4<i32>(i32(-2147483648), 2147483647i, 1i, -20773i)), Struct_1(22896i, vec3<f32>(-175f, -816f, -604f), vec3<f32>(1049f, 934f, 124f), 1u, vec4<i32>(51745i, i32(-2147483648), -1i, i32(-2147483648))), Struct_1(-55235i, vec3<f32>(-2076f, 965f, -1343f), vec3<f32>(-1000f, 557f, 498f), 42546u, vec4<i32>(14126i, 22489i, 1i, -39504i)), Struct_1(i32(-2147483648), vec3<f32>(2969f, 253f, -337f), vec3<f32>(994f, -974f, -439f), 52456u, vec4<i32>(2147483647i, 24271i, 0i, -1235i)), Struct_1(2147483647i, vec3<f32>(1000f, -130f, -817f), vec3<f32>(-1000f, 558f, -837f), 0u, vec4<i32>(0i, i32(-2147483648), i32(-2147483648), 30601i)), Struct_1(i32(-2147483648), vec3<f32>(-420f, 898f, -379f), vec3<f32>(1446f, 1000f, -1017f), 92512u, vec4<i32>(2147483647i, -11353i, 0i, 2147483647i)), Struct_1(1i, vec3<f32>(1435f, 2131f, -587f), vec3<f32>(1117f, -1000f, -281f), 1u, vec4<i32>(-55791i, i32(-2147483648), 2147483647i, 16317i)), Struct_1(0i, vec3<f32>(-1172f, 1755f, 362f), vec3<f32>(-302f, 272f, 1436f), 51291u, vec4<i32>(-23336i, 2147483647i, 2147483647i, 12828i)), Struct_1(i32(-2147483648), vec3<f32>(1000f, 116f, -1000f), vec3<f32>(852f, 1424f, -302f), 0u, vec4<i32>(28297i, -76255i, 2147483647i, 1i)), Struct_1(-17524i, vec3<f32>(-1306f, 820f, -525f), vec3<f32>(-771f, 1512f, -862f), 22518u, vec4<i32>(-23410i, 1i, 1i, -45626i)), Struct_1(10233i, vec3<f32>(301f, 1379f, 172f), vec3<f32>(-1108f, -398f, -351f), 6705u, vec4<i32>(6434i, 0i, -1i, 31954i)), Struct_1(14388i, vec3<f32>(1464f, -510f, 130f), vec3<f32>(-487f, 1000f, -524f), 1u, vec4<i32>(-46011i, -1i, -1i, 0i)), Struct_1(26052i, vec3<f32>(360f, -1000f, 668f), vec3<f32>(1000f, 611f, -454f), 1u, vec4<i32>(16742i, i32(-2147483648), -15888i, -40219i)), Struct_1(-12360i, vec3<f32>(1131f, -993f, 975f), vec3<f32>(1368f, -392f, -1064f), 0u, vec4<i32>(-55962i, 1i, -18252i, -1i)), Struct_1(-1i, vec3<f32>(-1000f, 1655f, 138f), vec3<f32>(-1315f, -612f, -461f), 1u, vec4<i32>(-7748i, -46661i, 40655i, 3209i)), Struct_1(1i, vec3<f32>(150f, 1000f, 1535f), vec3<f32>(-118f, -1000f, -411f), 4294967295u, vec4<i32>(-11028i, 2147483647i, 33941i, -1i)));

var<private> global2: vec4<u32> = vec4<u32>(4294967295u, 26162u, 42615u, 134182u);

var<private> global3: Struct_1;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> Struct_1 {
    return global1[_wgslsmith_index_u32(u_input.d.x, 26u)];
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: bool) -> vec3<f32> {
    let var_0 = _wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(select(vec3<u32>(38426u, 0u, global3.d), global2.zzw, select(vec3<bool>(arg_2, true, true), vec3<bool>(true, arg_1, false), arg_2)), countOneBits(vec3<u32>(0u, 4294967295u, u_input.d.x) ^ global2.ywz)), global2.x);
    var var_1 = false;
    global3 = func_1();
    var var_2 = global3.c.yz;
    global0 = array<i32, 30>();
    return global3.c;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec4<bool>) -> u32 {
    global3 = Struct_1(global3.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(arg_2.b + global3.b))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global3.b.x, arg_2.b.x, global3.c.x)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_mult_vec3_i32(-global3.e.wwx, vec3<i32>(-6142i, 0i, global0[_wgslsmith_index_u32(global3.d, 30u)])), false, arg_1.x & all(vec3<bool>(arg_1.x, true, arg_3.x)))) + _wgslsmith_f_op_vec3_f32(trunc(global3.b))), u_input.a, vec4<i32>(-1i) * -select(arg_2.e, _wgslsmith_add_vec4_i32(vec4<i32>(global3.e.x, -5414i, 2147483647i, -2147483647i), vec4<i32>(global3.a, -2147483647i, -3921i, 16061i)), any(vec4<bool>(arg_3.x, false, arg_3.x, false))));
    global3 = Struct_1(global3.e.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.b + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global3.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b.x, arg_2.b.x, 1000f) - arg_2.b))) * vec3<f32>(_wgslsmith_f_op_f32(min(-1600f, global3.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-504f + 865f)), _wgslsmith_f_op_f32(arg_2.b.x - _wgslsmith_f_op_f32(arg_2.c.x + arg_2.b.x)))), vec3<f32>(464f, func_1().c.x, arg_2.b.x), abs(68780u), _wgslsmith_mod_vec4_i32(-arg_2.e, abs(firstLeadingBit(reverseBits(global3.e)))));
    var var_0 = select(select(vec3<bool>(false, false, any(select(vec4<bool>(arg_1.x, false, true, arg_3.x), arg_3, vec4<bool>(false, false, arg_3.x, true)))), arg_3.yxy, arg_3.yxx), vec3<bool>(select(arg_3.x, !all(vec4<bool>(arg_1.x, true, true, true)), !(u_input.c < -20635i)), any(select(!arg_3, !vec4<bool>(false, arg_3.x, arg_1.x, false), select(arg_3, vec4<bool>(arg_1.x, false, arg_1.x, true), vec4<bool>(false, false, false, arg_1.x)))), !(!arg_1.x)), true);
    let var_1 = _wgslsmith_clamp_u32(1735u, 1u, _wgslsmith_mod_u32(0u, 90088u));
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(reverseBits(arg_2.d), arg_2.d, global3.d), 26u)];
    return _wgslsmith_dot_vec3_u32(~global2.yyz, select(countOneBits(vec3<u32>(24483u, arg_2.d, 26638u)) | global2.zyw, global2.xzy, _wgslsmith_div_f32(global3.c.x, var_2.b.x) != global3.b.x)) | 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global2 = ~_wgslsmith_mult_vec4_u32(~vec4<u32>(firstLeadingBit(18236u), global2.x, ~u_input.d.x, ~var_0.d), vec4<u32>(var_0.d, ~u_input.d.x, 87426u, countOneBits(func_2(global2.wz, vec2<bool>(true, false), global1[_wgslsmith_index_u32(global2.x, 26u)], vec4<bool>(false, false, false, false)))));
    var var_1 = func_1();
    let var_2 = _wgslsmith_add_u32(~1u, ~global2.x);
    let x = u_input.a;
    s_output = StorageBuffer(1u, -33964i, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.c.x, var_0.c.x, var_0.b.x, global3.c.x) + vec4<f32>(var_0.b.x, -1634f, -165f, var_0.b.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, -1000f, -529f, -302f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.b.x, 857f, 650f, 397f))))))));
}

