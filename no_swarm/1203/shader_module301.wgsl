struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<u32, 31>;

var<private> global2: array<bool, 32> = array<bool, 32>(false, true, false, false, false, true, true, false, true, false, false, false, true, false, true, false, false, true, true, false, true, false, true, false, false, true, true, true, false, true, false, true);

var<private> global3: array<Struct_1, 23>;

var<private> global4: array<vec3<bool>, 21> = array<vec3<bool>, 21>(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> i32 {
    let var_0 = vec4<u32>(u_input.c, global1[_wgslsmith_index_u32(~1u, 31u)], ~global1[_wgslsmith_index_u32(4294967295u, 31u)], ~u_input.c);
    var var_1 = global4[_wgslsmith_index_u32(23943u, 21u)];
    let var_2 = vec3<i32>(1i, u_input.b, 52341i);
    var var_3 = firstLeadingBit(-_wgslsmith_dot_vec3_i32(-vec3<i32>(28895i, -104888i, global0.b.b), max(vec3<i32>(-28866i, -2147483647i, 1i) << (var_0.zyy % vec3<u32>(32u)), -vec3<i32>(global0.b.b, 1i, -15591i))));
    var var_4 = u_input.c;
    return _wgslsmith_clamp_i32(-1i, 70278i, reverseBits(var_2.x >> (abs(~0u) % 32u)));
}

fn func_3() -> i32 {
    var var_0 = !select(!(!vec2<bool>(global0.a, true)), vec2<bool>(true, true), true);
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(floor(353f)), 832f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-408f, global0.b.c.c.x), global0.b.c.c.x)))));
    let var_2 = Struct_3(false, global0.b, global0.b, 1i);
    var var_3 = var_2.a;
    var var_4 = Struct_3(true, global0.c, Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(global0.c.c.b), var_2.c.c.b, u_input.c), vec3<u32>(max(90729u, var_2.c.c.b), ~0u, max(u_input.d.x, u_input.c))), 23u)], ~global0.c.b | firstLeadingBit(~2147483647i), Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(823f, global0.c.c.a.x, var_1.x, var_1.x), _wgslsmith_f_op_vec4_f32(sign(var_2.c.a.a)))), _wgslsmith_clamp_u32(~u_input.d.x, ~51892u, ~global1[_wgslsmith_index_u32(0u, 31u)]), vec2<f32>(_wgslsmith_f_op_f32(ceil(var_1.x)), 1f))), _wgslsmith_div_i32(global0.d ^ _wgslsmith_div_i32(-u_input.a, max(0i, 5958i)), u_input.a));
    return max(~u_input.a | _wgslsmith_mult_i32(var_2.c.b, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.c.b, var_4.c.b, u_input.a, var_4.b.b), ~vec4<i32>(1i, 2147483647i, 70247i, var_4.c.b))), 2147483647i);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: u32, arg_3: f32) -> vec4<bool> {
    global3 = array<Struct_1, 23>();
    let var_0 = ~1u;
    var var_1 = Struct_4(countOneBits(1u >> (var_0 % 32u)));
    let var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.c.a.a.x), _wgslsmith_f_op_f32(round(992f)))), arg_3, max(-2147483647i, 49861i) == _wgslsmith_clamp_i32(0i, global0.b.b, -32324i))), arg_1.c.c.x), -1181f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3))), _wgslsmith_f_op_f32(-arg_1.c.c.x)), -146f);
    global3 = array<Struct_1, 23>();
    return select(!vec4<bool>(true, all(vec4<bool>(false, false, global2[_wgslsmith_index_u32(39585u, 32u)], global2[_wgslsmith_index_u32(u_input.c, 32u)])), all(select(vec2<bool>(global0.a, false), vec2<bool>(global0.a, true), global0.a)), global0.a & false), select(!select(!vec4<bool>(global2[_wgslsmith_index_u32(var_1.a, 32u)], global0.a, true, false), vec4<bool>(global0.a, global2[_wgslsmith_index_u32(4064u, 32u)], global0.a, true), all(vec3<bool>(true, false, global0.a))), !vec4<bool>(true, any(vec4<bool>(global2[_wgslsmith_index_u32(36511u, 32u)], global0.a, true, global0.a)), any(vec4<bool>(false, true, global0.a, true)), true), !(374f <= _wgslsmith_f_op_f32(-global0.c.a.c.x))), !(!select(vec4<bool>(global0.a, global2[_wgslsmith_index_u32(var_0, 32u)], global2[_wgslsmith_index_u32(55511u, 32u)], false), vec4<bool>(false, false, global0.a, global0.a), select(vec4<bool>(global0.a, false, global0.a, global2[_wgslsmith_index_u32(0u, 32u)]), vec4<bool>(true, false, global0.a, global0.a), global2[_wgslsmith_index_u32(u_input.c, 32u)]))));
}

fn func_5(arg_0: Struct_4, arg_1: vec4<bool>) -> vec3<bool> {
    global0 = Struct_3(true, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.c.c.c.x, -734f, -642f, -1516f), global0.b.c.a)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.b.c.a.x, -449f, -154f, global0.c.a.c.x)))), u_input.c, global0.b.a.a.yx), global0.c.b, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 31u)] << (min(global0.b.c.b, global0.c.a.b) % 32u), 23u)]), global0.b, abs(func_1()) ^ max(_wgslsmith_add_i32(-2147483647i, 66165i), global0.b.b));
    var var_0 = -vec2<i32>(u_input.b, abs(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.d, -24993i, 18779i, u_input.a), vec4<i32>(global0.c.b, -1i, global0.b.b, -11823i)), reverseBits(vec4<i32>(u_input.a, 1i, global0.b.b, -1i)))));
    var_0 = vec2<i32>(firstTrailingBit(func_1()), u_input.b);
    let var_1 = ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d.x, 0u, arg_0.a), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.d.x), vec3<u32>(4294967295u, arg_0.a, 19304u)))) | vec3<u32>(reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.d.x, 40005u, 3880u), vec4<u32>(23429u, 30949u, 94929u, 1u))), arg_0.a, _wgslsmith_mult_u32(0u, max(_wgslsmith_clamp_u32(global0.c.a.b, 4294967295u, u_input.d.x), reverseBits(arg_0.a))));
    global4 = array<vec3<bool>, 21>();
    return !vec3<bool>(select(!(global0.c.a.a.x == global0.b.a.c.x), true, true), true, 155f == _wgslsmith_f_op_f32(-global0.c.a.c.x));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<i32>) -> Struct_2 {
    global4 = array<vec3<bool>, 21>();
    var var_0 = vec4<u32>(max(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(u_input.d.x & global1[_wgslsmith_index_u32(4853u, 31u)], 31u)], ~34418u) | u_input.d.x, ~(~u_input.d.x)), _wgslsmith_add_u32(63411u, _wgslsmith_add_u32(~global1[_wgslsmith_index_u32(4294967295u >> (global1[_wgslsmith_index_u32(68380u, 31u)] % 32u), 31u)], firstLeadingBit(~45821u))), 100826u, _wgslsmith_dot_vec2_u32(~(~(u_input.d & vec2<u32>(u_input.d.x, u_input.d.x))), vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 1u, global1[_wgslsmith_index_u32(u_input.d.x, 31u)]) >> (firstLeadingBit(u_input.d.x) % 32u), _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.c, u_input.c), ~global1[_wgslsmith_index_u32(global0.c.a.b, 31u)]))));
    global2 = array<bool, 32>();
    let var_1 = func_5(Struct_4(_wgslsmith_div_u32(var_0.x, 52957u)), func_4(vec4<i32>(select(1i, 11248i, global0.b.a.b >= 74050u), _wgslsmith_div_i32(u_input.b, -global0.c.b), func_3(), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-89223i, -57421i, 0i, -2147483647i), vec4<i32>(-37518i, u_input.b, -2147483647i, 2147483647i))), global0.c, 14150u, 1000f));
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 899f) + global0.b.a.a.xx))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_f_op_f32(select(-317f, arg_0.x, false))))))));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(global0.c.c.a - _wgslsmith_f_op_vec4_f32(global0.b.a.a + global0.b.c.a)), ~global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~u_input.c, 31u)], 31u)], global0.c.c.c), ~arg_1.x, global0.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(min(-_wgslsmith_mod_i32(u_input.a, func_1()), u_input.b));
    let var_1 = Struct_3(any(!(!select(vec3<bool>(false, true, false), vec3<bool>(global2[_wgslsmith_index_u32(10946u, 32u)], true, false), true))), func_2(global0.c.c.a.wz, vec3<i32>(0i, u_input.a, u_input.b)), global0.b, _wgslsmith_mult_i32(0i, u_input.a));
    var var_2 = Struct_4(_wgslsmith_add_u32(max(4294967295u, ~(~global1[_wgslsmith_index_u32(u_input.c, 31u)])), global1[_wgslsmith_index_u32(1u, 31u)]));
    let var_3 = select(!vec3<bool>(var_1.a, true != all(vec2<bool>(false, global2[_wgslsmith_index_u32(var_1.b.a.b, 32u)])), !var_1.a), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(~global0.c.c.b, global1[_wgslsmith_index_u32(~global0.b.a.b, 31u)] | 0u), 21u)], true || (-428f == _wgslsmith_div_f32(2634f, var_1.c.c.c.x)));
    var var_4 = abs(_wgslsmith_add_u32(2732u, ~2813u));
    global2 = array<bool, 32>();
    let var_5 = max(u_input.b, ~(var_1.d | func_1())) ^ abs(-1i);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(u_input.a | var_1.b.b, reverseBits(var_1.c.b), 9414i) << (select(~vec3<u32>(global0.c.a.b, global0.b.a.b, 1u) ^ min(vec3<u32>(u_input.d.x, 1260u, global0.b.a.b), vec3<u32>(var_1.b.c.b, 4294967295u, var_1.b.c.b)), vec3<u32>(~19501u, firstLeadingBit(12817u), 15977u), select(var_1.a, !var_1.a, false)) % vec3<u32>(32u)), global0.c.c.a.xxy, select(u_input.d, _wgslsmith_div_vec2_u32(~_wgslsmith_add_vec2_u32(u_input.d, u_input.d), ~(~vec2<u32>(var_2.a, var_2.a))), !vec2<bool>(u_input.a > var_1.c.b, func_5(Struct_4(4294967295u), vec4<bool>(false, global2[_wgslsmith_index_u32(31052u, 32u)], global0.a, false)).x)), ~(~(~_wgslsmith_div_vec4_u32(vec4<u32>(var_1.c.c.b, u_input.d.x, 34192u, u_input.c), vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(global0.c.c.b, 31u)], var_1.b.a.b, global0.c.a.b)))));
}

