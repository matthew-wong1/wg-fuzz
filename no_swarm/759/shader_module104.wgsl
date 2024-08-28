struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: vec4<f32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<f32>(-282f, -549f, -867f, -907f), 7862u, Struct_1(vec3<i32>(52689i, -1i, 1i), vec2<f32>(-846f, -2581f), 2147483647i, vec2<i32>(-43188i, -54183i), vec2<i32>(0i, 2147483647i)), vec4<i32>(-12586i, 53367i, -32890i, 9389i));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: Struct_4) -> vec2<i32> {
    let var_0 = abs(min(~arg_2.b.a.x, _wgslsmith_mod_u32(global0.b, ~1u)));
    var var_1 = _wgslsmith_dot_vec4_i32(-select(_wgslsmith_div_vec4_i32(min(global0.d, vec4<i32>(-48380i, global0.d.x, arg_2.b.b, u_input.a)), vec4<i32>(0i, arg_1.x, arg_1.x, arg_2.b.b)), countOneBits(vec4<i32>(arg_2.b.b, arg_2.b.b, -1i, 0i)), false), ~vec4<i32>(-56789i | arg_2.b.b, firstTrailingBit(-2147483647i), 2147483647i, arg_1.x) >> (vec4<u32>(arg_2.b.a.x, arg_2.b.a.x, ~_wgslsmith_clamp_u32(u_input.c.x, 3191u, u_input.c.x), 22660u) % vec4<u32>(32u)));
    var var_2 = !vec3<bool>(arg_0.x, all(select(vec4<bool>(true, true, true, true), !vec4<bool>(false, arg_0.x, true, true), arg_0.x)), false);
    var var_3 = Struct_3(~arg_2.b.a, -max(u_input.b, _wgslsmith_div_i32(-37566i, arg_2.b.b)));
    var_1 = global0.d.x;
    return global0.c.a.yx << (_wgslsmith_clamp_vec2_u32(arg_2.b.a.yw, ~select(vec2<u32>(global0.b, u_input.c.x), ~arg_2.b.a.ww, vec2<bool>(true, true)), ~vec2<u32>(4294967295u, ~0u)) % vec2<u32>(32u));
}

fn func_2() -> Struct_3 {
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global0.a)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(global0.a * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-285f, -1463f, 1076f, 386f)))))), _wgslsmith_mult_u32(~_wgslsmith_clamp_u32(1u, 4294967295u, u_input.c.x), countOneBits(u_input.c.x)), Struct_1(global0.d.xzy, global0.c.b, u_input.b, min(global0.c.e, _wgslsmith_div_vec2_i32(func_3(vec3<bool>(false, false, true), vec2<i32>(-13233i, 24099i), Struct_4(vec2<f32>(-1259f, 802f), Struct_3(vec4<u32>(4294967295u, u_input.c.x, 3365u, 563u), -3681i), vec4<f32>(758f, global0.a.x, global0.c.b.x, global0.c.b.x))), vec2<i32>(u_input.d.x, 2147483647i))), reverseBits(u_input.d | vec2<i32>(u_input.a, global0.d.x))), global0.d);
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, -1260f, -330f, 805f)), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), false)))), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 58565u, u_input.c.x, u_input.c.x), vec4<u32>(0u, 4294967295u, 31175u, 6399u)), vec4<u32>(max(23595u, 43367u), 62313u, u_input.c.x, max(1u, 46994u))), reverseBits(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, global0.b, u_input.c.x, u_input.c.x)))), global0.c, vec4<i32>(2147483647i, u_input.b, -(~(-26355i)), i32(-1i) * -1i));
    let var_0 = Struct_5(Struct_2(global0.a, ~max(u_input.c.x, u_input.c.x ^ global0.b), Struct_1(vec3<i32>(-26970i, select(u_input.a, u_input.a, false), u_input.a), _wgslsmith_f_op_vec2_f32(-global0.a.xx), ~abs(-42301i), u_input.d, -select(global0.c.d, u_input.d, false)), vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(global0.c.a, global0.c.a), global0.d.x >> (global0.b % 32u), firstTrailingBit(u_input.d.x)), -1i, u_input.d.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(22221i, global0.d.x, 2147483647i), vec3<i32>(-4203i, u_input.b, global0.d.x) << (u_input.c % vec3<u32>(32u))))));
    var var_1 = ~abs(countOneBits(global0.b));
    var_1 = _wgslsmith_sub_u32(u_input.c.x, ~(~26647u));
    return Struct_3(countOneBits(abs(vec4<u32>(var_0.a.b, 28378u, global0.b, _wgslsmith_mod_u32(u_input.c.x, u_input.c.x)))), -1i);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_3) -> vec4<bool> {
    var var_0 = Struct_3(~arg_1.a, ~(~_wgslsmith_add_i32(_wgslsmith_mod_i32(global0.d.x, u_input.a), firstTrailingBit(global0.d.x))));
    let var_1 = !(-2147483647i != var_0.b);
    var_0 = func_2();
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-822f, global0.a.x)) * _wgslsmith_div_f32(global0.c.b.x, global0.c.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.b.x * -1011f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.x, global0.c.b.x)), -3068f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global0.a, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.c.b.x, global0.a.x, global0.c.b.x, 1132f))), true)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-495f, 205f, global0.c.b.x, global0.c.b.x) + global0.a) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-397f, global0.c.b.x, -141f, 486f))))), var_1 == false)), _wgslsmith_dot_vec4_u32(var_0.a, ~arg_1.a), global0.c, vec4<i32>(_wgslsmith_dot_vec3_i32(global0.d.wzz, reverseBits(reverseBits(global0.c.a))), _wgslsmith_mod_i32(-8131i, -arg_1.b) & _wgslsmith_add_i32(reverseBits(0i), 14379i), arg_1.b, -1i));
    var var_3 = ~(~countOneBits(arg_1.a.wxz));
    return !(!(!select(!vec4<bool>(false, var_1, true, true), vec4<bool>(false, var_1, var_1, var_1), true)));
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: f32, arg_3: vec3<i32>) -> StorageBuffer {
    let var_0 = global0.a;
    var var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(19388u, global0.b), _wgslsmith_mult_vec2_u32(arg_0.b.a.xz, vec2<u32>(u_input.c.x, 4294967295u))) << ((vec2<u32>(u_input.c.x, u_input.c.x) ^ vec2<u32>(global0.b, u_input.c.x)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(~vec2<u32>(10348u, 0u), vec2<u32>(0u << (1u % 32u), arg_0.b.a.x))), ~(arg_0.b.a.yw ^ vec2<u32>(8727u, _wgslsmith_div_u32(global0.b, global0.b))));
    var var_2 = var_0.xw;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-391f, 1367f) * arg_0.a.x);
    var var_4 = Struct_3(firstLeadingBit(arg_0.b.a) >> (func_2().a % vec4<u32>(32u)), arg_0.b.b);
    return StorageBuffer(var_4.a, -418f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1671f, global0.c.b.x) - global0.a.zy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(204f, global0.a.x), vec2<f32>(global0.a.x, -2183f), false))), any(func_1(u_input.c, Struct_3(vec4<u32>(global0.b, u_input.c.x, 1u, u_input.c.x), -2147483647i))))), Struct_3(vec4<u32>(u_input.c.x >> (44776u % 32u), ~69477u, ~global0.b, _wgslsmith_add_u32(4294967295u, global0.b)), abs(~global0.d.x)), global0.a), 19865i, global0.a.x, -(countOneBits(-global0.c.a) | global0.c.a));
}

