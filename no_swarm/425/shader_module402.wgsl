struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
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

var<private> global0: array<Struct_4, 5> = array<Struct_4, 5>(Struct_4(Struct_2(vec2<bool>(true, false), 53920u), false, vec4<i32>(8400i, 0i, -53256i, 0i), vec2<i32>(-1i, -1i)), Struct_4(Struct_2(vec2<bool>(false, false), 0u), false, vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), 2147483647i), vec2<i32>(34727i, 0i)), Struct_4(Struct_2(vec2<bool>(false, false), 93949u), true, vec4<i32>(1i, -14033i, 1i, -3699i), vec2<i32>(6079i, -49204i)), Struct_4(Struct_2(vec2<bool>(false, false), 4294967295u), true, vec4<i32>(39214i, -10514i, 2147483647i, 29344i), vec2<i32>(-48106i, 11842i)), Struct_4(Struct_2(vec2<bool>(false, false), 2381u), true, vec4<i32>(0i, -40448i, 0i, -34662i), vec2<i32>(2147483647i, -10822i)));

var<private> global1: array<Struct_4, 24>;

var<private> global2: Struct_1 = Struct_1(true, 1u, 0i);

var<private> global3: array<vec2<f32>, 15> = array<vec2<f32>, 15>(vec2<f32>(1743f, 587f), vec2<f32>(1000f, 445f), vec2<f32>(765f, 307f), vec2<f32>(-517f, -577f), vec2<f32>(2732f, 262f), vec2<f32>(-498f, -2142f), vec2<f32>(1648f, -996f), vec2<f32>(197f, 1033f), vec2<f32>(627f, 480f), vec2<f32>(1905f, 126f), vec2<f32>(1727f, 224f), vec2<f32>(1441f, -534f), vec2<f32>(420f, -729f), vec2<f32>(828f, -224f), vec2<f32>(-779f, 733f));

var<private> global4: i32 = i32(-2147483648);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2.b, 1u, firstTrailingBit(~(~abs(4294967295u)))), 5u)];
    let var_1 = Struct_1(any(select(vec2<bool>(true, true), var_0.a.a, select(var_0.a.a, var_0.a.a, false))) && (true || select(true, var_0.c.x > u_input.b.x, all(vec4<bool>(global2.a, false, true, global2.a)))), u_input.a.x, _wgslsmith_mod_i32(~global2.c, -1i));
    return false;
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_2 {
    global1 = array<Struct_4, 24>();
    let var_0 = u_input.b;
    let var_1 = abs(_wgslsmith_add_u32(59334u, u_input.a.x));
    var var_2 = Struct_3(all(!vec2<bool>(arg_0, arg_0)), select(vec2<bool>(!all(vec2<bool>(false, global2.a)), !global2.a), !(!select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, false), vec2<bool>(true, true))), false), abs(vec3<i32>(u_input.b.x, max(global2.c, -26555i), global2.c)) | vec3<i32>(abs(var_0.x), ~reverseBits(-5993i), u_input.b.x), vec2<i32>(_wgslsmith_sub_i32(1i, 6048i), countOneBits(16765i)), Struct_1(func_3(arg_0), ~(~4294967295u ^ _wgslsmith_div_u32(53589u, u_input.a.x)), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, global2.c, var_0.x, u_input.b.x), var_0), _wgslsmith_add_i32(abs(var_0.x), -1521i & var_0.x))));
    var var_3 = Struct_2(select(vec2<bool>(false, any(vec4<bool>(false, false, true, false))), vec2<bool>(true, true), var_2.a), _wgslsmith_mod_u32(~var_1, 0u));
    return Struct_2(vec2<bool>(false, !var_2.e.a), u_input.a.x);
}

fn func_1() -> bool {
    var var_0 = global2.c;
    let var_1 = !vec3<bool>(true, any(vec3<bool>(true, true, true)), true);
    let var_2 = func_2(all(vec3<bool>(true, (u_input.a.x & u_input.a.x) >= _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(0u, u_input.a.x)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-494f, _wgslsmith_f_op_f32(max(-2000f, -445f)))))));
    var var_3 = var_2;
    var var_4 = vec4<f32>(1876f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(422f, 1255f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-267f * -366f) - _wgslsmith_f_op_f32(-1325f * -158f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -196f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1129f)))))), 1961f);
    return any(!select(!vec3<bool>(false, false, global2.a), select(!vec3<bool>(var_1.x, false, true), vec3<bool>(global2.a, true, var_1.x), vec3<bool>(global2.a, var_1.x, var_2.a.x)), !(!var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(global2.a | func_1(), func_2(func_3(global2.a), _wgslsmith_f_op_f32(-726f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1191f * 1070f))))).a, vec3<i32>(u_input.b.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, 69646i, u_input.b.x), u_input.b) ^ _wgslsmith_div_i32(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, global2.c, 15585i), u_input.b.zyy), max(vec3<i32>(-46215i, global2.c, -1i), ~vec3<i32>(global2.c, 0i, -2147483647i)))), _wgslsmith_clamp_vec2_i32(-select(u_input.b.yx, vec2<i32>(-2147483647i, global2.c), true), u_input.b.wy, vec2<i32>(u_input.b.x, 1i)), Struct_1(func_1(), select(0u, ~(u_input.a.x | global2.b), global2.a), -2147483647i));
    var var_1 = global2.a;
    global2 = Struct_1(all(var_0.b), ~abs(12728u), _wgslsmith_add_i32(var_0.c.x, 1i));
    var var_2 = Struct_2(var_0.b, 22786u);
    let var_3 = u_input.b >> (vec4<u32>(~(~countOneBits(4294967295u)), _wgslsmith_div_u32(~(~1u), reverseBits(~0u)), 4294967295u, var_0.e.b) % vec4<u32>(32u));
    var_1 = !var_2.a.x;
    var var_4 = Struct_4(Struct_2(!var_0.b, ~_wgslsmith_sub_u32(~6672u, 40853u)), true, ~var_3, abs(-vec2<i32>(-2147483647i, -15467i)));
    var var_5 = -33828i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1064f, -519f, 1555f, -1262f)))))));
}

