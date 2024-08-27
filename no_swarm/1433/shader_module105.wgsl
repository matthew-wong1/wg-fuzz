struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1 = Struct_1(true, vec2<bool>(true, true), vec2<f32>(612f, -327f));

var<private> global2: array<vec2<bool>, 24>;

var<private> global3: u32;

var<private> global4: array<vec4<i32>, 28> = array<vec4<i32>, 28>(vec4<i32>(2147483647i, 1i, 12152i, 0i), vec4<i32>(1i, 2147483647i, 0i, 32317i), vec4<i32>(-29898i, -1i, 1i, -13839i), vec4<i32>(-19003i, 0i, 2147483647i, -2767i), vec4<i32>(0i, 9992i, 4770i, 10523i), vec4<i32>(-18495i, 1i, -1i, 2147483647i), vec4<i32>(2147483647i, 0i, 2147483647i, 16670i), vec4<i32>(-1i, 58122i, 41526i, -826i), vec4<i32>(i32(-2147483648), -14971i, 1388i, 1i), vec4<i32>(-65213i, 0i, -57813i, 11990i), vec4<i32>(2325i, i32(-2147483648), 34491i, -1474i), vec4<i32>(8544i, 20800i, -50792i, 1i), vec4<i32>(-3324i, -8873i, 1i, -33936i), vec4<i32>(25102i, -30553i, 1i, 20306i), vec4<i32>(-27510i, 21140i, 30752i, 0i), vec4<i32>(-1i, 1i, 2147483647i, 1i), vec4<i32>(0i, 36865i, -24741i, 4511i), vec4<i32>(-2331i, 0i, 1i, 2147483647i), vec4<i32>(0i, i32(-2147483648), -1i, i32(-2147483648)), vec4<i32>(1i, -23628i, i32(-2147483648), -32085i), vec4<i32>(-32527i, 35967i, -1i, -9046i), vec4<i32>(-1i, 2147483647i, 1i, -35846i), vec4<i32>(0i, -9124i, -1i, 39069i), vec4<i32>(i32(-2147483648), -40183i, 31226i, 2147483647i), vec4<i32>(-1171i, -1i, -20949i, -31067i), vec4<i32>(30819i, 1i, -45308i, 0i), vec4<i32>(2147483647i, -51981i, -6920i, -2941i), vec4<i32>(7766i, 1i, -1i, -33538i));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<f32> {
    var var_0 = -817f;
    let var_1 = Struct_1(!(_wgslsmith_f_op_f32(step(1f, -132f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -651f))), vec2<bool>(all(vec4<bool>(global1.a, true, global1.c.x > -1236f, true)), true || (_wgslsmith_dot_vec4_i32(global4[_wgslsmith_index_u32(u_input.a.x, 28u)], u_input.c) < min(u_input.c.x, -2147483647i))), global1.c);
    let var_2 = Struct_1(false, select(select(var_1.b, vec2<bool>(global1.a, -2147483647i <= u_input.c.x), vec2<bool>(all(vec4<bool>(true, global1.b.x, false, var_1.a)), true)), select(select(vec2<bool>(var_1.b.x, global1.b.x), global2[_wgslsmith_index_u32(u_input.a.x, 24u)], all(vec4<bool>(false, global1.a, global1.a, global1.b.x))), select(select(global1.b, global2[_wgslsmith_index_u32(u_input.b.x, 24u)], global1.b.x), !global2[_wgslsmith_index_u32(24697u, 24u)], true), ~u_input.c.x > u_input.c.x), !global1.b), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(var_1.c, global1.c, global1.b.x)), vec2<f32>(_wgslsmith_f_op_f32(select(-281f, -2552f, global1.b.x)), _wgslsmith_f_op_f32(global1.c.x - global1.c.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-803f, var_1.c.x), vec2<f32>(-715f, -678f))))) + global1.c), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_mod_u32(9124u, 83514u), _wgslsmith_dot_vec2_u32(vec2<u32>(11560u, u_input.b.x), u_input.a.wy)), 24u)])));
    let var_3 = vec4<i32>(u_input.c.x, ~_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(-u_input.c.yx, select(vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(u_input.c.x, 6191i), true)), ~u_input.c.xw), u_input.c.x, ~(-6545i));
    var var_4 = any(vec3<bool>(true != var_1.a, true, 1i <= u_input.c.x));
    return vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -191f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -514f)));
}

fn func_2() -> f32 {
    var var_0 = Struct_1(select(_wgslsmith_div_u32(~u_input.a.x, u_input.a.x & u_input.b.x) != (1u << (u_input.a.x % 32u)), false, global1.a), vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) - vec2<f32>(_wgslsmith_f_op_f32(step(-520f, global1.c.x)), _wgslsmith_f_op_f32(min(global1.c.x, global1.c.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.x, _wgslsmith_f_op_f32(-global1.c.x)) + vec2<f32>(global1.c.x, _wgslsmith_f_op_f32(abs(global1.c.x)))))));
    global4 = array<vec4<i32>, 28>();
    global2 = array<vec2<bool>, 24>();
    global2 = array<vec2<bool>, 24>();
    global2 = array<vec2<bool>, 24>();
    return 1855f;
}

fn func_1() -> Struct_1 {
    var var_0 = ~(countOneBits(select(u_input.b, _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 15278u, 62966u), u_input.a.wwx, u_input.a.yww), !vec3<bool>(global1.a, global1.a, global1.b.x))) >> (abs(~vec3<u32>(u_input.a.x, 72307u, u_input.b.x)) % vec3<u32>(32u)));
    let var_1 = vec4<u32>(~2769u, 1u, ~u_input.b.x, var_0.x);
    let var_2 = false || all(!select(vec3<bool>(global1.a, true, false), select(vec3<bool>(global1.a, false, global1.a), vec3<bool>(global1.b.x, true, global1.a), false), all(vec4<bool>(global1.a, global1.a, false, global1.a))));
    global0 = _wgslsmith_f_op_f32(func_2());
    let var_3 = _wgslsmith_mult_u32(var_1.x, _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_sub_u32(u_input.a.x, ~(~3015u))));
    return Struct_1(any(!vec2<bool>(var_0.x >= 4294967295u, global1.a)), !(!select(vec2<bool>(false, true), !global2[_wgslsmith_index_u32(u_input.b.x, 24u)], global2[_wgslsmith_index_u32(~5289u, 24u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-653f, _wgslsmith_f_op_f32(-global1.c.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-241f, -1939f)), select(global1.b.x, global1.c.x > -444f, -1417f > global1.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(!((_wgslsmith_f_op_f32(199f * global1.c.x) > global1.c.x) || global1.a), global2[_wgslsmith_index_u32(~u_input.a.x, 24u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(605f, -1121f)), global1.c, vec2<bool>(global1.b.x, false))), _wgslsmith_div_vec2_f32(vec2<f32>(global1.c.x, global1.c.x), _wgslsmith_f_op_vec2_f32(-global1.c)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.x, 434f)), global1.c, true)))));
    global1 = func_1();
    var var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(88996u, u_input.a.x), vec2<u32>(2044u, u_input.a.x)), vec2<u32>(16302u, 4294967295u) | vec2<u32>(20612u, u_input.a.x)), u_input.a.x, _wgslsmith_add_u32(select(11096u, ~u_input.a.x, 2147483647i >= u_input.c.x), firstTrailingBit(reverseBits(19014u))), u_input.a.x), _wgslsmith_mod_vec4_u32(u_input.a >> (vec4<u32>(0u, u_input.b.x << (u_input.a.x % 32u), ~4294967295u, firstLeadingBit(7889u)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_add_u32(0u, 28323u), abs(7449u), u_input.b.x, u_input.a.x), ~vec4<u32>(16193u, 66809u, 6183u, u_input.a.x) >> (~u_input.a % vec4<u32>(32u)))));
    global2 = array<vec2<bool>, 24>();
    var var_1 = !global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(select(1u, u_input.a.x, false)), _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a.x, var_0.x), var_0.x), u_input.a.x) & u_input.b.x, 24u)];
    var var_2 = !(!global1.b.x);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1().c.x)));
    var_1 = func_1().b;
    let x = u_input.a;
    s_output = StorageBuffer(~(-1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1309f, 1178f), 483f)))) + _wgslsmith_f_op_f32(-global1.c.x)));
}

