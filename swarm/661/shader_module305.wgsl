struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: u32,
}

struct Struct_5 {
    a: i32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
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

var<private> global0: vec3<f32>;

var<private> global1: f32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<u32>, arg_3: i32) -> u32 {
    return ~20996u;
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> Struct_4 {
    var var_0 = !(!arg_0.b.d.x);
    var_0 = select(all(vec3<bool>(all(select(arg_0.b.d, vec2<bool>(arg_0.b.d.x, false), vec2<bool>(true, arg_0.b.d.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(67764i, arg_0.b.c.x, 1i), vec3<i32>(56282i, arg_0.b.a.x, -14167i)) != min(-34582i, 0i), false)), u_input.c == ~(~u_input.d ^ _wgslsmith_clamp_u32(0u, arg_0.a, u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -139f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))));
    var var_1 = u_input.b;
    var var_2 = var_1.wzy;
    let var_3 = arg_0.b.a;
    return Struct_4(27287u, abs(u_input.a), 17925u);
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: vec3<i32>, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = Struct_1(max(vec2<i32>(arg_2.x, arg_1), vec2<i32>(arg_2.x, countOneBits(-arg_2.x))), u_input.b.yw, _wgslsmith_mod_vec2_i32(vec2<i32>(~arg_1, arg_1), _wgslsmith_div_vec2_i32(arg_2.yz, -arg_2.xx)), vec2<bool>(select(!arg_3.x, !arg_3.x, all(select(arg_3, arg_3, vec3<bool>(arg_3.x, arg_3.x, false)))), !any(vec4<bool>(true, true, arg_3.x, arg_3.x))), _wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(arg_0.a), 1u, arg_0.c), min((vec3<u32>(u_input.b.x, 46010u, 1u) << (vec3<u32>(57186u, arg_0.c, u_input.b.x) % vec3<u32>(32u))) >> (max(vec3<u32>(u_input.a, u_input.c, 30839u), u_input.b.xyy) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(u_input.b.xwy, vec3<u32>(u_input.d, 4294967295u, arg_0.a)))));
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -816f)))));
    global0 = vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1557f, global0.x))))) * 1622f));
    global0 = vec3<f32>(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) + _wgslsmith_f_op_f32(trunc(-1186f))))), _wgslsmith_f_op_f32(sign(-1234f)), _wgslsmith_f_op_f32(-1f));
    global1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-908f, global0.x)), 1315f) - 860f))), _wgslsmith_f_op_f32(1000f * global0.x)));
    return Struct_2(Struct_1(vec2<i32>(_wgslsmith_div_i32(26392i, 20389i), var_0.c.x), u_input.b.zw, vec2<i32>(~(~arg_1), firstLeadingBit(_wgslsmith_clamp_i32(9531i, var_0.a.x, -1i))), vec2<bool>(var_0.d.x, arg_3.x & true), ~(~1087u)), ~(~vec2<u32>(_wgslsmith_sub_u32(1u, 1u), _wgslsmith_mod_u32(arg_0.a, 24639u))), Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(~5989i, ~arg_2.x), max(arg_2.yz, select(arg_2.xz, var_0.a, arg_3.x))), var_0.b, min(select(var_0.c, vec2<i32>(1i, arg_1), arg_3.x) & _wgslsmith_add_vec2_i32(var_0.c, var_0.c), vec2<i32>(var_0.c.x, 1i)), vec2<bool>(_wgslsmith_f_op_f32(-global0.x) >= _wgslsmith_f_op_f32(-global0.x), true), arg_0.a), var_0);
}

fn func_1() -> Struct_5 {
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(2593f - global0.x), _wgslsmith_f_op_f32(346f + 466f));
    let var_0 = Struct_4(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b.zxx, u_input.b.xxy, vec3<u32>(u_input.a, u_input.c, u_input.c)), vec3<u32>(u_input.c, u_input.b.x, u_input.b.x)) | ~(~101668u), _wgslsmith_clamp_u32(reverseBits(u_input.d), ~firstTrailingBit(u_input.b.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.b.xzy, u_input.b.xyx), 4294967295u))), 20889u, abs(~(~4294967295u)));
    var var_1 = func_4(func_3(Struct_3(func_2(Struct_1(vec2<i32>(0i, 0i), u_input.b.wy, vec2<i32>(2147483647i, -1i), vec2<bool>(false, false), var_0.c), u_input.b, vec3<u32>(u_input.d, 4294967295u, 1u), _wgslsmith_mod_i32(0i, 6561i)), Struct_1(vec2<i32>(1i, 1i), abs(u_input.b.xz), _wgslsmith_clamp_vec2_i32(vec2<i32>(8742i, 16040i), vec2<i32>(36331i, 0i), vec2<i32>(0i, 1i)), select(vec2<bool>(true, false), vec2<bool>(true, true), true), u_input.b.x)), true), firstTrailingBit(-22058i), vec3<i32>(-1i, 0i, -19103i), !(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false)));
    let var_2 = Struct_3(~u_input.d, var_1.d);
    global1 = -481f;
    return Struct_5(var_2.b.c.x, vec3<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(global0.x + 987f))) - -1778f), -1000f));
}

fn func_5(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: vec3<i32>) -> f32 {
    let var_0 = _wgslsmith_add_vec3_i32(arg_3, firstTrailingBit(firstLeadingBit(~_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.x, arg_0.a, arg_3.x), vec3<i32>(arg_0.a, arg_2.x, arg_0.a)))));
    global1 = global0.x;
    global1 = _wgslsmith_div_f32(arg_0.b.x, arg_0.b.x);
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(274f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.b.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -938f))), _wgslsmith_f_op_f32(-arg_0.b.x), -1672f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(763f, -2449f, _wgslsmith_f_op_f32(abs(-1600f)), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(trunc(1161f)))) - vec4<f32>(-836f, _wgslsmith_f_op_f32(floor(global0.x)), var_1.b.x, 745f)));
    return _wgslsmith_f_op_f32(f32(-1f) * -2299f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(697f, -2041f, -989f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1000f, global0.x)))))))));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1051f * global0.x))) + _wgslsmith_f_op_f32(func_5(func_1(), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec3<i32>(func_1().a, 2147483647i, reverseBits(1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-40492i, 1i, 0i), -vec3<i32>(-2147483647i, 31059i, 1i), abs(vec3<i32>(43654i, -1i, 1i)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(-1000f * global0.x)), global0.x);
    global0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, 2107f, -1000f)))))))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x));
    let var_0 = _wgslsmith_mult_i32(select(reverseBits(-2147483647i), -2609i, any(vec2<bool>(false, false))) ^ (func_1().a | 22744i), _wgslsmith_mult_i32(-2147483647i, 1i)) > ~_wgslsmith_mult_i32(_wgslsmith_mod_i32(0i >> (u_input.b.x % 32u), 77595i << (u_input.a % 32u)), ~0i);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) * global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x)))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-260f, -1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x * global0.x)))))));
    var var_1 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(-47847i);
}

