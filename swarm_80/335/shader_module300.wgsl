struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-862f, Struct_1(vec4<i32>(i32(-2147483648), -4052i, 27103i, -18452i), -44624i, true, vec3<bool>(true, true, true)), true, Struct_1(vec4<i32>(0i, -40508i, 30726i, -40376i), -35614i, true, vec3<bool>(false, false, true)));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_2) -> i32 {
    global0 = arg_0;
    var var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(countOneBits(99896u), ~u_input.b), 89431u, 2200u), (~_wgslsmith_mod_vec4_u32(vec4<u32>(13879u, 1u, 4294967295u, 16172u), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 4294967295u)) & vec4<u32>(countOneBits(38280u), 41527u, 1u, ~0u)) & (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 43269u, 59277u, 73288u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 3u, u_input.b, u_input.a.x), vec4<u32>(u_input.a.x, 1397u, u_input.b, 0u)), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x) >> (vec4<u32>(4294967295u, 53080u, u_input.b, 74678u) % vec4<u32>(32u))) << (firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(34465u, u_input.b, 1u, u_input.a.x), vec4<u32>(u_input.b, u_input.b, u_input.a.x, 51058u), vec4<u32>(u_input.b, u_input.a.x, 5999u, 44594u))) % vec4<u32>(32u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * _wgslsmith_f_op_f32(-global0.a)) + -816f))));
    let var_2 = min(~vec4<u32>(abs(countOneBits(u_input.a.x)), _wgslsmith_dot_vec3_u32(~var_0.xxy, u_input.a), _wgslsmith_add_u32(var_0.x, 54812u), 76366u), vec4<u32>(62238u, _wgslsmith_dot_vec4_u32(vec4<u32>(60751u, 4294967295u, ~25568u, u_input.a.x), vec4<u32>(u_input.b, ~0u, var_0.x, 0u | var_0.x)), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, var_0.x, var_0.x, u_input.b), vec4<u32>(var_0.x, 10624u, 16922u, u_input.b)), ~8299u));
    global0 = Struct_2(_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(-global0.a)), arg_0.d, true, Struct_1(reverseBits(abs(vec4<i32>(arg_0.b.b, -26780i, -2147483647i, 2147483647i))), ~global0.b.b, true || !(!global0.b.c), arg_0.b.d));
    return 16860i;
}

fn func_2(arg_0: bool, arg_1: vec2<u32>) -> Struct_1 {
    global0 = Struct_2(488f, global0.d, !(global0.d.b != ~global0.d.b) && global0.d.c, global0.d);
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-1213f + -167f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * global0.a))), _wgslsmith_f_op_f32(-global0.a)) + vec3<f32>(1429f, _wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(step(global0.a, _wgslsmith_f_op_f32(floor(global0.a))))));
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(global0.d.a.x, _wgslsmith_dot_vec2_i32(global0.b.a.zx, global0.d.a.yx ^ global0.d.a.xw)) << (_wgslsmith_mod_u32(_wgslsmith_add_u32(~arg_1.x, _wgslsmith_add_u32(105372u, arg_1.x)), ~39234u) % 32u), func_3(Struct_2(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x)), Struct_1(~global0.d.a, _wgslsmith_add_i32(global0.b.a.x, 45909i), false, vec3<bool>(arg_0, false, global0.b.d.x)), arg_0, global0.d)), max(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 0i), global0.d.a.ww), i32(-1i) * -_wgslsmith_mult_i32(global0.b.a.x, global0.b.b)));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + var_0.x)), -1364f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-global0.a))))), Struct_1(select(_wgslsmith_mult_vec4_i32(-vec4<i32>(1i, 1i, 4868i, global0.b.b), ~global0.b.a), -max(vec4<i32>(-2147483647i, 2147483647i, 0i, global0.d.b), vec4<i32>(global0.b.b, global0.d.a.x, 44591i, 27570i)), vec4<bool>(true, true, global0.c, true)), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, max(-12171i, global0.b.b), max(global0.b.b, 23878i), -global0.b.b), ~(~global0.d.a)), !any(select(vec2<bool>(global0.c, true), vec2<bool>(arg_0, arg_0), arg_0)), select(vec3<bool>(false, arg_0 && arg_0, true), global0.b.d, all(global0.d.d))), select(arg_1.x, 4294967295u, global0.c) < (~4956u << (firstLeadingBit(4294967295u) % 32u)), global0.b);
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(520f, var_0.x, 1246f, var_0.x), vec4<f32>(global0.a, -951f, var_2.a, -952f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, global0.a, -449f, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, -673f, 925f, 1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, global0.a, var_0.x, -510f))))), vec4<f32>(global0.a, 1f, _wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(var_2.a + -250f)))));
    return var_2.b;
}

fn func_1() -> vec4<i32> {
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-186f, _wgslsmith_f_op_f32(f32(-1f) * -155f)))), Struct_1(global0.b.a, _wgslsmith_clamp_i32(global0.b.a.x, _wgslsmith_add_i32(global0.b.b, global0.d.a.x), 33060i), false, !select(!global0.b.d, vec3<bool>(global0.c, global0.c, true), select(global0.d.d, vec3<bool>(global0.d.d.x, global0.d.d.x, true), true))), global0.b.c, func_2(true, u_input.a.zx));
    global0 = Struct_2(_wgslsmith_f_op_f32(step(1175f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(867f + -308f), _wgslsmith_f_op_f32(-global0.a), global0.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), global0.a), false)))), func_2(!(_wgslsmith_f_op_f32(round(842f)) >= -2809f), u_input.a.zy), false, global0.b);
    var var_0 = Struct_2(global0.a, global0.d, select(!(_wgslsmith_f_op_f32(global0.a - 222f) != -1000f), global0.d.d.x, false), Struct_1(vec4<i32>(-(~0i), ~global0.d.b, _wgslsmith_sub_i32(~global0.b.b, global0.b.a.x), 0i), -1i, false, !select(func_2(global0.c, u_input.a.yy).d, vec3<bool>(false, global0.d.c, global0.d.c), global0.d.d)));
    global0 = Struct_2(_wgslsmith_f_op_f32(trunc(2004f)), global0.d, any(vec2<bool>(true, true)), Struct_1(var_0.d.a, var_0.d.a.x, any(vec3<bool>(true, global0.c & true, !global0.b.c)), !global0.d.d));
    global0 = Struct_2(global0.a, func_2(global0.c, _wgslsmith_sub_vec2_u32(max(min(vec2<u32>(u_input.a.x, u_input.b), vec2<u32>(79993u, u_input.b)), u_input.a.yz), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(4294967295u, u_input.a.x)))), global0.c | false, Struct_1(min(firstTrailingBit(global0.d.a), global0.d.a), (-28977i | global0.b.b) & -5983i, true, global0.b.d));
    return vec4<i32>(global0.b.b, abs(-global0.d.b) | (_wgslsmith_sub_i32(var_0.b.b, -6194i << (1u % 32u)) & func_2(var_0.c, vec2<u32>(u_input.b, 1u)).b), -1i, _wgslsmith_div_i32(global0.b.a.x, var_0.d.a.x));
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    global0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-503f, _wgslsmith_f_op_f32(-arg_1)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.a), global0.a, true)))), Struct_1(-_wgslsmith_sub_vec4_i32(abs(arg_2.a), global0.b.a), _wgslsmith_mod_i32(abs(-2147483647i), _wgslsmith_dot_vec3_i32(global0.d.a.wzy, global0.b.a.xyz)) << (4294967295u % 32u), true, select(select(global0.d.d, !arg_3.d, all(vec4<bool>(arg_3.d.x, false, arg_2.c, arg_2.d.x))), arg_3.d, select(global0.d.d, func_2(false, u_input.a.xy).d, all(global0.d.d.xy)))), all(!vec4<bool>(arg_3.d.x, arg_3.c, any(vec2<bool>(arg_3.c, arg_2.c)), arg_2.c)), Struct_1(arg_3.a, global0.d.a.x, arg_3.c, global0.b.d));
    global0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -229f), arg_2, arg_3.d.x & true, arg_2);
    var var_0 = Struct_2(global0.a, arg_3, ~arg_0.x == _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b, 4294967295u, arg_0.x, arg_0.x)) | select(vec4<u32>(4294967295u, 45754u, 0u, arg_0.x), vec4<u32>(51971u, u_input.a.x, 0u, 0u), true), vec4<u32>(~25240u, max(u_input.b, arg_0.x), ~39126u, u_input.a.x)), global0.b);
    global0 = Struct_2(475f, global0.d, all(!vec2<bool>(var_0.c, !global0.c)), func_2(false, vec2<u32>(reverseBits(firstLeadingBit(arg_0.x)), min(countOneBits(arg_0.x), 1u))));
    var var_1 = true;
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-652f, var_0.a))), Struct_1((vec4<i32>(-1i) * -vec4<i32>(1669i, arg_2.b, arg_2.a.x, -2147483647i)) & global0.d.a, func_1().x, !(~49065u > u_input.b), global0.b.d), true, var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, ~u_input.b), vec2<u32>(u_input.a.x, abs(_wgslsmith_dot_vec2_u32(u_input.a.zy, u_input.a.yz)))), _wgslsmith_f_op_f32(-global0.a), Struct_1(-func_1(), global0.d.b, false & select(global0.b.b > global0.b.b, false, select(true, global0.d.d.x, global0.b.d.x)), vec3<bool>(u_input.b == reverseBits(u_input.a.x), false, global0.b.c && (global0.c & global0.d.c))), Struct_1(reverseBits(select(global0.d.a, vec4<i32>(global0.d.a.x, global0.b.a.x, -11630i, global0.d.a.x), false) >> ((vec4<u32>(u_input.a.x, 17730u, u_input.a.x, 24207u) & vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, 4294967295u)) % vec4<u32>(32u))), -global0.d.a.x ^ ~(~(-2147483647i)), false, vec3<bool>(!(!global0.b.c), global0.b.d.x, global0.d.d.x)));
    let var_0 = Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.d.b, global0.d.b, 6737i, countOneBits(1i)), ~vec4<i32>(global0.b.a.x, global0.b.b, global0.d.b, 1i)), global0.d.a), 1i, global0.d.d.x, !func_2(true, u_input.a.zz).d);
    let var_1 = global0.d;
    var var_2 = true;
    let var_3 = 22072u;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x, countOneBits(-vec2<i32>(func_3(Struct_2(global0.a, Struct_1(var_1.a, 0i, global0.d.c, global0.d.d), var_1.c, var_0)), ~var_1.b)));
}

