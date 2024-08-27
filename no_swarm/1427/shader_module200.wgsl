struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec2<u32>(50u, 1u), vec3<i32>(-1i, -35904i, 18020i)), Struct_1(vec2<u32>(69985u, 0u), vec3<i32>(2147483647i, i32(-2147483648), -3282i)), Struct_1(vec2<u32>(4294967295u, 1u), vec3<i32>(0i, 61081i, -1i)), Struct_1(vec2<u32>(41603u, 1u), vec3<i32>(-1i, 0i, 24875i)), Struct_1(vec2<u32>(1u, 0u), vec3<i32>(42463i, 7551i, 17706i)), Struct_1(vec2<u32>(1u, 0u), vec3<i32>(55401i, -1i, -1i)), Struct_1(vec2<u32>(21886u, 63823u), vec3<i32>(0i, 48659i, 2147483647i)), Struct_1(vec2<u32>(6190u, 1u), vec3<i32>(-21233i, 27195i, 0i)), Struct_1(vec2<u32>(0u, 0u), vec3<i32>(50698i, 2147483647i, -29727i)), Struct_1(vec2<u32>(0u, 17867u), vec3<i32>(2648i, -1i, -48612i)), Struct_1(vec2<u32>(1u, 4294967295u), vec3<i32>(50171i, -32638i, 2147483647i)), Struct_1(vec2<u32>(66725u, 0u), vec3<i32>(-2355i, 16988i, 28326i)), Struct_1(vec2<u32>(868u, 105152u), vec3<i32>(-1i, -1i, 0i)), Struct_1(vec2<u32>(1u, 0u), vec3<i32>(7348i, 52332i, 24380i)));

var<private> global1: array<Struct_1, 3>;

var<private> global2: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> u32 {
    var var_0 = !vec3<bool>(true, true, !(any(global2.c.b.zxx) && global2.a.b.x));
    let var_1 = select(global2.c.b.zzy, select(vec3<bool>(var_0.x, select(true, true, true), all(vec2<bool>(false, global2.a.b.x))), select(!vec3<bool>(global2.a.b.x, global2.c.b.x, true), vec3<bool>(any(vec2<bool>(var_0.x, global2.a.b.x)), true, true & var_0.x), !any(var_0.zz)), vec3<bool>(!(!global2.c.b.x), any(vec4<bool>(false, false, var_0.x, global2.c.b.x)), true)), _wgslsmith_clamp_u32(u_input.a.x, ~_wgslsmith_mult_u32(u_input.b.x, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(global2.d.a.x, u_input.a.x), firstLeadingBit(global2.d.a))) > 35924u);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1854f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -642f))))));
    let var_3 = var_2;
    let var_4 = _wgslsmith_mult_vec4_i32(vec4<i32>(1i, -1i, _wgslsmith_dot_vec2_i32(~reverseBits(global2.d.b.yz), global2.c.d.b.yy), _wgslsmith_mod_i32(~(~global2.a.c.b.x), u_input.d.x)), ~firstLeadingBit(-abs(vec4<i32>(6210i, global2.a.d.b.x, u_input.d.x, 1i))));
    return ~u_input.b.x;
}

fn func_3(arg_0: f32, arg_1: i32) -> vec3<u32> {
    global0 = array<Struct_1, 14>();
    let var_0 = Struct_4(vec4<i32>(~(-_wgslsmith_mod_i32(-15673i, 2147483647i)), _wgslsmith_mod_i32(-(arg_1 << (u_input.c % 32u)), 3867i), firstLeadingBit(global2.d.b.x), u_input.d.x), vec2<f32>(-1058f, 913f), global1[_wgslsmith_index_u32(u_input.a.x, 3u)]);
    let var_1 = ~55323u;
    global1 = array<Struct_1, 3>();
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, 506f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, var_0.b.x)) - _wgslsmith_f_op_vec2_f32(min(var_0.b, var_0.b)))))))));
    return vec3<u32>(var_0.c.a.x, 110757u ^ ~(~(~global2.a.c.a.x)), ~func_2());
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: Struct_3) -> f32 {
    var var_0 = Struct_2(firstTrailingBit(vec4<u32>(u_input.a.x, ~func_2(), ~(~72015u), ~(~arg_2.b.x))), !global2.a.b, Struct_1(vec2<u32>(func_2(), ~(85519u >> (global2.c.a.x % 32u))), global2.a.d.b), global1[_wgslsmith_index_u32(4665u, 3u)], global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~arg_2.a.a.zyz, func_3(arg_0.x, 2147483647i)), vec3<u32>(21498u, ~4294967295u, 16147u)), 14u)]);
    let var_1 = arg_2;
    var var_2 = reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(select(~var_1.a.d.b.x, -8205i, arg_0.x == 1000f), ~reverseBits(1i), i32(-1i) * -var_1.d.b.x), var_0.c.b));
    let var_3 = Struct_4(abs(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-52897i, u_input.d.x, arg_2.d.b.x, 2147483647i), vec4<i32>(-6620i, 20955i, -1i, 53284i), vec4<i32>(2147483647i, -3792i, 1i, arg_2.c.c.b.x)), ~vec4<i32>(global2.d.b.x, -2147483647i, arg_2.c.c.b.x, var_0.d.b.x))) | ~(firstLeadingBit(vec4<i32>(1i, -1i, var_0.d.b.x, -1i)) << (select(var_0.a, vec4<u32>(1u, 1u, global2.d.a.x, 1u), global2.c.b.x) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_0)) * arg_0)), Struct_1(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.ww, var_0.a.zy), var_0.e.a) >> (~max(global2.a.c.a, u_input.b.zx) % vec2<u32>(32u)), var_0.e.b));
    global2 = arg_2;
    return _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-593f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_0.x)))), -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(946f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(772f - -719f))), 496f));
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -564f))));
    var var_1 = _wgslsmith_mod_u32(global2.c.a.x, _wgslsmith_dot_vec4_u32(global2.a.a & select(vec4<u32>(4081u, u_input.c, 14792u, 1u), u_input.a, vec4<bool>(global2.c.b.x, global2.a.b.x, false, true)), abs(global2.a.a ^ u_input.a)) & u_input.c);
    let var_2 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-300f, 1116f)) + _wgslsmith_f_op_f32(floor(584f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-929f, -417f)), vec4<bool>(global2.a.b.x, true, true, global2.a.b.x), Struct_3(global2.c, vec2<u32>(global2.b.x, 18826u), global2.a, global1[_wgslsmith_index_u32(73086u, 3u)]))) * _wgslsmith_f_op_f32(351f - _wgslsmith_div_f32(-1138f, -758f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(805f, 871f))), vec2<f32>(_wgslsmith_f_op_f32(ceil(794f)), _wgslsmith_f_op_f32(ceil(-881f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(u_input.a.xy, ~abs(firstLeadingBit(u_input.a.yy))), global2.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x)))))), vec4<i32>(abs(2147483647i), -max(global2.d.b.x, global2.a.c.b.x & global2.a.d.b.x), 0i, global2.c.d.b.x));
}

