struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: i32,
    d: Struct_4,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_4(Struct_1(vec4<u32>(1u, 5493u, 95598u, 4294967295u)), Struct_2(Struct_1(vec4<u32>(1u, 0u, 4294967295u, 1u))), vec3<u32>(2695u, 72420u, 0u)), Struct_4(Struct_1(vec4<u32>(4294967295u, 10151u, 1u, 0u)), Struct_2(Struct_1(vec4<u32>(0u, 1u, 0u, 47885u))), vec3<u32>(41521u, 4294967295u, 4294967295u)), 14485i, Struct_4(Struct_1(vec4<u32>(0u, 1u, 1u, 20940u)), Struct_2(Struct_1(vec4<u32>(0u, 10273u, 0u, 1u))), vec3<u32>(1u, 20106u, 41478u)), vec4<u32>(32126u, 4294967295u, 21488u, 74666u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec2<bool> {
    global0 = Struct_5(Struct_4(global0.a.a, global0.d.b, _wgslsmith_sub_vec3_u32(global0.e.wwy, abs(~global0.d.c))), global0.b, _wgslsmith_mult_i32(min(i32(-1i) * -global0.c, 17723i), global0.c), global0.b, ~(global0.e | firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(global0.a.b.a.a.x, 4294967295u, 4294967295u, global0.a.b.a.a.x), vec4<u32>(global0.d.a.a.x, global0.e.x, global0.e.x, global0.d.c.x)))));
    var var_0 = global0.b.a.a.x;
    global0 = Struct_5(global0.d, global0.b, i32(-1i) * -1i, global0.d, ~vec4<u32>(~4294967295u, _wgslsmith_mod_u32(_wgslsmith_add_u32(37000u, global0.e.x), global0.e.x), ~(global0.e.x << (12573u % 32u)), abs(~1u)));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-721f, _wgslsmith_f_op_f32(round(-418f)), true)) - _wgslsmith_f_op_f32(f32(-1f) * -118f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1063f)))), _wgslsmith_f_op_f32(trunc(-1047f))));
    let var_2 = vec3<bool>((global0.b.a.a.x == _wgslsmith_clamp_u32(0u, ~34874u, global0.d.c.x ^ 1u)) & true, true, ~_wgslsmith_add_u32(~37516u, global0.a.c.x) < 0u);
    return vec2<bool>(var_2.x & true, 508f == var_1);
}

fn func_2(arg_0: bool) -> Struct_5 {
    var var_0 = Struct_3(global0.b.b.a, select(vec2<bool>(!(!arg_0), arg_0), func_3(), all(vec2<bool>(true, true && arg_0))), Struct_1(~(~global0.a.a.a)));
    var_0 = Struct_3(global0.d.a, !(!select(var_0.b, var_0.b, var_0.b.x | false)), global0.a.b.a);
    var_0 = Struct_3(global0.b.a, !(!(!(!vec2<bool>(arg_0, false)))), Struct_1(global0.d.b.a.a));
    global0 = Struct_5(global0.b, Struct_4(global0.d.b.a, global0.d.b, ~firstTrailingBit(~vec3<u32>(62703u, 4294967295u, var_0.a.a.x))), ~13137i & global0.c, Struct_4(var_0.c, global0.b.b, ~(~vec3<u32>(22032u, 0u, global0.e.x))), _wgslsmith_sub_vec4_u32(global0.a.b.a.a, vec4<u32>(countOneBits(~var_0.a.a.x), global0.b.a.a.x, 70871u, var_0.c.a.x)));
    let var_1 = u_input.a.x;
    return Struct_5(global0.d, global0.a, global0.c, Struct_4(var_0.c, Struct_2(var_0.c), var_0.c.a.zwy), ~var_0.c.a);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: i32) -> Struct_1 {
    global0 = func_2(true);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.x - -1000f))));
    var var_1 = global0.d.b;
    global0 = func_2(true);
    let var_2 = firstLeadingBit(22814u) ^ ((var_1.a.a.x ^ var_1.a.a.x) ^ 26683u);
    return Struct_1(_wgslsmith_div_vec4_u32(~_wgslsmith_sub_vec4_u32(var_1.a.a, ~vec4<u32>(4294967295u, 54565u, 1u, 26241u)), abs(~_wgslsmith_add_vec4_u32(vec4<u32>(32909u, 4294967295u, 76061u, global0.a.a.a.x), vec4<u32>(global0.d.c.x, global0.d.b.a.a.x, var_1.a.a.x, global0.a.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_5(global0.b, Struct_4(Struct_1(vec4<u32>(7700u, _wgslsmith_add_u32(32289u, 3831u), _wgslsmith_sub_u32(global0.a.a.a.x, global0.d.a.a.x), abs(1u))), Struct_2(func_1(vec4<bool>(true, true, true, true), vec2<f32>(-313f, -565f), 1i)), global0.a.c & max(vec3<u32>(global0.e.x, 32093u, global0.d.c.x), ~vec3<u32>(global0.e.x, 4294967295u, global0.d.b.a.a.x))), 14417i, Struct_4(func_2(false).a.a, global0.a.b, _wgslsmith_add_vec3_u32(abs(global0.a.b.a.a.yzz), global0.d.c)), vec4<u32>(1u << (~global0.d.c.x % 32u), ~(~1u), ~global0.a.a.a.x, 4294967295u));
    global0 = func_2(all(vec3<bool>(true, true, true)) == (global0.e.x >= global0.d.c.x));
    var var_0 = -select(countOneBits(~_wgslsmith_dot_vec3_i32(u_input.d.zxw, vec3<i32>(u_input.a.x, 2147483647i, global0.c))), _wgslsmith_clamp_i32(u_input.d.x, _wgslsmith_div_i32(-910i, abs(global0.c)), -_wgslsmith_div_i32(global0.c, u_input.b.x)), (any(vec2<bool>(false, false)) != false) | !all(vec3<bool>(false, true, true)));
    let var_1 = Struct_3(Struct_1(_wgslsmith_add_vec4_u32(abs(vec4<u32>(1u, global0.d.b.a.a.x, global0.b.c.x, 4294967295u)), vec4<u32>(4294967295u, global0.a.b.a.a.x, 28000u, 1u))), select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(all(vec2<bool>(true, false)), true), vec2<bool>(u_input.c.x < global0.c, true)), vec2<bool>(true, true), vec2<bool>(true, true)), func_2(true).d.a);
    var var_2 = select(select(vec3<bool>(false, any(!vec2<bool>(var_1.b.x, var_1.b.x)), all(select(vec4<bool>(var_1.b.x, var_1.b.x, true, var_1.b.x), vec4<bool>(var_1.b.x, var_1.b.x, true, false), var_1.b.x))), select(!select(vec3<bool>(var_1.b.x, false, var_1.b.x), vec3<bool>(false, var_1.b.x, false), vec3<bool>(true, var_1.b.x, var_1.b.x)), !select(vec3<bool>(var_1.b.x, true, var_1.b.x), vec3<bool>(true, var_1.b.x, true), false), select(global0.a.c.x >= var_1.a.a.x, any(vec4<bool>(var_1.b.x, true, var_1.b.x, false)), var_1.b.x)), vec3<bool>(abs(u_input.a.x) < -2147483647i, true, any(vec4<bool>(var_1.b.x, true, var_1.b.x, true)) & (var_1.b.x | var_1.b.x))), vec3<bool>(!var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-164f))) < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-787f, 506f)))), all(vec3<bool>(all(vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x)), true, all(vec3<bool>(var_1.b.x, true, var_1.b.x))))), vec3<bool>(!var_1.b.x, true, firstTrailingBit(1i) == max(global0.c, -4474i)));
    let var_3 = vec4<u32>(12865u, ~_wgslsmith_mult_u32(var_1.a.a.x, ~67878u), _wgslsmith_mult_u32(~22506u, 0u), 4294967295u);
    var var_4 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1470f, 543f)))))));
    var_2 = !select(select(!vec3<bool>(false, var_1.b.x, false), vec3<bool>(true, true, true), !all(vec3<bool>(true, var_1.b.x, true))), select(select(select(vec3<bool>(var_1.b.x, var_1.b.x, true), vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(var_1.b.x, var_1.b.x, var_2.x)), vec3<bool>(var_1.b.x, var_2.x, false), var_1.b.x), select(!vec3<bool>(var_2.x, false, true), select(vec3<bool>(true, false, var_1.b.x), vec3<bool>(true, true, true), vec3<bool>(false, var_1.b.x, false)), !vec3<bool>(false, var_1.b.x, var_1.b.x)), false), any(!select(vec3<bool>(true, true, true), vec3<bool>(var_2.x, var_1.b.x, var_1.b.x), vec3<bool>(var_2.x, var_2.x, false))));
    var var_5 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_3.x) >> (43498u % 32u), u_input.b.x);
}

