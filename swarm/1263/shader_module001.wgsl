struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<bool>,
    d: i32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: vec3<f32>) -> f32 {
    var var_0 = ~firstLeadingBit(~firstTrailingBit(abs(1u)));
    let var_1 = Struct_3(Struct_2(select(vec4<bool>(true, global0.b.x, !global0.b.x, any(global0.b.ww)), !(!vec4<bool>(false, global0.b.x, false, global0.b.x)), global0.b)), Struct_1(arg_0.x, select(vec4<bool>(global0.b.x, any(global0.b), global0.b.x, global0.b.x), !select(global0.b, vec4<bool>(false, true, global0.b.x, true), true), global0.b.x)), global0.b.wyx, abs(global0.a << (_wgslsmith_add_u32(abs(arg_1.x), ~u_input.b.x) % 32u)));
    return arg_2.x;
}

fn func_2() -> Struct_2 {
    let var_0 = ~(~vec3<u32>(u_input.c, _wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, u_input.b.x), 0u), _wgslsmith_dot_vec3_u32(~u_input.a.zxx, select(u_input.a.www, u_input.a.xwx, global0.b.x))));
    var var_1 = Struct_2(select(select(!global0.b, select(vec4<bool>(global0.b.x, global0.b.x, false, true), global0.b, vec4<bool>(global0.b.x, global0.b.x, global0.b.x, global0.b.x)), vec4<bool>(false & global0.b.x, 0u != u_input.b.x, any(vec2<bool>(global0.b.x, true)), global0.b.x | global0.b.x)), select(vec4<bool>(true, global0.b.x, !global0.b.x, false), vec4<bool>(global0.b.x, true, any(vec4<bool>(false, true, global0.b.x, global0.b.x)), true), select(select(vec4<bool>(global0.b.x, true, true, global0.b.x), vec4<bool>(global0.b.x, global0.b.x, true, global0.b.x), global0.b), select(global0.b, vec4<bool>(global0.b.x, false, global0.b.x, global0.b.x), global0.b.x), !global0.b.x)), !(!global0.b.x)));
    let var_2 = Struct_1(global0.a, global0.b);
    global0 = Struct_1(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(global0.a, i32(-1i) * -2613i), _wgslsmith_mod_i32(~var_2.a, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a, -28535i, var_2.a), vec3<i32>(20027i, -21528i, var_2.a)), ~1i)), -var_2.a), !select(var_1.a, !vec4<bool>(global0.b.x, var_1.a.x, var_1.a.x, global0.b.x), any(select(global0.b, global0.b, vec4<bool>(var_2.b.x, false, true, var_2.b.x)))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~reverseBits(~vec4<i32>(global0.a, global0.a, var_2.a, global0.a)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, var_0.x)), vec2<u32>(1u, 16340u) >> (u_input.b.xy % vec2<u32>(32u)), vec2<u32>(u_input.a.x, var_0.x) << (_wgslsmith_clamp_vec2_u32(u_input.a.yw, vec2<u32>(var_0.x, 58603u), var_0.yz) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(110f, 1504f, -987f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(234f, 879f, 373f) - vec3<f32>(492f, -733f, -1092f)), var_2.b.yxz))))));
    return Struct_2(!vec4<bool>(select(var_2.a <= 17853i, false, all(vec3<bool>(var_1.a.x, var_1.a.x, true))), global0.b.x, false, true));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: i32) -> Struct_1 {
    global0 = Struct_1(0i, !global0.b);
    let var_0 = Struct_4(arg_1.a);
    global0 = Struct_1(global0.a, vec4<bool>(!(!(!arg_1.a)), arg_1.a, false, var_0.a));
    var var_1 = vec3<u32>(_wgslsmith_sub_u32(u_input.b.x, abs(_wgslsmith_clamp_u32(reverseBits(77055u), u_input.a.x, u_input.c >> (u_input.b.x % 32u)))), 1u, ~(~59764u));
    var var_2 = Struct_3(Struct_2(!(!global0.b)), Struct_1(arg_2, select(global0.b, !global0.b, arg_0.a)), !vec3<bool>(true, global0.b.x, any(global0.b.zyz)), global0.a);
    return Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(-1i, global0.a)), vec2<i32>(global0.a, 1i)), ~abs(vec2<i32>(833i, arg_2)) | firstLeadingBit(vec2<i32>(var_2.d, 34877i) ^ vec2<i32>(global0.a, var_2.b.a))), func_2().a);
}

fn func_1() -> i32 {
    global0 = func_4(func_2(), Struct_4(select(!(!global0.b.x), true, any(vec2<bool>(false, true)))), (i32(-1i) * -2147483647i) | ~min(min(0i, global0.a), global0.a));
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 2586i, -2147483647i, 2147483647i), vec4<i32>(global0.a, global0.a, global0.a, global0.a)), min(vec2<u32>(u_input.c, u_input.c), u_input.b.xw), vec3<f32>(-278f, -2124f, 681f))) * -663f), -288f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1177f), _wgslsmith_f_op_f32(sign(505f))) - _wgslsmith_f_op_f32(-179f + -1226f))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-424f - 112f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(229f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(519f - -196f)))), -566f));
    global0 = Struct_1(-29539i, vec4<bool>(global0.b.x, func_2().a.x, true, true));
    let var_1 = var_0.x;
    var var_2 = vec2<bool>(func_2().a.x, true);
    return -14449i;
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_5, arg_3: vec3<bool>) -> StorageBuffer {
    global0 = func_4(func_2(), Struct_4((-global0.a << (1u % 32u)) < -(22742i ^ global0.a)), func_1());
    global0 = func_4(func_2(), Struct_4(any(func_4(Struct_2(global0.b), Struct_4(false), arg_2.a).b) & true), arg_0);
    let var_0 = Struct_2(!(!select(!global0.b, global0.b, true)));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-105f, 293f))) - _wgslsmith_f_op_f32(ceil(-811f)))));
    return StorageBuffer(_wgslsmith_mult_i32(arg_0, ~min(-global0.a, ~arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(~2147483647i, global0.b);
    let x = u_input.a;
    s_output = func_5(func_1() | _wgslsmith_dot_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -1i, global0.a), vec3<i32>(1i, global0.a, global0.a)), abs(vec3<i32>(global0.a, -2147483647i, global0.a) >> (vec3<u32>(100886u, u_input.a.x, 0u) % vec3<u32>(32u)))), -global0.a >> (u_input.b.x % 32u), Struct_5(-1i, u_input.b.yyy, -32074i), vec3<bool>(true, global0.b.x, min(2147483647i, _wgslsmith_div_i32(global0.a, -1930i)) != global0.a));
}

