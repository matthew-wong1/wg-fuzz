struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 17>;

var<private> global1: array<vec4<i32>, 23>;

var<private> global2: vec4<f32> = vec4<f32>(935f, 206f, 360f, 115f);

var<private> global3: array<f32, 28>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: vec3<bool>) -> u32 {
    let var_0 = global2.x;
    global2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(538f, global3[_wgslsmith_index_u32(1u, 28u)], false))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-920f)), global3[_wgslsmith_index_u32(0u, 28u)])), _wgslsmith_f_op_f32(-global2.x), 901f));
    var var_1 = Struct_1(!arg_0.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global2.yyz))) - global0[_wgslsmith_index_u32(u_input.d.x >> ((u_input.c.x | ~0u) % 32u), 17u)]), 24990i);
    var var_2 = Struct_1(all(vec4<bool>(true, var_1.a, select(select(false, false, arg_0.x), !arg_0.x, var_1.c == u_input.e.x), false)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -257f) * _wgslsmith_f_op_f32(-766f - global3[_wgslsmith_index_u32(23813u, 28u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -377f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -643f) - _wgslsmith_f_op_f32(-global2.x))), var_1.c);
    var var_3 = false;
    return 1u;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = true;
    let var_1 = Struct_2(Struct_1(false, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(global0[_wgslsmith_index_u32(countOneBits(u_input.a.x), 17u)], _wgslsmith_f_op_vec3_f32(sign(global0[_wgslsmith_index_u32(u_input.c.x, 17u)])), false)))), u_input.e.x), arg_3, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.b.x))), arg_2);
    global1 = array<vec4<i32>, 23>();
    var_0 = any(!(!vec3<bool>(arg_1, any(vec4<bool>(true, true, arg_1, false)), true)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x - global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, ~u_input.b.x | func_3(vec2<bool>(arg_3.a, arg_2.a), vec3<bool>(arg_3.a, true, arg_2.a), vec3<bool>(false, true, false))), 28u)]) + _wgslsmith_f_op_f32(round(-229f)));
    return -376f;
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = vec3<bool>(select(!all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), (u_input.e.x < abs(u_input.e.x)) && true, true), false, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(false, vec3<f32>(global2.x, -455f, -635f), u_input.e.x), true, Struct_1(false, vec3<f32>(global3[_wgslsmith_index_u32(47277u, 28u)], global2.x, -702f), u_input.e.x), Struct_1(true, vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 28u)], global3[_wgslsmith_index_u32(0u, 28u)], global2.x), u_input.e.x))) * _wgslsmith_f_op_f32(max(global2.x, global2.x))) == _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(241f, global2.x)))));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(4294967295u, 28u)], global3[_wgslsmith_index_u32(4294967295u, 28u)], var_0.x)))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global2.x)), _wgslsmith_f_op_f32(trunc(-1356f))))))) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(~24167u, 28u)])) - global2.x), -884f, true));
    var var_2 = Struct_2(Struct_1(true, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(55904u, 17u)]), _wgslsmith_f_op_vec3_f32(-global2.wxx))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.zzz * global0[_wgslsmith_index_u32(15221u, 17u)])))), ~u_input.e.x), Struct_1(var_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(60599u, 28u)], 608f, -555f))), _wgslsmith_add_i32(~_wgslsmith_mod_i32(29429i, u_input.e.x), 11739i)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~arg_0, 28u)]), Struct_1(var_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3[_wgslsmith_index_u32(arg_0, 28u)], global2.x, global2.x), vec3<f32>(199f, global2.x, 1971f)))), -1i));
    global0 = array<vec3<f32>, 17>();
    var var_3 = firstTrailingBit(u_input.a) & ~(~(~min(u_input.a, u_input.a)));
    return var_2.b;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> vec4<f32> {
    global1 = array<vec4<i32>, 23>();
    let var_0 = -select(global1[_wgslsmith_index_u32(u_input.b.x, 23u)], abs(vec4<i32>(-38834i, arg_1.c, arg_1.c, u_input.e.x) & u_input.e), u_input.d.x <= 1u);
    var var_1 = Struct_2(Struct_1(false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(0u, 17u)])))), countOneBits(-6699i | -arg_1.c)), func_1(1436u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(arg_1, arg_1.a, arg_1, Struct_1(false, global2.ywx, u_input.e.x))))))), Struct_1(true, global2.xxz, 21156i));
    global3 = array<f32, 28>();
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1388f);
    return vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global2.x, 872f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.b.x + 902f))), global3[_wgslsmith_index_u32(u_input.c.x, 28u)], 1000f);
}

fn func_5(arg_0: vec4<f32>) -> Struct_2 {
    return Struct_2(func_1(~u_input.c.x), func_1(56836u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.a.x, u_input.a.x), 28u)]), Struct_1((u_input.e.x >> (1u % 32u)) != -u_input.e.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1209f, global2.x, arg_0.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(405f, 131f, global3[_wgslsmith_index_u32(4294967295u, 28u)]) + global2.wzx)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1064f, global3[_wgslsmith_index_u32(1514u, 28u)], global3[_wgslsmith_index_u32(u_input.a.x, 28u)]))), _wgslsmith_dot_vec3_i32(abs(-vec3<i32>(-2147483647i, 2147483647i, 0i)), _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.e.x, -1244i, u_input.e.x), _wgslsmith_add_vec3_i32(u_input.e.yyx, vec3<i32>(52984i, u_input.e.x, 1i))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_vec4_f32(func_4(global2.x, func_1(41380u))));
    let var_1 = var_0.d.c;
    var var_2 = Struct_2(func_1(~u_input.d.x), Struct_1(!any(!vec2<bool>(var_0.b.a, false)), _wgslsmith_f_op_vec3_f32(step(var_0.d.b, _wgslsmith_f_op_vec3_f32(round(global2.yxy)))), func_5(vec4<f32>(-1000f, _wgslsmith_f_op_f32(max(110f, global3[_wgslsmith_index_u32(u_input.c.x, 28u)])), _wgslsmith_f_op_f32(sign(224f)), _wgslsmith_div_f32(-1295f, var_0.b.b.x))).d.c), -620f, var_0.b);
    global3 = array<f32, 28>();
    global0 = array<vec3<f32>, 17>();
    global3 = array<f32, 28>();
    global0 = array<vec3<f32>, 17>();
    let var_3 = -(vec2<i32>(-1i) * -firstTrailingBit(-vec2<i32>(22020i, -5649i)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.wyx, _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(~(~u_input.b), min(u_input.c >> (u_input.b % vec4<u32>(32u)), u_input.c), _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(0u, u_input.c.x, 1u, 47737u)), reverseBits(vec4<u32>(u_input.c.x, u_input.b.x, u_input.b.x, u_input.b.x)))), ~_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.b, u_input.c), vec4<u32>(u_input.c.x, u_input.a.x, u_input.a.x, 792u) >> (u_input.c % vec4<u32>(32u)))), _wgslsmith_f_op_f32(floor(var_0.c)), -663f);
}

