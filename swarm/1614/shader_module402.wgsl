struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
    c: vec4<bool>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec3<f32>, arg_3: Struct_4) -> f32 {
    let var_0 = -(~u_input.b);
    let var_1 = Struct_3(reverseBits(0u));
    let var_2 = u_input.b.xw;
    let var_3 = u_input.b.x;
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, -325f, -247f, arg_2.x)) - vec4<f32>(arg_2.x, arg_2.x, -1000f, arg_2.x))))));
    return _wgslsmith_div_f32(var_4.a.x, _wgslsmith_f_op_f32(-arg_2.x));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: vec2<u32>, arg_3: Struct_3) -> Struct_4 {
    return Struct_4(vec3<u32>(~(~arg_3.a) | countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.a, arg_2.x, 97767u, 0u), vec4<u32>(u_input.e.x, 47482u, arg_2.x, 17728u))), _wgslsmith_mod_u32(abs(16793u), u_input.e.x), 1u), min(~_wgslsmith_mod_u32(30901u, _wgslsmith_mod_u32(arg_2.x, 22523u)), ~(~_wgslsmith_mult_u32(u_input.e.x, arg_2.x))), vec4<bool>(true, true, all(select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), false), vec4<bool>(false, true, false, true))), true), ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.e.x >> (arg_3.a % 32u), min(66276u, 55940u)), min(vec2<u32>(50780u, arg_3.a), ~u_input.e.xx)), select(u_input.c, firstLeadingBit(~firstLeadingBit(24652i)), false));
}

fn func_1() -> i32 {
    var var_0 = true;
    let var_1 = func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1971f))) + -1000f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_4(u_input.e, 34605u, vec4<bool>(true, true, false, false), u_input.e.yz, u_input.d.x), Struct_4(u_input.e, 58155u, vec4<bool>(false, true, true, false), u_input.e.yy, u_input.b.x), vec3<f32>(501f, 310f, 1060f), Struct_4(u_input.e, 20777u, vec4<bool>(true, false, true, false), vec2<u32>(u_input.e.x, 4294967295u), 40726i))), -190f, -467f)))), u_input.e.zy & vec2<u32>(u_input.e.x, u_input.e.x), Struct_3(firstLeadingBit(49117u)));
    var_0 = !all(!(!(!var_1.c)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(636f, -1392f, _wgslsmith_div_f32(927f, 939f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(806f, -625f, 815f)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1144f, -1541f, 502f)))), (var_1.c.x || true) != !var_1.c.x)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -668f), _wgslsmith_div_f32(-1332f, 531f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-221f)) - 457f)))) + vec3<f32>(_wgslsmith_f_op_f32(626f - 752f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1202f + _wgslsmith_f_op_f32(-169f + -2003f))), 769f));
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(func_2(var_1, var_1, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(330f + -1224f), var_2.x, _wgslsmith_f_op_f32(min(var_2.x, var_2.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, 1591f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.x, var_2.x, -1951f), vec3<f32>(-451f, -2700f, var_2.x), true)))), func_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 1214f)), vec3<f32>(_wgslsmith_f_op_f32(min(-1050f, 1326f)), _wgslsmith_f_op_f32(select(var_2.x, var_2.x, var_1.c.x)), 2145f), u_input.e.xz, Struct_3(~1u)))), var_2.x, -1000f);
    return (abs(var_1.e) << (var_1.a.x % 32u)) & -(func_3(_wgslsmith_div_f32(var_2.x, -1058f), vec3<f32>(var_2.x, var_2.x, var_2.x), vec2<u32>(u_input.e.x, var_1.d.x), Struct_3(21205u)).e & 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(u_input.d.x, 23098i, i32(-1i) * -4461i, func_1());
    let var_1 = select(select(func_3(967f, vec3<f32>(509f, _wgslsmith_f_op_f32(-167f - -499f), _wgslsmith_f_op_f32(min(-386f, -1070f))), vec2<u32>(39771u, ~u_input.e.x), Struct_3(u_input.e.x)).c.zw, vec2<bool>(false, true), !select(func_3(-1960f, vec3<f32>(-1000f, 844f, 1011f), u_input.e.xy, Struct_3(39408u)).c.zy, select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)))), func_3(1164f, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(620f + -165f)), -1531f, _wgslsmith_f_op_f32(f32(-1f) * -291f)), vec2<u32>(u_input.e.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.e.x, 4080u, u_input.e.x, u_input.e.x), ~vec4<u32>(1u, 50923u, u_input.e.x, 1u))), Struct_3(~37413u)).c.yx, !vec2<bool>(any(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, true))));
    let var_2 = vec3<u32>(~_wgslsmith_mod_u32(1u, u_input.e.x), 1u, u_input.e.x);
    var var_3 = Struct_4(((_wgslsmith_mult_vec3_u32(u_input.e, vec3<u32>(u_input.e.x, var_2.x, 29173u)) & min(vec3<u32>(4294967295u, u_input.e.x, 45482u), vec3<u32>(u_input.e.x, u_input.e.x, u_input.e.x))) ^ u_input.e) ^ abs(~u_input.e & u_input.e), 4369u, select(select(select(!vec4<bool>(var_1.x, true, false, true), vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(false, false, var_1.x, var_1.x)), vec4<bool>(any(vec4<bool>(var_1.x, false, false, false)), false, true, false), !(!vec4<bool>(false, var_1.x, true, true))), vec4<bool>(!func_3(211f, vec3<f32>(2019f, -524f, 925f), var_2.zz, Struct_3(u_input.e.x)).c.x, all(!vec2<bool>(var_1.x, var_1.x)), all(vec4<bool>(false, var_1.x, true, var_1.x)), any(!vec2<bool>(false, var_1.x))), vec4<bool>(var_1.x, false, all(vec4<bool>(var_1.x, false, false, false)), true)), _wgslsmith_sub_vec2_u32(~func_3(1f, vec3<f32>(-1860f, -368f, -162f), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.e.x, var_2.x), var_2.xx, var_2.yz), Struct_3(var_2.x)).d, vec2<u32>(0u, ~u_input.e.x) >> (firstLeadingBit(vec2<u32>(0u, 819u)) % vec2<u32>(32u))), ~u_input.a.x);
    let var_4 = select(func_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1215f, 699f), _wgslsmith_f_op_f32(-1320f + -294f), true)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -379f), _wgslsmith_f_op_f32(f32(-1f) * -300f), _wgslsmith_f_op_f32(trunc(617f))), abs(~(~var_2.zx)), Struct_3(firstLeadingBit(~16694u))).c, vec4<bool>(var_3.c.x, !var_1.x, !any(vec2<bool>(var_1.x, false)), !func_3(_wgslsmith_f_op_f32(-899f + -385f), vec3<f32>(907f, 1378f, -923f), u_input.e.xy, Struct_3(u_input.e.x)).c.x), vec4<bool>(var_3.c.x, any(vec4<bool>(any(var_1), var_1.x, !var_3.c.x, all(var_3.c))), any(vec2<bool>(true, false)), false));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_add_vec4_u32(countOneBits(~vec4<u32>(2007u, var_2.x, 1u, 1u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, 1u, 4294967295u), vec4<u32>(u_input.e.x, u_input.e.x, 31779u, var_2.x))) >> (_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(var_3.a.x, var_3.d.x, 0u, 0u)), vec4<u32>(14486u, 0u, var_3.d.x, var_3.a.x)), ~(~vec4<u32>(51483u, 1u, 0u, var_2.x))) % vec4<u32>(32u)), abs(vec3<i32>(~(-20116i), _wgslsmith_dot_vec4_i32(reverseBits(u_input.b), vec4<i32>(u_input.c, u_input.b.x, 0i, -116i)), -2147483647i)));
}

