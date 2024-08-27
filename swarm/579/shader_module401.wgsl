struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(5929u, 9381u, 29379u);

var<private> global1: Struct_1 = Struct_1(31436i, vec2<bool>(true, false));

var<private> global2: f32 = 874f;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> i32 {
    var var_0 = select(select(select(vec3<bool>(any(vec2<bool>(global1.b.x, false)), !arg_0.c.x, any(vec3<bool>(arg_0.a.b.x, false, false))), select(select(vec3<bool>(true, false, arg_0.c.x), vec3<bool>(true, true, false), vec3<bool>(false, false, global1.b.x)), select(vec3<bool>(arg_0.a.b.x, arg_0.c.x, false), vec3<bool>(true, arg_0.c.x, arg_0.c.x), vec3<bool>(arg_0.a.b.x, arg_0.c.x, true)), select(vec3<bool>(false, true, false), vec3<bool>(global1.b.x, arg_0.c.x, false), vec3<bool>(true, true, false))), !(!vec3<bool>(true, arg_0.c.x, global1.b.x))), !(!vec3<bool>(true, true, arg_0.a.b.x)), !(!vec3<bool>(arg_0.a.b.x, arg_0.c.x, true))), vec3<bool>(global1.b.x, arg_0.c.x, !(~arg_0.b <= u_input.c)), global1.b.x);
    global0 = ~u_input.b.zzx;
    global2 = arg_1;
    let var_1 = false;
    var var_2 = Struct_1(u_input.c, !select(vec2<bool>(var_0.x, true), vec2<bool>(var_1, var_1), var_0.zy));
    return -22864i;
}

fn func_2(arg_0: bool) -> u32 {
    global1 = Struct_1(-u_input.c, vec2<bool>(!(!(global1.a >= 32096i)), any(select(vec3<bool>(global1.b.x, arg_0, global1.b.x), vec3<bool>(true, true, true), u_input.c >= global1.a))));
    global0 = firstLeadingBit(~(u_input.b.zyx << (vec3<u32>(~1u, ~global0.x, countOneBits(global0.x)) % vec3<u32>(32u))));
    var var_0 = Struct_3(Struct_1(_wgslsmith_add_i32(func_3(Struct_2(Struct_1(u_input.c, global1.b), global1.a, global1.b), 484f) | 55843i, u_input.c), global1.b), global1.a);
    let var_1 = 1u;
    let var_2 = ~u_input.b.x;
    return 5073u;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: Struct_4, arg_3: f32) -> Struct_1 {
    global0 = vec3<u32>(1u, _wgslsmith_dot_vec3_u32(~arg_1.xwx | arg_0, firstTrailingBit(max(arg_0 << (u_input.b.xyx % vec3<u32>(32u)), vec3<u32>(arg_1.x, 102281u, u_input.b.x)))), 4294967295u);
    global1 = arg_2.c.a;
    let var_0 = Struct_5(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_2.c.b, _wgslsmith_div_i32(-2147483647i, -1i), 15570i), vec3<i32>(func_3(arg_2.c, _wgslsmith_f_op_f32(sign(arg_2.b))), _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_2.c.a.a, 4545i, -15171i), vec3<i32>(u_input.c, u_input.c, u_input.c)), -_wgslsmith_mod_i32(2147483647i, u_input.c))));
    let var_1 = vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_sub_i32(arg_2.c.a.a, -u_input.c), ~(~(-12370i)), abs(var_0.a.x));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-147f, -141f)))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-858f, 511f)))));
    return Struct_1(0i, !vec2<bool>(!(!arg_2.c.a.b.x), all(vec2<bool>(false, arg_2.c.a.b.x))));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: bool) -> f32 {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-396f * _wgslsmith_div_f32(912f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1025f, -925f))))) - _wgslsmith_f_op_f32(1f * -210f));
    global1 = func_4(abs(abs(~(~vec3<u32>(4294967295u, 18739u, global0.x)))), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_add_u32(~u_input.b.x, ~55510u), ~10834u, ~_wgslsmith_mult_u32(arg_0.x, global0.x), ~u_input.b.x), firstLeadingBit(vec4<u32>(1u, 0u, func_2(arg_2), _wgslsmith_mult_u32(global0.x, 1u))), _wgslsmith_add_vec4_u32(~u_input.b, u_input.b)), Struct_4(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, -37376i) >> (vec2<u32>(2602u, 4294967295u) % vec2<u32>(32u)), vec2<i32>(u_input.c, 1668i) >> (u_input.b.yx % vec2<u32>(32u))), reverseBits(~vec2<i32>(u_input.c, u_input.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(2302f))))), arg_1), 1f);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1f, -612f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1000f)), 1000f))));
    let var_0 = Struct_3(func_4(arg_0, _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.b, max(u_input.b, vec4<u32>(global0.x, u_input.b.x, arg_0.x, 1249u))), u_input.b), Struct_4(-(~vec2<i32>(16061i, -1i)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(625f, _wgslsmith_f_op_f32(898f + 526f))) * 537f)), 1i);
    var var_1 = ~(~vec4<i32>(16525i, _wgslsmith_div_i32(var_0.b >> (global0.x % 32u), arg_1.b), -1i, func_4(u_input.b.xwz, ~vec4<u32>(0u, 7282u, global0.x, 4294967295u), Struct_4(vec2<i32>(var_0.a.a, 2147483647i), -1978f, Struct_2(Struct_1(global1.a, arg_1.c), global1.a, global1.b)), _wgslsmith_f_op_f32(f32(-1f) * -294f)).a));
    return -1343f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(1361f * _wgslsmith_f_op_f32(-1654f - _wgslsmith_f_op_f32(step(-293f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.b.zzx, Struct_2(Struct_1(2147483647i, global1.b), 8361i, global1.b), false)))))));
    let var_0 = vec2<i32>(~u_input.c, -12352i);
    var var_1 = Struct_3(func_4(u_input.b.yww, u_input.b, Struct_4(~(~vec2<i32>(var_0.x, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1042f), Struct_2(func_4(vec3<u32>(u_input.a.x, u_input.a.x, u_input.b.x), u_input.b, Struct_4(vec2<i32>(0i, var_0.x), -1022f, Struct_2(Struct_1(u_input.c, vec2<bool>(true, true)), 0i, global1.b)), -1192f), -54995i ^ u_input.c, global1.b)), 1f), -(i32(-1i) * -1i));
    var var_2 = 0i;
    global1 = var_1.a;
    let var_3 = -1000f;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -961f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(abs(1000f))))), func_4(u_input.b.wwx, ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, global0.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, global0.x, u_input.a.x, 30898u)), Struct_4(var_0, -342f, Struct_2(var_1.a, 98929i, vec2<bool>(false, global1.b.x))), 1000f).b.x)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(222f)), _wgslsmith_f_op_f32(func_1(vec3<u32>(global0.x, global0.x, global0.x), Struct_2(Struct_1(var_0.x, vec2<bool>(false, true)), 42227i, global1.b), true)))), _wgslsmith_f_op_f32(var_3 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<u32>(global0.x, u_input.b.x, 1u), Struct_2(var_1.a, -1i, var_1.a.b), false)))), !(countOneBits(global0.x) != _wgslsmith_mod_u32(global0.x, 4294967295u)))));
    let var_5 = _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, select(-global1.a ^ func_3(Struct_2(Struct_1(u_input.c, vec2<bool>(global1.b.x, false)), global1.a, vec2<bool>(var_1.a.b.x, false)), var_4), _wgslsmith_mod_i32(_wgslsmith_div_i32(var_0.x, -1i), _wgslsmith_mult_i32(12564i, u_input.c)), true), -45236i, _wgslsmith_add_i32(12589i, 2540i)), ~_wgslsmith_add_vec4_i32(vec4<i32>(-global1.a, -1i, _wgslsmith_sub_i32(global1.a, var_0.x), -u_input.c), ~vec4<i32>(var_1.a.a, u_input.c, global1.a, var_1.a.a)));
    var var_6 = var_1.a.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(-min(~u_input.c, 65083i) ^ _wgslsmith_dot_vec2_i32(var_0 >> (abs(vec2<u32>(4294967295u, 0u)) % vec2<u32>(32u)), vec2<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-61659i, 28556i), var_0))), var_5.wzy);
}

