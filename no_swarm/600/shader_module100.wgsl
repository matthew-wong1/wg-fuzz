struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19> = array<f32, 19>(965f, 448f, 209f, -1630f, -133f, 387f, 369f, 1704f, 811f, 858f, -561f, 896f, 770f, -2078f, 677f, 569f, -120f, -250f, 1652f);

var<private> global1: array<vec4<bool>, 5> = array<vec4<bool>, 5>(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true));

var<private> global2: vec4<u32>;

var<private> global3: array<Struct_1, 1>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> bool {
    global3 = array<Struct_1, 1>();
    let var_0 = Struct_2(Struct_1(~(4294967295u | global2.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(4294967295u, u_input.a.x, global2.x, u_input.a.x)), global2.x, 4294967295u, 6639u), abs(~vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 4294967295u)), reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, global2.x, global2.x, global2.x), vec4<u32>(82555u, 4294967295u, u_input.a.x, u_input.a.x)))), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(39119u, global2.x)), global2.zw), (global2.yy & u_input.a.zy) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 1u), vec2<u32>(16103u, u_input.a.x)) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1279f, 1794f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(21777u, 19u)]), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.a.x, 19u)]))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0[_wgslsmith_index_u32(10247u, 19u)], -131f, -1286f, 1000f))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(u_input.a.x, 19u)], global0[_wgslsmith_index_u32(global2.x, 19u)], -705f), vec4<f32>(1984f, 1458f, 1247f, global0[_wgslsmith_index_u32(0u, 19u)])))))), abs(_wgslsmith_mod_vec4_u32(u_input.a, u_input.a)));
    global3 = array<Struct_1, 1>();
    var var_1 = vec2<i32>(max(max(~1i | _wgslsmith_clamp_i32(u_input.b, 1i, u_input.c), _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, u_input.b, u_input.b, 27224i), abs(vec4<i32>(u_input.b, u_input.c, u_input.c, u_input.c)))), abs(u_input.c)), i32(-1i) * -_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(u_input.b, -21032i)), ~vec2<i32>(u_input.c, u_input.c)));
    global3 = array<Struct_1, 1>();
    return _wgslsmith_div_i32(~(~var_1.x), 22330i) <= -29405i;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<u32>) -> f32 {
    var var_0 = -((u_input.b << (firstTrailingBit(reverseBits(arg_0.c)) % 32u)) >> (countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, arg_2.x, 4294967295u, 0u), select(arg_2, vec4<u32>(4294967295u, 28568u, u_input.a.x, u_input.a.x), global1[_wgslsmith_index_u32(1u, 5u)]))) % 32u));
    var var_1 = arg_0;
    global2 = ~(~vec4<u32>(max(~global2.x, abs(36052u)), ~arg_1.x, min(~arg_0.a, u_input.a.x), 1u));
    global1 = array<vec4<bool>, 5>();
    let var_2 = select(-(vec2<i32>(0i, -2147483647i) | (vec2<i32>(u_input.c, u_input.c) | _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, -14836i), vec2<i32>(-5221i, u_input.b), vec2<i32>(2147483647i, 4427i)))), -(~vec2<i32>(0i, -58906i)), select(select(vec2<bool>(true, false), vec2<bool>(true, -1i != u_input.c), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(false, true), false))), vec2<bool>(var_1.c <= 4294967295u, !all(vec3<bool>(false, false, true))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) + 266f);
}

fn func_2() -> vec4<u32> {
    var var_0 = u_input.a.x;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(~33858u, 19u)], _wgslsmith_f_op_f32(floor(-395f)))), global0[_wgslsmith_index_u32(min(global2.x, ~u_input.a.x), 19u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, global0[_wgslsmith_index_u32(~firstLeadingBit(44444u), 19u)]))), -1000f);
    global3 = array<Struct_1, 1>();
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, u_input.a.x), 1u)], ~vec2<u32>(1u ^ global2.x, ~global2.x), vec4<u32>(~u_input.a.x, global2.x, select(~1u, ~1u, func_3()), ~19618u))), var_1.x));
    var_0 = 4294967295u;
    return ~countOneBits(vec4<u32>(u_input.a.x, 4294967295u, 1u, ~global2.x & _wgslsmith_mult_u32(global2.x, global2.x)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_2 {
    global2 = _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(~u_input.a, ~(~vec4<u32>(0u, 1u, 1u, global2.x) | arg_1.b)), vec4<u32>(0u, u_input.a.x, (_wgslsmith_add_u32(global2.x, 18067u) << (4294967295u % 32u)) >> (_wgslsmith_mod_u32(arg_0.b.x, _wgslsmith_sub_u32(u_input.a.x, 41895u)) % 32u), ~(~arg_1.c)));
    global3 = array<Struct_1, 1>();
    let var_0 = 1000f;
    global1 = array<vec4<bool>, 5>();
    let var_1 = func_2();
    return Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, ~select(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_1.a, arg_0.b.x, arg_0.a), vec4<u32>(var_1.x, 53175u, global2.x, 59084u)), 6244u, false)), 1u)], var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = _wgslsmith_div_f32(-898f, global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(10092u, _wgslsmith_mod_u32(35670u, global2.x), firstTrailingBit(u_input.a.x)), _wgslsmith_div_u32(global2.x, global2.x) & ~u_input.a.x, _wgslsmith_dot_vec4_u32(select(u_input.a, vec4<u32>(4315u, 70021u, 48374u, 68063u), global1[_wgslsmith_index_u32(u_input.a.x, 5u)]), _wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(1u, global2.x, u_input.a.x, 1u)))), 19u)]);
    var var_2 = Struct_2(global3[_wgslsmith_index_u32(43378u << (~(~1u) % 32u), 1u)], u_input.a);
    global2 = abs(~vec4<u32>(firstLeadingBit(_wgslsmith_mod_u32(global2.x, u_input.a.x)), ~50836u | firstLeadingBit(global2.x), 71774u | (global2.x << (100507u % 32u)), min(var_2.a.b.x, abs(var_2.a.a))));
    let var_3 = global2.x;
    var var_4 = func_1(global3[_wgslsmith_index_u32(1u, 1u)], var_2.a, var_2.a.d);
    let x = u_input.a;
    s_output = StorageBuffer(~(~firstTrailingBit(14242u)), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(firstTrailingBit(~u_input.a.zz), ~(~vec2<u32>(u_input.a.x, var_2.b.x))), (u_input.a.yw >> (_wgslsmith_sub_vec2_u32(vec2<u32>(72493u, var_4.b.x), global2.xy) % vec2<u32>(32u))) << ((var_4.a.b.zz & ~u_input.a.xx) % vec2<u32>(32u))));
}

