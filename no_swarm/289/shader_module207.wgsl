struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
    c: u32,
    d: Struct_2,
    e: f32,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 73739u, 1u, 0u);

var<private> global1: Struct_4;

var<private> global2: array<i32, 12> = array<i32, 12>(-21692i, -1i, i32(-2147483648), -9404i, -45395i, 83663i, -31249i, -1i, 7295i, 1i, -1i, -43771i);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: f32, arg_3: Struct_4) -> vec4<bool> {
    var var_0 = true;
    var var_1 = Struct_3(global1.e, Struct_2(Struct_1(global0.zx ^ vec2<u32>(1u, 1u), vec4<bool>(true, true, any(vec2<bool>(true, arg_0)), true), arg_3.d.a.b.yz)), !all(vec2<bool>(true, true)));
    var var_2 = select(vec3<bool>(~(20959i ^ global2[_wgslsmith_index_u32(12488u, 12u)]) > ~reverseBits(global2[_wgslsmith_index_u32(28335u, 12u)]), true, false), vec3<bool>(all(arg_3.d.a.b.xzy), true, any(select(vec4<bool>(false, arg_0, arg_0, false), select(global1.d.a.b, vec4<bool>(arg_3.b, false, arg_0, true), vec4<bool>(global1.d.a.b.x, false, var_1.c, var_1.c)), !arg_0))), select(vec3<bool>(true, arg_3.b || (global1.b | global1.d.a.c.x), true), select(vec3<bool>(true, true, all(vec4<bool>(var_1.b.a.b.x, false, global1.d.a.b.x, global1.d.a.c.x))), select(!vec3<bool>(false, false, var_1.c), select(arg_3.d.a.b.wyw, vec3<bool>(false, false, global1.b), arg_3.d.a.b.zxw), !vec3<bool>(var_1.c, var_1.c, true)), !(!arg_0)), true));
    global1 = arg_3;
    var var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a.x, -715f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.a.x, 152f) * arg_3.a.xw)) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(160f + arg_3.e)))))));
    return select(select(select(!var_1.b.a.b, !var_1.b.a.b, false), select(select(vec4<bool>(true, var_1.c, true, true), var_1.b.a.b, arg_0), global1.d.a.b, !any(vec2<bool>(var_2.x, false))), true && !var_2.x), !(!var_1.b.a.b), vec4<bool>(true, arg_3.b, any(select(!vec3<bool>(global1.d.a.b.x, arg_3.b, true), !vec3<bool>(false, arg_0, var_1.c), vec3<bool>(false, false, true))), all(arg_3.d.a.b)));
}

fn func_2() -> Struct_2 {
    let var_0 = ~u_input.a;
    return Struct_2(Struct_1(vec2<u32>(6568u, firstLeadingBit(u_input.a & 25861u)), !func_3(global1.b, u_input.b.yx, global1.a.x, Struct_4(vec4<f32>(-1140f, global1.a.x, -1001f, 258f), false, 4060u, global1.d, 559f)), func_3(global1.d.a.b.x, vec2<i32>(reverseBits(global2[_wgslsmith_index_u32(global1.d.a.a.x, 12u)]), _wgslsmith_div_i32(-1i, global2[_wgslsmith_index_u32(64887u, 12u)])), 395f, Struct_4(vec4<f32>(-1590f, global1.e, -1861f, global1.a.x), true, firstTrailingBit(21822u), global1.d, _wgslsmith_f_op_f32(round(-1683f)))).xw));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec2<f32>) -> vec4<bool> {
    global0 = ~vec4<u32>(func_2().a.a.x, u_input.a, global1.c, global0.x << ((~global0.x & ~0u) % 32u));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -266f), _wgslsmith_f_op_f32(f32(-1f) * -299f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.a.wzy * global1.a.wzw))));
    let var_1 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -572f), -1915f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.a.x, global1.a.x)))), -708f, -355f), func_2().a.c.x, ~(~firstLeadingBit(2033u >> (u_input.a % 32u))), Struct_2(func_2().a), global1.e);
    var var_2 = ~vec3<i32>(1i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(select(vec4<i32>(-2147483647i, u_input.b.x, 2147483647i, 1i), vec4<i32>(-1i, 1743i, u_input.c, -2147483647i), true), u_input.b >> (vec4<u32>(28767u, 130714u, global1.d.a.a.x, 28332u) % vec4<u32>(32u))), select(~u_input.b, ~u_input.b, select(arg_0.a.c.x, arg_0.a.c.x, arg_0.a.b.x))), -1i);
    global2 = array<i32, 12>();
    return select(var_1.d.a.b, arg_0.a.b, !(!(!arg_0.a.c.x) && ((global1.d.a.a.x & u_input.a) > ~4294967295u)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_5) -> Struct_5 {
    global2 = array<i32, 12>();
    global2 = array<i32, 12>();
    var var_0 = abs(abs(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b.xyz, u_input.b.xzx), _wgslsmith_sub_vec3_i32(u_input.b.zww, vec3<i32>(global2[_wgslsmith_index_u32(42201u, 12u)], global2[_wgslsmith_index_u32(4410u, 12u)], global2[_wgslsmith_index_u32(u_input.a, 12u)])), u_input.b.zyx), min(vec3<i32>(u_input.c, u_input.b.x, 2147483647i), u_input.b.wzx))));
    let var_1 = abs(vec2<u32>(~_wgslsmith_add_u32(arg_0.a.x, ~global0.x), 75880u));
    global1 = Struct_4(global1.a, true, _wgslsmith_div_u32(1u, 89576u), Struct_2(func_2().a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(abs(global1.e)))));
    return arg_1;
}

fn func_1() -> StorageBuffer {
    var var_0 = vec2<u32>(~4294967295u, ~_wgslsmith_mod_u32(min(u_input.a, ~15878u), max(~18088u, global1.d.a.a.x)));
    let var_1 = func_5(Struct_1(firstLeadingBit(vec2<u32>(global1.d.a.a.x, u_input.a)), func_4(func_2(), 1i, vec2<f32>(1f, global1.a.x)), select(global1.d.a.c, select(func_2().a.b.zx, global1.d.a.c, select(global1.d.a.c, vec2<bool>(global1.d.a.c.x, true), global1.d.a.b.yw)), !global1.d.a.b.xz)), Struct_5(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, global1.d.a.a.x, var_0.x, 4294967295u) << (vec4<u32>(u_input.a, 1u, global0.x, 37298u) % vec4<u32>(32u)), vec4<u32>(u_input.a, global1.d.a.a.x, 7110u, 56736u) >> (vec4<u32>(0u, 0u, global0.x, var_0.x) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_add_u32(1u, 0u), global0.x, 42399u, global1.d.a.a.x)), Struct_2(global1.d.a), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.a.wz * global1.a.wx)))), vec4<u32>(firstLeadingBit(~u_input.a), 4294967295u, ~var_0.x, u_input.a)));
    global2 = array<i32, 12>();
    var var_2 = vec3<u32>(u_input.a, 1u, _wgslsmith_dot_vec4_u32(~(~(var_1.d ^ var_1.d)), var_1.d));
    var var_3 = ~1152i;
    return StorageBuffer(_wgslsmith_clamp_vec3_i32(~(~u_input.b.wyw) & vec3<i32>(0i | global2[_wgslsmith_index_u32(30229u, 12u)], firstTrailingBit(global2[_wgslsmith_index_u32(global0.x, 12u)]), -1i), ~_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(1u, 12u)], 34502i, -2147483647i), u_input.b.yyw), firstLeadingBit(u_input.b.yzx)), min(-_wgslsmith_sub_vec3_i32(vec3<i32>(0i, global2[_wgslsmith_index_u32(0u, 12u)], 0i), u_input.b.wyz), u_input.b.wyx)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

