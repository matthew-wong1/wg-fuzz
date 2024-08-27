struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25> = array<bool, 25>(true, true, true, true, true, false, true, true, true, false, false, true, true, false, false, false, true, false, false, false, true, false, true, false, true);

var<private> global1: Struct_1 = Struct_1(55823u, vec4<f32>(737f, -1123f, -1126f, -329f));

var<private> global2: vec4<bool>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<f32>) -> f32 {
    var var_0 = !(!arg_1.x);
    let var_1 = 1f;
    let var_2 = arg_0;
    var var_3 = Struct_1(1u, var_2.b);
    let var_4 = vec4<bool>(false, false, false, (arg_1.x | true) | !(!(-951f != arg_2.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(step(301f, arg_2.x)))));
}

fn func_2() -> Struct_1 {
    global1 = Struct_1(4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, 234f, _wgslsmith_f_op_f32(func_3(Struct_1(global1.a, global1.b), global2.wyw, vec4<f32>(1256f, global1.b.x, 1385f, -1000f))), _wgslsmith_f_op_f32(global1.b.x + -505f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.b.x, global1.b.x, -127f, 979f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(164f, -2884f, 620f, global1.b.x)), select(vec4<bool>(false, global0[_wgslsmith_index_u32(global1.a, 25u)], global2.x, global0[_wgslsmith_index_u32(u_input.a.x, 25u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 25u)], global2.x, false), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], global0[_wgslsmith_index_u32(4236u, 25u)], true))))))));
    let var_0 = vec3<f32>(global1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b.x), 212f), global1.b.x);
    var var_1 = Struct_1(firstTrailingBit(u_input.a.x | global1.a), global1.b);
    global0 = array<bool, 25>();
    global1 = Struct_1(0u, global1.b);
    return Struct_1(countOneBits(~0u), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1429f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.b.x))), _wgslsmith_f_op_f32(-1804f * _wgslsmith_f_op_f32(ceil(global1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.b.x)))))));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: i32) -> Struct_1 {
    var var_0 = func_2();
    var var_1 = vec4<bool>(!any(select(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], arg_1.x, global0[_wgslsmith_index_u32(0u, 25u)]), select(vec4<bool>(arg_1.x, true, global0[_wgslsmith_index_u32(var_0.a, 25u)], global0[_wgslsmith_index_u32(57366u, 25u)]), arg_1, global2.x), vec4<bool>(true, arg_0, true, global0[_wgslsmith_index_u32(0u, 25u)]))), true, ~1u == (firstTrailingBit(var_0.a) << (var_0.a % 32u)), !all(vec4<bool>(true, true, true, true)) || false);
    let var_2 = Struct_1(global1.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(global1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(345f, -500f, var_0.b.x, global1.b.x)))))), var_0.b));
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.b.x, 286f, -1284f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.b.xww) * var_0.b.ywy)))), vec3<f32>(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(global1.b.x - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b.x))))));
    let var_4 = u_input.b.wxx;
    return var_2;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global1 = func_2();
    var var_0 = true;
    global2 = !vec4<bool>(-1626f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)), global2.x, false, any(global2.yy));
    let var_1 = arg_0;
    let var_2 = func_1(global0[_wgslsmith_index_u32(arg_0.a, 25u)], select(!select(select(vec4<bool>(global0[_wgslsmith_index_u32(12804u, 25u)], global2.x, global2.x, global0[_wgslsmith_index_u32(1u, 25u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_1.a, 25u)], false, false, true), global0[_wgslsmith_index_u32(54988u, 25u)]), select(vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(var_1.a, 25u)], global2.x), vec4<bool>(false, global2.x, global0[_wgslsmith_index_u32(15924u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)]), vec4<bool>(global2.x, false, global0[_wgslsmith_index_u32(arg_0.a, 25u)], true)), global0[_wgslsmith_index_u32(~0u, 25u)]), select(select(vec4<bool>(false, true, false, true), select(vec4<bool>(global2.x, false, global2.x, true), vec4<bool>(true, false, true, false), vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0.a, 25u)], false, global0[_wgslsmith_index_u32(4294967295u, 25u)])), vec4<bool>(true, global2.x, true, global2.x)), !(!vec4<bool>(global0[_wgslsmith_index_u32(var_1.a, 25u)], global0[_wgslsmith_index_u32(global1.a, 25u)], global0[_wgslsmith_index_u32(global1.a, 25u)], global0[_wgslsmith_index_u32(1u, 25u)])), select(!global2.x, var_1.b.x <= global1.b.x, false)), !vec4<bool>(!global2.x, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, var_1.a, 4294967295u), 25u)], true, false)), vec4<i32>(2147483647i, ~_wgslsmith_mult_i32(14047i << (u_input.a.x % 32u), 44929i), u_input.c.x | _wgslsmith_dot_vec3_i32(select(u_input.b.yxw, vec3<i32>(u_input.c.x, u_input.b.x, u_input.c.x), false), u_input.b.ywx), firstLeadingBit(0i)), _wgslsmith_mod_i32(u_input.c.x, ~(-2147483647i))).b.x;
    return Struct_1(global1.a, vec4<f32>(-366f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2))), _wgslsmith_f_op_f32(705f * var_1.b.x), 1606f));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = !(-112f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(309f)) - -105f));
    global1 = Struct_1(~_wgslsmith_div_u32(~4294967295u, 8387u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global1.b))))) - func_2().b));
    let var_1 = Struct_1(_wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(48129u, global1.a, 4294967295u, 4294967295u)), firstTrailingBit(vec4<u32>(0u, u_input.a.x, 4294967295u, 0u)) << (~vec4<u32>(49799u, 4229u, arg_0.a, arg_0.a) % vec4<u32>(32u))) ^ reverseBits(1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(arg_0.b)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(614f, arg_0.b.x, -1000f, arg_0.b.x) + vec4<f32>(global1.b.x, global1.b.x, global1.b.x, -1106f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_f_op_f32(sign(481f)), -2278f, _wgslsmith_f_op_f32(arg_2.b.x - -472f)))));
    var var_2 = true;
    var var_3 = vec2<u32>(~func_1(false, select(vec4<bool>(false, global0[_wgslsmith_index_u32(arg_2.a, 25u)], global0[_wgslsmith_index_u32(29150u, 25u)], true), vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(arg_2.a, 25u)]), global2.x), vec4<i32>(0i, u_input.c.x, u_input.b.x, u_input.c.x), -2147483647i << (arg_0.a % 32u)).a, arg_0.a) | _wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, var_1.a));
    return select(!select(vec3<bool>(false, var_1.b.x >= global1.b.x, true), global2.ywx, !(!global0[_wgslsmith_index_u32(var_3.x, 25u)])), global2.wwz, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.b.x;
    global1 = Struct_1(_wgslsmith_mult_u32(global1.a, _wgslsmith_dot_vec3_u32(max(~vec3<u32>(global1.a, 58327u, global1.a), vec3<u32>(951u, 39749u, 43023u)), ~(vec3<u32>(global1.a, u_input.a.x, 4294967295u) << (vec3<u32>(global1.a, 1u, 54374u) % vec3<u32>(32u))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1.b.x - global1.b.x), _wgslsmith_f_op_f32(floor(-334f)), _wgslsmith_f_op_f32(global1.b.x * 424f), _wgslsmith_f_op_f32(trunc(-2095f))) - global1.b)));
    let var_1 = reverseBits(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, -52061i), -u_input.c), u_input.b.yz)) >> (((vec2<u32>(1u, ~u_input.a.x) ^ firstTrailingBit(vec2<u32>(131786u, 1u))) ^ ~u_input.a) % vec2<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(-1482f + global1.b.x);
    var var_3 = !(!func_5(Struct_1(_wgslsmith_add_u32(u_input.a.x, global1.a), vec4<f32>(var_2, var_2, global1.b.x, 911f)), 326f, func_4(func_1(false, vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 25u)], false, true), vec4<i32>(var_1.x, 47858i, 1i, -1i), u_input.c.x))));
    var var_4 = func_4(Struct_1(1u, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-837f * 1000f), func_2().b.x)), -279f, var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(163f)) * _wgslsmith_f_op_f32(sign(global1.b.x))))));
    global2 = select(select(!vec4<bool>(false, select(false, global0[_wgslsmith_index_u32(4294967295u, 25u)], true), global1.b.x == var_4.b.x, true), vec4<bool>(all(!vec4<bool>(true, var_3.x, true, global0[_wgslsmith_index_u32(var_4.a, 25u)])), false, global0[_wgslsmith_index_u32(~var_4.a, 25u)], global0[_wgslsmith_index_u32(23167u, 25u)]), vec4<bool>(func_1(global0[_wgslsmith_index_u32(global1.a, 25u)], vec4<bool>(true, var_3.x, global2.x, false), u_input.b, 3458i).a != reverseBits(43450u), func_5(Struct_1(4294967295u, vec4<f32>(var_2, -168f, global1.b.x, global1.b.x)), _wgslsmith_f_op_f32(select(159f, -1218f, true)), Struct_1(19850u, var_4.b)).x, global2.x, true)), !select(vec4<bool>(true, global2.x, all(vec2<bool>(global2.x, true)), false), vec4<bool>(false, false, any(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 25u)])), global2.x), select(!vec4<bool>(true, false, global2.x, true), !vec4<bool>(global2.x, false, global0[_wgslsmith_index_u32(8320u, 25u)], false), false)), global0[_wgslsmith_index_u32(u_input.a.x, 25u)]);
    global2 = select(select(!(!select(vec4<bool>(true, global0[_wgslsmith_index_u32(11925u, 25u)], var_3.x, false), vec4<bool>(var_3.x, true, true, var_3.x), global0[_wgslsmith_index_u32(24874u, 25u)])), !vec4<bool>(any(vec3<bool>(true, global0[_wgslsmith_index_u32(global1.a, 25u)], global2.x)), global0[_wgslsmith_index_u32(global1.a, 25u)], global2.x, select(var_3.x, true, true)), ~min(var_1.x, u_input.b.x) == _wgslsmith_div_i32(u_input.c.x, u_input.c.x)), select(vec4<bool>(true, any(vec4<bool>(true, global2.x, global0[_wgslsmith_index_u32(var_4.a, 25u)], true)), global0[_wgslsmith_index_u32(1u, 25u)] || true, false), !(!vec4<bool>(global0[_wgslsmith_index_u32(var_4.a, 25u)], global0[_wgslsmith_index_u32(var_4.a, 25u)], global0[_wgslsmith_index_u32(1u, 25u)], false)), select(vec4<bool>(!global2.x, var_4.b.x >= 1056f, true, global2.x), vec4<bool>(true, false, any(global2.wzw), !global0[_wgslsmith_index_u32(1075u, 25u)]), !(!var_3.x))), select(vec4<bool>(true, true, global2.x, !global0[_wgslsmith_index_u32(min(global1.a, global1.a), 25u)]), vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(114589u, 42779u, global1.a), vec3<u32>(u_input.a.x, 51230u, 131944u)), 25u)], !any(vec3<bool>(global2.x, true, global0[_wgslsmith_index_u32(u_input.a.x, 25u)])), reverseBits(25086u) <= u_input.a.x, false), select(vec4<bool>(false, any(vec3<bool>(false, true, global2.x)), any(vec4<bool>(global2.x, true, global0[_wgslsmith_index_u32(global1.a, 25u)], false)), true), !vec4<bool>(global2.x, global2.x, var_3.x, false), global0[_wgslsmith_index_u32(~0u, 25u)])));
    let var_5 = _wgslsmith_f_op_vec4_f32(-global1.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(countOneBits(abs(9523u)), ~(~65860u), 77189u, 1u), -(countOneBits(~vec4<i32>(var_1.x, u_input.b.x, 0i, u_input.b.x)) << (vec4<u32>(var_4.a, global1.a << (71243u % 32u), ~4039u, global1.a) % vec4<u32>(32u))), abs(~vec2<u32>(27830u, 58777u)), u_input.c, _wgslsmith_f_op_vec2_f32(-var_4.b.xw));
}

