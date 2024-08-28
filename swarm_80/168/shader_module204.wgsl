struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: bool,
    e: i32,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
    c: vec4<bool>,
    d: Struct_4,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: array<i32, 12>;

var<private> global2: array<Struct_5, 6>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: vec3<u32>) -> vec4<f32> {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-749f * _wgslsmith_f_op_f32(-arg_0.c.a.x)))), Struct_4(global0[_wgslsmith_index_u32(arg_2.x, 13u)], arg_0.b, arg_0.c, true, 2147483647i), !vec4<bool>(true, all(vec3<bool>(arg_0.d, true, arg_0.d)), false, any(select(vec4<bool>(arg_0.d, arg_0.d, arg_0.d, true), vec4<bool>(false, arg_0.d, arg_0.d, true), arg_0.d))), arg_0, arg_0.c);
    var var_1 = Struct_3(arg_0.d & true);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1613f, _wgslsmith_f_op_f32(-arg_0.c.a.x))))), abs(countOneBits(vec4<u32>(101008u, ~u_input.c.x, 1u, 205u))));
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.c.a.x))), -296f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1056f), _wgslsmith_f_op_f32(var_2.a.x * var_0.b.b.a.x)), var_0.e.a.x))), 0u, abs(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(u_input.d, global1[_wgslsmith_index_u32(arg_0.c.e, 12u)]), 1i, 1195i, ~global1[_wgslsmith_index_u32(1u, 12u)]), var_0.b.c.c & var_0.e.c)), global1[_wgslsmith_index_u32(0u, 12u)], _wgslsmith_mult_u32(~(~26743u) >> (arg_0.c.b % 32u), select(arg_1, 3159u | var_2.b.x, var_2.b.x == max(u_input.a, arg_1))));
    global1 = array<i32, 12>();
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.a.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) + -568f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.c.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.x * -103f) + _wgslsmith_f_op_f32(-var_2.a.x))))), 1f);
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec4<u32>) -> Struct_2 {
    global1 = array<i32, 12>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_4(Struct_1(vec2<f32>(arg_1, arg_1), vec4<u32>(u_input.c.x, arg_2.x, 1u, 1u)), global0[_wgslsmith_index_u32(arg_2.x, 13u)], Struct_2(vec4<f32>(248f, arg_1, 419f, -1000f), arg_2.x, vec4<i32>(u_input.b, u_input.b, 576i, arg_0), 1i, 37344u), true, 2147483647i), 1u, u_input.c)))), 1u, ~max(vec4<i32>(~(-18362i), -u_input.d, u_input.b, u_input.d), vec4<i32>(u_input.d, -15980i, -64994i, firstLeadingBit(arg_0))), u_input.d, _wgslsmith_mult_u32(u_input.c.x, ~42783u));
    let var_1 = select(true, true, false);
    let var_2 = vec3<i32>(5247i, global1[_wgslsmith_index_u32(4294967295u, 12u)], _wgslsmith_sub_i32(u_input.d ^ -abs(661i), _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.e, 27730u), arg_2.zz), 12u)], ~(-425i) & arg_0)));
    let var_3 = false;
    return Struct_2(vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.a.x)), 716f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-694f - arg_1)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1, var_0.a.x, false)) - _wgslsmith_f_op_vec4_f32(func_3(Struct_4(global0[_wgslsmith_index_u32(4294967295u, 13u)], Struct_1(vec2<f32>(-559f, var_0.a.x), arg_2), Struct_2(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, arg_1), 4294967295u, vec4<i32>(arg_0, -20460i, arg_0, 2147483647i), global1[_wgslsmith_index_u32(u_input.a, 12u)], arg_2.x), false, global1[_wgslsmith_index_u32(0u, 12u)]), 4294967295u, arg_2.wzy)).x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-371f, arg_1, false))))))), ~34193u, var_0.c, reverseBits(min(71530i, var_0.c.x)), _wgslsmith_mod_u32(u_input.a, u_input.a));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = any(select(vec2<bool>(true, arg_0.d.d), select(!vec2<bool>(arg_0.c.x, arg_0.b.d), vec2<bool>(all(arg_0.c.yy), !arg_0.c.x), vec2<bool>(true, any(arg_0.c.yxw))), arg_0.c.zw));
    global2 = array<Struct_5, 6>();
    global0 = array<Struct_1, 13>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(581f, _wgslsmith_f_op_f32(f32(-1f) * -699f)));
    let var_2 = select(arg_0.c, vec4<bool>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * 649f) + _wgslsmith_f_op_f32(select(-767f, arg_0.a, true))) > 789f, !arg_0.b.d, true), true);
    return Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-333f, arg_1.x)), arg_0.b.b.a.x)))), ~vec4<u32>(min(u_input.a, 1u), ~_wgslsmith_add_u32(u_input.a, arg_0.b.b.b.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, arg_0.b.b.b.x, arg_0.e.e), abs(vec3<u32>(arg_0.d.b.b.x, u_input.c.x, 0u))), 4294967295u));
}

fn func_1() -> Struct_3 {
    var var_0 = func_4(Struct_5(-1730f, Struct_4(global0[_wgslsmith_index_u32(u_input.a, 13u)], global0[_wgslsmith_index_u32(1u, 13u)], func_2(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(u_input.a, 12u)], u_input.d), _wgslsmith_f_op_f32(floor(-540f)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.c.x, u_input.a, u_input.c.x), vec4<u32>(5520u, 1u, 0u, u_input.c.x))), all(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), global1[_wgslsmith_index_u32(~62220u, 12u)]), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false)), true), all(vec2<bool>(true, true))), Struct_4(global0[_wgslsmith_index_u32(28803u, 13u)], global0[_wgslsmith_index_u32(13512u, 13u)], func_2(global1[_wgslsmith_index_u32(35526u, 12u)] | u_input.d, _wgslsmith_f_op_vec4_f32(func_3(Struct_4(Struct_1(vec2<f32>(723f, 1172f), vec4<u32>(4741u, 1545u, 33118u, 1u)), global0[_wgslsmith_index_u32(u_input.c.x, 13u)], Struct_2(vec4<f32>(920f, 862f, 701f, 631f), 38249u, vec4<i32>(u_input.d, 19163i, global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(0u, 12u)]), u_input.d, u_input.c.x), true, global1[_wgslsmith_index_u32(u_input.c.x, 12u)]), 71646u, u_input.c)).x, vec4<u32>(0u, u_input.a, 41566u, u_input.a) & vec4<u32>(u_input.a, 0u, 0u, 1u)), any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true))), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, u_input.b, global1[_wgslsmith_index_u32(u_input.c.x, 12u)]) | vec4<i32>(-1i, -30143i, -2147483647i, global1[_wgslsmith_index_u32(4294967295u, 12u)]), func_2(u_input.d, 343f, vec4<u32>(u_input.c.x, 68610u, u_input.a, u_input.a)).c)), Struct_2(vec4<f32>(404f, _wgslsmith_f_op_f32(f32(-1f) * -699f), _wgslsmith_div_f32(802f, 448f), -2287f), _wgslsmith_dot_vec3_u32(u_input.c ^ u_input.c, vec3<u32>(u_input.c.x, 18717u, 28791u) << (u_input.c % vec3<u32>(32u))), -_wgslsmith_div_vec4_i32(vec4<i32>(12158i, global1[_wgslsmith_index_u32(u_input.c.x, 12u)], 1i, global1[_wgslsmith_index_u32(u_input.c.x, 12u)]), vec4<i32>(u_input.b, u_input.d, u_input.b, global1[_wgslsmith_index_u32(u_input.c.x, 12u)])), countOneBits(global1[_wgslsmith_index_u32(4294967295u, 12u)] ^ -2147483647i), _wgslsmith_mod_u32(_wgslsmith_div_u32(0u, u_input.c.x), ~65469u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-875f, -598f)) * _wgslsmith_f_op_f32(abs(-1118f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(653f, -389f))), func_2(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(u_input.a, 12u)], -14714i), 1f, vec4<u32>(0u, u_input.a, 1u, u_input.a)).a.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1100f, 1431f, -113f) * vec3<f32>(-1199f, 1047f, -1692f)))))));
    global0 = array<Struct_1, 13>();
    var var_1 = u_input.c.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.a.x, var_0.a.x), _wgslsmith_f_op_f32(-var_0.a.x)))), _wgslsmith_f_op_f32(214f - 245f))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-var_0.a);
    return Struct_3(any(vec3<bool>(all(vec2<bool>(true, true)), all(vec3<bool>(true, true, true)), false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 13>();
    let var_0 = func_1();
    let var_1 = select(vec2<bool>(any(select(select(vec4<bool>(false, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<bool>(false, false, true, var_0.a)), select(vec4<bool>(var_0.a, false, var_0.a, true), vec4<bool>(false, var_0.a, false, var_0.a), true), select(vec4<bool>(var_0.a, var_0.a, true, true), vec4<bool>(false, false, false, var_0.a), vec4<bool>(false, false, var_0.a, true)))), true), !vec2<bool>(true, !var_0.a), vec2<bool>(var_0.a, all(vec4<bool>(true, true, true, any(vec3<bool>(var_0.a, var_0.a, false))))));
    let var_2 = _wgslsmith_div_u32(u_input.c.x ^ ~reverseBits(firstTrailingBit(u_input.c.x)), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a, 35271u), vec2<u32>(u_input.a, 2538u), _wgslsmith_mult_vec2_u32(vec2<u32>(35093u, u_input.a), vec2<u32>(0u, u_input.a))), ~vec2<u32>(3142u, 0u)), u_input.c.zy | ~vec2<u32>(4294967295u, 4294967295u)));
    let var_3 = _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(abs(reverseBits(-vec4<i32>(u_input.b, 2147483647i, -64226i, u_input.d))), -(~(-vec4<i32>(-1i, -1i, -1i, 1i)))), -(~(~_wgslsmith_sub_vec4_i32(vec4<i32>(0i, -32993i, 2147483647i, -41936i), vec4<i32>(0i, 0i, global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(var_2, 12u)])))));
    let var_4 = Struct_4(func_4(Struct_5(_wgslsmith_f_op_f32(ceil(-1236f)), Struct_4(Struct_1(vec2<f32>(-1063f, 287f), vec4<u32>(u_input.c.x, 1u, 1u, 1u)), func_4(global2[_wgslsmith_index_u32(var_2, 6u)], vec3<f32>(133f, 1234f, -351f)), func_2(u_input.b, -210f, vec4<u32>(38609u, 4294967295u, u_input.c.x, u_input.a)), !var_0.a, _wgslsmith_add_i32(0i, 15092i)), select(vec4<bool>(true, true, var_1.x, var_1.x), select(vec4<bool>(true, var_0.a, var_1.x, true), vec4<bool>(var_0.a, false, true, var_1.x), false), all(vec3<bool>(false, var_0.a, var_1.x))), Struct_4(global0[_wgslsmith_index_u32(abs(74698u), 13u)], func_4(Struct_5(849f, Struct_4(global0[_wgslsmith_index_u32(u_input.a, 13u)], global0[_wgslsmith_index_u32(0u, 13u)], Struct_2(vec4<f32>(877f, 1270f, 1297f, 423f), 0u, vec4<i32>(-4720i, global1[_wgslsmith_index_u32(var_2, 12u)], u_input.d, global1[_wgslsmith_index_u32(var_2, 12u)]), var_3.x, 1u), var_0.a, -1i), vec4<bool>(false, var_0.a, false, false), Struct_4(global0[_wgslsmith_index_u32(var_2, 13u)], Struct_1(vec2<f32>(611f, -1000f), vec4<u32>(u_input.c.x, u_input.a, u_input.a, var_2)), Struct_2(vec4<f32>(-247f, 439f, 344f, 1378f), 18047u, var_3, var_3.x, u_input.c.x), false, u_input.d), Struct_2(vec4<f32>(258f, 258f, -1000f, 2610f), u_input.a, vec4<i32>(u_input.b, u_input.d, 1i, -47753i), u_input.d, 61035u)), vec3<f32>(1711f, -147f, 495f)), Struct_2(vec4<f32>(-1080f, 1254f, 152f, -843f), 16480u, var_3, 2147483647i, var_2), var_0.a, var_3.x), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(162f, 807f, -215f, -720f)), var_2, vec4<i32>(var_3.x, 1i, 1i, 1i), var_3.x, reverseBits(u_input.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1573f, -1000f, 534f) + vec3<f32>(-1796f, 1246f, -316f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(2288f, 108f, 1071f))))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 124f)), max(vec4<u32>(var_2, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2, 0u), u_input.c.xx), 1u & u_input.c.x, u_input.c.x), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, var_2), _wgslsmith_add_vec4_u32(vec4<u32>(11820u, var_2, var_2, u_input.c.x), vec4<u32>(var_2, 29976u, 4294967295u, 21388u))))), func_2(2147483647i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1401f, -607f))), 1f), ~reverseBits(vec4<u32>(9247u, 39899u, u_input.c.x, var_2) >> (vec4<u32>(var_2, var_2, 1u, 4294967295u) % vec4<u32>(32u)))), true, 2147483647i);
    global2 = array<Struct_5, 6>();
    var var_5 = _wgslsmith_f_op_f32(abs(-149f));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(var_4.c.c.yzy), ~(~select(var_4.a.b.zz, _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 0u), var_4.a.b.zx, u_input.c.yx), vec2<bool>(var_4.d, false))), var_4.a.b ^ ~vec4<u32>(var_4.b.b.x, min(25040u, 84771u), ~4294967295u, ~25094u), 19346u);
}

