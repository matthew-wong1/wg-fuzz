struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> i32 {
    var var_0 = Struct_2(arg_1, ~(-1i), Struct_1(u_input.a, arg_1.d.x, ~_wgslsmith_mod_u32(u_input.d, 1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0, arg_1.d.x))))));
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(146f, -371f, var_0.c.b) * vec3<f32>(1345f, arg_1.b, arg_1.b))) - vec3<f32>(arg_1.b, -539f, arg_0)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -782f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0)), arg_1.b))), arg_1, select(vec3<bool>(any(vec4<bool>(true, true, true, true)), true, any(vec3<bool>(true, true, true))), !(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true))), vec3<bool>(true, false, all(vec2<bool>(false, false)))), 4294967295u & select(0u, abs(countOneBits(24822u)), true));
    var var_2 = Struct_3(Struct_1(u_input.a, _wgslsmith_f_op_f32(abs(-756f)), arg_1.c << (_wgslsmith_mod_u32(countOneBits(var_1.b.a.x), ~4294967295u) % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.d - var_1.a.yx) + arg_1.d))), var_1.c.x, var_1.b);
    var var_3 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.d.x * _wgslsmith_f_op_f32(f32(-1f) * -627f)) + var_2.c.d.x), _wgslsmith_f_op_f32(var_2.c.b - -498f), -1320f), arg_1, !(!var_1.c), var_2.c.a.x);
    var var_4 = arg_0;
    return var_0.b;
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: f32) -> bool {
    var var_0 = Struct_1(~(~(~(vec2<u32>(26131u, u_input.b) ^ arg_1.a.a))), arg_2.c.d.x, abs(abs(54302u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.a.d.x, -878f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.a.d - arg_2.a.d), arg_2.a.d), all(select(vec4<bool>(arg_2.b, false, arg_2.b, true), vec4<bool>(true, arg_2.b, arg_2.b, arg_2.b), false))))));
    var_0 = arg_2.a;
    var var_1 = select(select(vec4<bool>(arg_2.b, all(!vec4<bool>(false, arg_1.b, true, arg_1.b)), true, true), !vec4<bool>(arg_2.b, true, arg_1.b, !arg_2.b), vec4<bool>(all(vec3<bool>(false, arg_1.b, arg_1.b)), arg_2.b, arg_2.b | true, true != any(vec2<bool>(arg_2.b, arg_2.b)))), select(select(!vec4<bool>(arg_1.b, false, arg_2.b, true), !(!vec4<bool>(arg_1.b, arg_2.b, arg_2.b, false)), all(vec4<bool>(false, arg_2.b, false, arg_2.b))), vec4<bool>(all(vec4<bool>(true, true, arg_1.b, arg_2.b)) || arg_2.b, false, all(vec2<bool>(arg_2.b, arg_1.b)), arg_1.b), false), !select(vec4<bool>(arg_2.b, true, arg_1.b, arg_2.b || true), !vec4<bool>(arg_2.b, false, arg_2.b, true), !arg_2.b));
    var_1 = select(select(select(vec4<bool>(any(var_1.wy), arg_2.b, true, true), select(select(vec4<bool>(var_1.x, var_1.x, arg_2.b, arg_2.b), vec4<bool>(var_1.x, true, var_1.x, false), false), select(vec4<bool>(arg_1.b, arg_2.b, true, var_1.x), vec4<bool>(true, arg_2.b, arg_2.b, arg_2.b), false), select(vec4<bool>(arg_2.b, true, var_1.x, var_1.x), vec4<bool>(false, false, arg_2.b, true), vec4<bool>(arg_2.b, true, arg_2.b, arg_1.b))), select(vec4<bool>(false, false, true, false), select(vec4<bool>(arg_2.b, false, false, true), vec4<bool>(false, true, var_1.x, arg_1.b), arg_1.b), !vec4<bool>(arg_1.b, arg_1.b, arg_2.b, true))), !select(!vec4<bool>(arg_1.b, arg_1.b, false, arg_1.b), vec4<bool>(var_1.x, true, arg_2.b, false), select(vec4<bool>(false, false, var_1.x, false), vec4<bool>(arg_2.b, false, false, true), arg_2.b)), select(any(var_1.zz), select(true, arg_1.b, false), arg_2.c.c == u_input.a.x) & !arg_2.b), vec4<bool>(true, true, arg_1.b, all(select(var_1.zw, var_1.xw, vec2<bool>(true, true))) | arg_2.b), vec4<bool>(!(arg_2.a.b < arg_2.a.b) | arg_1.b, any(var_1.xzz) & true, (~arg_0.x == -28962i) || arg_2.b, true));
    var_1 = select(select(select(select(!vec4<bool>(arg_1.b, false, arg_1.b, false), !vec4<bool>(false, true, false, arg_2.b), select(vec4<bool>(arg_2.b, var_1.x, arg_2.b, false), vec4<bool>(false, false, arg_1.b, var_1.x), vec4<bool>(true, true, true, arg_2.b))), vec4<bool>(any(vec3<bool>(var_1.x, false, false)), var_1.x, any(var_1.wxz), true), vec4<bool>(all(vec2<bool>(arg_2.b, false)), true, all(vec4<bool>(arg_2.b, false, true, var_1.x)), var_1.x)), vec4<bool>(var_0.b <= _wgslsmith_f_op_f32(min(-369f, 1083f)), true, any(vec4<bool>(var_1.x, var_1.x, arg_2.b, arg_1.b)), !arg_2.b), select(vec4<bool>(true, arg_1.b, true, any(vec3<bool>(false, true, arg_1.b))), vec4<bool>(all(var_1.yxy), true, !arg_2.b, false), vec4<bool>(arg_1.b, arg_1.b, true, false))), vec4<bool>(true && var_1.x, (true | !arg_2.b) == (arg_2.b && false), true, select(any(!vec3<bool>(arg_2.b, arg_2.b, false)), all(vec2<bool>(true, true)), !var_1.x)), true);
    return true;
}

fn func_1(arg_0: vec4<u32>, arg_1: u32) -> vec2<u32> {
    var var_0 = select(vec3<bool>(select(u_input.c.x, -u_input.c.x, false) > _wgslsmith_add_i32(func_2(201f, Struct_1(vec2<u32>(31694u, 1u), 605f, arg_0.x, vec2<f32>(-261f, 1657f))), ~u_input.c.x), !(_wgslsmith_f_op_f32(min(-1092f, 274f)) <= _wgslsmith_f_op_f32(trunc(978f))), false), vec3<bool>(all(vec2<bool>(true, true)), !func_3(-u_input.c.zxz, Struct_3(Struct_1(vec2<u32>(arg_1, arg_0.x), 337f, arg_1, vec2<f32>(-1169f, -695f)), true, Struct_1(u_input.a, 830f, u_input.d, vec2<f32>(-559f, 218f))), Struct_3(Struct_1(vec2<u32>(arg_0.x, arg_1), -2210f, arg_0.x, vec2<f32>(-629f, -664f)), true, Struct_1(vec2<u32>(arg_0.x, arg_0.x), -1234f, arg_0.x, vec2<f32>(-689f, -719f))), _wgslsmith_f_op_f32(f32(-1f) * -297f)), all(vec3<bool>(true, true, true)) || true), vec3<bool>(true, false & any(vec2<bool>(true, true)), true));
    return firstTrailingBit(select(_wgslsmith_mult_vec2_u32(u_input.a, select(min(u_input.a, u_input.a), vec2<u32>(u_input.d, arg_1), true)), select(arg_0.zz, ~arg_0.xx, var_0.x), func_3(vec3<i32>(u_input.c.x, -1i, -21911i), Struct_3(Struct_1(vec2<u32>(4294967295u, 57558u), -207f, arg_0.x, vec2<f32>(649f, 1112f)), var_0.x, Struct_1(vec2<u32>(36746u, 4294967295u), 499f, 0u, vec2<f32>(291f, 948f))), Struct_3(Struct_1(vec2<u32>(arg_0.x, u_input.a.x), 682f, arg_0.x, vec2<f32>(-730f, -187f)), var_0.x, Struct_1(u_input.a, -324f, 4294967295u, vec2<f32>(-171f, 470f))), -885f) & func_3(u_input.c.ywy, Struct_3(Struct_1(u_input.a, -1944f, 4294967295u, vec2<f32>(2259f, -1436f)), false, Struct_1(arg_0.zx, -690f, arg_0.x, vec2<f32>(1461f, 320f))), Struct_3(Struct_1(vec2<u32>(1u, arg_0.x), -734f, 11352u, vec2<f32>(-143f, -944f)), var_0.x, Struct_1(u_input.a, -1647f, 11308u, vec2<f32>(1000f, 1413f))), _wgslsmith_f_op_f32(f32(-1f) * -369f))));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = select(vec2<bool>(true, true), !vec2<bool>(true && all(vec2<bool>(true, true)), all(vec2<bool>(true, true))), !vec2<bool>(_wgslsmith_f_op_f32(-arg_0.d.x) <= _wgslsmith_f_op_f32(-585f + 1000f), !any(vec4<bool>(true, true, false, true))));
    var_1 = vec2<bool>(true && all(select(vec3<bool>(false, true, true), vec3<bool>(false, var_1.x, false), var_1.x)), var_1.x);
    var var_2 = ~min(~func_1(vec4<u32>(133703u, u_input.d, arg_0.a.x, 39630u), 39095u).x ^ _wgslsmith_clamp_u32(func_1(vec4<u32>(var_0.c, 4294967295u, 1u, u_input.d), 43792u).x, abs(4294967295u), ~u_input.b), 1u);
    let var_3 = _wgslsmith_sub_i32(-1i, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c.x, 2147483647i) << (_wgslsmith_add_vec2_u32(arg_0.a, vec2<u32>(arg_0.a.x, u_input.a.x)) % vec2<u32>(32u)), vec2<i32>(u_input.c.x & 36583i, ~46256i)) | u_input.c.x);
    return Struct_1(max(~reverseBits(reverseBits(vec2<u32>(49838u, 0u))), arg_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))) * -955f)), abs(_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(25253u, u_input.a.x, 61816u, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(26152u, u_input.b, 19232u, u_input.a.x), vec4<u32>(23993u, 33541u, 4294967295u, 4294967295u)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b, -705f), var_0.d, var_1.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(_wgslsmith_mult_vec2_u32(func_1(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.d), u_input.a.x), u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-375f, 738f))), u_input.a.x, vec2<f32>(_wgslsmith_f_op_f32(floor(-612f)), -606f)), -2147483647i);
    var_0 = Struct_1(vec2<u32>(4294967295u, u_input.b >> (~select(8781u, u_input.d, false) % 32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(floor(var_0.b))))), ~13665u, var_0.d);
    let var_1 = select(abs(var_0.a.x), max(~var_0.c, ~(~var_0.a.x)), true);
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(290f)), _wgslsmith_f_op_f32(var_0.d.x * 448f), -652f))));
    var var_3 = ~_wgslsmith_div_vec2_i32(u_input.c.wz, ~(-(vec2<i32>(-1i, u_input.c.x) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)))));
    var_3 = select(vec2<i32>(-73736i, abs(-(var_3.x >> (0u % 32u)))), -u_input.c.zw, select(select(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, true), true), any(vec2<bool>(false, true))), vec2<bool>(true, any(vec2<bool>(false, false))), any(vec3<bool>(false, false, true))), vec2<bool>(true, true), !vec2<bool>(all(vec2<bool>(true, false)), any(vec3<bool>(true, true, false)))));
    var_3 = u_input.c.xx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_2.zx));
}

