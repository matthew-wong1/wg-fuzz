struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: array<vec2<u32>, 28>;

var<private> global2: array<Struct_2, 30>;

var<private> global3: vec3<bool> = vec3<bool>(false, false, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> bool {
    var var_0 = max(1i, -42596i);
    var var_1 = 542f;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.b.x, 972f)) + -2522f), 494f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, -492f)) + vec2<f32>(arg_1.b.x, -440f)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(191f, _wgslsmith_f_op_f32(step(-1000f, -854f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(arg_1.b.wz * vec2<f32>(624f, 1654f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(585f, arg_1.a)))))), vec2<bool>(true, global3.x))));
    var var_3 = ~(~arg_0);
    var var_4 = var_2.x;
    return !(-20979i < _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(-vec2<i32>(-2147483647i, -18420i), vec2<i32>(1i, 1i), vec2<i32>(43920i, -1i)), vec2<i32>(-15501i, ~12432i)));
}

fn func_2() -> vec4<i32> {
    global3 = vec3<bool>(~(~(u_input.d.x << (u_input.c.x % 32u))) < u_input.d.x, all(select(vec3<bool>(true, true, global3.x && global3.x), vec3<bool>(global3.x, func_3(4294967295u, Struct_1(1644f, vec4<f32>(-887f, 1000f, 920f, -1165f)), 112505u), any(global3.xz)), vec3<bool>(global3.x, any(vec2<bool>(true, false)), false))), !(!all(!vec3<bool>(true, global3.x, global3.x))));
    global0 = -_wgslsmith_clamp_i32(~(-2147483647i), 1i, _wgslsmith_mult_i32(select(-1i, 1i, u_input.d.x <= 0u), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), firstTrailingBit(vec2<i32>(2147483647i, -2147483647i)))));
    global1 = array<vec2<u32>, 28>();
    var var_0 = global2[_wgslsmith_index_u32(36544u, 30u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(302f)), _wgslsmith_f_op_f32(-497f * 1750f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -895f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(541f, 1193f)), _wgslsmith_f_op_f32(trunc(631f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-538f, -240f, -294f) - vec3<f32>(-771f, 1239f, 2053f)) + vec3<f32>(1850f, 803f, 1453f)), vec3<f32>(-109f, 470f, _wgslsmith_f_op_f32(floor(-739f))))), global3.x)));
    return vec4<i32>(abs(var_0.c), max(~(~select(var_0.c, 1442i, var_0.a.x)), -2147483647i), var_0.c, _wgslsmith_add_i32(-abs(var_0.c), var_0.c));
}

fn func_4(arg_0: vec4<i32>, arg_1: bool) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-480f))), 1f))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0, -806f, var_0)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-1736f - var_0), _wgslsmith_f_op_f32(-var_0)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1078f, -463f, var_0))))), select(vec3<bool>(true, !arg_1, any(vec3<bool>(false, false, arg_1))), select(vec3<bool>(true, arg_1, false), !vec3<bool>(global3.x, true, true), select(vec3<bool>(true, arg_1, true), vec3<bool>(true, true, false), false)), select(!vec3<bool>(arg_1, global3.x, false), vec3<bool>(arg_1, arg_1, arg_1), select(vec3<bool>(true, global3.x, true), vec3<bool>(true, arg_1, false), false))))));
    global2 = array<Struct_2, 30>();
    var var_2 = global2[_wgslsmith_index_u32(0u, 30u)];
    var var_3 = Struct_3(all(select(!(!vec4<bool>(global3.x, false, false, arg_1)), !vec4<bool>(var_2.a.x, false, arg_1, false), var_2.a.x)), vec4<i32>(2147483647i, ~(~(i32(-1i) * -9063i)), func_2().x & ~(-14584i), func_2().x));
    return Struct_3(!(var_3.a == !var_3.a), firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(abs(40425i), abs(-72282i), var_3.b.x, -2147483647i), countOneBits(-vec4<i32>(1i, 33932i, var_2.c, arg_0.x)))));
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: Struct_1, arg_3: bool) -> Struct_3 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.b.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-558f + -2463f)) - _wgslsmith_f_op_f32(1600f + _wgslsmith_f_op_f32(min(926f, arg_2.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.b.x + arg_2.b.x))) * 672f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(317f, _wgslsmith_f_op_f32(sign(arg_2.a))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.a, arg_2.a, false)) + _wgslsmith_f_op_f32(-190f + 2198f)))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-var_0.x), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))))), -547f, 653f));
    let var_2 = vec2<u32>(u_input.a | 1u, u_input.c.x);
    var var_3 = func_4(arg_1.b, all(select(!select(vec3<bool>(false, false, arg_3), vec3<bool>(true, arg_3, arg_1.a), vec3<bool>(true, true, false)), !select(vec3<bool>(false, true, false), vec3<bool>(global3.x, arg_1.a, arg_1.a), vec3<bool>(true, true, global3.x)), true)));
    var var_4 = arg_1;
    return Struct_3(func_4(_wgslsmith_sub_vec4_i32(var_3.b, vec4<i32>(select(var_3.b.x, arg_1.b.x, false), func_4(vec4<i32>(var_4.b.x, var_4.b.x, 1i, arg_1.b.x), var_3.a).b.x, var_3.b.x ^ var_4.b.x, ~(-2147483647i))), false).a, -(firstLeadingBit(_wgslsmith_div_vec4_i32(var_3.b, vec4<i32>(var_3.b.x, 0i, var_4.b.x, 17987i))) >> (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(7826u, 1u, 7324u), u_input.c), _wgslsmith_add_u32(37382u, arg_0), ~u_input.b.x, 1u) % vec4<u32>(32u))));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: f32) -> bool {
    global1 = array<vec2<u32>, 28>();
    let var_0 = 4294967295u;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1713f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(589f * arg_2)))), 215f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2))), arg_2);
    let var_2 = func_5(1u, func_4(-(~func_2()), !any(vec2<bool>(false, true))), Struct_1(_wgslsmith_div_f32(203f, arg_2), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -475f, arg_2, -1429f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 955f, 1789f, var_1.x) - vec4<f32>(arg_2, 400f, -104f, var_1.x))))), !global3.x);
    let var_3 = _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(var_0, 28u)], vec2<u32>(var_0, ~0u));
    return all(!arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 28>();
    global3 = vec3<bool>(true & (true != func_1(!global3.x, vec4<bool>(global3.x, global3.x, false, global3.x), _wgslsmith_f_op_f32(trunc(1000f)))), 1f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-469f, -408f) + _wgslsmith_f_op_f32(min(1000f, 417f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(746f, 466f, false)))), any(global3.zx));
    var var_0 = vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -345f) - _wgslsmith_f_op_f32(floor(-1094f))), 1468f, _wgslsmith_f_op_f32(trunc(-643f)));
    global1 = array<vec2<u32>, 28>();
    var var_1 = global2[_wgslsmith_index_u32(firstTrailingBit(min(1u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a, u_input.a) ^ u_input.d.x, u_input.b.x))), 30u)];
    var var_2 = vec3<i32>(var_1.c, var_1.c, func_2().x);
    var var_3 = select(!vec4<bool>(true, global3.x, any(select(vec4<bool>(false, true, true, var_1.a.x), vec4<bool>(true, true, var_1.a.x, global3.x), false)), !global3.x), !vec4<bool>(var_1.a.x, !(1799f != var_0.x), any(select(vec3<bool>(global3.x, false, var_1.a.x), vec3<bool>(false, false, true), global3.x)), var_1.a.x), func_5(_wgslsmith_dot_vec4_u32(firstTrailingBit(u_input.b ^ vec4<u32>(33520u, 0u, var_1.b, u_input.d.x)), countOneBits(vec4<u32>(var_1.b, var_1.b, var_1.b, u_input.b.x) >> (u_input.b % vec4<u32>(32u)))), func_5(~min(u_input.b.x, var_1.b), Struct_3(var_1.a.x, vec4<i32>(-1i, var_1.c, var_2.x, var_1.c)), Struct_1(1332f, vec4<f32>(var_0.x, var_0.x, 129f, var_0.x)), 48341i <= (var_2.x & 1i)), Struct_1(-360f, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_0.x, var_0.x, -273f) * vec4<f32>(-888f, 647f, -1301f, 733f))))), var_1.a.x).a);
    var var_4 = func_4(select(firstTrailingBit(~(-vec4<i32>(var_2.x, var_1.c, -17531i, 44275i))), firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(var_2.x, 22411i, var_1.c, 0i), vec4<i32>(var_1.c, var_2.x, var_1.c, var_2.x))), vec4<bool>(all(var_3.zw), any(!vec4<bool>(true, global3.x, false, var_3.x)), global3.x, var_1.a.x)), !(!(!var_1.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), -38219i);
}

