struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: vec2<u32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_3,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: Struct_4) -> bool {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.d.x, -344f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1227f) - _wgslsmith_f_op_f32(min(arg_1.d.x, 392f))) - arg_1.d.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-141f, arg_1.d.x)))), arg_1.d.x, _wgslsmith_f_op_f32(floor(arg_1.d.x)));
    var var_1 = _wgslsmith_add_u32(_wgslsmith_sub_u32(~(~1u), ~(~0u)), ~0u << (u_input.b.x % 32u));
    var_1 = 19830u;
    var_1 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(10318u, 2561u, ~arg_0), min(u_input.b.x, arg_0));
    var_1 = arg_1.c.d.x;
    return false;
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_2(~(~_wgslsmith_add_i32(-49042i, -11500i)) << ((u_input.b.x | u_input.b.x) % 32u), arg_1, Struct_1(vec2<bool>(_wgslsmith_f_op_f32(round(arg_0)) > _wgslsmith_f_op_f32(abs(arg_0)), false)), vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - 1095f)) <= 1000f, func_3(~4294967295u, Struct_4(Struct_1(vec2<bool>(false, false)), Struct_2(u_input.a, arg_1, Struct_1(vec2<bool>(false, false)), vec2<bool>(false, false)), Struct_3(Struct_1(vec2<bool>(true, false)), Struct_2(-19533i, u_input.a, Struct_1(vec2<bool>(true, false)), vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), vec2<u32>(u_input.b.x, 55232u), u_input.a), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, arg_0), vec2<f32>(arg_0, -235f))))));
    var var_1 = reverseBits(arg_1);
    return var_0.c;
}

fn func_1() -> Struct_3 {
    var var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-562f)), -395f, true))), u_input.a);
    var_0 = Struct_1(var_0.a);
    var var_1 = ~(~1u & _wgslsmith_add_u32(_wgslsmith_mod_u32(~u_input.b.x, 51338u), 1u));
    var_0 = Struct_1(func_2(_wgslsmith_f_op_f32(select(-1896f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1150f, 889f)) * _wgslsmith_f_op_f32(floor(770f))), !var_0.a.x | true)), -2147483647i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(39004u, 35932u, u_input.b.x, 32489u) & vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x), max(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 1u, 5904u, u_input.b.x))) % 32u)).a);
    var_0 = Struct_1(vec2<bool>(var_0.a.x, false));
    return Struct_3(Struct_1(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -400f)), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, 1411i), vec2<i32>(u_input.a, u_input.a))).a), Struct_2(firstLeadingBit(-(u_input.a & 15826i)), 0i, func_2(-175f, 1i), vec2<bool>(var_0.a.x, var_0.a.x)), Struct_1(func_2(_wgslsmith_f_op_f32(ceil(-674f)), reverseBits(u_input.a)).a), vec2<u32>(_wgslsmith_mod_u32(countOneBits(~0u), ~(u_input.b.x >> (70301u % 32u))), ~(~u_input.b.x) | u_input.b.x), u_input.a);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, 619f) - arg_1.x) + -970f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2077f), -320f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1680f, arg_1.x, arg_1.x))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1094f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.x), -290f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-512f, 1099f)), _wgslsmith_f_op_f32(var_0.x * 893f)))), var_0.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.x, 849f, -532f), vec3<f32>(452f, var_0.x, var_0.x))) - vec3<f32>(-418f, var_0.x, var_0.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, -1204f, -1734f) - vec3<f32>(var_0.x, 818f, 1545f)))));
    let var_1 = vec2<i32>(1i, u_input.a);
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-892f, -839f, arg_1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, -1262f, arg_1.x) - vec3<f32>(504f, -1871f, 410f)), select(vec3<bool>(false, arg_0.b.d.x, true), vec3<bool>(false, arg_2.c.a.x, false), arg_2.d.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 530f)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, -1000f, arg_1.x))), vec3<f32>(-429f, -143f, -418f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, arg_1.x, -315f))))) + vec3<f32>(_wgslsmith_f_op_f32(-460f - -1000f), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), !select(select(vec3<bool>(arg_2.d.x, true, arg_0.b.d.x), vec3<bool>(false, false, false), vec3<bool>(false, arg_2.c.a.x, false)), select(vec3<bool>(true, arg_0.b.c.a.x, false), vec3<bool>(arg_0.b.d.x, arg_2.c.a.x, arg_2.d.x), true), true))));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, var_0.x, 171f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, arg_1.x, 340f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(880f, 514f, -176f) * vec3<f32>(var_0.x, var_0.x, arg_1.x)) - vec3<f32>(_wgslsmith_f_op_f32(max(1325f, var_0.x)), _wgslsmith_f_op_f32(-arg_1.x), 1f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(631f, var_0.x), -106f, _wgslsmith_div_f32(-1382f, 2156f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1514f, arg_1.x, -322f), vec3<f32>(var_0.x, 153f, arg_1.x), vec3<bool>(true, arg_0.b.d.x, arg_0.c.a.x))))), select(vec3<bool>(true, true, true), vec3<bool>(false, arg_0.c.a.x, false), vec3<bool>(false, arg_2.d.x, true))))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(u_input.b.x, 0u, _wgslsmith_mod_u32(u_input.b.x, ~5173u));
    var var_1 = func_4(func_1(), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, -1617f))) - vec2<f32>(946f, 125f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(474f, 172f) + vec2<f32>(-676f, 1168f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1366f, 2191f)))) * vec2<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_div_f32(150f, 278f)))), func_1().b);
    var var_2 = func_4(Struct_3(Struct_1(select(!var_1.a.a, var_1.c.a, vec2<bool>(var_1.c.a.x, false))), var_1.b, Struct_1(func_2(-244f, -var_1.b.a).a), var_0.xx, u_input.a), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -458f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(666f, -258f, true)) * _wgslsmith_f_op_f32(-590f - 1034f)) * -1061f)), var_1.b);
    var_0 = _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, var_2.d.x, 4294967295u), ~vec3<u32>(45361u, 17975u, 4294967295u)), ~(~vec3<u32>(var_0.x, 0u, 0u))), ~(_wgslsmith_sub_vec3_u32(vec3<u32>(var_2.d.x, 18742u, u_input.b.x), max(vec3<u32>(var_2.d.x, var_0.x, var_1.d.x), vec3<u32>(87593u, 1u, var_0.x))) & ~(~vec3<u32>(var_2.d.x, var_0.x, 0u))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -862f), _wgslsmith_f_op_f32(f32(-1f) * -1289f), -347f, _wgslsmith_f_op_f32(select(109f, 977f, true)))))));
    var var_4 = Struct_4(func_1().c, func_1().b, func_4(Struct_3(func_4(func_4(Struct_3(var_2.c, Struct_2(var_1.b.b, u_input.a, var_2.b.c, vec2<bool>(var_1.a.a.x, false)), var_2.b.c, var_0.xz, u_input.a), vec2<f32>(var_3.x, 1491f), var_1.b), _wgslsmith_f_op_vec2_f32(-var_3.yz), var_2.b).a, var_1.b, Struct_1(vec2<bool>(var_1.a.a.x, true)), vec2<u32>(35482u, 1u), var_2.b.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_3.yx, var_3.zx, var_1.a.a)) + _wgslsmith_f_op_vec2_f32(round(var_3.wz)))), Struct_2(var_1.b.a, u_input.a, var_1.c, !vec2<bool>(var_1.a.a.x, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.ww) * _wgslsmith_f_op_vec2_f32(ceil(var_3.xx))));
    let var_5 = _wgslsmith_mod_vec4_u32(select(_wgslsmith_div_vec4_u32(vec4<u32>(53638u, firstTrailingBit(35806u), ~4294967295u, _wgslsmith_mult_u32(4294967295u, var_4.c.d.x)), vec4<u32>(abs(var_1.d.x), 1u, _wgslsmith_clamp_u32(var_0.x, 5822u, 6819u), ~var_4.c.d.x)), _wgslsmith_clamp_vec4_u32(reverseBits(~vec4<u32>(var_2.d.x, var_1.d.x, var_4.c.d.x, 21731u)), vec4<u32>(~0u, select(var_4.c.d.x, 14993u, var_1.b.c.a.x), ~0u, select(var_2.d.x, u_input.b.x, false)), select(~vec4<u32>(var_1.d.x, 0u, var_4.c.d.x, var_2.d.x), ~vec4<u32>(var_1.d.x, var_0.x, var_0.x, 1u), select(vec4<bool>(var_4.b.c.a.x, var_4.a.a.x, true, false), vec4<bool>(var_1.c.a.x, false, true, true), vec4<bool>(var_4.c.c.a.x, var_2.c.a.x, true, var_2.b.c.a.x)))), !(!select(vec4<bool>(true, false, var_1.b.d.x, var_4.b.d.x), vec4<bool>(var_1.a.a.x, false, var_4.a.a.x, true), vec4<bool>(var_4.c.a.a.x, var_2.a.a.x, var_1.c.a.x, true)))), ~select(~(~vec4<u32>(u_input.b.x, 0u, 0u, 85644u)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, 14617u, var_2.d.x), firstTrailingBit(vec4<u32>(1u, var_2.d.x, u_input.b.x, var_4.c.d.x))), !(var_2.a.a.x && true)));
    let var_6 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(~var_5.x, u_input.a);
}

