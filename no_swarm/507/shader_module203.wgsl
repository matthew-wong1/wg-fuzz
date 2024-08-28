struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(false);

var<private> global1: Struct_1;

var<private> global2: array<Struct_3, 24>;

var<private> global3: Struct_5;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>) -> u32 {
    return 70053u;
}

fn func_3(arg_0: Struct_3) -> Struct_2 {
    let var_0 = countOneBits(max(1u, 1u) >> ((select(~1u, 29206u, all(vec4<bool>(arg_0.a, global1.c, true, global1.c))) << (~1u % 32u)) % 32u));
    var var_1 = vec2<f32>(130f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1045f, 849f, global1.c)))) - _wgslsmith_f_op_f32(f32(-1f) * -660f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -616f) * _wgslsmith_f_op_f32(-142f + 1865f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-378f + 203f) + _wgslsmith_div_f32(-1036f, 875f))))));
    global0 = Struct_3(any(vec4<bool>(all(!vec3<bool>(true, arg_0.a, false)), global1.b == -6416i, !all(vec3<bool>(true, true, true)), any(vec3<bool>(false, true, true)))));
    var var_2 = Struct_4(~(global3.a.x << (_wgslsmith_dot_vec4_u32(select(vec4<u32>(62965u, var_0, 68120u, 12212u), vec4<u32>(0u, var_0, var_0, var_0), true), select(vec4<u32>(var_0, var_0, var_0, var_0), vec4<u32>(4294967295u, var_0, var_0, var_0), true)) % 32u)), ~vec3<i32>(_wgslsmith_sub_i32(~4502i, 0i), global3.a.x, select(u_input.b.x | global3.a.x, 2147483647i >> (1u % 32u), any(vec2<bool>(global1.c, false)))), _wgslsmith_mult_u32(0u, _wgslsmith_mod_u32(var_0, var_0)) >> (46685u % 32u), global0.a, Struct_1(false, global3.a.x, global3.b));
    global1 = var_2.e;
    return Struct_2(~var_2.c, select(vec3<bool>(global0.a, select(true, false, false), false), select(vec3<bool>(false, select(true, false, global0.a), global3.b & global1.c), !(!vec3<bool>(var_2.e.a, true, true)), !global1.c), vec3<bool>(false, global3.b, any(vec2<bool>(false, true)))), Struct_1(false, -7061i, !any(select(vec4<bool>(true, false, global3.b, arg_0.a), vec4<bool>(global0.a, arg_0.a, false, global3.b), vec4<bool>(global3.b, false, true, arg_0.a)))));
}

fn func_1(arg_0: i32) -> Struct_3 {
    let var_0 = func_3(global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(min(func_2(Struct_2(5653u, vec3<bool>(global3.b, true, true), Struct_1(global0.a, global1.b, global1.a)), vec3<i32>(-3960i, arg_0, u_input.b.x)), ~0u), 4294967295u), 24u)]);
    var var_1 = max(var_0.a, _wgslsmith_sub_u32(~(~42899u), func_2(func_3(global2[_wgslsmith_index_u32(abs(1u), 24u)]), _wgslsmith_add_vec3_i32(vec3<i32>(global3.a.x, global1.b, var_0.c.b), select(vec3<i32>(2147483647i, arg_0, -7925i), vec3<i32>(global1.b, arg_0, -1i), vec3<bool>(true, var_0.b.x, global1.c))))));
    let var_2 = _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(~(~(-1i)), 2147483647i, 0i)), abs(vec3<i32>(arg_0, 28172i, -21682i)));
    return global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(~var_0.a, ~_wgslsmith_sub_u32(var_0.a, var_0.a), var_0.a) & var_0.a, func_2(var_0, ~(-vec3<i32>(-2147483647i, global1.b, 56535i)) >> (vec3<u32>(var_0.a | 0u, min(var_0.a, 4294967295u), firstTrailingBit(70890u)) % vec3<u32>(32u)))), 24u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.a.x);
    let var_1 = 65922u;
    var var_2 = global3.b;
    let var_3 = global2[_wgslsmith_index_u32(firstTrailingBit(var_1), 24u)];
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(abs(666f)), _wgslsmith_f_op_f32(step(-1380f, 1074f)), _wgslsmith_f_op_f32(abs(1554f)), _wgslsmith_f_op_f32(-219f - -607f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-963f, -542f, 830f, -1000f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-3363f, -2905f, -687f, 291f), vec4<f32>(457f, 626f, 1000f, 985f), vec4<bool>(true, false, true, global3.b))))))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(1142f, 162f, 489f, 943f), vec4<f32>(-1545f, -890f, -194f, -629f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(384f, -1000f, -573f, 635f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-var_4.x), var_4.x, var_4.x, _wgslsmith_f_op_f32(-218f * 205f))))), _wgslsmith_dot_vec2_i32(vec2<i32>(select(select(global1.b, 5163i, global1.c), _wgslsmith_div_i32(u_input.b.x, u_input.b.x), !global3.b), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 3761i, global3.a.x, 4739i), vec4<i32>(-2147483647i, global3.a.x, global1.b, 76163i))), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-19202i, u_input.b.x), u_input.a) >> (_wgslsmith_add_vec2_u32(vec2<u32>(var_1, var_1), vec2<u32>(var_1, 1011u)) % vec2<u32>(32u)), global3.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, firstLeadingBit(firstTrailingBit(var_1)), 10522u), min(select(vec3<u32>(var_1, 1u, 4294967295u), vec3<u32>(36901u, var_1, var_1), !global1.a), reverseBits(firstTrailingBit(vec3<u32>(var_1, var_1, var_1))))), _wgslsmith_sub_i32(countOneBits(global3.a.x), global3.a.x));
}

