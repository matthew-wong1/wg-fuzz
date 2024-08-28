struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: u32;

var<private> global2: array<vec4<bool>, 4> = array<vec4<bool>, 4>(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false));

var<private> global3: vec3<f32> = vec3<f32>(454f, 668f, -176f);

var<private> global4: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec4<bool> {
    var var_0 = -5932i;
    global1 = 31584u;
    let var_1 = Struct_3(Struct_2(1u, Struct_1(-firstLeadingBit(vec3<i32>(u_input.b, u_input.a.x, u_input.a.x)), 1u <= u_input.d, u_input.d | u_input.d, true && !global4.x), u_input.a.x), Struct_2(u_input.d, Struct_1(vec3<i32>(-2147483647i, ~(-48848i), 5105i), all(select(global4.yz, vec2<bool>(global4.x, global4.x), global4.x)), u_input.d, !global4.x), ~(u_input.a.x << (firstTrailingBit(u_input.d) % 32u))));
    global0 = global4.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, global3.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.x - -499f), _wgslsmith_f_op_f32(ceil(-2938f)), any(global4.xy)))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, -980f, -1000f) - vec3<f32>(-684f, -943f, global3.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2089f, global3.x, 763f)))))))));
    return vec4<bool>(!var_1.a.b.b, false, !((u_input.b != -2147483647i) && true) & !(!any(vec3<bool>(var_1.b.b.b, global4.x, global4.x))), global4.x);
}

fn func_2() -> Struct_1 {
    var var_0 = func_3();
    let var_1 = Struct_1(max(select(firstLeadingBit(vec3<i32>(3797i, 1i, 0i)) & (vec3<i32>(-2147483647i, -1i, u_input.c) << (vec3<u32>(u_input.d, u_input.d, 8675u) % vec3<u32>(32u))), max(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 1i, 0i), vec3<i32>(u_input.c, u_input.b, -40455i)), vec3<i32>(u_input.c, 39881i, u_input.c)), vec3<bool>(var_0.x == global4.x, false || global4.x, var_0.x)), vec3<i32>(-2147483647i, u_input.b, u_input.b)), all(select(vec2<bool>(global4.x != false, all(global2[_wgslsmith_index_u32(u_input.d, 4u)])), vec2<bool>(true, true), vec2<bool>(any(var_0.wxw), !global4.x))), ~(~4294967295u), true);
    global3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(560f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))), _wgslsmith_f_op_f32(max(1157f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1484f + 137f) - _wgslsmith_f_op_f32(abs(global3.x))))))));
    let var_2 = Struct_2(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(firstTrailingBit(~vec2<u32>(0u, var_1.c)), ~(~vec2<u32>(1u, 0u))), vec2<u32>(0u, min(18206u, 4294967295u))), var_1, -2147483647i & (2147483647i | u_input.b));
    let var_3 = vec2<u32>(40282u, var_1.c);
    return var_1;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<i32>) -> f32 {
    global4 = func_3().zxz;
    var var_0 = ~(~vec4<u32>(u_input.d, firstTrailingBit(~arg_1.c), _wgslsmith_dot_vec3_u32(~vec3<u32>(33458u, 1u, arg_1.c), firstLeadingBit(vec3<u32>(u_input.d, 29867u, u_input.d))), 31328u));
    let var_1 = !(1i != arg_1.a.x);
    var var_2 = Struct_2(~u_input.d | u_input.d, Struct_1(arg_1.a, !all(func_3()), ~_wgslsmith_mod_u32(~arg_1.c, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.d), var_0.yy)), true), ~(-1i));
    let var_3 = 24152i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1476f + global3.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(581f)) + 1862f)) * 639f);
}

fn func_5(arg_0: f32) -> Struct_2 {
    let var_0 = Struct_1(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(1i, i32(-1i) * -21842i), u_input.c), max(select(17740i, _wgslsmith_clamp_i32(u_input.c, -2147483647i, -19934i), global4.x), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.a.x, u_input.b), vec3<i32>(u_input.b, u_input.a.x, -1i)))), u_input.c & _wgslsmith_dot_vec4_i32(-vec4<i32>(-47823i, 0i, u_input.a.x, u_input.a.x), -vec4<i32>(u_input.c, -1i, u_input.a.x, u_input.b))), all(select(global4.xz, select(global4.xx, select(global4.yz, global4.zz, false), false), all(vec2<bool>(global4.x, global4.x)))), u_input.d >> (u_input.d % 32u), true);
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1498f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1014f + arg_0)), 372f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(696f, global3.x, global3.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, arg_0, -654f) - vec3<f32>(arg_0, 1014f, arg_0))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1103f, -1475f, arg_0) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, 414f, arg_0), vec3<f32>(global3.x, arg_0, -625f)))))));
    let var_1 = _wgslsmith_mod_u32(select(var_0.c, u_input.d, var_0.d), min(firstLeadingBit(~(~15390u)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 21036u, 35059u, 75461u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, var_0.c, var_0.c, 26916u), vec4<u32>(1u, 4294967295u, u_input.d, 4294967295u))), countOneBits(vec4<u32>(1u, u_input.d, 4781u, u_input.d) << (vec4<u32>(11831u, var_0.c, var_0.c, u_input.d) % vec4<u32>(32u))))));
    global2 = array<vec4<bool>, 4>();
    let var_2 = max(vec3<i32>(u_input.b, var_0.a.x, -1i), vec3<i32>(21656i, _wgslsmith_clamp_i32(i32(-1i) * -var_0.a.x, var_0.a.x, var_0.a.x), u_input.b));
    return Struct_2(max(~(4294967295u | (4294967295u << (u_input.d % 32u))), select(1u, _wgslsmith_div_u32(_wgslsmith_div_u32(1u, var_0.c), _wgslsmith_dot_vec3_u32(vec3<u32>(16143u, var_1, 4294967295u), vec3<u32>(1u, var_0.c, 4334u))), global4.x)), Struct_1(_wgslsmith_div_vec3_i32(var_2, var_2), var_0.d, firstTrailingBit(~(~6448u)), func_3().x), func_2().a.x);
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_1(vec3<i32>(u_input.b, countOneBits(u_input.c << (0u % 32u)), -(u_input.c << (~u_input.d % 32u))), !select(!global4.x, any(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.d), 4u)]), global4.x), ~u_input.d, global4.x);
    let var_1 = Struct_3(Struct_2(u_input.d, var_0, 23842i), Struct_2(4294967295u, var_0, _wgslsmith_mult_i32(-(44750i >> (u_input.d % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_0.a.x, var_0.a.x, -29169i), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<i32>(9349i, 12557i, var_0.a.x, 33630i))))));
    let var_2 = Struct_2(1u, var_0, ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, 20041i) << (_wgslsmith_mod_vec2_u32(vec2<u32>(53679u, var_1.b.b.c), vec2<u32>(var_0.c, 4294967295u)) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(var_0.a.xx, u_input.a), vec2<i32>(87227i, -2147483647i))));
    global0 = var_1.b.b.d;
    var var_3 = 0i;
    return Struct_3(func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(vec3<bool>(var_1.a.b.d, false, var_0.d), func_2(), max(var_2.b.a.xz, var_1.a.b.a.xy))), _wgslsmith_f_op_f32(func_4(select(vec3<bool>(false, false, false), vec3<bool>(var_0.d, true, var_0.d), vec3<bool>(var_2.b.b, false, false)), var_2.b, _wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(31992i, -2147483647i)))))), Struct_2(_wgslsmith_mult_u32(1u, func_2().c), var_2.b, select(_wgslsmith_sub_i32(var_0.a.x, 2147483647i), 2147483647i, var_2.b.b)));
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_3) -> vec3<bool> {
    let var_0 = ~(~u_input.d);
    let var_1 = !select(select(func_3(), global2[_wgslsmith_index_u32(u_input.d, 4u)], select(!global2[_wgslsmith_index_u32(1u, 4u)], vec4<bool>(false, true, false, arg_2.b.b.b), true)), func_3(), !vec4<bool>(func_3().x, false, all(vec4<bool>(arg_1.d, global4.x, true, arg_1.d)), !global4.x));
    global0 = !any(select(vec3<bool>(global4.x, !global4.x, true), var_1.xyz, vec3<bool>(select(var_1.x, false, true), false, arg_2.a.b.d & arg_2.b.b.d)));
    let var_2 = _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(firstLeadingBit(arg_2.b.b.a) >> (~vec3<u32>(0u, arg_1.c, 1u) % vec3<u32>(32u)), ~arg_1.a), _wgslsmith_sub_vec3_i32(arg_2.a.b.a, _wgslsmith_clamp_vec3_i32(arg_2.a.b.a, -_wgslsmith_sub_vec3_i32(vec3<i32>(1i, arg_1.a.x, arg_1.a.x), vec3<i32>(-2147483647i, 52421i, u_input.c)), vec3<i32>(_wgslsmith_add_i32(1i, arg_2.a.b.a.x), -39278i & arg_2.b.c, 1i))));
    let var_3 = func_1().b;
    return select(var_1.yyz, !var_1.xyz, select(_wgslsmith_f_op_f32(sign(global3.x)) != global3.x, true, any(func_3().zx)) | !(37568u != _wgslsmith_add_u32(var_0, u_input.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = !func_6(vec2<u32>(select(min(576u, u_input.d), 0u, 935f != global3.x), max(4294967295u, 16890u)), Struct_1(abs(vec3<i32>(1i, 14308i, 54233i)), true, _wgslsmith_div_u32(_wgslsmith_add_u32(0u, u_input.d), u_input.d), false), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(abs(-2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -452f)) * -268f), 71386u, global3.x, vec3<u32>(9371u, _wgslsmith_add_u32(u_input.d, 1u), abs(u_input.d)));
}

