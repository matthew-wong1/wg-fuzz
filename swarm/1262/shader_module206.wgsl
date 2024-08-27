struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<u32>,
    d: Struct_2,
    e: vec2<bool>,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(-237f, 701f, -402f), vec2<f32>(-386f, -711f), -1239f, true);

var<private> global1: vec2<u32>;

var<private> global2: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false));

var<private> global3: Struct_4;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: vec4<i32>, arg_3: Struct_4) -> bool {
    var var_0 = global3.d.b;
    let var_1 = -9410i;
    var var_2 = firstLeadingBit(vec4<u32>(~abs(24736u), global1.x, ~(~(~arg_3.c.x)), global3.c.x));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.b.c.a) * var_0.a), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(288f * -1909f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.c, 647f)), _wgslsmith_f_op_f32(global0.a.x - arg_3.a.c)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.b.x) * 2604f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1034f + _wgslsmith_f_op_f32(-104f * global3.a.a.x))))), all(select(!global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(24134u, 3398u, var_2.x), 3u)], !select(global2[_wgslsmith_index_u32(arg_3.c.x, 3u)], global2[_wgslsmith_index_u32(12096u, 3u)], false), any(!vec4<bool>(var_0.d, global0.d, arg_0, arg_3.d.d.d)))));
    global2 = array<vec4<bool>, 3>();
    return (~_wgslsmith_mult_u32(reverseBits(74758u), 1u) & _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(5845u, 20044u, 1u, arg_3.c.x), vec4<u32>(var_2.x, 1u, 4294967295u, arg_3.c.x)) & ~vec4<u32>(6061u, u_input.c, global3.c.x, global3.c.x), countOneBits(~vec4<u32>(4294967295u, 0u, arg_3.c.x, var_2.x)))) != (21354u & (1u & firstTrailingBit(var_2.x)));
}

fn func_2() -> Struct_4 {
    global1 = firstTrailingBit(vec2<u32>(~global3.c.x, ~abs(52220u)));
    let var_0 = global0.a.x;
    let var_1 = global3.a.a.yz;
    global2 = array<vec4<bool>, 3>();
    let var_2 = global3.b;
    return Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.d.c, var_1.x, global3.b.c.a.x) + vec3<f32>(-1321f, -1000f, 134f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.b - vec2<f32>(var_2.d.a.x, -306f))))), -370f, true), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 570f, var_2.c.c) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.d.a.x, -1000f, global0.a.x) - global0.a)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2359f, global0.c))), var_1.x, func_3(1000f == var_2.a.a.x, vec3<i32>(1301i, var_2.e, global3.b.e), vec4<i32>(42283i, var_2.e, 6188i, -1i), Struct_4(Struct_1(global0.a, var_2.d.a.zy, var_1.x, true), Struct_2(global3.d.d, var_2.c, Struct_1(var_2.c.a, var_2.a.b, -628f, var_2.a.d), Struct_1(global0.a, vec2<f32>(var_2.d.a.x, var_2.a.b.x), var_2.d.a.x, global3.a.d), var_2.e), vec2<u32>(1u, 4294967295u), Struct_2(Struct_1(var_2.c.a, vec2<f32>(-1175f, global0.c), var_1.x, true), global3.d.a, global3.d.a, Struct_1(global0.a, vec2<f32>(var_1.x, 912f), 151f, global0.d), global3.d.e), vec2<bool>(var_2.d.d, true)))), global3.a, Struct_1(vec3<f32>(var_2.a.a.x, var_2.c.c, _wgslsmith_f_op_f32(-1000f + -788f)), vec2<f32>(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(-var_2.a.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.x)) * 1054f), false), Struct_1(var_2.b.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.a.a.yz)), global3.d.d.a.x, var_2.c.d), var_2.e), global3.c, Struct_2(global3.d.b, Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.d.c, -1351f, 260f))), global0.b, 867f, -671f == _wgslsmith_f_op_f32(791f - global0.b.x)), global3.a, global3.a, 1i), !global3.e);
}

fn func_1() -> vec4<u32> {
    global0 = global3.d.c;
    global3 = func_2();
    var var_0 = _wgslsmith_f_op_f32(step(global0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1438f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global0.b.x, -124f)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, -457f, global0.c, -1000f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-586f, -1044f, 318f, global0.a.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-755f, global3.a.c, 369f, global3.a.b.x))));
    global0 = func_2().a;
    return (min(_wgslsmith_sub_vec4_u32(max(vec4<u32>(global1.x, global3.c.x, 46772u, u_input.c), vec4<u32>(33307u, u_input.c, 109284u, global1.x)), select(vec4<u32>(1u, global3.c.x, u_input.c, global1.x), vec4<u32>(global1.x, global1.x, global3.c.x, global3.c.x), global0.d)), select(~vec4<u32>(global1.x, global3.c.x, 696u, 35800u), vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c) >> (vec4<u32>(11086u, 1u, 34931u, global1.x) % vec4<u32>(32u)), select(global2[_wgslsmith_index_u32(24920u, 3u)], vec4<bool>(global3.d.b.d, global3.d.a.d, true, global0.d), true))) >> (select(~(~vec4<u32>(global3.c.x, u_input.c, 54784u, u_input.c)), _wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, u_input.c, global1.x, global1.x), ~vec4<u32>(global3.c.x, 27169u, 0u, 28007u)), vec4<bool>(false, true, global0.d | false, global3.e.x)) % vec4<u32>(32u))) >> (vec4<u32>(31149u, ~global3.c.x, 1u, global3.c.x) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_u32(~(~vec4<u32>(global1.x, global3.c.x, 4294967295u, u_input.c)), ~func_1()) & ~_wgslsmith_div_u32(~1u, ~global3.c.x >> (121635u % 32u));
    let var_1 = -vec4<i32>(global3.b.e, 0i, min(abs(global3.b.e), 0i), global3.b.e);
    var var_2 = abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(i32(-1i) * -var_1.x, _wgslsmith_clamp_i32(0i, var_1.x, reverseBits(-2147483647i)), _wgslsmith_add_i32(~48670i, 0i)), _wgslsmith_mod_vec3_i32(-vec3<i32>(global3.b.e, -1i, u_input.a.x) << ((vec3<u32>(10932u, global1.x, 0u) & vec3<u32>(global3.c.x, u_input.c, global3.c.x)) % vec3<u32>(32u)), abs(-vec3<i32>(-2147483647i, 1i, -19390i))), ~(u_input.a << (~vec3<u32>(0u, 4294967295u, 1u) % vec3<u32>(32u)))));
    var var_3 = _wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, ~(~global1.x << (firstLeadingBit(65264u) % 32u)), u_input.c, global3.c.x), vec4<u32>(u_input.c, ~_wgslsmith_sub_u32(0u & global3.c.x, 0u), global3.c.x, 1u));
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, vec2<i32>(var_1.x, ~(-2147483647i)));
}

