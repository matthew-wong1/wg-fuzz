struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(503f, 1000f, -363f, -1250f);

var<private> global1: Struct_2;

var<private> global2: Struct_2;

var<private> global3: array<bool, 16> = array<bool, 16>(false, true, false, false, true, false, true, true, true, false, false, true, false, true, false, true);

var<private> global4: array<Struct_4, 32>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec3<u32>) -> vec3<bool> {
    let var_0 = arg_0;
    let var_1 = Struct_2(global1.c.c, vec3<bool>(93874u < _wgslsmith_sub_u32(~arg_3.x, global1.d.x), all(!(!vec4<bool>(false, var_0.a, arg_2.c.a.x, global2.b.x))), any(vec2<bool>(arg_2.c.c > arg_1.x, true))), Struct_1(global1.c.a, min(1u, global1.c.b | u_input.b.x), arg_2.a), _wgslsmith_div_vec3_u32(vec3<u32>(~75719u, 4294967295u, arg_3.x << (0u % 32u)) << (arg_2.d % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(~_wgslsmith_add_vec3_u32(global1.d, vec3<u32>(4294967295u, 40095u, global2.d.x)), firstLeadingBit(~arg_3))));
    var var_2 = firstLeadingBit(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(arg_0.b.x, arg_0.b.x, 2147483647i) | firstLeadingBit(vec3<i32>(arg_0.b.x, 14303i, -41401i))), reverseBits(~vec3<i32>(var_0.b.x, 2147483647i, 26929i)), ~vec3<i32>(var_0.b.x, 1i, arg_0.b.x & 2816i)));
    let var_3 = Struct_4(Struct_2(_wgslsmith_f_op_f32(exp2(arg_0.c.x)), global2.b, arg_2.c, ~(arg_3 | _wgslsmith_div_vec3_u32(global1.d, arg_3))));
    let var_4 = arg_0;
    return select(vec3<bool>(global2.c.a.x, true, arg_2.c.a.x), select(vec3<bool>(var_4.a, (global2.c.c == -1088f) | true, any(vec4<bool>(true, false, var_1.b.x, global3[_wgslsmith_index_u32(arg_3.x, 16u)]))), select(select(var_1.b, select(vec3<bool>(var_3.a.c.a.x, arg_0.a, false), global2.b, var_3.a.c.a.x), vec3<bool>(global1.c.a.x, true, true)), vec3<bool>(select(arg_0.a, arg_2.c.a.x, false), var_3.a.b.x & true, var_1.b.x), var_3.a.c.a.x), !global1.c.a.x), !global2.c.a.x);
}

fn func_2() -> Struct_4 {
    var var_0 = 1000f;
    global1 = Struct_2(_wgslsmith_f_op_f32(trunc(global0.x)), !func_3(Struct_3(global1.b.x && true, firstTrailingBit(vec2<i32>(12839i, 22074i)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(2155f, -197f, global0.x))), _wgslsmith_f_op_f32(trunc(global2.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.c, 243f, 896f, -518f) * vec4<f32>(global1.a, 410f, 145f, -784f)) - vec4<f32>(-915f, global0.x, -776f, -1650f)), Struct_2(927f, vec3<bool>(global1.c.a.x, true, true), global2.c, vec3<u32>(u_input.a, global2.d.x, u_input.a)), vec3<u32>(global2.c.b, global2.c.b << (u_input.b.x % 32u), u_input.c.x)), global1.c, global2.d);
    global3 = array<bool, 16>();
    global4 = array<Struct_4, 32>();
    var var_1 = vec3<u32>(global1.d.x, global2.c.b, global1.d.x);
    return global4[_wgslsmith_index_u32((countOneBits(1u) << ((_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.x, 23348u, u_input.a), vec3<u32>(u_input.b.x, var_1.x, global1.c.b)), min(global1.d, u_input.b.zxz)) >> (_wgslsmith_add_u32(abs(20990u), 1u) % 32u)) % 32u)) ^ 1u, 32u)];
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_4) -> Struct_2 {
    let var_0 = ~_wgslsmith_div_i32(~(-54323i), 69016i) >> (global1.c.b % 32u);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(trunc(global2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - 1173f)), -317f);
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -371f) - global2.c.c) + global0.x)));
    let var_3 = arg_2.a.b;
    var var_4 = !vec4<bool>(true == global2.b.x, false, arg_2.a.c.a.x, true);
    return arg_2.a;
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: vec3<bool>) -> StorageBuffer {
    let var_0 = func_4(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(~global1.d.x, 102762u), arg_1.x, abs(~2491u)), ~(~(~0u)), ~min(global1.c.b, arg_1.x)), all(!select(vec2<bool>(false, global1.c.a.x), !vec2<bool>(global1.b.x, false), global3[_wgslsmith_index_u32(4294967295u, 16u)])), func_2());
    global2 = Struct_2(376f, vec3<bool>(true, var_0.c.a.x, !global3[_wgslsmith_index_u32(~(~var_0.d.x), 16u)]), Struct_1(!vec3<bool>(select(false, false, arg_2.x), true, var_0.b.x), ~1u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1000f))))))), vec3<u32>(var_0.c.b, firstLeadingBit(_wgslsmith_clamp_u32(0u & global2.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.d.x, 1u, arg_1.x, var_0.c.b), u_input.b), min(4294967295u, arg_1.x))), 96482u));
    var var_1 = Struct_3(!func_4(min(global1.d, ~global1.d), true, func_2()).c.a.x, _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(~(~vec2<i32>(arg_0, arg_0)), vec2<i32>(select(arg_0, -2147483647i, true), i32(-1i) * -6811i)), ~firstLeadingBit(vec2<i32>(-828i, arg_0))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(200f, 1459f, var_0.a) - global0.yzy)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1104f, global0.x, -1000f) * global0.wwx)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2560f, global1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global2.a, -1296f)), global2.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(625f, global1.a, -1228f, -628f) - vec4<f32>(global0.x, 1000f, global1.a, global2.a))))), vec3<u32>(1u, arg_1.x, 98641u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(2147483647i, vec3<u32>(~abs(~u_input.c.x), global1.c.b & global1.c.b, 0u), vec3<bool>(!any(global2.c.a.yz), (_wgslsmith_f_op_f32(select(global0.x, global0.x, true)) <= _wgslsmith_f_op_f32(floor(global2.c.c))) & all(select(global1.b, global2.b, global1.b)), !(global1.a <= -1841f)));
}

