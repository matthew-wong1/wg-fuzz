struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: bool = true;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_1(select(select(vec3<bool>(all(vec4<bool>(false, true, true, true)), true, any(vec2<bool>(false, false))), vec3<bool>(true, true, any(vec2<bool>(false, false))), !(4735u >= global0.x)), select(vec3<bool>(true, u_input.c >= u_input.c, false), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), false), !select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, false, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)))), !(_wgslsmith_mult_u32(firstTrailingBit(u_input.b.x), ~global0.x) > 23191u), u_input.c, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1190f + 1585f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1734f)))), -287f))));
    var var_1 = Struct_2(vec2<f32>(-1541f, 1f), !select(var_0.b || true, false, var_0.b), var_0, var_0, var_0.d.x);
    let var_2 = 7423u;
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x))));
    global0 = u_input.a;
    return select(var_0.a, !vec3<bool>(true, true, var_1.d.a.x), var_0.a);
}

fn func_2() -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(168f, -943f)))))), (u_input.c >= u_input.c) & true, Struct_1(vec3<bool>(true, true, true), !((40786i | u_input.c) >= 2147483647i), u_input.c & u_input.c, vec3<f32>(-982f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1857f, -464f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-563f, 371f))))), Struct_1(select(select(func_3(), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), func_3(), vec3<bool>(true, true, true)), false, ~(-u_input.c), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(280f, -485f, -145f))), vec3<f32>(_wgslsmith_f_op_f32(round(642f)), _wgslsmith_f_op_f32(f32(-1f) * -396f), -899f))), 502f);
    let var_1 = min(~countOneBits(~0u | global0.x), u_input.d);
    var var_2 = !vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-237f, 1181f)) + var_0.c.d.x) > var_0.e, !(!var_0.c.a.x), false);
    var var_3 = var_0.c;
    let var_4 = 1i;
    return all(!(!(!select(vec4<bool>(false, true, true, var_3.b), vec4<bool>(true, var_2.x, var_2.x, var_2.x), vec4<bool>(var_3.b, var_3.a.x, true, true)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: bool, arg_3: bool) -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-831f, 1952f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(484f, -587f) * vec2<f32>(449f, 528f)) + vec2<f32>(-863f, -789f)) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1219f, 132f)))))), func_2(), Struct_1(!func_3(), any(func_3()), ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(26351i, arg_1.x))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-894f, -695f, 230f) * vec3<f32>(1985f, 2985f, -1051f))), vec3<f32>(737f, -983f, 449f)))), Struct_1(!select(vec3<bool>(true, arg_3, arg_2), vec3<bool>(arg_2, true, false), arg_3), !(true || arg_3), 1i, vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -305f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1090f, 161f))))))));
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    var var_0 = func_1(vec4<i32>(_wgslsmith_clamp_i32(31221i, _wgslsmith_mod_i32(select(-14844i, u_input.c, true), arg_0.c.c), _wgslsmith_clamp_i32(~arg_0.d.c, min(120i, -15876i), -1i)), _wgslsmith_dot_vec4_i32(-select(vec4<i32>(27109i, 50669i, u_input.c, arg_0.d.c), vec4<i32>(arg_0.c.c, arg_0.d.c, arg_0.c.c, 1i), vec4<bool>(true, arg_0.c.a.x, arg_0.d.b, arg_0.c.a.x)), ~(-vec4<i32>(-37134i, arg_0.d.c, u_input.c, arg_0.c.c))), arg_0.d.c, u_input.c), _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(u_input.c, u_input.c, arg_0.d.c)), ~vec3<i32>(0i, arg_0.d.c, 9046i), _wgslsmith_add_vec3_i32(vec3<i32>(-16743i, -19955i, -2147483647i), vec3<i32>(-1500i, -4635i, 1i))), ~countOneBits(vec3<i32>(-1i, -11068i, 1i))) >> (max(~u_input.a.zxz, vec3<u32>(min(14242u, 4294967295u), ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 9023u), global0.wy))) % vec3<u32>(32u)), all(!vec4<bool>(all(vec4<bool>(true, true, false, true)), true, true, select(false, arg_0.b, arg_0.b))), all(arg_0.c.a));
    global0 = ~u_input.a;
    var_0 = func_1(vec4<i32>(var_0.c.c, _wgslsmith_add_i32(~var_0.d.c, ~arg_0.c.c) >> (~global0.x % 32u), u_input.c, 1i), vec3<i32>(u_input.c, 2147483647i, -21562i), arg_0.c.a.x, select(all(vec4<bool>(arg_0.d.a.x, false, false, arg_0.d.b == true)), !arg_0.b, arg_0.c.a.x));
    global0 = vec4<u32>(~(~(~countOneBits(arg_1))), ~countOneBits(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(4294967295u, 74877u, global0.x, 14204u)), arg_1)), ~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 94585u), u_input.a.yy))), 4294967295u);
    let var_1 = u_input.c;
    return Struct_1(var_0.c.a, any(select(!vec3<bool>(var_0.c.b, var_0.b, arg_0.c.a.x), select(var_0.d.a, vec3<bool>(false, arg_0.d.b, var_0.d.a.x), true), func_1(vec4<i32>(42810i, 0i, var_0.d.c, 1i), min(vec3<i32>(-29541i, 1i, arg_0.d.c), vec3<i32>(u_input.c, var_1, var_0.c.c)), false, true).d.a.x)), ~arg_0.c.c, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.d.d, arg_0.c.d) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.d.x, 675f, arg_0.c.d.x))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-836f, 593f, var_0.a.x), vec3<f32>(var_0.e, 711f, arg_0.a.x))))), !select(vec3<bool>(true, arg_0.d.a.x, false), vec3<bool>(var_0.d.a.x, arg_0.b, arg_0.c.b), false))))));
}

fn func_5(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec4<f32>) -> StorageBuffer {
    let var_0 = reverseBits(u_input.a);
    var var_1 = arg_3.wyx;
    global1 = arg_2.a.x;
    let var_2 = arg_2;
    global1 = true;
    return StorageBuffer(_wgslsmith_mod_u32(u_input.d, ~84104u), abs(vec3<i32>(_wgslsmith_dot_vec3_i32(min(vec3<i32>(var_2.c, var_2.c, -47885i), vec3<i32>(arg_2.c, u_input.c, -6469i)), max(vec3<i32>(37836i, u_input.c, u_input.c), vec3<i32>(21367i, arg_2.c, arg_2.c))), abs(reverseBits(arg_2.c)), u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(u_input.a.x, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-399f, 411f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(699f + -741f)), -1000f))), func_4(func_1(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.c, -1i, u_input.c), vec4<i32>(u_input.c, u_input.c, -18483i, 87340i)), _wgslsmith_div_vec3_i32(select(vec3<i32>(u_input.c, -1i, 0i), vec3<i32>(-2147483647i, u_input.c, u_input.c), true), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, 0i, u_input.c), vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(u_input.c, 2147483647i, u_input.c))), false, any(vec3<bool>(true, false, true)) == true), _wgslsmith_sub_u32(1u, global0.x)), vec4<f32>(_wgslsmith_f_op_f32(427f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1207f + -595f))), -933f, 1122f, _wgslsmith_f_op_f32(f32(-1f) * -303f)));
}

