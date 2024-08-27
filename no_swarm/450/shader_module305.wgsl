struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6> = array<bool, 6>(true, false, true, false, true, false);

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_2(select(vec4<bool>(global2.a, true || (global1.a != true), !(!global1.a), true), !select(select(vec4<bool>(global3.a, global3.a, false, false), vec4<bool>(global0[_wgslsmith_index_u32(0u, 6u)], true, global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(1u, 6u)]), vec4<bool>(true, global2.a, false, false)), !vec4<bool>(global2.a, false, true, true), !vec4<bool>(global1.a, true, global0[_wgslsmith_index_u32(u_input.a.x, 6u)], global0[_wgslsmith_index_u32(u_input.a.x, 6u)])), true), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(global3.b * global3.b), _wgslsmith_f_op_f32(global3.b - -466f), _wgslsmith_f_op_f32(ceil(global3.c))), _wgslsmith_div_vec3_f32(vec3<f32>(-159f, -945f, global1.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1028f, global3.c, 302f) + vec3<f32>(-1000f, global2.c, 494f))))))), Struct_1(all(select(vec4<bool>(global3.a, true, global2.a, false), vec4<bool>(global1.a, true, global3.a, global2.a), true)), _wgslsmith_f_op_f32(abs(-165f)), global2.b), _wgslsmith_clamp_vec4_i32(-reverseBits(-vec4<i32>(1i, -21810i, 2147483647i, 2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(~2147483647i, firstTrailingBit(-30856i), ~0i, _wgslsmith_sub_i32(2147483647i, 2147483647i)), reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(8361i, -44753i, -2147483647i, -10058i), vec4<i32>(10237i, -10239i, 1i, -1i)))), vec4<i32>(5538i, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-30543i, -1i)), _wgslsmith_add_i32(1i, ~0i))));
    var var_1 = var_0;
    let var_2 = var_0.b.x;
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -241f);
    let var_4 = var_0;
    return var_1.a;
}

fn func_2() -> vec3<f32> {
    let var_0 = Struct_1(all(select(func_3(), vec4<bool>(global0[_wgslsmith_index_u32(1u, 6u)], true, global1.a, global2.a), global2.a)) & !(!global0[_wgslsmith_index_u32(u_input.a.x, 6u)]), global3.c, 983f);
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.c)))), 1798f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global3.c)))) - _wgslsmith_f_op_f32(round(global2.b))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))))));
}

fn func_1() -> i32 {
    let var_0 = -1i;
    global3 = Struct_1(false, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c * 625f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(603f + -1000f) * global1.c)))), 698f);
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -431f, global2.c) + vec3<f32>(global1.c, global1.b, global1.b))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(505f, -832f, global2.c))) + vec3<f32>(-453f, _wgslsmith_f_op_f32(max(global2.c, global1.c)), _wgslsmith_f_op_f32(ceil(-444f)))))));
    let var_2 = ~vec3<i32>(var_0, -31693i, 36417i);
    var var_3 = select(!(!(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], global1.a))), !func_3().wz, vec2<bool>(!(!func_3().x), !func_3().x));
    return _wgslsmith_mod_i32(_wgslsmith_div_i32(abs(var_0) | -min(var_0, -1i), var_2.x), ~_wgslsmith_sub_i32(var_0 | reverseBits(-18165i), var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec2<i32>(firstLeadingBit(func_1()), firstTrailingBit(1i) ^ -1i));
    let var_1 = Struct_1(global2.a, -811f, _wgslsmith_f_op_f32(-global1.c));
    let var_2 = 1u;
    global3 = Struct_1(all(!(!(!vec4<bool>(false, false, global3.a, global0[_wgslsmith_index_u32(51587u, 6u)])))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(323f)) + _wgslsmith_f_op_f32(global1.b - global3.c))), 1236f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(492f - _wgslsmith_f_op_f32(sign(263f))))))));
    global2 = Struct_1(firstLeadingBit(-2147483647i & _wgslsmith_div_i32(var_0.x, var_0.x)) == -2147483647i, 2289f, global1.c);
    var var_3 = Struct_2(vec4<bool>(any(vec2<bool>(false, false)) && false, _wgslsmith_f_op_f32(var_1.c + -1000f) == 1180f, global1.a, global3.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, global1.c, global2.c) - vec3<f32>(1610f, global3.c, 1000f)), vec3<f32>(1480f, 1010f, global2.c))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c, 885f, global1.b) * vec3<f32>(-984f, var_1.c, 713f)))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_1.b, 1800f) - vec3<f32>(global3.b, -1543f, -206f)))))), Struct_1(all(vec4<bool>(false, all(vec4<bool>(global3.a, true, global0[_wgslsmith_index_u32(u_input.a.x, 6u)], true)), true || global3.a, global2.a)), 1004f, global2.c), vec4<i32>(var_0.x, ~var_0.x, min(firstLeadingBit(var_0.x), var_0.x), ~var_0.x) << ((vec4<u32>(var_2, _wgslsmith_sub_u32(30904u, 0u), u_input.a.x, var_2 << (var_2 % 32u)) ^ vec4<u32>(u_input.a.x, 0u, ~28246u, u_input.a.x << (var_2 % 32u))) % vec4<u32>(32u)));
    var var_4 = u_input.a.x;
    var var_5 = Struct_2(var_3.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(137f)), global2.c)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-894f, -1246f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c - -1363f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.x * _wgslsmith_f_op_f32(global1.c * -308f)))), Struct_1(true, _wgslsmith_f_op_f32(sign(var_3.b.x)), 712f), vec4<i32>(10224i, -firstTrailingBit(var_3.d.x & -1i), (~1i >> (0u % 32u)) | _wgslsmith_add_i32(-2147483647i, -var_3.d.x), ~(~select(var_3.d.x, var_3.d.x, true))));
    var var_6 = !var_5.a.yw;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_i32(1i, 1i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(183f)), -704f)), -var_0.x >> (1u % 32u));
}

