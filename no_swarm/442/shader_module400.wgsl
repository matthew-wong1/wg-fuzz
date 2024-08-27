struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(39643i), Struct_2(-1i), Struct_2(1i), Struct_2(2147483647i), Struct_2(35440i), Struct_2(91987i), Struct_2(-1i), Struct_2(-8737i), Struct_2(2147483647i), Struct_2(1i), Struct_2(-37989i), Struct_2(i32(-2147483648)), Struct_2(0i), Struct_2(-1i), Struct_2(-55747i), Struct_2(2147483647i), Struct_2(2147483647i), Struct_2(0i), Struct_2(-70240i), Struct_2(2147483647i), Struct_2(-1656i), Struct_2(1i), Struct_2(-34026i), Struct_2(2147483647i), Struct_2(2147483647i));

var<private> global1: vec4<f32> = vec4<f32>(-1196f, 413f, -515f, -992f);

var<private> global2: Struct_3 = Struct_3(vec2<i32>(0i, -25611i));

var<private> global3: array<Struct_1, 31>;

var<private> global4: array<u32, 13>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: bool) -> u32 {
    var var_0 = Struct_3(reverseBits(vec2<i32>(-u_input.a.x, _wgslsmith_dot_vec2_i32(global2.a, vec2<i32>(u_input.a.x, 26030i) & global2.a))));
    let var_1 = vec4<bool>(any(select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(false, arg_1), vec2<bool>(arg_1, arg_1)), select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), arg_1), !vec2<bool>(true, arg_1))) | true, false, !arg_1, true);
    var_0 = Struct_3(global2.a);
    var var_2 = ~vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, var_0.a.x), vec3<i32>(-2147483647i, -2147483647i, -42721i)), vec3<i32>(-28810i, -19535i, global2.a.x) ^ vec3<i32>(u_input.a.x, -2147483647i, -3728i)), ~arg_0), ~arg_0, arg_0);
    var var_3 = vec2<i32>(-1i) * -(~u_input.a);
    return 13731u;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<f32>) -> Struct_3 {
    global0 = array<Struct_2, 25>();
    let var_0 = global3[_wgslsmith_index_u32(func_3(u_input.a.x, -u_input.a.x <= -522i), 31u)];
    var var_1 = Struct_1(-var_0.a);
    var var_2 = ~_wgslsmith_mod_i32(~(-1i), _wgslsmith_mult_i32(firstLeadingBit(var_0.a.x), 1i)) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 10346u, u_input.b.x), vec4<u32>(91099u, global4[_wgslsmith_index_u32(69840u, 13u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b.x, 13u)], 13u)], 13u)], u_input.b.x)), abs(u_input.b.x), ~global4[_wgslsmith_index_u32(u_input.b.x, 13u)]), abs(~vec3<u32>(4294967295u, 1u, 1u))) % 32u);
    let var_3 = _wgslsmith_div_i32(_wgslsmith_mod_i32(31650i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, global2.a.x, global2.a.x), vec3<i32>(0i, 0i, var_1.a.x))) | var_1.a.x, -4537i << (countOneBits(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b.x, 13u)], 13u)]) % 32u));
    return Struct_3(-var_0.a.xx);
}

fn func_1() -> f32 {
    global2 = func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + global1.x) * global1.x)), global1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.zyx - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.x, global1.x, global1.x))))));
    let var_0 = select(vec2<bool>(true, true), select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true), global1.x == _wgslsmith_div_f32(global1.x, global1.x)), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), true), !vec2<bool>(all(vec2<bool>(true, false)), all(vec4<bool>(false, false, true, false)))), vec2<bool>(all(vec4<bool>(true, true, true, true)), true));
    global4 = array<u32, 13>();
    var var_1 = firstTrailingBit(global2.a.x);
    global1 = vec4<f32>(-942f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(901f, global1.x)) - _wgslsmith_f_op_f32(step(979f, -1512f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * global1.x))), _wgslsmith_f_op_f32(-global1.x), true)), global1.x);
    return _wgslsmith_f_op_f32(-global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.x - 210f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())));
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~(46807u ^ global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(49825u, 13u)], 13u)]) & _wgslsmith_mult_u32(u_input.b.x << (u_input.b.x % 32u), ~57728u), select(~abs(1u), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~1u, 13u)], 13u)], any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false))))) | ~56417u, 31u)];
    global4 = array<u32, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(global2.a.x << (global4[_wgslsmith_index_u32(39553u, 13u)] % 32u)), abs(1i | global2.a.x), true), _wgslsmith_f_op_f32(ceil(-1411f)), _wgslsmith_div_vec4_i32(-(~select(vec4<i32>(0i, var_1.a.x, var_1.a.x, global2.a.x), vec4<i32>(-1498i, global2.a.x, 1i, 28019i), vec4<bool>(true, false, false, false))), -abs(vec4<i32>(12639i, -1i, global2.a.x, var_1.a.x)) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.a.x, -1i, -1i, u_input.a.x), vec4<i32>(1i, u_input.a.x, var_1.a.x, global2.a.x), vec4<i32>(0i, u_input.a.x, -2147483647i, global2.a.x))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.x))), 658f, 692f))));
}

