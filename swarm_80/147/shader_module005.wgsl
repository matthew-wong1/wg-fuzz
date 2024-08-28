struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(42220i, 2147483647i, 2147483647i, 2227i);

var<private> global1: array<i32, 2> = array<i32, 2>(-4985i, 1i);

var<private> global2: array<f32, 28>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2() -> vec3<i32> {
    var var_0 = Struct_1(~u_input.b);
    global2 = array<f32, 28>();
    let var_1 = Struct_1(u_input.b);
    var_0 = var_1;
    var_0 = var_1;
    return _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(u_input.d.wzw, select(vec3<i32>(global0[_wgslsmith_index_u32(var_1.a.x, 4u)], global0[_wgslsmith_index_u32(38671u, 4u)], global0[_wgslsmith_index_u32(44174u, 4u)]), u_input.d.zwx, any(vec2<bool>(true, true))) | u_input.d.yzy), u_input.d.wwz);
}

fn func_3() -> u32 {
    let var_0 = Struct_1(~(~(~vec4<u32>(9076u, 43540u, 3362u, u_input.e) | (vec4<u32>(0u, u_input.b.x, 0u, u_input.b.x) | u_input.b))));
    global1 = array<i32, 2>();
    var var_1 = !(!(global2[_wgslsmith_index_u32(1u, 28u)] != _wgslsmith_f_op_f32(round(-881f))));
    let var_2 = var_0;
    let var_3 = Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(var_2.a & (vec4<u32>(u_input.b.x, 0u, 17925u, var_0.a.x) | u_input.b), vec4<u32>(var_2.a.x, 4294967295u, u_input.b.x, ~4294967295u)), countOneBits(max(min(vec4<u32>(var_2.a.x, var_2.a.x, u_input.e, u_input.b.x), var_0.a), vec4<u32>(u_input.b.x, 4294967295u, var_0.a.x, 0u)))));
    return _wgslsmith_dot_vec2_u32(~u_input.b.xx, _wgslsmith_sub_vec2_u32(u_input.b.xz, (var_0.a.yz | vec2<u32>(0u, 0u)) ^ vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.e, u_input.e, u_input.b.x), var_0.a), var_0.a.x)));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec3_i32(-select(func_2(), vec3<i32>(-27496i, global0[_wgslsmith_index_u32(func_3(), 4u)], -1i), vec3<bool>(true, true, true)), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(abs(u_input.d.zyz), u_input.d.yyx) << (u_input.b.www % vec3<u32>(32u)), vec3<i32>(0i, -1i, arg_0 >> (u_input.b.x % 32u))));
    var_0 = vec3<i32>(-_wgslsmith_dot_vec3_i32(-u_input.d.xwx, -vec3<i32>(u_input.a.x, -1i, arg_0)), abs(func_2().x), _wgslsmith_sub_i32(-firstLeadingBit(reverseBits(var_0.x)), 1i));
    let var_1 = Struct_1(~(~vec4<u32>(u_input.e, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 17772u, 339u, 41322u), u_input.b), _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(4294967295u, 79415u, u_input.b.x, u_input.b.x)), ~34168u)));
    var var_2 = ~(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(~u_input.b.yy, _wgslsmith_div_vec2_u32(u_input.b.wy, vec2<u32>(u_input.e, var_1.a.x))), ~(vec2<u32>(var_1.a.x, 0u) ^ vec2<u32>(var_1.a.x, var_1.a.x)), _wgslsmith_add_vec2_u32(vec2<u32>(var_1.a.x, var_1.a.x), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.e, 1u), u_input.b.xx))) << (min(min(vec2<u32>(47221u, 1u), var_1.a.zy), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 1u) >> (u_input.b.yw % vec2<u32>(32u)), firstLeadingBit(var_1.a.yw))) % vec2<u32>(32u)));
    let var_3 = !select(vec2<bool>(true, true), vec2<bool>(!(-644f != global2[_wgslsmith_index_u32(110393u, 28u)]), true), true);
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    global2 = array<f32, 28>();
    let var_0 = arg_2;
    var var_1 = func_1(firstLeadingBit(-_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, -31199i, global1[_wgslsmith_index_u32(4294967295u, 2u)]), _wgslsmith_clamp_vec3_i32(arg_1.yzw, arg_1.zyx, vec3<i32>(global1[_wgslsmith_index_u32(0u, 2u)], u_input.a.x, global1[_wgslsmith_index_u32(arg_0.a.x, 2u)])))), arg_1.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1795f, global2[_wgslsmith_index_u32(66742u, 28u)]))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1162f, global2[_wgslsmith_index_u32(var_0.a.x, 28u)]) - vec2<f32>(global2[_wgslsmith_index_u32(arg_3.a.x, 28u)], global2[_wgslsmith_index_u32(arg_2.a.x, 28u)])), vec2<bool>(false, true))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-397f, 689f)))));
    let var_2 = 1i;
    let var_3 = arg_1.xxw;
    return arg_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.b);
    let var_1 = Struct_1(_wgslsmith_add_vec4_u32(~_wgslsmith_mult_vec4_u32(var_0.a, _wgslsmith_mult_vec4_u32(vec4<u32>(3136u, u_input.b.x, var_0.a.x, 1u), u_input.b)), func_4(func_1(~global1[_wgslsmith_index_u32(u_input.e, 2u)], reverseBits(2147483647i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 28u)], global2[_wgslsmith_index_u32(var_0.a.x, 28u)]))), _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(14204i, u_input.d.x, global0[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(u_input.e, 2u)])), vec4<i32>(-19051i, -16851i, global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(41247u, 2u)])), func_1(u_input.c, min(19272i, global0[_wgslsmith_index_u32(var_0.a.x, 4u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(var_0.a.x, 28u)], -173f) * vec2<f32>(979f, global2[_wgslsmith_index_u32(13818u, 28u)]))), func_1(_wgslsmith_sub_i32(-5728i, global0[_wgslsmith_index_u32(var_0.a.x, 4u)]), abs(u_input.a.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 28u)], global2[_wgslsmith_index_u32(1u, 28u)]), vec2<f32>(global2[_wgslsmith_index_u32(var_0.a.x, 28u)], global2[_wgslsmith_index_u32(96578u, 28u)]), vec2<bool>(true, true)))))));
    var var_2 = Struct_1(u_input.b);
    var_2 = Struct_1(vec4<u32>(19677u, 47921u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(var_2.a.x, u_input.e, var_0.a.x, var_1.a.x)), var_0.a | vec4<u32>(43242u, 73863u, 30265u, 4294967295u)), var_0.a), var_0.a.x));
    var var_3 = _wgslsmith_add_i32(global0[_wgslsmith_index_u32(var_0.a.x, 4u)], firstLeadingBit(global1[_wgslsmith_index_u32(~var_1.a.x, 2u)]));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x, var_2.a.wzx, _wgslsmith_f_op_f32(select(1776f, global2[_wgslsmith_index_u32(var_0.a.x, 28u)], true)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2[_wgslsmith_index_u32(var_1.a.x, 28u)], global2[_wgslsmith_index_u32(var_2.a.x, 28u)])))), vec2<f32>(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(27797u, 28u)])), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_2.a.x, 28u)]))))));
}

