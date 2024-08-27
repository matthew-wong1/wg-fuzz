struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: bool,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: bool = false;

var<private> global2: Struct_2;

var<private> global3: array<Struct_3, 22>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global2.d.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.a.x))));
    var var_1 = _wgslsmith_f_op_f32(abs(-1823f));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global0.c)) * vec2<f32>(-168f, global2.d.a.x)) * _wgslsmith_f_op_vec2_f32(sign(global0.c))) * _wgslsmith_div_vec2_f32(global2.d.a, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.c.x, global0.b))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.d.a.x + 657f) - _wgslsmith_f_op_f32(-global0.c.x)), global2.d.a.x)));
    return global0.b;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<u32>, arg_3: vec4<bool>) -> f32 {
    var var_0 = global2.d;
    global0 = Struct_3(1i, global2.d.a.x, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1231f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x + global2.d.a.x) - 1219f)), _wgslsmith_f_op_vec2_f32(global0.c + var_0.a))), true, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, arg_2.x, global0.e.x, ~u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, arg_0.b.x, arg_1.x, global2.c), vec4<u32>(arg_0.b.x, u_input.a, arg_0.b.x, 1u)) >> (_wgslsmith_mod_vec4_u32(global0.e, global0.e) % vec4<u32>(32u)), (arg_2 | arg_2) ^ _wgslsmith_add_vec4_u32(arg_2, global0.e)));
    var_0 = Struct_1(vec2<f32>(596f, var_0.a.x), max(countOneBits(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 39185u), arg_1.xx), _wgslsmith_dot_vec4_u32(global0.e, arg_2), abs(0u))), global0.e.zyy | vec3<u32>(92094u, abs(29475u), _wgslsmith_sub_u32(arg_2.x, 4294967295u))));
    let var_1 = all(!(!select(arg_3, select(vec4<bool>(global0.d, global0.d, true, arg_3.x), vec4<bool>(arg_3.x, true, true, arg_3.x), true), vec4<bool>(arg_3.x, false, global0.d, arg_3.x))));
    var var_2 = false;
    return _wgslsmith_f_op_f32(-var_0.a.x);
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec2<f32>) -> f32 {
    global3 = array<Struct_3, 22>();
    var var_0 = _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(firstTrailingBit(0u), abs(u_input.b), global2.c, global0.e.x | ~4294967295u)), global0.e);
    var var_1 = max(vec2<u32>(var_0.x, 18093u), u_input.d);
    global0 = global3[_wgslsmith_index_u32(~var_0.x, 22u)];
    global2 = Struct_2(~vec2<i32>(u_input.e, ~u_input.e) | vec2<i32>(select(arg_0, -global2.b, select(true, global0.d, global0.d)), -1i), global0.a, _wgslsmith_dot_vec3_u32(vec3<u32>(26737u, 36900u, 40174u), vec3<u32>(firstTrailingBit(35676u), countOneBits(global2.d.b.x), global2.d.b.x)) ^ var_0.x, Struct_1(vec2<f32>(global0.c.x, _wgslsmith_f_op_f32(-arg_1)), select(~vec3<u32>(45451u, global2.d.b.x, global0.e.x), ~vec3<u32>(4294967295u, 1090u, 51449u), vec3<bool>(global0.d, true, global0.d)) & var_0.yzx));
    return -1000f;
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(func_2());
    global0 = Struct_3(-37258i, var_0, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(-global2.b, _wgslsmith_f_op_f32(func_3(global2.d, global0.e.zyw, vec4<u32>(1u, global0.e.x, u_input.c, 4294967295u), vec4<bool>(global0.d, true, global0.d, false))), global2.d.a))), _wgslsmith_f_op_f32(-global0.b)), any(vec3<bool>(global0.d, !all(vec4<bool>(global0.d, false, false, global0.d)), false)), global0.e);
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-1792f - _wgslsmith_f_op_f32(select(441f, -239f, global0.d))))), vec3<u32>(u_input.b | global2.c, ~(~(~12983u)), 9437u));
    var var_2 = global0.d;
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, global0.e.x), 22u)];
    return Struct_2(vec2<i32>(var_3.a, 2147483647i), global0.a, _wgslsmith_mod_u32(firstTrailingBit(arg_1.x), global0.e.x), global2.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_mod_u32(~global0.e.x, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(32265u, 0u, 37704u, global0.e.x)) & vec4<u32>(0u, 3275u, 0u, global2.d.b.x), vec4<u32>(1139u, 6122u, global0.e.x, 79037u | global0.e.x))), select(~(~global0.e), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 126152u, global2.d.b.x, global2.c), global0.e), select(false, any(vec4<bool>(global0.d, global0.d, false, true)), true)) ^ ~vec4<u32>(5334u, u_input.b, 4294967295u, global2.c));
    global2 = var_0;
    let var_1 = ~func_1(30787u, firstLeadingBit(vec4<u32>(_wgslsmith_clamp_u32(6327u, var_0.c, global2.c), ~var_0.c, global2.d.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_0.d.b.x, 4294967295u), var_0.d.b)))).a.x;
    let var_2 = func_1(~1u, _wgslsmith_mult_vec4_u32(vec4<u32>(global2.d.b.x, global0.e.x, global0.e.x, ~u_input.b >> (_wgslsmith_mult_u32(global0.e.x, u_input.a) % 32u)), vec4<u32>(global2.d.b.x, 3169u, _wgslsmith_mult_u32(51356u & var_0.c, ~global2.c), countOneBits(global2.d.b.x))));
    let var_3 = func_1(_wgslsmith_mod_u32(42176u >> (global0.e.x % 32u), func_1(global0.e.x << (~global2.c % 32u), vec4<u32>(global2.d.b.x, var_0.c, ~u_input.d.x, select(var_0.d.b.x, var_0.d.b.x, global0.d))).d.b.x), vec4<u32>(~u_input.b, var_2.d.b.x, max(min(min(6764u, var_2.c), 4294967295u), var_0.c), abs(reverseBits(global0.e.x | 0u)))).d;
    let var_4 = ~abs(-min(vec4<i32>(var_2.b, 2147483647i, 0i, -2147483647i), vec4<i32>(-1i, var_1, global2.b, -27911i))) | (vec4<i32>(abs(-1i), countOneBits(_wgslsmith_add_i32(u_input.e, 6281i)), firstLeadingBit(0i), var_0.a.x) & (vec4<i32>(-1i) * -vec4<i32>(-1i, global0.a, -1i, 2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(max(2147483647i, ~2147483647i)), vec2<i32>(38232i << (_wgslsmith_div_u32(var_0.d.b.x ^ var_3.b.x, func_1(var_2.d.b.x, global0.e).d.b.x) % 32u), -4307i), func_1(1281u, global0.e).d.b.x, _wgslsmith_f_op_f32(-var_0.d.a.x));
}

