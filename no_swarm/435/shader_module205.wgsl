struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: Struct_3;

var<private> global2: f32 = -290f;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<bool>) -> f32 {
    let var_0 = global1.c;
    var var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.a.x, global1.a.x)) + _wgslsmith_f_op_f32(-649f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d.x * global1.d.x) + _wgslsmith_f_op_f32(global1.d.x * -353f)))), 1132f);
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.a) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-211f, var_1.a, var_1.a)))))));
    var_2 = global1.d.yzz;
    var var_3 = _wgslsmith_div_i32(-1i, firstTrailingBit(var_0.a.x));
    return -682f;
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    global1 = Struct_3(_wgslsmith_f_op_vec3_f32(-global1.d.wwy), Struct_1(_wgslsmith_clamp_vec3_i32(-global1.b.a ^ (u_input.c.xww << (u_input.d % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(vec3<i32>(20916i, -1i, 0i) << (u_input.d % vec3<u32>(32u)), global1.e.a), u_input.c.xyz), select(!(global1.c.b != false), true, global0.x), global1.b.c), Struct_1(abs(-(vec3<i32>(-53159i, -12790i, global1.c.a.x) >> (arg_0 % vec3<u32>(32u)))), firstLeadingBit(1i) == _wgslsmith_div_i32(u_input.e, global1.b.a.x), u_input.d), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.a.x, global1.a.x))), global1.a.x)), global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(90613u, Struct_2(vec3<bool>(global1.b.b, false, true), vec3<bool>(global1.c.b, global0.x, false), vec4<u32>(0u, 0u, global1.b.c.x, global1.e.c.x)), Struct_2(vec3<bool>(global1.c.b, false, global1.c.b), vec3<bool>(false, true, true), vec4<u32>(1u, 32637u, global1.c.c.x, arg_0.x)), vec3<bool>(global1.c.b, global1.b.b, global1.c.b)))), 1194f), Struct_1(u_input.c.xww, global0.x, select(~vec3<u32>(arg_0.x, 1u, 0u), vec3<u32>(u_input.d.x, ~u_input.d.x, global1.c.c.x), select(select(vec3<bool>(global0.x, false, global1.c.b), vec3<bool>(global0.x, global0.x, false), vec3<bool>(true, false, global0.x)), vec3<bool>(global1.b.b, global1.c.b, false), !vec3<bool>(false, global0.x, global1.b.b)))));
    global2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d.x - -151f) - _wgslsmith_f_op_f32(-global1.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) - global1.a.x)))));
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-global1.d.x), global1.a.x))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.d.x, global1.d.x) * vec2<f32>(-160f, global1.a.x)), _wgslsmith_f_op_vec2_f32(ceil(global1.a.yz)))))))));
    global0 = vec3<bool>(!(global1.e.b | (true & global0.x)), any(select(select(select(vec3<bool>(global1.c.b, false, global1.c.b), vec3<bool>(global0.x, global0.x, false), false), !vec3<bool>(global0.x, global1.c.b, global0.x), select(vec3<bool>(global0.x, true, true), vec3<bool>(global1.e.b, false, global0.x), true)), !select(vec3<bool>(false, true, true), vec3<bool>(global0.x, true, true), vec3<bool>(global1.e.b, global1.e.b, false)), select(select(vec3<bool>(global1.c.b, false, true), vec3<bool>(global1.c.b, false, global0.x), vec3<bool>(true, false, global1.e.b)), select(vec3<bool>(global1.b.b, global1.c.b, true), vec3<bool>(global0.x, true, global1.e.b), true), !global0.x))), global0.x);
    global0 = !(!select(!(!vec3<bool>(true, global1.b.b, global0.x)), select(!vec3<bool>(true, false, global1.c.b), select(vec3<bool>(global0.x, true, true), vec3<bool>(true, global0.x, false), vec3<bool>(true, global0.x, global0.x)), vec3<bool>(true, global0.x, global0.x)), global1.c.b));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.d.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global1.d.x)), _wgslsmith_f_op_f32(-763f + _wgslsmith_div_f32(var_0.x, -1058f)), global0.x | (global1.a.x > var_0.x))))) + var_0.x);
}

fn func_1() -> f32 {
    return _wgslsmith_f_op_f32(func_2(_wgslsmith_clamp_vec3_u32(u_input.d, reverseBits(global1.b.c), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(23247u, 31737u, u_input.d.x), u_input.d << (vec3<u32>(0u, 31405u, 1u) % vec3<u32>(32u))), u_input.d))));
}

fn func_4(arg_0: f32, arg_1: f32) -> Struct_3 {
    global0 = !vec3<bool>(true, false, select(!global1.e.b || all(vec2<bool>(global1.b.b, false)), any(vec3<bool>(global0.x, false, true)), !select(true, false, true)));
    let var_0 = true;
    global0 = !select(vec3<bool>(true, true, true), select(vec3<bool>(41130u <= global1.c.c.x, all(vec4<bool>(true, false, var_0, true)), var_0), !vec3<bool>(false, true, global0.x), !(!vec3<bool>(true, true, global1.b.b))), any(!global0.xz));
    var var_1 = Struct_1(countOneBits(u_input.c.wwx), false, vec3<u32>(_wgslsmith_mod_u32(reverseBits(17084u), ~1u >> (_wgslsmith_clamp_u32(global1.c.c.x, 41063u, u_input.b) % 32u)), u_input.d.x, reverseBits(~global1.b.c.x)));
    var var_2 = (_wgslsmith_sub_vec3_u32(var_1.c, _wgslsmith_add_vec3_u32(vec3<u32>(28524u, 4976u, var_1.c.x), vec3<u32>(0u, 1u, 4294967295u)) & u_input.d) << (vec3<u32>(min(global1.c.c.x, global1.e.c.x), u_input.b, global1.c.c.x) % vec3<u32>(32u))) & vec3<u32>(var_1.c.x, var_1.c.x << (~_wgslsmith_add_u32(u_input.b, global1.c.c.x) % 32u), var_1.c.x);
    return Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.d.zxw - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.d.zyz * global1.d.zww)))), Struct_1(countOneBits(~vec3<i32>(74058i, -1i, global1.c.a.x)) >> (abs(~var_1.c) % vec3<u32>(32u)), true, ~(abs(global1.c.c) & vec3<u32>(var_2.x, 1u, 15786u))), Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(-45290i, ~(-47896i), var_1.a.x), vec3<i32>(firstLeadingBit(-1i), reverseBits(global1.e.a.x), 30609i << (1u % 32u))), select(any(global0.zx), false, true), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, global1.c.c.x), _wgslsmith_clamp_vec3_u32(~var_1.c, var_1.c << (vec3<u32>(var_1.c.x, global1.b.c.x, var_2.x) % vec3<u32>(32u)), ~vec3<u32>(u_input.d.x, var_2.x, var_1.c.x)))), vec4<f32>(arg_1, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-947f - 1017f) * _wgslsmith_f_op_f32(-648f - -451f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1169f - 1000f) - _wgslsmith_f_op_f32(min(arg_1, 993f)))), _wgslsmith_f_op_f32(func_3(min(_wgslsmith_sub_u32(7783u, 0u), _wgslsmith_clamp_u32(global1.c.c.x, var_2.x, 0u)), Struct_2(select(vec3<bool>(true, false, global1.c.b), vec3<bool>(global1.b.b, var_1.b, global0.x), vec3<bool>(global1.e.b, var_1.b, true)), select(vec3<bool>(var_1.b, var_1.b, global1.e.b), vec3<bool>(var_1.b, var_1.b, var_1.b), vec3<bool>(false, var_1.b, false)), ~vec4<u32>(0u, u_input.d.x, 4294967295u, global1.c.c.x)), Struct_2(select(vec3<bool>(var_1.b, true, false), vec3<bool>(global0.x, false, true), vec3<bool>(false, global0.x, var_1.b)), vec3<bool>(true, global0.x, false), abs(vec4<u32>(u_input.d.x, 41524u, var_2.x, global1.c.c.x))), vec3<bool>(true, true | global0.x, true)))), global1.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.d.www;
    let var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x + 157f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.d.x)))), _wgslsmith_f_op_f32(func_1()));
    global0 = vec3<bool>(all(!(!(!global0.zz))), !var_1.c.b, !(_wgslsmith_div_u32(_wgslsmith_mod_u32(var_1.b.c.x, u_input.b), u_input.b) == max(u_input.d.x, select(52504u, 4928u, global0.x))));
    var var_2 = 4294967295u;
    let var_3 = Struct_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global1.d.x, var_0.x))))), _wgslsmith_f_op_f32(func_1()));
    var var_4 = Struct_2(select(!(!select(vec3<bool>(true, false, global0.x), vec3<bool>(true, global1.b.b, true), vec3<bool>(true, false, global1.c.b))), select(select(select(vec3<bool>(false, var_1.b.b, true), vec3<bool>(false, global0.x, var_1.b.b), vec3<bool>(true, false, false)), !vec3<bool>(global1.b.b, true, global0.x), global1.e.b), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, var_1.c.b)), vec3<bool>(true, any(vec4<bool>(global0.x, var_1.c.b, global0.x, var_1.b.b)), all(global0.yy))), true), vec3<bool>(all(select(!vec4<bool>(true, global1.e.b, true, var_1.e.b), !vec4<bool>(false, true, var_1.e.b, global1.e.b), !vec4<bool>(global1.c.b, global1.b.b, false, false))), all(vec3<bool>(global0.x, all(vec2<bool>(false, global0.x)), global1.e.b)), global1.e.b || true), vec4<u32>(~(_wgslsmith_sub_u32(global1.b.c.x, var_1.e.c.x) & 32428u), min(max(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.c.c.x, var_1.e.c.x, 81239u), vec3<u32>(global1.c.c.x, global1.c.c.x, global1.b.c.x)), 79633u), _wgslsmith_mult_u32(~global1.b.c.x, _wgslsmith_add_u32(1u, 1u))), global1.e.c.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.d, u_input.d) >> (_wgslsmith_sub_u32(56983u, u_input.d.x) % 32u), 1u)));
    var_4 = Struct_2(select(!vec3<bool>(true, any(vec2<bool>(true, global1.c.b)), !var_1.e.b), !var_4.a, true), vec3<bool>(false, true, !var_4.a.x), var_4.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(0u, _wgslsmith_div_u32(~7765u, ~u_input.d.x)), func_4(var_1.a.x, _wgslsmith_f_op_f32(min(-408f, _wgslsmith_div_f32(-1053f, 671f)))).c.c, ~48693u, countOneBits(vec4<i32>(~(-u_input.c.x), ~_wgslsmith_mod_i32(var_1.b.a.x, u_input.a), 0i, _wgslsmith_sub_i32(-21793i, u_input.a))));
}

