struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_1, 1>;

var<private> global2: vec3<bool> = vec3<bool>(false, false, true);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_2) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(102f, -622f) - _wgslsmith_f_op_vec2_f32(arg_3.c.a - arg_3.b.a)) - arg_3.c.a)));
    let var_1 = vec2<bool>(global2.x, global2.x == true);
    var var_2 = vec2<i32>(u_input.a, i32(-1i) * -countOneBits(arg_2.x)) | ((vec2<i32>(i32(-1i) * -1i, ~u_input.a) | (vec2<i32>(arg_2.x, -58552i) ^ (vec2<i32>(arg_2.x, 2147483647i) << (vec2<u32>(4294967295u, 16958u) % vec2<u32>(32u))))) >> (~(~abs(vec2<u32>(69370u, 914u))) % vec2<u32>(32u)));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a.x - arg_3.c.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * arg_3.c.a.x))) == var_0.a.x;
    var var_4 = vec4<u32>(abs(1u), 32926u, _wgslsmith_mult_u32(~min(select(0u, 15839u, true), firstTrailingBit(0u)), min(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(14354u, 0u), vec2<u32>(31775u, 4294967295u))))), ~abs(select(46273u, 1u, any(vec4<bool>(false, true, arg_0, false)))));
    return (~_wgslsmith_dot_vec2_u32(var_4.xw, vec2<u32>(var_4.x, var_4.x)) ^ abs(var_4.x)) << (_wgslsmith_mult_u32(_wgslsmith_add_u32(1u, ~(var_4.x << (0u % 32u))), var_4.x) % 32u);
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_1.x;
    global0 = !(!select(arg_1.yyx, arg_1.yyy, all(vec3<bool>(global0.x, global2.x, global0.x))));
    global0 = !select(vec3<bool>((arg_2.e <= 17341i) == false, any(global0.zy) && true, _wgslsmith_f_op_f32(arg_0 + arg_2.a.a.x) <= _wgslsmith_f_op_f32(-arg_2.b.a.x)), arg_1.yzy, !vec3<bool>(!arg_1.x, any(vec3<bool>(false, false, false)), arg_1.x));
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_add_u32(~_wgslsmith_mult_u32(0u, 12533u), ~18758u << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 39604u, 1u), vec3<u32>(61902u, 16657u, 0u)) % 32u)), ~0u) & (_wgslsmith_clamp_u32(0u, ~abs(49626u), 4294967295u) >> (func_3((arg_2.a.a.x < arg_0) | (arg_1.x && global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-437f + -323f)), abs(select(u_input.b, vec3<i32>(-50937i, arg_2.e, u_input.b.x), arg_1.x)), Struct_2(global1[_wgslsmith_index_u32(~7628u, 1u)], arg_2.a, global1[_wgslsmith_index_u32(1u, 1u)], arg_2.c, _wgslsmith_add_i32(arg_2.e, arg_2.e))) % 32u));
    var var_2 = u_input.a;
    return global1[_wgslsmith_index_u32(~64560u, 1u)];
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1915f), _wgslsmith_f_op_f32(f32(-1f) * -951f)) - arg_0.xw)));
    let var_1 = Struct_2(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -863f) - -1067f), vec4<bool>(any(vec4<bool>(global2.x, global0.x, global0.x, true)), !global0.x, all(vec4<bool>(true, true, true, true)), all(vec3<bool>(global2.x, false, global2.x)) && false), Struct_2(global1[_wgslsmith_index_u32(~func_3(global0.x, arg_1.a.x, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), Struct_2(global1[_wgslsmith_index_u32(14466u, 1u)], Struct_1(var_0.a), global1[_wgslsmith_index_u32(0u, 1u)], arg_1, u_input.b.x)), 1u)], Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, -385f))), Struct_1(var_0.a), var_0, u_input.a)), var_0, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1229f), _wgslsmith_f_op_f32(var_0.a.x * arg_1.a.x)) - vec2<f32>(-759f, arg_0.x))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(countOneBits(_wgslsmith_mod_u32(1u, 1u)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 37283u)) % 32u), 1u), 1u)], _wgslsmith_mult_i32(u_input.a | u_input.b.x, 0i));
    var var_2 = global1[_wgslsmith_index_u32(~1u, 1u)];
    var var_3 = Struct_2(var_0, func_2(-976f, select(select(vec4<bool>(global0.x, global2.x, false, true), vec4<bool>(global2.x, true, true, global0.x), vec4<bool>(true, true, false, false)), !select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, true, global0.x), true), !(!vec4<bool>(false, false, true, global0.x))), var_1), Struct_1(vec2<f32>(arg_0.x, arg_0.x)), var_1.a, _wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(32192i, u_input.a), -1i & u_input.a, -44253i), var_1.e) | -1i);
    var_3 = Struct_2(func_2(var_0.a.x, select(vec4<bool>(false, global2.x, true, !global2.x), vec4<bool>(true, false, global0.x, global0.x), global0.x), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, arg_0.x) + vec2<f32>(335f, 2753f))), arg_1, func_2(_wgslsmith_f_op_f32(-200f * arg_0.x), select(vec4<bool>(global0.x, false, false, global2.x), vec4<bool>(global2.x, global0.x, global0.x, global0.x), global2.x), var_1), Struct_1(_wgslsmith_f_op_vec2_f32(-var_3.b.a)), 1i)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, -1381f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_1.a, vec2<f32>(arg_0.x, arg_0.x)))))), func_2(174f, vec4<bool>(any(select(vec4<bool>(false, global2.x, global0.x, true), vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(false, false, true, false))), !(global2.x | false), !global0.x, true), Struct_2(func_2(var_0.a.x, vec4<bool>(false, global0.x, global2.x, true), var_1), arg_1, var_1.b, Struct_1(arg_1.a), var_1.e)), Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.a.x, -758f))), _wgslsmith_f_op_vec2_f32(select(func_2(arg_0.x, vec4<bool>(global2.x, global0.x, global2.x, false), var_1).a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-162f, -136f)), select(global2.yz, global2.zx, false)))))), ~u_input.a);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.zyw)) + arg_0.xyz);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = abs(u_input.b.x) > -2147483647i;
    global0 = select(select(vec3<bool>((arg_1.x < 4294967295u) | true, !any(global2.zy), u_input.a == (u_input.b.x << (37040u % 32u))), vec3<bool>(!all(vec4<bool>(false, false, true, true)), global0.x, true), global0.x), select(!vec3<bool>(false, global0.x, true), select(!(!vec3<bool>(false, global2.x, global2.x)), select(select(vec3<bool>(true, global0.x, global2.x), vec3<bool>(global0.x, global2.x, true), vec3<bool>(true, global0.x, global0.x)), vec3<bool>(global2.x, false, global2.x), false), !global0.x), select(vec3<bool>(false, false, global2.x && global0.x), vec3<bool>(global2.x, true, false), vec3<bool>(arg_0.d.a.x <= -1000f, global0.x, arg_0.e != arg_0.e))), !all(select(select(global2.yx, global0.xx, true), select(global0.xy, global2.yz, global0.zy), any(vec4<bool>(true, true, true, global2.x)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(arg_0.c.a.x, vec4<bool>(true, global0.x, true, true), Struct_2(Struct_1(arg_0.a.a), global1[_wgslsmith_index_u32(1u, 1u)], Struct_1(arg_0.a.a), Struct_1(arg_0.b.a), 2147483647i)).a.x) - _wgslsmith_f_op_f32(func_2(1000f, vec4<bool>(true, global2.x, global0.x, false), Struct_2(global1[_wgslsmith_index_u32(136996u, 1u)], global1[_wgslsmith_index_u32(0u, 1u)], Struct_1(arg_0.a.a), global1[_wgslsmith_index_u32(arg_1.x, 1u)], 248i)).a.x * arg_2.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2.x)) - 829f), _wgslsmith_div_f32(_wgslsmith_div_f32(-427f, 542f), _wgslsmith_f_op_f32(ceil(arg_2.x))))), _wgslsmith_f_op_f32(-arg_0.b.a.x), _wgslsmith_f_op_f32(-arg_0.d.a.x)) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.x, arg_0.a.a.x, 606f, arg_0.d.a.x))))) + vec4<f32>(_wgslsmith_div_f32(arg_2.x, arg_0.c.a.x), _wgslsmith_f_op_f32(ceil(-3084f)), arg_0.c.a.x, _wgslsmith_div_f32(-674f, arg_0.b.a.x))))));
    global1 = array<Struct_1, 1>();
    let var_2 = all(vec4<bool>(any(vec3<bool>(true, true, true)) | (any(vec2<bool>(global2.x, true)) & true), false, global0.x, true));
    return Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), -762f)))));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: vec3<bool>) -> vec2<bool> {
    global0 = vec3<bool>(!(-max(u_input.a, 2147483647i) != ~2147483647i), arg_2.x, false);
    let var_0 = arg_2;
    let var_1 = Struct_2(global1[_wgslsmith_index_u32(29994u, 1u)], global1[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(min(1u, 29615u), 62006u)), 1u)], func_5(Struct_2(global1[_wgslsmith_index_u32(80934u, 1u)], Struct_1(vec2<f32>(-201f, arg_1.x)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-270f, arg_1.x))), Struct_1(arg_1.xz), _wgslsmith_mult_i32(_wgslsmith_mult_i32(-32888i, 12094i), _wgslsmith_mult_i32(1i, arg_0))), vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_4(arg_1, func_2(arg_1.x, vec4<bool>(global0.x, false, false, arg_2.x), Struct_2(Struct_1(vec2<f32>(arg_1.x, 1855f)), global1[_wgslsmith_index_u32(4294967295u, 1u)], Struct_1(arg_1.ww), global1[_wgslsmith_index_u32(42108u, 1u)], -20687i))))))), func_2(_wgslsmith_div_f32(arg_1.x, -2602f), vec4<bool>(true, global2.x, all(vec2<bool>(arg_2.x, global2.x)) | true, !any(var_0.xx)), Struct_2(global1[_wgslsmith_index_u32(func_3(!var_0.x, -1498f, _wgslsmith_sub_vec3_i32(u_input.b, vec3<i32>(-1i, 47212i, arg_0)), Struct_2(Struct_1(arg_1.yw), global1[_wgslsmith_index_u32(4294967295u, 1u)], Struct_1(vec2<f32>(491f, arg_1.x)), Struct_1(arg_1.yx), arg_0)), 1u)], func_2(_wgslsmith_f_op_f32(f32(-1f) * -673f), vec4<bool>(false, global2.x, true, true), Struct_2(global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(24257u, 1u)], global1[_wgslsmith_index_u32(0u, 1u)], -1i)), Struct_1(_wgslsmith_f_op_vec2_f32(select(arg_1.yw, vec2<f32>(arg_1.x, arg_1.x), global2.xx))), Struct_1(_wgslsmith_div_vec2_f32(arg_1.yy, vec2<f32>(arg_1.x, 221f))), ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, 13516i, arg_0, -61138i), vec4<i32>(-1i, arg_0, 90468i, -49342i)))), u_input.b.x);
    global0 = select(!(!(!select(vec3<bool>(false, false, true), var_0, arg_2.x))), select(vec3<bool>(global0.x, true, true), !var_0, global2.x), true);
    return !global0.yy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.x;
    var var_1 = !func_1(~47453i, _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, -607f, _wgslsmith_f_op_f32(-960f - -1283f), _wgslsmith_f_op_f32(499f * 1000f)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(235f, -2561f, 551f, -569f))))), !vec3<bool>(global2.x, true, true));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1465f, _wgslsmith_div_f32(-403f, 234f)) + func_5(Struct_2(Struct_1(vec2<f32>(-1374f, 174f)), global1[_wgslsmith_index_u32(4294967295u, 1u)], Struct_1(vec2<f32>(765f, -442f)), global1[_wgslsmith_index_u32(2184u, 1u)], u_input.a), min(vec4<u32>(57636u, 55669u, 4294967295u, 0u), vec4<u32>(52227u, 72479u, 22617u, 4294967295u)), _wgslsmith_div_vec3_f32(vec3<f32>(168f, -1861f, 314f), vec3<f32>(-430f, 164f, 990f))).a)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, -562f))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-792f, 268f) + vec2<f32>(-401f, 460f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-939f, 261f)))))), Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1128f, -186f) * vec2<f32>(-547f, 444f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1161f, 1306f) - vec2<f32>(-206f, -1148f)), true)), vec2<f32>(-1549f, 2718f)))), 2147483647i);
    var var_3 = Struct_2(var_2.a, func_5(Struct_2(global1[_wgslsmith_index_u32(39200u, 1u)], var_2.d, global1[_wgslsmith_index_u32(0u, 1u)], Struct_1(_wgslsmith_f_op_vec2_f32(sign(var_2.b.a))), ~reverseBits(u_input.b.x)), vec4<u32>(4294967295u, 1u, ~10124u, ~(~1u)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-873f, var_2.d.a.x, _wgslsmith_f_op_f32(step(1567f, 682f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1385f, -730f, -463f)), global2.x))), global1[_wgslsmith_index_u32(~(~(firstLeadingBit(4294967295u) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 45364u), vec2<u32>(4294967295u, 1u)))), 1u)], global1[_wgslsmith_index_u32(0u, 1u)], 5658i & ~_wgslsmith_mult_i32(-29579i | u_input.b.x, i32(-1i) * -42292i));
    var var_4 = ~(_wgslsmith_sub_vec4_u32(vec4<u32>(max(1u, 44373u), countOneBits(4294967295u), 10623u, ~90852u), select(vec4<u32>(1u, 1u, 1u, 1u), countOneBits(vec4<u32>(28439u, 4294967295u, 0u, 4294967295u)), vec4<bool>(false, var_1.x, var_1.x, global0.x))) ^ (_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 1u, 23112u, 41383u), reverseBits(vec4<u32>(48552u, 55769u, 0u, 22755u)), select(vec4<u32>(10983u, 0u, 29322u, 16051u), vec4<u32>(0u, 1u, 14603u, 46583u), vec4<bool>(var_1.x, global0.x, true, var_1.x))) & vec4<u32>(1u, ~4294967295u, 1u, 4294967295u)));
    let var_5 = firstLeadingBit(u_input.b.xz);
    var var_6 = Struct_1(var_2.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(15863i, firstLeadingBit(select(u_input.a, var_2.e, var_1.x)), var_2.e, max(_wgslsmith_mod_i32(1i, var_3.e), -(~(-15824i)))), vec3<u32>((~var_4.x << (_wgslsmith_dot_vec2_u32(var_4.yz, vec2<u32>(var_4.x, var_4.x)) % 32u)) & max(~14179u, ~var_4.x), var_4.x, countOneBits(_wgslsmith_mult_u32(29833u, var_4.x)) ^ var_4.x), (14016i | -u_input.a) & countOneBits(-37587i), _wgslsmith_mult_i32(u_input.b.x, max(-8736i, u_input.a)));
}

