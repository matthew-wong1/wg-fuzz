struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(0u, vec4<bool>(false, true, false, false), Struct_3(47832u, Struct_1(38097i))), Struct_4(4294967295u, vec4<bool>(false, true, true, true), Struct_3(0u, Struct_1(0i))), Struct_4(0u, vec4<bool>(false, false, true, true), Struct_3(91776u, Struct_1(-14064i))), Struct_4(1u, vec4<bool>(false, true, false, true), Struct_3(0u, Struct_1(-263i))), Struct_4(1u, vec4<bool>(false, false, true, true), Struct_3(107146u, Struct_1(73873i))), Struct_4(40592u, vec4<bool>(false, false, false, true), Struct_3(29552u, Struct_1(i32(-2147483648)))), Struct_4(0u, vec4<bool>(false, true, true, true), Struct_3(4294967295u, Struct_1(i32(-2147483648)))), Struct_4(0u, vec4<bool>(true, false, true, false), Struct_3(0u, Struct_1(-1i))));

var<private> global2: bool = false;

var<private> global3: array<Struct_3, 16>;

var<private> global4: Struct_2 = Struct_2(vec2<bool>(true, false), 1847i, Struct_1(21413i), vec4<bool>(false, false, false, true), vec4<f32>(-431f, -294f, 206f, 1725f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: Struct_5, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = global0.c.b.a;
    let var_1 = Struct_3(_wgslsmith_clamp_u32(arg_0, _wgslsmith_clamp_u32(max(~1u, ~23534u), 41130u, 11524u << (1u % 32u)), abs(arg_0)), global0.c.b);
    let var_2 = global0.c;
    global0 = Struct_4(~38332u, global0.b, var_1);
    var var_3 = _wgslsmith_f_op_vec3_f32(select(global4.e.wyy, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.e.x - global4.e.x) - _wgslsmith_f_op_f32(abs(global4.e.x))), 503f, global4.e.x), global0.b.x));
    return vec4<f32>(_wgslsmith_f_op_f32(711f * global4.e.x), var_3.x, var_3.x, _wgslsmith_f_op_f32(floor(global4.e.x)));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_4) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_3(arg_2.c.a, Struct_5(Struct_1(0i), 0i), global4.c)))), _wgslsmith_f_op_vec4_f32(-global4.e)) + global4.e);
    var var_1 = u_input.b;
    var var_2 = global1[_wgslsmith_index_u32(countOneBits(var_1.x << (1u % 32u)), 8u)];
    var_2 = arg_2;
    var var_3 = vec2<bool>(all(vec2<bool>(!(!var_2.b.x), !global4.a.x)), !arg_2.b.x);
    return arg_2.c.b;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: u32) -> Struct_4 {
    global0 = Struct_4(_wgslsmith_mult_u32(~(~(~u_input.b.x)), min(select(~u_input.b.x, ~global0.c.a, global4.e.x <= -1962f), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_2), vec2<u32>(arg_0.x, 23934u)) ^ 2078u)), global0.b, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, ~u_input.b.x, 36605u | global0.c.a), arg_0.wzy), 0u), 16u)]);
    let var_0 = abs(~arg_0);
    let var_1 = vec2<u32>(57349u, arg_2);
    let var_2 = Struct_3(4294967295u, func_2(arg_0.x, func_2(firstLeadingBit(select(4294967295u, u_input.b.x, true)), global4.c, global1[_wgslsmith_index_u32(u_input.b.x, 8u)]), Struct_4(_wgslsmith_add_u32(arg_0.x ^ 46506u, 1u), !global0.b, global0.c)));
    var var_3 = arg_0.x;
    return Struct_4(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, ~0u), vec2<u32>(global0.c.a, abs(min(23276u, global0.a)))), select(global4.d, vec4<bool>(false, true, true, select(true, false | global4.d.x, any(global0.b.wwx))), select(vec4<bool>(true, global4.a.x, false, !global0.b.x), !select(vec4<bool>(global0.b.x, global0.b.x, global4.a.x, global0.b.x), global0.b, global4.a.x), any(vec4<bool>(global0.b.x, false, global0.b.x, true)))), Struct_3(16487u, func_2(1u, func_2(4294967295u, func_2(4294967295u, arg_1, Struct_4(0u, vec4<bool>(global0.b.x, global0.b.x, global0.b.x, global4.a.x), var_2)), Struct_4(arg_0.x, vec4<bool>(false, global0.b.x, true, true), global3[_wgslsmith_index_u32(0u, 16u)])), Struct_4(var_1.x ^ 59784u, !global0.b, Struct_3(4294967295u, Struct_1(-2147483647i))))));
}

fn func_1(arg_0: Struct_2) -> vec4<i32> {
    global0 = global1[_wgslsmith_index_u32(min(~37609u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(25695u, 32209u, 0u) & _wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(8456u, 0u, u_input.b.x)), u_input.b)), 8u)];
    let var_0 = vec4<u32>(_wgslsmith_mult_u32(39286u, global0.c.a), ~(~u_input.b.x), ~(~33464u), _wgslsmith_div_u32(u_input.b.x, abs(~u_input.b.x) | min(1u, ~global0.a)));
    global0 = func_4(abs(vec4<u32>(~31270u, u_input.b.x, 46763u, 4294967295u)), func_2(var_0.x, Struct_1(reverseBits(_wgslsmith_div_i32(2147483647i, 2147483647i))), Struct_4(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.b.zy, u_input.b.zz), abs(0u)), select(!vec4<bool>(global4.d.x, false, arg_0.a.x, false), vec4<bool>(true, arg_0.d.x, false, global4.d.x), vec4<bool>(global0.b.x, false, true, global0.b.x)), global3[_wgslsmith_index_u32(abs(33519u ^ global0.a), 16u)])), ~25806u);
    let var_1 = Struct_2(global0.b.zy, ~_wgslsmith_div_i32(-2147483647i, _wgslsmith_div_i32(u_input.a, i32(-1i) * -47726i)), Struct_1(-77376i), vec4<bool>(all(arg_0.d.wyy), global4.a.x, _wgslsmith_add_i32(i32(-1i) * -2147483647i, global4.b) < -38403i, all(vec3<bool>(arg_0.c.a == 2147483647i, true, false))), vec4<f32>(-1068f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1896f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global4.e.x, arg_0.e.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(532f - -1000f) - _wgslsmith_f_op_f32(-1335f - 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global4.e.x))) + _wgslsmith_f_op_f32(abs(510f)))));
    var var_2 = !global4.a.x;
    return vec4<i32>(func_2(62550u, Struct_1(-(u_input.a | 1i)), func_4(~vec4<u32>(u_input.b.x, 4294967295u, var_0.x, 7453u), Struct_1(2147483647i), global0.a)).a, 2147483647i, i32(-1i) * -global0.c.b.a, arg_0.c.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 8>();
    let var_0 = (31801u >> (~_wgslsmith_dot_vec2_u32(u_input.b.zz, vec2<u32>(20681u, u_input.b.x) << (u_input.b.xy % vec2<u32>(32u))) % 32u)) | ~u_input.b.x;
    let var_1 = firstLeadingBit(vec2<u32>(u_input.b.x, 4501u));
    global0 = global1[_wgslsmith_index_u32(1u, 8u)];
    var var_2 = func_1(Struct_2(global4.d.yz, min(u_input.a, ~(-2147483647i) >> (u_input.b.x % 32u)), global4.c, vec4<bool>(global0.b.x, global0.b.x, !global0.b.x, global4.d.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 560f, -710f, global4.e.x), _wgslsmith_f_op_vec4_f32(-global4.e)))));
    global1 = array<Struct_4, 8>();
    global0 = func_4((vec4<u32>(u_input.b.x ^ var_0, 12693u, _wgslsmith_mod_u32(36996u, var_0), ~u_input.b.x) & select(firstLeadingBit(vec4<u32>(var_1.x, 19204u, 50329u, 1u)), select(vec4<u32>(0u, 1u, var_1.x, 0u), vec4<u32>(u_input.b.x, var_0, var_1.x, global0.a), true), vec4<bool>(global4.a.x, global0.b.x, global0.b.x, global0.b.x))) ^ vec4<u32>(0u, abs(0u) << (_wgslsmith_mod_u32(1u, 7459u) % 32u), 62608u, _wgslsmith_mult_u32(abs(4294967295u), 1u)), Struct_1(func_2(33599u, func_2(~1u, func_2(var_1.x, global0.c.b, global1[_wgslsmith_index_u32(var_0, 8u)]), Struct_4(64483u, global0.b, Struct_3(1u, global0.c.b))), Struct_4(1u, !vec4<bool>(false, true, true, global0.b.x), Struct_3(global0.a, global4.c))).a), 62781u);
    global4 = Struct_2(global4.d.wx, 2147483647i, global0.c.b, global4.d, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global4.e.x, global4.e.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1085f)), _wgslsmith_f_op_f32(trunc(-160f)))), _wgslsmith_f_op_f32(global4.e.x * _wgslsmith_f_op_f32(-global4.e.x)), _wgslsmith_div_f32(-880f, _wgslsmith_f_op_f32(1276f - 1000f))), global4.e));
    var var_3 = func_4(~(~countOneBits(vec4<u32>(1u, 4294967295u, 34910u, 4267u))) << (vec4<u32>(global0.a, 4294967295u, _wgslsmith_mod_u32(~u_input.b.x, abs(global0.c.a)), ~var_0) % vec4<u32>(32u)), global4.c, countOneBits(80896u));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 31664i, var_2.x, u_input.a) << (vec4<u32>(1u, 1u, var_1.x, u_input.b.x) % vec4<u32>(32u)), vec4<i32>(-2147483647i, global4.c.a, global4.b, -1i) & vec4<i32>(-8108i, global0.c.b.a, -1i, -2147483647i)), ~select(vec4<i32>(u_input.a, u_input.a, 50661i, var_3.c.b.a), vec4<i32>(2147483647i, global0.c.b.a, -1i, var_2.x), global0.b))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-706f, global4.e.x, 2102f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global4.e.x)))))), global4.e, global4.e.x);
}

