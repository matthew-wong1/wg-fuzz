struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: Struct_2;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec3<bool> {
    let var_0 = reverseBits(select(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.b.zzw, u_input.b.xwy), 0u), abs(min(u_input.b.x, 65738u)), !any(global0.xx)) | 4294967295u);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.d.x, arg_0.d.x) - arg_0.d.zw), vec2<f32>(1000f, 795f)))), _wgslsmith_mult_u32(arg_0.c, ~u_input.b.x) <= var_0, firstLeadingBit(arg_0.c), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(global1.c.d)), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-577f)), -747f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(global1.a.a.x)))), _wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-664f)), global1.a.d.x)), true)));
    var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1528f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) + _wgslsmith_f_op_f32(step(636f, 429f))))), -1131f), any(select(select(!vec4<bool>(arg_1, var_1.b, true, true), vec4<bool>(global0.x, global0.x, true, true), global1.b.x), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, global1.c.b, true), true), select(false, all(vec3<bool>(global0.x, true, true)), true))), countOneBits(_wgslsmith_mult_u32(80942u, ~(~arg_0.c))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(1023f)), var_1.a.x, arg_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1450f))), arg_0.d)));
    global1 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(round(-121f))), global0.x, 111375u, vec4<f32>(arg_0.d.x, 120f, 952f, _wgslsmith_f_op_f32(max(-1097f, -460f)))), global0.xz, Struct_1(_wgslsmith_f_op_vec2_f32(var_1.d.xx * _wgslsmith_f_op_vec2_f32(step(global1.a.d.zx, vec2<f32>(global1.a.a.x, 148f)))), select(!arg_0.b, global1.a.b, !global0.x), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(select(u_input.c, 1u, true), 20254u >> (u_input.b.x % 32u)), u_input.b.x, _wgslsmith_mod_u32(u_input.c, u_input.c) ^ 57663u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.d.x, arg_0.a.x, -455f, -1374f)))))), ~(~(~u_input.b.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(global1.a.d.xx)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.a.x, arg_0.d.x), vec2<f32>(433f, global1.c.a.x))), global1.c.a)))));
    return !(!(!select(select(vec3<bool>(arg_0.b, arg_1, false), vec3<bool>(false, global1.a.b, true), arg_1), vec3<bool>(arg_0.b, var_1.b, global1.b.x), !vec3<bool>(false, global0.x, true))));
}

fn func_2(arg_0: vec4<u32>) -> vec3<f32> {
    global0 = !(!vec3<bool>(global1.a.b, true, min(u_input.a.x, u_input.a.x) > u_input.a.x));
    let var_0 = -_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(4567i, u_input.a.x)), u_input.a.xy), u_input.a.xz);
    let var_1 = global1.c.b || (global0.x && (any(vec2<bool>(false, true)) & global0.x));
    global0 = !vec3<bool>(var_1, false, global0.x);
    global0 = select(!select(!vec3<bool>(false, true, var_1), func_3(Struct_1(vec2<f32>(global1.c.a.x, -444f), false, global1.c.c, vec4<f32>(global1.c.d.x, -390f, -280f, global1.a.d.x)), true), true), select(vec3<bool>(true, global1.a.b, !global1.c.b), select(!select(vec3<bool>(global0.x, false, true), vec3<bool>(true, true, false), vec3<bool>(false, var_1, false)), vec3<bool>(any(vec3<bool>(false, global1.b.x, false)), false, global0.x), all(vec2<bool>(global1.a.b, global0.x)) && select(true, true, false)), !(!select(vec3<bool>(global1.c.b, true, var_1), vec3<bool>(false, global0.x, global0.x), true))), vec3<bool>(false, !(!any(vec3<bool>(true, true, false))), var_1));
    return vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1140f)), 885f)), _wgslsmith_f_op_f32(ceil(global1.c.d.x)), _wgslsmith_f_op_f32(trunc(917f)));
}

fn func_4(arg_0: vec3<f32>) -> Struct_2 {
    global0 = !func_3(global1.a, true);
    var var_0 = Struct_2(global1.c, !(!vec2<bool>(global1.c.b, global0.x)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(1026f, global1.a.d.x), arg_0.x)), !all(vec4<bool>(false, global1.c.b, false, false)), _wgslsmith_mod_u32(firstLeadingBit(422u) >> ((1u | global1.d) % 32u), ~47411u), global1.c.d), 16731u & u_input.c);
    var_0 = Struct_2(var_0.c, !var_0.b, Struct_1(var_0.c.d.wz, all(vec2<bool>(global0.x, all(vec3<bool>(false, global1.c.b, global0.x)))), reverseBits(_wgslsmith_clamp_u32(global1.a.c, ~global1.d, firstTrailingBit(var_0.d))), _wgslsmith_f_op_vec4_f32(-var_0.a.d)), global1.c.c);
    var_0 = Struct_2(Struct_1(var_0.c.a, !((u_input.a.x >> (var_0.d % 32u)) <= _wgslsmith_dot_vec3_i32(u_input.a, u_input.a)), min(_wgslsmith_sub_u32(_wgslsmith_mod_u32(global1.a.c, 4294967295u), 72630u), 60812u), vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(1140f + arg_0.x), _wgslsmith_f_op_f32(-var_0.c.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.d.x)))), global0.xz, Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(sign(arg_0.x)), 756f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1144f, arg_0.x)))))), true, ~_wgslsmith_dot_vec3_u32(u_input.b.yxy, select(u_input.b.zwy, vec3<u32>(var_0.a.c, 0u, 42986u), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a.d * _wgslsmith_f_op_vec4_f32(max(global1.c.d, var_0.c.d))))), _wgslsmith_div_u32(_wgslsmith_mod_u32(~1u, 37807u), ~(~u_input.c)));
    global0 = vec3<bool>(_wgslsmith_dot_vec2_u32(min(reverseBits(vec2<u32>(4294967295u, 1u)), vec2<u32>(global1.c.c, u_input.b.x)), _wgslsmith_add_vec2_u32(countOneBits(u_input.b.yy), _wgslsmith_clamp_vec2_u32(u_input.b.wx, u_input.b.yx, vec2<u32>(4294967295u, 53091u)))) <= _wgslsmith_mod_u32(var_0.a.c, u_input.c), var_0.a.b, global0.x | global0.x);
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.zx), vec2<f32>(global1.a.d.x, global1.c.d.x))), func_3(Struct_1(vec2<f32>(var_0.c.a.x, -909f), global1.a.b, 0u, vec4<f32>(1752f, global1.c.d.x, -457f, -1414f)), false).x, 64860u, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1363f, arg_0.x, global1.c.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_0.a.d)))))), vec2<bool>(true, all(vec4<bool>(true, true, var_0.b.x, func_3(global1.a, false).x))), Struct_1(vec2<f32>(1788f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.a.d.x), _wgslsmith_f_op_f32(global1.c.a.x + 248f)))), false, u_input.c, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.d.x, arg_0.x, arg_0.x, 1310f) + _wgslsmith_f_op_vec4_f32(trunc(var_0.a.d)))))), u_input.c);
}

fn func_1() -> i32 {
    var var_0 = i32(-1i) * -43662i;
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(~u_input.b))), vec3<f32>(-1085f, _wgslsmith_f_op_vec3_f32(func_2(vec4<u32>(1u, u_input.c, u_input.c, 10376u))).x, global1.c.d.x), !select(vec3<bool>(false, false, true), vec3<bool>(false, global0.x, false), vec3<bool>(true, global0.x, true)))));
    var var_2 = -2147483647i & u_input.a.x;
    global1 = func_4(global1.c.d.zxz);
    var var_3 = select(var_1.c.b, !all(vec4<bool>(any(vec3<bool>(true, global0.x, global0.x)), func_3(var_1.c, false).x, func_4(vec3<f32>(global1.a.a.x, -366f, 585f)).b.x, global0.x)), select(true, !(!func_4(vec3<f32>(global1.a.d.x, global1.a.a.x, var_1.c.d.x)).b.x), (_wgslsmith_mod_u32(global1.a.c, var_1.c.c) != _wgslsmith_mod_u32(0u, var_1.c.c)) && global0.x));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global1.b.x;
    var_0 = !any(select(select(select(vec4<bool>(false, global1.b.x, true, false), vec4<bool>(true, false, true, global0.x), global0.x), !vec4<bool>(global1.c.b, global0.x, false, global1.b.x), !vec4<bool>(global1.a.b, true, false, global0.x)), select(select(vec4<bool>(global1.b.x, true, true, false), vec4<bool>(false, global0.x, false, false), true), vec4<bool>(global1.c.b, global0.x, false, global0.x), !vec4<bool>(global0.x, true, false, global0.x)), _wgslsmith_f_op_f32(ceil(-315f)) > _wgslsmith_f_op_f32(697f * global1.c.d.x)));
    let var_1 = -(~vec4<i32>(func_1(), select(13913i, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), true), -1i, u_input.a.x));
    var var_2 = 1000f;
    let var_3 = func_4(global1.c.d.yww).a;
    var var_4 = Struct_2(Struct_1(global1.c.d.xx, all(!select(vec2<bool>(true, global0.x), global1.b, vec2<bool>(var_3.b, global1.c.b))), ~abs(8933u), var_3.d), vec2<bool>(any(vec3<bool>(var_3.b, var_3.b || false, func_4(vec3<f32>(-746f, 500f, var_3.a.x)).b.x)), select(!global0.x, any(vec4<bool>(false, global0.x, var_3.b, true)), global0.x)), func_4(global1.a.d.wxw).a, var_3.c);
    var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global1.c.d.x, _wgslsmith_f_op_f32(ceil(var_3.a.x)))), _wgslsmith_div_f32(-142f, -166f)));
    var var_5 = vec3<i32>(u_input.a.x, 1i, _wgslsmith_div_i32(-5505i, u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, (~vec2<u32>(var_4.d, 1u) << (_wgslsmith_clamp_vec2_u32(~vec2<u32>(var_3.c, global1.c.c), vec2<u32>(var_4.d, 1u), min(u_input.b.xw, vec2<u32>(var_3.c, 0u))) % vec2<u32>(32u))) | ~vec2<u32>(min(1u, 0u), 1u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 888f)) - _wgslsmith_f_op_f32(f32(-1f) * -273f)), -119f), u_input.c);
}

