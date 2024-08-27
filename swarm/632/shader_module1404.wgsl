struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: bool,
    d: vec2<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec3<f32>,
    d: u32,
    e: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: u32 = 4294967295u;

var<private> global2: array<i32, 3>;

var<private> global3: Struct_4 = Struct_4(Struct_2(false, Struct_1(vec2<bool>(true, false), false), vec2<bool>(true, false), Struct_1(vec2<bool>(false, false), true)), 82212u, vec3<f32>(1200f, 1342f, -1310f), 0u, Struct_1(vec2<bool>(true, false), false));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32) -> vec4<u32> {
    var var_0 = Struct_4(Struct_2(global3.e.b, global3.e, global3.e.a, global3.e), ~firstLeadingBit(1u), _wgslsmith_f_op_vec3_f32(ceil(global3.c)), ~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.d.x, abs(1u), _wgslsmith_clamp_u32(48595u, u_input.d.x, u_input.d.x))), Struct_1(!vec2<bool>(arg_0.x, all(vec3<bool>(true, false, false))), _wgslsmith_div_i32(i32(-1i) * -1347i, max(-2147483647i, u_input.b.x)) > global2[_wgslsmith_index_u32(global3.b >> (u_input.e.x % 32u), 3u)]));
    var var_1 = !global3.a.b.a;
    global1 = ~(~(~arg_1));
    var var_2 = !(!vec4<bool>(all(vec3<bool>(var_1.x, arg_0.x, arg_0.x)), true, all(!vec4<bool>(var_0.a.c.x, false, global3.a.c.x, var_0.e.b)), false));
    var_2 = select(vec4<bool>(false, all(!vec3<bool>(true, arg_0.x, var_1.x)), true, ~6648u < (u_input.d.x ^ ~18966u)), select(vec4<bool>(false && var_1.x, all(global3.a.b.a), true, true), !select(vec4<bool>(true, false, false, false), !vec4<bool>(false, global3.e.a.x, true, var_0.e.a.x), select(vec4<bool>(false, var_0.a.b.a.x, false, var_0.e.b), vec4<bool>(true, true, global3.a.c.x, true), arg_0.x)), select(vec4<bool>(all(vec4<bool>(true, var_1.x, true, true)), any(vec2<bool>(var_0.e.a.x, var_2.x)), all(vec3<bool>(true, var_2.x, true)), false), select(vec4<bool>(false, false, false, false), vec4<bool>(global3.e.a.x, var_2.x, var_2.x, global3.e.b), true), abs(arg_1) < _wgslsmith_dot_vec3_u32(vec3<u32>(17636u, 1u, u_input.e.x), vec3<u32>(4294967295u, arg_1, 0u)))), select(vec4<bool>(true, global3.e.a.x || !var_0.e.a.x, false, true), !select(vec4<bool>(var_2.x, false, true, arg_0.x), vec4<bool>(false, true, false, false), global3.a.c.x), !select(vec4<bool>(true, true, var_2.x, var_0.e.b), select(vec4<bool>(global3.a.d.a.x, global3.a.c.x, true, true), vec4<bool>(true, true, arg_0.x, var_0.a.c.x), vec4<bool>(true, var_2.x, false, false)), select(vec4<bool>(arg_0.x, true, var_1.x, var_0.e.a.x), vec4<bool>(true, global3.e.b, var_2.x, var_1.x), vec4<bool>(false, global3.a.b.a.x, arg_0.x, global3.a.a)))));
    return abs(u_input.e);
}

fn func_2() -> u32 {
    let var_0 = global3.e;
    global0 = global2[_wgslsmith_index_u32(reverseBits(33532u), 3u)];
    let var_1 = countOneBits(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(func_3(vec3<bool>(false, global3.e.a.x, var_0.b), ~global3.b), u_input.e), u_input.e));
    let var_2 = _wgslsmith_div_vec2_i32(countOneBits(abs(abs(u_input.b.yx))), -vec2<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 3u)], _wgslsmith_mult_i32(u_input.b.x, u_input.c) ^ (global2[_wgslsmith_index_u32(var_1.x, 3u)] << (var_1.x % 32u))));
    var var_3 = Struct_1(var_0.a, false);
    return _wgslsmith_div_u32(u_input.a.x, select(0u, _wgslsmith_mult_u32(firstLeadingBit(var_1.x), ~(~u_input.e.x)), u_input.b.x == (global2[_wgslsmith_index_u32(1u, 3u)] & min(-6082i, 0i))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: f32, arg_3: vec2<f32>) -> Struct_4 {
    global0 = u_input.b.x;
    var var_0 = any(select(!vec4<bool>(select(arg_1.a, true, false), true, all(global3.e.a), arg_1.c.x | true), select(!vec4<bool>(false, true, global3.a.c.x, arg_1.a), !select(vec4<bool>(true, false, global3.e.b, arg_1.d.b), vec4<bool>(arg_1.b.a.x, true, false, true), global3.e.b), !(!vec4<bool>(global3.a.d.a.x, global3.e.b, global3.a.c.x, arg_1.a))), true));
    var var_1 = u_input.c;
    let var_2 = vec4<bool>(true, !global3.e.a.x, !(true == !(!arg_1.d.b)), true);
    global0 = _wgslsmith_mult_i32(-_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(~global3.b << (arg_0.x % 32u), 3u)], u_input.c >> (_wgslsmith_sub_u32(arg_0.x, 0u) % 32u)), firstLeadingBit(reverseBits(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(global3.d, 3u)], 30930i))) | ~(-3550i));
    return Struct_4(arg_1, ~(global3.d & global3.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global3.c, global3.c) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.c)))), 4294967295u, Struct_1(!(!(!vec2<bool>(global3.e.b, false))), true));
}

fn func_5(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: i32) -> Struct_4 {
    global1 = reverseBits(9934u);
    var var_0 = func_4(_wgslsmith_add_vec4_u32(u_input.e ^ firstLeadingBit(_wgslsmith_div_vec4_u32(u_input.e, arg_1)), arg_1 ^ _wgslsmith_add_vec4_u32(~vec4<u32>(0u, 27740u, 58744u, arg_0.d), ~arg_1)), global3.a, 1316f, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_0.c.yz))));
    return Struct_4(func_4(arg_1, var_0.a, _wgslsmith_f_op_f32(sign(-508f)), arg_0.c.zz).a, u_input.e.x, vec3<f32>(global3.c.x, var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) * _wgslsmith_f_op_f32(ceil(arg_0.c.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.c.x, -331f))))), 32523u, Struct_1(select(!select(vec2<bool>(false, true), arg_0.e.a, var_0.a.b.a), vec2<bool>(-1000f >= global3.c.x, true), vec2<bool>(func_4(vec4<u32>(53314u, 145275u, u_input.d.x, 23062u), Struct_2(false, Struct_1(vec2<bool>(arg_0.a.c.x, arg_0.e.b), var_0.a.b.a.x), var_0.a.b.a, Struct_1(global3.a.b.a, true)), arg_0.c.x, vec2<f32>(arg_0.c.x, var_0.c.x)).e.a.x, any(vec3<bool>(true, global3.a.c.x, true)))), true));
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: vec2<bool>, arg_3: vec2<u32>) -> vec2<bool> {
    var var_0 = vec3<u32>(u_input.e.x, ~1u, _wgslsmith_div_u32(~71984u >> (~u_input.a.x % 32u), ~(~1u))) ^ u_input.e.xyz;
    global1 = countOneBits(var_0.x) & ~58761u;
    let var_1 = !(!(!(!vec3<bool>(false, arg_2.x, false))));
    var var_2 = func_5(func_4(~vec4<u32>(abs(1u), select(arg_0.x, var_0.x, var_1.x), func_2(), 4294967295u << (arg_3.x % 32u)), global3.a, global3.c.x, _wgslsmith_f_op_vec2_f32(global3.c.xx - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(global3.c.zz, global3.c.yx, true)))))), u_input.e, (u_input.c & global2[_wgslsmith_index_u32(arg_1, 3u)]) ^ global2[_wgslsmith_index_u32(u_input.a.x, 3u)]);
    global1 = min(func_5(Struct_4(var_2.a, _wgslsmith_dot_vec3_u32(u_input.d ^ vec3<u32>(var_2.b, arg_0.x, 0u), u_input.d), _wgslsmith_div_vec3_f32(vec3<f32>(141f, -356f, global3.c.x), vec3<f32>(-954f, -438f, 353f)), _wgslsmith_sub_u32(~70993u, func_4(vec4<u32>(arg_3.x, 1u, var_0.x, 1u), var_2.a, global3.c.x, vec2<f32>(-206f, -277f)).d), Struct_1(var_1.zy, any(vec4<bool>(var_2.e.b, var_2.a.b.b, arg_2.x, var_1.x)))), arg_0, global2[_wgslsmith_index_u32(countOneBits(max(arg_3.x, global3.b)), 3u)] ^ u_input.c).d, ~(_wgslsmith_mult_u32(min(32047u, global3.b), 0u) >> (~1u % 32u)));
    return var_2.a.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_4(Struct_2(true, Struct_1(select(vec2<bool>(false, true), func_1(u_input.e, u_input.d.x, vec2<bool>(true, false), u_input.a.xz), !global3.e.b), true), !(!(!vec2<bool>(global3.a.a, global3.a.c.x))), func_5(Struct_4(func_5(Struct_4(Struct_2(false, global3.e, global3.a.d.a, Struct_1(vec2<bool>(false, global3.e.a.x), true)), global3.b, vec3<f32>(global3.c.x, -795f, global3.c.x), u_input.d.x, global3.e), vec4<u32>(1u, u_input.e.x, 39466u, 30234u), u_input.c).a, 5943u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.c.x, 335f, global3.c.x)), 4979u & u_input.d.x, Struct_1(global3.a.d.a, global3.a.d.a.x)), ~u_input.e, min(u_input.c, abs(15784i))).a.d), (_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d.x, u_input.d.x), max(vec2<u32>(1u, global3.b), vec2<u32>(u_input.e.x, 35763u))) & u_input.a.x) | u_input.d.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global3.c * vec3<f32>(global3.c.x, 1762f, 401f)), global3.c) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global3.c.x, 304f, 1000f), global3.c)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(747f, global3.c.x, -240f))))), 57443u, func_5(func_4(~abs(vec4<u32>(u_input.a.x, u_input.e.x, 44760u, 1u)), global3.a, _wgslsmith_f_op_f32(trunc(global3.c.x)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(global3.c.zx - global3.c.xx), _wgslsmith_f_op_vec2_f32(global3.c.yz + vec2<f32>(-542f, -371f))))), u_input.e >> (max(u_input.e, _wgslsmith_mult_vec4_u32(vec4<u32>(global3.b, global3.d, 4294967295u, 4294967295u), vec4<u32>(global3.d, 28049u, u_input.a.x, u_input.a.x))) % vec4<u32>(32u)), 2147483647i).e);
    var var_0 = global3.a.b;
    global0 = select(41281i, global2[_wgslsmith_index_u32(0u, 3u)], true);
    var var_1 = vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(0u, 3u)], global2[_wgslsmith_index_u32(78127u, 3u)]), 2147483647i, _wgslsmith_mod_i32(u_input.c, u_input.c), u_input.c));
    var var_2 = global3.c.x;
    var var_3 = func_5(Struct_4(Struct_2(true, Struct_1(vec2<bool>(true, true), false), !(!vec2<bool>(true, global3.a.d.b)), func_4(max(u_input.e, u_input.e), Struct_2(var_0.b, Struct_1(vec2<bool>(var_0.a.x, var_0.a.x), global3.e.a.x), global3.a.c, global3.a.d), _wgslsmith_f_op_f32(-global3.c.x), _wgslsmith_f_op_vec2_f32(-global3.c.xy)).a.d), global3.d, global3.c, u_input.d.x, Struct_1(var_0.a, global3.e.a.x)), vec4<u32>(36984u, u_input.e.x, (global3.b << (_wgslsmith_div_u32(4294967295u, global3.b) % 32u)) >> (1u % 32u), 58682u), abs(0i));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.e.zw);
}

