struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> bool {
    return all(select(!arg_0.d.b.xyz, !select(select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 5u)], false, false), arg_0.d.b.xww, arg_0.d.a), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.c.x, 5u)], global0[_wgslsmith_index_u32(arg_0.c.x, 5u)], arg_1), true), arg_0.b >= countOneBits(-1i)));
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_2(countOneBits(~vec2<i32>(6663i, i32(-1i) * -55644i)), select(_wgslsmith_div_i32(0i, 1i), 0i, true), u_input.b.yx, Struct_1(any(!vec3<bool>(arg_0.x, global0[_wgslsmith_index_u32(9466u, 5u)], global0[_wgslsmith_index_u32(0u, 5u)])), select(select(vec4<bool>(false, true, true, true), arg_0, all(arg_0.ww)), arg_0, vec4<bool>(func_3(Struct_2(vec2<i32>(27227i, 2147483647i), 13766i, u_input.b.zx, Struct_1(false, vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(7487u, 5u)]), 298f)), arg_0.x), arg_0.x, false, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1163f, 1876f))) - -969f)));
    let var_1 = ~_wgslsmith_div_vec4_u32(max(select(vec4<u32>(u_input.b.x, 26570u, 63898u, 4294967295u), vec4<u32>(var_0.c.x, 12871u, var_0.c.x, var_0.c.x), vec4<bool>(arg_0.x, true, false, global0[_wgslsmith_index_u32(var_0.c.x, 5u)])) >> (vec4<u32>(u_input.b.x, 36026u, 78001u, 25862u) % vec4<u32>(32u)), vec4<u32>(var_0.c.x, 0u, var_0.c.x, 1u)), select(_wgslsmith_add_vec4_u32(~vec4<u32>(1u, 45228u, u_input.a.x, var_0.c.x), ~vec4<u32>(1u, 4294967295u, u_input.b.x, 38643u)), abs(select(vec4<u32>(u_input.b.x, 56127u, u_input.a.x, u_input.a.x), vec4<u32>(0u, u_input.a.x, var_0.c.x, 0u), var_0.d.a)), !(!vec4<bool>(true, var_0.d.a, var_0.d.b.x, false))));
    let var_2 = var_0.d;
    let var_3 = arg_0;
    var var_4 = var_0.b;
    return var_0.d;
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = func_2(!vec4<bool>(!global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, u_input.a.x), 5u)], false, global0[_wgslsmith_index_u32(arg_0.x, 5u)], true));
    let var_1 = countOneBits(-max(_wgslsmith_dot_vec2_i32(vec2<i32>(16711i, -2147483647i), ~vec2<i32>(0i, 23231i)), -2147483647i));
    let var_2 = ~vec4<u32>(arg_0.x | ~reverseBits(u_input.b.x), _wgslsmith_mult_u32(0u, ~u_input.b.x), firstTrailingBit(u_input.b.x), ~17194u);
    var_0 = func_2(vec4<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 5u)], all(vec2<bool>(var_0.c <= var_0.c, true))));
    global0 = array<bool, 5>();
    return Struct_2(-vec2<i32>(var_1, -47090i), (~(-var_1) >> (_wgslsmith_sub_u32(var_2.x, u_input.b.x) % 32u)) ^ 0i, vec2<u32>(_wgslsmith_sub_u32(~1u, 22107u), 21438u), Struct_1(any(select(select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(334u, 5u)], global0[_wgslsmith_index_u32(var_2.x, 5u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(var_2.x, 5u)], global0[_wgslsmith_index_u32(51332u, 5u)], var_0.b.x), var_0.b), select(vec4<bool>(var_0.a, false, global0[_wgslsmith_index_u32(arg_0.x, 5u)], global0[_wgslsmith_index_u32(58198u, 5u)]), vec4<bool>(false, var_0.b.x, true, var_0.a), vec4<bool>(var_0.b.x, true, global0[_wgslsmith_index_u32(32715u, 5u)], global0[_wgslsmith_index_u32(143u, 5u)])), vec4<bool>(global0[_wgslsmith_index_u32(var_2.x, 5u)], true, true, true))), select(var_0.b, func_2(var_0.b).b, !select(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 5u)], var_0.b.x, true, false), var_0.b, false)), var_0.c));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = arg_0;
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    var_0 = Struct_2(select(_wgslsmith_sub_vec2_i32(var_0.a, _wgslsmith_add_vec2_i32(arg_0.a, arg_0.a) | abs(arg_0.a)), arg_0.a, var_0.d.b.yz), reverseBits(~var_0.a.x), vec2<u32>(~(~arg_0.c.x), ~_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_add_u32(u_input.b.x, 24598u))), Struct_1(!func_1(u_input.a.xy).d.b.x, vec4<bool>(true, !func_2(vec4<bool>(arg_0.d.a, global0[_wgslsmith_index_u32(1u, 5u)], true, var_0.d.a)).a, true, _wgslsmith_add_i32(23394i, arg_0.a.x) != var_0.b), -282f));
    var_0 = Struct_2(firstTrailingBit(-_wgslsmith_mod_vec2_i32(func_1(var_0.c).a, firstLeadingBit(vec2<i32>(var_0.b, var_0.b)))), -25711i, _wgslsmith_mod_vec2_u32(vec2<u32>(~_wgslsmith_div_u32(16452u, u_input.a.x), ~0u), arg_0.c), func_2(select(vec4<bool>(false, true, false, func_1(vec2<u32>(1u, 53617u)).d.b.x), vec4<bool>(func_2(arg_0.d.b).b.x, any(var_0.d.b), !global0[_wgslsmith_index_u32(arg_0.c.x, 5u)], func_2(arg_0.d.b).a), !global0[_wgslsmith_index_u32(~36897u, 5u)])));
    return func_1(arg_0.c & countOneBits(arg_0.c)).d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    let var_0 = func_4(func_1(max(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.zx, u_input.b.yx), u_input.b.xx), ~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a.yz))));
    var var_1 = Struct_2(select(vec2<i32>(-min(49791i, 8762i), _wgslsmith_dot_vec3_i32(max(vec3<i32>(-1i, -2147483647i, 28059i), vec3<i32>(-1901i, 34991i, -38900i)), ~vec3<i32>(-1i, 0i, -18015i))), firstLeadingBit(~(vec2<i32>(6299i, 0i) << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)))), select(!vec2<bool>(false, var_0.a), select(func_1(vec2<u32>(u_input.b.x, 1u)).d.b.wx, !var_0.b.xx, all(var_0.b.yz)), vec2<bool>(func_4(Struct_2(vec2<i32>(-7239i, -44220i), 2147483647i, vec2<u32>(1u, 1u), Struct_1(false, var_0.b, var_0.c))).a, true))), 1i, _wgslsmith_sub_vec2_u32(u_input.a.yz, u_input.b.yx), Struct_1(global0[_wgslsmith_index_u32(func_1(firstLeadingBit(u_input.a.xz | vec2<u32>(u_input.a.x, u_input.a.x))).c.x, 5u)], !select(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(20347u, 5u)], true), var_0.b, true), _wgslsmith_f_op_f32(-var_0.c)));
    global0 = array<bool, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(7696u, var_1.c.x), ~(var_1.c.x >> (var_1.c.x % 32u)), vec4<i32>(~_wgslsmith_dot_vec3_i32(-vec3<i32>(1i, var_1.a.x, var_1.b), vec3<i32>(var_1.b, -1i, var_1.a.x)), -1i, _wgslsmith_dot_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(0i, var_1.a.x, 45887i), vec3<i32>(var_1.b, -19784i, -2147483647i)), vec3<i32>(var_1.a.x, ~(-17284i), var_1.a.x >> (var_1.c.x % 32u))), -2147483647i), vec3<u32>(max(reverseBits(~1u), var_1.c.x), reverseBits(firstLeadingBit(abs(u_input.a.x))), ~firstLeadingBit(countOneBits(u_input.a.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d.c, var_0.c, var_1.d.c) + vec3<f32>(var_1.d.c, var_1.d.c, var_0.c)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1824f, var_0.c, var_0.c)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.c, var_0.c, var_0.c)))));
}

