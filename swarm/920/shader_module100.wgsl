struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 30> = array<vec4<i32>, 30>(vec4<i32>(-48103i, 1i, 2147483647i, 2147483647i), vec4<i32>(20196i, 1292i, 1i, 2783i), vec4<i32>(26475i, -46880i, -89719i, 50597i), vec4<i32>(45180i, -10085i, 33684i, -7433i), vec4<i32>(2147483647i, 24872i, 6820i, 25624i), vec4<i32>(2147483647i, 16518i, 46031i, 1i), vec4<i32>(65284i, 2147483647i, 18727i, 2147483647i), vec4<i32>(42494i, 2147483647i, 26054i, 2147483647i), vec4<i32>(92i, i32(-2147483648), 0i, 2147483647i), vec4<i32>(-1703i, 0i, -1i, i32(-2147483648)), vec4<i32>(101316i, i32(-2147483648), 0i, -1i), vec4<i32>(1i, -27478i, 1i, 0i), vec4<i32>(2147483647i, 0i, 51704i, 1i), vec4<i32>(i32(-2147483648), i32(-2147483648), 33970i, 986i), vec4<i32>(51985i, 8857i, 0i, -47414i), vec4<i32>(11477i, -1i, -55722i, 14149i), vec4<i32>(57277i, 58334i, 1913i, -17953i), vec4<i32>(0i, 2147483647i, 1i, -29284i), vec4<i32>(17838i, 21543i, 61257i, -19719i), vec4<i32>(-1i, -1i, -10226i, -3844i), vec4<i32>(1i, -1i, -35957i, -16341i), vec4<i32>(0i, -5289i, -8273i, 34155i), vec4<i32>(1i, 2147483647i, 3062i, 17850i), vec4<i32>(0i, -29341i, -1i, i32(-2147483648)), vec4<i32>(-1i, -1i, i32(-2147483648), -9855i), vec4<i32>(-3982i, -24002i, 92885i, -6052i), vec4<i32>(i32(-2147483648), 1i, 18334i, 29351i), vec4<i32>(i32(-2147483648), -25591i, 0i, -12085i), vec4<i32>(0i, 4053i, i32(-2147483648), i32(-2147483648)), vec4<i32>(2147483647i, 20316i, 34916i, -1i));

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 4294967295u, 93735u, 4294967295u);

var<private> global2: array<Struct_1, 32>;

var<private> global3: f32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: i32) -> vec3<bool> {
    global3 = arg_0;
    var var_0 = global1.zyz;
    let var_1 = !(abs(0i) >= _wgslsmith_dot_vec2_i32(select(u_input.a.zx ^ u_input.a.xz, u_input.a.xy, all(vec4<bool>(false, false, true, false))), u_input.a.yx));
    var var_2 = select(vec2<bool>(true, arg_1.x), !arg_1, arg_1.x);
    let var_3 = arg_1;
    return !vec3<bool>(var_3.x, !var_2.x | any(!vec4<bool>(false, false, arg_1.x, true)), any(var_3));
}

fn func_3(arg_0: vec3<u32>) -> vec4<u32> {
    return _wgslsmith_mult_vec4_u32(~((_wgslsmith_mod_vec4_u32(vec4<u32>(16701u, 4294967295u, 57037u, 28120u), vec4<u32>(u_input.d, 6506u, arg_0.x, 15393u)) & ~vec4<u32>(4294967295u, 17355u, u_input.e.x, global1.x)) >> (((vec4<u32>(u_input.d, arg_0.x, global1.x, global1.x) >> (vec4<u32>(global1.x, global1.x, arg_0.x, arg_0.x) % vec4<u32>(32u))) & ~vec4<u32>(11031u, 1u, u_input.d, arg_0.x)) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.d ^ 4294967295u, 37901u), u_input.e.x, _wgslsmith_sub_u32(~u_input.d, select(1u, 30523u, true)), u_input.e.x), vec4<u32>(~global1.x, global1.x, arg_0.x, 4294967295u) & vec4<u32>(1u, 1u, arg_0.x, arg_0.x)));
}

fn func_2() -> bool {
    global1 = ~func_3(min(vec3<u32>(0u, ~0u, u_input.e.x & 32064u), ~(~global1.wyx)));
    global1 = vec4<u32>(_wgslsmith_mod_u32(global1.x, min(_wgslsmith_mod_u32(u_input.d, 75413u), u_input.d)), 12126u, abs(~0u), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(global1.ww, global1.yz >> (~u_input.e % vec2<u32>(32u))), select(u_input.e, ~u_input.e, select(vec2<bool>(true, true), func_1(-349f, vec2<bool>(false, true), u_input.a.x).yx, select(vec2<bool>(false, false), vec2<bool>(true, true), true)))));
    var var_0 = u_input.c;
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-486f, 370f)))) - _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -1130f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(240f, _wgslsmith_f_op_f32(select(616f, -121f, true))) - _wgslsmith_f_op_f32(-118f + -218f))));
    let var_1 = func_1(-203f, !(!vec2<bool>(all(vec4<bool>(true, true, true, false)), func_1(-528f, vec2<bool>(false, false), 0i).x)), _wgslsmith_add_i32(-9009i << ((~u_input.d ^ _wgslsmith_add_u32(1u, 1u)) % 32u), _wgslsmith_clamp_i32(-_wgslsmith_mult_i32(-1i, -21041i), 43793i, 0i))).x;
    return any(!vec3<bool>(var_1, false, all(vec2<bool>(false, true)))) | any(!vec4<bool>(var_1 || var_1, true, var_1 | var_1, var_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mod_vec2_i32(min(u_input.a.zz, vec2<i32>(-9947i, 30654i)) ^ vec2<i32>(6984i, u_input.a.x), ~(u_input.a.xy << (u_input.e % vec2<u32>(32u)))) << (~global1.xz % vec2<u32>(32u));
    var var_1 = global2[_wgslsmith_index_u32(1u, 32u)];
    let var_2 = vec4<bool>(all(func_1(_wgslsmith_f_op_f32(trunc(-1874f)), vec2<bool>(var_1.d.x, true), _wgslsmith_mult_i32(reverseBits(var_0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 42573i), u_input.a.xx)))), !(!var_1.b.x), any(vec2<bool>(-11075i != reverseBits(var_1.c.x), var_1.b.x)), select(var_1.d.x, false, true));
    var var_3 = Struct_1(-vec3<i32>(-1557i, 27803i, var_0.x), vec2<bool>(false, true), u_input.a, var_2.zw, u_input.a.xx);
    let var_4 = var_2.zyz;
    let var_5 = vec2<bool>(var_1.d.x, func_2());
    var var_6 = global2[_wgslsmith_index_u32(1u, 32u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(-vec4<i32>(_wgslsmith_mod_i32(var_3.a.x, 53682i), abs(-18374i), var_0.x, 1i >> (global1.x % 32u)), global0[_wgslsmith_index_u32(~(~1u), 30u)], vec4<i32>(-u_input.c, var_3.e.x, _wgslsmith_dot_vec3_i32(var_1.c, vec3<i32>(u_input.b, 2147483647i, -1i)), u_input.b)), u_input.e.x, ~vec3<u32>(89118u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, u_input.d, 3520u, u_input.d), vec4<u32>(global1.x, u_input.e.x, u_input.d, 0u)), u_input.d), ~vec4<i32>(2147483647i, abs(var_6.e.x), -25190i, _wgslsmith_mod_i32(select(var_0.x, var_1.e.x, var_4.x), var_1.a.x)));
}

