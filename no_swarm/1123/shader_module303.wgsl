struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<u32, 5> = array<u32, 5>(37008u, 60449u, 0u, 4294967295u, 0u);

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(1i, vec2<f32>(-650f, 441f), 3107u);

var<private> global4: f32 = -1395f;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec3<u32> {
    global0 = vec3<i32>(~(arg_0.a >> (68207u % 32u)), ~1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-2231i, u_input.c.x, 1i, arg_0.a), min(-vec4<i32>(-50969i, global0.x, -32568i, global3.a) >> (~vec4<u32>(arg_2.c, 0u, u_input.a, 1u) % vec4<u32>(32u)), ~firstTrailingBit(vec4<i32>(arg_2.a, u_input.c.x, 2147483647i, global0.x)))));
    global3 = arg_2;
    let var_0 = Struct_1(max(26988i, u_input.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global3.b.x, _wgslsmith_f_op_f32(-global3.b.x)), _wgslsmith_f_op_vec2_f32(-arg_2.b))), _wgslsmith_add_u32(21876u, ~_wgslsmith_mod_u32(~global3.c, 1u)));
    let var_1 = Struct_1(arg_0.a, vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-810f + -1484f), _wgslsmith_f_op_f32(min(-1349f, _wgslsmith_f_op_f32(-1394f - 367f))))), -1320f), select(_wgslsmith_add_u32(global3.c, 1u), max(1u, 41561u), false));
    var var_2 = global3.a;
    return vec3<u32>(_wgslsmith_mult_u32(u_input.a, _wgslsmith_dot_vec2_u32(select(u_input.b.yy, ~vec2<u32>(76014u, u_input.b.x), all(vec3<bool>(true, true, true))), firstLeadingBit(u_input.b.yx))), firstTrailingBit(~_wgslsmith_mod_u32(arg_2.c, global3.c & var_1.c)), arg_1);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<i32>) -> f32 {
    var var_0 = Struct_1(arg_1.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(global2.b, global3.b, false)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.b) * global3.b)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1826f, -197f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global3.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b.x, global2.b.x))), any(vec3<bool>(true, true, true))))), 1u);
    var var_1 = Struct_1(42489i >> (~global3.c % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b.x, -508f) - global3.b) - vec2<f32>(-244f, 260f)))), _wgslsmith_dot_vec2_u32(u_input.b.yx, reverseBits(_wgslsmith_div_vec2_u32(select(vec2<u32>(0u, 97701u), vec2<u32>(4119u, global3.c), vec2<bool>(true, false)), firstLeadingBit(vec2<u32>(41716u, global2.c))))));
    let var_2 = Struct_1(countOneBits(_wgslsmith_div_i32(63892i >> (arg_0.x % 32u), global2.a)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(822f)))), -983f))), 4294967295u);
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -2944f);
    var var_4 = select(max(_wgslsmith_mult_i32(~(-30550i), -var_1.a), global3.a) > -arg_1.x, false & (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.b.x, -784f, true))) > _wgslsmith_f_op_f32(exp2(var_0.b.x))), any(!vec2<bool>(false, -1350f == global2.b.x)));
    return _wgslsmith_f_op_f32(-global2.b.x);
}

fn func_2(arg_0: f32) -> u32 {
    global2 = Struct_1(global2.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(global2.b)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1281f), -1509f)))), 0u);
    global3 = Struct_1(u_input.c.x, vec2<f32>(_wgslsmith_f_op_f32(func_4(func_3(Struct_1(u_input.c.x, vec2<f32>(arg_0, arg_0), global2.c), global3.c >> (global2.c % 32u), Struct_1(global3.a, vec2<f32>(-177f, -602f), global2.c)), vec2<i32>(global3.a & -2147483647i, global2.a))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_u32(~(~(8625u | global3.c)), (u_input.a >> (~global1[_wgslsmith_index_u32(4294967295u, 5u)] % 32u)) | 71793u));
    global2 = Struct_1(i32(-1i) * -global2.a, global2.b, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(u_input.b, ~u_input.b), firstTrailingBit(~(~global1[_wgslsmith_index_u32(4294967295u, 5u)]))), 5u)]);
    global3 = Struct_1(2147483647i, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.b.x))), _wgslsmith_f_op_f32(select(global3.b.x, -938f, true))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-527f - global2.b.x), 251f))))), global1[_wgslsmith_index_u32(reverseBits(~(28789u | global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, global3.c, global1[_wgslsmith_index_u32(global2.c, 5u)]), vec4<u32>(84650u, global2.c, 33400u, global3.c)), 5u)])), 5u)]);
    var var_0 = Struct_1(~global0.x, vec2<f32>(570f, -899f), 4294967295u);
    return 4294967295u;
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), global3.b.x)));
    var var_1 = Struct_1(reverseBits(68253i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.b)))), _wgslsmith_dot_vec4_u32(vec4<u32>(func_2(var_0.x), firstTrailingBit(13175u), u_input.a & global1[_wgslsmith_index_u32(global3.c, 5u)], func_3(Struct_1(u_input.c.x, vec2<f32>(arg_0.x, global2.b.x), 0u), 38974u, Struct_1(-23901i, vec2<f32>(global2.b.x, global2.b.x), 20315u)).x) & countOneBits(vec4<u32>(1u, global1[_wgslsmith_index_u32(4294967295u, 5u)], global1[_wgslsmith_index_u32(global2.c, 5u)], u_input.a)), _wgslsmith_add_vec4_u32(vec4<u32>(max(11894u, global3.c), 30124u, ~global2.c, _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(40040u, 5u)], global3.c, 1u, 0u), vec4<u32>(global2.c, 105936u, 6724u, u_input.b.x))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(2947u, u_input.a, 44452u, 21314u), vec4<u32>(global2.c, u_input.b.x, u_input.b.x, 1u)))));
    global0 = reverseBits(countOneBits(-vec3<i32>(~(-23329i), global2.a, global2.a)));
    global3 = Struct_1(firstTrailingBit(_wgslsmith_sub_i32(1i << (_wgslsmith_dot_vec3_u32(u_input.b, u_input.b) % 32u), global0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-195f, global3.b.x) + vec2<f32>(-846f, global2.b.x)), _wgslsmith_f_op_vec2_f32(-var_1.b))))), 44071u);
    global3 = Struct_1(~1i, arg_0, ~(1u << ((global1[_wgslsmith_index_u32(~var_1.c, 5u)] << (global2.c % 32u)) % 32u)));
    return Struct_1(2147483647i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global2.b)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1607f, -654f)))), arg_0)), _wgslsmith_clamp_u32(abs(var_1.c), select(~_wgslsmith_mod_u32(57463u, 12189u), _wgslsmith_mod_u32(global3.c | global3.c, ~u_input.a), any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)))), 4294967295u));
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_mod_i32(-32015i, -13036i);
    global4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(1634f * global2.b.x));
    let var_1 = arg_0;
    global2 = arg_0;
    var var_2 = 1u;
    return Struct_1(-2147483647i, _wgslsmith_f_op_vec2_f32(var_1.b * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(global3.b.x)), 307f))), global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(54282u, 5u)], 5u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 5>();
    global2 = func_5(func_1(_wgslsmith_f_op_vec2_f32(exp2(global2.b))), global2.b.x);
    global2 = func_5(Struct_1(u_input.c.x, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global3.b + global2.b), _wgslsmith_f_op_vec2_f32(select(global2.b, vec2<f32>(global3.b.x, -1151f), true)), vec2<bool>(false, true))), global3.b)), _wgslsmith_sub_u32(~(~global3.c), ~max(25087u, 4294967295u))), _wgslsmith_f_op_f32(-1397f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-541f + 678f))));
    var var_0 = select(!(!any(vec3<bool>(true, true, true))), select(true, ((u_input.c.x & global3.a) & global2.a) == _wgslsmith_dot_vec4_i32(-vec4<i32>(-37034i, global0.x, global2.a, 1i), -vec4<i32>(global2.a, 27949i, global2.a, global3.a)), false), all(!vec4<bool>(false, all(vec3<bool>(false, false, true)), any(vec4<bool>(false, false, true, true)), true)));
    global1 = array<u32, 5>();
    var var_1 = func_5(Struct_1(-2147483647i ^ func_5(func_5(Struct_1(1943i, vec2<f32>(global2.b.x, global2.b.x), global1[_wgslsmith_index_u32(global3.c, 5u)]), 212f), _wgslsmith_f_op_f32(-global2.b.x)).a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1835f, 328f) + vec2<f32>(global2.b.x, -505f)))), ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1094u, 25607u, u_input.b.x), vec4<u32>(u_input.a, global3.c, 73266u, global2.c)), vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global2.c, 5u)], global1[_wgslsmith_index_u32(0u, 5u)], global3.c))), _wgslsmith_f_op_f32(608f - _wgslsmith_div_f32(-605f, _wgslsmith_div_f32(global3.b.x, _wgslsmith_f_op_f32(-global2.b.x)))));
    let var_2 = func_5(Struct_1(-10680i >> ((~global2.c << (0u % 32u)) % 32u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global2.b), _wgslsmith_f_op_vec2_f32(-var_1.b))) * _wgslsmith_f_op_vec2_f32(-global3.b)), ~4294967295u), 420f);
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(0u, global2.c)), 5u)], u_input.c.x);
}

