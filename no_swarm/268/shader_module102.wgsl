struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_4,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<Struct_2, 23>;

var<private> global2: bool;

var<private> global3: array<i32, 14>;

var<private> global4: bool = true;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -576f);
    var var_2 = var_0.a;
    var_2 = arg_0.b;
    var var_3 = _wgslsmith_clamp_vec2_i32(select(countOneBits(vec2<i32>(44302i, 19057i) >> (vec2<u32>(u_input.d.x, u_input.b) % vec2<u32>(32u))), ~_wgslsmith_sub_vec2_i32(u_input.a.zx, vec2<i32>(arg_0.a.b, arg_0.b.b)), true) << ((u_input.d.ww | u_input.d.xy) % vec2<u32>(32u)), abs(vec2<i32>(~0i, arg_0.a.b)), u_input.a.xz);
    return select(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.c.x, u_input.b, 85890u), _wgslsmith_mod_u32(0u, _wgslsmith_mult_u32(u_input.c.x, u_input.c.x))), max(_wgslsmith_dot_vec4_u32(vec4<u32>(106328u, u_input.d.x, u_input.b, u_input.c.x), vec4<u32>(0u, 86303u, 1u, 4294967295u)), 1u), 33947u ^ ~(5829u & u_input.c.x), ~_wgslsmith_mult_u32(4294967295u, u_input.c.x)), ~(~_wgslsmith_mod_vec4_u32(u_input.c, u_input.c) << (vec4<u32>(_wgslsmith_div_u32(4294967295u, u_input.d.x), 4171u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 1u, u_input.d.x, u_input.d.x), vec4<u32>(4294967295u, 1u, u_input.d.x, 51086u)), countOneBits(u_input.c.x)) % vec4<u32>(32u))), select(!select(select(arg_0.d, arg_0.d, var_2.a), vec4<bool>(true, false, false, false), arg_0.d), !select(vec4<bool>(true, var_0.d.x, var_2.a.x, false), vec4<bool>(false, true, true, var_2.a.x), vec4<bool>(true, var_2.a.x, false, true)), false));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<bool>) -> bool {
    let var_0 = (_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(u_input.b, u_input.b, 2757u, 10392u)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(28971u, 53627u, u_input.b, 67793u), vec4<u32>(17193u, u_input.d.x, u_input.c.x, u_input.b)) % vec4<u32>(32u)), vec4<u32>(firstTrailingBit(u_input.c.x), u_input.c.x << (u_input.c.x % 32u), u_input.d.x, max(u_input.c.x, 0u))) & func_3(global1[_wgslsmith_index_u32(0u, 23u)])) >> (countOneBits(vec4<u32>(u_input.c.x, ~(~20076u), 92082u, _wgslsmith_mod_u32(u_input.b, _wgslsmith_div_u32(32041u, u_input.d.x)))) % vec4<u32>(32u));
    var var_1 = global1[_wgslsmith_index_u32(~u_input.b, 23u)];
    var var_2 = arg_0.wwz;
    var var_3 = all(arg_1.zyx);
    var var_4 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.e.x * -1313f), _wgslsmith_div_f32(var_1.e.x, var_1.e.x))) * var_1.e.x), -1058f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.e.x, var_1.e.x), var_1.e)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-639f, 430f)), select(select(vec2<bool>(true, true), var_1.b.a.yx, arg_1.xz), select(vec2<bool>(arg_1.x, arg_1.x), arg_1.yz, vec2<bool>(false, true)), !vec2<bool>(var_1.b.a.x, true))))));
    return var_1.d.x;
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_4, arg_3: bool) -> Struct_1 {
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.b, select(~arg_2.a.x, ~u_input.c.x, arg_3 | false)), 1u);
    var var_1 = vec2<i32>(-1i, i32(-1i) * -86597i);
    let var_2 = func_2(~vec4<i32>(global3[_wgslsmith_index_u32(arg_2.a.x, 14u)], -min(-55639i, 19267i), 0i, -var_1.x), !arg_0);
    let var_3 = min(_wgslsmith_dot_vec2_i32(-vec2<i32>(~0i, 31882i), u_input.a.zy), -13579i);
    var_1 = vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_3, var_1.x)), -vec2<i32>(-56013i, -13520i)), reverseBits(u_input.a.x)), -2147483647i), global3[_wgslsmith_index_u32(countOneBits(~0u), 14u)]);
    return Struct_1(select(arg_0, select(select(select(vec4<bool>(var_2, arg_3, true, true), vec4<bool>(var_2, true, true, arg_3), true), select(vec4<bool>(arg_3, arg_3, arg_0.x, arg_3), arg_0, arg_0), arg_0), arg_0, global3[_wgslsmith_index_u32(4294967295u, 14u)] == (u_input.a.x & var_3)), func_2(-vec4<i32>(global3[_wgslsmith_index_u32(var_0, 14u)], u_input.a.x, global3[_wgslsmith_index_u32(52169u, 14u)], var_1.x), vec4<bool>(var_2, true, arg_3, u_input.a.x > u_input.a.x))), global3[_wgslsmith_index_u32(~var_0, 14u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(select(vec4<bool>(true, true, select(true, true, false), true), vec4<bool>(true, all(vec3<bool>(false, false, true)), all(vec2<bool>(false, true)), true), true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-298f, -1590f)), _wgslsmith_f_op_f32(f32(-1f) * -1523f))), Struct_4(u_input.c.yyx), false), func_1(vec4<bool>(true, global3[_wgslsmith_index_u32(max(u_input.b, u_input.d.x), 14u)] == min(30851i, global3[_wgslsmith_index_u32(u_input.b, 14u)]), select(true, true, func_1(vec4<bool>(true, false, false, false), -1975f, Struct_4(u_input.d.yyy), false).a.x), true), 103f, Struct_4(vec3<u32>(u_input.b, ~4294967295u, abs(u_input.b))), true), max(u_input.a.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(-25083i, global3[_wgslsmith_index_u32(u_input.d.x, 14u)], u_input.a.x) | u_input.a, vec3<i32>(~global3[_wgslsmith_index_u32(65386u, 14u)], u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(41162i, 4439i, 9036i, -17325i), vec4<i32>(global3[_wgslsmith_index_u32(u_input.c.x, 14u)], 1i, 2147483647i, global3[_wgslsmith_index_u32(u_input.b, 14u)]))))), func_1(!vec4<bool>(false, true, true, all(vec2<bool>(true, false))), _wgslsmith_f_op_f32(941f + 448f), Struct_4(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, 0u, u_input.d.x), vec3<u32>(4294967295u, 4294967295u, u_input.d.x))), true).a, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(321f, -131f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-180f)))), 1007f));
    var_0 = Struct_2(func_1(vec4<bool>(var_0.a.a.x, var_0.b.a.x, var_0.d.x, var_0.d.x & true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(438f * -1223f)), Struct_4(firstTrailingBit(u_input.c.wyx >> (vec3<u32>(13312u, 0u, 1u) % vec3<u32>(32u)))), !var_0.d.x), Struct_1(select(vec4<bool>(-13040i > global3[_wgslsmith_index_u32(65198u, 14u)], true, !var_0.d.x, true), vec4<bool>(all(vec3<bool>(var_0.b.a.x, var_0.d.x, true)), var_0.e.x == 1473f, var_0.b.a.x, all(vec3<bool>(var_0.b.a.x, true, var_0.a.a.x))), _wgslsmith_f_op_f32(max(-462f, 2415f)) < _wgslsmith_f_op_f32(-var_0.e.x)), u_input.a.x), ~abs(-1i), select(var_0.b.a, vec4<bool>(true, func_2(abs(vec4<i32>(global3[_wgslsmith_index_u32(0u, 14u)], u_input.a.x, global3[_wgslsmith_index_u32(38134u, 14u)], 2147483647i)), !vec4<bool>(false, true, var_0.d.x, var_0.a.a.x)), u_input.d.x <= ~0u, true), false), vec2<f32>(var_0.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.e.x)) - var_0.e.x), var_0.e.x)));
    let var_1 = vec4<bool>(var_0.d.x && !((false != var_0.b.a.x) || true), func_2(_wgslsmith_mod_vec4_i32(vec4<i32>(max(var_0.b.b, 1i), -2147483647i, ~global3[_wgslsmith_index_u32(4294967295u, 14u)], 36191i), vec4<i32>(-2147483647i, _wgslsmith_div_i32(-29216i, u_input.a.x), abs(u_input.a.x), 1i)), !(!select(var_0.a.a, vec4<bool>(true, var_0.d.x, var_0.b.a.x, true), true))), all(vec3<bool>(var_0.a.a.x, false, var_0.b.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 418f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.e.x, -774f))));
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1707f)), var_0.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e.x * var_0.e.x) - _wgslsmith_f_op_f32(step(var_0.e.x, var_0.e.x))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.e.x))) * var_0.e.x), -1338f, _wgslsmith_f_op_f32(var_0.e.x + var_0.e.x))));
    var var_3 = !var_1.x;
    let var_4 = ~(min(i32(-1i) * -12851i, 10298i) | max(var_0.c, ~_wgslsmith_mult_i32(41971i, var_0.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), var_0.e.x, 673f, _wgslsmith_f_op_f32(min(var_2.x, 2010f)))) - vec4<f32>(_wgslsmith_f_op_f32(-873f + 1006f), _wgslsmith_f_op_f32(step(486f, 258f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2271f, var_0.e.x) + _wgslsmith_f_op_f32(max(var_2.x, var_0.e.x))), _wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(floor(var_0.e.x)), var_0.b.a.x)))), ~vec2<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.c.x, u_input.b), _wgslsmith_div_u32(u_input.d.x, u_input.b)), ~0u), -1i);
}

