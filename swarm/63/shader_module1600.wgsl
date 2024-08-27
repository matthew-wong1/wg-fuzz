struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_2(-1535f, Struct_1(-1000f), Struct_1(-523f)), Struct_2(-257f, Struct_1(-903f), Struct_1(302f)), vec2<bool>(true, false));

var<private> global1: vec4<f32> = vec4<f32>(-156f, -553f, 726f, -807f);

var<private> global2: bool = true;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(vec4<i32>(_wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.b.x, 2147483647i), u_input.b.yzy), u_input.b.x & u_input.b.x) >> (0u % 32u), abs(u_input.b.x), u_input.b.x, ~abs(21687i)), Struct_2(global1.x, global0.a.c, global0.b.c), u_input.a & vec4<u32>(u_input.c, u_input.c, 1u, 0u), global0.a.b, global0.b);
    let var_1 = global0.b.c;
    let var_2 = var_0.a.x;
    let var_3 = u_input.b.x;
    var var_4 = var_0;
    return global0.b.c;
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = Struct_5(global0.a, Struct_2(1269f, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -532f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.c.a * global1.x)))), global0.c);
    global0 = var_0;
    return select(select(var_0.c, !var_0.c, false), select(var_0.c, select(select(!vec2<bool>(var_0.c.x, var_0.c.x), vec2<bool>(var_0.c.x, global0.c.x), global0.c), global0.c, global0.c), var_0.c.x), select(select(select(!var_0.c, !vec2<bool>(true, var_0.c.x), any(vec4<bool>(true, true, false, false))), var_0.c, false), vec2<bool>(!all(vec2<bool>(true, var_0.c.x)), _wgslsmith_div_i32(0i, u_input.b.x) != u_input.b.x), true));
}

fn func_1() -> i32 {
    global0 = Struct_5(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-889f + 1221f))), Struct_1(global1.x), func_2()), global0.b, !global0.c);
    global2 = select((all(func_3(global0.b)) & !(false != global0.c.x)) || !(_wgslsmith_dot_vec3_u32(u_input.a.wyy, u_input.a.wyw) < reverseBits(u_input.a.x)), select(all(select(vec3<bool>(true, global0.c.x, false), select(vec3<bool>(global0.c.x, global0.c.x, global0.c.x), vec3<bool>(false, global0.c.x, global0.c.x), global0.c.x), vec3<bool>(false, true, true))), abs(~31519u) < ~u_input.c, false), true);
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-142f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2778f) + -444f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + -545f))) - _wgslsmith_f_op_f32(max(-431f, _wgslsmith_div_f32(global1.x, global1.x)))));
    global0 = Struct_5(Struct_2(_wgslsmith_f_op_f32(sign(global0.a.a)), global0.a.b, func_2()), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-122f)))), global0.b.c, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.b.a * global1.x) + _wgslsmith_f_op_f32(round(1862f))))), !select(global0.c, func_3(global0.b), global0.c.x));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.b.c.a * -966f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-206f + -1000f)), _wgslsmith_f_op_f32(761f + global0.b.a))), all(!vec4<bool>(global0.c.x, true, false, true)))));
    return reverseBits(abs(u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x | _wgslsmith_sub_i32(_wgslsmith_mod_i32(func_1(), abs(abs(24159i))), u_input.b.x);
    global0 = Struct_5(global0.b, global0.b, vec2<bool>(any(func_3(global0.a)), any(vec3<bool>(global0.c.x, global0.c.x, true)) || (false & select(global0.c.x, false, global0.c.x))));
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(0i & (1i | ~u_input.b.x), ~(u_input.b.x | (i32(-1i) * -23271i)), 97955i, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x) & (i32(-1i) * -7141i)), ~(vec4<i32>(-var_0, _wgslsmith_dot_vec4_i32(vec4<i32>(5984i, var_0, -51097i, u_input.b.x), vec4<i32>(u_input.b.x, var_0, -1i, var_0)), _wgslsmith_add_i32(-33719i, var_0), var_0) | (vec4<i32>(-1i) * -u_input.b)));
    let var_2 = u_input.c;
    let var_3 = _wgslsmith_add_i32(max(var_1, -2147483647i), u_input.b.x) < (_wgslsmith_clamp_i32(~(-16705i), reverseBits(-24498i), 15035i) & 1i);
    let var_4 = Struct_3(u_input.b, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.c.a) * global1.x), func_2(), Struct_1(_wgslsmith_f_op_f32(max(-2344f, _wgslsmith_f_op_f32(step(global0.b.c.a, -408f)))))), ~(~max(firstTrailingBit(vec4<u32>(33775u, 39423u, u_input.a.x, var_2)), ~vec4<u32>(var_2, 66963u, 51270u, var_2))), Struct_1(global1.x), global0.a);
    let var_5 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.c.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.b.a * global0.b.a) * -405f), _wgslsmith_div_f32(global1.x, global0.b.b.a)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1.x + global0.a.b.a), _wgslsmith_f_op_f32(max(global1.x, 595f)), -383f) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global1.zwx))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(429f * 1208f), _wgslsmith_f_op_f32(select(-2144f, -1177f, var_3)), _wgslsmith_f_op_f32(-global0.b.a), global1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.e.a, _wgslsmith_f_op_f32(-168f - global1.x), -1274f, _wgslsmith_f_op_f32(round(global0.b.b.a)))))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_div_f32(global1.x, -277f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b.a, -1501f)), _wgslsmith_f_op_f32(global0.a.b.a * _wgslsmith_f_op_f32(f32(-1f) * -189f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - -1915f) * _wgslsmith_f_op_f32(-global1.x)))) + _wgslsmith_f_op_f32(max(-472f, _wgslsmith_f_op_f32(abs(-1011f))))), global1.wzx);
}

