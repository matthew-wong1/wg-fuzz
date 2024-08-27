struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: u32,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19>;

var<private> global1: f32 = -1724f;

var<private> global2: Struct_3;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: u32, arg_3: vec2<i32>) -> u32 {
    var var_0 = vec4<u32>(arg_2, arg_2 | _wgslsmith_clamp_u32(min(abs(arg_2), 0u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(98748u, 54389u), vec2<u32>(arg_2, 19180u)), arg_2), _wgslsmith_mult_u32(select(6436u, ~0u, !any(vec4<bool>(true, true, true, global2.c.x))), ~arg_2), arg_2);
    global0 = array<i32, 19>();
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1754f))), arg_0.x, _wgslsmith_f_op_f32(1193f - _wgslsmith_f_op_f32(f32(-1f) * -915f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0))))), _wgslsmith_sub_vec3_i32(~u_input.a, global2.b), !vec3<bool>(global2.c.x, false, true));
    global0 = array<i32, 19>();
    global2 = var_1;
    return ~(max(0u, _wgslsmith_mult_u32(arg_2, 1u)) ^ countOneBits(_wgslsmith_sub_u32(4294967295u, arg_2))) ^ arg_2;
}

fn func_2() -> f32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.x, global2.a.x, global2.a.x) * global2.a))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(global2.a + global2.a))))), vec3<i32>(global2.b.x, 11755i, ~1i), !global2.c);
    let var_1 = vec2<i32>(0i, _wgslsmith_div_i32(32809i, 512i));
    let var_2 = Struct_1(~vec2<u32>(~(~4294967295u), _wgslsmith_div_u32(func_3(global2.a, vec3<f32>(-1074f, -1782f, 1000f), 46950u, var_1), 50408u)), select(vec3<bool>(!global2.c.x && global2.c.x, var_0.c.x, any(vec3<bool>(global2.c.x, false, var_0.c.x))), !vec3<bool>(!var_0.c.x, true, var_0.c.x || true), select(all(select(global2.c, vec3<bool>(false, var_0.c.x, global2.c.x), global2.c.x)), !all(vec4<bool>(true, true, global2.c.x, var_0.c.x)), global2.c.x)), _wgslsmith_mult_u32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1776f, global2.a.x, global2.a.x)), vec3<f32>(_wgslsmith_f_op_f32(step(global2.a.x, global2.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -789f), _wgslsmith_f_op_f32(-184f - global2.a.x)), func_3(vec3<f32>(2403f, 1641f, var_0.a.x), vec3<f32>(1000f, 212f, global2.a.x), 19789u, vec2<i32>(-10334i, 4356i)), vec2<i32>(abs(u_input.d.x), _wgslsmith_mod_i32(global2.b.x, global0[_wgslsmith_index_u32(4294967295u, 19u)]))), 1u), false, vec3<u32>(1u, 1u, 1u));
    global2 = Struct_3(var_0.a, global2.b, select(vec3<bool>(select(any(vec4<bool>(false, true, var_0.c.x, false)), var_0.c.x, !var_2.b.x), !(var_2.c == var_2.c), any(!var_0.c.xx)), global2.c, all(select(var_2.b.yx, vec2<bool>(false, global2.c.x), var_2.b.x)) & !(!var_0.c.x)));
    global0 = array<i32, 19>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-741f - global2.a.x) * var_0.a.x);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3, arg_2: i32, arg_3: u32) -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1622f, arg_1.a.x))), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f)))))), global2.b, global2.c);
    global0 = array<i32, 19>();
    let var_1 = Struct_2(abs(abs(global2.b)), ~(~vec2<u32>(arg_3, 4294967295u >> (arg_3 % 32u))));
    global1 = -1792f;
    let var_2 = Struct_2(_wgslsmith_add_vec3_i32(vec3<i32>(-global0[_wgslsmith_index_u32(1u, 19u)] & ~(-7206i), abs(_wgslsmith_mod_i32(-1i, 2147483647i)), 0i), arg_1.b), _wgslsmith_clamp_vec2_u32(var_1.b, ~(vec2<u32>(var_1.b.x, 4294967295u) & firstLeadingBit(vec2<u32>(0u, var_1.b.x))), vec2<u32>(~select(arg_3, var_1.b.x, global2.c.x), _wgslsmith_mod_u32(1u, arg_3))));
    return var_1;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec4<f32>, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = arg_0;
    global0 = array<i32, 19>();
    let var_1 = !select(!vec4<bool>(!arg_1, arg_1, arg_1 | global2.c.x, global2.c.x || global2.c.x), select(vec4<bool>(true, !global2.c.x, !arg_1, all(vec2<bool>(false, arg_1))), !(!vec4<bool>(global2.c.x, true, false, false)), vec4<bool>(true, 7969u < arg_0.b.x, any(vec4<bool>(false, arg_1, global2.c.x, false)), true)), vec4<bool>(false, all(vec2<bool>(global2.c.x, arg_1)), _wgslsmith_add_i32(global2.b.x, global2.b.x) < ~(-18120i), !(!arg_1)));
    let var_2 = false;
    global0 = array<i32, 19>();
    return func_1(Struct_2(min(_wgslsmith_div_vec3_i32(arg_0.a, vec3<i32>(global2.b.x, 1i, var_0.a.x) >> (vec3<u32>(0u, arg_0.b.x, 1u) % vec3<u32>(32u))), var_0.a & abs(arg_3.yxw)), arg_0.b), Struct_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1741f, 392f, arg_2.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(959f, arg_2.x, 732f))))), ~min(u_input.a, _wgslsmith_div_vec3_i32(arg_0.a, vec3<i32>(-8593i, -1i, global0[_wgslsmith_index_u32(4294967295u, 19u)]))), global2.c), arg_0.a.x, firstTrailingBit(countOneBits(var_0.b.x)));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.a * vec3<f32>(global2.a.x, global2.a.x, global2.a.x))), vec3<f32>(1760f, _wgslsmith_f_op_f32(423f - 1000f), -1093f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1969f, 973f, global2.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-797f, global2.a.x, global2.a.x)))))), u_input.a, vec3<bool>(select(false, 1f == _wgslsmith_f_op_f32(-global2.a.x), true), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)) == global2.a.x));
    let var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2306f), _wgslsmith_f_op_f32(-var_0.a.x), 125f), firstTrailingBit(countOneBits(-(arg_0.a << (vec3<u32>(86130u, 1u, arg_0.b.x) % vec3<u32>(32u))))), select(vec3<bool>(any(vec3<bool>(true, global2.c.x, global2.c.x)), true || all(vec3<bool>(global2.c.x, false, true)), false), global2.c, var_0.c));
    var var_2 = 7614i;
    global2 = var_1;
    var var_3 = 23885u;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(func_1(Struct_2(-global2.b, max(vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 4294967295u))), Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, global2.a.x, global2.a.x)), global2.b, select(global2.c, global2.c, global2.c)), _wgslsmith_add_i32(global0[_wgslsmith_index_u32(~4294967295u, 19u)], u_input.d.x), 4294967295u), firstLeadingBit(-2147483647i) <= global2.b.x, vec4<f32>(510f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(280f * 990f))), _wgslsmith_f_op_f32(abs(-2081f)), global2.a.x), -(_wgslsmith_mod_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(1u, 19u)], 0i, global0[_wgslsmith_index_u32(1u, 19u)], -28074i), vec4<i32>(0i, global0[_wgslsmith_index_u32(1u, 19u)], 0i, -14936i)) | (vec4<i32>(2147483647i, 1i, global2.b.x, global0[_wgslsmith_index_u32(0u, 19u)]) >> (vec4<u32>(23591u, 0u, 1u, 0u) % vec4<u32>(32u))))));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -2049f);
    var_0 = func_1(Struct_2(global2.b, ~var_0.b), Struct_3(vec3<f32>(_wgslsmith_f_op_f32(abs(global2.a.x)), global2.a.x, global2.a.x), var_0.a, !select(vec3<bool>(true, global2.c.x, global2.c.x), vec3<bool>(global2.c.x, global2.c.x, global2.c.x), true)), reverseBits(select(-40243i, abs(u_input.a.x), global2.a.x != 1000f)) << (~84159u % 32u), 32514u);
    let var_1 = true;
    let var_2 = Struct_1(~_wgslsmith_sub_vec2_u32(var_0.b, var_0.b), select(vec3<bool>(true, true, false), select(global2.c, vec3<bool>(var_1, global2.c.x, var_1 && global2.c.x), all(global2.c)), vec3<bool>(var_1, select(true, !var_1, 80051u > var_0.b.x), true)), select(44420u, var_0.b.x, (!var_1 & global2.c.x) && false), false, max(~(~vec3<u32>(var_0.b.x, 1u, var_0.b.x)), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 45249u, var_0.b.x), vec3<u32>(var_0.b.x, var_0.b.x, 28353u)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, var_0.b.x, 65409u), vec3<u32>(var_0.b.x, var_0.b.x, 56620u)))) ^ reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.b.x, 4294967295u, 0u), firstTrailingBit(vec3<u32>(var_0.b.x, 52753u, var_0.b.x)))));
    global2 = Struct_3(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -487f)), global2.a.x, -1000f), _wgslsmith_f_op_vec3_f32(global2.a - global2.a))), u_input.a, !vec3<bool>(false || !global2.c.x, false, global2.c.x));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -487f))))));
    var_0 = Struct_2(~select(~vec3<i32>(1i, global2.b.x, var_0.a.x), ~var_0.a, countOneBits(u_input.a.x) < 0i), var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(var_2.c, 1u, var_2.a.x), vec3<u32>(firstTrailingBit(var_2.c), abs(4294967295u), 28676u)), ~var_2.e), vec2<f32>(_wgslsmith_f_op_f32(func_2()), -791f), ~var_2.a.x, reverseBits(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(66303u, 4294967295u, 4294967295u, 60220u) ^ vec4<u32>(var_0.b.x, var_0.b.x, 21555u, 4294967295u), vec4<u32>(4294967295u, var_2.a.x, 46724u, var_0.b.x) ^ vec4<u32>(4173u, var_0.b.x, var_2.c, var_0.b.x)), vec4<u32>(~var_0.b.x, var_0.b.x, ~var_0.b.x, countOneBits(var_0.b.x)), select(~vec4<u32>(var_2.a.x, var_2.c, var_0.b.x, 11650u), max(vec4<u32>(var_0.b.x, var_0.b.x, 61798u, var_0.b.x), vec4<u32>(var_2.a.x, var_2.a.x, var_2.c, var_2.e.x)), !vec4<bool>(false, false, var_1, var_1)))));
}

