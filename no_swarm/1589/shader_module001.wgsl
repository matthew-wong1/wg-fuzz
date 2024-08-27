struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<u32, 4>;

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(-1300f, vec4<i32>(-3251i, i32(-2147483648), 20899i, 2147483647i), false, vec3<f32>(-411f, 756f, 1311f)), Struct_1(-950f, vec4<i32>(22297i, -17077i, -54686i, 6974i), true, vec3<f32>(446f, -1244f, -2802f)), Struct_1(-1809f, vec4<i32>(2147483647i, 2147483647i, -3976i, i32(-2147483648)), false, vec3<f32>(-272f, -689f, -2519f)), Struct_1(-1916f, vec4<i32>(-1i, 2147483647i, 2147483647i, -1i), false, vec3<f32>(366f, -1358f, 1258f)), Struct_1(740f, vec4<i32>(-19460i, -54279i, 1i, 30353i), true, vec3<f32>(547f, -1800f, 1051f)), Struct_1(-1000f, vec4<i32>(i32(-2147483648), 15710i, 7189i, 3891i), false, vec3<f32>(449f, 2033f, -863f)), Struct_1(972f, vec4<i32>(1i, 0i, 1i, 1i), true, vec3<f32>(170f, -114f, 1711f)), Struct_1(259f, vec4<i32>(-1i, 7666i, 73115i, 23805i), true, vec3<f32>(-273f, 1977f, -332f)), Struct_1(595f, vec4<i32>(0i, -54650i, i32(-2147483648), -76901i), false, vec3<f32>(1352f, 432f, -358f)), Struct_1(526f, vec4<i32>(0i, 0i, -24794i, -1i), false, vec3<f32>(-2089f, 208f, 2064f)), Struct_1(-367f, vec4<i32>(2147483647i, 0i, -2274i, 0i), true, vec3<f32>(531f, -346f, 741f)), Struct_1(1520f, vec4<i32>(-41490i, 17192i, -35978i, -3732i), true, vec3<f32>(-1158f, -651f, -251f)), Struct_1(621f, vec4<i32>(-12370i, 11192i, 1i, -1i), false, vec3<f32>(-146f, 771f, 355f)), Struct_1(1000f, vec4<i32>(-20209i, -19214i, -6430i, -9897i), true, vec3<f32>(-421f, 820f, 615f)), Struct_1(-653f, vec4<i32>(33640i, -1i, 20574i, 2147483647i), true, vec3<f32>(811f, -356f, -2232f)), Struct_1(-218f, vec4<i32>(-1i, -27344i, 68495i, 1268i), false, vec3<f32>(-422f, -159f, -1000f)), Struct_1(-680f, vec4<i32>(-18870i, i32(-2147483648), -19462i, -1i), false, vec3<f32>(-1493f, -459f, -548f)), Struct_1(457f, vec4<i32>(i32(-2147483648), 1i, 16764i, -30309i), true, vec3<f32>(1470f, 1000f, 177f)), Struct_1(-638f, vec4<i32>(0i, 39250i, 2147483647i, 1i), true, vec3<f32>(-220f, -486f, 103f)), Struct_1(-790f, vec4<i32>(-1i, 4672i, 1i, -10703i), true, vec3<f32>(676f, -152f, 456f)), Struct_1(1215f, vec4<i32>(2147483647i, i32(-2147483648), -16960i, -13364i), false, vec3<f32>(444f, -1000f, 899f)));

var<private> global3: vec2<i32>;

var<private> global4: i32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2() -> Struct_2 {
    let var_0 = select(_wgslsmith_div_vec2_u32(u_input.d.xy, u_input.d.xw), firstTrailingBit(max(~(~vec2<u32>(u_input.c, global1[_wgslsmith_index_u32(u_input.b, 4u)])), u_input.d.yz)), true);
    global3 = select(abs(countOneBits(abs(vec2<i32>(2147483647i, -31222i)))), firstLeadingBit(vec2<i32>(global3.x, -2147483647i)), true);
    let var_1 = Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-926f, _wgslsmith_f_op_f32(f32(-1f) * -297f)), _wgslsmith_f_op_f32(round(-765f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-282f, -136f) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2550f, -428f))))))), 32055i ^ -global3.x);
    global3 = ~(~(vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(vec2<i32>(global3.x, -39652i), vec2<i32>(5380i, 1i))));
    var var_2 = ~(~vec4<i32>(_wgslsmith_sub_i32(-1i, global3.x) | ~global3.x, _wgslsmith_mult_i32(var_1.b, _wgslsmith_dot_vec4_i32(vec4<i32>(30964i, global3.x, 0i, -813i), vec4<i32>(38944i, 2147483647i, global3.x, -60068i))), max(var_1.b, var_1.b), ~var_1.b));
    return var_1;
}

fn func_3(arg_0: i32, arg_1: u32) -> u32 {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(abs(u_input.d.zx << (~vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(4294967295u, 4u)]) % vec2<u32>(32u))), vec2<u32>(arg_1, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, arg_1, 13032u), u_input.d.zww))), 1922u, _wgslsmith_clamp_u32(~select(0u | u_input.c, ~26955u, true), abs(max(~1u, ~global1[_wgslsmith_index_u32(1u, 4u)])), arg_1));
    let var_1 = func_2();
    global3 = select(~(vec2<i32>(-1i) * -(vec2<i32>(arg_0, arg_0) << (u_input.d.wz % vec2<u32>(32u)))), -select(~(-vec2<i32>(-8939i, arg_0)), _wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(arg_0, var_1.b)), vec2<i32>(70032i, global3.x) ^ vec2<i32>(global3.x, -29496i)), vec2<bool>(false, all(vec3<bool>(true, true, false)))), vec2<bool>(true, true));
    let var_2 = Struct_2(var_1.a, ~(-1i));
    global2 = array<Struct_1, 21>();
    return 50510u & reverseBits(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(0u, 4u)], 4u)] << (max(~global1[_wgslsmith_index_u32(4163u, 4u)], u_input.a) % 32u));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global4 = arg_0.b.x;
    global2 = array<Struct_1, 21>();
    var var_0 = Struct_1(-1348f, _wgslsmith_sub_vec4_i32(vec4<i32>(-(~13486i), select(_wgslsmith_div_i32(arg_0.b.x, arg_0.b.x), ~(-2147483647i), arg_0.c), i32(-1i) * -45350i, arg_0.b.x), -vec4<i32>(arg_0.b.x << (18818u % 32u), -50044i, ~(-11023i), -1i)), arg_0.c, vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a), 1000f, arg_0.d.x));
    global3 = ~(~var_0.b.zw);
    let var_1 = func_2();
    return Struct_1(1897f, _wgslsmith_sub_vec4_i32(~min(var_0.b, arg_0.b) << (vec4<u32>(~30838u, firstTrailingBit(u_input.a), global1[_wgslsmith_index_u32(19122u, 4u)], func_3(global3.x, global1[_wgslsmith_index_u32(u_input.c, 4u)])) % vec4<u32>(32u)), ~(~(~vec4<i32>(-4788i, var_1.b, -1i, -29640i)))), (_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(360f, arg_0.a)))) >= -660f) != !select(all(vec4<bool>(true, var_0.c, false, var_0.c)), true, true), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(832f, 1f, var_0.d.x))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<u32>) -> u32 {
    let var_0 = ~arg_2.xzz;
    let var_1 = ~_wgslsmith_add_u32(global1[_wgslsmith_index_u32(~select(arg_2.x, ~arg_2.x, true), 4u)], 1u);
    global4 = ~_wgslsmith_mult_i32(i32(-1i) * -(arg_0.b.x >> (5731u % 32u)), 1i);
    global2 = array<Struct_1, 21>();
    global3 = vec2<i32>(-18800i, _wgslsmith_div_i32(~global3.x, arg_1.b));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(709f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(352f)))), _wgslsmith_f_op_f32(-1f))));
    let var_1 = vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~530u, 4u)], 4u)], func_4(func_1(Struct_1(_wgslsmith_f_op_f32(max(var_0, 796f)), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, global3.x, -5152i, 0i), vec4<i32>(global3.x, 7370i, -22037i, -53671i)), true, vec3<f32>(-460f, 1000f, -165f))), Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2251f, 1068f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 459f))), abs(-26090i)), vec4<u32>(1u, ~u_input.d.x, _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(60640u, 4u)], 38710u, 1u), ~38772u) >> (max(u_input.d, ~u_input.d) % vec4<u32>(32u))), u_input.d.x);
    let var_2 = vec2<bool>(!(true & !all(vec2<bool>(true, true))), var_1.x != ~41468u);
    let var_3 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-802f - var_0) - 1229f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_0))))))), global3.x);
    var var_4 = select(!(!(!(!vec2<bool>(false, var_2.x)))), !select(!vec2<bool>(var_2.x, var_2.x), !select(var_2, vec2<bool>(var_2.x, false), var_2.x), var_2), true);
    var var_5 = vec2<u32>(~firstLeadingBit(0u & u_input.d.x), 32734u);
    var var_6 = ~(~_wgslsmith_add_i32(global3.x, 0i) << (var_1.x % 32u)) >= -2147483647i;
    let var_7 = func_2().b;
    var var_8 = _wgslsmith_f_op_vec2_f32(-var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0, var_0)) * func_2().a.x), var_3.a.x), _wgslsmith_div_f32(-372f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.x) - -1544f)), _wgslsmith_f_op_f32(var_8.x * 687f)), firstTrailingBit(0i & (0i ^ ~global3.x)), ~u_input.d);
}

