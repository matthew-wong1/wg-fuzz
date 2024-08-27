struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<bool>, 25>;

var<private> global2: array<vec4<u32>, 10> = array<vec4<u32>, 10>(vec4<u32>(13600u, 42129u, 43100u, 20279u), vec4<u32>(13946u, 164u, 1u, 16355u), vec4<u32>(0u, 1u, 9790u, 4294967295u), vec4<u32>(14484u, 38690u, 4294967295u, 61580u), vec4<u32>(0u, 5692u, 14605u, 24662u), vec4<u32>(0u, 9696u, 0u, 0u), vec4<u32>(4294967295u, 6123u, 17717u, 33309u), vec4<u32>(27038u, 6961u, 30648u, 817u), vec4<u32>(60241u, 46995u, 28254u, 2561u), vec4<u32>(67631u, 4294967295u, 10697u, 4294967295u));

var<private> global3: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: vec3<f32>, arg_3: Struct_1) -> u32 {
    global0 = ~(global3.d.x | _wgslsmith_sub_i32(~global3.d.x, _wgslsmith_clamp_i32(abs(-22246i), ~(-1i), ~global3.d.x)));
    var var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(arg_3.c.x, global3.c.x, 13099u, max(firstLeadingBit(~arg_3.c.x), _wgslsmith_div_u32(u_input.a.x, ~global3.c.x))), global2[_wgslsmith_index_u32(~reverseBits(arg_3.c.x) << (~(~u_input.a.x) % 32u), 10u)]);
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1367f, -721f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_2.x, arg_2.x))) - vec2<f32>(arg_2.x, arg_2.x)), false)))));
    var var_2 = Struct_1(!global1[_wgslsmith_index_u32(4294967295u, 25u)], arg_1.x, global3.c, select(abs(_wgslsmith_div_vec3_i32(-arg_3.d, abs(vec3<i32>(global3.d.x, global3.d.x, arg_3.d.x)))), global3.d & global3.d, true), select(select(select(!arg_3.a, !vec3<bool>(false, false, arg_1.x), vec3<bool>(true, false, arg_3.b)), !vec3<bool>(arg_3.b, false, false), global3.e.x), vec3<bool>(false, true, any(select(arg_0.zx, vec2<bool>(arg_0.x, true), global3.a.xx))), !select(select(arg_3.a, vec3<bool>(arg_3.b, true, arg_3.b), arg_3.e.x), global1[_wgslsmith_index_u32(81618u, 25u)], select(vec3<bool>(global3.a.x, arg_1.x, arg_3.e.x), vec3<bool>(arg_1.x, arg_1.x, arg_0.x), vec3<bool>(arg_3.e.x, false, arg_1.x)))));
    var var_3 = ~arg_3.c.x;
    return min(37037u, _wgslsmith_mod_u32(1u, var_2.c.x));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>) -> Struct_1 {
    global3 = Struct_1(arg_1.xwy, global3.e.x, global3.c, vec3<i32>(-_wgslsmith_div_i32(~global3.d.x, select(u_input.b.x, -48211i, true)), (max(global3.d.x, 27048i) ^ global3.d.x) >> (~func_3(vec3<bool>(global3.a.x, global3.e.x, global3.e.x), arg_1.yw, vec3<f32>(-133f, 2346f, 914f), Struct_1(arg_1.zxx, true, vec2<u32>(arg_0, u_input.a.x), vec3<i32>(6677i, -2147483647i, -2147483647i), vec3<bool>(true, global3.e.x, global3.e.x))) % 32u), global3.d.x), global3.a);
    global0 = -2147483647i;
    var var_0 = Struct_1(!(!global3.a), all(global3.a.xy), global3.c, _wgslsmith_div_vec3_i32(global3.d, vec3<i32>(~0i, firstLeadingBit(1i), ~global3.d.x)), vec3<bool>(!(41552u < global3.c.x), global3.e.x, firstTrailingBit(global3.d.x) <= firstTrailingBit(-1i)));
    let var_1 = vec4<u32>(0u, firstTrailingBit(32404u), var_0.c.x | ~countOneBits(~42166u), func_3(vec3<bool>(all(select(arg_1, vec4<bool>(true, true, var_0.e.x, true), arg_1)), any(vec3<bool>(true, true, arg_1.x)), !(!global3.b)), global3.a.zx, vec3<f32>(_wgslsmith_f_op_f32(max(-782f, -1988f)), _wgslsmith_f_op_f32(round(-1879f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -108f))), Struct_1(select(global1[_wgslsmith_index_u32(1u, 25u)], select(vec3<bool>(var_0.b, global3.a.x, global3.b), var_0.e, vec3<bool>(false, false, false)), vec3<bool>(false, var_0.b, false)), global3.e.x, global3.c, vec3<i32>(53660i, i32(-1i) * -2147483647i, _wgslsmith_sub_i32(47897i, -21030i)), select(global3.a, var_0.a, true))));
    let var_2 = !var_0.a.zx;
    return Struct_1(vec3<bool>(arg_1.x, all(select(select(vec2<bool>(var_2.x, var_0.e.x), vec2<bool>(true, arg_1.x), var_0.a.x), var_0.e.xz, select(arg_1.yx, var_0.e.yz, global3.e.xz))), var_2.x), true, u_input.a.yz, select(var_0.d, -global3.d, !arg_1.zzy), select(!(!(!global1[_wgslsmith_index_u32(var_0.c.x, 25u)])), !global3.a, select(global3.e, select(global3.e, global3.e, select(vec3<bool>(false, true, true), vec3<bool>(arg_1.x, var_0.e.x, global3.e.x), arg_1.wwx)), 0u != _wgslsmith_dot_vec3_u32(u_input.a, var_1.zyx))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> bool {
    let var_0 = Struct_1(global3.a, !(!all(arg_0.e)), reverseBits(~u_input.a.xx), arg_3.d, arg_3.a);
    var var_1 = func_2(abs(global3.c.x >> ((1u >> (_wgslsmith_add_u32(var_0.c.x, 18935u) % 32u)) % 32u)), vec4<bool>(arg_3.a.x, !(true | all(global3.a.zx)), false, var_0.b));
    var_1 = func_2(0u, select(select(vec4<bool>(true, true, arg_3.a.x, true), select(!vec4<bool>(global3.e.x, true, var_0.e.x, var_0.b), !vec4<bool>(true, var_1.b, true, false), true), !(!vec4<bool>(false, true, arg_3.a.x, arg_3.e.x))), !(!select(vec4<bool>(arg_3.b, true, var_0.b, false), vec4<bool>(false, false, true, arg_3.e.x), vec4<bool>(false, arg_3.a.x, false, global3.b))), !vec4<bool>(u_input.b.x >= 18549i, !arg_1, var_1.b, all(var_1.a))));
    global1 = array<vec3<bool>, 25>();
    global1 = array<vec3<bool>, 25>();
    return _wgslsmith_add_i32(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_0.d.x, ~(-2147483647i)), vec3<i32>(select(u_input.b.x, arg_2, arg_1), arg_0.d.x, ~2147483647i))) == -_wgslsmith_dot_vec2_i32(vec2<i32>(1i << (global3.c.x % 32u), -51896i), vec2<i32>(arg_0.d.x, 1i));
}

fn func_1() -> Struct_1 {
    global2 = array<vec4<u32>, 10>();
    let var_0 = Struct_1(select(global3.a, global3.a, func_4(func_2(~40338u, vec4<bool>(global3.e.x, false, global3.b, true)), true, _wgslsmith_add_i32(u_input.b.x, abs(global3.d.x)), Struct_1(!global3.e, global3.a.x, abs(u_input.a.yz), global3.d, !global3.e))), global3.e.x, max(_wgslsmith_mod_vec2_u32(~global3.c, global3.c), min(~vec2<u32>(u_input.a.x, global3.c.x), vec2<u32>(975u, u_input.a.x) << (vec2<u32>(28962u, 108u) % vec2<u32>(32u)))), vec3<i32>(global3.d.x, _wgslsmith_mult_i32(global3.d.x, -1i) >> ((69045u & global3.c.x) % 32u), ~u_input.b.x), vec3<bool>(true | func_4(func_2(u_input.a.x, vec4<bool>(false, global3.e.x, false, global3.a.x)), false, global3.d.x | u_input.b.x, func_2(global3.c.x, vec4<bool>(true, global3.b, global3.e.x, global3.b))), all(func_2(countOneBits(global3.c.x), vec4<bool>(false, true, true, global3.e.x)).e), true));
    global2 = array<vec4<u32>, 10>();
    global0 = reverseBits(~global3.d.x);
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-815f, -959f)))))))));
    return Struct_1(vec3<bool>(var_0.b, var_0.a.x, func_4(Struct_1(vec3<bool>(global3.e.x, true, var_0.a.x), func_2(4294967295u, vec4<bool>(var_0.e.x, global3.b, true, true)).e.x, max(vec2<u32>(100694u, u_input.a.x), vec2<u32>(var_0.c.x, 0u)), vec3<i32>(0i, 58042i, 2147483647i), func_2(global3.c.x, vec4<bool>(global3.e.x, var_0.e.x, false, false)).e), all(global3.e), 15375i, Struct_1(global1[_wgslsmith_index_u32(max(u_input.a.x, u_input.a.x), 25u)], var_0.b, firstTrailingBit(global3.c), global3.d, select(var_0.a, global1[_wgslsmith_index_u32(13128u, 25u)], global3.e.x)))), func_2(max(~(~4294967295u), _wgslsmith_clamp_u32(countOneBits(var_0.c.x), reverseBits(0u), ~u_input.a.x)), !select(select(vec4<bool>(false, var_0.b, true, true), vec4<bool>(false, true, global3.e.x, var_0.b), vec4<bool>(var_0.b, global3.e.x, true, false)), vec4<bool>(var_0.a.x, global3.e.x, false, global3.b), select(vec4<bool>(global3.b, var_0.e.x, global3.b, global3.e.x), vec4<bool>(false, var_0.e.x, true, global3.e.x), vec4<bool>(true, var_0.b, true, false)))).e.x, select(abs(~(u_input.a.xz | var_0.c)), _wgslsmith_add_vec2_u32(max(~var_0.c, global3.c), ~var_0.c), var_0.e.x), var_0.d, var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-536f, 1f));
    let var_1 = func_1();
    let var_2 = select(vec2<bool>(var_1.a.x & (var_1.a.x & any(vec2<bool>(false, var_1.b))), global3.b), func_1().e.zy, select(vec2<bool>(false, func_4(func_2(0u, vec4<bool>(true, var_1.a.x, true, var_1.a.x)), !var_1.b, _wgslsmith_add_i32(u_input.b.x, -51723i), func_2(0u, vec4<bool>(var_1.e.x, true, false, global3.b)))), !func_2(global3.c.x, select(vec4<bool>(false, false, global3.b, global3.e.x), vec4<bool>(true, global3.b, false, global3.a.x), vec4<bool>(true, var_1.a.x, false, global3.e.x))).e.xy, func_2(reverseBits(firstLeadingBit(1u)), !(!vec4<bool>(var_1.e.x, var_1.e.x, var_1.b, global3.a.x))).a.xx));
    var var_3 = vec2<f32>(-407f, _wgslsmith_f_op_f32(-var_0));
    let var_4 = var_1.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(global3.d, ~vec4<i32>(-5549i, -4418i, -var_1.d.x, firstTrailingBit(abs(-19281i))), global3.c.x, reverseBits(var_1.c.x), 9520u);
}

