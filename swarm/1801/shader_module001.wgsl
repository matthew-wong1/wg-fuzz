struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec3<bool>,
    d: vec4<bool>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1> = array<f32, 1>(932f);

var<private> global1: f32;

var<private> global2: Struct_1 = Struct_1(vec2<u32>(0u, 0u));

var<private> global3: bool;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = reverseBits(vec3<u32>(firstLeadingBit(35259u) << (~arg_0.a.x % 32u), ~_wgslsmith_mult_u32(arg_0.a.x, 62876u), _wgslsmith_dot_vec2_u32(vec2<u32>(global2.a.x, u_input.c), arg_1.a & arg_1.a)) | _wgslsmith_sub_vec3_u32(~select(vec3<u32>(arg_0.a.x, u_input.c, u_input.c), vec3<u32>(27341u, 0u, 1u), vec3<bool>(true, true, false)), vec3<u32>(4294967295u, arg_1.a.x, ~1u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-529f, -169f, global0[_wgslsmith_index_u32(global2.a.x, 1u)]))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0[_wgslsmith_index_u32(global2.a.x, 1u)], 474f, 800f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(226f, 1127f, 244f) - vec3<f32>(global0[_wgslsmith_index_u32(101880u, 1u)], global0[_wgslsmith_index_u32(arg_0.a.x, 1u)], global0[_wgslsmith_index_u32(u_input.c, 1u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(182f, global0[_wgslsmith_index_u32(global2.a.x, 1u)], -977f) - vec3<f32>(global0[_wgslsmith_index_u32(arg_0.a.x, 1u)], 1000f, -798f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(global2.a.x, 1u)], global0[_wgslsmith_index_u32(8912u, 1u)], global0[_wgslsmith_index_u32(arg_1.a.x, 1u)]) - vec3<f32>(-535f, -247f, 783f)))), true && all(vec3<bool>(true, false, true)))))));
    let var_2 = vec4<bool>(select(global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(0u, arg_1.a.x), 1u)] > _wgslsmith_f_op_f32(f32(-1f) * -397f), true, -414f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(429f)))), countOneBits(2147483647i) < max(-8790i, u_input.a), true == all(vec4<bool>(true, false, false, true)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))) | ((false == select(true, true, true)) || (u_input.a < -23009i)));
    let var_3 = vec3<bool>(var_2.x, var_2.x, !((1905f >= _wgslsmith_f_op_f32(ceil(1088f))) & var_2.x));
    let var_4 = _wgslsmith_f_op_f32(1025f * var_1.x);
    return any(var_3.yz);
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    let var_0 = Struct_3((53557i << (0u % 32u)) & _wgslsmith_clamp_i32(0i, -2147483647i, u_input.b.x | arg_0.x), -44308i, vec3<bool>(~firstLeadingBit(72332u) == global2.a.x, true, true), vec4<bool>(!all(vec4<bool>(true, true, true, true)), (abs(u_input.b.x) >= ~u_input.b.x) & false, true & func_3(Struct_1(global2.a), Struct_1(global2.a)), true), select(-1000f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-376f * global0[_wgslsmith_index_u32(global2.a.x, 1u)])), func_3(Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(global2.a.x, 35679u))), Struct_1(global2.a)), true));
    var var_1 = vec3<bool>(var_0.c.x | !var_0.e, false, any(select(vec4<bool>(select(false, true, true), true, var_0.c.x, false), vec4<bool>(any(vec3<bool>(false, true, var_0.e)), true, true, false), true)));
    var var_2 = countOneBits(-29400i);
    return 1i;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3, arg_3: u32) -> vec4<u32> {
    global3 = any(select(select(arg_1.d, vec4<bool>(arg_3 == global2.a.x, any(arg_1.c.xy), true, true), select(arg_1.d, vec4<bool>(arg_1.e, arg_2.e, false, arg_1.d.x), !arg_1.d)), select(arg_2.d, select(arg_1.d, arg_1.d, vec4<bool>(arg_1.e, arg_1.c.x, arg_2.e, false)), !arg_2.c.x), all(!arg_2.c) && arg_1.c.x));
    global3 = any(!select(arg_2.d, select(select(vec4<bool>(arg_1.d.x, true, arg_2.c.x, false), arg_2.d, vec4<bool>(false, false, arg_2.d.x, arg_2.c.x)), !arg_1.d, -681f < global0[_wgslsmith_index_u32(arg_3, 1u)]), true));
    global2 = Struct_1(~abs(global2.a));
    var var_0 = global2.a.x;
    global0 = array<f32, 1>();
    return vec4<u32>((global2.a.x >> (firstLeadingBit(~0u) % 32u)) >> (10707u % 32u), ~arg_3, global2.a.x, 0u);
}

fn func_1() -> Struct_3 {
    var var_0 = !(true | any(vec3<bool>(true, true, select(true, true, true))));
    var_0 = !any(vec3<bool>(true, true, all(vec3<bool>(true, true, true))));
    var var_1 = abs(func_4(Struct_1(countOneBits(global2.a)), Struct_3(func_2(u_input.b.xzw), 2147483647i, vec3<bool>(true, any(vec2<bool>(false, false)), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)), false), true), Struct_3(-2147483647i, max(u_input.b.x, 0i), select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(false, true, true)), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), false), select(true, false, true)), global2.a.x));
    var var_2 = _wgslsmith_div_u32(var_1.x, ~(~var_1.x));
    var var_3 = vec3<bool>(!(all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true))) && (true || (global0[_wgslsmith_index_u32(global2.a.x, 1u)] == global0[_wgslsmith_index_u32(7783u, 1u)]))), false, true);
    return Struct_3(u_input.a, -u_input.a, select(vec3<bool>(false, all(var_3.zy), func_3(Struct_1(vec2<u32>(var_1.x, var_1.x)), Struct_1(global2.a))), select(select(select(vec3<bool>(var_3.x, false, true), vec3<bool>(var_3.x, var_3.x, var_3.x), vec3<bool>(false, var_3.x, var_3.x)), select(vec3<bool>(false, var_3.x, var_3.x), vec3<bool>(true, var_3.x, var_3.x), false), !var_3.x), vec3<bool>(all(vec4<bool>(true, var_3.x, false, var_3.x)), var_3.x, !var_3.x), any(select(vec4<bool>(false, var_3.x, true, var_3.x), vec4<bool>(false, false, var_3.x, false), vec4<bool>(var_3.x, true, true, var_3.x)))), true), !select(select(vec4<bool>(var_3.x, var_3.x, var_3.x, false), vec4<bool>(var_3.x, false, true, true), global2.a.x <= global2.a.x), !select(vec4<bool>(true, false, false, true), vec4<bool>(var_3.x, true, false, false), vec4<bool>(var_3.x, var_3.x, false, var_3.x)), select(!vec4<bool>(var_3.x, true, true, true), vec4<bool>(var_3.x, true, var_3.x, false), any(vec3<bool>(var_3.x, true, var_3.x)))), var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = false;
    var var_0 = func_1();
    var var_1 = Struct_2(select(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(global2.a.x, 1u, global2.a.x), vec3<u32>(35510u, u_input.c, 32701u))), select(vec3<u32>(global2.a.x | global2.a.x, ~u_input.c, global2.a.x), ~_wgslsmith_div_vec3_u32(vec3<u32>(0u, 4294967295u, 32944u), vec3<u32>(31684u, u_input.c, 0u)), func_1().c), !(!vec3<bool>(var_0.e, var_0.c.x, true))), vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.b, ~u_input.b), var_0.b | (~var_0.a | _wgslsmith_add_i32(-51385i, 19577i)), -(~2147483647i & _wgslsmith_mult_i32(var_0.a, 7815i)), var_0.a ^ ~_wgslsmith_mod_i32(var_0.b, var_0.a)), Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, countOneBits(1u)), global2.a, vec2<u32>(u_input.c | global2.a.x, global2.a.x & 76398u))), var_0.d.x);
    global3 = (u_input.a <= (~2147483647i << (_wgslsmith_mult_u32(59027u, _wgslsmith_dot_vec2_u32(global2.a, var_1.c.a)) % 32u))) && select(false, !(!var_1.d), true);
    var_1 = Struct_2(var_1.a, abs(u_input.b), Struct_1(vec2<u32>(_wgslsmith_sub_u32(~global2.a.x, func_4(Struct_1(var_1.a.xx), Struct_3(-84010i, 31475i, var_0.d.wxx, var_0.d, var_1.d), Struct_3(u_input.b.x, u_input.b.x, var_0.c, var_0.d, true), 6603u).x), firstTrailingBit(53481u))), true);
    global0 = array<f32, 1>();
    global3 = var_1.d;
    let var_2 = _wgslsmith_mod_vec2_i32(-select(firstLeadingBit(-u_input.b.xx), reverseBits(_wgslsmith_div_vec2_i32(u_input.b.xx, vec2<i32>(-1847i, 22740i))), var_0.c.xy), u_input.b.wy);
    let var_3 = Struct_2(firstLeadingBit(firstTrailingBit(vec3<u32>(~global2.a.x, global2.a.x, 36691u << (global2.a.x % 32u)))), select(select(-min(var_1.b, vec4<i32>(var_0.a, -60022i, u_input.b.x, -4627i)), u_input.b, !func_3(var_1.c, var_1.c)), min(~_wgslsmith_clamp_vec4_i32(var_1.b, u_input.b, u_input.b), vec4<i32>(29314i, var_1.b.x, u_input.a, 25624i) | vec4<i32>(12171i, u_input.b.x, 61998i, 1i)), any(var_0.d)), Struct_1(global2.a), true);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.zx, ~vec4<u32>(_wgslsmith_mod_u32(25655u, 61343u), 4294967295u, global2.a.x, func_4(Struct_1(vec2<u32>(69886u, 4294967295u)), func_1(), Struct_3(1i, 56434i, var_0.d.wwx, vec4<bool>(var_3.d, false, false, var_0.e), var_3.d), var_3.a.x).x), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(56734u, 1u)])));
}

