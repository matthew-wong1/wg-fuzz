struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: bool,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(2147483647i, vec3<bool>(true, false, false), true, Struct_1(-27989i, vec4<bool>(true, false, true, false)), vec4<bool>(true, true, false, false));

var<private> global1: bool;

var<private> global2: array<u32, 28>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: vec4<u32>) -> f32 {
    global1 = !global0.b.x;
    var var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(firstTrailingBit(~(~global2[_wgslsmith_index_u32(u_input.c, 28u)])), arg_2.x), 28u)];
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-311f - _wgslsmith_f_op_f32(select(1655f, 1000f, any(!global0.b.xx))))));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> i32 {
    var var_0 = Struct_2(-8044i, select(vec3<bool>(any(vec3<bool>(true, arg_0.b.x, true)), true, true), !select(select(vec3<bool>(global0.c, false, true), vec3<bool>(true, true, global0.b.x), global0.b), select(vec3<bool>(arg_0.b.x, true, global0.c), vec3<bool>(false, global0.b.x, false), arg_0.b.x), false), !(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(26673u, 28u)], 4294967295u) > global2[_wgslsmith_index_u32(u_input.c, 28u)])), false, global0.d, arg_0.b);
    return -global0.a;
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> bool {
    var var_0 = 0i;
    let var_1 = arg_0.b.wy;
    var var_2 = 33406u;
    let var_3 = Struct_2(-_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(52139i, u_input.b, -24008i), vec3<i32>(-1i, arg_1, 27066i)) ^ ~vec3<i32>(global0.d.a, u_input.b, arg_1), abs(vec3<i32>(-16995i, 2147483647i, global0.a)) << (vec3<u32>(u_input.d, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 28u)], 28u)], u_input.a) % vec3<u32>(32u))), !select(arg_0.b.zyx, select(select(vec3<bool>(true, true, false), arg_0.b.zzw, vec3<bool>(true, true, var_1.x)), arg_0.b.wwx, false), !arg_0.b.x && global0.c), !(var_1.x | all(arg_0.b)) | true, global0.d, select(vec4<bool>(_wgslsmith_mod_u32(46023u, u_input.d) <= ~67713u, any(select(arg_0.b.xwz, global0.d.b.wxw, false)), (u_input.b >> (14862u % 32u)) == ~arg_0.a, any(!global0.b.yx)), global0.e, arg_0.b));
    var var_4 = _wgslsmith_mult_u32(~(~(~(4294967295u | global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 28u)], 28u)]))), u_input.d);
    return true | (1f <= _wgslsmith_f_op_f32(select(-362f, -212f, arg_0.b.x)));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: f32) -> StorageBuffer {
    global1 = true;
    var var_0 = Struct_1(5960i, global0.e);
    global1 = func_4(Struct_1(~var_0.a | max(func_3(global0.d, -1i), global0.a & 1i), var_0.b), ~reverseBits(_wgslsmith_mult_i32(global0.a, 0i)) & 1i);
    var_0 = global0.d;
    let var_1 = 545f;
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(973f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 156f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_0))))))), _wgslsmith_sub_vec3_u32(arg_1.wxw, ~arg_1.yzz), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_2(global0.a, var_0.b.wyx, true, Struct_1(0i, global0.d.b), var_0.b), u_input.d, arg_1)), -932f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-arg_2), -244f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(38442u, 31732u, u_input.a, 49u), vec4<u32>(4294967295u, u_input.c, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(24771u, 28u)], 28u)])), ~vec4<u32>(0u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(21690u, 28u)], 28u)], u_input.c)) << (min(vec4<u32>(70451u, 24893u, 73750u, u_input.d), vec4<u32>(4294967295u, 53573u, 28788u, 7935u)) % vec4<u32>(32u)), ~(~vec4<u32>(1u, 0u, 39815u, u_input.a)) >> (~select(vec4<u32>(51061u, global2[_wgslsmith_index_u32(1u, 28u)], 11185u, 43354u), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)], u_input.d, 25182u, u_input.c), vec4<bool>(true, true, global0.c, global0.d.b.x)) % vec4<u32>(32u)));
    var var_1 = Struct_1(0i, vec4<bool>(global0.b.x, !all(select(vec2<bool>(global0.e.x, false), global0.b.xx, vec2<bool>(false, global0.e.x))), !global0.c, !(!any(vec4<bool>(global0.d.b.x, global0.b.x, false, global0.c)))));
    let var_2 = firstLeadingBit(max(var_1.a, _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(var_1.a, -5223i)), _wgslsmith_add_vec2_i32(~vec2<i32>(25631i, var_1.a), vec2<i32>(2559i, global0.a) << (var_0.yy % vec2<u32>(32u))))));
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -325f)), _wgslsmith_f_op_f32(trunc(-124f)), 4294967295u >= ~var_0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -599f) - _wgslsmith_f_op_f32(func_1(Struct_2(32617i, global0.e.zwy, var_1.b.x, Struct_1(0i, var_1.b), vec4<bool>(false, false, false, true)), 0u, vec4<u32>(var_0.x, var_0.x, var_0.x, u_input.d))))))));
    let x = u_input.a;
    s_output = func_2(-519f, _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(var_0, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 9789u, 0u, 4294967295u), var_0)), var_0), 1f);
}

