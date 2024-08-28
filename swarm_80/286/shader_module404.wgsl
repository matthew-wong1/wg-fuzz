struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: f32,
    d: vec2<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: array<i32, 17> = array<i32, 17>(i32(-2147483648), 61465i, 0i, 56357i, i32(-2147483648), -5418i, -25944i, 47769i, -18668i, 75740i, -10471i, -1i, 23466i, 3621i, -9699i, 2147483647i, -1i);

var<private> global2: array<Struct_2, 29>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = Struct_2(arg_0);
    var var_1 = Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(0u, var_0.a.a.x, var_0.a.a.x, arg_0.a.x) << ((var_0.a.a ^ arg_0.a) % vec4<u32>(32u)), ~(vec4<u32>(34185u, 4294967295u, 61744u, 4294967295u) << (arg_0.a % vec4<u32>(32u)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2887f, arg_0.c))), _wgslsmith_f_op_f32(abs(arg_0.b.x))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-192f, _wgslsmith_div_f32(var_0.a.c, -874f), _wgslsmith_f_op_f32(1392f + var_0.a.c))))), var_0.a.b.x, ~vec2<i32>((i32(-1i) * -26413i) ^ var_0.a.d.x, select(0i, _wgslsmith_mult_i32(29338i, 2616i), var_0.a.a.x < 12314u)), arg_0.e);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.x), -463f, var_0.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.b.x))));
    let var_3 = arg_0.b;
    var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.b.x, var_0.a.c, var_3.x, var_1.b.x), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, -439f, var_0.a.b.x, -697f)))))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1202f))) * -459f), arg_0.c, -187f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.x), -121f))))));
    return any(vec2<bool>(var_0.a.e.x, true));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_2) -> i32 {
    let var_0 = Struct_1(arg_2.a.a, vec3<f32>(443f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.a.c))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.a.c)) * arg_2.a.b.x)))), 413f, vec2<i32>(_wgslsmith_div_i32(abs(arg_2.a.d.x), global1[_wgslsmith_index_u32(~arg_2.a.a.x << (13768u % 32u), 17u)]), -8194i & (-21576i << (min(arg_1, arg_1) % 32u))), select(select(vec4<bool>(!arg_0.x, !arg_2.a.e.x, global0.x, global0.x), vec4<bool>(global0.x, all(arg_2.a.e.xw), true, true), !vec4<bool>(global0.x, arg_2.a.e.x, arg_0.x, true)), vec4<bool>(_wgslsmith_f_op_f32(exp2(arg_2.a.c)) > _wgslsmith_f_op_f32(-arg_2.a.c), func_3(arg_2.a), _wgslsmith_add_i32(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], -16346i) == -arg_2.a.d.x, arg_0.x || true), select(arg_2.a.e, select(select(vec4<bool>(global0.x, arg_2.a.e.x, true, true), arg_2.a.e, vec4<bool>(arg_2.a.e.x, false, arg_0.x, arg_2.a.e.x)), vec4<bool>(false, true, false, false), arg_2.a.e), vec4<bool>(true, true, true, global0.x & arg_0.x))));
    var var_1 = ~_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(var_0.a.x, arg_2.a.a.x), vec2<u32>(_wgslsmith_add_u32(1u, 50229u), 13536u)), vec2<u32>(4294967295u << (select(arg_1, 34564u, false) % 32u), var_0.a.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.c)), 1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.c))), var_0.c), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(472f, var_0.b.x, 675f, 308f), vec4<f32>(637f, arg_2.a.c, arg_2.a.b.x, 353f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.c, 664f, arg_2.a.c, 216f)))))) - vec4<f32>(var_0.c, -217f, var_0.c, -278f));
    let var_3 = arg_2.a.a.yzy;
    global2 = array<Struct_2, 29>();
    return -43409i;
}

fn func_1(arg_0: bool, arg_1: u32) -> bool {
    global1 = array<i32, 17>();
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(-global1[_wgslsmith_index_u32(u_input.a.x, 17u)], -2147483647i, global1[_wgslsmith_index_u32(countOneBits(select(u_input.a.x, 4466u, true)) & ~u_input.a.x, 17u)], func_2(vec2<bool>(true, false), 1u, Struct_2(Struct_1(vec4<u32>(57458u, 1u, arg_1, 19629u), vec3<f32>(-706f, -1000f, 935f), 712f, vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(1u, 17u)]), vec4<bool>(true, arg_0, global0.x, arg_0))))), _wgslsmith_clamp_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(~u_input.a.x, 17u)], _wgslsmith_add_i32(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], 1i), ~global1[_wgslsmith_index_u32(u_input.a.x, 17u)]), ~(-53043i), -_wgslsmith_add_i32(-4792i, global1[_wgslsmith_index_u32(4294967295u, 17u)])), _wgslsmith_div_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], 1i, -global1[_wgslsmith_index_u32(arg_1, 17u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 62569u, arg_1), vec4<u32>(40993u, 49708u, u_input.a.x, 10627u)), 17u)]), reverseBits(-vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], global1[_wgslsmith_index_u32(13066u, 17u)], -48698i, global1[_wgslsmith_index_u32(0u, 17u)]))), firstTrailingBit(abs(vec4<i32>(global1[_wgslsmith_index_u32(1u, 17u)], 434i, -1690i, global1[_wgslsmith_index_u32(1875u, 17u)]) >> (vec4<u32>(u_input.a.x, arg_1, arg_1, arg_1) % vec4<u32>(32u))))));
    let var_1 = u_input.a.x | _wgslsmith_clamp_u32(~arg_1, _wgslsmith_div_u32(arg_1, ~1211u), _wgslsmith_dot_vec2_u32(~u_input.a, ~u_input.a | ~u_input.a));
    var_0 = 1i;
    var_0 = ~(-25713i);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(true, all(select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x), true)), _wgslsmith_sub_u32(48990u, min(38412u, 8059u)) != u_input.a.x), !(!vec3<bool>(global0.x, global0.x, !global0.x)), select(vec3<bool>(false, true, false & func_1(global0.x, u_input.a.x)), select(select(!vec3<bool>(global0.x, global0.x, false), !vec3<bool>(global0.x, global0.x, false), select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, false, false), global0.x)), vec3<bool>(true || global0.x, func_3(Struct_1(vec4<u32>(4294967295u, u_input.a.x, 0u, u_input.a.x), vec3<f32>(572f, 141f, 2486f), -1166f, vec2<i32>(2147483647i, 2147483647i), vec4<bool>(false, true, global0.x, global0.x))), false), global0.x), vec3<bool>(!(!global0.x), any(vec4<bool>(false, false, global0.x, global0.x)), global0.x)));
    var_0 = select(select(!vec3<bool>(var_0.x, var_0.x, false), select(!vec3<bool>(false, true, global0.x), vec3<bool>(var_0.x, global1[_wgslsmith_index_u32(52711u, 17u)] <= -2147483647i, global0.x && true), select(vec3<bool>(var_0.x, global0.x, var_0.x), vec3<bool>(false, global0.x, global0.x), vec3<bool>(false, false, true))), !all(vec2<bool>(var_0.x, true))), vec3<bool>(!var_0.x, select((global1[_wgslsmith_index_u32(u_input.a.x, 17u)] >> (0u % 32u)) != ~global1[_wgslsmith_index_u32(1u, 17u)], (33914u > u_input.a.x) | var_0.x, any(!vec4<bool>(true, var_0.x, var_0.x, false))), true), select(!vec3<bool>(true, 8063i < global1[_wgslsmith_index_u32(u_input.a.x, 17u)], false), !vec3<bool>(false, true, func_1(false, u_input.a.x)), !(!(!vec3<bool>(global0.x, global0.x, var_0.x)))));
    global0 = var_0.xx;
    let var_1 = Struct_1(~(_wgslsmith_clamp_vec4_u32(~vec4<u32>(25885u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 0u, 1u), vec4<u32>(u_input.a.x, u_input.a.x, 46304u, u_input.a.x) >> (vec4<u32>(4294967295u, 1u, u_input.a.x, 0u) % vec4<u32>(32u))) << (firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(16665u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 8140u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))) % vec4<u32>(32u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-222f, 463f, -1000f))))), vec3<f32>(_wgslsmith_f_op_f32(abs(-462f)), _wgslsmith_div_f32(430f, 1442f), -1591f)))), -333f, reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(-8659i, -2147483647i))), !vec4<bool>(false, func_3(Struct_1(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), vec3<f32>(-304f, 150f, 1000f), -1000f, vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], -68626i), vec4<bool>(true, false, true, var_0.x))), false, false));
    var var_2 = vec3<u32>(1u, ~(~_wgslsmith_add_u32(0u, _wgslsmith_mod_u32(u_input.a.x, var_1.a.x))), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~(~abs(~var_2.yx)), vec2<i32>(2147483647i, -var_1.d.x), var_1.d);
}

