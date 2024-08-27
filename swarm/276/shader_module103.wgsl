struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(-1481f, vec2<i32>(44708i, -1i), vec2<i32>(0i, 2147483647i), Struct_1(-48291i, 36685i, true, vec2<u32>(14043u, 54253u), vec4<i32>(1i, 2147483647i, 1i, 1i)), Struct_1(-1i, 1i, true, vec2<u32>(1u, 1u), vec4<i32>(-21531i, 45220i, 2147483647i, -6338i))), Struct_2(366f, vec2<i32>(24118i, i32(-2147483648)), vec2<i32>(1i, 2147483647i), Struct_1(-3406i, 12884i, false, vec2<u32>(1u, 0u), vec4<i32>(2147483647i, -1i, -11600i, 0i)), Struct_1(13898i, 17617i, true, vec2<u32>(0u, 68953u), vec4<i32>(i32(-2147483648), 2147483647i, 20438i, 0i))), Struct_2(194f, vec2<i32>(24382i, -22816i), vec2<i32>(-1i, i32(-2147483648)), Struct_1(i32(-2147483648), 0i, false, vec2<u32>(18263u, 31145u), vec4<i32>(-30686i, -1i, 38484i, -1373i)), Struct_1(-9648i, i32(-2147483648), false, vec2<u32>(4294967295u, 18337u), vec4<i32>(-24840i, -44487i, -1i, -1i))), Struct_2(1313f, vec2<i32>(1i, 0i), vec2<i32>(1321i, 1i), Struct_1(24831i, -53696i, false, vec2<u32>(104321u, 1u), vec4<i32>(8260i, -1i, 40982i, -17555i)), Struct_1(-1i, 27078i, true, vec2<u32>(1u, 4043u), vec4<i32>(38855i, 33590i, 0i, 0i))), Struct_2(-863f, vec2<i32>(-1i, -15767i), vec2<i32>(i32(-2147483648), -1i), Struct_1(-33311i, 2147483647i, false, vec2<u32>(32538u, 0u), vec4<i32>(1i, -8481i, 41207i, -13102i)), Struct_1(-6894i, 15057i, true, vec2<u32>(1u, 49343u), vec4<i32>(-16918i, 14082i, i32(-2147483648), 0i))), Struct_2(-1371f, vec2<i32>(-14220i, 2147483647i), vec2<i32>(0i, -1i), Struct_1(-1i, 26833i, true, vec2<u32>(5695u, 4294967295u), vec4<i32>(37253i, i32(-2147483648), 0i, 48638i)), Struct_1(14621i, -19481i, true, vec2<u32>(4294967295u, 0u), vec4<i32>(19778i, 55192i, -8998i, -50119i))), Struct_2(1138f, vec2<i32>(2147483647i, -1i), vec2<i32>(0i, -78516i), Struct_1(-4871i, 2147483647i, false, vec2<u32>(4294967295u, 45782u), vec4<i32>(2147483647i, 5402i, 47194i, -40358i)), Struct_1(3423i, -44005i, true, vec2<u32>(4294967295u, 4294967295u), vec4<i32>(-49265i, i32(-2147483648), 2147483647i, -1i))), Struct_2(-1855f, vec2<i32>(37761i, -1i), vec2<i32>(16887i, -1i), Struct_1(2147483647i, -1i, false, vec2<u32>(1u, 73423u), vec4<i32>(-1i, -1i, -1i, 37555i)), Struct_1(i32(-2147483648), 1i, false, vec2<u32>(4294967295u, 29302u), vec4<i32>(-22500i, -45935i, 2147483647i, -24898i))), Struct_2(121f, vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-1240i, 2565i), Struct_1(16340i, 31534i, false, vec2<u32>(4294967295u, 52853u), vec4<i32>(i32(-2147483648), 1i, -25794i, 16163i)), Struct_1(22555i, -75259i, true, vec2<u32>(4294967295u, 0u), vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), 26022i))), Struct_2(159f, vec2<i32>(-24804i, i32(-2147483648)), vec2<i32>(2147483647i, -558i), Struct_1(2147483647i, -1i, false, vec2<u32>(34166u, 9943u), vec4<i32>(1i, 0i, -6189i, i32(-2147483648))), Struct_1(-22218i, 1i, true, vec2<u32>(0u, 4294967295u), vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 6649i))), Struct_2(-377f, vec2<i32>(12004i, -51287i), vec2<i32>(i32(-2147483648), -1i), Struct_1(-14111i, 31555i, true, vec2<u32>(4294967295u, 76593u), vec4<i32>(0i, 1i, 2147483647i, -12536i)), Struct_1(1i, 1i, false, vec2<u32>(0u, 6013u), vec4<i32>(i32(-2147483648), 0i, 1703i, -50581i))), Struct_2(1000f, vec2<i32>(-1i, -1i), vec2<i32>(-52058i, 67780i), Struct_1(25439i, -27193i, true, vec2<u32>(16085u, 59975u), vec4<i32>(1i, 2147483647i, 18739i, 32815i)), Struct_1(i32(-2147483648), 36055i, false, vec2<u32>(4294967295u, 4294967295u), vec4<i32>(15991i, i32(-2147483648), 69888i, 264i))));

var<private> global1: array<f32, 6> = array<f32, 6>(-1001f, -1920f, -1483f, -486f, 943f, -151f);

var<private> global2: vec2<u32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_clamp_i32(arg_2.b, u_input.c.x << (49658u % 32u), 0i), _wgslsmith_dot_vec4_i32(~countOneBits(arg_1.e), ~(-(~vec4<i32>(arg_2.e.x, u_input.c.x, arg_2.a, 2147483647i)))), arg_0.x, firstLeadingBit(~(~(arg_1.d >> (arg_1.d % vec2<u32>(32u))))), arg_2.e);
    global0 = array<Struct_2, 12>();
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~countOneBits(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.d.x, global2.x, 49032u, var_0.d.x), vec4<u32>(4294967295u, global2.x, 44911u, 24783u)), _wgslsmith_clamp_u32(36804u, var_0.d.x, arg_2.d.x))), 24533u), 12u)];
    let var_2 = !select(arg_0, !select(vec3<bool>(var_0.c, true, var_0.c), !vec3<bool>(var_0.c, false, arg_1.c), var_0.c == true), arg_0.x);
    let var_3 = firstTrailingBit(max(var_1.d.e.x, var_0.b));
    return !select(vec4<bool>(!(arg_1.c && false), false, all(!arg_0.zz), false), select(select(select(vec4<bool>(false, arg_1.c, var_2.x, false), vec4<bool>(var_1.d.c, arg_1.c, true, true), true), vec4<bool>(arg_2.c, true, false, true), vec4<bool>(false, arg_1.c, var_0.c, arg_1.c)), vec4<bool>(!var_0.c, true, false, any(vec3<bool>(arg_0.x, false, var_2.x))), select(!vec4<bool>(true, false, arg_0.x, arg_1.c), !vec4<bool>(true, var_1.e.c, var_1.d.c, arg_2.c), any(vec4<bool>(arg_1.c, var_1.e.c, arg_2.c, arg_1.c)))), select(vec4<bool>(all(vec3<bool>(false, arg_2.c, false)), true, var_1.a == 270f, true), vec4<bool>(var_1.d.c, true, !arg_2.c, false), any(vec4<bool>(true, false, false, true)) && true));
}

fn func_2() -> u32 {
    var var_0 = ~(~u_input.c.x);
    global1 = array<f32, 6>();
    var var_1 = !vec3<bool>(any(!func_3(vec3<bool>(false, true, false), Struct_1(u_input.c.x, u_input.c.x, true, vec2<u32>(3221u, 21438u), vec4<i32>(0i, 2147483647i, -46709i, -1140i)), Struct_1(u_input.c.x, u_input.c.x, false, vec2<u32>(u_input.d, global2.x), vec4<i32>(u_input.b, u_input.a.x, u_input.a.x, u_input.c.x)))), !any(vec2<bool>(false, true)), !(u_input.c.x == max(u_input.c.x, u_input.c.x)));
    global0 = array<Struct_2, 12>();
    let var_2 = global0[_wgslsmith_index_u32(u_input.d, 12u)];
    return firstTrailingBit(global2.x);
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(3324u, 6u)]), 2166f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(10438u, 6u)])) - _wgslsmith_f_op_f32(f32(-1f) * -401f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~select(0u, global2.x, true), 6u)] - _wgslsmith_f_op_f32(round(-183f))))), global1[_wgslsmith_index_u32(~arg_0, 6u)]);
    global0 = array<Struct_2, 12>();
    global1 = array<f32, 6>();
    let var_1 = _wgslsmith_div_u32(~func_2(), _wgslsmith_div_u32(_wgslsmith_add_u32(arg_0, min(87356u, u_input.e) >> (4294967295u % 32u)), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.e, 1u), vec2<u32>(80718u, global2.x)) ^ vec2<u32>(72435u, 1u), ~vec2<u32>(4294967295u, 0u))));
    var var_2 = global1[_wgslsmith_index_u32(~1u, 6u)];
    return Struct_1(u_input.b, -29941i, false, abs(select(~vec2<u32>(arg_0, 34909u), min(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(arg_0, u_input.d), vec2<u32>(32828u, 26953u)), vec2<u32>(50467u, u_input.d)), any(vec4<bool>(true, true, true, true)))), firstLeadingBit(_wgslsmith_mod_vec4_i32(select(~vec4<i32>(2147483647i, 6156i, u_input.b, -28804i), select(vec4<i32>(0i, u_input.b, u_input.b, -1i), vec4<i32>(u_input.b, -15023i, -30240i, -68014i), vec4<bool>(false, false, true, true)), select(true, false, true)), -vec4<i32>(u_input.a.x, u_input.b, 59921i, u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_div_u32(1u, firstTrailingBit(1u) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.e, 37638u), ~vec3<u32>(u_input.d, u_input.d, 4294967295u)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(-37381i), _wgslsmith_add_i32(-2147483647i, 48864i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -741f), 1495f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(639f)))))), abs(abs(vec3<u32>(firstLeadingBit(u_input.e), var_0.d.x, var_0.d.x))));
}

