struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: bool,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32) -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(316f, _wgslsmith_f_op_f32(f32(-1f) * -991f), -1000f, _wgslsmith_f_op_f32(-268f - -1631f)))) - vec4<f32>(_wgslsmith_f_op_f32(-1f), 956f, -385f, 1f)), Struct_1(_wgslsmith_div_f32(2019f, -1791f), !vec4<bool>(false, true, all(vec2<bool>(false, true)), true)));
    let var_1 = Struct_3(var_0.b, firstLeadingBit(-1i), Struct_1(_wgslsmith_f_op_f32(-var_0.a.x), vec4<bool>(max(4294967295u, 19170u) >= u_input.d.x, true, any(select(vec4<bool>(true, var_0.b.b.x, false, var_0.b.b.x), var_0.b.b, var_0.b.b.x)), true)), !(select(-45137i, 21779i, select(var_0.b.b.x, false, var_0.b.b.x)) < countOneBits(abs(0i))), abs(vec3<i32>(-1i) * -select(vec3<i32>(-2147483647i, u_input.e.x, u_input.a.x), u_input.a, vec3<bool>(var_0.b.b.x, false, true))));
    let var_2 = _wgslsmith_add_vec2_i32(arg_0.zy, vec2<i32>(-58903i, -(u_input.a.x >> (u_input.d.x % 32u)) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, var_1.e.x), var_1.e.zy)));
    let var_3 = var_0;
    var var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a.x * 976f))))), 517f));
    return -883f;
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -240f)), _wgslsmith_f_op_f32(func_3(u_input.a, u_input.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1860f + 2258f)), -701f))), Struct_1(367f, vec4<bool>(true, false, all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), true)), true)));
    return Struct_4(var_0.b);
}

fn func_4(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: Struct_3) -> Struct_1 {
    return arg_2.a;
}

fn func_5(arg_0: Struct_5, arg_1: Struct_4) -> Struct_4 {
    var var_0 = arg_0.a;
    let var_1 = arg_1.a;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(438f, var_1.a), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.b.a, var_0.a.x))))))));
    let var_3 = ~abs(arg_0.d.x);
    var_0 = arg_0.a;
    return Struct_4(arg_0.a.b);
}

fn func_1(arg_0: bool) -> Struct_4 {
    var var_0 = _wgslsmith_add_vec2_u32(select(vec2<u32>(17278u, u_input.c) ^ vec2<u32>(33107u, u_input.d.x), vec2<u32>(44198u, 65382u), vec2<bool>(arg_0, arg_0)) << (abs(u_input.d.ww) % vec2<u32>(32u)), vec2<u32>(1u, firstLeadingBit(u_input.c ^ 28080u))) >> ((abs(~(~vec2<u32>(u_input.d.x, u_input.c))) & abs(abs(u_input.d.zx))) % vec2<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(550f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1818f) - -910f)))));
    let var_2 = _wgslsmith_mod_vec2_u32(~(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d.x, var_0.x), u_input.d.xz)), ~(~vec2<u32>(2176u, 16u))) >> (reverseBits(vec2<u32>(~u_input.c, u_input.c) >> (vec2<u32>(abs(57818u), firstTrailingBit(u_input.d.x)) % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -438f), _wgslsmith_f_op_f32(1816f * -1000f), _wgslsmith_f_op_f32(433f + 192f), _wgslsmith_f_op_f32(-1172f * 3118f)))));
    var_0 = ~vec2<u32>(var_2.x, u_input.d.x);
    return func_5(Struct_5(Struct_2(var_3, func_4(func_2(), vec4<bool>(true, true, arg_0, false), Struct_3(Struct_1(212f, vec4<bool>(false, arg_0, arg_0, arg_0)), u_input.e.x, Struct_1(var_3.x, vec4<bool>(arg_0, false, arg_0, false)), arg_0, vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i)))), func_2().a.b.xww, vec2<bool>(true, true), ~countOneBits(u_input.d.zwz | vec3<u32>(41313u, var_0.x, 0u))), func_2());
}

fn func_6(arg_0: Struct_4, arg_1: vec2<f32>) -> vec3<f32> {
    let var_0 = Struct_5(Struct_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-455f, arg_1.x, arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -925f)))), func_4(arg_0, arg_0.a.b, Struct_3(arg_0.a, abs(u_input.e.x), func_1(false).a, u_input.c == 4294967295u, u_input.e.xwx ^ u_input.e.xwx))), arg_0.a.b.wzz, arg_0.a.b.xx, _wgslsmith_mod_vec3_u32(select(~_wgslsmith_mod_vec3_u32(u_input.d.wyz, u_input.d.wyy), reverseBits(vec3<u32>(u_input.d.x, u_input.c, u_input.c)) << (select(vec3<u32>(1u, 20682u, u_input.c), u_input.d.zyx, arg_0.a.b.yzw) % vec3<u32>(32u)), true), u_input.d.zzx));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -156f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-func_5(var_0, arg_0).a.a), _wgslsmith_f_op_f32(-var_0.a.a.x))));
    let var_2 = !(~(~(~1u)) > u_input.d.x);
    var var_3 = _wgslsmith_mod_vec3_i32(u_input.e.yxz ^ ~abs(u_input.b), abs(u_input.a));
    var var_4 = arg_0.a.b.x;
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a.a.wzw * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-299f, arg_0.a.a, -250f))))), var_0.a.a.xzw, func_5(var_0, Struct_4(func_5(var_0, arg_0).a)).a.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -800f;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_6(func_1(true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(646f, -663f), vec2<f32>(var_0, 951f)))))))) + _wgslsmith_f_op_vec3_f32(func_6(func_2(), _wgslsmith_f_op_vec3_f32(func_6(Struct_4(func_2().a), vec2<f32>(func_5(Struct_5(Struct_2(vec4<f32>(var_0, var_0, var_0, -296f), Struct_1(var_0, vec4<bool>(false, true, false, false))), vec3<bool>(true, true, false), vec2<bool>(false, false), vec3<u32>(u_input.c, u_input.d.x, u_input.d.x)), Struct_4(Struct_1(var_0, vec4<bool>(true, true, false, false)))).a.a, _wgslsmith_f_op_f32(step(-746f, var_0))))).yz)));
    var var_2 = 137f;
    var_2 = 503f;
    var var_3 = Struct_4(func_2().a);
    var_2 = -1000f;
    let x = u_input.a;
    s_output = StorageBuffer(-106f, ~vec2<u32>(u_input.c, 49786u), vec2<f32>(-1680f, var_0));
}

