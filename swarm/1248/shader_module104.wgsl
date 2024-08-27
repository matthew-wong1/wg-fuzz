struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: f32,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 15> = array<vec3<u32>, 15>(vec3<u32>(0u, 47146u, 19776u), vec3<u32>(1u, 4294967295u, 61305u), vec3<u32>(4294967295u, 21884u, 4294967295u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(27158u, 1u, 29063u), vec3<u32>(0u, 28803u, 0u), vec3<u32>(84551u, 16136u, 0u), vec3<u32>(1u, 16745u, 6394u), vec3<u32>(1u, 62958u, 4637u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(21209u, 1u, 4294967295u), vec3<u32>(432u, 18397u, 4294967295u), vec3<u32>(64729u, 0u, 3147u), vec3<u32>(1u, 54702u, 1u));

var<private> global1: u32 = 0u;

var<private> global2: array<bool, 1> = array<bool, 1>(true);

var<private> global3: Struct_5 = Struct_5(vec4<i32>(2147483647i, 0i, 2147483647i, 0i));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: Struct_5, arg_3: bool) -> u32 {
    global0 = array<vec3<u32>, 15>();
    let var_0 = Struct_2(Struct_1(firstTrailingBit(~countOneBits(arg_1.b.a))), vec4<bool>(arg_0, any(vec4<bool>(false | arg_0, arg_3, !global2[_wgslsmith_index_u32(u_input.b, 1u)], !arg_3)), -349f >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1454f - -457f), arg_1.c)), !(_wgslsmith_f_op_f32(-arg_1.c) >= -480f)), -_wgslsmith_sub_vec3_i32(~(-vec3<i32>(-32231i, global3.a.x, arg_1.a.x)), firstLeadingBit(global3.a.wxw)), min(_wgslsmith_add_vec2_i32(firstLeadingBit(global3.a.xz), select(vec2<i32>(29043i, -12306i), u_input.c.zy, true)), firstLeadingBit(u_input.c.yy) << (_wgslsmith_sub_vec2_u32(arg_1.e.a.xz, vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u))));
    var var_1 = var_0;
    let var_2 = arg_2;
    var var_3 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(901f - _wgslsmith_f_op_f32(ceil(arg_1.c))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(arg_1.c, _wgslsmith_f_op_f32(step(-1340f, arg_1.c))))))));
    return var_1.a.a.x;
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_add_vec3_u32(global0[_wgslsmith_index_u32(func_3(any(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 1u)], false, global2[_wgslsmith_index_u32(u_input.b, 1u)], global2[_wgslsmith_index_u32(u_input.b, 1u)])), Struct_3(u_input.a.yz, Struct_1(global0[_wgslsmith_index_u32(23126u, 15u)]), -509f, vec4<u32>(u_input.b, u_input.b, u_input.b, 1u), Struct_1(global0[_wgslsmith_index_u32(28776u, 15u)])), Struct_5(global3.a), any(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 1u)], global2[_wgslsmith_index_u32(u_input.b, 1u)], global2[_wgslsmith_index_u32(0u, 1u)], true))) & u_input.b, 15u)], ~global0[_wgslsmith_index_u32(54563u, 15u)]) << (vec3<u32>(u_input.b, 17141u, ~37634u) % vec3<u32>(32u));
    let var_1 = firstTrailingBit(-(~global3.a.yx));
    global1 = ~u_input.b;
    var var_2 = global2[_wgslsmith_index_u32(28445u, 1u)];
    let var_3 = _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, ~var_0.x ^ (_wgslsmith_clamp_u32(4294967295u, 36223u, 17069u) & abs(4294967295u)), ~(u_input.b << (var_0.x % 32u)), ~_wgslsmith_sub_u32(var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(19644u, u_input.b), vec2<u32>(u_input.b, 1u)))), ~vec4<u32>(14673u, abs(_wgslsmith_mult_u32(u_input.b, u_input.b)), 4294967295u, 4294967295u));
    return Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-994f, -799f)) - vec2<f32>(1f, 1f)) - vec2<f32>(-233f, -510f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-487f, -1125f), vec2<f32>(-507f, -1445f), all(vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(1u, 1u)])))))));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: Struct_3) -> Struct_4 {
    global2 = array<bool, 1>();
    let var_0 = Struct_2(arg_2.e, !select(!(!vec4<bool>(true, global2[_wgslsmith_index_u32(34109u, 1u)], global2[_wgslsmith_index_u32(u_input.b, 1u)], global2[_wgslsmith_index_u32(1u, 1u)])), vec4<bool>(true, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(34500u, 0u), 1u)], global2[_wgslsmith_index_u32(0u, 1u)] && global2[_wgslsmith_index_u32(u_input.b, 1u)], true), vec4<bool>(global2[_wgslsmith_index_u32(arg_2.e.a.x, 1u)], any(vec4<bool>(false, true, global2[_wgslsmith_index_u32(4294967295u, 1u)], global2[_wgslsmith_index_u32(17802u, 1u)])), true, !global2[_wgslsmith_index_u32(52245u, 1u)])), global3.a.ywy, _wgslsmith_clamp_vec2_i32(vec2<i32>(-28953i, _wgslsmith_sub_i32(global3.a.x, global3.a.x)), firstTrailingBit(vec2<i32>(global3.a.x, arg_2.a.x)) >> (vec2<u32>(_wgslsmith_add_u32(4294967295u, arg_2.d.x), 36032u) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(u_input.a.yy, _wgslsmith_mod_vec2_i32(abs(global3.a.xx), global3.a.wy))));
    global2 = array<bool, 1>();
    global2 = array<bool, 1>();
    global2 = array<bool, 1>();
    return func_2();
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: Struct_1) -> f32 {
    global0 = array<vec3<u32>, 15>();
    var var_0 = any(!vec2<bool>(select(global2[_wgslsmith_index_u32(arg_2.a.x | 0u, 1u)], !global2[_wgslsmith_index_u32(0u, 1u)], false), global2[_wgslsmith_index_u32(~arg_2.a.x | ~arg_2.a.x, 1u)]));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -743f), arg_1.a.x, global2[_wgslsmith_index_u32(min(_wgslsmith_add_u32(1u, 1u), (u_input.b << (arg_2.a.x % 32u)) | 0u), 1u)]));
    var var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, _wgslsmith_f_op_f32(var_1 * -1045f)), _wgslsmith_div_vec2_f32(arg_1.a, vec2<f32>(var_1, -815f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -2038f)))));
    var var_3 = 38024u;
    return var_2.a.x;
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: i32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, _wgslsmith_f_op_f32(func_4(min(u_input.c.x, u_input.c.x), func_1(u_input.b, ~1u, arg_1), Struct_1(global0[_wgslsmith_index_u32(arg_1.e.a.x & 4294967295u, 15u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1179f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) * arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -524f))));
    global3 = Struct_5(countOneBits(global3.a));
    global2 = array<bool, 1>();
    global1 = 60378u | ~select(arg_1.d.x, 0u, all(select(vec3<bool>(true, false, global2[_wgslsmith_index_u32(arg_1.d.x, 1u)]), vec3<bool>(global2[_wgslsmith_index_u32(18284u, 1u)], global2[_wgslsmith_index_u32(u_input.b, 1u)], global2[_wgslsmith_index_u32(u_input.b, 1u)]), true)));
    var var_1 = global3.a;
    return func_2();
}

fn func_6(arg_0: Struct_4, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    let var_0 = arg_1.a.a.x;
    global2 = array<bool, 1>();
    var var_1 = firstTrailingBit(0u);
    var var_2 = func_5(_wgslsmith_f_op_f32(arg_0.a.x * -256f), Struct_3(-_wgslsmith_sub_vec2_i32(vec2<i32>(-7918i, arg_1.c.x) ^ vec2<i32>(-2147483647i, 1i), vec2<i32>(-2147483647i, global3.a.x)), Struct_1(firstLeadingBit(~vec3<u32>(arg_2, 15397u, var_0))), _wgslsmith_div_f32(arg_0.a.x, func_1(4294967295u, ~u_input.b, Struct_3(global3.a.yx, arg_1.a, arg_0.a.x, vec4<u32>(var_0, 1u, 4294967295u, var_0), arg_1.a)).a.x), ~(~firstLeadingBit(vec4<u32>(var_0, 4294967295u, var_0, 0u))), arg_1.a), 0i);
    global1 = arg_1.a.a.x;
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(-693f, Struct_3(u_input.a.zz, Struct_1(_wgslsmith_sub_vec3_u32(global0[_wgslsmith_index_u32(u_input.b, 15u)], global0[_wgslsmith_index_u32(u_input.b, 15u)])), _wgslsmith_f_op_f32(func_4(select(48789i, 0i, false), func_1(u_input.b, 0u, Struct_3(global3.a.zx, Struct_1(vec3<u32>(u_input.b, u_input.b, u_input.b)), -223f, vec4<u32>(u_input.b, 6692u, 41334u, u_input.b), Struct_1(global0[_wgslsmith_index_u32(u_input.b, 15u)]))), Struct_1(vec3<u32>(19535u, 1u, u_input.b)))), (vec4<u32>(u_input.b, 65806u, 0u, 8584u) << (vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))) & (vec4<u32>(0u, u_input.b, 0u, u_input.b) >> (vec4<u32>(u_input.b, 1u, u_input.b, 19382u) % vec4<u32>(32u))), Struct_1(global0[_wgslsmith_index_u32(47334u, 15u)] << (vec3<u32>(4294967295u, u_input.b, 50306u) % vec3<u32>(32u)))), _wgslsmith_clamp_i32(1i, -1591i, ~_wgslsmith_dot_vec4_i32(global3.a, global3.a))), Struct_2(Struct_1(~(~global0[_wgslsmith_index_u32(4294967295u, 15u)])), select(select(vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(u_input.b, 1u)], false), vec4<bool>(false, false, false, global2[_wgslsmith_index_u32(u_input.b, 1u)]), vec4<bool>(global2[_wgslsmith_index_u32(0u, 1u)], false, true, global2[_wgslsmith_index_u32(1u, 1u)])), vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, u_input.b), 1u)], !global2[_wgslsmith_index_u32(u_input.b, 1u)], true, u_input.b <= u_input.b), !select(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 1u)], global2[_wgslsmith_index_u32(17273u, 1u)], global2[_wgslsmith_index_u32(0u, 1u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 1u)], global2[_wgslsmith_index_u32(4294967295u, 1u)], global2[_wgslsmith_index_u32(4294967295u, 1u)], global2[_wgslsmith_index_u32(44235u, 1u)]), vec4<bool>(global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(4294967295u, 1u)], true, true))), -(min(u_input.c, vec3<i32>(-28834i, u_input.a.x, 43406i)) ^ -vec3<i32>(1i, u_input.a.x, global3.a.x)), _wgslsmith_clamp_vec2_i32(-global3.a.xy, firstLeadingBit(u_input.a.yx), u_input.a.yz) << (select(vec2<u32>(u_input.b, 34634u), max(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b)), true) % vec2<u32>(32u))), 4294967295u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1535f, -784f, false)) * _wgslsmith_f_op_f32(func_4(u_input.a.x, Struct_4(vec2<f32>(956f, -2212f)), var_0))))));
    global2 = array<bool, 1>();
    let var_2 = Struct_2(var_0, select(vec4<bool>(true || (u_input.a.x >= global3.a.x), all(select(vec3<bool>(false, false, global2[_wgslsmith_index_u32(var_0.a.x, 1u)]), vec3<bool>(global2[_wgslsmith_index_u32(34118u, 1u)], global2[_wgslsmith_index_u32(27278u, 1u)], true), vec3<bool>(global2[_wgslsmith_index_u32(25238u, 1u)], false, true))), all(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 1u)], false, global2[_wgslsmith_index_u32(22568u, 1u)])), false), select(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 1u)], false, global2[_wgslsmith_index_u32(u_input.b, 1u)], global2[_wgslsmith_index_u32(u_input.b, 1u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(97045u, 1u)], true, false), !vec4<bool>(global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(71698u, 1u)], true, true)), !(!vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 1u)], true, global2[_wgslsmith_index_u32(1u, 1u)])), true), vec4<bool>(any(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 1u)], true, global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(31372u, 1u)])), !global2[_wgslsmith_index_u32(~26390u, 1u)], any(vec2<bool>(global2[_wgslsmith_index_u32(var_0.a.x, 1u)], true)), false == (35075i >= global3.a.x))), vec3<i32>(_wgslsmith_mult_i32(-1i, _wgslsmith_clamp_i32(global3.a.x, global3.a.x, u_input.c.x)) | -2147483647i, _wgslsmith_mod_i32(firstLeadingBit(~(-2147483647i)), 52052i), ~abs(i32(-1i) * -48685i)), vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_mult_i32(-1i, global3.a.x), 0i));
    global2 = array<bool, 1>();
    let var_3 = var_0.a.x;
    let var_4 = Struct_5(_wgslsmith_div_vec4_i32(firstTrailingBit(global3.a), ~global3.a));
    let x = u_input.a;
    s_output = StorageBuffer(-(~vec2<i32>(2147483647i, var_2.c.x) & countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, 0i), u_input.c.xx))), var_2.a.a.x, ~vec2<u32>(var_3 | min(var_3, 23971u), var_2.a.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1284f)), var_1, _wgslsmith_f_op_f32(func_4(0i, Struct_4(vec2<f32>(1155f, var_1)), func_6(Struct_4(vec2<f32>(var_1, -1446f)), var_2, u_input.b))))));
}

