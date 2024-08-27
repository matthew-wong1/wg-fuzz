struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<bool>,
    e: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 12>;

var<private> global2: array<vec4<i32>, 30>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3, arg_3: vec4<i32>) -> i32 {
    var var_0 = Struct_4(arg_0.c.x, Struct_1(arg_0.a, firstLeadingBit((arg_2.c.b ^ arg_2.c.b) ^ arg_2.c.b), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, arg_3.x, arg_0.a.x, -2147483647i), u_input.c), global2[_wgslsmith_index_u32(0u, 30u)]) >> (vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 12u)], global1[_wgslsmith_index_u32(53772u, 12u)], _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 1u), 4294967295u) % vec4<u32>(32u)), !select(!arg_0.d, arg_0.d, select(arg_2.c.d, vec3<bool>(false, false, false), arg_2.c.d)), _wgslsmith_f_op_f32(-1243f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.e * arg_0.e), -442f))));
    var var_1 = ~(-arg_0.c.xw);
    global2 = array<vec4<i32>, 30>();
    return 6155i;
}

fn func_2() -> f32 {
    global0 = _wgslsmith_f_op_f32(-1868f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-533f)) - _wgslsmith_f_op_f32(min(-3242f, _wgslsmith_f_op_f32(sign(364f)))))) > 1f;
    var var_0 = Struct_4(i32(-1i) * -60470i, Struct_1(min(u_input.c.wz | -vec2<i32>(1i, 1i), u_input.c.yz & vec2<i32>(u_input.c.x, 4636i)), ~firstTrailingBit(vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 12u)], u_input.a, u_input.a)) | ~(~vec3<u32>(25114u, global1[_wgslsmith_index_u32(18613u, 12u)], 4294967295u)), vec4<i32>(u_input.c.x, u_input.b | 2147483647i, u_input.c.x, -2147483647i), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(992f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-364f, -1906f))))));
    var var_1 = select(var_0.b.d.x, var_0.b.d.x, !(u_input.a >= global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 12u)], 12u)], 48838u), _wgslsmith_sub_u32(u_input.a, 13253u), 0u), 12u)]));
    let var_2 = ~global1[_wgslsmith_index_u32(~(~(~1u)), 12u)];
    let var_3 = Struct_3(var_0.a ^ _wgslsmith_dot_vec3_i32(var_0.b.c.zzx, ~vec3<i32>(u_input.c.x, 1i, var_0.a) >> ((var_0.b.b & var_0.b.b) % vec3<u32>(32u))), countOneBits(-vec3<i32>(select(1i, 2147483647i, false), u_input.b, var_0.a)), Struct_1(vec2<i32>(func_3(Struct_1(vec2<i32>(-8006i, u_input.b), var_0.b.b, u_input.c, var_0.b.d, 554f), true, Struct_3(var_0.a, var_0.b.c.ywz, Struct_1(vec2<i32>(-1i, var_0.b.c.x), var_0.b.b, u_input.c, var_0.b.d, 920f)), vec4<i32>(var_0.b.a.x, u_input.c.x, u_input.b, u_input.b) << (vec4<u32>(global1[_wgslsmith_index_u32(var_2, 12u)], u_input.a, 4294967295u, var_0.b.b.x) % vec4<u32>(32u))), -1i), reverseBits(abs(~vec3<u32>(1u, 1u, 0u))), -global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2, 12u)], 30u)], select(select(var_0.b.d, !var_0.b.d, !var_0.b.d.x), var_0.b.d, var_0.b.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.e) * _wgslsmith_f_op_f32(-var_0.b.e)))));
    return 1000f;
}

fn func_1() -> vec2<u32> {
    global0 = true;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -580f) + -242f);
    var var_1 = _wgslsmith_mod_i32(u_input.c.x, ~(~min(-2147483647i, -2147483647i)) ^ u_input.c.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0, -1130f, var_0)))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-882f, var_0, _wgslsmith_f_op_f32(-765f + _wgslsmith_f_op_f32(ceil(-342f)))) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), 690f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1082f, var_0))), _wgslsmith_f_op_f32(-var_0))));
    let var_3 = Struct_1(~vec2<i32>(select(~u_input.c.x, min(u_input.c.x, u_input.c.x), select(true, false, true)), 2147483647i), vec3<u32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, _wgslsmith_add_u32(0u, 4294967295u)) ^ ~1u, 12u)], 3331u, 1u), u_input.c, select(vec3<bool>((var_0 < -1026f) && true, true, false), vec3<bool>(true & all(vec4<bool>(false, true, true, true)), true, 1i == u_input.c.x), true != (u_input.b == -49218i)), _wgslsmith_f_op_f32(max(var_2.x, 321f)));
    return vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~max(1u, ~28243u), 12u)], 12u)]);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: i32) -> Struct_4 {
    global2 = array<vec4<i32>, 30>();
    global0 = true;
    let var_0 = Struct_4(countOneBits(func_3(Struct_1(vec2<i32>(1i, arg_0.x) | u_input.c.zz, vec3<u32>(24229u, global1[_wgslsmith_index_u32(87627u, 12u)], u_input.a), select(vec4<i32>(-4360i, arg_0.x, arg_3, -38831i), vec4<i32>(-12087i, -1i, 0i, arg_0.x), vec4<bool>(arg_2.a, true, arg_2.a, arg_2.a)), vec3<bool>(true, true, true), _wgslsmith_div_f32(886f, 146f)), true, Struct_3(-1i, ~vec3<i32>(0i, arg_0.x, -1i), Struct_1(vec2<i32>(-2147483647i, -8097i), vec3<u32>(4294967295u, 11789u, 0u), u_input.c, vec3<bool>(true, true, arg_2.a), -1063f)), u_input.c)), Struct_1(u_input.c.wz, _wgslsmith_sub_vec3_u32(select(vec3<u32>(17859u, 0u, arg_1.x), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 12u)], 12u)], 0u, arg_1.x), false) >> ((vec3<u32>(50866u, 4294967295u, 1u) ^ vec3<u32>(u_input.a, arg_1.x, 59530u)) % vec3<u32>(32u)), ~vec3<u32>(17702u, 4294967295u, 13802u)), min(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(-17859i, u_input.c.x, -2147483647i, 1i)), firstLeadingBit(vec4<i32>(2147483647i, arg_3, 1i, arg_0.x))), -max(u_input.c, vec4<i32>(-12177i, 2147483647i, 5091i, u_input.c.x))), !vec3<bool>(arg_2.a, all(vec3<bool>(false, false, false)), arg_2.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), 815f))));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-700f, _wgslsmith_f_op_f32(f32(-1f) * -241f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1047f)) - 1158f), _wgslsmith_f_op_f32(f32(-1f) * -147f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1550f, -611f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b.e, -278f, arg_2.a))), 1061f)))));
    let var_2 = Struct_2(all(!(!(!var_0.b.d))));
    return Struct_4(1i, var_0.b);
}

fn func_5(arg_0: Struct_4) -> vec4<bool> {
    global2 = array<vec4<i32>, 30>();
    global0 = !any(!(!(!arg_0.b.d)));
    var var_0 = Struct_2(arg_0.b.d.x);
    var var_1 = ~u_input.a;
    var var_2 = ~global1[_wgslsmith_index_u32(~((u_input.a >> (0u % 32u)) ^ _wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_0.b.b.x, 0u), 1u)), 12u)];
    return select(!(!select(select(vec4<bool>(var_0.a, var_0.a, false, false), vec4<bool>(var_0.a, true, false, var_0.a), arg_0.b.d.x), !vec4<bool>(arg_0.b.d.x, false, var_0.a, false), arg_0.b.d.x)), !select(vec4<bool>(99948u >= arg_0.b.b.x, arg_0.b.d.x && true, var_0.a, true), select(!vec4<bool>(arg_0.b.d.x, arg_0.b.d.x, var_0.a, arg_0.b.d.x), !vec4<bool>(arg_0.b.d.x, arg_0.b.d.x, false, true), !vec4<bool>(arg_0.b.d.x, arg_0.b.d.x, var_0.a, true)), false), vec4<bool>(var_0.a, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, var_0.a, var_0.a, var_0.a), vec4<bool>(arg_0.b.d.x, var_0.a, true, var_0.a), var_0.a), true)), all(!func_4(vec3<i32>(u_input.c.x, u_input.c.x, 0i), vec2<u32>(43427u, 18779u), Struct_2(false), -4317i).b.d.zz), select(all(vec4<bool>(false, arg_0.b.d.x, var_0.a, false)), all(select(vec3<bool>(true, var_0.a, var_0.a), arg_0.b.d, true)), arg_0.b.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i != _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(-58574i, 39368i) | u_input.c.x, u_input.c.x), u_input.b);
    let var_1 = func_5(func_4(min(u_input.c.xxz, firstLeadingBit(~u_input.c.zxw)), firstTrailingBit(func_1()), Struct_2(true), countOneBits(u_input.c.x)));
    global1 = array<u32, 12>();
    var var_2 = select(max(vec3<u32>(u_input.a, ~global1[_wgslsmith_index_u32(~u_input.a, 12u)], _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 56139u, u_input.a, 0u), abs(vec4<u32>(25754u, global1[_wgslsmith_index_u32(u_input.a, 12u)], u_input.a, u_input.a)))), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(25450u, 0u, u_input.a)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 42550u, u_input.a) | vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 12u)], 12u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19909u, 12u)], 12u)], 12u)], 12u)], 12u)], 6138u), _wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 12u)], 12u)]), vec3<u32>(16031u, global1[_wgslsmith_index_u32(1u, 12u)], 0u))))), ~(~max(~vec3<u32>(4294967295u, 0u, u_input.a), vec3<u32>(47903u, u_input.a, global1[_wgslsmith_index_u32(68266u, 12u)]))), !var_1.x);
    var var_3 = u_input.a;
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.yz << (_wgslsmith_mult_vec2_u32(min(vec2<u32>(9149u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 12u)], 12u)]), var_2.yz), vec2<u32>(firstLeadingBit(var_2.x), abs(95140u))) % vec2<u32>(32u)), vec2<u32>(var_2.x, _wgslsmith_mult_u32(~var_2.x, 0u)) >> (~var_2.yz % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1195f, _wgslsmith_f_op_f32(f32(-1f) * -944f), 568f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2360f) + _wgslsmith_f_op_f32(max(-761f, -315f)))))), u_input.b, _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(~var_2.xz, ~(~var_2.xx)), var_2.zz & ~(~var_2.zz)));
}

