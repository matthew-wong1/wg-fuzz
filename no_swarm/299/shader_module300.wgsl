struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<u32>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> bool {
    var var_0 = Struct_1(max(~global0.a, vec3<u32>(_wgslsmith_add_u32(4294967295u, global0.a.x), ~0u, u_input.d)), -(abs(_wgslsmith_mult_i32(u_input.e, 1i)) | -reverseBits(global0.b)));
    global1 = vec2<u32>(abs(abs(~111619u)), u_input.c);
    global0 = Struct_1(abs(vec3<u32>(firstLeadingBit(1u), 4294967295u, var_0.a.x)), global0.b);
    var_0 = Struct_1(abs(~(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, 3906u, u_input.c), vec3<u32>(0u, 18675u, 4294967295u)))), abs(_wgslsmith_dot_vec2_i32(~u_input.b.xz & reverseBits(vec2<i32>(36994i, u_input.e)), abs(-vec2<i32>(0i, u_input.e)))));
    var var_1 = ~(abs(countOneBits(vec2<u32>(var_0.a.x, global0.a.x))) >> ((vec2<u32>(0u, ~52178u) << (vec2<u32>(~30940u, min(u_input.a, global0.a.x)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1658f - 2203f) + -547f)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1786f, _wgslsmith_f_op_f32(max(-1374f, 1609f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(909f))))));
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -418f);
    var_0 = _wgslsmith_f_op_f32(-1000f - 1f);
    var var_1 = select(!vec2<bool>(arg_0.x, select(true, true, true)), !vec2<bool>(all(vec2<bool>(arg_0.x, true)) & true, any(vec2<bool>(false, true))), !select(arg_0.yy, vec2<bool>(true, true), true));
    global1 = firstLeadingBit(~abs(vec2<u32>(global1.x, global1.x)));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-872f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(503f * -1781f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1189f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(2050f, -998f)), -816f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(964f, 150f, -936f, -916f), vec4<f32>(504f, -600f, 337f, -484f)))))), vec4<bool>(!all(!vec4<bool>(arg_0.x, false, false, true)), true, true, !var_1.x && all(vec3<bool>(var_1.x, var_1.x, false)))));
    return _wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(floor(var_2.x)), !var_1.x));
}

fn func_2() -> vec3<u32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_4(select(vec4<bool>(all(vec3<bool>(false, false, false)), true, global0.a.x > 4108u, true), vec4<bool>(true, true, true, true), func_3()), 0u, Struct_1(~global0.a, global0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -131f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1226f)))));
    var var_1 = Struct_1(global0.a, u_input.e);
    var var_2 = ~abs(vec4<u32>(4294967295u, 28579u, global0.a.x, 1u));
    let var_3 = 21809i;
    var var_4 = Struct_1(var_2.zyx, abs(min(-1i, _wgslsmith_add_i32(_wgslsmith_sub_i32(-2147483647i, var_3), reverseBits(var_3)))));
    return var_2.zxy;
}

fn func_5(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec3<u32>(14177u, 71543u, global0.a.x);
    global1 = arg_2.a.zx;
    var var_1 = arg_2;
    var_1 = Struct_1(firstTrailingBit(countOneBits((global0.a | arg_2.a) ^ global0.a)), -34851i);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1136f, 425f), vec2<f32>(-1561f, 1528f), arg_1.x)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-112f, -156f) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1132f, 1591f)))))));
    return Struct_1(abs(_wgslsmith_mod_vec3_u32(~select(vec3<u32>(34577u, 4294967295u, 63915u), vec3<u32>(51570u, 6386u, 44293u), arg_1.zxx), ~(~global0.a))), var_1.b);
}

fn func_6(arg_0: u32, arg_1: vec2<f32>, arg_2: bool, arg_3: Struct_1) -> vec3<f32> {
    global0 = Struct_1(~abs(~(~global0.a)), -_wgslsmith_mult_i32(reverseBits(-30494i), _wgslsmith_div_i32(-1i, arg_3.b)) << (global0.a.x % 32u));
    var var_0 = u_input.b;
    var var_1 = select(!vec4<bool>(!any(vec3<bool>(arg_2, true, arg_2)), true, !arg_2, arg_2), vec4<bool>(false, arg_2, !any(!vec4<bool>(arg_2, true, false, arg_2)), ~global0.a.x == u_input.d), select(!select(true, arg_2, true) & false, true && arg_2, arg_2));
    let var_2 = -77665i;
    var var_3 = global1.x;
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -785f), 943f, 1f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.x, -469f, -746f))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(433f, -778f, arg_1.x))))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -978f, arg_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1779f, arg_1.x, arg_1.x)))))));
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_6(global0.a.x, vec2<f32>(arg_0.x, arg_0.x), false, func_5(_wgslsmith_sub_i32(0i, _wgslsmith_mod_i32(u_input.e, -24512i)), vec4<bool>(true, true, any(vec3<bool>(true, false, false)), true), Struct_1(func_2(), countOneBits(u_input.b.x))))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(arg_0)))));
    var var_1 = Struct_1(abs(global0.a), 0i);
    global1 = _wgslsmith_div_vec2_u32(vec2<u32>(func_5(u_input.b.x, vec4<bool>(false, false, true, true), func_5(u_input.b.x, vec4<bool>(false, false, true, true), Struct_1(global0.a, var_1.b))).a.x, _wgslsmith_div_u32(func_2().x, global1.x & 1u)), global0.a.xx | var_1.a.xz) << (firstLeadingBit(_wgslsmith_sub_vec2_u32(~_wgslsmith_div_vec2_u32(global0.a.zy, global0.a.xz), ~vec2<u32>(u_input.d, 4294967295u))) % vec2<u32>(32u));
    let var_2 = u_input.a;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x)));
    return func_5(func_5(~var_1.b, !vec4<bool>(all(vec4<bool>(true, true, false, false)), false, true, true), func_5(u_input.e, vec4<bool>(true, true, true, true), func_5(u_input.b.x >> (var_2 % 32u), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), false), func_5(-49647i, vec4<bool>(false, true, false, true), Struct_1(vec3<u32>(6890u, var_2, 57123u), -2147483647i))))).b, select(vec4<bool>(all(vec2<bool>(false, false)), !any(vec2<bool>(false, false)), !any(vec3<bool>(false, false, true)), true), !(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false))), !(983f >= _wgslsmith_f_op_f32(sign(var_3)))), Struct_1(var_1.a, ~(-1i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2350f, -312f, 1629f)))));
    global0 = Struct_1(~(func_1(vec3<f32>(162f, 272f, -501f)).a >> (~vec3<u32>(u_input.c, 1u, 54397u) % vec3<u32>(32u))) >> ((~reverseBits(vec3<u32>(26384u, 1u, global1.x)) ^ vec3<u32>(~global1.x, u_input.c, 4294967295u)) % vec3<u32>(32u)), reverseBits(1i));
    let var_0 = Struct_1(_wgslsmith_div_vec3_u32(global0.a << ((vec3<u32>(u_input.a, u_input.a, 1u) | vec3<u32>(u_input.a, u_input.c, global0.a.x)) % vec3<u32>(32u)), vec3<u32>(4294967295u & global0.a.x, global0.a.x | 0u, ~global1.x)) | reverseBits(vec3<u32>(max(1u, 33842u), _wgslsmith_div_u32(u_input.d, 16571u), _wgslsmith_dot_vec4_u32(vec4<u32>(53872u, 1u, 4294967295u, 30811u), vec4<u32>(70393u, global0.a.x, 5798u, 4294967295u)))), -2147483647i);
    let var_1 = Struct_1(min(vec3<u32>(global0.a.x, ~global0.a.x, ~global1.x), abs(global0.a)), firstLeadingBit(34875i));
    let var_2 = true;
    let var_3 = -627f;
    global1 = _wgslsmith_add_vec2_u32(select(func_1(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_3, 1521f, var_3), vec3<f32>(var_3, var_3, 689f)), vec3<f32>(876f, var_3, 934f))).a.zz, vec2<u32>(func_5(var_0.b, vec4<bool>(var_2, true, var_2, var_2), var_0).a.x | _wgslsmith_add_u32(4294967295u, u_input.c), _wgslsmith_mod_u32(1u, 1u)), !(!vec2<bool>(var_2, var_2))), var_1.a.yy);
    global1 = countOneBits(_wgslsmith_sub_vec2_u32(var_0.a.zy ^ ~var_1.a.yy, abs(vec2<u32>(var_1.a.x, var_1.a.x)))) << (vec2<u32>(~abs(_wgslsmith_mod_u32(23595u, 4182u)), reverseBits(firstTrailingBit(7372u >> (u_input.d % 32u)))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(562f, _wgslsmith_div_f32(1000f, var_3))))));
}

