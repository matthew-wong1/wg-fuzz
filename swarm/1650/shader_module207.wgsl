struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
    d: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: Struct_1,
    d: vec3<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: bool;

var<private> global2: array<f32, 6>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    global1 = !(!(_wgslsmith_mod_i32(u_input.c.x, 0i) <= ~0i));
    let var_0 = 2147483647i;
    let var_1 = _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(~global0.x, ~4294967295u, 0u)), vec3<u32>(~(~0u), 42844u, _wgslsmith_sub_u32(~global0.x, 64684u))), _wgslsmith_div_vec3_u32(firstTrailingBit(reverseBits(vec3<u32>(33323u, global0.x, 25778u))), vec3<u32>(firstTrailingBit(global0.x & global0.x), ~65420u, ~(~global0.x))));
    var var_2 = ~min(var_1.x, ~0u);
    return global0.x;
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = max(~vec2<i32>(-28634i, -12445i), u_input.c.xx);
    let var_1 = ~abs(abs(4294967295u));
    global1 = !(arg_0 == 4294967295u);
    let var_2 = -u_input.b.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(124f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(arg_0, 6u)])) * 1001f), -1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -916f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(125f + -1000f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0.x, 6u)]), -1182f, global2[_wgslsmith_index_u32(32823u & global0.x, 6u)]))));
    return global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1, arg_0 >> (global0.x % 32u), _wgslsmith_add_u32(arg_0, 1u), ~1u), ~vec4<u32>(24809u, _wgslsmith_sub_u32(0u, global0.x), ~1u, _wgslsmith_add_u32(0u, global0.x))) | 1u, 6u)];
}

fn func_1() -> Struct_3 {
    var var_0 = vec3<u32>(_wgslsmith_add_u32(42552u, reverseBits(global0.x)), ~global0.x >> (min(countOneBits(global0.x), _wgslsmith_mod_u32(global0.x, 0u)) % 32u), firstTrailingBit(~1u) << (global0.x % 32u)) << (firstTrailingBit(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(global0.x, 32501u, global0.x), select(vec3<u32>(31428u, global0.x, global0.x), vec3<u32>(global0.x, 53368u, 0u), vec3<bool>(true, false, true)), vec3<u32>(global0.x, global0.x, 0u) & vec3<u32>(1u, global0.x, global0.x)), vec3<u32>(global0.x, 4986u, 2642u))) % vec3<u32>(32u));
    var var_1 = select(_wgslsmith_mod_vec2_u32(vec2<u32>(select(global0.x, var_0.x, -1i < u_input.b.x), global0.x), ~global0.zx), global0.zy, vec2<bool>(global2[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-420f, 941f, global2[_wgslsmith_index_u32(global0.x, 6u)]))), 6u)] != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(0u)) + _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(global0.x, 6u)]))), true));
    var var_2 = u_input.c;
    var_2 = (-(~_wgslsmith_mod_vec3_i32(vec3<i32>(var_2.x, u_input.c.x, u_input.b.x), u_input.a.yyw)) ^ _wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.b.x, var_2.x, -15437i), reverseBits(u_input.c))) >> (vec3<u32>(~var_1.x, 30690u, _wgslsmith_sub_u32(59449u, global0.x)) % vec3<u32>(32u));
    global0 = select(vec3<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(111853u, 1u, var_1.x)), max(vec3<u32>(62371u, 1u, 1u), vec3<u32>(global0.x, 37146u, var_1.x)) << (vec3<u32>(var_1.x, global0.x, 4294967295u) % vec3<u32>(32u))), ~abs(~0u), _wgslsmith_dot_vec4_u32(~vec4<u32>(53986u, 6546u, 29879u, var_1.x), vec4<u32>(var_1.x, 3170u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 0u, 4294967295u, global0.x), vec4<u32>(global0.x, var_0.x, global0.x, 4294967295u)), global0.x))), abs(min(reverseBits(vec3<u32>(16270u, var_0.x, 42765u)), ~vec3<u32>(var_1.x, var_1.x, var_1.x))), !(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))));
    return Struct_3(firstTrailingBit(vec4<u32>(4294967295u | min(1u, global0.x), _wgslsmith_sub_u32(var_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.x, 0u), vec3<u32>(0u, 1u, var_0.x))), max(20341u, select(var_0.x, var_0.x, true)), 36046u)), _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(max(1u, 12388u), 6u)], -1000f)), Struct_1(0i, any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(~(var_0.x >> (global0.x % 32u)), 6u)]))), u_input.c, _wgslsmith_dot_vec2_i32(reverseBits(_wgslsmith_clamp_vec2_i32(max(vec2<i32>(u_input.a.x, 0i), u_input.c.xx), -var_2.yx, firstLeadingBit(var_2.yz))), vec2<i32>(1i, -u_input.b.x)));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3) -> bool {
    global2 = array<f32, 6>();
    let var_0 = ~(~u_input.a);
    global2 = array<f32, 6>();
    var var_1 = arg_1.c;
    var var_2 = !(!(!vec2<bool>(-3337i >= arg_1.c.a, true)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec4<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false)), func_4(_wgslsmith_div_vec3_f32(vec3<f32>(-917f, -200f, 229f), vec3<f32>(global2[_wgslsmith_index_u32(24591u, 6u)], global2[_wgslsmith_index_u32(global0.x, 6u)], global2[_wgslsmith_index_u32(global0.x, 6u)])), func_1()), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true)), any(vec3<bool>(true, false, true))), !select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), any(vec3<bool>(true, false, true)) || all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true))));
    let var_1 = _wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(global0.x, global0.x, 0u, 1u), vec4<u32>(39046u, 44764u, global0.x, global0.x)), countOneBits(vec4<u32>(40085u, global0.x, 4294967295u, 0u))), vec4<u32>(~0u << (~global0.x % 32u), global0.x, 4294967295u, ~55468u));
    var var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(abs(3304i), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(var_2.x, 0i), var_2.zx << (var_1.yz % vec2<u32>(32u))), vec2<i32>(43872i & var_2.x, var_2.x ^ 36632i))), vec4<u32>(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(5325u, 1u, 12197u), var_1.wxx)), var_1.x, _wgslsmith_mult_u32(1u, ~global0.x), ~abs(var_1.x)) >> ((select(vec4<u32>(31061u, 0u, var_1.x, 0u) << (var_1 % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(var_1, vec4<u32>(global0.x, 0u, 12827u, 40090u)), var_0) << (vec4<u32>(global0.x, _wgslsmith_mult_u32(global0.x, 14063u), ~1u, global0.x) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_mult_u32(func_1().a.x, _wgslsmith_dot_vec3_u32(var_1.zxx >> (select(var_1.yxy, var_1.xxy, var_0.x) % vec3<u32>(32u)), vec3<u32>(4294967295u, global0.x, var_1.x))), reverseBits(vec3<u32>(60714u, firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global0.x, 0u), vec3<u32>(var_1.x, global0.x, var_1.x))), global0.x)), ~(-vec2<i32>(~var_2.x, var_2.x)));
}

