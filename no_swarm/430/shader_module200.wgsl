struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: f32,
    d: bool,
    e: vec4<u32>,
}

struct Struct_4 {
    a: bool,
    b: bool,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: f32;

var<private> global2: array<f32, 1> = array<f32, 1>(-587f);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> u32 {
    let var_0 = select(vec3<bool>(!(!all(vec3<bool>(arg_1.b.b.c, arg_1.d, arg_0.b))), arg_1.b.a.x != _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(76567u, 1u)]), true), vec3<bool>(true, false, arg_1.d), vec3<bool>(!arg_1.b.b.a, all(select(!vec4<bool>(false, arg_1.d, true, arg_1.b.b.a), vec4<bool>(false, arg_0.a, true, arg_1.b.b.a), all(vec4<bool>(arg_1.b.b.b, arg_1.b.b.b, arg_0.a, arg_0.b)))), true));
    var var_1 = Struct_5(arg_0.d.zz);
    let var_2 = false;
    var var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(select(_wgslsmith_mod_u32(var_1.a.x, 4294967295u), 52627u, false), 0u, select(arg_0.d.x, arg_1.b.e, var_2), _wgslsmith_dot_vec4_u32(select(arg_1.b.b.d, vec4<u32>(4294967295u, arg_1.b.b.d.x, arg_0.d.x, 1u), vec4<bool>(false, arg_1.b.b.b, var_0.x, var_0.x)), vec4<u32>(var_1.a.x, 0u, var_1.a.x, 4294967295u))), arg_0.d) & arg_1.e.x;
    global2 = array<f32, 1>();
    return _wgslsmith_mult_u32(~var_1.a.x, 1u & _wgslsmith_mod_u32(arg_1.b.e | arg_0.d.x, _wgslsmith_mult_u32(7563u, arg_1.b.e))) | _wgslsmith_dot_vec3_u32(countOneBits(select(arg_0.d.yzw, vec3<u32>(var_1.a.x, arg_0.d.x, arg_0.d.x), true)) << (select(vec3<u32>(4294967295u, 1u, arg_1.b.e), vec3<u32>(14374u, 0u, 1u), var_0) % vec3<u32>(32u)), abs(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(5895u, 54380u, 37556u), vec3<u32>(arg_0.d.x, 0u, var_1.a.x), vec3<u32>(arg_0.d.x, 1u, 4294967295u)), firstLeadingBit(vec3<u32>(11488u, var_1.a.x, 27192u)), arg_1.b.b.d.yxz)));
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    var var_0 = u_input.a;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(max(global0.x, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~53633u, func_3(arg_0.b, Struct_3(57576i, Struct_2(arg_0.a, Struct_1(arg_0.b.c, arg_0.b.c, true, vec4<u32>(1u, 0u, arg_1, arg_1)), arg_1, vec2<u32>(arg_1, arg_1), arg_1), 258f, arg_0.b.c, vec4<u32>(1u, arg_0.d.x, arg_0.d.x, arg_0.b.d.x)))), 1u)]))));
    let var_1 = !(!vec4<bool>(all(vec3<bool>(true, true, true)), !arg_0.b.c, arg_0.b.c, all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, arg_0.b.a), true))));
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-989f, _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-308f - _wgslsmith_f_op_f32(min(global0.x, global0.x))), -2157f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1078f, 1400f, arg_0.a.x, 398f)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, global2[_wgslsmith_index_u32(0u, 1u)], 1000f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, global2[_wgslsmith_index_u32(109485u, 1u)], arg_0.a.x, global2[_wgslsmith_index_u32(arg_0.e, 1u)])))))));
    let var_3 = 16151u;
    return Struct_1(!(abs(~arg_0.b.d.x) < abs(_wgslsmith_add_u32(var_3, arg_1))), !all(vec4<bool>(var_1.x, arg_0.b.b, all(vec3<bool>(var_1.x, var_1.x, false)), !arg_0.b.c)), true & (_wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(18928u, 1u)], -494f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1124f) + global0.x)), vec4<u32>(1u & ~_wgslsmith_dot_vec4_u32(arg_0.b.d, vec4<u32>(41487u, 4294967295u, arg_1, arg_0.e)), _wgslsmith_add_u32(~arg_1, 46851u), var_3, 88067u));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_4) -> Struct_2 {
    let var_0 = vec4<bool>(arg_2.a, arg_0.b.c, !any(!select(vec2<bool>(arg_0.b.c, false), vec2<bool>(arg_0.b.b, false), true)), true);
    global2 = array<f32, 1>();
    let var_1 = 0i;
    var var_2 = arg_0.b;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(676f, 584f)), -290f, arg_1.x, arg_1.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(536f)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_2.d.x, 1u)]), false)), arg_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.a.x * global2[_wgslsmith_index_u32(1u, 1u)]))))));
    return Struct_2(_wgslsmith_f_op_vec2_f32(arg_1 - vec2<f32>(global0.x, -1452f)), func_2(arg_0, ~var_2.d.x), 24896u, ~select(_wgslsmith_mult_vec2_u32(var_2.d.zw, var_2.d.wy) >> (min(vec2<u32>(5799u, 0u), vec2<u32>(17604u, 29284u)) % vec2<u32>(32u)), var_2.d.yw, vec2<bool>(false, var_1 >= 49886i)), ~((1u << (var_2.d.x % 32u)) & ~var_2.d.x));
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> vec2<f32> {
    var var_0 = ~(~_wgslsmith_mult_i32(~(-25353i >> (arg_0.c % 32u)), _wgslsmith_add_i32(0i, ~u_input.a)));
    let var_1 = Struct_3(u_input.a, Struct_2(_wgslsmith_f_op_vec2_f32(round(global0.zy)), func_1(arg_0, _wgslsmith_div_vec2_f32(arg_0.a, _wgslsmith_div_vec2_f32(global0.xw, global0.wz)), Struct_4(arg_0.b.c, all(vec2<bool>(arg_0.b.a, arg_0.b.b)))).b, ~arg_0.b.d.x, _wgslsmith_clamp_vec2_u32(arg_0.b.d.ww, arg_0.d, arg_0.b.d.xw), _wgslsmith_add_u32(_wgslsmith_mod_u32(func_2(arg_0, arg_0.c).d.x, arg_0.c), ~func_3(Struct_1(arg_0.b.a, arg_0.b.c, true, arg_0.b.d), Struct_3(-2147483647i, Struct_2(global0.zx, arg_0.b, arg_0.b.d.x, vec2<u32>(arg_0.e, 4758u), arg_0.d.x), global0.x, true, vec4<u32>(58285u, arg_0.d.x, 0u, arg_0.b.d.x))))), -345f, !(arg_0.b.b && true), vec4<u32>(45923u, 4294967295u, ~reverseBits(45574u << (arg_0.d.x % 32u)), 0u & _wgslsmith_div_u32(_wgslsmith_div_u32(arg_0.c, arg_0.c), 32692u)));
    let var_2 = arg_0.b;
    global1 = var_1.b.a.x;
    var_0 = _wgslsmith_clamp_i32(-1i, -min(_wgslsmith_add_i32(-19622i, -1i), -1i), 1i) >> (4294967295u % 32u);
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), -438f)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4239u, 1u)] - _wgslsmith_f_op_f32(max(-163f, 2541f))), arg_0.b.a)) + _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(func_2(arg_0, var_1.e.x).d.x, 1u)], _wgslsmith_div_f32(269f, 1166f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-arg_1))) * arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global2[_wgslsmith_index_u32(1u, 1u)];
    global2 = array<f32, 1>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(func_1(Struct_2(vec2<f32>(global0.x, global0.x), Struct_1(false, false, true, vec4<u32>(0u, 4294967295u, 0u, 48628u)), 0u, vec2<u32>(40193u, 1u), 4294967295u), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-707f, -956f), vec2<f32>(-395f, global2[_wgslsmith_index_u32(86672u, 1u)]))), Struct_4(false, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(19979u, 1u)] * global2[_wgslsmith_index_u32(0u, 1u)]))))), Struct_1(false, !(!func_2(Struct_2(vec2<f32>(global2[_wgslsmith_index_u32(1u, 1u)], 858f), Struct_1(true, false, true, vec4<u32>(4294967295u, 0u, 2921u, 4294967295u)), 0u, vec2<u32>(4294967295u, 4294967295u), 0u), 34028u).b), func_2(Struct_2(vec2<f32>(1073f, global0.x), Struct_1(false, false, true, vec4<u32>(1u, 1u, 0u, 0u)), _wgslsmith_mod_u32(0u, 32179u), ~vec2<u32>(28763u, 0u), firstTrailingBit(1491u)), select(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 90538u, 69737u), vec3<u32>(0u, 1u, 1u)), any(vec3<bool>(false, false, false)))).c, ~_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, 3400u, 19675u), vec4<u32>(19114u, 1u, 32131u, 21901u)), vec4<u32>(4294967295u, 0u, 56592u, 48143u))), abs(firstLeadingBit(~3676u)), vec2<u32>(1u ^ select(~4294967295u, ~42563u, select(true, false, true)), ~firstTrailingBit(_wgslsmith_add_u32(0u, 1u))), firstLeadingBit(4294967295u));
    var var_1 = Struct_5(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.b.d.x, 4294967295u), ~var_0.b.d.zz, _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.e, 1u), var_0.b.d.zw))) ^ var_0.b.d.yz);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-(~firstTrailingBit(vec4<i32>(u_input.a, u_input.a, -1i, 5192i)))), -1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0.c, 1u)] * var_0.a.x)), func_1(Struct_2(global0.yw, var_0.b, var_1.a.x, var_0.d, var_0.e), _wgslsmith_f_op_vec2_f32(func_4(Struct_2(var_0.a, Struct_1(false, false, true, var_0.b.d), 0u, vec2<u32>(4294967295u, var_0.b.d.x), var_0.e), -1732f)), Struct_4(false, false)).a.x)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-853f, 726f, var_0.b.a))))))), global2[_wgslsmith_index_u32(~(var_1.a.x | abs(~var_0.b.d.x)), 1u)]);
}

