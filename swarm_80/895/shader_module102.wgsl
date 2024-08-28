struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: bool,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(619f, -1000f);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    global0 = vec2<f32>(-604f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -507f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(sign(510f)))))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(1622f + global0.x)), -2147483647i <= u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-251f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, global0.x, false)))) - _wgslsmith_f_op_f32(step(global0.x, 1181f))));
    var var_0 = Struct_4(u_input.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(456f - global0.x)), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(f32(-1f) * -676f)), -831f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-433f, global0.x, -211f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1116f, -118f, -240f)))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), abs(vec3<u32>(1u, 1u, 1u)), u_input.b.x <= (48820i & (u_input.b.x << (28679u % 32u))), _wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.b.x, u_input.c), ~vec2<i32>(21801i, u_input.c)), global0.x), _wgslsmith_div_vec3_i32(vec3<i32>(-u_input.b.x | -40423i, _wgslsmith_div_i32(u_input.a, -u_input.a), ~(-u_input.c)), -(~u_input.b.wxz)), vec4<u32>(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(22665u, 1u), 1u), ~17367u, countOneBits(~4294967295u), ~(~1u)));
    var var_1 = Struct_4(_wgslsmith_div_i32(u_input.a, _wgslsmith_div_i32(select(var_0.d.x, 2147483647i, false), -u_input.b.x)) & _wgslsmith_mult_i32(-var_0.c.d.x, ~_wgslsmith_mult_i32(var_0.c.d.x, u_input.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.b, vec3<f32>(-783f, _wgslsmith_f_op_f32(f32(-1f) * -1422f), -215f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(global0.x, -1056f, var_0.c.c)), _wgslsmith_f_op_f32(f32(-1f) * -1753f), _wgslsmith_f_op_f32(global0.x + -874f)))), var_0.c, u_input.b.zyz, ~var_0.e);
    let var_2 = var_0.c.b >> ((vec3<u32>(var_1.e.x | countOneBits(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_1.c.b.x), var_0.c.b.zx) ^ 1u, var_1.e.x) >> (~(~_wgslsmith_mod_vec3_u32(var_0.e.zzy, vec3<u32>(11257u, 62166u, var_0.e.x))) % vec3<u32>(32u))) % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(1884f - _wgslsmith_f_op_f32(-112f * _wgslsmith_div_f32(var_1.b.x, var_1.b.x)));
}

fn func_2(arg_0: f32) -> f32 {
    global0 = _wgslsmith_div_vec2_f32(vec2<f32>(-949f, arg_0), vec2<f32>(global0.x, _wgslsmith_f_op_f32(-1112f * _wgslsmith_f_op_f32(-global0.x))));
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(f32(-1f) * -870f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-612f, _wgslsmith_f_op_f32(max(417f, global0.x)), 842f))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_0.xy))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_0.zx - vec2<f32>(var_0.x, 382f)), var_0.xy)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, -1025f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-701f, -626f) - _wgslsmith_f_op_vec2_f32(select(var_0.xy, var_0.zx, vec2<bool>(true, false))))))));
    var var_1 = Struct_3(abs(4294967295u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(-1513f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(163f, -448f))))));
}

fn func_4(arg_0: i32, arg_1: vec3<f32>) -> Struct_2 {
    var var_0 = vec2<u32>(4294967295u, firstLeadingBit(~28706u));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(888f, arg_1.x, 826f, 1000f))))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-296f, arg_1.x, 469f, 321f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-192f, global0.x, -945f, global0.x)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1643f + global0.x), -818f, _wgslsmith_f_op_f32(floor(global0.x)), arg_1.x))));
    var var_2 = all(select(select(vec3<bool>(true, 32772u < var_0.x, u_input.b.x <= u_input.a), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), true), vec3<bool>(all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true))), true, false), select(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), vec3<bool>(all(vec4<bool>(false, false, true, true)), true, false))));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_1.x), vec3<u32>(25452u, var_0.x, 49057u), var_0.x <= _wgslsmith_mod_u32(var_0.x, 36138u >> (1u % 32u)), u_input.b.yy | -_wgslsmith_clamp_vec2_i32(vec2<i32>(37777i, -1i), u_input.b.yx, u_input.b.zx), global0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(var_1.x))))) > var_1.x);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> Struct_4 {
    let var_0 = firstTrailingBit(vec2<i32>(-37518i, u_input.c));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, -339f))) + 875f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, -602f)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1362f)))))), vec3<u32>(_wgslsmith_div_u32(arg_0.a.b.x, ~_wgslsmith_mod_u32(arg_1.a, arg_0.a.b.x)), ~(arg_1.a & 0u), arg_1.a << (1u % 32u)), false, ~var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -974f))));
    var var_3 = arg_1;
    var_3 = Struct_3(56319u);
    return Struct_4(-2147483647i & select(abs(_wgslsmith_clamp_i32(-2147483647i, var_2.d.x, 1i)), var_2.d.x, !(!arg_0.a.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1080f, -649f, var_2.a)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.a, global0.x, 702f), vec3<f32>(var_1.x, 1000f, var_2.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, var_1.x, -286f)))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(trunc(-1330f)), arg_0.a.e, -1047f)))), func_4(firstLeadingBit(i32(-1i) * -arg_0.a.d.x), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-577f * -1000f), -1635f, 1000f)))).a, vec3<i32>(~select(var_0.x, arg_0.a.d.x, false) << (_wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_0.a.b.x, var_3.a), var_3.a) % 32u), select(~u_input.c ^ select(-17447i, 2147483647i, false), 1i, !arg_0.a.c & arg_0.a.c), firstTrailingBit(min(2147483647i, ~(-1i)))), vec4<u32>(_wgslsmith_sub_u32(func_4(u_input.c, vec3<f32>(464f, var_2.e, var_2.a)).a.b.x, 1u) << (_wgslsmith_mult_u32(0u, ~0u) % 32u), ~1u << (firstLeadingBit(max(arg_0.a.b.x, 1u)) % 32u), countOneBits(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_2.b.x, 67185u, 0u, var_2.b.x), vec4<u32>(var_2.b.x, var_2.b.x, 4294967295u, var_3.a)), vec4<u32>(45056u, 4294967295u, 11005u, 0u))), var_3.a));
}

fn func_1() -> vec2<u32> {
    var var_0 = func_5(func_4(~(~u_input.c) & 2147483647i, vec3<f32>(845f, 913f, _wgslsmith_f_op_f32(func_2(global0.x)))), Struct_3(firstLeadingBit(122315u)));
    var_0 = Struct_4(40191i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(721f, 203f, -514f)))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-584f - -256f) + _wgslsmith_f_op_f32(sign(global0.x))), min(min(vec3<u32>(1u, var_0.e.x, 0u), var_0.c.b << (var_0.c.b % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 0u, 1u), vec3<u32>(var_0.c.b.x, 5351u, var_0.c.b.x))), any(vec3<bool>(var_0.c.c | var_0.c.c, false, var_0.c.c)), ~(vec2<i32>(var_0.c.d.x, var_0.a) << (vec2<u32>(var_0.c.b.x, 0u) % vec2<u32>(32u))), -852f), var_0.d, ~var_0.e);
    var var_1 = Struct_3(~var_0.e.x);
    var_0 = func_5(func_4(var_0.c.d.x, var_0.b), Struct_3(~1u));
    let var_2 = vec2<u32>(var_1.a, _wgslsmith_sub_u32(0u, ~_wgslsmith_add_u32(var_1.a, 1u))) | (~(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.e.x, 0u), var_0.c.b.xy)) >> (~countOneBits(vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u)));
    return vec2<u32>(~var_2.x, ~(~var_0.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 899f)))) + vec2<f32>(_wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global0.x, -654f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-433f, -1265f), vec2<f32>(1285f, -696f), vec2<bool>(false, true))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1084f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.x, global0.x))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1886f, global0.x), vec2<f32>(-776f, 1298f), vec2<bool>(false, false))))))));
    var var_0 = min(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~(~func_1())), max(1u, ~_wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, 4294967295u), _wgslsmith_mult_u32(1u, 1u))));
    var_0 = ~func_1().x;
    var var_1 = vec2<f32>(-843f, _wgslsmith_f_op_f32(-global0.x));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(893f, 422f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -1000f) * vec2<f32>(global0.x, -421f)), vec2<bool>(false, false))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(357f, 1297f)))))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-602f, 125f) - vec2<f32>(693f, global0.x)))))));
    let var_2 = _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-global0.x)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(u_input.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -505f, 329f) * vec3<f32>(global0.x, 546f, 1628f))).a.e + _wgslsmith_f_op_f32(sign(1000f))) - _wgslsmith_f_op_f32(f32(-1f) * -466f));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<i32>(48386i, u_input.c, func_5(Struct_2(Struct_1(427f, vec3<u32>(4294967295u, 0u, 0u), var_2, u_input.b.zy, -1276f), false), Struct_3(91532u)).a, i32(-1i) * -34941i), vec4<i32>(-u_input.c, func_4(u_input.a, vec3<f32>(var_1.x, var_1.x, var_1.x)).a.d.x, u_input.c, u_input.a)) | vec4<i32>(0i, ~1i, countOneBits(-12836i), u_input.a), u_input.b.yxz, ~(-40576i));
}

