struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25> = array<bool, 25>(false, false, true, true, true, true, false, false, false, true, true, true, true, true, false, false, true, true, true, false, true, false, false, true, true);

var<private> global1: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(vec3<bool>(true, true, true)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(false, false, true)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(false, false, true)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: f32, arg_1: u32) -> vec2<f32> {
    global1 = array<Struct_2, 9>();
    global1 = array<Struct_2, 9>();
    var var_0 = global1[_wgslsmith_index_u32(1u, 9u)];
    var_0 = global1[_wgslsmith_index_u32((firstTrailingBit(61125u) | _wgslsmith_clamp_u32(4294967295u, _wgslsmith_div_u32(~u_input.a.x, u_input.a.x ^ arg_1), u_input.a.x)) & u_input.a.x, 9u)];
    let var_1 = !all(vec4<bool>(false, arg_0 < arg_0, any(vec4<bool>(true, var_0.a.x, global0[_wgslsmith_index_u32(arg_1, 25u)], global0[_wgslsmith_index_u32(arg_1, 25u)])), false)) || (_wgslsmith_mod_u32(u_input.a.x & (1u >> (1u % 32u)), u_input.a.x) <= arg_1);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0 - -109f), _wgslsmith_f_op_f32(-373f - arg_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-805f, -612f) + vec2<f32>(376f, 998f)))) + vec2<f32>(_wgslsmith_f_op_f32(sign(arg_0)), -551f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -613f)))));
}

fn func_2(arg_0: Struct_3) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1604f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-688f - -504f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1097f))))) + _wgslsmith_f_op_vec2_f32(func_3(-1466f, u_input.a.x)));
    global1 = array<Struct_2, 9>();
    let var_1 = Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(~u_input.c.x, u_input.c.x, _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(u_input.c.x, 0i)) << (u_input.a.x % 32u), countOneBits(_wgslsmith_add_i32(u_input.c.x, u_input.b))), vec4<i32>(u_input.c.x >> (u_input.a.x % 32u), 23572i, firstLeadingBit(-1i), u_input.b << (~u_input.a.x % 32u))), var_0.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(464f, 1000f), vec2<f32>(var_0.x, 354f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1076f, -1126f)))))), _wgslsmith_mod_i32(-(~(i32(-1i) * -44491i)), u_input.c.x));
    let var_2 = 74127u;
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.c - _wgslsmith_f_op_vec2_f32(-var_1.c)), _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(-1216f + -1000f), select(select(_wgslsmith_mod_u32(var_2, var_2), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 4686u, 7703u, 1u)), all(vec4<bool>(global0[_wgslsmith_index_u32(5116u, 25u)], arg_0.a.a.x, true, false))), _wgslsmith_mult_u32(var_2 | var_2, var_2), any(arg_0.a.a)))));
    return arg_0.a.a.zy;
}

fn func_1() -> f32 {
    var var_0 = vec2<bool>(false, true);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -834f);
    var_0 = func_2(Struct_3(global1[_wgslsmith_index_u32(firstLeadingBit(41765u), 9u)]));
    var_0 = !(!select(vec2<bool>(all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], true)), !var_0.x), vec2<bool>(any(vec4<bool>(var_0.x, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], true, var_0.x)), true), true));
    var var_2 = global1[_wgslsmith_index_u32(firstTrailingBit(firstLeadingBit(u_input.a.x)), 9u)];
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1926f, 473f, any(var_2.a.zz))), _wgslsmith_f_op_f32(f32(-1f) * -721f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-457f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(trunc(-380f));
    let var_1 = -42647i;
    let var_2 = Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1 >> (_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) % 32u), abs(_wgslsmith_mult_i32(u_input.c.x, u_input.c.x)), var_1, _wgslsmith_div_i32(-3910i, var_1 >> (u_input.a.x % 32u))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, 55667i, 19101i, u_input.c.x), vec4<i32>(-2147483647i, -2147483647i, 33524i, 1i), vec4<i32>(14210i, u_input.b, var_1, -14109i))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-838f, _wgslsmith_f_op_f32(f32(-1f) * -2238f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1611f * -339f))))), vec2<f32>(_wgslsmith_f_op_f32(1473f + -296f), _wgslsmith_f_op_f32(func_1())), 40419i);
    var var_3 = _wgslsmith_mult_vec3_i32(var_2.a.zwz, var_2.a.yyw);
    var_3 = min(max(select(var_2.a.wzx >> (max(u_input.a.xxz, u_input.a.ywz) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(~var_2.a.yxx, vec3<i32>(-12i, -1i, var_3.x)), select(vec3<bool>(true, true, true), vec3<bool>(global0[_wgslsmith_index_u32(0u, 25u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 25u)]), !global0[_wgslsmith_index_u32(55345u, 25u)])), ~max(max(vec3<i32>(var_1, u_input.c.x, var_2.d), vec3<i32>(0i, var_3.x, var_3.x)), ~var_2.a.wwy)), select(-(firstLeadingBit(vec3<i32>(1i, 632i, 10617i)) << ((vec3<u32>(1u, u_input.a.x, u_input.a.x) & vec3<u32>(0u, u_input.a.x, 4294967295u)) % vec3<u32>(32u))), ~min(_wgslsmith_clamp_vec3_i32(var_2.a.yww, var_2.a.zyz, var_2.a.xzy), _wgslsmith_mod_vec3_i32(var_2.a.zzx, vec3<i32>(-1i, var_1, var_3.x))), (false || all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], false))) | (_wgslsmith_mod_u32(u_input.a.x, 14038u) != u_input.a.x)));
    var var_4 = vec2<u32>(u_input.a.x, ~firstLeadingBit(firstLeadingBit(_wgslsmith_sub_u32(u_input.a.x, 51427u))));
    var_3 = vec3<i32>(max(22074i, -(~(~(-40204i)))), 15386i, var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -266f), _wgslsmith_f_op_f32(var_2.c.x - 154f)))), u_input.a.wy, var_4.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(812f, var_2.c.x, var_2.c.x), vec3<f32>(var_2.b, var_2.c.x, var_2.b)))))), 344f);
}

