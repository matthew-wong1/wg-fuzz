struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<u32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: vec4<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<f32> = vec4<f32>(-400f, -250f, -527f, 604f);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> f32 {
    global0 = arg_1;
    return _wgslsmith_f_op_f32(max(-1105f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -887f)))));
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: vec4<f32>, arg_3: vec3<i32>) -> u32 {
    let var_0 = Struct_1(global0.b, any(!select(vec3<bool>(global0.b, global0.b, false), !vec3<bool>(global0.a, global0.b, global0.a), global0.a)), global0.c ^ min(vec3<u32>(~55236u, 1u, global0.d), _wgslsmith_mult_vec3_u32(global0.c, global0.c) | _wgslsmith_div_vec3_u32(vec3<u32>(global0.d, 42769u, 81832u), global0.c)), _wgslsmith_sub_u32(global0.d, ~4294967295u) << (abs(~(global0.c.x & 86958u)) % 32u));
    global0 = var_0;
    global0 = Struct_1(~arg_3.x <= -arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(~vec4<i32>(-2147483647i, -31055i, 1i, arg_1.x), var_0)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.x)))) == _wgslsmith_f_op_f32(f32(-1f) * -1368f), ~var_0.c, _wgslsmith_dot_vec2_u32((vec2<u32>(0u, global0.c.x) >> ((global0.c.xy ^ vec2<u32>(0u, 1u)) % vec2<u32>(32u))) & _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(var_0.c.xy, global0.c.xz, global0.c.yy), vec2<u32>(var_0.d, 20105u)), firstLeadingBit(var_0.c.xy)));
    var var_1 = u_input.a;
    var var_2 = 73118i;
    return var_0.d;
}

fn func_1(arg_0: vec4<bool>, arg_1: u32) -> vec4<bool> {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(var_0, func_2(3641i, ~vec3<i32>(32538i, u_input.b, u_input.b), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1041f, global1.x, 364f, 1139f))), -vec3<i32>(0i, u_input.a, -2147483647i))), var_0), global0.c.yx);
    global0 = Struct_1(true, false, _wgslsmith_mod_vec3_u32(~global0.c ^ ~(~global0.c), vec3<u32>(0u, ~(1u | var_1.x), _wgslsmith_sub_u32(7557u, _wgslsmith_clamp_u32(1u, arg_1, var_0)))), var_0 | 39042u);
    let var_2 = select(!arg_0.wyy, select(select(select(!vec3<bool>(false, global0.a, true), !arg_0.wwx, 645f != global1.x), !(!arg_0.wzy), _wgslsmith_add_i32(-3126i, u_input.a) < -41591i), select(select(arg_0.xwx, !arg_0.yyy, true), arg_0.xyw, true), all(vec4<bool>(true, true, u_input.a <= u_input.a, arg_0.x))), !vec3<bool>(true, _wgslsmith_add_u32(global0.d, 0u) >= (arg_1 >> (global0.d % 32u)), any(vec3<bool>(false, true, global0.a))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global0.a, global0.b, ~vec3<u32>(_wgslsmith_div_u32(26735u, 1u) & _wgslsmith_dot_vec3_u32(global0.c, global0.c), global0.d, 1u), global0.d);
    global0 = Struct_1(!global0.b, all(!func_1(vec4<bool>(global0.a, false, false, var_0.b), 4294967295u)), firstLeadingBit(var_0.c), ~select(108236u, 43492u << (global0.d % 32u), false));
    var var_1 = max(~(~vec4<u32>(4554u, 1u, var_0.d ^ 19459u, _wgslsmith_div_u32(global0.c.x, global0.c.x))), vec4<u32>(~(~firstTrailingBit(4294967295u)), _wgslsmith_dot_vec2_u32(var_0.c.yy, vec2<u32>(global0.d, var_0.c.x)) << (~global0.c.x % 32u), 16097u, ~1u));
    var var_2 = _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(firstTrailingBit(-select(vec3<i32>(u_input.a, u_input.b, u_input.b), vec3<i32>(41243i, u_input.b, u_input.a), global0.a)), ~firstTrailingBit(select(vec3<i32>(-2147483647i, u_input.b, 0i), vec3<i32>(1i, u_input.a, u_input.b), false))), max(abs(vec3<i32>(u_input.a, u_input.a, 1i)), vec3<i32>(reverseBits(u_input.a), u_input.a ^ 1i, _wgslsmith_add_i32(u_input.a, u_input.b >> (4294967295u % 32u)))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-746f))) > 621f, global0.a, ~vec3<u32>(109131u, _wgslsmith_mult_u32(global0.d, global0.c.x << (var_1.x % 32u)), ~firstLeadingBit(var_0.d)), var_1.x);
    var var_3 = vec3<bool>(any(!(!select(vec3<bool>(var_0.b, var_0.b, global0.b), vec3<bool>(true, global0.a, true), vec3<bool>(global0.a, global0.b, var_0.a)))), var_0.a, select(true, all(vec3<bool>(var_0.b, true, any(vec4<bool>(var_0.b, true, true, global0.b)))), global0.a & !all(vec2<bool>(false, global0.b))));
    var var_4 = Struct_1(true & global0.b, var_0.a, vec3<u32>(30232u, global0.c.x, 57656u), countOneBits(25102u));
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, _wgslsmith_add_vec4_u32(vec4<u32>(min(_wgslsmith_add_u32(var_4.d, 2322u), var_4.d), ~(~var_4.d), 4294967295u, ~(~1u)), ~vec4<u32>(var_4.d, var_4.d, 1u, global0.d) >> (~(~vec4<u32>(var_0.c.x, var_1.x, var_0.d, global0.c.x)) % vec4<u32>(32u))), 706f, max(~vec4<u32>(~4506u, var_4.c.x, 1u, ~26474u), ~vec4<u32>(4294967295u, ~3793u, ~global0.c.x, select(var_0.c.x, 0u, global0.b))), _wgslsmith_sub_vec3_u32(var_1.yyy, ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 397u), var_4.c))));
}

