struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(-38808i, true, -401f));

var<private> global1: array<vec2<i32>, 32> = array<vec2<i32>, 32>(vec2<i32>(-7755i, -1i), vec2<i32>(0i, 0i), vec2<i32>(42239i, 1i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -47396i), vec2<i32>(46582i, 0i), vec2<i32>(-26158i, 28963i), vec2<i32>(1i, 2147483647i), vec2<i32>(-46101i, 0i), vec2<i32>(1i, -11528i), vec2<i32>(25624i, 2147483647i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-36006i, 0i), vec2<i32>(-3303i, 14489i), vec2<i32>(2147483647i, 1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-1i, 1i), vec2<i32>(2147483647i, 1i), vec2<i32>(10820i, 2147483647i), vec2<i32>(-1i, -43458i), vec2<i32>(-22535i, 3918i), vec2<i32>(-1i, 1i), vec2<i32>(20044i, i32(-2147483648)), vec2<i32>(-32974i, 15963i), vec2<i32>(-16169i, 11368i), vec2<i32>(0i, 46262i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-37579i, 2147483647i), vec2<i32>(1i, 13139i), vec2<i32>(-35844i, i32(-2147483648)), vec2<i32>(0i, -1i), vec2<i32>(41010i, -17420i));

var<private> global2: array<vec4<u32>, 11> = array<vec4<u32>, 11>(vec4<u32>(47718u, 0u, 53873u, 1u), vec4<u32>(70251u, 1u, 0u, 0u), vec4<u32>(4294967295u, 36928u, 1u, 25978u), vec4<u32>(6025u, 54692u, 0u, 4294967295u), vec4<u32>(0u, 101794u, 5193u, 4294967295u), vec4<u32>(1u, 1851u, 0u, 2607u), vec4<u32>(1u, 15303u, 4294967295u, 41073u), vec4<u32>(87424u, 1626u, 32656u, 19680u), vec4<u32>(113643u, 36854u, 11953u, 4294967295u), vec4<u32>(0u, 94903u, 60533u, 31055u), vec4<u32>(0u, 11791u, 0u, 1u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: f32) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(1u, 1u)];
    var_0 = Struct_1(arg_0 | var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(662f)))) <= _wgslsmith_f_op_f32(614f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2 + 956f)))), -707f);
    global0 = array<Struct_1, 1>();
    global2 = array<vec4<u32>, 11>();
    var var_1 = u_input.a;
    return Struct_1(-1i, any(!select(vec2<bool>(false, false), vec2<bool>(var_0.b, true), vec2<bool>(true, var_0.b))), arg_2);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_1) -> f32 {
    let var_0 = func_2(arg_3.a, vec4<i32>(33156i, -arg_0.a | -19494i, ~_wgslsmith_clamp_i32(arg_3.a, countOneBits(arg_0.a), -2147483647i), arg_0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1066f * arg_1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c))));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(280f))))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(753f * arg_0.c) * _wgslsmith_f_op_f32(-arg_1.c)))))));
    let var_2 = arg_2.x;
    let var_3 = firstTrailingBit(_wgslsmith_dot_vec2_i32(-vec2<i32>(_wgslsmith_add_i32(0i, u_input.b.x), arg_3.a), _wgslsmith_mod_vec2_i32(reverseBits(_wgslsmith_clamp_vec2_i32(u_input.b, u_input.b, vec2<i32>(-2147483647i, arg_3.a))), ~(u_input.b & vec2<i32>(1i, var_0.a)))));
    global1 = array<vec2<i32>, 32>();
    return _wgslsmith_f_op_f32(f32(-1f) * -646f);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> bool {
    var var_0 = !arg_0.b;
    let var_1 = Struct_1(33606i, !(!((arg_1 < u_input.b.x) | true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(arg_0, arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, -1095f))), func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, arg_0.a, 25253i), vec3<i32>(1i, 54521i, arg_1)), firstTrailingBit(vec4<i32>(2147483647i, 1552i, -2147483647i, -3664i)), arg_0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(func_2(-2147483647i, vec4<i32>(u_input.b.x, arg_1, -1i, arg_0.a), -439f).c + arg_0.c))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.c, -798f), _wgslsmith_f_op_f32(656f - var_1.c)))));
    let var_3 = vec2<bool>(all(select(!vec4<bool>(arg_0.b, false, false, true), !vec4<bool>(arg_0.b, var_1.b, var_1.b, true), true)), var_1.c != _wgslsmith_f_op_f32(sign(var_2.x)));
    let var_4 = func_2(func_2(~(-arg_1), vec4<i32>(arg_0.a, -22665i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -8996i, 8584i), vec3<i32>(arg_1, arg_1, u_input.b.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -20293i), vec3<i32>(var_1.a, arg_1, -1i))) | (-vec4<i32>(25688i, u_input.b.x, var_1.a, var_1.a) << (select(global2[_wgslsmith_index_u32(4294967295u, 11u)], global2[_wgslsmith_index_u32(u_input.a.x, 11u)], vec4<bool>(var_1.b, true, var_3.x, arg_0.b)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -355f))))).a, vec4<i32>(firstLeadingBit(func_2(_wgslsmith_mult_i32(4210i, u_input.b.x), -vec4<i32>(-2147483647i, arg_1, arg_1, -2147483647i), -1134f).a), arg_1, _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(~u_input.a.x, 32u)]), arg_1), _wgslsmith_f_op_f32(round(arg_0.c)));
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = all(vec3<bool>(!any(vec4<bool>(arg_1.x, arg_1.x, false, false)), true, select(arg_2.c == -943f, true, arg_2.b))) || false;
    var var_1 = _wgslsmith_sub_u32(66843u, _wgslsmith_div_u32(4752u, _wgslsmith_div_u32(0u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(1u, u_input.a.x, 48069u)), _wgslsmith_add_u32(u_input.a.x, u_input.a.x)))));
    var var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(max(~vec3<u32>(u_input.a.x, 1u, u_input.a.x), ~(vec3<u32>(44709u, 64831u, u_input.a.x) << (vec3<u32>(44523u, 1u, u_input.a.x) % vec3<u32>(32u)))), firstTrailingBit(vec3<u32>(u_input.a.x, u_input.a.x, 1u))), 11u)];
    var var_3 = 353f;
    global1 = array<vec2<i32>, 32>();
    return func_2(u_input.b.x, reverseBits(-(~abs(vec4<i32>(-2147483647i, 31903i, 2147483647i, 26793i)))), arg_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = func_4(global0[_wgslsmith_index_u32(1u, 1u)], vec3<bool>(func_1(Struct_1(u_input.b.x, select(false, true, true), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), u_input.b.x), false, !(4294967295u >= ~var_0.x)), global0[_wgslsmith_index_u32(68116u, 1u)]);
    let var_2 = Struct_1(_wgslsmith_sub_i32(-42858i, var_1.a), var_1.b, var_1.c);
    var var_3 = Struct_1(_wgslsmith_add_i32(1i << (~select(34633u, var_0.x, true) % 32u), var_1.a & _wgslsmith_mod_i32(var_1.a, firstLeadingBit(-1i))), var_2.b, -1000f);
    var var_4 = Struct_1(0i, true, _wgslsmith_f_op_f32(var_1.c + var_2.c));
    var var_5 = vec4<bool>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-30148i, 3210i, var_3.a, u_input.b.x) ^ vec4<i32>(2147483647i, var_1.a, 29916i, 1i), abs(vec4<i32>(-4788i, var_4.a, 15495i, var_1.a))), var_1.a) <= var_3.a, var_2.b || (func_1(func_4(Struct_1(var_2.a, var_2.b, 878f), vec3<bool>(false, false, true), Struct_1(u_input.b.x, false, var_1.c)), min(u_input.b.x, 5586i)) != false), var_1.b, all(!vec3<bool>(!var_2.b, !var_1.b, true)));
    var var_6 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(153f)), _wgslsmith_clamp_u32(26593u, (var_0.x | u_input.a.x) ^ u_input.a.x, 4294967295u) >> (min(u_input.a.x, var_0.x) % 32u), countOneBits(_wgslsmith_div_u32(~u_input.a.x, 4294967295u)), max(1u, abs(_wgslsmith_sub_u32(16225u, ~u_input.a.x))));
}

