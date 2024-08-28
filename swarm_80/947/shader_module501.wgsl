struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(4294967295u, 0u, 1u, 0u), vec3<i32>(1i, 1i, -4076i));

var<private> global1: f32;

var<private> global2: vec4<bool>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(Struct_1(global0.a, vec3<i32>(countOneBits(global0.b.x), -global0.b.x, global0.b.x) >> ((abs(vec3<u32>(39643u, u_input.a, 4294967295u)) ^ ~global0.a.www) % vec3<u32>(32u))), Struct_1(vec4<u32>(~global0.a.x, countOneBits(28423u), global0.a.x, 1u >> (global0.a.x % 32u)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 16220u, 3089u), firstLeadingBit(vec4<u32>(u_input.a, u_input.a, global0.a.x, 60809u)), ~vec4<u32>(u_input.a, u_input.a, global0.a.x, 0u)), global0.b), Struct_1(vec4<u32>(0u, ~global0.a.x, ~(~0u), ~_wgslsmith_mod_u32(global0.a.x, u_input.a)), select(vec3<i32>(-5662i, _wgslsmith_mult_i32(global0.b.x, global0.b.x), -global0.b.x), vec3<i32>(~35941i, 1i, firstTrailingBit(-10440i)), !select(vec3<bool>(false, global2.x, true), vec3<bool>(global2.x, true, true), vec3<bool>(false, true, true)))), ~(~global0.a.wy));
    var var_1 = Struct_2(var_0.c, Struct_1(_wgslsmith_div_vec4_u32(global0.a, countOneBits(min(global0.a, global0.a))), ~(~var_0.b.b) & _wgslsmith_sub_vec3_i32(var_0.c.b, abs(vec3<i32>(global0.b.x, 27418i, 1i)))), Struct_1(~vec4<u32>(var_0.d.x, var_0.c.a.x, var_0.c.a.x, ~4294967295u), firstLeadingBit(-(vec3<i32>(global0.b.x, 25482i, 0i) | vec3<i32>(1i, global0.b.x, 31697i)))), vec2<u32>(abs(~(~global0.a.x)), ~var_0.c.a.x));
    global2 = select(!select(!vec4<bool>(true, false, false, global2.x), vec4<bool>(global2.x, true, true | global2.x, -28492i > var_1.b.b.x), all(global2.yz)), select(vec4<bool>(any(vec3<bool>(global2.x, false, global2.x)), global2.x, !any(vec2<bool>(global2.x, global2.x)), false), select(!vec4<bool>(global2.x, global2.x, true, global2.x), vec4<bool>(!global2.x, global2.x, global2.x, true), !any(vec2<bool>(true, true))), vec4<bool>(all(select(vec2<bool>(false, true), global2.xy, false)), any(vec4<bool>(global2.x, global2.x, false, global2.x)), !global2.x, true == (false && global2.x))), (global2.x | true) == !((false && global2.x) & global2.x));
    var var_2 = Struct_2(Struct_1(vec4<u32>(7926u, global0.a.x, _wgslsmith_dot_vec4_u32(var_0.a.a, abs(global0.a)), u_input.a), vec3<i32>(var_0.c.b.x, _wgslsmith_mod_i32(global0.b.x, var_1.a.b.x), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(59977i, var_0.c.b.x))))), Struct_1(select(vec4<u32>(~var_1.b.a.x, ~16746u, ~global0.a.x, var_0.d.x), vec4<u32>(~var_1.b.a.x, 90286u, 4294967295u, ~u_input.a), vec4<bool>(false, true, false, !global2.x)), vec3<i32>(var_1.c.b.x, global0.b.x, -4764i)), var_1.c, vec2<u32>(abs(1u), select(_wgslsmith_mod_u32(var_1.d.x, 1u), var_0.a.a.x, global2.x)));
    var_2 = var_0;
    return _wgslsmith_f_op_f32(select(-472f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1088f, 1053f, global2.x))))), global2.x));
}

fn func_4(arg_0: f32) -> vec4<bool> {
    var var_0 = abs(~(~select(vec3<u32>(27609u, 4784u, 32968u), global0.a.zxy, global2.x) ^ (~vec3<u32>(global0.a.x, global0.a.x, u_input.a) | global0.a.xwy)));
    return !(!vec4<bool>(false, global2.x, !(global2.x & global2.x), all(vec4<bool>(false, global2.x, false, true)) || false));
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = arg_0 | !(!arg_0);
    global2 = func_4(_wgslsmith_f_op_f32(func_3()));
    var var_1 = Struct_2(Struct_1(~(~vec4<u32>(1u, u_input.a, global0.a.x, u_input.a)), max(vec3<i32>(1i, _wgslsmith_div_i32(0i, global0.b.x), _wgslsmith_div_i32(global0.b.x, -45813i)), global0.b)), Struct_1(~global0.a, abs(vec3<i32>(min(-2147483647i, -31322i), _wgslsmith_mult_i32(global0.b.x, -18947i), i32(-1i) * -46849i))), Struct_1(vec4<u32>(abs(_wgslsmith_dot_vec4_u32(global0.a, global0.a)), 4294967295u, 828u, firstLeadingBit(_wgslsmith_mod_u32(u_input.a, global0.a.x))), global0.b), vec2<u32>(firstTrailingBit(~25719u) >> (u_input.a % 32u), 34184u));
    var var_2 = Struct_2(var_1.c, Struct_1(countOneBits(abs(vec4<u32>(24897u, var_1.d.x, var_1.c.a.x, global0.a.x))), vec3<i32>(max(global0.b.x, global0.b.x) & abs(-11763i), 0i, _wgslsmith_dot_vec4_i32(-vec4<i32>(global0.b.x, global0.b.x, -1i, 0i), countOneBits(vec4<i32>(global0.b.x, var_1.a.b.x, 2147483647i, 61187i))))), var_1.b, max(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_div_u32(5386u, global0.a.x), _wgslsmith_dot_vec3_u32(var_1.a.a.yzx, vec3<u32>(u_input.a, var_1.d.x, 4294967295u))), vec2<u32>(u_input.a | 28139u, _wgslsmith_div_u32(20694u, 4294967295u))), ~select(select(vec2<u32>(var_1.a.a.x, 4294967295u), vec2<u32>(u_input.a, 4294967295u), vec2<bool>(arg_0, true)), var_1.a.a.zy & vec2<u32>(17022u, var_1.c.a.x), vec2<bool>(arg_0, arg_0))));
    var var_3 = true;
    return ~min(u_input.a, 0u);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>) -> vec4<bool> {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -293f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-572f * 1f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1249f - 372f)))));
    var var_0 = ~(-6636i) >> ((_wgslsmith_add_u32(~func_2(false), 0u) << (~0u % 32u)) % 32u);
    var_0 = -13458i;
    return vec4<bool>(!global2.x, global2.x != (max(u_input.a, global0.a.x) > min(global0.a.x, ~global0.a.x)), !(global2.x | global2.x), func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -762f))))).x);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_mod_u32(1u, 4294967295u);
    var var_1 = -2147483647i >> (0u % 32u);
    let var_2 = arg_1;
    global0 = var_2;
    var var_3 = Struct_2(var_2, Struct_1(_wgslsmith_mod_vec4_u32(~global0.a, ~(arg_1.a | global0.a)), global0.b), Struct_1(vec4<u32>(countOneBits(firstTrailingBit(u_input.a)), ~arg_1.a.x, _wgslsmith_div_u32(var_2.a.x, 4294967295u), ~4294967295u), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-1i, 21003i, -18516i), reverseBits(global0.b.x)), -34504i, 35073i)), arg_1.a.zy);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~u_input.a);
    let var_1 = ~(-global0.b.yz & max(firstLeadingBit(global0.b.xx >> (global0.a.wy % vec2<u32>(32u))), vec2<i32>(_wgslsmith_sub_i32(15384i, global0.b.x), ~global0.b.x)));
    global2 = !(!vec4<bool>(false, select(global2.x, global2.x, global2.x) | true, func_5(func_1(Struct_2(Struct_1(global0.a, vec3<i32>(var_1.x, 0i, 0i)), Struct_1(global0.a, global0.b), Struct_1(global0.a, vec3<i32>(var_1.x, -1i, -2147483647i)), global0.a.zx), vec4<i32>(-2147483647i, var_1.x, 2147483647i, var_1.x)), Struct_1(vec4<u32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x), global0.b)), true));
    global2 = vec4<bool>(_wgslsmith_f_op_f32(round(2236f)) != _wgslsmith_f_op_f32(f32(-1f) * -287f), global2.x, global2.x, global2.x);
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1883f, _wgslsmith_f_op_f32(min(722f, -455f)), !global2.x)) + -488f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1847f), -587f)), 1f, (global2.x && true) && false));
    global2 = !vec4<bool>(global2.x, -808f != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1547f + 1118f), _wgslsmith_f_op_f32(-232f - 1097f), all(vec4<bool>(global2.x, false, global2.x, global2.x)))), false, any(!select(vec4<bool>(global2.x, global2.x, global2.x, true), vec4<bool>(false, false, global2.x, global2.x), global2.x)));
    var var_2 = Struct_1(max(global0.a, select(global0.a, countOneBits(vec4<u32>(4294967295u, u_input.a, 0u, 1261u) ^ global0.a), global2.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.b.x, 1i), vec2<i32>(global0.b.x, global0.b.x) >> (vec2<u32>(u_input.a, global0.a.x) % vec2<u32>(32u))), _wgslsmith_sub_i32(_wgslsmith_mult_i32(-19698i, var_1.x), 16978i), firstLeadingBit(-14875i)), global0.b | global0.b));
    global0 = Struct_1(vec4<u32>(global0.a.x, 90467u, min(7529u ^ var_2.a.x, var_2.a.x), ~global0.a.x), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(~(var_2.b | vec3<i32>(var_1.x, global0.b.x, var_1.x)), global0.b), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, global0.b.x, select(-40610i, 0i, global2.x)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(15973i, global0.b.x, 19885i, var_2.b.x), vec4<i32>(12252i, var_1.x, 6754i, var_1.x)), ~global0.b.x, var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-49064i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(trunc(-930f))))), -abs(-7661i), var_2.a.ww);
}

