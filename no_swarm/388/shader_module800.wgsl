struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(Struct_1(-1139f, vec4<bool>(false, false, true, false)), vec4<u32>(0u, 12237u, 16285u, 1u), Struct_1(1303f, vec4<bool>(true, true, true, true))), Struct_2(Struct_1(1994f, vec4<bool>(false, true, true, true)), vec4<u32>(1u, 113150u, 21587u, 7906u), Struct_1(379f, vec4<bool>(true, true, false, true))));

var<private> global1: array<f32, 31>;

var<private> global2: f32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = vec2<u32>(countOneBits(~(~(~u_input.d.x))), ~1u);
    var var_1 = _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1732f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.a), -2178f))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 31u)]), any(arg_0.b.xz) | !(u_input.c.x >= 1i))));
    global0 = array<Struct_2, 2>();
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.a))) * -778f))));
    let var_2 = arg_0.b.xww;
    return !select(vec4<bool>(true, !any(var_2), arg_0.b.x, !arg_0.b.x || var_2.x), !arg_0.b, select(vec4<bool>(all(var_2), global1[_wgslsmith_index_u32(u_input.d.x, 31u)] == -1033f, true, false), arg_0.b, arg_0.b));
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_1(946f, select(select(func_3(Struct_1(-567f, vec4<bool>(true, false, false, false))), func_3(Struct_1(1271f, vec4<bool>(true, true, true, true))), !select(true, true, true)), func_3(Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 44539u), u_input.d), 31u)], vec4<bool>(true, true, true, true))), any(vec3<bool>(select(false, true, false), true, true))));
    global0 = array<Struct_2, 2>();
    global2 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(20257u, 31u)] - var_0.a);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a, 924f)) + -559f)))) - -803f);
    global1 = array<f32, 31>();
    return u_input.d.zx;
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = vec2<u32>(reverseBits(_wgslsmith_mult_u32(u_input.d.x, ~u_input.d.x)), min(16511u, u_input.d.x) & ~(~u_input.d.x)) >> (u_input.d.wy % vec2<u32>(32u));
    var_0 = func_2();
    let var_1 = _wgslsmith_mod_u32(min(var_0.x, u_input.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(min(~0u, 96833u), u_input.d.x, 15109u, _wgslsmith_dot_vec4_u32(abs(u_input.d), countOneBits(vec4<u32>(1u, u_input.d.x, var_0.x, var_0.x)))), _wgslsmith_clamp_vec4_u32(min(vec4<u32>(var_0.x, 37192u, var_0.x, var_0.x), vec4<u32>(u_input.d.x, u_input.d.x, 1u, u_input.d.x)), u_input.d, select(~vec4<u32>(43182u, 0u, u_input.d.x, 100712u), u_input.d, arg_0.x))));
    let var_2 = select(func_2().x, ~countOneBits(func_2().x), !(false || arg_0.x));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(719f, -1361f) + 1000f))), vec4<bool>(!all(!vec2<bool>(arg_0.x, true)), false, all(vec2<bool>(all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), any(vec4<bool>(false, true, false, arg_0.x)))), func_3(Struct_1(_wgslsmith_f_op_f32(select(1000f, global1[_wgslsmith_index_u32(var_2, 31u)], arg_0.x)), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))).x));
    return Struct_1(_wgslsmith_f_op_f32(abs(-339f)), var_3.b);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec4_i32(u_input.a, u_input.a);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -974f));
    var var_1 = !(!select(select(func_1(vec2<bool>(true, false)).b.ywz, select(vec3<bool>(false, arg_1.b.x, false), arg_1.b.zxw, vec3<bool>(arg_1.b.x, arg_1.b.x, true)), arg_1.b.x), arg_1.b.zyy, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_2, 31u)]) <= _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(arg_0.x, 31u)]))));
    global0 = array<Struct_2, 2>();
    global1 = array<f32, 31>();
    return Struct_1(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(3372u, arg_0.x)), 31u)])), func_1(!func_1(arg_1.b.ww).b.zw).b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_mult_vec2_u32((_wgslsmith_mult_vec2_u32(u_input.d.zw, vec2<u32>(u_input.d.x, 4294967295u)) << (u_input.d.zw % vec2<u32>(32u))) >> (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d.x, 0u), u_input.d.xx) % vec2<u32>(32u)), u_input.d.xz), func_1(vec2<bool>(!(u_input.e.x <= u_input.a.x), all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false)))), ~max(1u, select(~32707u, 0u, false)));
    var var_1 = Struct_2(func_4(vec2<u32>(33265u, _wgslsmith_add_u32(_wgslsmith_add_u32(22200u, u_input.d.x), countOneBits(48700u))), var_0, func_2().x), select((u_input.d | _wgslsmith_sub_vec4_u32(vec4<u32>(29103u, 22446u, 0u, 8700u), vec4<u32>(4294967295u, u_input.d.x, 0u, u_input.d.x))) & vec4<u32>(29066u | u_input.d.x, u_input.d.x, u_input.d.x, ~u_input.d.x), vec4<u32>(u_input.d.x >> (u_input.d.x % 32u), u_input.d.x, countOneBits(5816u), 4609u), false), var_0);
    global0 = array<Struct_2, 2>();
    let var_2 = reverseBits(i32(-1i) * -u_input.e.x) << ((32716u >> (u_input.d.x % 32u)) % 32u);
    global2 = _wgslsmith_f_op_f32(-func_4(u_input.d.zy, Struct_1(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~39010u, 31u)] + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_1.b.x, 31u)] * var_0.a)), var_1.a.b), ~var_1.b.x).a);
    let var_3 = func_4(_wgslsmith_add_vec2_u32(select(var_1.b.yy, func_2(), var_1.a.b.ww), vec2<u32>(~88u, var_1.b.x)), func_4(~countOneBits(~vec2<u32>(u_input.d.x, u_input.d.x)), Struct_1(_wgslsmith_f_op_f32(-384f - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(86928u, 31u)] * var_1.c.a)), !var_1.c.b), _wgslsmith_sub_u32(max(4294967295u, var_1.b.x) ^ abs(1u), select(u_input.d.x, firstTrailingBit(4294967295u), var_0.b.x & var_0.b.x))), u_input.d.x);
    global0 = array<Struct_2, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(~_wgslsmith_sub_i32(-var_2, firstTrailingBit(var_2)), -35159i, abs(reverseBits(u_input.c.x))), u_input.e.wzy, _wgslsmith_sub_i32(_wgslsmith_mult_i32(~u_input.e.x, -2147483647i), _wgslsmith_mod_i32(-36905i, -6975i)), vec4<u32>(63358u, var_1.b.x, ~(~countOneBits(var_1.b.x)), abs(1u)), _wgslsmith_div_i32(u_input.b.x, -12104i));
}

