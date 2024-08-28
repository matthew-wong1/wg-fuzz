struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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

var<private> global0: Struct_1;

var<private> global1: vec3<bool>;

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec2<i32>(i32(-2147483648), 46610i), 867f, 0i, 14411i), Struct_1(vec2<i32>(-12465i, -13994i), -415f, i32(-2147483648), -13130i), Struct_1(vec2<i32>(-1i, 2147483647i), 1629f, 2147483647i, 0i), Struct_1(vec2<i32>(-42595i, 16279i), -1000f, 2147483647i, 0i), Struct_1(vec2<i32>(-1i, -38758i), -549f, 27838i, 5411i), Struct_1(vec2<i32>(43419i, 1i), 290f, 0i, 0i), Struct_1(vec2<i32>(20955i, i32(-2147483648)), 864f, 1i, -1i), Struct_1(vec2<i32>(1303i, 1i), 224f, 1i, 2147483647i), Struct_1(vec2<i32>(1918i, 14136i), -1689f, 3284i, -5026i), Struct_1(vec2<i32>(2147483647i, -30575i), -891f, i32(-2147483648), 10560i), Struct_1(vec2<i32>(-12480i, 1918i), -242f, -40044i, 2147483647i), Struct_1(vec2<i32>(-1i, 0i), 757f, 1i, 0i), Struct_1(vec2<i32>(20195i, 1i), -1000f, 68594i, -4114i), Struct_1(vec2<i32>(20703i, 2147483647i), -1133f, 2147483647i, -36537i), Struct_1(vec2<i32>(0i, i32(-2147483648)), -638f, -1i, 2147483647i), Struct_1(vec2<i32>(i32(-2147483648), 1560i), 1385f, -1685i, 1i), Struct_1(vec2<i32>(0i, -1i), 707f, -1i, 14408i), Struct_1(vec2<i32>(i32(-2147483648), -80099i), -732f, -19003i, 2147483647i), Struct_1(vec2<i32>(8991i, i32(-2147483648)), 1649f, 1i, -1i), Struct_1(vec2<i32>(28737i, -22561i), -840f, 13622i, i32(-2147483648)), Struct_1(vec2<i32>(1i, 0i), -613f, 27602i, 3849i));

var<private> global3: f32 = 871f;

var<private> global4: array<f32, 6> = array<f32, 6>(1666f, 686f, 817f, -1118f, 1503f, -1088f);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32) -> vec3<i32> {
    global0 = global2[_wgslsmith_index_u32(u_input.a, 21u)];
    let var_0 = Struct_1(arg_0.xw, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))))), global0.c, u_input.c);
    var var_1 = Struct_2(var_0, 37522u, u_input.a <= u_input.d);
    var_1 = Struct_2(var_0, ~(~_wgslsmith_dot_vec2_u32(min(vec2<u32>(var_1.b, 0u), vec2<u32>(20300u, 4294967295u)), ~vec2<u32>(u_input.d, 4294967295u))), !(arg_1 != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.b + -1000f))));
    let var_2 = _wgslsmith_mod_vec4_u32(max(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(23319u, 4294967295u, var_1.b), vec3<u32>(var_1.b, 1u, u_input.d)) >> (~u_input.a % 32u), _wgslsmith_mult_u32(1u, 81120u), _wgslsmith_mod_u32(~u_input.a, 15880u), ~firstTrailingBit(73561u)), ~firstTrailingBit(~vec4<u32>(u_input.a, u_input.d, u_input.a, 29617u))), max(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 1u, var_1.b, 0u), vec4<u32>(u_input.d, var_1.b, u_input.d, u_input.a)), ~(~vec4<u32>(var_1.b, 25706u, u_input.a, var_1.b)) & ((vec4<u32>(var_1.b, 30720u, u_input.d, var_1.b) << (vec4<u32>(4294967295u, 4294967295u, u_input.a, var_1.b) % vec4<u32>(32u))) & ~vec4<u32>(38450u, 1u, 10004u, 25388u))));
    return _wgslsmith_div_vec3_i32(arg_0.yyw, -arg_0.zxy);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec4<u32>) -> bool {
    let var_0 = ~_wgslsmith_mod_vec3_i32(func_3(_wgslsmith_div_vec4_i32(vec4<i32>(43544i, arg_0.x, arg_2.x, -2583i), vec4<i32>(3145i, 36098i, -2147483647i, global0.a.x)), _wgslsmith_div_f32(1402f, 680f)) | select(-arg_2, countOneBits(vec3<i32>(arg_1.a.x, 0i, arg_0.x)), vec3<bool>(global1.x, global1.x, false)), -vec3<i32>(-2147483647i, -2147483647i, arg_1.d));
    var var_1 = global0.b;
    var var_2 = Struct_2(Struct_1(select(vec2<i32>(2147483647i, -2147483647i), _wgslsmith_sub_vec2_i32(arg_0, arg_2.xx), u_input.a < 4294967295u) << (_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(7436u, 4294967295u), arg_3.xz), arg_3.ww) % vec2<u32>(32u)), global0.b, 2147483647i, var_0.x), u_input.d >> (4294967295u % 32u), true);
    var var_3 = vec4<u32>(var_2.b, ~u_input.d, _wgslsmith_sub_u32(1u ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 31262u, 4294967295u, u_input.a), vec4<u32>(5584u, 25882u, 1u, var_2.b)), ~var_2.b), 0u);
    var var_4 = Struct_1(var_0.zx, _wgslsmith_f_op_f32(sign(global0.b)), ~abs(_wgslsmith_mod_i32(countOneBits(-22643i), arg_1.d << (43975u % 32u))), -19838i);
    return !var_2.c;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    global0 = arg_2.a;
    let var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, 995f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-134f, _wgslsmith_div_f32(arg_1.a.b, _wgslsmith_f_op_f32(f32(-1f) * -1891f)))))));
    let var_2 = _wgslsmith_f_op_f32(1363f + _wgslsmith_f_op_f32(select(703f, _wgslsmith_div_f32(var_0.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1307f * -198f))), all(vec3<bool>(arg_2.c, any(vec2<bool>(arg_2.c, arg_1.c)), true)))));
    var var_3 = -var_0.a.a.x;
    return Struct_1(-vec2<i32>(_wgslsmith_clamp_i32(var_0.a.d >> (0u % 32u), -1i, -8573i), _wgslsmith_add_i32(firstTrailingBit(global0.d), _wgslsmith_add_i32(arg_3.d, 4277i))), arg_1.a.b, var_0.a.d, _wgslsmith_mod_i32(-1i, _wgslsmith_add_i32(arg_2.a.d, arg_3.a.x)));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    global2 = array<Struct_1, 21>();
    global0 = Struct_1(firstTrailingBit(-global0.a), arg_0.a.b, global0.d, ~arg_0.a.c);
    global0 = Struct_1(countOneBits(~global0.a | max(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(39778i, u_input.b))) ^ min(arg_0.a.a, global0.a), _wgslsmith_f_op_f32(-663f - global0.b), ~2147483647i, u_input.b);
    let var_0 = Struct_2(func_4(func_2(_wgslsmith_mult_vec2_i32(global0.a, vec2<i32>(global0.c, 0i)), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~arg_0.b, u_input.a), 21u)], firstTrailingBit(vec3<i32>(u_input.c, arg_0.a.c, 16335i)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, u_input.a, arg_0.b, u_input.a), vec4<u32>(u_input.a, 4213u, u_input.a, arg_0.b))), arg_0, arg_0, global2[_wgslsmith_index_u32(abs(~reverseBits(65943u)), 21u)]), arg_0.b, global1.x);
    global4 = array<f32, 6>();
    return arg_0;
}

fn func_5(arg_0: Struct_2) -> u32 {
    var var_0 = all(vec2<bool>(arg_0.c, !arg_0.c));
    let var_1 = global1.x;
    global1 = vec3<bool>(true, true, true);
    let var_2 = arg_0;
    var var_3 = -1173f;
    return ~_wgslsmith_mod_u32(u_input.d, u_input.a);
}

fn func_6(arg_0: vec4<u32>, arg_1: vec3<u32>) -> vec3<bool> {
    global4 = array<f32, 6>();
    global0 = func_1(func_1(func_1(func_1(Struct_2(Struct_1(vec2<i32>(u_input.c, 2147483647i), 1117f, u_input.c, 5936i), 10650u, global1.x))))).a;
    var var_0 = (vec2<i32>(-1i) * -(global0.a ^ max(vec2<i32>(u_input.c, 1i), global0.a))) | (firstLeadingBit(~(vec2<i32>(0i, u_input.c) >> (vec2<u32>(arg_0.x, u_input.d) % vec2<u32>(32u)))) | vec2<i32>(2147483647i, global0.d));
    var var_1 = abs(~vec2<i32>(_wgslsmith_mod_i32(u_input.b, 0i) & -2147483647i, ~(var_0.x ^ var_0.x)));
    let var_2 = firstTrailingBit(vec3<i32>(var_0.x, ~_wgslsmith_add_i32(var_1.x, global0.a.x), var_1.x));
    return !select(!vec3<bool>(global1.x, true, true), select(vec3<bool>(global1.x, true, global1.x), select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(true, true, true), global1.x), false), !(!vec3<bool>(false, global1.x, global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, true, true, true);
    var_0 = !vec4<bool>(!(var_0.x & (global1.x & global1.x)), all(select(vec2<bool>(var_0.x, var_0.x), var_0.zy, true)) || false, any(!vec4<bool>(true, false, global1.x, true)), (~u_input.a < u_input.d) != true);
    let var_1 = func_6(select(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(13601u, u_input.a, u_input.d, u_input.d), ~vec4<u32>(13556u, u_input.d, 49100u, 7860u))), vec4<u32>(u_input.d, func_5(func_1(Struct_2(global2[_wgslsmith_index_u32(0u, 21u)], 46711u, var_0.x))), u_input.d, 1u), true || global1.x), abs(vec3<u32>(~max(u_input.a, 4294967295u), 39592u, _wgslsmith_add_u32(~1u, u_input.a))));
    global0 = global2[_wgslsmith_index_u32(0u, 21u)];
    var var_2 = func_1(func_1(Struct_2(Struct_1(_wgslsmith_sub_vec2_i32(global0.a, global0.a), _wgslsmith_f_op_f32(-global0.b), u_input.c, u_input.b), u_input.a, var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u, 6u)]), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(var_2.b, 6u)]), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(22823u, 6u)]), 1000f)))));
}

