struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 26>;

var<private> global1: array<Struct_3, 14>;

var<private> global2: Struct_1;

var<private> global3: i32 = 31057i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> f32 {
    let var_0 = true;
    global2 = Struct_1(-2147483647i, global2.b, global2.c, vec3<i32>(global2.a, max(1i, u_input.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, ~2147483647i, global2.d.x, firstLeadingBit(-24869i)), u_input.c)));
    let var_1 = min(-(-abs(u_input.c.x) & max(-global2.a, _wgslsmith_mod_i32(global2.d.x, u_input.e.x))), global2.a);
    var var_2 = Struct_3(u_input.c << (_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.d, 71297u, 1u, global2.b), select(vec4<u32>(0u, u_input.a.x, u_input.a.x, global2.b), vec4<u32>(1540u, 1u, 21249u, u_input.d), global2.c)), ~select(vec4<u32>(23555u, 4294967295u, 4294967295u, 1u), vec4<u32>(u_input.d, 6469u, global2.b, 4294967295u), vec4<bool>(var_0, false, true, var_0))) % vec4<u32>(32u)));
    let var_3 = Struct_3(select(-vec4<i32>(-global2.a, 41071i, _wgslsmith_mult_i32(global2.d.x, var_2.a.x), global2.a), _wgslsmith_mult_vec4_i32(vec4<i32>(abs(global2.d.x), firstTrailingBit(-2500i), abs(39503i), min(u_input.c.x, -2147483647i)), u_input.c), vec4<bool>(var_0, all(vec2<bool>(false, false)) && global2.c, false, var_0)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -827f) + -1563f), -764f);
}

fn func_2() -> f32 {
    var var_0 = global2.b;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -458f) * -898f), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1166f, 2075f)))));
    global2 = Struct_1(1i, countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global2.b, 34392u), vec3<u32>(global2.b, u_input.d, u_input.d)) & global2.b), !any(vec4<bool>(true, false, all(vec4<bool>(global2.c, true, global2.c, false)), global2.a >= u_input.b.x)), ~vec3<i32>(_wgslsmith_mod_i32(abs(-45338i), _wgslsmith_mult_i32(u_input.b.x, -8874i)), 1i, ~(-u_input.b.x)));
    var var_2 = ~((~vec3<u32>(4294967295u, 43756u, 4294967295u) >> (~(~vec3<u32>(25429u, global2.b, 62539u)) % vec3<u32>(32u))) | ~vec3<u32>(~u_input.a.x, abs(48655u), 0u));
    var var_3 = -1000f;
    return var_1.x;
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_1) -> vec3<u32> {
    global1 = array<Struct_3, 14>();
    let var_0 = arg_2.c;
    global3 = _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.e.x, (_wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_2.d.x), vec2<i32>(-68696i, global2.d.x)) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -38623i), vec2<i32>(arg_2.d.x, -18789i))) & ~(i32(-1i) * -2147483647i), abs(1i)), ~(-2147483647i));
    let var_1 = arg_2;
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-926f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-917f)) * _wgslsmith_f_op_f32(783f * -614f)), _wgslsmith_f_op_f32(func_2()))), vec3<f32>(_wgslsmith_f_op_f32(-577f + _wgslsmith_f_op_f32(967f + -1677f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(256f, _wgslsmith_f_op_f32(-1225f - 357f)))), _wgslsmith_f_op_f32(floor(118f))));
    return ~(~max(~(~vec3<u32>(1u, 0u, arg_1)), _wgslsmith_sub_vec3_u32(~vec3<u32>(1u, global2.b, 81627u), ~vec3<u32>(var_1.b, 0u, arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~func_1(select(vec4<bool>(true, global2.c, global2.c, global2.c), vec4<bool>(global2.c, global2.c, false, true), vec4<bool>(false, global2.c, false, false)), ~114424u, Struct_1(-23088i, u_input.d, global2.c, global2.d)) << ((~(vec3<u32>(4294967295u, 0u, global2.b) & vec3<u32>(0u, 4294967295u, 22145u)) >> (select(~vec3<u32>(global2.b, global2.b, u_input.a.x), firstLeadingBit(vec3<u32>(u_input.a.x, global2.b, 0u)), select(vec3<bool>(true, true, global2.c), vec3<bool>(global2.c, true, global2.c), true)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_1 = Struct_1(_wgslsmith_add_i32(6413i, ~(-16848i)), min(u_input.d, ~_wgslsmith_mult_u32(12016u, u_input.d)), all(!select(vec3<bool>(global2.c, global2.c, true), select(vec3<bool>(true, global2.c, false), vec3<bool>(true, global2.c, true), global2.c), true)), _wgslsmith_div_vec3_i32(vec3<i32>(19091i, -18836i, min(17572i, ~1i)), vec3<i32>(-2147483647i, min(global2.a, global2.a ^ 22470i), abs(global2.d.x))));
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(297f + -2594f), _wgslsmith_f_op_f32(f32(-1f) * -1160f))) - vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1232f + 942f) + -1314f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-1687f + -2281f))))));
    global1 = array<Struct_3, 14>();
    let var_3 = vec3<bool>(!(!global2.c), !var_1.c, global2.c);
    let var_4 = Struct_1(var_1.a, ~(~1u), var_3.x, global2.d);
    let x = u_input.a;
    s_output = StorageBuffer(1669f);
}

