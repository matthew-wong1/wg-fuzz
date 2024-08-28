struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: bool,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13> = array<bool, 13>(true, false, true, false, false, false, false, true, true, true, true, true, true);

var<private> global1: array<f32, 5> = array<f32, 5>(-1277f, 329f, -1600f, -113f, 1083f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-arg_3.b);
    global1 = array<f32, 5>();
    let var_1 = arg_3.b.zy;
    let var_2 = arg_1;
    var var_3 = Struct_1(-1331f, vec2<bool>(any(arg_2), !(!all(arg_1.b))), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1010f * arg_1.a), _wgslsmith_f_op_f32(step(-486f, var_0.x)))), var_0.x))), true);
    return max(-2147483647i, 1i) >> ((u_input.c ^ (_wgslsmith_add_u32(firstTrailingBit(1u), 0u) >> ((22209u << (abs(u_input.b.x) % 32u)) % 32u))) % 32u);
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = vec3<f32>(1458f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(select(u_input.e, 9202u, true), 5u)] * global1[_wgslsmith_index_u32(33783u, 5u)]) - -1395f)), _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(~u_input.c, 5u)])));
    let var_1 = countOneBits(~vec2<u32>(u_input.e, select(u_input.c, 0u, global0[_wgslsmith_index_u32(0u, 13u)]))) << (vec2<u32>(abs(0u), ~(~u_input.e)) % vec2<u32>(32u));
    var var_2 = Struct_3(abs(select(~vec3<u32>(61898u, 21345u, u_input.e), vec3<u32>(u_input.c, var_1.x, 11375u), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 13u)], true, false)) >> (u_input.b.zzw % vec3<u32>(32u))), select(!select(vec3<bool>(global0[_wgslsmith_index_u32(16939u, 13u)], global0[_wgslsmith_index_u32(u_input.e, 13u)], false), vec3<bool>(true, true, true), arg_0), vec3<bool>(!global0[_wgslsmith_index_u32(~47616u, 13u)], true, true), !vec3<bool>(true, arg_0.x, true)), Struct_2(!(true || global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, var_1.x), 13u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_0))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-462f, global1[_wgslsmith_index_u32(u_input.b.x, 5u)], 1740f) * var_0)), vec2<i32>(min(u_input.d, func_3(false, Struct_1(-3413f, vec2<bool>(global0[_wgslsmith_index_u32(var_1.x, 13u)], false), false, global1[_wgslsmith_index_u32(u_input.e, 5u)], arg_0.x), vec4<bool>(global0[_wgslsmith_index_u32(var_1.x, 13u)], global0[_wgslsmith_index_u32(var_1.x, 13u)], global0[_wgslsmith_index_u32(var_1.x, 13u)], arg_0.x), Struct_2(global0[_wgslsmith_index_u32(var_1.x, 13u)], var_0, vec2<i32>(u_input.d, u_input.d)))), _wgslsmith_mod_i32(1i, u_input.d))));
    var_2 = Struct_3(firstLeadingBit(vec3<u32>(_wgslsmith_sub_u32(~var_2.a.x, ~var_2.a.x), var_1.x, _wgslsmith_mult_u32(~var_2.a.x, ~1u))), select(var_2.b, select(select(vec3<bool>(true, false, arg_0.x), select(arg_0, arg_0, vec3<bool>(true, true, global0[_wgslsmith_index_u32(3641u, 13u)])), select(arg_0, vec3<bool>(arg_0.x, true, true), vec3<bool>(var_2.c.a, true, global0[_wgslsmith_index_u32(var_1.x, 13u)]))), !vec3<bool>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)]), !var_2.b.x && global0[_wgslsmith_index_u32(u_input.b.x, 13u)]), var_2.b), Struct_2(false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0)), vec2<i32>(var_2.c.c.x | -1i, 0i) << (var_1 % vec2<u32>(32u))));
    var var_3 = Struct_3(u_input.b.zzx, arg_0, var_2.c);
    return var_3.c;
}

fn func_1(arg_0: vec2<bool>) -> StorageBuffer {
    var var_0 = func_2(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 13u)], !any(!vec2<bool>(true, arg_0.x))));
    var var_1 = var_0.b.x;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(576f + 643f) - -1205f) - global1[_wgslsmith_index_u32(~(u_input.c & 1u), 5u)]))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~1u, _wgslsmith_mult_u32(u_input.c, u_input.e)), 5u)], -190f)) + 2001f));
    var var_3 = Struct_2(((global0[_wgslsmith_index_u32(u_input.e, 13u)] || true) & (any(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 13u)], true)) | any(vec4<bool>(true, false, true, false)))) || true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1107f, 963f, -847f) * _wgslsmith_f_op_vec3_f32(var_0.b - var_0.b))))), -_wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(var_0.c.x, u_input.d)) << (select(vec2<u32>(u_input.c, 0u), vec2<u32>(u_input.e, u_input.b.x), arg_0) % vec2<u32>(32u)), vec2<i32>(1i, ~1i)));
    let var_4 = Struct_1(var_0.b.x, select(arg_0, !(!select(vec2<bool>(arg_0.x, true), arg_0, global0[_wgslsmith_index_u32(u_input.c, 13u)])), !(!vec2<bool>(var_0.a, false))), !any(vec4<bool>(var_3.c.x > -1i, any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.e, 13u)], false)), true, false)), var_0.b.x, global0[_wgslsmith_index_u32((~u_input.e | min(4294967295u, u_input.e)) >> (max(u_input.b.x, 1u) % 32u), 13u)] || !global0[_wgslsmith_index_u32(u_input.b.x, 13u)]);
    return StorageBuffer(~44094u, _wgslsmith_add_vec4_i32(max(-vec4<i32>(var_3.c.x, var_0.c.x, u_input.d, u_input.a), ~vec4<i32>(-39174i, 11253i, var_0.c.x, var_0.c.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_3.c.x, u_input.a, var_3.c.x, 1i), vec4<i32>(0i, var_3.c.x, var_0.c.x, u_input.a))) & _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, var_3.c.x, var_0.c.x, u_input.d), max(vec4<i32>(-17298i, 2147483647i, u_input.d, 1i), vec4<i32>(-1i, u_input.a, var_0.c.x, 16149i)) << (u_input.b % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(firstLeadingBit(u_input.c), 5u)];
    let x = u_input.a;
    s_output = func_1(vec2<bool>(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~u_input.b.wwz, ~vec3<u32>(4294967295u, 4294967295u, u_input.e)), 13u)], !(!global0[_wgslsmith_index_u32(~4294967295u, 13u)])));
}

