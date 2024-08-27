struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(35627i, Struct_1(vec2<i32>(0i, 10959i), vec4<i32>(-32335i, 0i, 90710i, -4398i)), vec3<bool>(true, false, true));

var<private> global1: Struct_1 = Struct_1(vec2<i32>(-45121i, i32(-2147483648)), vec4<i32>(-4444i, 30655i, i32(-2147483648), -34547i));

var<private> global2: array<u32, 17> = array<u32, 17>(1u, 28461u, 4294967295u, 30633u, 37366u, 1u, 4294967295u, 6690u, 1u, 0u, 4294967295u, 4294967295u, 43188u, 94564u, 1u, 0u, 28048u);

var<private> global3: array<u32, 8>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(2014f, -267f, 934f, -279f) - vec4<f32>(-831f, -1000f, 177f, -953f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1160f, 852f, -365f, 234f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-402f, -334f, -129f, -310f) + vec4<f32>(-1777f, -405f, 115f, 2096f))))));
    global2 = array<u32, 17>();
    var var_1 = vec2<bool>(any(!vec4<bool>(true, global0.c.x, true, global0.c.x)) && true, !arg_0.c.x);
    global3 = array<u32, 8>();
    let var_2 = arg_0.b.b.wwy;
    return Struct_1(vec2<i32>(-abs(arg_1.x << (0u % 32u)), var_2.x), vec4<i32>(~global1.b.x, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-arg_0.b.b.zx, vec2<i32>(var_2.x, global1.a.x) >> (vec2<u32>(global3[_wgslsmith_index_u32(12713u, 8u)], 4294967295u) % vec2<u32>(32u))), global0.a), firstLeadingBit(max(abs(1i), reverseBits(var_2.x))), -2147483647i));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = func_2(Struct_2(arg_0.b.x, func_2(Struct_2(-global0.b.a.x, Struct_1(vec2<i32>(global0.a, global1.a.x), vec4<i32>(22836i, arg_0.b.x, 25110i, arg_0.b.x)), global0.c), select(firstTrailingBit(arg_0.b), vec4<i32>(global0.b.b.x, global1.a.x, -2147483647i, global0.b.b.x), !global0.c.x)), vec3<bool>(false, !(global0.c.x & global0.c.x), global0.c.x)), vec4<i32>(_wgslsmith_mult_i32(global1.b.x, ~reverseBits(-2626i)), -arg_0.a.x, 2147483647i, global0.a));
    global1 = func_2(Struct_2(abs(_wgslsmith_add_i32(_wgslsmith_mod_i32(-16133i, arg_0.b.x), _wgslsmith_dot_vec3_i32(global1.b.wzy, vec3<i32>(global0.b.b.x, 5721i, var_0.b.x)))), var_0, select(vec3<bool>(true, any(vec4<bool>(false, false, global0.c.x, false)), true), vec3<bool>(false, any(vec4<bool>(global0.c.x, false, global0.c.x, global0.c.x)), any(global0.c)), global0.c.x)), min(firstTrailingBit(_wgslsmith_sub_vec4_i32(select(vec4<i32>(1i, 20755i, 0i, 4258i), arg_0.b, global0.c.x), select(var_0.b, global1.b, global0.c.x))), arg_0.b));
    global3 = array<u32, 8>();
    global2 = array<u32, 17>();
    let var_1 = global3[_wgslsmith_index_u32(8356u, 8u)] << (max(u_input.a.x, ~0u | select(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(71709u, 8u)], 8u)], 1u, -2147483647i != global1.b.x)) % 32u);
    return ~vec4<u32>(1u, var_1, 25879u, ~1u);
}

fn func_1(arg_0: Struct_2) -> vec2<i32> {
    global1 = arg_0.b;
    var var_0 = func_2(arg_0, vec4<i32>(0i, ~select(-53069i, arg_0.a, true) | arg_0.a, _wgslsmith_add_i32(-_wgslsmith_mod_i32(arg_0.b.a.x, 32048i), select(global0.b.a.x, -arg_0.b.a.x, all(vec3<bool>(false, arg_0.c.x, arg_0.c.x)))), _wgslsmith_dot_vec4_i32(global1.b, vec4<i32>(global1.b.x, 0i, 5680i, 1i))));
    let var_1 = arg_0;
    let var_2 = vec3<u32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~u_input.a.x, 17u)], 17u)], 8u)], _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(2311u, 17u)] & 1u, firstLeadingBit(global3[_wgslsmith_index_u32(u_input.a.x, 8u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2[_wgslsmith_index_u32(76625u, 17u)], global2[_wgslsmith_index_u32(51489u, 17u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(29059u, 17u)], 8u)], 17u)]), vec4<u32>(57839u, 43329u, 1754u, u_input.a.x)), ~4294967295u), ~select(vec4<u32>(u_input.a.x, 34922u, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 8u)], 17u)], 38238u), vec4<u32>(u_input.a.x, 14022u, u_input.a.x, global2[_wgslsmith_index_u32(21934u, 17u)]), vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, false))), ~_wgslsmith_dot_vec4_u32(func_3(arg_0.b), vec4<u32>(u_input.a.x, 1u, 13885u, global3[_wgslsmith_index_u32(96330u, 8u)]))), 4294967295u << (max(_wgslsmith_dot_vec4_u32(~vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 8u)], 17u)], 17u)], 8u)], 8u)], 1u, global2[_wgslsmith_index_u32(u_input.a.x, 17u)], 4294967295u), vec4<u32>(26023u, u_input.a.x, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 8u)], 17u)], u_input.a.x) | vec4<u32>(41791u, 36018u, u_input.a.x, u_input.a.x)), global2[_wgslsmith_index_u32(~(~13949u), 17u)]) % 32u));
    global0 = var_1;
    return _wgslsmith_mod_vec2_i32(vec2<i32>(~var_0.b.x, i32(-1i) * -1i), var_0.a);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: u32) -> Struct_2 {
    var var_0 = Struct_2(arg_1.x, global0.b, !select(arg_0.c, vec3<bool>(!arg_0.c.x, false | arg_0.c.x, global0.c.x), !global0.c));
    global1 = arg_0.b;
    let var_1 = global0.b;
    let var_2 = Struct_1(vec2<i32>(~arg_0.a, -25065i), global0.b.b);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 8>();
    var var_0 = vec2<bool>(true, any(vec4<bool>(true, true, true, true)));
    var_0 = global0.c.zx;
    let var_1 = func_4(Struct_2(-1i, Struct_1(func_1(Struct_2(global0.b.a.x, global0.b, vec3<bool>(false, global0.c.x, global0.c.x))), _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(global0.a, -2147483647i, 1i, 0i)), firstTrailingBit(global1.b))), vec3<bool>(true, true, global0.c.x)), global0.b.b.xxx, u_input.a.x);
    var var_2 = -400f;
    var var_3 = var_1.c.x;
    var_2 = _wgslsmith_f_op_f32(419f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-489f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1066f, 1852f))))), _wgslsmith_f_op_f32(max(229f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(207f)) - _wgslsmith_f_op_f32(-1656f + -564f))))));
    let var_4 = i32(-1i) * -21673i;
    var var_5 = func_4(Struct_2(func_1(var_1).x, Struct_1(_wgslsmith_mod_vec2_i32(-var_1.b.b.xx, -global0.b.a), global0.b.b), global0.c), -max(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, global0.b.b.x, global0.a), global1.b.zyx), vec3<i32>(global1.b.x, global0.a, var_1.a)), vec3<i32>(2147483647i, 1i, var_1.b.a.x)), 0u).c.xz;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.xz, -369f, -65809i, -9417i);
}

