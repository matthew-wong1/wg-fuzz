struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(vec2<u32>(24517u, 0u), true, Struct_1(vec3<i32>(-1i, 1i, -1i), vec3<u32>(0u, 46589u, 9259u)), -1159f), Struct_2(vec2<u32>(0u, 0u), false, Struct_1(vec3<i32>(1i, 50933i, -264i), vec3<u32>(0u, 14082u, 47035u)), -1631f), Struct_2(vec2<u32>(21394u, 4294967295u), false, Struct_1(vec3<i32>(2147483647i, 2147483647i, 33152i), vec3<u32>(18149u, 1u, 4294967295u)), 556f), Struct_2(vec2<u32>(0u, 4294967295u), false, Struct_1(vec3<i32>(-1i, -25333i, i32(-2147483648)), vec3<u32>(17311u, 33277u, 42395u)), -868f), Struct_2(vec2<u32>(53733u, 91545u), false, Struct_1(vec3<i32>(-2223i, -22177i, 8293i), vec3<u32>(35287u, 51775u, 37061u)), 865f), Struct_2(vec2<u32>(8140u, 35939u), false, Struct_1(vec3<i32>(31493i, 0i, 10319i), vec3<u32>(43274u, 14718u, 4294967295u)), -830f), Struct_2(vec2<u32>(1407u, 0u), false, Struct_1(vec3<i32>(0i, 1i, 38578i), vec3<u32>(1u, 1u, 45811u)), 233f), Struct_2(vec2<u32>(0u, 1u), true, Struct_1(vec3<i32>(-1i, 0i, 24800i), vec3<u32>(4294967295u, 1u, 12409u)), 1369f), Struct_2(vec2<u32>(30777u, 4294967295u), true, Struct_1(vec3<i32>(-1i, 29788i, 5616i), vec3<u32>(39364u, 71896u, 1u)), 1393f), Struct_2(vec2<u32>(51476u, 1u), false, Struct_1(vec3<i32>(23331i, -20247i, 31102i), vec3<u32>(0u, 1u, 1u)), -2208f), Struct_2(vec2<u32>(81472u, 49677u), false, Struct_1(vec3<i32>(57796i, i32(-2147483648), -19955i), vec3<u32>(0u, 79177u, 6619u)), 1455f), Struct_2(vec2<u32>(4294967295u, 11318u), true, Struct_1(vec3<i32>(2147483647i, 9955i, -34478i), vec3<u32>(3637u, 4294967295u, 28667u)), -654f), Struct_2(vec2<u32>(17995u, 1582u), false, Struct_1(vec3<i32>(10885i, -52582i, 0i), vec3<u32>(0u, 66301u, 21540u)), 1727f), Struct_2(vec2<u32>(57916u, 4294967295u), false, Struct_1(vec3<i32>(27968i, 20184i, 1i), vec3<u32>(30370u, 68494u, 1u)), -990f), Struct_2(vec2<u32>(36452u, 4294967295u), true, Struct_1(vec3<i32>(5204i, i32(-2147483648), 43773i), vec3<u32>(38652u, 1u, 60785u)), -634f), Struct_2(vec2<u32>(0u, 0u), true, Struct_1(vec3<i32>(-52382i, 36550i, 0i), vec3<u32>(76413u, 34674u, 4294967295u)), 1183f), Struct_2(vec2<u32>(1u, 1u), true, Struct_1(vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), vec3<u32>(0u, 1u, 0u)), 847f), Struct_2(vec2<u32>(4294967295u, 25233u), true, Struct_1(vec3<i32>(-1i, i32(-2147483648), 8617i), vec3<u32>(5031u, 1u, 16888u)), 891f), Struct_2(vec2<u32>(0u, 4294967295u), true, Struct_1(vec3<i32>(1i, -14970i, -1i), vec3<u32>(12184u, 41606u, 0u)), 154f), Struct_2(vec2<u32>(0u, 1u), true, Struct_1(vec3<i32>(-19832i, -51659i, 11803i), vec3<u32>(1u, 7648u, 25514u)), 740f), Struct_2(vec2<u32>(13991u, 4294967295u), true, Struct_1(vec3<i32>(2147483647i, 1i, 2147483647i), vec3<u32>(17475u, 1u, 4294967295u)), -820f));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec4<bool>) -> u32 {
    var var_0 = Struct_2(arg_1.c.b.xy, !arg_1.b, arg_1.c, arg_1.d);
    var var_1 = _wgslsmith_f_op_f32(sign(145f));
    var_1 = _wgslsmith_f_op_f32(step(1000f, -557f));
    let var_2 = countOneBits(select(~_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a.x, 1u, 1u), vec3<u32>(var_0.c.b.x, var_0.a.x, 26044u)), select(vec3<u32>(1u, arg_1.c.b.x, arg_1.c.b.x), arg_1.c.b, vec3<bool>(arg_2.x, arg_2.x, true))), countOneBits(~reverseBits(vec3<u32>(arg_1.a.x, arg_1.c.b.x, 34199u))), (all(vec2<bool>(false, arg_1.b)) && false) && false));
    var var_3 = 33306u;
    return arg_1.a.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec3<f32>) -> Struct_2 {
    var var_0 = -65523i;
    var var_1 = global0[_wgslsmith_index_u32(~(~1u), 21u)];
    var var_2 = vec3<u32>(func_3(var_1.c.a.x, global0[_wgslsmith_index_u32(u_input.b, 21u)], !arg_0), ~_wgslsmith_div_u32(~(~79623u), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.b), ~vec2<u32>(0u, var_1.c.b.x))), var_1.c.b.x);
    var_0 = ~u_input.c.x;
    global0 = array<Struct_2, 21>();
    return Struct_2(~firstTrailingBit(vec2<u32>(var_1.c.b.x, u_input.b) >> (var_1.c.b.yx % vec2<u32>(32u))), all(vec3<bool>(all(!vec2<bool>(false, arg_1.x)), any(select(arg_1, arg_0.xxz, arg_0.xyy)), false)), Struct_1(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -49233i, -8175i), -var_1.c.a), vec3<i32>(_wgslsmith_mult_i32(-1i, -5498i), _wgslsmith_mult_i32(var_1.c.a.x, 1i), ~var_1.c.a.x)), vec3<u32>(44216u, arg_2.a.x, 4294967295u)), var_1.d);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: i32, arg_3: vec4<f32>) -> i32 {
    let var_0 = -2147483647i;
    global0 = array<Struct_2, 21>();
    var var_1 = !(max(abs(var_0), arg_0.c.a.x | reverseBits(arg_0.c.a.x)) == 28688i);
    var_1 = arg_0.b;
    global0 = array<Struct_2, 21>();
    return 1i;
}

fn func_5(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_2) -> f32 {
    var var_0 = -abs(_wgslsmith_add_i32(-(~(-2147483647i)), -1i & _wgslsmith_sub_i32(arg_2.c.a.x, 1i)));
    let var_1 = arg_2.c;
    let var_2 = vec3<bool>(true, any(vec4<bool>(arg_2.b, !arg_2.b || arg_2.b, false, true)), any(vec2<bool>(125124u != u_input.b, arg_2.b)));
    var var_3 = ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.d.x, arg_2.a.x, _wgslsmith_sub_u32(63963u, u_input.d.x)) << (~1u % 32u), arg_2.c.b.x);
    var_3 = countOneBits(arg_2.a.x);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-263f, _wgslsmith_f_op_f32(-arg_1.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_div_f32(-2291f, func_2(vec4<bool>(var_2.x, true, arg_2.b, false), var_2, global0[_wgslsmith_index_u32(1u, 21u)], vec3<f32>(arg_2.d, -1000f, arg_1.x)).d)), _wgslsmith_f_op_f32(min(arg_2.d, arg_2.d)))));
}

fn func_1() -> vec2<f32> {
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    var var_0 = _wgslsmith_f_op_f32(222f * _wgslsmith_f_op_f32(-539f * _wgslsmith_f_op_f32(sign(-1585f)))) < _wgslsmith_f_op_f32(func_5(_wgslsmith_add_i32(func_4(func_2(vec4<bool>(false, true, true, true), vec3<bool>(false, true, false), Struct_2(u_input.d.ww, false, Struct_1(u_input.c.yyz, u_input.d.www), 655f), vec3<f32>(1000f, -347f, -982f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-984f, 117f) + vec2<f32>(-948f, 653f)), ~u_input.c.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(153f, 424f, -771f, 1348f) - vec4<f32>(-1654f, -1538f, 981f, -194f))), ~(35754i >> (u_input.d.x % 32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(550f, -1513f), vec2<f32>(-301f, -126f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-843f, -1000f)))), func_2(select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true))), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), func_2(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true)), vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(90127u, u_input.a, 54192u), 21u)], vec3<f32>(-1185f, -584f, -1658f)), vec3<f32>(_wgslsmith_f_op_f32(1166f * -332f), _wgslsmith_f_op_f32(min(-1945f, 1093f)), _wgslsmith_f_op_f32(floor(1513f))))));
    var_0 = true;
    let var_1 = Struct_1(select(u_input.c.xzw, u_input.c.xyx, false), _wgslsmith_clamp_vec3_u32(u_input.d.wwz, select(vec3<u32>(u_input.a ^ u_input.b, _wgslsmith_clamp_u32(4294967295u, 2097u, u_input.a), u_input.b | u_input.b), ~u_input.d.xwz, select(select(true, true, true), true, true)), u_input.d.zyx));
    return vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-374f * 385f))))), _wgslsmith_f_op_f32(-565f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-642f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(254f, -547f) * vec2<f32>(237f, 246f)))), _wgslsmith_f_op_vec2_f32(func_1())) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-106f, -154f) * vec2<f32>(452f, -379f)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1977f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1169f))))));
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    var var_1 = func_2(select(vec4<bool>(true, true, select(any(vec3<bool>(false, false, false)), true, var_0.x != var_0.x), true), vec4<bool>(true, func_2(vec4<bool>(false, false, true, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), global0[_wgslsmith_index_u32(0u, 21u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) * vec3<f32>(var_0.x, -937f, var_0.x))).b, true, false), vec4<bool>(~u_input.b < (u_input.d.x << (u_input.d.x % 32u)), !(8377u <= u_input.a), true, false)), select(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), select(!any(vec3<bool>(false, false, false)), !all(vec3<bool>(false, true, true)), true)), global0[_wgslsmith_index_u32(14519u, 21u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-541f - -991f), _wgslsmith_f_op_f32(var_0.x + -946f), _wgslsmith_div_f32(var_0.x, var_0.x))))).c;
    var_1 = func_2(vec4<bool>(false, any(vec4<bool>(false, select(true, true, false), 0u == var_1.b.x, false)), false, false), vec3<bool>(!any(select(vec2<bool>(true, true), vec2<bool>(true, false), false)), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(546f, -320f))) > var_0.x), global0[_wgslsmith_index_u32(u_input.b, 21u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, 206f, -1974f), vec3<f32>(738f, -1709f, -686f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 281f, var_0.x)))))).c;
    var var_2 = -234f;
    let x = u_input.a;
    s_output = StorageBuffer(1601f, _wgslsmith_clamp_vec2_u32(abs(firstTrailingBit(var_1.b.yy)) | vec2<u32>(~8063u, ~u_input.b), vec2<u32>(var_1.b.x, ~u_input.a << (_wgslsmith_div_u32(28102u, var_1.b.x) % 32u)), select(vec2<u32>(~0u, var_1.b.x), ~_wgslsmith_add_vec2_u32(var_1.b.zz, vec2<u32>(8643u, 96037u)), true)));
}

