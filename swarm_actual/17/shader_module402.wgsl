struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: bool,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
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

var<private> global0: array<Struct_5, 1>;

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 24772u, 4294967295u, 48422u);

var<private> global2: vec3<bool> = vec3<bool>(true, true, false);

var<private> global3: Struct_1;

var<private> global4: array<vec3<u32>, 16>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: u32) -> u32 {
    return global1.x;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_3) -> vec4<u32> {
    let var_0 = vec2<i32>(arg_2.b, ~u_input.a.x);
    global3 = arg_2.a;
    let var_1 = 0i;
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_2.a.b, _wgslsmith_dot_vec2_u32(~(~(vec2<u32>(1u, arg_0.x) ^ vec2<u32>(arg_0.x, 13190u))), _wgslsmith_add_vec2_u32(vec2<u32>(56497u, _wgslsmith_mult_u32(arg_0.x, arg_1.b.b)), _wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(1u, arg_1.b.b)), ~arg_0.yz))), arg_1.b.b), 1u)];
    global0 = array<Struct_5, 1>();
    return arg_0;
}

fn func_1(arg_0: f32, arg_1: Struct_5, arg_2: Struct_5) -> vec2<f32> {
    let var_0 = ~(~0u);
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.e.x, arg_1.c.x, global3.e.x, 773f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.b.e.x, global3.e.x, arg_1.b.a.x, arg_1.b.a.x) - vec4<f32>(arg_0, arg_0, arg_0, arg_1.c.x)))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.c.x, 648f, arg_0, 123f), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.b.e.x, -909f, var_1.x, 375f) - vec4<f32>(arg_0, 1428f, -667f, 410f)), arg_1.b.c)))));
    let var_2 = !arg_1.b.c.yz;
    let var_3 = _wgslsmith_add_u32(74138u, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(var_0 ^ global3.b, ~arg_2.b.b.b), 71033u, countOneBits(func_2(false, 4294967295u, arg_2.b.b.b)), arg_1.b.b.b), func_3(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, global1.x, 35391u, arg_2.b.b.b) >> (vec4<u32>(59912u, var_0, 12175u, 0u) % vec4<u32>(32u)), vec4<u32>(global1.x, var_0, 0u, var_0)), Struct_2(var_1.zz, arg_1.b.b, !arg_2.b.c), Struct_3(Struct_1(vec3<i32>(-1i, 4268i, -1i), arg_1.b.b.b, global3.d, true, arg_2.b.b.e), 2147483647i, -u_input.a.x))));
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.b.a), _wgslsmith_f_op_vec2_f32(sign(arg_1.c.yx)))));
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(arg_2.e.x, arg_1.x), arg_1.x) * vec2<f32>(_wgslsmith_f_op_f32(-arg_2.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_1(arg_2.e.x, global0[_wgslsmith_index_u32(global3.b, 1u)], global0[_wgslsmith_index_u32(~arg_2.b, 1u)])).x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1524f - global3.e.x)))));
    let var_1 = -2147483647i;
    var var_2 = vec2<bool>(all(select(select(vec4<bool>(arg_0, arg_3, true, global2.x), select(vec4<bool>(global3.d, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(arg_3, arg_0, global3.c, arg_3)), !arg_0), select(vec4<bool>(true, true, arg_0, arg_2.d), select(vec4<bool>(false, global3.c, global2.x, arg_3), vec4<bool>(false, global3.d, true, arg_3), false), arg_3), (arg_1.x > 1198f) & true)), arg_0);
    let var_3 = Struct_4(arg_2, 0u, arg_2);
    var var_4 = _wgslsmith_mult_vec4_u32(select(_wgslsmith_add_vec4_u32(vec4<u32>(global1.x, 73742u, 4294967295u, 0u), vec4<u32>(var_3.a.b, global3.b, global1.x, 4294967295u)), vec4<u32>(global3.b, 1u, 216u, global1.x) << (vec4<u32>(global1.x, global3.b, 853u, 4294967295u) % vec4<u32>(32u)), vec4<bool>(false, global3.d, arg_0, true)) ^ ~(~vec4<u32>(64756u, 12996u, 1u, 80526u)), vec4<u32>(~reverseBits(arg_2.b), _wgslsmith_add_u32(abs(var_3.a.b), ~arg_2.b), _wgslsmith_sub_u32(_wgslsmith_add_u32(global3.b, global3.b), max(48637u, global3.b)), firstTrailingBit(_wgslsmith_mult_u32(global1.x, global3.b)))) << (min(min(~(~vec4<u32>(80003u, 4294967295u, global3.b, 0u)), firstLeadingBit(~vec4<u32>(global1.x, arg_2.b, arg_2.b, var_3.a.b))), ~(select(vec4<u32>(4294967295u, 45959u, global3.b, arg_2.b), vec4<u32>(81425u, 4294967295u, global3.b, 59303u), false) | (vec4<u32>(arg_2.b, 4294967295u, arg_2.b, 30879u) | vec4<u32>(global3.b, 1u, 17286u, arg_2.b)))) % vec4<u32>(32u));
    return Struct_1(_wgslsmith_mod_vec3_i32(~arg_2.a >> (_wgslsmith_clamp_vec3_u32(global1.ywy, vec3<u32>(50555u, arg_2.b, 72272u), global1.yyx & vec3<u32>(31145u, global3.b, 4294967295u)) % vec3<u32>(32u)), select(vec3<i32>(-u_input.a.x, -1i, _wgslsmith_div_i32(1i, -2147483647i)), _wgslsmith_add_vec3_i32(vec3<i32>(var_3.a.a.x, 0i, 1i), firstTrailingBit(global3.a)), !vec3<bool>(true, false, global3.d))), _wgslsmith_dot_vec2_u32(~var_4.yx, vec2<u32>(1u, abs(_wgslsmith_dot_vec3_u32(var_4.zwx, vec3<u32>(1u, global3.b, 0u))))), arg_0, all(vec3<bool>(var_2.x, false || arg_2.c, any(select(vec3<bool>(true, arg_0, var_2.x), vec3<bool>(arg_2.d, false, true), arg_3)))), arg_2.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(global3.a.yx & ~_wgslsmith_add_vec2_i32(~u_input.a.yx, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, 4900i), global3.a.zy)), u_input.a.xy);
    let var_1 = global0[_wgslsmith_index_u32(reverseBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(abs(global1.x), ~global3.b, global1.x, ~109935u), ~(~vec4<u32>(4606u, 54955u, global3.b, global3.b)))), 1u)];
    var var_2 = global0[_wgslsmith_index_u32(4294967295u, 1u)];
    global3 = func_4(!var_2.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.a.x, var_2.b.b.e.x)) + global3.e.xy) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_1(1224f, Struct_5(false, Struct_2(vec2<f32>(var_2.b.b.e.x, var_1.c.x), var_1.b.b, var_1.b.c), vec3<f32>(-626f, var_1.c.x, 1873f)), Struct_5(true, var_1.b, vec3<f32>(var_1.c.x, var_2.b.b.e.x, -715f))))))) + _wgslsmith_f_op_vec2_f32(func_1(var_2.b.b.e.x, global0[_wgslsmith_index_u32(~4294967295u, 1u)], global0[_wgslsmith_index_u32(108982u, 1u)]))), Struct_1(vec3<i32>(global3.a.x, _wgslsmith_sub_i32(-6703i, _wgslsmith_mod_i32(u_input.a.x, global3.a.x)), -_wgslsmith_mult_i32(8777i, var_2.b.b.a.x)), 31080u, !any(!global2.xx), true, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_2.c)))), (global2.x && (false | !var_1.a)) == all(var_1.b.c));
    global2 = !var_1.b.c.yxz;
    var var_3 = ~(~(~(~(~global1.xwx))));
    var_2 = global0[_wgslsmith_index_u32(var_3.x << (~(~1u | ~_wgslsmith_add_u32(0u, global3.b)) % 32u), 1u)];
    var var_4 = global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(select(var_2.b.b.b, ~(func_2(var_2.b.b.d, global1.x, 0u) | _wgslsmith_clamp_u32(var_1.b.b.b, var_1.b.b.b, var_3.x)), true), 1u), 16u)];
    let var_5 = -(_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(var_1.b.b.a.x, 1i, 0i, var_1.b.b.a.x)), firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(var_2.b.b.a.x, global3.a.x, -1i, 1i), vec4<i32>(var_2.b.b.a.x, 1i, var_0.x, 13087i)))) >> (vec4<u32>(var_4.x, (var_3.x & 4294967295u) >> (func_2(false, global1.x, var_3.x) % 32u), var_2.b.b.b, _wgslsmith_clamp_u32(~58367u, 14045u, ~16998u)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_u32(~4294967295u, ~global3.b) << (~(min(global3.b, global3.b) << (~global3.b % 32u)) % 32u));
}

