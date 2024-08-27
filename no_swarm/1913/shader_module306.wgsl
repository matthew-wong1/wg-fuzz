struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(1u, vec4<u32>(4294967295u, 91688u, 21920u, 47034u), -7064i, vec2<i32>(-28578i, 0i)), Struct_1(72446u, vec4<u32>(2077u, 4110u, 0u, 11054u), 0i, vec2<i32>(0i, i32(-2147483648))), Struct_1(0u, vec4<u32>(4294967295u, 0u, 1u, 0u), -1i, vec2<i32>(2147483647i, -38909i)), Struct_1(9068u, vec4<u32>(87734u, 1u, 60224u, 4294967295u), -1i, vec2<i32>(1i, 44906i)));

var<private> global1: vec2<u32> = vec2<u32>(0u, 15121u);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>) -> vec4<u32> {
    global0 = array<Struct_1, 4>();
    var var_0 = ~(reverseBits(firstTrailingBit(29954i)) >> (((_wgslsmith_div_u32(85322u, global1.x) >> (31071u % 32u)) ^ 33264u) % 32u));
    var var_1 = 25644i;
    global0 = array<Struct_1, 4>();
    var_0 = 16373i;
    return select(arg_1.b, _wgslsmith_div_vec4_u32(vec4<u32>(0u, _wgslsmith_sub_u32(~global1.x, _wgslsmith_mult_u32(arg_1.b.x, arg_1.a)), 4294967295u, ~(~38813u)), ~(~arg_1.b & select(arg_1.b, arg_1.b, true))), true);
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> i32 {
    let var_0 = Struct_1(_wgslsmith_sub_u32(global1.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(global1.x, 8900u, 1u, arg_0.a), arg_0.b) | _wgslsmith_mult_u32(~global1.x, 11069u)), vec4<u32>(~(~(global1.x << (global1.x % 32u))), ~(_wgslsmith_sub_u32(46888u, arg_0.a) >> (global1.x % 32u)), global1.x, ~0u), _wgslsmith_sub_i32(arg_0.c, ~62506i), ~u_input.a.zy);
    global0 = array<Struct_1, 4>();
    var var_1 = Struct_1(global1.x, _wgslsmith_add_vec4_u32(var_0.b, _wgslsmith_sub_vec4_u32(func_3(142f, Struct_1(arg_0.b.x, vec4<u32>(0u, 4294967295u, global1.x, arg_0.b.x), -1i, var_0.d), u_input.a) | select(var_0.b, arg_0.b, false), _wgslsmith_div_vec4_u32(max(var_0.b, vec4<u32>(var_0.b.x, global1.x, var_0.a, var_0.b.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 17468u, arg_0.b.x, global1.x), var_0.b)))), -(~(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a) >> (var_0.a % 32u))), u_input.a.zz);
    let var_2 = arg_0.c;
    var var_3 = global0[_wgslsmith_index_u32(~global1.x, 4u)];
    return i32(-1i) * -2147483647i;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = !(!vec2<bool>(select(true, true, true), all(vec3<bool>(true, true, true))));
    var var_1 = Struct_1(1u << (_wgslsmith_sub_u32(~4294967295u, _wgslsmith_dot_vec4_u32(arg_3.b, vec4<u32>(4294967295u, 38747u, arg_2.a, 74010u))) % 32u), vec4<u32>(58546u, ~_wgslsmith_mod_u32(0u, ~global1.x), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.a, 91394u) << (vec2<u32>(arg_2.a, 4294967295u) % vec2<u32>(32u)), vec2<u32>(~4294967295u, func_3(-456f, Struct_1(0u, vec4<u32>(11181u, arg_3.b.x, 4294967295u, 1u), arg_2.c, vec2<i32>(901i, arg_2.d.x)), u_input.a).x)), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(1u, 122951u), reverseBits(arg_3.b.x), ~global1.x, 5335u), arg_2.b)), 15798i, -(vec2<i32>(-1i) * -vec2<i32>(arg_3.c, arg_2.c)));
    let var_2 = arg_2.c;
    global0 = array<Struct_1, 4>();
    var var_3 = Struct_1(4294967295u, _wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(~arg_3.b, abs(vec4<u32>(4294967295u, 408u, 70167u, 1u))), vec4<u32>(11269u, _wgslsmith_div_u32(var_1.b.x, var_1.b.x), 1u, arg_3.a) << (vec4<u32>(4294967295u, countOneBits(0u), ~16578u, var_1.a) % vec4<u32>(32u))), -30495i, vec2<i32>(_wgslsmith_mod_i32(arg_3.d.x, abs(~u_input.b)), -1i));
    return ~(~(~_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, 20573i, var_3.d.x, 18179i)), u_input.a)));
}

fn func_1() -> f32 {
    var var_0 = min(_wgslsmith_add_vec4_i32(func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-151f)))), u_input.b, Struct_1(0u, vec4<u32>(40128u, global1.x, 4294967295u, global1.x) | vec4<u32>(global1.x, global1.x, global1.x, 4294967295u), func_2(Struct_1(global1.x, vec4<u32>(global1.x, 111379u, global1.x, global1.x), u_input.b, u_input.a.wy), u_input.b), u_input.a.wx), Struct_1(global1.x, vec4<u32>(global1.x, 4294967295u, global1.x, 1u), 1i >> (global1.x % 32u), u_input.a.zy)), vec4<i32>(u_input.b << (global1.x % 32u), _wgslsmith_mod_i32(u_input.a.x, -45784i), func_2(global0[_wgslsmith_index_u32(1u, 4u)], -730i), abs(u_input.b)) << (select(vec4<u32>(global1.x, 0u, 18070u, 71598u), _wgslsmith_clamp_vec4_u32(vec4<u32>(69114u, 8529u, global1.x, global1.x), vec4<u32>(global1.x, global1.x, 1u, global1.x), vec4<u32>(0u, 48295u, 33608u, 1u)), vec4<bool>(true, true, true, true)) % vec4<u32>(32u))), -(u_input.a ^ (vec4<i32>(u_input.b, 0i, u_input.a.x, -1i) | vec4<i32>(u_input.a.x, 1i, -2147483647i, u_input.b))));
    global0 = array<Struct_1, 4>();
    var_0 = u_input.a;
    global1 = _wgslsmith_sub_vec2_u32(vec2<u32>(abs(global1.x), select(0u, select(global1.x, global1.x, true), true) & ~(~global1.x)), min(_wgslsmith_sub_vec2_u32(~max(vec2<u32>(20932u, 51380u), vec2<u32>(global1.x, global1.x)), min(vec2<u32>(1u, global1.x), vec2<u32>(0u, global1.x))), countOneBits(reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(27792u, 82638u))))));
    global0 = array<Struct_1, 4>();
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-386f, -262f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1108f, -1024f)) - _wgslsmith_f_op_f32(750f + -624f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1318f, -831f) + _wgslsmith_f_op_f32(trunc(-762f)))) - _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

fn func_5(arg_0: vec3<bool>, arg_1: f32, arg_2: vec3<bool>) -> Struct_1 {
    global0 = array<Struct_1, 4>();
    let var_0 = vec4<bool>(!all(select(!vec4<bool>(arg_2.x, arg_2.x, arg_0.x, arg_2.x), !vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x), global1.x != 4294967295u)), true, arg_0.x, arg_0.x & arg_2.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-173f + arg_1)))))));
    global1 = vec2<u32>(global1.x, 75675u | firstTrailingBit(37936u));
    var var_2 = var_0;
    return global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~countOneBits(_wgslsmith_div_u32(~4294967295u, 1u)), ~firstTrailingBit(select(global1.x, 1u, all(vec3<bool>(false, true, false))))), 4u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    var var_0 = ~((u_input.a & abs(u_input.a >> (vec4<u32>(1u, global1.x, global1.x, global1.x) % vec4<u32>(32u)))) | u_input.a);
    let var_1 = func_5(vec3<bool>(true, true, select(all(vec4<bool>(true, false, false, true)), true, all(vec2<bool>(true, true)) == true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1()))))))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), vec3<bool>(false, true, true), true), vec3<bool>(u_input.a.x == -1i, any(vec4<bool>(true, false, true, true)), true)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1022f, -1489f, -1802f) + vec3<f32>(175f, -1066f, -1273f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-2591f, -1393f, 741f), vec3<f32>(773f, 1006f, 413f))))), vec3<f32>(1f, -1000f, _wgslsmith_f_op_f32(floor(-1056f)))))), firstTrailingBit(_wgslsmith_mult_i32(-func_2(var_1, 0i), var_0.x)), vec3<i32>(var_0.x, var_0.x, ~(-55937i)));
}

