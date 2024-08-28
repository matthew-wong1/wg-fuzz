struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: u32,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(abs(arg_0.a.a.x))) - 427f), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -849f)))));
    var var_1 = arg_0.c;
    var_0 = _wgslsmith_f_op_vec3_f32(select(arg_0.a.a.zxz, _wgslsmith_f_op_vec3_f32(arg_0.e.a.xxx - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-256f, _wgslsmith_f_op_f32(round(arg_0.d)), arg_0.a.a.x))), false));
    var var_2 = !vec4<bool>(all(vec2<bool>(any(arg_0.b), true)), any(!(!vec4<bool>(false, true, false, arg_0.b.x))), select(select(any(vec4<bool>(arg_0.b.x, false, arg_0.b.x, arg_0.b.x)), arg_0.b.x, arg_0.b.x), true, true), !any(!vec3<bool>(arg_0.b.x, true, arg_0.b.x)));
    let var_3 = arg_1;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.e.a));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: Struct_3) -> Struct_1 {
    let var_0 = Struct_3(arg_2.e, arg_2.b, ~(~abs(arg_2.c)) << (u_input.c.x % 32u), -919f, Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-arg_2.a.a), _wgslsmith_div_vec4_f32(arg_2.a.a, _wgslsmith_f_op_vec4_f32(func_3(Struct_3(arg_2.e, vec2<bool>(arg_2.b.x, arg_2.b.x), arg_2.c, arg_1.x, Struct_1(arg_2.e.a)), u_input.a.x)))))));
    let var_1 = var_0;
    return Struct_1(var_1.a.a);
}

fn func_4(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = Struct_2(~_wgslsmith_mod_vec3_u32(~(vec3<u32>(1u, 4294967295u, 4294967295u) | vec3<u32>(24678u, 15902u, u_input.c.x)), vec3<u32>(u_input.c.x, ~u_input.c.x, max(u_input.c.x, 0u))), vec3<u32>(_wgslsmith_div_u32(max(~66233u, 1u), abs(min(14250u, 71040u))), ~(~_wgslsmith_add_u32(u_input.c.x, u_input.c.x)), (_wgslsmith_sub_u32(u_input.c.x, u_input.c.x) << (23176u % 32u)) | ~(~u_input.c.x)), arg_0.a.zz, true, select(!all(vec3<bool>(false, true, true)), true, any(vec4<bool>(true, false, all(vec3<bool>(false, true, false)), all(vec4<bool>(false, false, false, true))))));
    let var_1 = arg_0;
    var var_2 = select(select(!(!(!vec3<bool>(var_0.e, var_0.d, false))), vec3<bool>(!(var_0.d == var_0.d), !var_0.e, var_0.d), select(!select(vec3<bool>(var_0.e, var_0.d, true), vec3<bool>(var_0.e, true, false), var_0.e), select(vec3<bool>(false, var_0.d, false), !vec3<bool>(var_0.d, var_0.d, false), select(vec3<bool>(var_0.d, false, var_0.e), vec3<bool>(var_0.d, true, var_0.d), false)), vec3<bool>(false && var_0.d, var_0.d, any(vec4<bool>(var_0.d, var_0.e, var_0.e, var_0.d))))), vec3<bool>(true, true, true), vec3<bool>(var_0.e && true, true, false));
    let var_3 = func_2(u_input.a >> (firstLeadingBit(abs(vec3<u32>(u_input.c.x, 0u, 4294967295u) ^ vec3<u32>(1u, 0u, u_input.c.x))) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(func_2(vec3<i32>(-2147483647i, u_input.b, u_input.d), vec2<f32>(arg_0.a.x, var_1.a.x), Struct_3(Struct_1(vec4<f32>(-790f, 525f, arg_0.a.x, 478f)), var_2.xy, u_input.c.x, 352f, arg_0)), vec2<bool>(false, var_2.x), 1u, -593f, arg_0), -34431i)).xw + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.a.x, arg_0.a.x)))))))), Struct_3(func_2(~vec3<i32>(2147483647i, 2147483647i, u_input.d) ^ -vec3<i32>(-5122i, u_input.d, u_input.a.x), vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(var_0.c.x + 1384f)), Struct_3(Struct_1(arg_0.a), var_2.zx, 1u, arg_0.a.x, func_2(u_input.a, vec2<f32>(var_1.a.x, var_1.a.x), Struct_3(var_1, vec2<bool>(true, var_0.e), 4294967295u, var_0.c.x, Struct_1(vec4<f32>(-390f, var_0.c.x, var_0.c.x, var_1.a.x)))))), var_2.yy, _wgslsmith_dot_vec2_u32(firstLeadingBit(select(u_input.c, var_0.b.xx, vec2<bool>(var_0.d, true))), _wgslsmith_mult_vec2_u32(max(vec2<u32>(u_input.c.x, var_0.b.x), vec2<u32>(0u, 20104u)), ~var_0.a.zy)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-158f)), _wgslsmith_f_op_f32(-887f + var_1.a.x))) + -362f), func_2(u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(464f, -583f) - arg_0.a.zy) - _wgslsmith_f_op_vec4_f32(func_3(Struct_3(Struct_1(var_1.a), vec2<bool>(var_2.x, var_2.x), var_0.a.x, -1572f, var_1), -2147483647i)).yz), Struct_3(arg_0, select(var_2.yz, var_2.zz, var_0.d), abs(1u), _wgslsmith_f_op_f32(sign(1924f)), arg_0))));
    var_2 = select(select(vec3<bool>(!var_0.d, true, var_2.x), select(!vec3<bool>(var_0.e, false, var_0.e), !select(vec3<bool>(false, var_2.x, false), vec3<bool>(var_2.x, false, false), var_2.x), !(var_0.d || var_2.x)), select(!(!vec3<bool>(var_2.x, var_2.x, var_2.x)), vec3<bool>(true, var_2.x, false), all(vec3<bool>(false, var_0.e, false)))), !vec3<bool>(select(false, var_0.e, true), all(!vec3<bool>(var_2.x, var_0.d, false)), false), var_2.x);
    return select(select(!select(vec2<bool>(false, var_2.x), select(vec2<bool>(true, true), var_2.yz, vec2<bool>(true, false)), true), !(!(!vec2<bool>(var_0.e, true))), true), vec2<bool>(2147483647i >= reverseBits(u_input.b), any(select(vec4<bool>(false, var_2.x, true, var_0.d), select(vec4<bool>(var_2.x, var_0.d, false, var_2.x), vec4<bool>(var_0.d, var_0.e, var_0.d, true), vec4<bool>(var_2.x, var_0.e, true, var_0.e)), vec4<bool>(var_0.d, var_2.x, var_0.d, true)))), any(vec2<bool>(true, !(!var_2.x))));
}

fn func_1() -> bool {
    let var_0 = any(!vec3<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), true));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-277f, 648f, -714f, 2409f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(715f, 162f, -407f, -1000f) - vec4<f32>(-1061f, -1000f, -1761f, -394f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-707f, -567f, -1387f, 1000f))), vec4<f32>(409f, 676f, -2604f, 627f), select(vec4<bool>(true, var_0, true, var_0), vec4<bool>(var_0, var_0, true, false), vec4<bool>(false, var_0, false, var_0)))))), !select(!(!vec2<bool>(false, var_0)), !(!vec2<bool>(var_0, false)), func_4(func_2(vec3<i32>(u_input.d, 17516i, u_input.b), vec2<f32>(-311f, -249f), Struct_3(Struct_1(vec4<f32>(1385f, -1368f, -1296f, -790f)), vec2<bool>(var_0, false), u_input.c.x, 906f, Struct_1(vec4<f32>(-622f, -2117f, -926f, -1446f)))))), u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1319f)), func_2(u_input.a, vec2<f32>(_wgslsmith_f_op_f32(round(1145f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1311f))), Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(Struct_1(vec4<f32>(-1266f, -629f, 647f, 744f)), vec2<bool>(var_0, true), u_input.c.x, 704f, Struct_1(vec4<f32>(278f, -1632f, 600f, -687f))), u_input.d))), !vec2<bool>(var_0, true), u_input.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1709f)), _wgslsmith_div_f32(-512f, -1324f)), func_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(24731i, -79744i, 1i), vec3<i32>(u_input.d, -1i, 38713i), vec3<i32>(u_input.b, -5375i, -1i)), vec2<f32>(-294f, -1000f), Struct_3(Struct_1(vec4<f32>(383f, -1877f, -584f, -331f)), vec2<bool>(var_0, var_0), 4294967295u, -805f, Struct_1(vec4<f32>(-2227f, 215f, 977f, -149f)))))));
    var_1 = Struct_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_1.e.a.x)), var_1.a.a.x, -1000f, var_1.e.a.x)), var_1.b, reverseBits(~abs(u_input.c.x ^ 40159u)), _wgslsmith_f_op_f32(var_1.e.a.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.e.a.x, -1610f)) - var_1.a.a.x), _wgslsmith_f_op_f32(var_1.a.a.x * var_1.a.a.x))), func_2(u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_1.e.a.wz, vec2<f32>(693f, var_1.a.a.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.a.x, 1126f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(824f, var_1.d) * vec2<f32>(134f, var_1.d)))), Struct_3(var_1.e, select(var_1.b, select(vec2<bool>(false, var_0), vec2<bool>(var_0, false), false), !var_1.b), u_input.c.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.d))), Struct_1(var_1.a.a))));
    var_1 = Struct_3(var_1.e, !select(select(var_1.b, vec2<bool>(true, true), !var_1.b), !select(vec2<bool>(false, false), var_1.b, var_1.b), false), 4294967295u, var_1.a.a.x, var_1.a);
    let var_2 = _wgslsmith_f_op_vec3_f32(-var_1.a.a.yzw);
    return !all(vec2<bool>(true, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 40421u;
    var_0 = 10237u >> (u_input.c.x % 32u);
    let var_1 = any(!vec2<bool>(true, func_1()));
    var_0 = 1u;
    var_0 = 1u;
    let var_2 = vec2<i32>(u_input.b, 8613i);
    var var_3 = _wgslsmith_div_vec3_i32(u_input.a, _wgslsmith_mult_vec3_i32(select(u_input.a, u_input.a, select(!vec3<bool>(var_1, true, var_1), vec3<bool>(var_1, true, true), var_1)), max(_wgslsmith_div_vec3_i32(vec3<i32>(var_2.x, -1i, u_input.a.x) << (vec3<u32>(4294967295u, 40264u, u_input.c.x) % vec3<u32>(32u)), vec3<i32>(u_input.b, 1i, u_input.a.x) >> (vec3<u32>(4294967295u, 4294967295u, u_input.c.x) % vec3<u32>(32u))), min(~vec3<i32>(u_input.a.x, var_2.x, var_2.x), max(vec3<i32>(var_2.x, 2147483647i, u_input.a.x), vec3<i32>(-7542i, u_input.b, -1i))))));
    let var_4 = vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1220f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec3<i32>(~min(-1i, var_2.x), var_2.x, var_2.x), ~(~vec3<i32>(var_3.x, var_3.x, var_2.x))));
}

