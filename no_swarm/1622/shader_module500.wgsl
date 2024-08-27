struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, false), vec2<u32>(4294967295u, 41459u));

var<private> global1: Struct_1 = Struct_1(vec2<bool>(false, false), vec2<u32>(4294967295u, 3803u));

var<private> global2: Struct_1;

var<private> global3: array<vec2<bool>, 19>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    global3 = array<vec2<bool>, 19>();
    var var_0 = Struct_1(vec2<bool>(arg_0.b.x <= _wgslsmith_dot_vec2_u32(arg_2.b, ~arg_0.b), !(_wgslsmith_div_i32(2147483647i, u_input.a) == u_input.a)), vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(global1.b.x, ~1u), max(firstTrailingBit(4294967295u), 4294967295u)), _wgslsmith_mod_u32(arg_0.b.x, 7575u)));
    var var_1 = firstLeadingBit(u_input.a);
    var var_2 = select(!var_0.a, select(!(!(!vec2<bool>(true, global0.a.x))), vec2<bool>(true, global0.a.x), global1.a), vec2<bool>(_wgslsmith_mod_u32(var_0.b.x, arg_2.b.x & global2.b.x) <= ~(global0.b.x | 4294967295u), !(all(vec3<bool>(global2.a.x, arg_2.a.x, global2.a.x)) != (global0.b.x < 55305u))));
    let var_3 = arg_2;
    return arg_2;
}

fn func_3(arg_0: u32) -> vec2<bool> {
    var var_0 = Struct_1(select(!vec2<bool>(global1.a.x || global2.a.x, global2.a.x), select(vec2<bool>(true, true), !global2.a, !vec2<bool>(false, global1.a.x)), _wgslsmith_div_f32(-1878f, 1672f) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -691f), _wgslsmith_f_op_f32(max(-381f, -398f))))), ~(abs(~vec2<u32>(global0.b.x, 20220u)) << (_wgslsmith_mod_vec2_u32(~global2.b, countOneBits(global2.b)) % vec2<u32>(32u))));
    let var_1 = -2147483647i;
    global3 = array<vec2<bool>, 19>();
    global2 = func_2(func_2(Struct_1(global2.a, max(global0.b, min(vec2<u32>(var_0.b.x, global0.b.x), var_0.b))), !(select(false, false, global1.a.x) == var_0.a.x), func_2(Struct_1(select(global2.a, vec2<bool>(true, true), vec2<bool>(true, var_0.a.x)), ~global2.b), !(!var_0.a.x), func_2(Struct_1(vec2<bool>(var_0.a.x, true), global1.b), !global2.a.x, func_2(Struct_1(vec2<bool>(false, false), vec2<u32>(var_0.b.x, 4932u)), true, Struct_1(vec2<bool>(true, global0.a.x), vec2<u32>(global1.b.x, 4294967295u)))))), !any(vec2<bool>(global0.a.x, false)), func_2(Struct_1(!(!vec2<bool>(global1.a.x, global1.a.x)), firstLeadingBit(vec2<u32>(48560u, global1.b.x))), !(var_0.a.x || (var_1 <= var_1)), func_2(Struct_1(select(global0.a, global1.a, vec2<bool>(false, global0.a.x)), global1.b), global2.b.x >= 1u, func_2(Struct_1(vec2<bool>(global1.a.x, false), global1.b), true, Struct_1(global1.a, vec2<u32>(14327u, 0u))))));
    let var_2 = Struct_1(var_0.a, max(vec2<u32>(~4294967295u, 1u), ~abs(~var_0.b)));
    return var_0.a;
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = true;
    let var_2 = Struct_1(vec2<bool>(all(!vec3<bool>(arg_0, arg_1.x, var_1)), true), min(arg_2.b, global0.b));
    global0 = Struct_1(vec2<bool>(var_2.a.x, any(!select(vec4<bool>(true, arg_2.a.x, true, false), arg_1, arg_1.x))), func_2(arg_2, !all(vec4<bool>(true, true, true, true)), func_2(arg_2, true, func_2(func_2(var_0, true, var_0), var_1, Struct_1(global3[_wgslsmith_index_u32(global0.b.x, 19u)], vec2<u32>(var_2.b.x, 0u))))).b);
    return Struct_1(vec2<bool>(!(u_input.a <= -10266i), false || any(select(arg_1.zyx, vec3<bool>(true, true, false), arg_1.yzx))), countOneBits(~arg_2.b));
}

fn func_1(arg_0: u32) -> vec2<bool> {
    global1 = func_2(Struct_1(global1.a, ~firstLeadingBit(reverseBits(global1.b))), global2.a.x, Struct_1(global1.a, global2.b));
    global3 = array<vec2<bool>, 19>();
    global3 = array<vec2<bool>, 19>();
    var var_0 = global1.a.x;
    var var_1 = func_4(!(true && global1.a.x), vec4<bool>(all(!select(vec4<bool>(global1.a.x, global1.a.x, true, global1.a.x), vec4<bool>(false, true, global0.a.x, false), false)), false, global0.a.x, global1.a.x), func_2(func_2(Struct_1(func_3(1u), ~global0.b), global0.a.x, Struct_1(select(global1.a, vec2<bool>(false, global2.a.x), false), global1.b)), (_wgslsmith_f_op_f32(sign(255f)) > 633f) & (_wgslsmith_f_op_f32(floor(628f)) < _wgslsmith_f_op_f32(abs(-346f))), func_2(Struct_1(global1.a, vec2<u32>(4294967295u, global0.b.x)), false, Struct_1(select(global0.a, global1.a, global3[_wgslsmith_index_u32(global0.b.x, 19u)]), _wgslsmith_add_vec2_u32(global1.b, vec2<u32>(global2.b.x, 0u))))), _wgslsmith_add_u32(global0.b.x, 36748u));
    return select(global1.a, !vec2<bool>(global2.a.x, true), !(!var_1.a.x));
}

fn func_5(arg_0: Struct_1) -> vec2<u32> {
    global3 = array<vec2<bool>, 19>();
    var var_0 = func_3(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.b.x, global2.b.x, 4294967295u), min(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.b.x, global2.b.x, global0.b.x), vec3<u32>(global2.b.x, global0.b.x, arg_0.b.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(global2.b.x, global0.b.x, 19098u), vec3<u32>(13140u, 1u, global1.b.x)))), ~(~countOneBits(vec3<u32>(1u, 29310u, global0.b.x)))));
    global3 = array<vec2<bool>, 19>();
    var var_1 = arg_0;
    var_1 = Struct_1(var_1.a, ~(~vec2<u32>(36614u, 9426u) ^ vec2<u32>(4586u, var_1.b.x)));
    return ~vec2<u32>(func_2(arg_0, true, func_2(arg_0, !var_1.a.x, func_2(Struct_1(vec2<bool>(var_0.x, true), vec2<u32>(arg_0.b.x, 4294967295u)), var_1.a.x, arg_0))).b.x, ~arg_0.b.x ^ 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(!(!(!global3[_wgslsmith_index_u32(0u ^ global1.b.x, 19u)])), func_5(Struct_1(func_1(~global1.b.x), firstLeadingBit(vec2<u32>(2491u, 0u)))));
    global2 = func_2(Struct_1(select(select(global0.a, func_4(true, vec4<bool>(global0.a.x, false, true, global1.a.x), Struct_1(vec2<bool>(false, false), global0.b), 81704u).a, !global1.a.x), func_1(global1.b.x), !global2.a.x), global1.b), !any(!select(vec3<bool>(true, global0.a.x, global1.a.x), vec3<bool>(true, global2.a.x, true), vec3<bool>(global0.a.x, false, false))), Struct_1(global2.a, firstTrailingBit(vec2<u32>(1u, 1u)) ^ vec2<u32>(global2.b.x, 0u)));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(959f)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-540f))))))));
    var var_1 = ~firstTrailingBit(u_input.a ^ u_input.a);
    global3 = array<vec2<bool>, 19>();
    global1 = func_2(Struct_1(vec2<bool>((u_input.a & 0i) < ~1i, true), vec2<u32>(4253u, global1.b.x | ~global0.b.x)), false, func_2(func_4(true, select(vec4<bool>(global1.a.x, true, false, global0.a.x), !vec4<bool>(global2.a.x, false, global1.a.x, global2.a.x), select(vec4<bool>(global2.a.x, true, true, global0.a.x), vec4<bool>(false, global1.a.x, global2.a.x, true), vec4<bool>(global0.a.x, true, false, global0.a.x))), func_2(func_4(false, vec4<bool>(global0.a.x, true, false, global1.a.x), Struct_1(global2.a, vec2<u32>(global2.b.x, global2.b.x)), 4294967295u), -1i > u_input.a, func_4(global1.a.x, vec4<bool>(false, false, global2.a.x, global2.a.x), Struct_1(vec2<bool>(global1.a.x, global0.a.x), vec2<u32>(global0.b.x, 1378u)), global2.b.x)), 1u), !(!global2.a.x && (true && global2.a.x)), func_2(Struct_1(!vec2<bool>(global2.a.x, global0.a.x), func_2(Struct_1(global1.a, vec2<u32>(global2.b.x, global1.b.x)), global1.a.x, Struct_1(global2.a, vec2<u32>(global2.b.x, 0u))).b), func_2(func_4(global0.a.x, vec4<bool>(global1.a.x, global0.a.x, true, false), Struct_1(vec2<bool>(true, false), vec2<u32>(1u, global0.b.x)), global2.b.x), false | global2.a.x, func_2(Struct_1(global0.a, vec2<u32>(global2.b.x, global2.b.x)), global1.a.x, Struct_1(global2.a, vec2<u32>(global0.b.x, 4294967295u)))).a.x, func_4(true, select(vec4<bool>(true, global1.a.x, false, false), vec4<bool>(false, global0.a.x, true, global2.a.x), vec4<bool>(global2.a.x, true, global1.a.x, true)), func_4(true, vec4<bool>(global1.a.x, true, global0.a.x, false), Struct_1(vec2<bool>(true, global0.a.x), vec2<u32>(29590u, global1.b.x)), global1.b.x), 0u))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(535f, -642f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1143f, -317f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1741f - 835f), _wgslsmith_div_f32(1442f, 778f)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -653f), _wgslsmith_f_op_f32(round(940f)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(720f, 1183f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-326f, -223f), vec2<f32>(-617f, 1736f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1705f, -872f))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-552f, -330f))))));
    let var_3 = -2147483647i;
    var var_4 = min(vec4<u32>(global1.b.x | (~4294967295u | func_2(Struct_1(vec2<bool>(true, global2.a.x), vec2<u32>(4294967295u, 85412u)), true, Struct_1(vec2<bool>(false, global0.a.x), vec2<u32>(global1.b.x, 44004u))).b.x), 0u, global1.b.x, global0.b.x), vec4<u32>(global0.b.x, func_5(Struct_1(vec2<bool>(global0.a.x, global2.a.x), global2.b & global0.b)).x, global2.b.x, firstLeadingBit(global0.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(vec2<u32>(15574u, global1.b.x), vec2<u32>(1u, _wgslsmith_mod_u32(global1.b.x, global2.b.x))) >> (vec2<u32>(1u, global2.b.x) % vec2<u32>(32u)), ~(~vec2<i32>(u_input.a, 1i)), _wgslsmith_div_i32(u_input.a, firstLeadingBit(0i)));
}

