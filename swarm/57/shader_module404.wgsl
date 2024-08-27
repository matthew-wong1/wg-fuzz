struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26>;

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<i32>(9921i, 21902i, 0i)), Struct_1(vec3<i32>(-1i, -41070i, -29643i)), Struct_1(vec3<i32>(0i, -9436i, 35666i)), Struct_1(vec3<i32>(-48264i, -28680i, 0i)), Struct_1(vec3<i32>(i32(-2147483648), 1i, 0i)), Struct_1(vec3<i32>(1i, -29152i, i32(-2147483648))), Struct_1(vec3<i32>(1i, 0i, -85336i)), Struct_1(vec3<i32>(i32(-2147483648), -32387i, i32(-2147483648))), Struct_1(vec3<i32>(61360i, 1i, 25230i)), Struct_1(vec3<i32>(i32(-2147483648), -1i, 37158i)), Struct_1(vec3<i32>(5364i, 1i, i32(-2147483648))), Struct_1(vec3<i32>(-67334i, -1i, 2147483647i)), Struct_1(vec3<i32>(-6197i, -24065i, 62424i)), Struct_1(vec3<i32>(0i, 1i, i32(-2147483648))), Struct_1(vec3<i32>(-1i, 1i, 0i)), Struct_1(vec3<i32>(1016i, 2147483647i, i32(-2147483648))), Struct_1(vec3<i32>(-1i, 2147483647i, 1i)), Struct_1(vec3<i32>(-2313i, 2147483647i, -1i)), Struct_1(vec3<i32>(-16169i, 2147483647i, i32(-2147483648))), Struct_1(vec3<i32>(-1i, i32(-2147483648), i32(-2147483648))), Struct_1(vec3<i32>(-33122i, -1i, 2147483647i)), Struct_1(vec3<i32>(i32(-2147483648), 59948i, -24893i)), Struct_1(vec3<i32>(-14579i, 1305i, 9211i)), Struct_1(vec3<i32>(16758i, 31314i, 0i)), Struct_1(vec3<i32>(-1i, 26915i, 2147483647i)), Struct_1(vec3<i32>(35404i, 5624i, 39672i)), Struct_1(vec3<i32>(-19232i, 3950i, -59635i)), Struct_1(vec3<i32>(i32(-2147483648), 1i, 5410i)), Struct_1(vec3<i32>(2147483647i, -7972i, 28396i)), Struct_1(vec3<i32>(0i, -1i, -31067i)), Struct_1(vec3<i32>(-1i, -36446i, -20818i)));

var<private> global2: array<f32, 24>;

var<private> global3: array<Struct_1, 2>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    global1 = array<Struct_1, 31>();
    global1 = array<Struct_1, 31>();
    let var_0 = global1[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(u_input.b.x, firstTrailingBit(u_input.b.x)), min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x) >> (vec4<u32>(u_input.b.x, u_input.b.x, 0u, 0u) % vec4<u32>(32u)), ~vec4<u32>(0u, 0u, u_input.b.x, u_input.b.x)) | u_input.b.x, reverseBits(u_input.b.x))), 31u)];
    let var_1 = all(vec4<bool>(true, true, !any(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, true))));
    global2 = array<f32, 24>();
    return false;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: vec4<f32>) -> bool {
    var var_0 = _wgslsmith_mod_vec3_i32(u_input.a, u_input.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 24u)], 1344f, -463f))))));
    global0 = array<i32, 26>();
    let var_2 = arg_3.zz;
    global3 = array<Struct_1, 2>();
    return any(select(vec4<bool>(any(select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, arg_0, false), false)), arg_0, true, !any(vec4<bool>(false, false, arg_0, arg_0))), vec4<bool>(false, true, true, true), true));
}

fn func_2() -> Struct_1 {
    var var_0 = func_4(func_3(), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), u_input.b.x, ~23371u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 96279u, u_input.b.x), reverseBits(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)))), 31u)], ~(~countOneBits(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 23151u))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2[_wgslsmith_index_u32(132348u, 24u)], global2[_wgslsmith_index_u32(u_input.b.x, 24u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -376f)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 1u, u_input.b.x), abs(vec4<u32>(39463u, u_input.b.x, 14739u, 63828u))), 24u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(56021u, 24u)], global2[_wgslsmith_index_u32(u_input.b.x, 24u)], -1228f, global2[_wgslsmith_index_u32(4294967295u, 24u)]) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2022f, 468f, global2[_wgslsmith_index_u32(u_input.b.x, 24u)], 1332f)))))));
    let var_1 = Struct_1(vec3<i32>(abs(~firstLeadingBit(22725i)), u_input.a.x, 19739i));
    var var_2 = var_1;
    let var_3 = var_1;
    let var_4 = _wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(0u, 25559u));
    return global3[_wgslsmith_index_u32(1u, 2u)];
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec4<u32>) -> f32 {
    global0 = array<i32, 26>();
    var var_0 = func_2();
    var var_1 = arg_2;
    var_0 = Struct_1(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(u_input.a.x, arg_1.a.x, abs(1i))), vec3<i32>(var_0.a.x, ~u_input.a.x, -1i) & abs(vec3<i32>(global0[_wgslsmith_index_u32(arg_0.x, 26u)], -5973i, arg_1.a.x) ^ u_input.a)));
    var var_2 = !(-59312i == (_wgslsmith_add_i32(~var_0.a.x, var_0.a.x & u_input.a.x) | _wgslsmith_mod_i32(~u_input.a.x, arg_1.a.x)));
    return _wgslsmith_f_op_f32(select(-184f, global2[_wgslsmith_index_u32(arg_0.x, 24u)], _wgslsmith_mod_u32(_wgslsmith_div_u32(25749u, u_input.b.x ^ 4294967295u), ~arg_3.x) <= u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(u_input.b.x, 24u)]))))))), _wgslsmith_div_f32(-130f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(~u_input.b, global1[_wgslsmith_index_u32(40178u, 31u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(-644f, -2001f)), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 26225u) >> (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 23057u) % vec4<u32>(32u))))))), global2[_wgslsmith_index_u32(u_input.b.x, 24u)]);
    global0 = array<i32, 26>();
    let var_1 = Struct_1(u_input.a);
    let var_2 = Struct_1(~_wgslsmith_add_vec3_i32(firstTrailingBit(_wgslsmith_div_vec3_i32(var_1.a, vec3<i32>(0i, var_1.a.x, var_1.a.x))), vec3<i32>(-u_input.a.x, _wgslsmith_mult_i32(-2147483647i, var_1.a.x), max(-36060i, -6157i))));
    global1 = array<Struct_1, 31>();
    var var_3 = countOneBits(firstTrailingBit(1u) | ~u_input.b.x);
    let var_4 = Struct_1(u_input.a);
    let var_5 = !func_3();
    var var_6 = select(vec4<bool>(any(!(!vec4<bool>(var_5, var_5, var_5, var_5))), (max(95747u, u_input.b.x) < ~u_input.b.x) != var_5, true, any(select(vec4<bool>(true, var_5, false, var_5), vec4<bool>(var_5, true, var_5, false), !vec4<bool>(false, var_5, var_5, false)))), !select(select(!vec4<bool>(false, var_5, false, var_5), !vec4<bool>(var_5, var_5, var_5, true), true), vec4<bool>(var_5, var_5, true, true), var_5), !vec4<bool>(var_5, true, !any(vec3<bool>(false, true, false)), any(!vec2<bool>(var_5, false))));
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

