struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(13895i, vec4<i32>(28762i, 1i, 0i, 20619i)), Struct_1(i32(-2147483648), vec4<i32>(i32(-2147483648), -18146i, -1i, -26522i)), Struct_1(-10362i, vec4<i32>(2147483647i, i32(-2147483648), 1i, -10135i)), Struct_1(-1i, vec4<i32>(2147483647i, 2577i, 69286i, -317i)));

var<private> global1: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(4294967295u, vec4<i32>(-26134i, -8111i, 1i, -1i)), Struct_2(4294967295u, vec4<i32>(i32(-2147483648), -1577i, -10397i, 26952i)), Struct_2(4294967295u, vec4<i32>(3129i, i32(-2147483648), i32(-2147483648), 1i)), Struct_2(4294967295u, vec4<i32>(44202i, -1i, 0i, -49103i)), Struct_2(4294967295u, vec4<i32>(-28484i, 15201i, 28163i, 1i)), Struct_2(1u, vec4<i32>(0i, i32(-2147483648), 12731i, 1i)), Struct_2(4294967295u, vec4<i32>(-45526i, 2921i, -73122i, i32(-2147483648))), Struct_2(0u, vec4<i32>(-1i, -45490i, 0i, i32(-2147483648))), Struct_2(0u, vec4<i32>(-1i, 0i, 10925i, -1i)), Struct_2(32839u, vec4<i32>(1i, 1i, -64305i, 119869i)), Struct_2(4294967295u, vec4<i32>(-1i, 0i, 39399i, 20631i)), Struct_2(28509u, vec4<i32>(-13978i, -1i, -55392i, -47571i)), Struct_2(25645u, vec4<i32>(-27850i, -1i, i32(-2147483648), 1i)), Struct_2(4294967295u, vec4<i32>(2147483647i, 1i, -1i, -50838i)), Struct_2(80862u, vec4<i32>(14247i, -37784i, 2147483647i, -17071i)), Struct_2(61404u, vec4<i32>(0i, i32(-2147483648), -37968i, -18766i)), Struct_2(28955u, vec4<i32>(0i, -30959i, 29709i, 2147483647i)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<bool>) -> vec4<i32> {
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-178f, 826f, -581f, 957f) + vec4<f32>(305f, 1376f, 213f, 2038f)))), vec4<f32>(_wgslsmith_f_op_f32(select(1991f, 1426f, arg_0.x)), -732f, 485f, _wgslsmith_f_op_f32(trunc(-198f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(253f - 1000f)), 1f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1000f, -371f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-435f - 1857f))), !(!select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), false)))));
    let var_1 = global1[_wgslsmith_index_u32(~(~u_input.b.x), 17u)];
    let var_2 = -1i;
    return min(max(_wgslsmith_clamp_vec4_i32(var_1.b, var_1.b, vec4<i32>(var_1.b.x, var_1.b.x, var_2, -1i)) << (vec4<u32>(var_1.a, u_input.b.x, 1u, u_input.b.x) % vec4<u32>(32u)), vec4<i32>(var_2, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_2, 17603i, 1i), var_1.b), 2147483647i, 9293i)) << (~vec4<u32>(0u, u_input.b.x, _wgslsmith_add_u32(21778u, 0u), ~var_1.a) % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, var_1.b.x, u_input.c.x, var_2)), var_1.b), -(~2147483647i), reverseBits(1i << (var_1.a % 32u)))));
}

fn func_2() -> vec3<f32> {
    var var_0 = ~(-(~vec4<i32>(u_input.c.x, -2147483647i, -u_input.c.x, _wgslsmith_mod_i32(u_input.a.x, u_input.c.x))));
    var var_1 = Struct_1(3744i, vec4<i32>(2147483647i, ~4591i, -abs(_wgslsmith_mult_i32(0i, var_0.x)), 9292i));
    var var_2 = global1[_wgslsmith_index_u32(firstLeadingBit(abs(30893u)), 17u)];
    var_2 = Struct_2(1u, -func_3(vec3<bool>(true, true, true)));
    global1 = array<Struct_2, 17>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-281f, -426f, _wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-903f, 314f, 666f)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(609f, -1681f, -1357f) * vec3<f32>(-273f, 939f, -1786f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(576f, 544f, 1112f)), vec3<f32>(436f, -1000f, -357f)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: f32) -> Struct_2 {
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    var var_0 = u_input.a.zx;
    global0 = array<Struct_1, 4>();
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(func_2()), select(select(!arg_0.yxy, arg_0.wwx, arg_0.x), select(!arg_0.wzz, !select(vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(true, arg_0.x, arg_0.x), arg_0.x), true), select(arg_0.zyy, arg_0.zyx, vec3<bool>(arg_0.x, arg_0.x, arg_0.x))));
    return global1[_wgslsmith_index_u32(u_input.b.x, 17u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<i32>) -> bool {
    global1 = array<Struct_2, 17>();
    var var_0 = (~countOneBits(abs(vec4<u32>(u_input.b.x, 53044u, u_input.b.x, 87890u))) | vec4<u32>(u_input.b.x, 0u, arg_0.a, u_input.b.x)) & ~min(~(vec4<u32>(28207u, u_input.b.x, 63561u, u_input.b.x) << (vec4<u32>(38529u, 572u, 0u, 12341u) % vec4<u32>(32u))), vec4<u32>(countOneBits(23481u), _wgslsmith_mod_u32(arg_0.a, 8537u), 111610u, firstTrailingBit(u_input.b.x)));
    let var_1 = arg_1.a.x;
    var var_2 = select(arg_2.yzy, (select(vec3<i32>(-1i, u_input.a.x, u_input.c.x), vec3<i32>(0i, -1i, u_input.c.x), arg_1.b) >> (u_input.b % vec3<u32>(32u))) ^ _wgslsmith_sub_vec3_i32(min(arg_2.ywx, ~vec3<i32>(2147483647i, arg_2.x, u_input.c.x)), -arg_2.zww), select(select(select(arg_1.b, !vec3<bool>(arg_1.b.x, arg_1.b.x, false), arg_1.b.x), arg_1.b, select(select(vec3<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x), arg_1.b, arg_1.b.x), arg_1.b, vec3<bool>(false, true, true))), select(vec3<bool>(arg_1.b.x, all(vec3<bool>(arg_1.b.x, true, false)), arg_1.b.x), arg_1.b, arg_1.b), select(select(select(arg_1.b, arg_1.b, vec3<bool>(arg_1.b.x, true, arg_1.b.x)), !arg_1.b, !arg_1.b), !arg_1.b, select(!arg_1.b.x, false, true))));
    let var_3 = arg_0;
    return !(!arg_1.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true))), vec4<bool>(u_input.b.x > ~u_input.b.x, any(select(vec2<bool>(true, false), vec2<bool>(true, false), false)), any(vec4<bool>(true, true, false, false)), func_4(func_1(vec4<bool>(true, true, true, false), 343f), Struct_3(vec3<f32>(-856f, -1346f, 613f), vec3<bool>(true, true, false)), vec4<i32>(-17539i, u_input.a.x, u_input.a.x, u_input.a.x))), vec4<bool>(false, true, !any(vec2<bool>(false, false)), true)), vec4<bool>(any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), true)), true, any(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), any(vec2<bool>(true, false))), !(!all(select(vec2<bool>(false, true), vec2<bool>(false, false), true))));
    var var_1 = u_input.b.zy;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(393f * -378f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1508f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(159f, 1300f) * -304f))), -952f, -270f);
    global0 = array<Struct_1, 4>();
    let var_3 = var_2.x;
    var var_4 = vec3<u32>(firstTrailingBit(func_1(!vec4<bool>(var_0.x, var_0.x, true, var_0.x), var_2.x).a), countOneBits((57956u >> (var_1.x % 32u)) | ~func_1(vec4<bool>(true, true, var_0.x, true), -1099f).a), u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~(~u_input.a.x), _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.c.x, 15034i), 42391i), 1i), firstTrailingBit(max(u_input.a.x & -2147483647i, -u_input.c.x)), ~u_input.c.x));
}

