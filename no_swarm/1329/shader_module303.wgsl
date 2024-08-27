struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_2;

var<private> global2: i32 = 1i;

var<private> global3: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_2) -> vec2<i32> {
    var var_0 = countOneBits(~global1.a.zz);
    let var_1 = arg_2;
    var var_2 = Struct_1(global1.c.x);
    let var_3 = Struct_1(var_2.a);
    var var_4 = !arg_1;
    return select(reverseBits(abs(vec2<i32>(-1i) * -vec2<i32>(arg_0, -1i))), (_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, arg_0), vec2<i32>(arg_0, arg_0)), vec2<i32>(u_input.a, u_input.a) | vec2<i32>(arg_0, 1i)) & abs(vec2<i32>(u_input.a, 0i) ^ vec2<i32>(-12383i, arg_0))) >> ((vec2<u32>(3487u, 1u) << (max(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 18914u), vec2<u32>(var_0.x, 33926u)), firstLeadingBit(vec2<u32>(var_1.d.x, var_0.x))) % vec2<u32>(32u))) % vec2<u32>(32u)), false);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: Struct_2) -> vec3<i32> {
    var var_0 = any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, global1.d.x == 4294967295u, any(vec2<bool>(true, false))), _wgslsmith_f_op_f32(max(global1.c.x, arg_2.c.x)) == _wgslsmith_f_op_f32(-arg_2.b.x)), vec3<bool>((u_input.b.x <= 46848u) && any(vec2<bool>(false, false)), true, select(true, false, true)), vec3<bool>(true, true, true)));
    let var_1 = vec2<bool>(!all(vec2<bool>(true, true)), true);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2.c.x, global1.b.x, global1.c.x, -481f), vec4<f32>(-282f, global1.b.x, 3098f, -1000f)))) * vec4<f32>(global1.b.x, _wgslsmith_f_op_f32(sign(-1261f)), _wgslsmith_f_op_f32(sign(arg_2.b.x)), global1.b.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1661f, 1000f, -123f, arg_2.c.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(626f, 200f, -201f, -742f) + vec4<f32>(463f, -1265f, global1.b.x, arg_2.c.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.c.x), arg_2.c.x, 177f, _wgslsmith_div_f32(global1.b.x, arg_2.b.x)) - vec4<f32>(1000f, -1730f, _wgslsmith_f_op_f32(sign(global1.b.x)), _wgslsmith_f_op_f32(-global1.b.x)))));
    let var_3 = Struct_2(vec3<u32>(~global1.d.x, ~(~(~arg_2.d.x)), reverseBits(0u)), global1.b, _wgslsmith_f_op_vec2_f32(-var_2.zy), _wgslsmith_add_vec4_u32(vec4<u32>(max(firstTrailingBit(global1.d.x), _wgslsmith_mod_u32(arg_2.a.x, 1u)), ~42322u, ~_wgslsmith_mod_u32(4294967295u, global1.d.x), 33783u), firstTrailingBit(select(select(vec4<u32>(arg_2.d.x, global1.a.x, 4294967295u, 51841u), vec4<u32>(u_input.b.x, u_input.b.x, global1.d.x, arg_2.d.x), global3[_wgslsmith_index_u32(global1.d.x, 2u)]), vec4<u32>(u_input.b.x, u_input.b.x, global1.a.x, arg_2.d.x), !var_1.x))));
    global1 = var_3;
    return vec3<i32>(-55363i, arg_1.x, arg_0.x);
}

fn func_2(arg_0: u32, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(max(1021f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-731f + -221f)))));
    global1 = Struct_2(_wgslsmith_div_vec3_u32(global1.a, firstLeadingBit(vec3<u32>(global1.a.x, 0u, 1u) >> (global1.a % vec3<u32>(32u)))) >> (vec3<u32>(0u, firstLeadingBit(abs(29337u)), 0u) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), -406f, var_0.a)), _wgslsmith_f_op_vec2_f32(global1.c * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.c + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1037f, -1000f))))), global1.d);
    global2 = -2147483647i;
    let var_1 = _wgslsmith_div_f32(809f, -450f);
    let var_2 = func_4(func_3(~countOneBits(1i), vec4<bool>(true, true, true, true), Struct_2(_wgslsmith_mod_vec3_u32(vec3<u32>(32700u, arg_0, global1.a.x), global1.d.wzz), global1.b, _wgslsmith_div_vec2_f32(vec2<f32>(-1504f, -418f), vec2<f32>(1055f, -608f)), ~vec4<u32>(4294967295u, u_input.b.x, 1u, 48947u))), abs(firstTrailingBit(vec4<i32>(arg_1, 22719i, u_input.a, arg_1))), Struct_2(_wgslsmith_mod_vec3_u32(abs(global1.a), ~vec3<u32>(global1.d.x, 9624u, u_input.b.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global1.b))), vec2<f32>(var_1, 939f), ~_wgslsmith_mult_vec4_u32(global1.d, global1.d))) << (abs(vec3<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b, global1.a.yx), global1.d.x)) % vec3<u32>(32u));
    return Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-583f)), 1f)) + -301f))));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = func_2(~_wgslsmith_mult_u32(~max(32931u, 1u), ~firstLeadingBit(u_input.b.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 0i, arg_0.x), _wgslsmith_clamp_vec3_i32(arg_0.xzz, _wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a, arg_0.x, 1i)), arg_0.zxx), arg_0.wwy)));
    return Struct_2(~(~global1.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-915f, global1.c.x)) + _wgslsmith_f_op_f32(round(491f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-725f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1.b.x, 374f, true)), _wgslsmith_div_f32(-145f, var_0.a)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.c - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, -362f) * arg_1.c)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.b.x, -1000f), vec2<f32>(arg_1.c.x, arg_1.c.x)), _wgslsmith_f_op_vec2_f32(-arg_1.c)))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c.x, -1840f) * _wgslsmith_f_op_f32(arg_1.b.x * -1000f)), 1000f)), global1.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~16890i;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.c.x))));
    var var_2 = func_1(vec4<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(2715i, u_input.a, 2147483647i), vec3<i32>(-1i, var_0, var_0)), u_input.a, max(~_wgslsmith_sub_i32(u_input.a, 10129i), _wgslsmith_dot_vec3_i32(-vec3<i32>(var_0, u_input.a, u_input.a), vec3<i32>(var_0, -780i, 30885i) & vec3<i32>(-1i, var_0, 23756i))), var_0), Struct_2(vec3<u32>(countOneBits(~71164u), _wgslsmith_mod_u32(4294967295u, global1.a.x), _wgslsmith_dot_vec2_u32(u_input.b, ~vec2<u32>(u_input.b.x, u_input.b.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-491f * global1.c.x), -422f, _wgslsmith_div_f32(global1.c.x, -686f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(502f, global1.c.x, global1.b.x)) - _wgslsmith_div_vec3_f32(global1.b, vec3<f32>(var_1.a, var_1.a, 2061f)))), vec2<f32>(-1577f, -955f), global1.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(176f, var_2.c.x), global1.b.x, 1000f)), global1.b), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 1i, -13723i), vec3<i32>(u_input.a, u_input.a, var_0)), countOneBits(vec3<i32>(u_input.a, -59368i, var_0)))), ~vec2<i32>(u_input.a, 1i) & (func_4(vec2<i32>(1i, 11751i), vec4<i32>(0i, u_input.a, var_0, -16975i), Struct_2(var_2.a, var_2.b, var_2.c, var_2.d)).xz << (vec2<u32>(34303u, 22024u) % vec2<u32>(32u)))), ~var_2.d, var_1.a);
}

