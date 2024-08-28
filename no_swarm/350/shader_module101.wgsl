struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(-1i, -2433i);

var<private> global3: array<u32, 9>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>) -> u32 {
    var var_0 = true;
    global3 = array<u32, 9>();
    let var_1 = true;
    var var_2 = ~countOneBits(_wgslsmith_clamp_i32(-1i, 32146i, global0.a));
    var var_3 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(select(abs(vec4<i32>(global1.b, -25918i, arg_0, -3119i)), countOneBits(vec4<i32>(2147483647i, global0.a, -4702i, global1.a)), vec4<bool>(var_1, true, var_1, false)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_0, global0.a, u_input.a, global1.a) & vec4<i32>(global1.a, global0.a, global1.b, global2.a), -vec4<i32>(arg_0, u_input.a, global0.a, u_input.a))), arg_0), select(_wgslsmith_mod_i32(67427i, i32(-1i) * -2147483647i), reverseBits(arg_0), any(select(vec3<bool>(var_1, true, false), vec3<bool>(var_1, var_1, var_1), false))) >> (u_input.b.x % 32u));
    return ~u_input.b.x;
}

fn func_2() -> vec3<bool> {
    var var_0 = _wgslsmith_add_u32(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(~(~u_input.b.x), 9u)], 9u)], ~(~u_input.b.x)), min(reverseBits(func_3(u_input.a, vec2<f32>(-182f, -1636f))), 0u));
    global1 = Struct_1(_wgslsmith_add_i32(0i, -2286i), global2.a);
    global2 = Struct_1(global0.b, abs(global2.b));
    var_0 = ~(~(~abs(u_input.b.x)));
    var var_1 = Struct_1(global2.b, 6119i);
    return !(!select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), false));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool, arg_3: Struct_1) -> bool {
    global0 = arg_0;
    global1 = arg_0;
    global0 = Struct_1(firstTrailingBit(i32(-1i) * -21606i), 0i);
    var var_0 = _wgslsmith_add_vec3_i32(select(_wgslsmith_mod_vec3_i32(~vec3<i32>(global0.b, -1i, u_input.a), (vec3<i32>(-1i, global1.b, -2118i) >> (vec3<u32>(u_input.b.x, 4294967295u, 4294967295u) % vec3<u32>(32u))) << (u_input.b.yxz % vec3<u32>(32u))), vec3<i32>(_wgslsmith_sub_i32(36526i, global0.b), _wgslsmith_add_i32(-1i, global2.b), arg_3.a) | vec3<i32>(-2147483647i, 1i, 0i), false), -(-countOneBits(vec3<i32>(arg_0.a, 2909i, 6133i)) & _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.a, 10124i, global1.b) ^ vec3<i32>(global0.a, arg_0.b, global1.a), -vec3<i32>(global1.b, 0i, global0.a))));
    global2 = arg_0;
    return any(arg_1);
}

fn func_5(arg_0: bool) -> Struct_1 {
    global3 = array<u32, 9>();
    global1 = Struct_1(~reverseBits(~_wgslsmith_mod_i32(-59202i, global1.a)), global1.b);
    let var_0 = Struct_1(firstTrailingBit(2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, min(-u_input.a, -2147483647i), -2147483647i), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(global2.b, 1i, u_input.a), vec3<i32>(global1.a, global1.a, 0i), abs(vec3<i32>(global1.a, global2.a, 21062i))), -(~vec3<i32>(-2147483647i, u_input.a, u_input.a)), select(vec3<bool>(true, arg_0, true), func_2(), vec3<bool>(true, true, arg_0)))));
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(_wgslsmith_add_vec2_u32(vec2<u32>(1u, reverseBits(0u)), u_input.b.yy)), ~(~(~min(vec2<u32>(31745u, 25075u), u_input.b.zz)))), 9u)];
    var var_2 = select(vec3<i32>(-2147483647i, ~(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 12089i, var_0.a, -1i), vec4<i32>(global0.b, -2147483647i, 2147483647i, u_input.a)) & 1i), firstTrailingBit(global1.b)), vec3<i32>(-countOneBits(_wgslsmith_mult_i32(global1.a, -2147483647i)), select(var_0.a, 1i, any(vec3<bool>(true, arg_0, false))), 56665i), reverseBits(-19957i) != global0.a);
    return Struct_1(global1.a, -76865i);
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = func_5(func_4(Struct_1(-1i, _wgslsmith_dot_vec2_i32(~vec2<i32>(43500i, -1i), vec2<i32>(global0.b, arg_1))), func_2(), !arg_2.x, Struct_1(_wgslsmith_sub_i32(-global1.a, 1i), -_wgslsmith_sub_i32(global2.b, 1789i))));
    var var_1 = func_5(true);
    var var_2 = func_5(true);
    var var_3 = arg_0.yz;
    var var_4 = arg_0.x;
    return func_5((_wgslsmith_mod_u32(u_input.b.x, global3[_wgslsmith_index_u32(62580u, 9u)] << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 9u)], 9u)], 9u)], 9u)], 9u)] % 32u)) <= ~global3[_wgslsmith_index_u32(u_input.b.x ^ 46867u, 9u)]) || false);
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_2().x;
    var_0 = true;
    var var_1 = _wgslsmith_sub_i32(-(~global2.a), ~(-min(1i, -2147483647i)) << (~global3[_wgslsmith_index_u32(countOneBits(~global3[_wgslsmith_index_u32(4294967295u, 9u)]), 9u)] % 32u));
    var var_2 = Struct_1(~_wgslsmith_div_i32(i32(-1i) * -2147483647i, max(firstTrailingBit(-1i), -1i)), arg_1.b);
    var var_3 = true;
    return arg_1;
}

fn func_7(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = !(!vec4<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false)), true, !any(vec4<bool>(true, true, false, true)), any(vec3<bool>(true, true, true))));
    var var_1 = arg_1;
    var_1 = arg_1;
    var var_2 = !var_0.yzy;
    let var_3 = vec4<i32>(global1.b, -2147483647i, global2.b, global2.b);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_7(1939f, func_6(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -837f), -926f, _wgslsmith_f_op_f32(max(722f, 522f)), -1021f)), func_1(vec4<f32>(-927f, 252f, 130f, -1434f), global0.b, vec2<bool>(true, true)), func_1(vec4<f32>(1f, 1f, 1f, 1f), global2.a, vec2<bool>(true, false)), Struct_1(_wgslsmith_mult_i32(global1.a, select(16702i, global0.b, true)), -global2.b)));
    let var_0 = func_2();
    let var_1 = vec3<bool>(true, any(select(select(vec4<bool>(var_0.x, false, false, false), vec4<bool>(true, var_0.x, false, true), true), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(true, var_0.x, var_0.x, var_0.x)), vec4<bool>(var_0.x, false, var_0.x, true))) | func_4(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.b, global0.b, 2147483647i, global1.a), vec4<i32>(global0.b, global0.b, -44744i, global2.a)), _wgslsmith_add_i32(-30764i, 28049i)), vec3<bool>(all(var_0.xz), true, var_0.x), global2.a < _wgslsmith_add_i32(-12215i, -12345i), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(665f, 670f, -1002f, 202f)), ~global0.a, vec2<bool>(false, var_0.x))), all(vec2<bool>(!func_2().x, true)));
    global3 = array<u32, 9>();
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(339f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-412f + _wgslsmith_f_op_f32(-523f - -358f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-321f, -1320f)))))), -1035f)));
    let var_3 = vec3<i32>(func_5(func_2().x).a, -2147483647i, -15934i);
    var var_4 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(func_7(var_2.x, Struct_1(68216i, global2.a)).a, -global1.b, global2.b, -2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(-82859i, 2147483647i, var_3.x, -20099i) << (u_input.b % vec4<u32>(32u)), vec4<i32>(-28864i, u_input.a, 2147483647i, 2147483647i) & vec4<i32>(global2.a, 2147483647i, -5809i, global2.b))) ^ ~(-global0.a), _wgslsmith_sub_i32(-_wgslsmith_sub_i32(reverseBits(4885i), -u_input.a), -14005i));
    var var_5 = -447f;
    let var_6 = _wgslsmith_div_f32(769f, var_2.x) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-174f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1078f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_mod_i32((-4558i >> (u_input.b.x % 32u)) >> (29730u % 32u), -(~2147483647i)), -20081i, max(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(9221i, u_input.a, u_input.a, 26703i), vec4<i32>(var_3.x, global1.a, global1.a, 1i))), _wgslsmith_div_i32(func_1(var_2, global0.b, var_1.zy).b, var_3.x)), _wgslsmith_add_i32(u_input.a, _wgslsmith_dot_vec4_i32(~vec4<i32>(global1.b, global1.a, var_4.a, 46394i), ~vec4<i32>(0i, var_3.x, 5386i, var_4.b)))));
}

