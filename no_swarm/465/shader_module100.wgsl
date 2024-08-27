struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<u32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32) -> vec4<u32> {
    let var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(-10945i >> (u_input.a % 32u), i32(-1i) * -2147483647i, 1i, abs(0i)) << (~(~vec4<u32>(u_input.a, 73311u, u_input.a, u_input.a)) % vec4<u32>(32u)), vec4<i32>(-1i, select(select(0i, 34948i, false), ~(-30991i), arg_0 <= arg_0), ~26306i << (1u % 32u), -40898i)) ^ vec4<i32>(_wgslsmith_dot_vec4_i32(-(~vec4<i32>(-17381i, 23593i, 1i, -1i)), vec4<i32>(1i, 1i, 1i, 1i)), ~2147483647i >> (~(~1u) % 32u), -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 28677i), -vec2<i32>(-3840i, 1i)), 51935i);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-713f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0))) + _wgslsmith_f_op_f32(floor(arg_0))))));
    return select(firstLeadingBit(min(~(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a) >> (vec4<u32>(u_input.a, 1u, 1u, 36558u) % vec4<u32>(32u))), ~vec4<u32>(35992u, u_input.a, u_input.a, u_input.a) >> (~vec4<u32>(u_input.a, u_input.a, 56920u, 0u) % vec4<u32>(32u)))), vec4<u32>(u_input.a, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(16745u, 1u), vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), abs(u_input.a), u_input.a), !all(vec4<bool>(true, true, true, true)));
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = Struct_2(arg_0, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1457f))), false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-772f, 328f) - vec2<f32>(496f, 1743f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-118f, -1054f))), false)))), func_3(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(852f))))))), _wgslsmith_f_op_f32(-1f), 1i);
    let var_1 = abs(_wgslsmith_mod_i32(arg_0, 0i) & 46808i);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)), -594f, var_0.b.b))));
    var var_3 = vec4<u32>(var_0.c.x, ~20417u, ~1u, 15281u);
    let var_4 = vec3<bool>(var_0.b.b, !(!var_0.b.b), true);
    return Struct_2(-_wgslsmith_clamp_i32(~(-var_0.e), 2147483647i, -50990i), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.d), 193f, !var_4.x)), true, var_0.b.c), (func_3(_wgslsmith_f_op_f32(-var_0.d)) << (func_3(var_0.d) % vec4<u32>(32u))) & var_0.c, _wgslsmith_f_op_f32(step(var_2, -634f)), firstLeadingBit(_wgslsmith_mod_i32(arg_0, var_1)));
}

fn func_4(arg_0: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.d, 594f, -758f, -464f))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1506f, -795f, -234f, arg_0.b.c.x), vec4<f32>(1506f, arg_0.b.c.x, arg_0.d, -1045f)))))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(549f, arg_0.d, -1000f, arg_0.b.c.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d, -826f, -286f, arg_0.d) * vec4<f32>(arg_0.b.c.x, -967f, -1358f, arg_0.d))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_0.b.c.x, 808f, arg_0.d) * vec4<f32>(2102f, 1000f, -1018f, -2685f)))))));
    var var_1 = _wgslsmith_dot_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(~arg_0.a, _wgslsmith_clamp_i32(1i, arg_0.e, arg_0.e)), firstTrailingBit(vec2<i32>(arg_0.a, -36376i))), -(~vec2<i32>(arg_0.e, -2147483647i)) ^ vec2<i32>(~(-20219i), arg_0.a));
    var_1 = ~(~(0i | (arg_0.e >> (u_input.a % 32u))));
    var var_2 = arg_0;
    var_2 = func_2(arg_0.e);
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.a * _wgslsmith_f_op_f32(max(var_2.d, var_2.b.a))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1751f, var_0.x)), _wgslsmith_f_op_f32(var_2.d + 574f)))), -352f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(abs(29739i)).d)));
}

fn func_1() -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(1000f)), all(select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true)), vec4<bool>(any(vec4<bool>(false, true, true, false)), true, 4294967295u == u_input.a, true), true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -175f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-638f)))) - vec2<f32>(_wgslsmith_f_op_f32(trunc(305f)), _wgslsmith_f_op_f32(func_4(func_2(-21502i))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.c.x, -736f, 1014f)) + vec4<f32>(var_0.a, var_0.a, -1335f, 302f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(692f, var_0.a, var_0.c.x, var_0.a) * vec4<f32>(1134f, var_0.c.x, var_0.a, var_0.a)) - vec4<f32>(-758f, -656f, var_0.c.x, var_0.a)))));
    var var_2 = func_2(i32(-1i) * -_wgslsmith_mod_i32(func_2(-24658i).e, ~0i));
    var var_3 = vec4<bool>(all(vec2<bool>(false, true)), func_2(25834i >> (var_2.c.x % 32u)).b.b | all(vec4<bool>(true, true, true, true)), any(vec4<bool>(any(vec3<bool>(false, var_2.b.b, var_2.b.b)), !(714f != var_2.d), !(var_2.b.b && var_0.b), select(true, false, true))), true);
    var var_4 = var_0.b;
    return !(!var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~1i;
    let var_1 = vec3<u32>(abs(u_input.a >> (1u % 32u)), firstLeadingBit(47071u), ~_wgslsmith_mult_u32(u_input.a, 0u)) & ~(vec3<u32>(32044u, u_input.a, ~84400u) >> (vec3<u32>(1178u, 25843u, u_input.a) % vec3<u32>(32u)));
    var var_2 = !func_1();
    let x = u_input.a;
    s_output = StorageBuffer(735f, ((min(vec4<u32>(u_input.a, 37379u, u_input.a, 1u), vec4<u32>(1u, 107398u, 0u, 4294967295u)) ^ (vec4<u32>(var_1.x, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(var_1.x, u_input.a, 53693u, var_1.x) % vec4<u32>(32u)))) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 108192u, 0u, 4294967295u), vec4<u32>(var_1.x, var_1.x, u_input.a, u_input.a), vec4<u32>(1u, 1u, 2029u, var_1.x)), reverseBits(vec4<u32>(4294967295u, 20545u, 103523u, 6306u))) % vec4<u32>(32u))) | vec4<u32>(95487u, var_1.x, 99520u, ~firstLeadingBit(43665u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), u_input.a, var_1.yz);
}

