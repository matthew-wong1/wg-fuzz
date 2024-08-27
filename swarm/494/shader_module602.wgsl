struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 17>;

var<private> global1: array<Struct_2, 22>;

var<private> global2: array<f32, 26>;

var<private> global3: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(vec4<i32>(0i, 0i, -14983i, -11404i), vec2<i32>(-21391i, 6837i))), Struct_2(Struct_1(vec4<i32>(1i, -1i, -1i, 17015i), vec2<i32>(-30542i, 1901i))), Struct_2(Struct_1(vec4<i32>(-39863i, i32(-2147483648), 3507i, -15442i), vec2<i32>(-1i, 2147483647i))), Struct_2(Struct_1(vec4<i32>(-15179i, i32(-2147483648), i32(-2147483648), -1i), vec2<i32>(0i, -63243i))), Struct_2(Struct_1(vec4<i32>(-1i, -33749i, 1i, i32(-2147483648)), vec2<i32>(2147483647i, 2147483647i))));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec4<bool>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(0u, 26u)]));
    global0 = array<Struct_3, 17>();
    let var_1 = u_input.e;
    var var_2 = true;
    let var_3 = u_input.d.x;
    return !select(!(!select(arg_2.yyw, vec3<bool>(false, false, false), arg_2.zxy)), arg_2.ywy, !(true || arg_1));
}

fn func_2() -> f32 {
    var var_0 = u_input.c;
    let var_1 = global3[_wgslsmith_index_u32(4294967295u, 5u)];
    var var_2 = any(!select(!func_3(global2[_wgslsmith_index_u32(29077u, 26u)], true, vec4<bool>(true, false, true, false)), vec3<bool>(true, true, false), true));
    global3 = array<Struct_2, 5>();
    global3 = array<Struct_2, 5>();
    return global2[_wgslsmith_index_u32(u_input.a, 26u)];
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-1543f * 1228f), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(0u, 26u)])))))) + _wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - 459f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 26u)]), _wgslsmith_f_op_f32(502f - global2[_wgslsmith_index_u32(18326u, 26u)]))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1138f)))))));
    let var_1 = firstTrailingBit(countOneBits(max(-1i, 1i)));
    var var_2 = global0[_wgslsmith_index_u32(1u, 17u)];
    var var_3 = arg_2.yy;
    var var_4 = Struct_1(arg_1.a, _wgslsmith_clamp_vec2_i32(arg_0.a.a.ww, _wgslsmith_div_vec2_i32(~arg_1.b, var_2.a ^ vec2<i32>(u_input.c, -2637i)), vec2<i32>(-13276i, _wgslsmith_mod_i32(-25879i, -1455i))) & reverseBits(arg_0.a.b));
    return Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(-31311i, u_input.e, -2147483647i, u_input.c)), select(-vec4<i32>(52595i, -2147483647i, 0i, -1i), arg_0.a.a, vec4<bool>(var_3.x || true, func_3(246f, true, vec4<bool>(true, arg_2.x, true, var_3.x)).x, u_input.a > u_input.b, arg_2.x))), arg_1.b >> (_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.b, 7587u), u_input.a >> (30116u % 32u)), ~max(vec2<u32>(88134u, u_input.a), vec2<u32>(1u, u_input.b))) % vec2<u32>(32u)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = global1[_wgslsmith_index_u32(abs(31382u), 22u)];
    global1 = array<Struct_2, 22>();
    global2 = array<f32, 26>();
    let var_1 = func_1(Struct_2(func_1(Struct_2(arg_2.a), Struct_1(var_0.a.a | vec4<i32>(15287i, arg_2.a.a.x, var_0.a.b.x, 61918i), vec2<i32>(1i, 2147483647i)), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), all(vec3<bool>(true, false, false))))), Struct_1(var_0.a.a, firstTrailingBit(vec2<i32>(_wgslsmith_div_i32(arg_0.x, arg_3.b.x), arg_0.x))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, any(vec2<bool>(false, false)), -1349f < global2[_wgslsmith_index_u32(u_input.b, 26u)], true), vec4<bool>(true, all(vec4<bool>(true, true, false, true)), global2[_wgslsmith_index_u32(u_input.a, 26u)] <= 1335f, true), true), !(!select(false, true, true))));
    global1 = array<Struct_2, 22>();
    return !vec2<bool>(false, !(abs(4294967295u) >= u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 17>();
    global2 = array<f32, 26>();
    let var_0 = -491f;
    var var_1 = all(vec2<bool>(any(func_4(-vec2<i32>(-2147483647i, 0i), Struct_3(u_input.d.zz), global3[_wgslsmith_index_u32(u_input.a, 5u)], func_1(Struct_2(Struct_1(vec4<i32>(u_input.c, 2147483647i, -87200i, 1i), vec2<i32>(u_input.d.x, -8157i))), Struct_1(vec4<i32>(u_input.e, u_input.c, -2147483647i, -48079i), u_input.d.xx), vec4<bool>(true, false, false, false)))), reverseBits(1u) != _wgslsmith_mod_u32(u_input.a, u_input.b)));
    global0 = array<Struct_3, 17>();
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, 90546u << (_wgslsmith_div_u32(~select(0u, 94543u, true), 32478u) % 32u)), 17u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-62625i, -func_1(global1[_wgslsmith_index_u32(~37736u, 22u)], func_1(global3[_wgslsmith_index_u32(u_input.b, 5u)], Struct_1(vec4<i32>(8564i, var_2.a.x, u_input.e, u_input.e), u_input.d.yx), vec4<bool>(true, false, true, true)), vec4<bool>(false, false, false, false)).a.x, _wgslsmith_add_i32(1i, -14674i & var_2.a.x), -(min(u_input.d.x, u_input.e) ^ var_2.a.x)), var_2.a.x, (~countOneBits(vec4<u32>(27492u, 93716u, u_input.a, 4294967295u)) << (vec4<u32>(u_input.b, u_input.a >> (u_input.b % 32u), ~u_input.b, u_input.a) % vec4<u32>(32u))) | vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u) >> (vec2<u32>(u_input.a, 7635u) % vec2<u32>(32u)), ~vec2<u32>(u_input.a, u_input.b)), ~_wgslsmith_sub_u32(u_input.b, 0u), _wgslsmith_mod_u32(u_input.b >> (u_input.b % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(12371u, u_input.b), vec2<u32>(u_input.b, 0u))), 0u), _wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_2.a.x, 1i, u_input.e, -2147483647i), vec4<i32>(u_input.d.x, var_2.a.x, u_input.c, 9999i)), -(2147483647i << (u_input.a % 32u))), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(u_input.c, var_2.a.x, 54599i, 0i)), vec4<i32>(u_input.c, var_2.a.x, 1i, 60790i), vec4<i32>(1i, var_2.a.x, u_input.e, -1i)), select(vec4<i32>(u_input.c, var_2.a.x, u_input.c, var_2.a.x), -vec4<i32>(-51067i, 40384i, 18219i, 38985i), true)), firstTrailingBit(var_2.a.x) | -_wgslsmith_mult_i32(-2147483647i, var_2.a.x)), ~firstLeadingBit(vec3<u32>(u_input.b, u_input.a, _wgslsmith_add_u32(47740u, u_input.a))));
}

