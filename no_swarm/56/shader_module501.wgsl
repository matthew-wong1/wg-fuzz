struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: Struct_3,
    d: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    return false;
}

fn func_2() -> Struct_5 {
    let var_0 = Struct_1(select(select(vec2<bool>(true, select(true, true, false)), select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(false, false), true)), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec2<bool>(func_3() && any(vec3<bool>(true, true, false)), true == all(vec4<bool>(false, false, true, false))), false), true);
    var var_1 = -553f;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1763f, _wgslsmith_f_op_f32(select(111f, -161f, false))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2110f, 1061f))))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1363f, 461f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(425f, -208f))))))));
    global0 = _wgslsmith_add_vec4_u32(~(~vec4<u32>(~global0.x, global0.x, 18785u, max(43971u, u_input.c))), vec4<u32>(global0.x, _wgslsmith_mult_u32(~_wgslsmith_mult_u32(4294967295u, u_input.a.x), global0.x), ~(~(~1u)), u_input.c & ~(~global0.x)));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.x * -302f)))) + 677f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1774f + 242f) + 1000f), _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1026f))), true)));
    return Struct_5(global0.x, Struct_2(u_input.b.x, Struct_1(select(vec2<bool>(var_0.b, var_0.b), select(vec2<bool>(var_0.a.x, true), var_0.a, vec2<bool>(false, var_0.a.x)), vec2<bool>(var_0.a.x, false)), true), 26591i << (u_input.a.x % 32u), var_0.a.x, var_0), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(337f, _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_vec2_f32(var_2 * vec2<f32>(_wgslsmith_f_op_f32(floor(var_2.x)), var_2.x)))));
}

fn func_4(arg_0: Struct_5) -> vec3<bool> {
    let var_0 = vec2<bool>(all(vec3<bool>(arg_0.b.d, arg_0.b.d, false || !arg_0.b.e.a.x)), !arg_0.b.b.a.x);
    var var_1 = func_2();
    var var_2 = (~u_input.b.x & (_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.b.yz, u_input.b.xy), ~vec2<i32>(-1i, arg_0.b.c)) ^ 1i)) ^ var_1.b.a;
    var var_3 = func_2().b;
    var var_4 = arg_0;
    return !(!vec3<bool>(!(!arg_0.b.b.b), var_0.x, true));
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = vec4<bool>(any(vec3<bool>(select(true, true, false) & true, false, true)), true, false, all(select(func_4(func_2()), vec3<bool>(true, true, true), func_4(func_2()))));
    let var_1 = Struct_1(func_4(Struct_5(~u_input.a.x, Struct_2(~(-24947i), func_2().b.e, 1047i, true, Struct_1(vec2<bool>(true, true), false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1038f, 697f) * vec2<f32>(-631f, 1843f))))).yx, var_0.x);
    let var_2 = vec2<u32>(u_input.c, func_2().a);
    var var_3 = select(countOneBits((~vec4<u32>(var_2.x, u_input.a.x, 4294967295u, 1u) ^ vec4<u32>(62013u, 0u, 5701u, 56478u)) & reverseBits(~vec4<u32>(0u, u_input.a.x, 16077u, u_input.a.x))), ~reverseBits(~(~vec4<u32>(78987u, global0.x, 182748u, var_2.x))), !var_0);
    return Struct_2(u_input.b.x, Struct_1(func_4(Struct_5(_wgslsmith_add_u32(u_input.a.x, 0u), Struct_2(u_input.b.x, var_1, 1i, var_1.a.x, var_1), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1823f, 1000f), vec2<f32>(956f, 626f))))).xz, var_0.x), -41505i, !(!(!all(vec3<bool>(false, var_1.a.x, false)))), var_1);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_5, arg_2: Struct_5, arg_3: i32) -> Struct_2 {
    let var_0 = func_1(-(~(-5264i))).e.b;
    let var_1 = Struct_2(arg_0.a, func_2().b.b, ~arg_0.a, !func_4(func_2()).x, arg_0.b);
    global0 = ~_wgslsmith_add_vec4_u32(~vec4<u32>(_wgslsmith_clamp_u32(u_input.a.x, 23643u, 7529u), arg_1.a, 0u, ~arg_1.a), ~countOneBits(~vec4<u32>(arg_2.a, global0.x, 4294967295u, 0u)));
    let var_2 = var_1;
    global0 = firstTrailingBit(~max(~vec4<u32>(8922u, u_input.c, global0.x, u_input.c), ~vec4<u32>(global0.x, 0u, arg_2.a, global0.x)));
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(-1373i), func_2(), Struct_5(u_input.a.x, Struct_2(~_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(1i, 1i, u_input.b.x)), func_2().b.b, func_1(_wgslsmith_div_i32(u_input.b.x, u_input.b.x)).c, func_1(1i).e.b, Struct_1(select(vec2<bool>(true, false), vec2<bool>(false, false), false), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(740f, -1000f)) - vec2<f32>(_wgslsmith_f_op_f32(min(696f, 665f)), _wgslsmith_f_op_f32(-598f + 205f)))), -1i);
    var var_1 = 59944u;
    global0 = _wgslsmith_mult_vec4_u32(countOneBits(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(global0.x, u_input.a.x, 14694u, 56762u), vec4<u32>(global0.x, global0.x, global0.x, u_input.a.x), abs(vec4<u32>(global0.x, 0u, u_input.c, 4294967295u))), ~vec4<u32>(1u, 32903u, 5828u, 1u), abs(~vec4<u32>(global0.x, u_input.c, 23958u, global0.x)))), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(~u_input.a.x, u_input.a.x, 43545u, 0u)), vec4<u32>(~11017u, min(4294967295u, 0u), 1u, ~60145u) << (~firstTrailingBit(vec4<u32>(global0.x, global0.x, global0.x, u_input.c)) % vec4<u32>(32u))));
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(1368f * 307f), _wgslsmith_f_op_f32(3409f * 1000f), _wgslsmith_div_f32(706f, -1000f), _wgslsmith_f_op_f32(min(-1840f, 1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-296f, -955f, 352f, -1000f), vec4<f32>(528f, 569f, -1000f, -292f), vec4<bool>(false, false, var_0.d, var_0.e.a.x)))), !vec4<bool>(true, true, var_0.d, var_0.b.a.x)))))));
    let var_3 = reverseBits(var_0.c);
    let var_4 = vec2<f32>(832f, -681f);
    var_0 = Struct_2(u_input.b.x, func_5(func_2().b, func_2(), Struct_5(~1u, func_5(Struct_2(2147483647i, Struct_1(vec2<bool>(var_0.e.b, false), true), 3824i, var_0.b.a.x, var_0.b), func_2(), func_2(), select(var_0.c, -18806i, true)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.x, -610f)))))), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-1908i, 3257i, u_input.b.x, 2147483647i), vec4<i32>(1i, var_0.a, var_3, 60831i)) ^ (i32(-1i) * -21738i))).b, -1i << (global0.x % 32u), var_0.d, var_0.b);
    var var_5 = vec3<u32>(18019u, 1u, _wgslsmith_mult_u32(reverseBits(~_wgslsmith_dot_vec3_u32(global0.zzw, vec3<u32>(132869u, 95440u, u_input.a.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(44398u, firstTrailingBit(u_input.a.x), u_input.c ^ 58651u, global0.x), ~(~vec4<u32>(u_input.c, global0.x, 1u, global0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(var_0.c ^ var_0.c));
}

