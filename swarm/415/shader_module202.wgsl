struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
    c: Struct_2,
    d: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
    c: bool,
}

struct Struct_5 {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16>;

var<private> global1: array<vec3<i32>, 15> = array<vec3<i32>, 15>(vec3<i32>(31604i, i32(-2147483648), 3418i), vec3<i32>(1i, 2147483647i, -1i), vec3<i32>(-1i, 19504i, -8004i), vec3<i32>(38593i, -39733i, 1i), vec3<i32>(0i, 2147483647i, -13251i), vec3<i32>(1i, 2147483647i, -29954i), vec3<i32>(16300i, 0i, -1i), vec3<i32>(46278i, -1i, 23088i), vec3<i32>(0i, 18993i, i32(-2147483648)), vec3<i32>(2147483647i, -10196i, 0i), vec3<i32>(9424i, -1i, 0i), vec3<i32>(10098i, 3303i, -12994i), vec3<i32>(-9816i, i32(-2147483648), 2147483647i), vec3<i32>(1i, 14949i, i32(-2147483648)), vec3<i32>(38635i, 63709i, 1i));

var<private> global2: array<vec4<i32>, 31> = array<vec4<i32>, 31>(vec4<i32>(39535i, -22102i, -1i, 1i), vec4<i32>(1i, i32(-2147483648), i32(-2147483648), 2147483647i), vec4<i32>(0i, 2147483647i, 0i, 38622i), vec4<i32>(-40455i, 1i, 1i, 49424i), vec4<i32>(-1i, -72763i, -6360i, 2147483647i), vec4<i32>(-22662i, -1i, i32(-2147483648), 12539i), vec4<i32>(1289i, 0i, 1i, -7631i), vec4<i32>(-77517i, 23976i, 21302i, -12289i), vec4<i32>(2147483647i, -55912i, -12430i, 2147483647i), vec4<i32>(-8175i, 0i, 2147483647i, -1i), vec4<i32>(-20702i, i32(-2147483648), -56062i, 0i), vec4<i32>(19751i, -16898i, 0i, 2147483647i), vec4<i32>(10076i, 47261i, i32(-2147483648), -1i), vec4<i32>(23572i, 2147483647i, 33205i, 1i), vec4<i32>(-1i, 1i, -49699i, 2147483647i), vec4<i32>(0i, -1i, -56790i, -22826i), vec4<i32>(2147483647i, -36171i, -8566i, i32(-2147483648)), vec4<i32>(7985i, 0i, 0i, 784i), vec4<i32>(-32566i, 1i, i32(-2147483648), -17989i), vec4<i32>(i32(-2147483648), 6581i, i32(-2147483648), -36168i), vec4<i32>(8315i, -2478i, 34763i, 70152i), vec4<i32>(-31500i, 1i, 1i, -48805i), vec4<i32>(-1i, 44629i, 0i, 2147483647i), vec4<i32>(18313i, i32(-2147483648), -1i, i32(-2147483648)), vec4<i32>(-27614i, 47229i, 2147483647i, -1i), vec4<i32>(-1i, 2147483647i, 10084i, i32(-2147483648)), vec4<i32>(28239i, -11924i, 0i, -67806i), vec4<i32>(-15206i, 0i, -44786i, -8118i), vec4<i32>(1i, 1i, -19239i, 1i), vec4<i32>(-1i, 7185i, 30318i, 1i), vec4<i32>(-2681i, -29141i, -1i, 2147483647i));

var<private> global3: Struct_2 = Struct_2(true);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> bool {
    let var_0 = Struct_1(~(~u_input.c.zx));
    return false;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = u_input.c.x;
    global2 = array<vec4<i32>, 31>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(548f * _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1597f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-754f, _wgslsmith_f_op_f32(floor(733f)))))));
    let var_2 = global2[_wgslsmith_index_u32(~arg_0.a.x, 31u)];
    var var_3 = vec3<bool>(arg_1.x, global3.a, !func_2());
    return Struct_2(var_3.x);
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_3) -> vec4<bool> {
    global1 = array<vec3<i32>, 15>();
    let var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(abs(u_input.c.yy), ~min(u_input.c.zx, u_input.c.xy) & ~u_input.c.zy), ~(vec2<u32>(select(0u, arg_0, true), _wgslsmith_dot_vec2_u32(u_input.c.xz, vec2<u32>(6106u, u_input.c.x))) | vec2<u32>(~112847u, u_input.c.x)));
    global3 = func_1(Struct_1(~vec2<u32>(6736u, _wgslsmith_mult_u32(1u, 5944u))), vec4<bool>(global3.a, global3.a, arg_2.c.a, !(true & (u_input.b < arg_0))));
    var var_1 = arg_2;
    global0 = array<Struct_2, 16>();
    return select(var_1.d, !select(arg_2.d, vec4<bool>(true, true, var_1.d.x, any(var_1.d)), !(!arg_2.d)), !(global3.a & false));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_5, arg_3: Struct_2) -> Struct_4 {
    let var_0 = vec3<u32>(~15801u, max(~8374u, _wgslsmith_mod_u32((arg_1.a.x ^ u_input.c.x) >> (~1u % 32u), _wgslsmith_add_u32(arg_1.a.x, ~arg_1.b))), _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.b, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_1.b, arg_1.a.x), vec3<u32>(4294967295u, 123854u, 1u)), u_input.c.x >> (35005u % 32u))), ~4294967295u));
    let var_1 = !(u_input.a.x <= -1i);
    global2 = array<vec4<i32>, 31>();
    global0 = array<Struct_2, 16>();
    let var_2 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(ceil(2228f)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.a.x)))), -1264f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c) * _wgslsmith_f_op_f32(f32(-1f) * -172f)))), _wgslsmith_mult_i32(2851i, 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.c)) * 1802f), func_1(Struct_1(u_input.c.zx), func_3(_wgslsmith_div_u32(4294967295u, _wgslsmith_clamp_u32(0u, arg_1.a.x, 22357u)), min(max(vec3<i32>(arg_2.b, u_input.a.x, u_input.a.x), global1[_wgslsmith_index_u32(var_0.x, 15u)]), vec3<i32>(arg_2.b, u_input.a.x, arg_2.b)), arg_1)));
    return Struct_4(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.x, u_input.c.x, 4294967295u, arg_1.a.x), ~vec4<u32>(4490u, 23301u, 1u, arg_1.b))) >> (countOneBits(~(~var_0.x)) % 32u), vec2<bool>(var_1, _wgslsmith_f_op_f32(1101f * _wgslsmith_f_op_f32(abs(261f))) >= arg_0.x), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(376f + 1035f) - _wgslsmith_div_f32(202f, 1176f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -386f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-2358f, _wgslsmith_f_op_f32(-533f - 476f)) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-308f, -454f)))))), Struct_3(vec4<u32>(1u >> (u_input.c.x % 32u), u_input.b, u_input.c.x, u_input.b), 1u, func_1(Struct_1(firstTrailingBit(vec2<u32>(u_input.b, u_input.b))), vec4<bool>(true, true, true, global3.a)), !func_3(1u, _wgslsmith_mult_vec3_i32(global1[_wgslsmith_index_u32(9751u, 15u)], vec3<i32>(15680i, u_input.d, 2147483647i)), Struct_3(vec4<u32>(4294967295u, 4294967295u, u_input.c.x, u_input.b), 68139u, global0[_wgslsmith_index_u32(u_input.c.x, 16u)], vec4<bool>(true, global3.a, global3.a, false)))), Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1483f, -1301f, -998f))))), u_input.a.x, _wgslsmith_f_op_f32(floor(-432f)), func_1(Struct_1(firstTrailingBit(u_input.c.zz)), vec4<bool>(true, true, true, true))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(max(41221u << (u_input.b % 32u), 1u), ~1u), 16u)]);
    var var_1 = !func_2();
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(step(1484f, 1949f)), _wgslsmith_f_op_f32(min(103f, 557f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1735f, 1046f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-132f, -1302f)))), vec2<bool>(global3.a | true, !var_0.c))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-106f, _wgslsmith_f_op_f32(f32(-1f) * -418f)))));
    var var_4 = Struct_3(reverseBits(_wgslsmith_add_vec4_u32(reverseBits(min(vec4<u32>(var_0.a, u_input.c.x, 5399u, 35815u), vec4<u32>(u_input.b, u_input.c.x, 4294967295u, 9547u))), ~(~vec4<u32>(u_input.b, u_input.c.x, u_input.c.x, 19006u)))), 4294967295u, func_1(Struct_1((vec2<u32>(1u, u_input.b) & vec2<u32>(u_input.c.x, var_0.a)) ^ ~vec2<u32>(var_0.a, 41812u)), vec4<bool>(true, select(2326f < var_3.x, var_0.b.x | var_0.c, !var_0.c), true, true)), !(!vec4<bool>(false, true, any(var_0.b), false)));
    global3 = Struct_2(func_1(Struct_1(vec2<u32>(firstTrailingBit(var_0.a), ~1u)), !select(vec4<bool>(false, var_4.c.a, global3.a, var_0.b.x), var_4.d, vec4<bool>(var_0.c, var_0.b.x, false, false))).a);
    let var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-185f * -1037f), _wgslsmith_f_op_f32(var_3.x - var_3.x))), var_3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x);
}

