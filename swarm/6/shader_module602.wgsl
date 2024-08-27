struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22> = array<u32, 22>(0u, 20612u, 17463u, 4294967295u, 1u, 110273u, 1u, 36626u, 4345u, 1u, 52693u, 62652u, 4294967295u, 8919u, 0u, 4294967295u, 3173u, 0u, 15662u, 4294967295u, 4294967295u, 0u);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1248f) + _wgslsmith_f_op_f32(f32(-1f) * -986f)), 598f, 271f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2314f, 462f))))));
    var var_1 = Struct_2(var_0);
    let var_2 = u_input.a;
    var var_3 = u_input.d.yy;
    let var_4 = 4294967295u & firstLeadingBit(global0[_wgslsmith_index_u32(u_input.c, 22u)]);
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(var_1.a.a + var_1.a.a)));
}

fn func_2(arg_0: f32) -> Struct_3 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, arg_0, 1728f), vec4<f32>(2010f, arg_0, arg_0, -1000f), vec4<bool>(false, true, false, true))), vec4<f32>(arg_0, arg_0, -229f, -1036f))) - _wgslsmith_f_op_vec4_f32(func_3()))));
    let var_1 = ~(~_wgslsmith_clamp_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, 50495u, u_input.e.x, 58818u)), vec4<u32>(36706u, ~u_input.c, ~27826u, 56298u), ~(~vec4<u32>(7819u, u_input.a, 4294967295u, global0[_wgslsmith_index_u32(0u, 22u)]))));
    var var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_0.a.a.x, -588f, 459f) - vec4<f32>(arg_0, var_0.a.a.x, -275f, var_0.a.a.x)), var_0.a.a, true)))), true, var_1);
    global0 = array<u32, 22>();
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1233f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.x)), -506f, all(select(vec4<bool>(true, var_2.b, var_2.b, var_2.b), vec4<bool>(false, false, var_2.b, var_2.b), vec4<bool>(false, false, true, var_2.b))))))), _wgslsmith_f_op_f32(round(var_2.a.a.a.x)));
    return Struct_3(Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(932f + var_0.a.a.x), _wgslsmith_f_op_f32(-1089f * var_2.a.a.a.x), _wgslsmith_f_op_f32(floor(804f)), 1003f))), true || var_2.b, vec4<u32>(~abs(var_2.c.x) << (var_1.x % 32u), firstLeadingBit(global0[_wgslsmith_index_u32(firstLeadingBit(68687u), 22u)]), min(firstLeadingBit(u_input.e.x), global0[_wgslsmith_index_u32(abs(12880u), 22u)]), ~abs(min(global0[_wgslsmith_index_u32(24351u, 22u)], u_input.a))));
}

fn func_1(arg_0: Struct_5, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = Struct_5(arg_0.a, func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-541f * arg_0.b.a.a.a.x), 1950f))))), !vec4<bool>(arg_0.a.a.x, any(arg_0.c), true, _wgslsmith_f_op_f32(-arg_0.b.a.a.a.x) != _wgslsmith_f_op_f32(arg_0.a.e.a.a.a.x * arg_0.a.e.a.a.a.x)), true || (!all(vec3<bool>(arg_0.b.b, arg_0.d, true)) || any(!vec4<bool>(arg_0.a.e.b, false, arg_0.c.x, arg_0.a.a.x))));
    var var_1 = all(select(vec3<bool>(all(vec4<bool>(true, false, true, false)), var_0.b.b, false), select(var_0.c.wxz, select(vec3<bool>(true, arg_0.a.e.b, arg_0.d), !vec3<bool>(arg_0.b.b, false, false), true), select(var_0.a.a.wzz, arg_0.c.xyx, 0i >= arg_0.a.b.x)), !var_0.a.a.www));
    var var_2 = Struct_2(func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.a.x)))))).a.a);
    let var_3 = arg_0.a;
    let var_4 = select(!(!(!(!vec3<bool>(var_3.e.b, var_3.e.b, arg_0.a.a.x)))), select(var_3.a.ywz, !(!var_0.a.a.ywx), ~(~9630u) != select(_wgslsmith_mod_u32(24038u, 12175u), ~u_input.a, false)), true);
    return var_0.a.a.zxx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), u_input.b <= 0i), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), !func_1(Struct_5(Struct_4(vec4<bool>(true, true, true, true), vec3<i32>(u_input.b, 54630i, u_input.b), vec4<f32>(1271f, 606f, -1000f, -1143f), Struct_1(vec4<f32>(336f, -1213f, 1733f, 1072f)), Struct_3(Struct_2(Struct_1(vec4<f32>(-983f, 700f, 383f, 2476f))), false, vec4<u32>(46815u, global0[_wgslsmith_index_u32(u_input.c, 22u)], 1u, 1u))), Struct_3(Struct_2(Struct_1(vec4<f32>(-424f, -147f, -112f, 438f))), true, vec4<u32>(9107u, 1u, u_input.e.x, 71976u)), vec4<bool>(false, false, true, false), true), Struct_1(vec4<f32>(-439f, 305f, 867f, -531f)))), select(vec3<bool>(false, false, true), vec3<bool>(any(vec2<bool>(true, true)), true, true), vec3<bool>(any(vec3<bool>(false, false, true)), select(false, false, false), all(vec4<bool>(false, false, true, false)))), all(vec2<bool>(false, true)));
    let var_1 = Struct_5(Struct_4(select(vec4<bool>(true, true, true, true), select(!vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(false, false, var_0.x, false), select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), vec4<bool>(true, any(vec2<bool>(var_0.x, false)), select(var_0.x, var_0.x, false), any(vec3<bool>(false, var_0.x, var_0.x)))), min(u_input.d, vec3<i32>(u_input.b, u_input.d.x, u_input.d.x)) << (vec3<u32>(firstLeadingBit(global0[_wgslsmith_index_u32(1032u, 22u)]), global0[_wgslsmith_index_u32(1u, 22u)] << (88693u % 32u), 46818u) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-275f, -542f, 805f, 359f) * vec4<f32>(-1442f, -351f, -216f, 1877f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(641f, -1571f, 327f, -1000f)))) + vec4<f32>(-2228f, _wgslsmith_f_op_f32(select(608f, 1308f, false)), _wgslsmith_f_op_f32(abs(-1078f)), -248f)), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1472f)).a.a, func_2(_wgslsmith_f_op_f32(-2655f * _wgslsmith_f_op_f32(step(-601f, -216f))))), Struct_3(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2261f - 1880f) * 1162f)).a, var_0.x, _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.e.x, global0[_wgslsmith_index_u32(u_input.c, 22u)], global0[_wgslsmith_index_u32(1u, 22u)], 29291u), vec4<u32>(17743u, 4294967295u, u_input.e.x, 4294967295u) | vec4<u32>(4193u, 35647u, 0u, 0u), ~vec4<u32>(75336u, 42896u, u_input.e.x, u_input.a)) << (~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 1u, 0u, u_input.c), vec4<u32>(0u, global0[_wgslsmith_index_u32(34581u, 22u)], 1u, global0[_wgslsmith_index_u32(1u, 22u)])) % vec4<u32>(32u))), select(select(vec4<bool>(false, !var_0.x, true, false | var_0.x), !vec4<bool>(true, var_0.x, var_0.x, var_0.x), true), vec4<bool>(var_0.x, var_0.x, any(var_0.yz), (u_input.a << (4294967295u % 32u)) > ~9993u), all(select(!vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_0.x), true))), var_0.x);
    let var_2 = var_1.a.e.a;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~var_1.a.e.c.wxw), _wgslsmith_add_u32(52268u, firstLeadingBit(u_input.a)));
}

