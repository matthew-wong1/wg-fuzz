struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: i32,
    e: f32,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(false, vec4<u32>(1949u, 109202u, 22093u, 1u), true), Struct_1(true, vec4<u32>(1u, 35834u, 29346u, 1u), false), Struct_1(true, vec4<u32>(35372u, 4294967295u, 4294967295u, 4294967295u), false), Struct_1(true, vec4<u32>(105257u, 1u, 4294967295u, 30426u), true), Struct_1(false, vec4<u32>(1u, 13035u, 1979u, 0u), false), Struct_1(false, vec4<u32>(4294967295u, 0u, 800u, 1410u), true), Struct_1(true, vec4<u32>(45110u, 38647u, 2823u, 21242u), true), Struct_1(false, vec4<u32>(8930u, 65818u, 1u, 1u), false), Struct_1(false, vec4<u32>(6365u, 0u, 1u, 0u), true), Struct_1(false, vec4<u32>(38780u, 25846u, 4294967295u, 25585u), false), Struct_1(false, vec4<u32>(4294967295u, 4294967295u, 25871u, 1u), true), Struct_1(true, vec4<u32>(22411u, 1u, 28884u, 34563u), true), Struct_1(false, vec4<u32>(9339u, 1277u, 4294967295u, 63094u), true), Struct_1(true, vec4<u32>(19234u, 0u, 101752u, 4294967295u), false), Struct_1(false, vec4<u32>(53495u, 0u, 0u, 0u), false), Struct_1(false, vec4<u32>(1u, 0u, 0u, 4294967295u), false), Struct_1(true, vec4<u32>(30420u, 29910u, 1u, 0u), false), Struct_1(false, vec4<u32>(62941u, 0u, 58689u, 43319u), false), Struct_1(true, vec4<u32>(4294967295u, 100853u, 4294967295u, 49458u), false), Struct_1(false, vec4<u32>(10060u, 16388u, 51717u, 71630u), true), Struct_1(true, vec4<u32>(86445u, 4294967295u, 4294967295u, 0u), true), Struct_1(true, vec4<u32>(88545u, 69178u, 0u, 1448u), true), Struct_1(true, vec4<u32>(0u, 7411u, 1u, 59340u), true), Struct_1(true, vec4<u32>(1u, 1u, 4294967295u, 0u), false), Struct_1(false, vec4<u32>(1u, 0u, 4294967295u, 0u), true), Struct_1(true, vec4<u32>(23551u, 1u, 56917u, 38093u), false), Struct_1(true, vec4<u32>(47106u, 4294967295u, 4294967295u, 4294967295u), true), Struct_1(false, vec4<u32>(1u, 0u, 32742u, 29719u), true), Struct_1(true, vec4<u32>(57425u, 0u, 28316u, 29542u), false), Struct_1(true, vec4<u32>(6010u, 0u, 0u, 5092u), true));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: vec4<u32>, arg_3: Struct_5) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1000f, arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(230f, 447f, arg_0, 707f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, 946f, 1189f, 625f), vec4<f32>(-866f, 856f, -1496f, -310f), true)))))), vec4<bool>(false, true, true, arg_1.x)));
    var var_1 = ~u_input.b;
    var_1 = u_input.c.x;
    let var_2 = arg_3.a.b.c;
    var var_3 = var_0.x;
    return !select(!select(!vec4<bool>(var_2, arg_1.x, true, arg_3.a.b.c), vec4<bool>(true, false, true, false), false), select(select(select(vec4<bool>(var_2, true, true, false), vec4<bool>(arg_3.a.b.a, var_2, arg_3.a.b.a, arg_1.x), vec4<bool>(var_2, true, true, false)), !vec4<bool>(true, arg_3.a.b.c, false, true), 1u < u_input.c.x), select(select(vec4<bool>(arg_1.x, false, arg_1.x, var_2), vec4<bool>(false, var_2, arg_1.x, arg_1.x), arg_1.x), !vec4<bool>(arg_3.a.b.c, true, arg_3.a.b.c, true), !vec4<bool>(true, false, arg_1.x, var_2)), select(!vec4<bool>(true, false, arg_1.x, var_2), vec4<bool>(true, arg_3.a.b.c, true, false), !vec4<bool>(arg_3.a.b.c, arg_3.a.b.c, arg_1.x, false))), arg_3.a.b.c);
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: vec2<u32>, arg_3: f32) -> f32 {
    let var_0 = any(!func_3(_wgslsmith_f_op_f32(f32(-1f) * -359f), select(select(vec3<bool>(true, false, arg_1), vec3<bool>(false, arg_1, arg_1), arg_1), vec3<bool>(false, true, arg_1), !vec3<bool>(arg_1, arg_1, arg_1)), vec4<u32>(~arg_2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_2.x, 44327u), u_input.c), _wgslsmith_div_u32(u_input.c.x, 4294967295u), select(arg_2.x, 4294967295u, arg_1)), Struct_5(Struct_2(92526u, Struct_1(false, vec4<u32>(u_input.b, u_input.c.x, u_input.b, u_input.b), arg_1)))));
    let var_1 = _wgslsmith_f_op_f32(-736f + _wgslsmith_f_op_f32(ceil(arg_3)));
    let var_2 = Struct_4(-468f, _wgslsmith_add_vec2_u32(vec2<u32>(~1u, (u_input.b ^ 0u) >> ((arg_2.x << (49477u % 32u)) % 32u)), reverseBits(_wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, u_input.c.x), ~u_input.c.xx, abs(arg_2)))));
    let var_3 = Struct_2(1u, global0[_wgslsmith_index_u32(1u, 30u)]);
    let var_4 = var_2.b.x;
    return _wgslsmith_div_f32(var_2.a, 294f);
}

fn func_1() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<i32>(u_input.a, u_input.a), true, vec2<u32>(1450u, 0u), -1003f)) + 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1621f - 385f)), 414f))));
    var var_1 = _wgslsmith_mult_vec4_u32(~(min(firstLeadingBit(vec4<u32>(41158u, 27365u, u_input.c.x, u_input.c.x)), firstTrailingBit(vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.c.x))) & vec4<u32>(63041u, firstTrailingBit(4294967295u), reverseBits(u_input.b), countOneBits(1u))), countOneBits(vec4<u32>(~u_input.c.x << (62022u % 32u), u_input.b, ~u_input.c.x, 82591u)));
    var var_2 = Struct_4(var_0.x, select(u_input.c.xz, _wgslsmith_mod_vec2_u32(var_1.zy, ~_wgslsmith_add_vec2_u32(u_input.c.xy, vec2<u32>(var_1.x, u_input.b))), func_3(var_0.x, select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true)), vec4<u32>(~3018u, u_input.c.x | 37737u, ~u_input.c.x, 1u), Struct_5(Struct_2(u_input.b, Struct_1(false, vec4<u32>(4294967295u, u_input.c.x, 16060u, u_input.b), true)))).xx));
    var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), ~vec2<u32>(1u, 0u));
    let var_3 = vec4<u32>(var_1.x, 24747u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(select(max(vec2<u32>(39782u, 0u), vec2<u32>(4294967295u, u_input.c.x)), firstTrailingBit(var_1.zy), vec2<bool>(true, true)), var_2.b), 1u), ~(~(~abs(34539u))));
    return _wgslsmith_add_vec2_u32(var_3.zx, var_2.b);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_2) -> StorageBuffer {
    global0 = array<Struct_1, 30>();
    var var_0 = arg_1.b.yy;
    var_0 = u_input.c.xz >> (_wgslsmith_mult_vec2_u32(reverseBits(_wgslsmith_sub_vec2_u32(arg_0, arg_2.b.b.zz)), firstLeadingBit(~vec2<u32>(22991u, arg_0.x) | firstTrailingBit(vec2<u32>(0u, arg_0.x)))) % vec2<u32>(32u));
    return StorageBuffer(~36287u, -vec4<i32>(2147483647i, _wgslsmith_sub_i32(u_input.a << (arg_2.a % 32u), 2147483647i | u_input.a), _wgslsmith_div_i32(-57476i, -u_input.a), 0i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    let var_0 = 928f;
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    var var_1 = Struct_4(var_0, vec2<u32>(_wgslsmith_add_u32(u_input.c.x, u_input.b), ~u_input.c.x));
    var_1 = Struct_4(-769f, ~(~select(vec2<u32>(10005u, var_1.b.x), u_input.c.zy, vec2<bool>(false, true)) ^ abs(vec2<u32>(4294967295u, 16950u))));
    let x = u_input.a;
    s_output = func_4(func_1(), global0[_wgslsmith_index_u32(var_1.b.x, 30u)], Struct_2(~firstLeadingBit(firstTrailingBit(0u)), Struct_1(true, ~vec4<u32>(34647u, var_1.b.x, var_1.b.x, u_input.c.x) | vec4<u32>(u_input.c.x, 4294967295u, 22087u, var_1.b.x), true)));
}

