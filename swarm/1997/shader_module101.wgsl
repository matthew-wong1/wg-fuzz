struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<bool>,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<bool, 15>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: f32, arg_3: vec3<u32>) -> vec3<u32> {
    var var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(firstTrailingBit(-30507i), _wgslsmith_sub_i32(arg_0.a.a, arg_0.a.a), arg_0.a.a), min(~vec3<i32>(2147483647i, arg_0.a.a, 15719i), ~vec3<i32>(75i, -8921i, 87891i)), ((vec3<i32>(arg_0.a.a, arg_0.a.a, arg_0.a.a) | vec3<i32>(arg_0.a.a, arg_0.a.a, -628i)) & vec3<i32>(1i, 0i, arg_0.a.a)) >> (vec3<u32>(u_input.a.x, 69413u & arg_3.x, ~0u) % vec3<u32>(32u))), min(vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.a, arg_0.a.a, arg_0.a.a, -29055i), vec4<i32>(arg_0.a.a, 1i, arg_0.a.a, arg_0.a.a)), reverseBits(-arg_0.a.a), 2147483647i), vec3<i32>(abs(_wgslsmith_mod_i32(arg_0.a.a, arg_0.a.a)), -2147483647i, i32(-1i) * -2147483647i)));
    global0 = vec2<bool>(global1[_wgslsmith_index_u32(1u, 15u)] && true, !(_wgslsmith_dot_vec3_i32(-vec3<i32>(1i, -1i, 0i), vec3<i32>(0i, arg_0.a.a, 17453i) >> (vec3<u32>(arg_3.x, arg_1, 90454u) % vec3<u32>(32u))) >= -(~37347i)));
    let var_1 = Struct_3((arg_3.x >> (arg_3.x % 32u)) > ~countOneBits(arg_1 & arg_1), _wgslsmith_div_i32(-arg_0.a.a, -1i), vec4<i32>(2147483647i, 1i, arg_0.a.a, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_0.a.a, arg_0.a.a), vec3<i32>(0i, arg_0.a.a, 20190i)), arg_0.a.a)) ^ -reverseBits(vec4<i32>(arg_0.a.a, arg_0.a.a, arg_0.a.a, -68498i) & vec4<i32>(53997i, arg_0.a.a, arg_0.a.a, arg_0.a.a)), arg_0.a);
    var var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-668f, -518f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1477f, -463f)) + vec2<f32>(-1862f, arg_2)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2, 2551f), vec2<f32>(arg_0.c, 941f)), vec2<f32>(-642f, 501f))))));
    let var_3 = Struct_5(true, var_1.d);
    return select(arg_3, select(~arg_3, select(~reverseBits(arg_3), (vec3<u32>(64464u, 1u, 17837u) >> (arg_3 % vec3<u32>(32u))) & arg_3, vec3<bool>(!global1[_wgslsmith_index_u32(32116u, 15u)], global1[_wgslsmith_index_u32(4294967295u, 15u)], true)), !vec3<bool>(arg_0.a.b, !global0.x, global1[_wgslsmith_index_u32(1u, 15u)])), !select(select(vec3<bool>(true, false, global1[_wgslsmith_index_u32(arg_1, 15u)]), !vec3<bool>(var_1.a, arg_0.a.b, false), vec3<bool>(true, var_3.b.b, var_1.d.e)), vec3<bool>(arg_0.b || arg_0.b, any(vec3<bool>(false, false, global0.x)), arg_0.b), select(select(vec3<bool>(arg_0.b, false, false), vec3<bool>(true, arg_0.b, arg_0.b), vec3<bool>(global1[_wgslsmith_index_u32(arg_3.x, 15u)], true, false)), vec3<bool>(false, true, true), global0.x)));
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_4) -> f32 {
    let var_0 = 17003u;
    var var_1 = ~abs((~vec3<u32>(4294967295u, 55972u, 0u) << (func_3(Struct_2(Struct_1(arg_0, true, vec2<bool>(global0.x, global1[_wgslsmith_index_u32(1u, 15u)]), vec2<bool>(global0.x, global1[_wgslsmith_index_u32(1u, 15u)]), global1[_wgslsmith_index_u32(4294967295u, 15u)]), global1[_wgslsmith_index_u32(u_input.a.x, 15u)], -917f), 4294967295u, -277f, vec3<u32>(u_input.a.x, 44718u, 5122u)) % vec3<u32>(32u))) & vec3<u32>(1u, u_input.a.x, _wgslsmith_div_u32(4294967295u, var_0)));
    global1 = array<bool, 15>();
    let var_2 = ~(~_wgslsmith_dot_vec2_u32(var_1.yy, vec2<u32>(abs(4294967295u), u_input.a.x)));
    global0 = !(!(!(!select(vec2<bool>(true, true), vec2<bool>(false, global0.x), vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 15u)])))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.x + -361f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -386f)) + _wgslsmith_f_op_f32(-677f - arg_2.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.x + -1058f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x * 560f) * _wgslsmith_div_f32(1702f, _wgslsmith_f_op_f32(exp2(arg_1.x)))))));
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: f32, arg_3: vec2<f32>) -> Struct_5 {
    let var_0 = 610f;
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(424f * var_0))))) > _wgslsmith_f_op_f32(func_2(~(i32(-1i) * -11403i), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_3.x, -2203f, var_0)))))), Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1549f, var_0, 834f, arg_2)) + vec4<f32>(var_0, arg_2, 1150f, 1521f)))));
    let var_2 = select(true, global0.x == arg_1.x, true);
    var var_3 = Struct_3(!var_2, _wgslsmith_div_i32(-(~max(-1i, -16447i)), 22867i), -_wgslsmith_mult_vec4_i32(~vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(33663i, 20409i, -2147483647i, -2147483647i) << (vec4<u32>(1u, u_input.a.x, arg_0, 1u) % vec4<u32>(32u)))), Struct_1(_wgslsmith_dot_vec2_i32(min(vec2<i32>(-16561i, -21925i) << (vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u)), select(vec2<i32>(2147483647i, -15460i), vec2<i32>(-1i, 1i), vec2<bool>(arg_1.x, global1[_wgslsmith_index_u32(4294967295u, 15u)]))), ~vec2<i32>(67798i, -2147483647i)), arg_1.x, vec2<bool>(global1[_wgslsmith_index_u32(20540u, 15u)] || false, global1[_wgslsmith_index_u32(~(~arg_0), 15u)]), arg_1.xz, arg_1.x));
    var_3 = Struct_3(true, max(firstLeadingBit(var_3.d.a & firstTrailingBit(var_3.c.x)), ~_wgslsmith_sub_i32(-14887i, _wgslsmith_mod_i32(var_3.b, var_3.b))), vec4<i32>(select(_wgslsmith_mult_i32(45553i, ~var_3.b), max(firstTrailingBit(var_3.d.a), -1i), true), _wgslsmith_add_i32(min(var_3.d.a ^ var_3.b, 0i), var_3.c.x), 5140i, countOneBits(25706i) >> (abs(1u) % 32u)), var_3.d);
    return Struct_5(true, Struct_1(var_3.b, all(arg_1) | (global0.x | var_1), !vec2<bool>(global0.x, var_1), !(!var_3.d.c), true));
}

fn func_4(arg_0: Struct_5) -> vec2<bool> {
    global0 = !(!arg_0.b.d);
    let var_0 = Struct_3(!arg_0.a, -9108i, ~(~_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(0i, 2147483647i, arg_0.b.a, 5661i)), max(vec4<i32>(2147483647i, -24630i, arg_0.b.a, -2147483647i), vec4<i32>(arg_0.b.a, 0i, 1i, arg_0.b.a)))), Struct_1(-2147483647i, select(!func_1(u_input.a.x, vec3<bool>(true, arg_0.b.b, global1[_wgslsmith_index_u32(u_input.a.x, 15u)]), 1000f, vec2<f32>(517f, -406f)).a, global1[_wgslsmith_index_u32(u_input.a.x, 15u)], arg_0.b.c.x), select(vec2<bool>(arg_0.a, true), !select(arg_0.b.c, arg_0.b.d, arg_0.b.c), arg_0.b.c), func_1(u_input.a.x, !vec3<bool>(true, arg_0.b.e, global1[_wgslsmith_index_u32(u_input.a.x, 15u)]), -775f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1179f, 322f)))).b.d, any(select(vec3<bool>(global0.x, global0.x, false), select(vec3<bool>(false, false, false), vec3<bool>(true, global0.x, global0.x), true), select(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 15u)], true), vec3<bool>(true, true, false), global1[_wgslsmith_index_u32(u_input.a.x, 15u)])))));
    let var_1 = func_1(u_input.a.x & (~_wgslsmith_add_u32(u_input.a.x, 70531u) | firstTrailingBit(_wgslsmith_add_u32(4294967295u, 0u))), vec3<bool>(var_0.d.c.x, all(vec3<bool>(global0.x != false, true, global1[_wgslsmith_index_u32(u_input.a.x, 15u)] & var_0.d.b)), global0.x), 1f, vec2<f32>(-984f, 423f)).b;
    let var_2 = vec2<i32>(var_1.a, var_0.c.x);
    global1 = array<bool, 15>();
    return vec2<bool>(~(-_wgslsmith_sub_i32(var_2.x, -1i)) > -_wgslsmith_add_i32(var_2.x | var_1.a, arg_0.b.a), !(!global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(select(select(func_4(func_1(u_input.a.x, vec3<bool>(global1[_wgslsmith_index_u32(0u, 15u)], false, global0.x), -970f, vec2<f32>(-591f, -2179f))), !(!vec2<bool>(false, global0.x)), select(vec2<bool>(global0.x, true), !vec2<bool>(global0.x, global0.x), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(107924u, 10648u), 15u)])), vec2<bool>(any(select(vec3<bool>(global1[_wgslsmith_index_u32(7556u, 15u)], false, false), vec3<bool>(true, true, global1[_wgslsmith_index_u32(11257u, 15u)]), global0.x)), !global0.x), false & (any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], false)) == true)), func_4(func_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(76758u, 112568u, 35138u, 15767u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u)), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1580f, -503f))))))), true);
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(1638f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1202f) * _wgslsmith_f_op_f32(round(-1156f))))), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1751f)) + -2321f))), 408f));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-253f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_0.x, var_0.x))))) * _wgslsmith_f_op_f32(f32(-1f) * -943f)));
    let var_2 = Struct_1(2147483647i, select(false & global1[_wgslsmith_index_u32(min(u_input.a.x, _wgslsmith_mult_u32(0u, 37046u)), 15u)], !all(!vec4<bool>(true, false, global1[_wgslsmith_index_u32(24855u, 15u)], global1[_wgslsmith_index_u32(u_input.a.x, 15u)])), global0.x), vec2<bool>(true, true), select(select(func_1(~0u, select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, global1[_wgslsmith_index_u32(u_input.a.x, 15u)], false), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 15u)], global1[_wgslsmith_index_u32(u_input.a.x, 15u)])), 150f, vec2<f32>(var_0.x, var_1)).b.c, vec2<bool>(any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], false)), any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], global1[_wgslsmith_index_u32(u_input.a.x, 15u)], global0.x))), func_4(func_1(18946u, vec3<bool>(global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(3374u, 15u)], global1[_wgslsmith_index_u32(14343u, 15u)]), 393f, var_0.yz))), !(!func_4(Struct_5(false, Struct_1(-55925i, false, vec2<bool>(false, false), vec2<bool>(false, global1[_wgslsmith_index_u32(33353u, 15u)]), false)))), !(!any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], false, true, false)))), !(min(~(-2147483647i), _wgslsmith_add_i32(13345i, 17323i)) >= (_wgslsmith_dot_vec3_i32(vec3<i32>(50876i, 1i, -1i), vec3<i32>(-50958i, -26911i, -37151i)) << ((u_input.a.x ^ 1u) % 32u))));
    let var_3 = var_1;
    let var_4 = -2147483647i;
    let var_5 = _wgslsmith_f_op_f32(var_0.x - 123f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-2147483647i, vec4<f32>(var_3, var_5, 1126f, -1157f), Struct_4(vec4<f32>(1068f, var_0.x, 337f, -373f)))) + _wgslsmith_f_op_f32(1000f * var_0.x))))), -_wgslsmith_dot_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(1i, 15543i), vec2<i32>(-2147483647i, -71136i)), abs(_wgslsmith_mult_vec2_i32(vec2<i32>(var_2.a, 2147483647i), vec2<i32>(var_4, var_2.a)))));
}

