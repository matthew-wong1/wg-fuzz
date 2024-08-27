struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1479f);
    global0 = array<i32, 6>();
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1150f))));
    let var_2 = _wgslsmith_mod_vec4_i32(~countOneBits(vec4<i32>(-global0[_wgslsmith_index_u32(u_input.c, 6u)], arg_2.a.x, -22107i, 0i)), min(vec4<i32>(0i, _wgslsmith_dot_vec4_i32(u_input.d ^ vec4<i32>(42645i, 5072i, 21879i, u_input.a), u_input.d), -arg_2.a.x, ~1i), _wgslsmith_div_vec4_i32(vec4<i32>(~u_input.d.x, u_input.a, -27273i, arg_2.a.x), u_input.d)));
    var var_3 = Struct_3(-620f, arg_1, !vec2<bool>(true, !any(vec2<bool>(false, false))), ~_wgslsmith_dot_vec4_u32((vec4<u32>(u_input.c, 1u, arg_1.a.x, u_input.c) | vec4<u32>(u_input.c, 1u, 0u, u_input.c)) ^ (vec4<u32>(0u, u_input.c, 1u, 33269u) & vec4<u32>(77473u, 4294967295u, arg_1.a.x, 1u)), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 4294967295u, 13750u, 0u), vec4<u32>(u_input.c, arg_1.a.x, u_input.c, 48900u)), vec4<u32>(u_input.c, arg_1.a.x, arg_1.a.x, arg_1.a.x) << (vec4<u32>(arg_1.a.x, u_input.c, 4294967295u, 17880u) % vec4<u32>(32u)))));
    return var_3.c.x;
}

fn func_3(arg_0: vec3<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(350f)))));
    let var_1 = ~vec3<u32>(u_input.c, _wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_div_u32(30449u, 28768u)), ~u_input.c & u_input.c, ~170u), ~u_input.c);
    global0 = array<i32, 6>();
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1456f, -1215f, true)) * -847f)))) + 1272f);
    global0 = array<i32, 6>();
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(521f))), Struct_1(var_1), arg_0.xy, abs(countOneBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, var_1.x), var_1.zx))));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = func_3(vec3<bool>(true, !(any(vec4<bool>(true, true, false, false)) & false), !func_2(-33819i, arg_2, arg_0)));
    global0 = array<i32, 6>();
    global0 = array<i32, 6>();
    let var_1 = arg_2;
    var var_2 = any(select(!(!select(vec4<bool>(true, var_0.c.x, false, true), vec4<bool>(true, true, var_0.c.x, var_0.c.x), vec4<bool>(var_0.c.x, true, true, var_0.c.x))), vec4<bool>(true, !select(var_0.c.x, var_0.c.x, var_0.c.x), true, var_0.c.x), vec4<bool>(var_0.c.x, true, !any(vec4<bool>(false, var_0.c.x, var_0.c.x, false)), all(select(vec2<bool>(var_0.c.x, var_0.c.x), vec2<bool>(true, var_0.c.x), var_0.c)))));
    return vec3<u32>(var_1.a.x, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_1.a.x, var_0.d, 4294967295u, arg_2.a.x) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 167851u, var_0.d, 24389u), vec4<u32>(57839u, arg_2.a.x, 41523u, 0u)) % vec4<u32>(32u))), select(vec4<u32>(min(19279u, 0u), var_0.b.a.x | var_0.d, ~var_1.a.x, _wgslsmith_sub_u32(arg_2.a.x, 4294967295u)), _wgslsmith_add_vec4_u32(~vec4<u32>(arg_2.a.x, 1u, 4294967295u, arg_2.a.x), ~vec4<u32>(4294967295u, var_1.a.x, 15408u, 52239u)), !(!vec4<bool>(false, var_0.c.x, var_0.c.x, var_0.c.x)))), max(var_1.a.x, ~arg_2.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 6>();
    let var_0 = vec4<i32>(_wgslsmith_mod_i32(-u_input.b, u_input.b), global0[_wgslsmith_index_u32(~u_input.c, 6u)], -global0[_wgslsmith_index_u32(u_input.c, 6u)], ~_wgslsmith_dot_vec2_i32(u_input.d.zy, u_input.d.yz) | (i32(-1i) * -3213i));
    global0 = array<i32, 6>();
    global0 = array<i32, 6>();
    var var_1 = Struct_1(max(vec3<u32>(49222u, u_input.c, u_input.c) & vec3<u32>(19013u, u_input.c, u_input.c), func_1(Struct_2(var_0.yx), vec3<i32>(15302i, var_0.x, 2147483647i), Struct_1(vec3<u32>(u_input.c, 0u, u_input.c)))) & func_1(Struct_2(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, var_0.x), vec2<i32>(u_input.b, u_input.d.x))), -abs(vec3<i32>(-2147483647i, u_input.b, -5621i)), func_3(vec3<bool>(true, true, true)).b));
    let var_2 = false || !(!(~var_1.a.x <= func_1(Struct_2(u_input.d.ww), vec3<i32>(2147483647i, -7435i, -2883i), Struct_1(vec3<u32>(u_input.c, var_1.a.x, u_input.c))).x));
    var var_3 = func_3(select(select(!select(vec3<bool>(var_2, var_2, false), vec3<bool>(var_2, var_2, var_2), vec3<bool>(true, var_2, true)), !vec3<bool>(var_2, var_2, true), func_2(u_input.d.x, Struct_1(vec3<u32>(var_1.a.x, 4294967295u, var_1.a.x)), Struct_2(vec2<i32>(u_input.d.x, u_input.a)))), vec3<bool>(var_2, var_2, func_2(global0[_wgslsmith_index_u32(1117u, 6u)], Struct_1(vec3<u32>(1u, var_1.a.x, 28163u)), Struct_2(vec2<i32>(2147483647i, var_0.x))) & !var_2), true)).b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, abs(vec2<i32>(var_0.x, _wgslsmith_div_i32(-8583i, global0[_wgslsmith_index_u32(u_input.c, 6u)] ^ -2147483647i))));
}

