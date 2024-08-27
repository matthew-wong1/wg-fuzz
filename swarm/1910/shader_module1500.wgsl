struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9> = array<f32, 9>(-1000f, -1183f, 946f, 107f, -1699f, -1305f, -552f, -777f, -251f);

var<private> global1: array<i32, 14>;

var<private> global2: array<Struct_3, 30>;

var<private> global3: Struct_1 = Struct_1(32714u, vec2<i32>(-1i, 6732i), vec3<u32>(51144u, 35856u, 67308u), vec4<u32>(1u, 4294967295u, 80809u, 4294967295u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: f32) -> vec4<bool> {
    global3 = Struct_1(54225u, -reverseBits(vec2<i32>(-1i) * -global3.b), ~vec3<u32>(4294967295u, u_input.a.x, u_input.b | global3.d.x), vec4<u32>(65411u << (max(u_input.a.x, 0u) % 32u), u_input.b, 112461u, 17651u));
    var var_0 = ~countOneBits(-max(vec3<i32>(-2147483647i, global3.b.x, global1[_wgslsmith_index_u32(0u, 14u)]), reverseBits(vec3<i32>(global1[_wgslsmith_index_u32(u_input.c, 14u)], global1[_wgslsmith_index_u32(42068u, 14u)], 0i))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 9u)]), _wgslsmith_f_op_f32(sign(-603f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(222f, -951f) + vec2<f32>(global0[_wgslsmith_index_u32(1u, 9u)], 180f)))))));
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(select(1013f, var_1.x, var_2));
    return vec4<bool>(var_2, var_2, any(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(var_2, true, arg_0, true), vec4<bool>(false, var_2, arg_0, arg_0)))), (_wgslsmith_f_op_f32(sign(-2408f)) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_1, -116f)), -1675f))) | true);
}

fn func_2() -> vec3<bool> {
    var var_0 = all(func_3(!all(select(vec2<bool>(true, true), vec2<bool>(true, false), true)), _wgslsmith_f_op_f32(788f * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, global3.c.x), 9u)]))));
    return vec3<bool>(global0[_wgslsmith_index_u32(~23737u, 9u)] > global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, 7301u, u_input.c)), ~vec3<u32>(global3.d.x, 0u, u_input.b)), 9u)], !(!any(vec3<bool>(true, true, true))), true);
}

fn func_1(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: Struct_1) -> u32 {
    var var_0 = select(vec3<bool>(true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false))), !(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 9u)], -1433f) == 1072f)), select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), !func_2(), select(vec3<bool>(true, true, true), func_3(true, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_3.c.x, 10633u), 9u)]).xyy, vec3<bool>(true, true, true))), true);
    global1 = array<i32, 14>();
    var_0 = vec3<bool>(true, any(!select(!vec4<bool>(true, false, false, var_0.x), vec4<bool>(false, var_0.x, false, var_0.x), func_3(var_0.x, -1608f).x)), select(arg_2.a.d.x, ~u_input.b >> ((arg_0.b.d.x << (arg_0.b.d.x % 32u)) % 32u), !var_0.x) == reverseBits(_wgslsmith_add_u32(arg_2.a.a, global3.d.x) & ~u_input.b));
    var_0 = !select(!func_3(false, _wgslsmith_f_op_f32(arg_1.x + global0[_wgslsmith_index_u32(3818u, 9u)])).wyw, vec3<bool>(true, true, true), !select(!vec3<bool>(true, var_0.x, var_0.x), !vec3<bool>(var_0.x, var_0.x, var_0.x), false));
    var var_1 = (min(vec4<u32>(0u, min(global3.a, u_input.a.x), u_input.c, ~global3.a), _wgslsmith_clamp_vec4_u32(arg_3.d, ~vec4<u32>(arg_0.b.a, arg_2.a.a, 0u, 1u), reverseBits(vec4<u32>(0u, 4294967295u, arg_0.b.c.x, global3.a)))) ^ max(vec4<u32>(arg_3.d.x, arg_3.c.x, reverseBits(arg_2.b.d.x), _wgslsmith_sub_u32(global3.a, arg_3.d.x)), select(max(global3.d, vec4<u32>(arg_3.c.x, 47467u, u_input.b, 0u)), select(arg_3.d, vec4<u32>(21502u, 35134u, 0u, 4294967295u), vec4<bool>(var_0.x, false, true, var_0.x)), vec4<bool>(var_0.x, false, var_0.x, true)))) ^ _wgslsmith_clamp_vec4_u32(arg_3.d, ~(~firstTrailingBit(arg_0.a.d)), ~(~(~vec4<u32>(arg_0.b.d.x, u_input.b, 36617u, 19594u))));
    return global3.a;
}

fn func_4(arg_0: i32) -> vec4<f32> {
    global2 = array<Struct_3, 30>();
    global1 = array<i32, 14>();
    var var_0 = global2[_wgslsmith_index_u32(u_input.a.x, 30u)];
    global1 = array<i32, 14>();
    var_0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, 40738u), 30u)];
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-898f + 1586f)))), 188f, -197f, 2120f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(global3.d.ywz, u_input.a), 9u)], 560f, global0[_wgslsmith_index_u32(~global3.a, 9u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(global3.c.x, 9u)], 662f)), _wgslsmith_f_op_f32(-142f + 697f))))), _wgslsmith_f_op_vec4_f32(func_4(reverseBits(-global1[_wgslsmith_index_u32(func_1(Struct_3(Struct_1(26851u, vec2<i32>(global1[_wgslsmith_index_u32(global3.d.x, 14u)], global3.b.x), global3.c, global3.d), Struct_1(1u, global3.b, u_input.a, vec4<u32>(global3.d.x, 1u, global3.a, 58269u))), vec3<f32>(global0[_wgslsmith_index_u32(global3.a, 9u)], 661f, global0[_wgslsmith_index_u32(u_input.c, 9u)]), Struct_3(Struct_1(0u, vec2<i32>(9932i, 2147483647i), vec3<u32>(global3.d.x, 0u, u_input.a.x), vec4<u32>(1u, 61452u, u_input.a.x, u_input.b)), Struct_1(0u, vec2<i32>(global3.b.x, 0i), vec3<u32>(78631u, u_input.b, 5775u), global3.d)), Struct_1(global3.a, vec2<i32>(-1i, global1[_wgslsmith_index_u32(4294967295u, 14u)]), u_input.a, global3.d)), 14u)])))));
    global3 = Struct_1(u_input.a.x, vec2<i32>(-18533i, -4061i), u_input.a, vec4<u32>(4294967295u, ~1u, global3.c.x, ~1u >> (global3.a % 32u)));
    var var_1 = any(func_2().yy);
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-114f))))), global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 74729u, 0u, u_input.b), vec4<u32>(global3.a, u_input.a.x, 0u, 0u))), 9u)]));
    var_1 = (any(!select(vec2<bool>(true, false), vec2<bool>(true, false), true)) & func_3(func_3(true, _wgslsmith_div_f32(-1812f, 805f)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.x)))).x) && true;
    let var_3 = global2[_wgslsmith_index_u32(~(min(func_1(Struct_3(Struct_1(35254u, global3.b, vec3<u32>(1u, 1u, 0u), global3.d), Struct_1(31570u, global3.b, u_input.a, vec4<u32>(1u, 48879u, u_input.c, 34619u))), var_0.yxx, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global3.c.x, 4294967295u), 30u)], Struct_1(u_input.c, vec2<i32>(global3.b.x, -2147483647i), u_input.a, vec4<u32>(global3.c.x, 4294967295u, u_input.c, global3.c.x))), ~min(global3.d.x, 4294967295u)) & ~33495u), 30u)];
    var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(select(-984f, -1143f, true)), -1144f) - var_0.wwz);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_i32(-14896i, -25296i), _wgslsmith_mult_u32(var_3.a.c.x, 4294967295u), ~(-max(vec3<i32>(global1[_wgslsmith_index_u32(global3.d.x, 14u)], 2147483647i, global3.b.x), vec3<i32>(var_3.b.b.x, 2147483647i, var_3.b.b.x)) & ~vec3<i32>(-43252i, global1[_wgslsmith_index_u32(0u, 14u)], global1[_wgslsmith_index_u32(var_3.a.c.x, 14u)])));
}

