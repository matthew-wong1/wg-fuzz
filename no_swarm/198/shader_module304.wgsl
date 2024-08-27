struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: vec4<bool>,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 7> = array<vec4<u32>, 7>(vec4<u32>(4294967295u, 33069u, 23629u, 33014u), vec4<u32>(1u, 0u, 1u, 23424u), vec4<u32>(4294967295u, 4294967295u, 17793u, 41860u), vec4<u32>(38041u, 4294967295u, 1u, 48475u), vec4<u32>(1u, 4294967295u, 92647u, 48378u), vec4<u32>(81341u, 0u, 1u, 81633u), vec4<u32>(35669u, 1u, 0u, 19614u));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2) -> vec4<u32> {
    global0 = array<vec4<u32>, 7>();
    return ~_wgslsmith_mult_vec4_u32(vec4<u32>(~1u, u_input.e, arg_0.x, countOneBits(4294967295u)), arg_0) | (_wgslsmith_div_vec4_u32(~vec4<u32>(33341u, arg_1.b.d.x, 24173u, 12599u) & _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, arg_1.b.d.x, arg_0.x, 23663u), arg_0), vec4<u32>(_wgslsmith_dot_vec4_u32(arg_0, arg_1.b.d), arg_1.b.d.x, 37654u, reverseBits(u_input.a.x))) ^ ~vec4<u32>(~arg_0.x, u_input.a.x & 102548u, 1u, arg_0.x));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3) -> Struct_3 {
    let var_0 = 1u;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1701f), Struct_1(vec3<bool>(arg_2.a.x, arg_2.a.x, true), arg_1.a, arg_0.b.xw, func_3(reverseBits(abs(vec4<u32>(143050u, 0u, var_0, u_input.a.x))), Struct_2(arg_0.b.x, Struct_1(vec3<bool>(true, false, arg_1.a.x), arg_2.a, arg_2.b.xz, global0[_wgslsmith_index_u32(40437u, 7u)], arg_1.a.x), true & arg_1.a.x)), arg_0.a.x), arg_2.a.x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x * -103f));
    var var_3 = Struct_2(380f, Struct_1(vec3<bool>(var_1.c, arg_0.a.x, arg_2.a.x), !arg_1.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(1197f, 935f)), _wgslsmith_div_f32(-963f, arg_2.b.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_2.b.xx)))), global0[_wgslsmith_index_u32(1u, 7u)], any(!arg_1.a)), arg_0.a.x);
    var_1 = Struct_2(var_1.b.c.x, var_3.b, false);
    return Struct_3(select(!vec2<bool>(false, var_3.b.b.x), select(vec2<bool>(true, true), select(var_3.b.b, arg_1.a, var_3.a != var_1.a), !(!arg_2.a)), select(select(var_3.b.a.yx, var_1.b.a.yx, var_1.b.a.zy), select(!var_1.b.a.xz, !arg_2.a, arg_2.a.x), !vec2<bool>(arg_1.a.x, var_3.b.b.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(trunc(415f)), 1864f, _wgslsmith_f_op_f32(min(662f, 500f))) + vec4<f32>(var_3.b.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2022f - -330f))), arg_2.b.x, 901f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) + arg_2.b.x))));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_5, arg_3: vec4<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), -1336f, _wgslsmith_f_op_f32(sign(arg_1.b.x)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(arg_1.b.x + arg_0), _wgslsmith_f_op_f32(ceil(1604f)), arg_0))), select(select(vec3<bool>(arg_1.a.x, arg_2.b.x, arg_1.a.x), vec3<bool>(false, true, true), select(vec3<bool>(false, arg_2.a.c.x, false), arg_2.a.d.b.a, arg_2.b.x)), select(vec3<bool>(false, arg_1.a.x, true), vec3<bool>(true, arg_2.b.x, arg_2.b.x), !vec3<bool>(true, false, arg_2.a.a.a.x)), !(!vec3<bool>(arg_1.a.x, true, true))))));
    var var_1 = arg_2.a.d.b;
    var_1 = arg_2.a.d.b;
    let var_2 = false;
    global0 = array<vec4<u32>, 7>();
    return arg_2.a.d;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_5, arg_2: vec2<bool>) -> Struct_4 {
    global0 = array<vec4<u32>, 7>();
    let var_0 = arg_1.a.d.b.c.x;
    global0 = array<vec4<u32>, 7>();
    let var_1 = arg_1.a.d.b;
    var var_2 = var_1.c.x;
    return arg_1.a;
}

fn func_1() -> Struct_5 {
    let var_0 = true;
    return Struct_5(func_5(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-124f + 1591f) - 1242f), func_2(Struct_3(vec2<bool>(var_0, var_0), vec4<f32>(-681f, -841f, -1942f, 205f), 555f), Struct_3(vec2<bool>(var_0, false), vec4<f32>(766f, -1356f, -1540f, 353f), -2049f), Struct_3(vec2<bool>(var_0, var_0), vec4<f32>(-1328f, 319f, -510f, 801f), -770f)), Struct_5(Struct_4(Struct_3(vec2<bool>(var_0, false), vec4<f32>(-183f, -1000f, 177f, -145f), 1000f), vec4<i32>(u_input.d, 42575i, 1i, u_input.d), vec4<bool>(var_0, var_0, true, var_0), Struct_2(-541f, Struct_1(vec3<bool>(true, var_0, false), vec2<bool>(false, false), vec2<f32>(-318f, -160f), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.e), var_0), var_0)), !vec3<bool>(false, false, var_0)), vec4<f32>(_wgslsmith_f_op_f32(trunc(1930f)), -728f, _wgslsmith_div_f32(884f, -2291f), _wgslsmith_f_op_f32(ceil(1321f)))), Struct_5(Struct_4(func_2(Struct_3(vec2<bool>(true, var_0), vec4<f32>(930f, 1363f, 1346f, -364f), -258f), Struct_3(vec2<bool>(var_0, false), vec4<f32>(671f, -1601f, 1201f, -1918f), 527f), Struct_3(vec2<bool>(var_0, true), vec4<f32>(-1804f, -1015f, -467f, -1151f), -1000f)), vec4<i32>(u_input.b, u_input.d, u_input.c.x, u_input.b), !vec4<bool>(var_0, true, var_0, var_0), Struct_2(-1356f, Struct_1(vec3<bool>(false, var_0, false), vec2<bool>(var_0, false), vec2<f32>(-137f, -227f), vec4<u32>(70933u, 62951u, u_input.e, u_input.e), var_0), var_0)), !(!vec3<bool>(false, var_0, var_0))), select(vec2<bool>(all(vec3<bool>(false, var_0, var_0)), true), !func_4(1403f, Struct_3(vec2<bool>(var_0, var_0), vec4<f32>(-143f, 889f, -772f, 1155f), 1000f), Struct_5(Struct_4(Struct_3(vec2<bool>(var_0, true), vec4<f32>(-112f, 1145f, -430f, 1582f), -1355f), vec4<i32>(-1i, u_input.b, u_input.b, u_input.d), vec4<bool>(var_0, var_0, true, var_0), Struct_2(2356f, Struct_1(vec3<bool>(var_0, false, false), vec2<bool>(true, var_0), vec2<f32>(939f, -701f), global0[_wgslsmith_index_u32(u_input.e, 7u)], var_0), false)), vec3<bool>(var_0, var_0, var_0)), vec4<f32>(1365f, -1094f, 1330f, 1834f)).b.a.xz, vec2<bool>(true, true))), vec3<bool>(!((i32(-1i) * -6952i) == u_input.b), true, false && (func_4(1199f, Struct_3(vec2<bool>(false, false), vec4<f32>(906f, 504f, -222f, 455f), 845f), Struct_5(Struct_4(Struct_3(vec2<bool>(var_0, var_0), vec4<f32>(968f, -946f, -1895f, -222f), -613f), vec4<i32>(u_input.d, u_input.c.x, 18758i, -2582i), vec4<bool>(var_0, true, true, var_0), Struct_2(-1456f, Struct_1(vec3<bool>(false, var_0, false), vec2<bool>(true, var_0), vec2<f32>(-1027f, 456f), global0[_wgslsmith_index_u32(0u, 7u)], false), var_0)), vec3<bool>(false, var_0, true)), vec4<f32>(-1159f, -907f, -257f, 122f)).c | true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 42249u), u_input.a);
    var var_1 = func_1();
    var_1 = Struct_5(Struct_4(func_1().a.a, func_5(func_5(Struct_2(-227f, var_1.a.d.b, var_1.a.d.c), Struct_5(var_1.a, vec3<bool>(false, true, var_1.a.a.a.x)), vec2<bool>(true, true)).d, func_1(), vec2<bool>(var_1.b.x, var_1.b.x)).b & select(firstLeadingBit(vec4<i32>(var_1.a.b.x, u_input.c.x, var_1.a.b.x, u_input.c.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, -2147483647i, -60993i, u_input.b), var_1.a.b), vec4<bool>(var_1.a.d.b.a.x, var_1.b.x, var_1.a.d.c, var_1.a.d.b.a.x)), func_5(Struct_2(-1242f, func_5(var_1.a.d, Struct_5(var_1.a, var_1.a.c.yzx), var_1.a.d.b.a.zy).d.b, false), func_1(), var_1.a.d.b.a.zx).c, var_1.a.d), !select(vec3<bool>(true, all(var_1.a.c), all(var_1.b.xz)), var_1.a.d.b.a, true));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.a.a.b.x * _wgslsmith_div_f32(1931f, _wgslsmith_f_op_f32(select(var_1.a.a.b.x, -258f, var_1.a.a.a.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a.d.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.d.b.c.x)) - _wgslsmith_f_op_f32(1633f - var_1.a.a.c)), !all(var_1.b.xx)));
    global0 = array<vec4<u32>, 7>();
    let var_3 = var_1.a;
    var var_4 = var_3.c;
    global0 = array<vec4<u32>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_1.a.a.b.xwx))), max(max(_wgslsmith_mod_vec2_i32(~vec2<i32>(var_1.a.b.x, 0i), ~vec2<i32>(-2147483647i, var_1.a.b.x)), var_1.a.b.wz >> (var_1.a.d.b.d.yx % vec2<u32>(32u))), max(var_3.b.xx, u_input.c)));
}

