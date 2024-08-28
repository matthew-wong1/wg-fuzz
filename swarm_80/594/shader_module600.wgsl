struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: f32,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct Struct_5 {
    a: i32,
    b: vec4<bool>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(arg_0.c.c * arg_0.a.c), 270f, _wgslsmith_div_f32(-102f, _wgslsmith_f_op_f32(-arg_0.a.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-198f))));
    var var_1 = ~vec3<u32>(_wgslsmith_clamp_u32(~64314u, 4294967295u, _wgslsmith_mult_u32(1u, 4294967295u)) >> (~firstLeadingBit(1u) % 32u), ~_wgslsmith_mod_u32(global0.x, 0u), countOneBits(7930u));
    var var_2 = arg_0.a.e;
    let var_3 = var_0.x;
    var var_4 = arg_0.a;
    return reverseBits(~arg_0.b.x);
}

fn func_2() -> Struct_4 {
    global0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(~u_input.c, ~4294967295u), global0.x ^ u_input.c, ~_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a, global0.x), ~global0.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global0.x, 4294967295u, u_input.c), vec4<u32>(u_input.a, 31734u, global0.x, global0.x)) | global0.x, _wgslsmith_add_u32(func_3(Struct_2(Struct_1(u_input.b.yz, vec3<bool>(true, false, false), -605f, vec2<u32>(69107u, 1u), true), global0.yy, Struct_1(vec2<i32>(12884i, u_input.b.x), vec3<bool>(false, true, true), 2148f, global0.zz, true), u_input.b.x, false)), 10006u)), vec3<u32>(func_3(Struct_2(Struct_1(u_input.b.xy, vec3<bool>(true, false, false), -116f, vec2<u32>(31210u, global0.x), false), global0.yx, Struct_1(vec2<i32>(u_input.b.x, u_input.b.x), vec3<bool>(true, false, true), 1586f, vec2<u32>(45894u, 1u), false), u_input.b.x, false)), 0u, u_input.a)), firstLeadingBit(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, global0.x), vec3<u32>(global0.x, u_input.a, global0.x), vec3<u32>(4294967295u, 23719u, u_input.c)) & ~vec3<u32>(31722u, 5088u, global0.x)));
    var var_0 = Struct_5(_wgslsmith_mod_i32(select(u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, 2147483647i), true) >> (_wgslsmith_div_u32(_wgslsmith_div_u32(70851u, 3785u), u_input.a & 0u) % 32u), -1i), select(!vec4<bool>(all(vec2<bool>(false, true)), true, true, true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), -25975i <= u_input.b.x), vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), true), true)), -_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, 38836i), vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, u_input.b.x)) <= _wgslsmith_sub_i32(u_input.b.x, ~u_input.b.x)), _wgslsmith_dot_vec4_u32(~(vec4<u32>(4294967295u, u_input.c, u_input.a, 13159u) >> (vec4<u32>(global0.x, 110663u, 0u, global0.x) % vec4<u32>(32u))) | vec4<u32>(u_input.a, ~global0.x, ~global0.x, 1u), ~(~vec4<u32>(28426u, u_input.c, 61548u, 0u))));
    global0 = ~vec3<u32>(var_0.c, ~countOneBits(34455u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c ^ 4294967295u, 16876u), abs(max(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.c, 46732u)))));
    let var_1 = Struct_1(vec2<i32>(-(~(-2147483647i)), 1i), select(select(var_0.b.ywx, var_0.b.zxw, vec3<bool>(true, var_0.b.x, !var_0.b.x)), vec3<bool>(true, true, var_0.b.x), var_0.b.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(155f - _wgslsmith_f_op_f32(max(259f, 833f))), _wgslsmith_f_op_f32(1f - 421f))))), min(reverseBits(~vec2<u32>(0u, 67179u)), global0.xx), true);
    var var_2 = Struct_5(2147483647i, var_0.b, firstTrailingBit(~_wgslsmith_clamp_u32(u_input.c, 36665u, 1u)) >> (_wgslsmith_mult_u32(1u, u_input.a | 1u) % 32u));
    return Struct_4(Struct_2(var_1, ~global0.zy, var_1, var_0.a, var_2.b.x), _wgslsmith_dot_vec3_i32(-_wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(-2147483647i, 23358i, -2147483647i)), vec3<i32>(1i, -25536i, var_2.a), firstLeadingBit(vec3<i32>(-24367i, u_input.b.x, var_1.a.x))), ~vec3<i32>(2147483647i, var_2.a, var_2.a) | select(abs(vec3<i32>(var_1.a.x, var_2.a, -2147483647i)), -vec3<i32>(var_1.a.x, var_2.a, -2147483647i), vec3<bool>(var_2.b.x, var_2.b.x, var_1.e))));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec3<u32>) -> f32 {
    var var_0 = func_2();
    var_0 = Struct_4(arg_1, min(~firstLeadingBit(u_input.b.x), arg_1.a.a.x) & ~u_input.b.x);
    var var_1 = _wgslsmith_f_op_f32(-var_0.a.c.c);
    let var_2 = func_2();
    let var_3 = Struct_3(Struct_1(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(firstTrailingBit(u_input.b.yx), -var_0.a.c.a), -_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.c.a.x, 29187i), vec2<i32>(var_2.b, u_input.b.x))), vec3<bool>(!(var_2.a.a.c >= -962f), true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.a.c) - -865f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.c.c + var_2.a.a.c), _wgslsmith_f_op_f32(-arg_1.a.c)))), arg_1.c.d, !(true & arg_1.a.b.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.a.a.c)), func_2().a.c.c))))), arg_0.x);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(498f, func_2().a.a.c))), -300f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(u_input.c, ~global0.x, 3228u);
    let var_1 = select(vec2<bool>(true, any(vec3<bool>(u_input.b.x <= 56750i, true, true))), vec2<bool>(select(true, select(true, true, true), true), !(_wgslsmith_f_op_f32(-566f - -1401f) >= _wgslsmith_f_op_f32(func_1(vec3<bool>(false, false, true), Struct_2(Struct_1(vec2<i32>(-51995i, u_input.b.x), vec3<bool>(true, false, false), -1222f, vec2<u32>(1u, 4294967295u), true), vec2<u32>(45205u, global0.x), Struct_1(vec2<i32>(u_input.b.x, u_input.b.x), vec3<bool>(true, false, false), 982f, vec2<u32>(u_input.c, var_0.x), true), u_input.b.x, true), vec3<u32>(0u, 0u, u_input.a))))), all(vec2<bool>(true, true)));
    let var_2 = Struct_5(~1i, vec4<bool>(any(!(!vec4<bool>(var_1.x, true, var_1.x, true))), !select(true, any(vec3<bool>(var_1.x, true, true)), false), any(!select(vec4<bool>(true, var_1.x, true, true), vec4<bool>(false, false, false, true), false)), true), firstTrailingBit(154442u));
    var var_3 = false;
    var_0 = vec3<u32>(_wgslsmith_div_u32(~1u, 1u), 20007u, ~_wgslsmith_mod_u32(var_0.x, ~firstTrailingBit(var_0.x)));
    var var_4 = vec3<i32>(var_2.a, func_2().a.a.a.x, firstTrailingBit(~(-max(22462i, 1i))));
    var_3 = !any(select(var_2.b.zyx, vec3<bool>(var_1.x | var_2.b.x, true, false), var_2.b.wwz));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

