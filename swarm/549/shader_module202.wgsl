struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<f32, 28> = array<f32, 28>(275f, -1153f, -780f, 386f, -771f, -1183f, -182f, -313f, 169f, 448f, -1000f, 784f, 598f, 978f, -1000f, 1322f, 1757f, -1205f, 1364f, 592f, -239f, -160f, -1665f, -220f, -452f, -1000f, -636f, 946f);

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(-1i, vec4<bool>(true, false, false, true), 1734f), Struct_1(1424i, vec4<bool>(true, true, true, false), -149f));

var<private> global3: array<vec2<f32>, 19>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec2<i32>, arg_3: i32) -> bool {
    global2 = array<Struct_1, 2>();
    var var_0 = global2[_wgslsmith_index_u32(7803u, 2u)];
    let var_1 = vec4<i32>(14413i, abs(var_0.a), max(2147483647i, select(-11292i, arg_3, global0.x)) & -66291i, min(arg_3, _wgslsmith_div_i32(arg_2.x, ~21349i)) >> (59508u % 32u));
    var var_2 = global2[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(min(1u, ~1u), ~_wgslsmith_add_u32(1u, u_input.a.x)) ^ 30490u), 2u)];
    var_2 = Struct_1(countOneBits(var_1.x), vec4<bool>(any(!(!vec4<bool>(false, global0.x, false, true))), !(!global0.x && true), var_0.b.x, global0.x), arg_0);
    return any(var_2.b);
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 28u)];
    let var_1 = Struct_1(-u_input.c, !select(arg_0.b, !(!vec4<bool>(global0.x, arg_0.b.x, global0.x, arg_0.b.x)), global0.x), global1[_wgslsmith_index_u32(~abs(u_input.a.x), 28u)]);
    let var_2 = Struct_1(0i, vec4<bool>(false, select(true, global0.x, !func_3(-288f, 13689u, vec2<i32>(32184i, arg_0.a), arg_0.a)), arg_0.b.x, false), -1171f);
    global2 = array<Struct_1, 2>();
    let var_3 = var_1;
    return ~u_input.a.x;
}

fn func_1(arg_0: i32) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1506f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(func_2(Struct_1(arg_0, vec4<bool>(false, global0.x, global0.x, global0.x), 1000f)) ^ ~0u, 28u)] * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1806f * global1[_wgslsmith_index_u32(34961u, 28u)])))), global1[_wgslsmith_index_u32(u_input.b.x >> (u_input.b.x % 32u), 28u)], -1387f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(37737u, 28u)])), global1[_wgslsmith_index_u32(1u, 28u)], _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(150f, global1[_wgslsmith_index_u32(u_input.b.x, 28u)]), _wgslsmith_f_op_f32(ceil(210f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 28u)])))) - vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-982f * global1[_wgslsmith_index_u32(u_input.a.x, 28u)]))), global1[_wgslsmith_index_u32(4294967295u, 28u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -789f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1108f))))));
    global2 = array<Struct_1, 2>();
    global1 = array<f32, 28>();
    var var_1 = !vec4<bool>(global0.x, any(select(vec2<bool>(global0.x, true), global0.xx, !global0.zx)), (u_input.b.x & _wgslsmith_mult_u32(0u, 1u)) < u_input.a.x, true);
    global0 = var_1.xyy;
    return var_0.wyy;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<u32>) -> vec4<bool> {
    var var_0 = arg_0;
    var_0 = global2[_wgslsmith_index_u32(~(~arg_2.x), 2u)];
    var var_1 = false;
    let var_2 = true;
    let var_3 = 1000f;
    return !select(select(!(!vec4<bool>(var_2, global0.x, false, true)), vec4<bool>(var_0.b.x && true, func_3(var_0.c, arg_2.x, vec2<i32>(-2147483647i, u_input.c), arg_0.a), false, any(arg_0.b)), all(vec2<bool>(true, true))), vec4<bool>(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(u_input.b.x, 28u)])) == 1000f, false, global0.x & var_2, _wgslsmith_f_op_f32(floor(-1925f)) < -639f), vec4<bool>(!arg_0.b.x | true, var_0.b.x, !func_3(var_3, 4294967295u, vec2<i32>(-12281i, -2147483647i), -2147483647i), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(u_input.a.x, 2u)];
    let var_1 = true;
    let var_2 = _wgslsmith_div_i32(0i, u_input.d);
    let var_3 = ~select(_wgslsmith_div_u32(firstLeadingBit(32121u), _wgslsmith_sub_u32(11858u, u_input.b.x)) << (906u % 32u), u_input.b.x, false);
    var var_4 = all(!func_4(Struct_1(abs(var_2), var_0.b, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(36468u, u_input.b.x, var_3), 28u)]), _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_mod_i32(0i, 8064i))), u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(select(-vec3<i32>(-1i, var_0.a, var_2), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, var_0.a, var_2), vec3<i32>(2147483647i, -2147483647i, var_0.a)), func_4(global2[_wgslsmith_index_u32(var_3, 2u)], vec3<f32>(global1[_wgslsmith_index_u32(1u, 28u)], -738f, -171f), vec3<u32>(4294967295u, var_3, 4294967295u)).ywy), abs(-vec3<i32>(u_input.d, u_input.d, -18197i))), min(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2, u_input.c, var_2), firstTrailingBit(vec3<i32>(0i, u_input.c, var_2)), vec3<i32>(u_input.d, 1i, 0i)), _wgslsmith_mod_vec3_i32(vec3<i32>(var_2, 2147483647i, var_0.a), vec3<i32>(var_2, var_2, u_input.d)) & (vec3<i32>(var_2, var_2, 4137i) | vec3<i32>(u_input.c, 1231i, 0i)))), ~_wgslsmith_mult_vec4_u32(min(vec4<u32>(0u, var_3, 4509u, var_3), ~vec4<u32>(u_input.a.x, 1u, 0u, u_input.b.x)), min(vec4<u32>(4294967295u, 4294967295u, 1u, 21721u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_3, 1u, var_3, var_3), vec4<u32>(13685u, var_3, var_3, var_3), vec4<u32>(var_3, 19329u, 47330u, 1u)))), 2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(4294967295u), 49079u, 2134u | u_input.a.x), 28u)]))), ~(~(~0i)));
}

