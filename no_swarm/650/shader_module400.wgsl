struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: i32 = -31187i;

var<private> global2: vec2<bool> = vec2<bool>(true, false);

var<private> global3: array<i32, 13> = array<i32, 13>(0i, i32(-2147483648), 13581i, 2147483647i, -1i, 1i, 1i, -7774i, i32(-2147483648), 18666i, i32(-2147483648), -1i, 0i);

var<private> global4: vec4<bool>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2) -> bool {
    var var_0 = arg_1.a.d;
    var var_1 = arg_1;
    var_1 = Struct_2(Struct_1(all(select(select(vec3<bool>(false, var_1.a.a, true), vec3<bool>(true, global4.x, false), vec3<bool>(true, true, global2.x)), vec3<bool>(var_1.a.a, global4.x, true), global4.zxw)), !(!vec3<bool>(true, global2.x, true)), var_1.a.a, -249f), var_1.a);
    var_0 = -269f;
    global3 = array<i32, 13>();
    return all(vec3<bool>(select(true, arg_1.b.c, all(vec2<bool>(true, true))), true, true));
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(select(u_input.a > (u_input.a >> (6109u % 32u)), func_3(countOneBits(vec3<i32>(-2369i, -75604i, global3[_wgslsmith_index_u32(8217u, 13u)])), Struct_2(Struct_1(true, global4.xyy, global4.x, arg_0), Struct_1(global4.x, global4.yxy, global4.x, 531f))), true), vec3<bool>(true, false, any(vec4<bool>(global2.x, true, false, global4.x))), !(u_input.a <= (13574u << (u_input.a % 32u))), _wgslsmith_f_op_f32(-arg_0)), Struct_1(!global2.x, !global4.wxz, select(global2.x, true, !(u_input.a < 1u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-282f * arg_0)))))));
    var var_1 = vec4<i32>(_wgslsmith_mod_i32(0i, reverseBits(arg_1 >> (66347u % 32u)) >> (u_input.a % 32u)), global3[_wgslsmith_index_u32(firstLeadingBit(0u), 13u)], _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(select(vec3<i32>(global3[_wgslsmith_index_u32(u_input.a, 13u)], global3[_wgslsmith_index_u32(1u, 13u)], -52502i) | vec3<i32>(global3[_wgslsmith_index_u32(659u, 13u)], -1i, 65419i), ~vec3<i32>(0i, arg_1, global3[_wgslsmith_index_u32(28215u, 13u)]), false), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(-8100i, global3[_wgslsmith_index_u32(u_input.a, 13u)], arg_1)), min(vec3<i32>(2147483647i, -1i, -10022i), vec3<i32>(arg_1, arg_1, -2147483647i)))), ~global3[_wgslsmith_index_u32(min(u_input.a >> (18475u % 32u), ~u_input.a), 13u)]), 1i);
    var_0 = Struct_2(Struct_1(-2559f < var_0.b.d, vec3<bool>(true && select(global4.x, var_0.a.b.x, var_0.a.a), !any(var_0.a.b), true), var_0.a.a, _wgslsmith_f_op_f32(-var_0.a.d)), var_0.b);
    let var_2 = Struct_2(Struct_1(true, vec3<bool>(true & var_0.a.a, global4.x, false), !global2.x, _wgslsmith_f_op_f32(-arg_0)), Struct_1(global2.x, var_0.b.b, !(global4.x | var_0.a.b.x), 1000f));
    var_0 = var_2;
    return Struct_2(Struct_1(all(!(!var_0.b.b)), var_0.b.b, min(8391u, ~u_input.a) > u_input.a, var_2.b.d), var_0.a);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: f32, arg_3: i32) -> Struct_1 {
    let var_0 = ~(4294967295u | u_input.a);
    global1 = _wgslsmith_dot_vec3_i32(countOneBits(~(vec3<i32>(0i, global3[_wgslsmith_index_u32(u_input.a, 13u)], -31384i) & vec3<i32>(arg_3, 0i, global3[_wgslsmith_index_u32(66459u, 13u)]))), vec3<i32>(_wgslsmith_sub_i32(0i << (var_0 % 32u), -2147483647i), -1i, 0i)) ^ (~2147483647i | max(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3, 1i, global3[_wgslsmith_index_u32(1083u, 13u)]), vec3<i32>(global3[_wgslsmith_index_u32(arg_0, 13u)], global3[_wgslsmith_index_u32(1u, 13u)], arg_3) << (vec3<u32>(1u, arg_0, 1u) % vec3<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_f32(-arg_1.b.d);
    global2 = arg_1.b.b.zz;
    var var_2 = func_2(arg_2, _wgslsmith_dot_vec4_i32(-vec4<i32>(~arg_3, arg_3, _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(1u, 13u)], -29972i), _wgslsmith_dot_vec2_i32(vec2<i32>(7809i, 2147483647i), vec2<i32>(arg_3, 0i))), vec4<i32>(-min(-1i, global3[_wgslsmith_index_u32(var_0, 13u)]), 2147483647i, 1i, 2147483647i))).b;
    return func_2(_wgslsmith_f_op_f32(f32(-1f) * -1014f), ~min(-abs(2147483647i), abs(global3[_wgslsmith_index_u32(arg_0, 13u)] | arg_3))).b;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_2(arg_0.d, global3[_wgslsmith_index_u32(16969u, 13u)]);
    var var_1 = func_4(firstLeadingBit(0u ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 0u), vec4<u32>(1u, u_input.a, u_input.a, u_input.a))), Struct_2(var_0.b, func_2(var_0.a.d, 1i).b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(789f * _wgslsmith_f_op_f32(f32(-1f) * -145f))), var_0.a.d)), _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(7268u << (u_input.a % 32u), 13u)], abs(global3[_wgslsmith_index_u32(1u, 13u)])));
    global1 = reverseBits(-global3[_wgslsmith_index_u32(u_input.a, 13u)]);
    var var_2 = func_2(var_1.d, global3[_wgslsmith_index_u32(reverseBits(~min(countOneBits(u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, 1u), vec4<u32>(u_input.a, 0u, 29648u, 14622u)))), 13u)]);
    global0 = true;
    return Struct_1(2147483647i <= global3[_wgslsmith_index_u32(992u, 13u)], global4.xxx, true, _wgslsmith_f_op_f32(-1591f + arg_0.d));
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    return func_5(func_4(0u, func_2(arg_0.x, ~(i32(-1i) * -24161i)), _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)), max(-global3[_wgslsmith_index_u32(u_input.a, 13u)], _wgslsmith_dot_vec4_i32(select(vec4<i32>(global3[_wgslsmith_index_u32(u_input.a, 13u)], -22626i, global3[_wgslsmith_index_u32(u_input.a, 13u)], global3[_wgslsmith_index_u32(u_input.a, 13u)]), vec4<i32>(global3[_wgslsmith_index_u32(26448u, 13u)], global3[_wgslsmith_index_u32(49569u, 13u)], global3[_wgslsmith_index_u32(0u, 13u)], 29453i), vec4<bool>(global4.x, true, global4.x, true)), vec4<i32>(1i, 1i, global3[_wgslsmith_index_u32(u_input.a, 13u)], global3[_wgslsmith_index_u32(u_input.a, 13u)]) >> (vec4<u32>(0u, 1037u, u_input.a, 4294967295u) % vec4<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = firstTrailingBit(global3[_wgslsmith_index_u32(u_input.a, 13u)]);
    var var_0 = func_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-447f, -530f, -846f, -673f), vec4<f32>(-409f, 737f, -2278f, 881f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-856f, 218f, 1239f, 866f) + vec4<f32>(286f, 1388f, 150f, 1631f)) - vec4<f32>(-1895f, -1724f, 1041f, -211f))))));
    var var_1 = Struct_1(false, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d))), 2147483647i).a.b, !var_0.c, _wgslsmith_div_f32(137f, _wgslsmith_f_op_f32(exp2(var_0.d))));
    var_0 = func_4(_wgslsmith_add_u32(u_input.a, u_input.a), Struct_2(Struct_1(false, !select(vec3<bool>(true, var_1.a, var_0.a), var_1.b, true), var_1.b.x, func_5(Struct_1(global4.x, vec3<bool>(global4.x, false, var_1.b.x), true, var_0.d)).d), Struct_1(!(true && global4.x), func_4(~16302u, Struct_2(Struct_1(var_1.a, var_0.b, global4.x, var_0.d), Struct_1(false, var_1.b, global2.x, 918f)), _wgslsmith_f_op_f32(trunc(var_1.d)), -1i).b, global4.x & all(vec3<bool>(global4.x, var_1.c, var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -504f)))), _wgslsmith_f_op_f32(abs(757f)), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstTrailingBit(2582u), _wgslsmith_mult_u32(~abs(33557u), firstTrailingBit(22955u))), 13u)]);
    let var_2 = var_0.b.yz;
    let x = u_input.a;
    s_output = StorageBuffer(-(abs(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 24807u), 13u)]) | _wgslsmith_mult_i32(min(global3[_wgslsmith_index_u32(u_input.a, 13u)], global3[_wgslsmith_index_u32(22306u, 13u)]), _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(u_input.a, 13u)], global3[_wgslsmith_index_u32(u_input.a, 13u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1196f, -1699f)))))));
}

