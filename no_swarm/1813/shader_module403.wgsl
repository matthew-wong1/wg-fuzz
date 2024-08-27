struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: f32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec2<f32>, 28>;

var<private> global2: array<f32, 31> = array<f32, 31>(-1330f, -1000f, -376f, 1307f, 252f, 553f, 1787f, 142f, -108f, 369f, 497f, -812f, 939f, -1000f, 172f, 727f, 1659f, -1797f, -185f, -1000f, 1016f, -1000f, 648f, -1292f, -117f, -1180f, 1500f, 724f, 2191f, -136f, 1369f);

var<private> global3: Struct_3;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec4<u32> {
    global1 = array<vec2<f32>, 28>();
    global2 = array<f32, 31>();
    var var_0 = Struct_3(u_input.e.yy, reverseBits(vec4<i32>(0i, ~(-3041i), -32649i, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -679f)), u_input.e);
    let var_1 = select(vec3<bool>(any(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), vec3<bool>(false, true, true), true)), true, true), vec3<bool>(true, true, !any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))), vec3<bool>(true, true, true));
    let var_2 = ~global3.b;
    return vec4<u32>(max(~u_input.e.x >> (u_input.e.x % 32u), ~30057u), 72018u >> (_wgslsmith_sub_u32(firstLeadingBit(abs(72026u)), _wgslsmith_sub_u32(~23608u, max(82658u, u_input.e.x))) % 32u), var_0.a.x, ~(~var_0.a.x));
}

fn func_2(arg_0: i32, arg_1: u32) -> vec2<u32> {
    let var_0 = 1i;
    let var_1 = Struct_2(1u, _wgslsmith_mod_u32(~_wgslsmith_mod_u32(global3.d.x, 4294967295u), 4294967295u >> (max(u_input.b.x | 1u, ~arg_1) % 32u)), global3.a, func_3(), vec2<bool>(all(vec2<bool>(any(vec2<bool>(false, true)), true)), 570f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(132u, 31u)]))));
    var var_2 = u_input.b.x;
    global0 = !var_1.e.x;
    let var_3 = any(!var_1.e);
    return vec2<u32>(~25260u, u_input.e.x);
}

fn func_1() -> Struct_2 {
    let var_0 = 0u;
    let var_1 = Struct_3(max(vec2<u32>(0u, global3.d.x) & select(vec2<u32>(global3.a.x, u_input.b.x), select(u_input.b.xz, u_input.e.xw, true), select(false, false, true)), ~func_2(u_input.a.x, 7952u)), _wgslsmith_div_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -7393i, -2147483647i, global3.b.x), vec4<i32>(-1i, -2147483647i, 48613i, -1i)), vec4<i32>(global3.b.x, abs(reverseBits(31005i)), -(13237i >> (u_input.e.x % 32u)), u_input.d)), -147f, _wgslsmith_mod_vec4_u32(~(~abs(global3.d)), firstTrailingBit(~abs(global3.d))));
    global0 = !(false && all(select(vec2<bool>(false, false), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)))));
    var var_2 = var_1;
    var_2 = Struct_3(global3.d.zz, vec4<i32>(_wgslsmith_clamp_i32(firstLeadingBit(firstLeadingBit(var_1.b.x)), u_input.d, ~(var_1.b.x ^ 1i)), 0i, firstTrailingBit(reverseBits(var_1.b.x)), ~(1i << (reverseBits(var_2.d.x) % 32u))), var_2.c, _wgslsmith_div_vec4_u32(min(vec4<u32>(~global3.d.x, u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, 1u, var_1.d.x, 40972u), vec4<u32>(global3.a.x, var_2.d.x, var_0, 4170u)), var_1.a.x), global3.d & ~vec4<u32>(u_input.b.x, 4294967295u, var_2.a.x, var_0)), vec4<u32>(_wgslsmith_clamp_u32(~var_0, _wgslsmith_div_u32(var_1.d.x, 7710u), abs(39349u)), global3.a.x, var_2.d.x, _wgslsmith_sub_u32(8641u, reverseBits(var_2.d.x)))));
    return Struct_2(_wgslsmith_dot_vec3_u32(u_input.b, _wgslsmith_clamp_vec3_u32(vec3<u32>(firstTrailingBit(global3.a.x), var_2.d.x, var_2.d.x), u_input.b, firstTrailingBit(_wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(global3.d.x, var_0, global3.d.x))))), max(global3.d.x, global3.a.x), func_3().xw, var_1.d, vec2<bool>(false, any(vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_clamp_u32(u_input.b.x | global3.a.x, ~(~u_input.e.x), 62935u);
    global1 = array<vec2<f32>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec4_u32(func_1().d, vec4<u32>(89819u, var_1, firstTrailingBit(var_1), 4294967295u)), ~(vec2<u32>(4294967295u, var_0.b) & vec2<u32>(16780u, ~u_input.b.x)));
}

