struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: bool,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<u32>, 11>;

var<private> global2: array<Struct_3, 22>;

var<private> global3: array<vec2<f32>, 29> = array<vec2<f32>, 29>(vec2<f32>(1052f, -241f), vec2<f32>(-549f, 250f), vec2<f32>(-1995f, 1182f), vec2<f32>(-1904f, 253f), vec2<f32>(395f, -638f), vec2<f32>(1799f, -989f), vec2<f32>(-728f, 452f), vec2<f32>(378f, -863f), vec2<f32>(-247f, -175f), vec2<f32>(-157f, 1066f), vec2<f32>(-1516f, 1899f), vec2<f32>(-112f, 815f), vec2<f32>(-171f, -601f), vec2<f32>(-960f, -621f), vec2<f32>(-176f, 1667f), vec2<f32>(1118f, -130f), vec2<f32>(1575f, -1277f), vec2<f32>(1000f, 271f), vec2<f32>(190f, -598f), vec2<f32>(253f, 1000f), vec2<f32>(-648f, 1570f), vec2<f32>(-2533f, -1666f), vec2<f32>(-1267f, 282f), vec2<f32>(-522f, -458f), vec2<f32>(1435f, -222f), vec2<f32>(-756f, -105f), vec2<f32>(1000f, 1952f), vec2<f32>(716f, -345f), vec2<f32>(-642f, -595f));

var<private> global4: array<vec2<u32>, 2> = array<vec2<u32>, 2>(vec2<u32>(0u, 0u), vec2<u32>(0u, 19537u));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = min(-(~u_input.c << (1u % 32u)), -1i >> (min(arg_0, select(global0.a.a.x, global0.a.a.x, global0.b.x)) % 32u)) ^ -6394i;
    var var_1 = !global0.b.x;
    return (arg_0 >> (_wgslsmith_dot_vec2_u32(vec2<u32>(abs(arg_0), _wgslsmith_add_u32(7891u, arg_0)), global4[_wgslsmith_index_u32(arg_0 | arg_0, 2u)]) % 32u)) ^ 29724u;
}

fn func_2(arg_0: vec3<u32>) -> vec4<bool> {
    let var_0 = all(vec4<bool>(true, global0.b.x, !(global0.a.b.x <= abs(2147483647i)), true));
    var var_1 = vec3<i32>(1i, _wgslsmith_mod_i32(firstLeadingBit(-u_input.a), global0.a.b.x) & ~(-(~(-40520i))), _wgslsmith_sub_i32(u_input.c, -2147483647i));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(624f, 589f))))) != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1495f, -131f)) + _wgslsmith_f_op_f32(abs(-476f))), _wgslsmith_f_op_f32(step(-410f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1332f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    let var_4 = Struct_5(~(~func_3(~global0.a.a.x)), _wgslsmith_mod_i32(select(_wgslsmith_dot_vec2_i32(abs(global0.a.b), vec2<i32>(var_1.x, -1i)), global0.a.b.x, !var_0), 1i), Struct_2(Struct_1(vec4<u32>(4294967295u, global0.a.a.x, abs(0u), ~arg_0.x), vec2<i32>(-1i, 1i) | firstTrailingBit(var_1.yy), !vec2<bool>(global0.a.c.x, global0.a.c.x)), select(global0.b, select(global0.b, !global0.a.c, true || global0.a.c.x), select(!global0.a.c, select(vec2<bool>(true, true), vec2<bool>(var_0, var_0), vec2<bool>(global0.a.c.x, false)), global0.a.c))), global0.a);
    return select(vec4<bool>(var_0, true, global0.b.x, true), vec4<bool>(select(!var_0 || !global0.a.c.x, var_4.c.a.c.x, var_0), all(vec3<bool>(!var_0, select(false, global0.b.x, false), true)), true || all(!vec3<bool>(global0.b.x, global0.a.c.x, true)), (~arg_0.x ^ (global0.a.a.x << (0u % 32u))) == 0u), !(!(!vec4<bool>(true, true, false, global0.b.x))));
}

fn func_4(arg_0: bool) -> Struct_2 {
    global3 = array<vec2<f32>, 29>();
    global3 = array<vec2<f32>, 29>();
    var var_0 = global0.a;
    global2 = array<Struct_3, 22>();
    global1 = array<vec4<u32>, 11>();
    return Struct_2(global0.a, var_0.c);
}

fn func_1() -> bool {
    let var_0 = func_4(any(!(!func_2(global0.a.a.xzw))));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(691f, -555f)), _wgslsmith_div_f32(1494f, 415f), !global0.b.x))))));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -1416f, 1328f, 473f) * vec4<f32>(1000f, var_1, var_1, 462f)), vec4<f32>(-844f, var_1, -310f, 1154f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1, var_1, var_1, -1243f), vec4<f32>(701f, var_1, -187f, -2361f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -778f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(var_1 - var_1)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_1))))), var_1, _wgslsmith_f_op_f32(f32(-1f) * -187f)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(min(30192u, _wgslsmith_sub_u32(~(~66355u), ~global0.a.a.x)), ~global0.a.a.x);
    let var_1 = _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(~global0.a.a.zxz, global0.a.a.yxy), select(_wgslsmith_div_vec3_u32(vec3<u32>(global0.a.a.x, 0u, var_0.x), vec3<u32>(var_0.x, 49970u, global0.a.a.x)) >> (abs(global0.a.a.zxy) % vec3<u32>(32u)), vec3<u32>(34083u, _wgslsmith_mult_u32(44491u, global0.a.a.x), var_0.x ^ 1u), func_1())) >> (~(~global0.a.a.wxy << (~_wgslsmith_div_vec3_u32(vec3<u32>(79068u, global0.a.a.x, global0.a.a.x), global0.a.a.zwx) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_2 = -global0.a.b.x;
    var var_3 = Struct_5(_wgslsmith_add_u32(~1u, 5123u | _wgslsmith_dot_vec3_u32(~var_1, ~vec3<u32>(4294967295u, var_0.x, 0u))), _wgslsmith_div_i32(_wgslsmith_mod_i32(firstLeadingBit(max(u_input.c, u_input.a)), global0.a.b.x), 0i), func_4((global0.b.x & global0.b.x) || select(!global0.a.c.x, func_4(false).a.c.x, select(true, false, global0.a.c.x))), func_4(true).a);
    let var_4 = Struct_2(Struct_1(firstLeadingBit(abs(vec4<u32>(var_0.x, var_1.x, var_1.x, var_1.x))), vec2<i32>(1i, global0.a.b.x), vec2<bool>(!var_3.d.c.x, false)), global0.b);
    let var_5 = reverseBits(func_3(56063u) & _wgslsmith_mod_u32(var_1.x, ~_wgslsmith_clamp_u32(4294967295u, 0u, 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_0.x, 38415u), 657f, var_4.a.b, _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 26389u, var_4.a.a.x, 1u), ~vec4<u32>(4294967295u, var_3.a, global0.a.a.x, 27475u)), vec4<u32>(var_5, ~func_3(1u), 0u, 4294967295u)));
}

