struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_1, 1>;

var<private> global2: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_2(reverseBits(abs(select(-vec3<i32>(u_input.e, 0i, -28148i), reverseBits(vec3<i32>(u_input.e, u_input.e, -8932i)), any(vec4<bool>(arg_1.x, true, arg_1.x, true))))), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~global0.x, 7138u >> (0u % 32u)), 1u)], !select(true, true, false), vec2<bool>(true, (max(u_input.e, 1i) > _wgslsmith_sub_i32(u_input.e, 0i)) == !(!arg_1.x)));
    let var_1 = Struct_1(arg_0.a);
    global1 = array<Struct_1, 1>();
    var var_2 = Struct_2(var_0.a, Struct_1(var_1.a), -(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0.a.x, var_0.a.x, var_0.a.x), vec4<i32>(-1i, 14277i, 5165i, 5628i)) << (~u_input.c % 32u)) > u_input.e, arg_1.wx);
    global0 = u_input.d;
    return Struct_1(arg_0.a);
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = true;
    global2 = global1[_wgslsmith_index_u32(u_input.a.x, 1u)];
    let var_1 = vec2<u32>(~4294967295u, _wgslsmith_clamp_u32(1u, arg_2.x & ~51409u, ~(~arg_2.x)));
    let var_2 = ~_wgslsmith_mult_vec2_u32(min(global0.wx, ~(~vec2<u32>(16609u, 44897u))), vec2<u32>(arg_2.x ^ u_input.b, 10014u));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -433f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global2.a)), 937f))));
    return global1[_wgslsmith_index_u32(reverseBits(max(_wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, u_input.b) << (~global0.x % 32u), 25617u), _wgslsmith_dot_vec2_u32(~var_2, vec2<u32>(~94281u, 34444u)))), 1u)];
}

fn func_1(arg_0: vec3<f32>, arg_1: u32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0));
    var var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, u_input.a.x, ~arg_1, firstTrailingBit(_wgslsmith_div_u32(43702u, 4431u) ^ _wgslsmith_div_u32(u_input.c, global0.x))), ~vec4<u32>(~global0.x, select(arg_1, u_input.a.x, false) << (14846u % 32u), 52400u, ~_wgslsmith_mod_u32(30550u, u_input.a.x)));
    var var_2 = Struct_2(~vec3<i32>(abs(u_input.e), -u_input.e, u_input.e), func_3(Struct_2(~vec3<i32>(1i, u_input.e, u_input.e) >> ((vec3<u32>(18861u, 4294967295u, 1u) ^ vec3<u32>(1u, var_1.x, u_input.c)) % vec3<u32>(32u)), func_2(Struct_1(global2.a), vec4<bool>(false, true, true, false), _wgslsmith_sub_u32(arg_1, 4294967295u), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2.a, -465f, -1342f)))), false, vec2<bool>(all(vec4<bool>(true, true, true, true)), true)), -9443i, _wgslsmith_clamp_vec4_u32(~(vec4<u32>(12707u, 0u, 77596u, arg_1) | vec4<u32>(global0.x, 15165u, arg_1, arg_1)), (vec4<u32>(0u, 4294967295u, arg_1, 93068u) | u_input.d) & u_input.d, u_input.d)), any(vec2<bool>(true, any(vec3<bool>(true, true, true)))), vec2<bool>(false, false));
    var var_3 = Struct_2(-_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_clamp_i32(var_2.a.x, -20984i, u_input.e), u_input.e), min(-vec3<i32>(-12254i, 2147483647i, var_2.a.x), var_2.a)), func_2(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.x, var_1.x), 1u)], select(!select(vec4<bool>(var_2.d.x, var_2.d.x, true, false), vec4<bool>(var_2.d.x, var_2.c, var_2.c, true), vec4<bool>(false, var_2.d.x, var_2.d.x, var_2.c)), select(!vec4<bool>(true, var_2.d.x, var_2.d.x, var_2.d.x), vec4<bool>(var_2.c, true, var_2.d.x, var_2.c), var_2.d.x & false), !(!vec4<bool>(false, var_2.d.x, var_2.c, var_2.d.x))), ~u_input.a.x, var_0), all(vec4<bool>(!var_2.d.x, false, var_2.c, true)), !var_2.d);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(414f, func_2(func_3(Struct_2(vec3<i32>(var_2.a.x, 8225i, -27724i), Struct_1(var_2.b.a), true, var_2.d), abs(u_input.e), vec4<u32>(4294967295u, u_input.d.x, 4294967295u, var_1.x) | vec4<u32>(4294967295u, arg_1, var_1.x, var_1.x)), select(select(vec4<bool>(false, var_2.d.x, true, var_2.c), vec4<bool>(var_2.c, false, var_2.c, var_3.d.x), vec4<bool>(var_3.c, false, var_2.c, true)), select(vec4<bool>(false, var_3.d.x, false, var_2.c), vec4<bool>(false, var_2.d.x, var_3.c, true), false), select(vec4<bool>(true, true, true, var_3.c), vec4<bool>(true, false, var_2.c, false), vec4<bool>(true, false, true, false))), ~(~u_input.a.x), vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1096f), -1284f)).a)));
    return Struct_2(select(firstLeadingBit(vec3<i32>(-var_2.a.x, _wgslsmith_sub_i32(var_3.a.x, var_2.a.x), _wgslsmith_div_i32(u_input.e, var_3.a.x))), var_3.a, all(!var_3.d)), var_2.b, any(var_2.d), var_3.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !any(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), any(vec3<bool>(true, true, true))));
    let var_1 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1405f, global2.a, _wgslsmith_f_op_f32(abs(-1000f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.a, -661f, global2.a))))))), 985u);
    var var_2 = ~(~_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(u_input.d, u_input.d), u_input.d)) ^ max(u_input.d | vec4<u32>(1u, 4294967295u, 1u, u_input.b), vec4<u32>(u_input.c, ~select(45860u, u_input.a.x, false), u_input.c, ~4498u));
    global2 = global1[_wgslsmith_index_u32(~0u ^ global0.x, 1u)];
    var var_3 = global1[_wgslsmith_index_u32(firstTrailingBit(abs(u_input.b)), 1u)];
    var var_4 = vec3<bool>(firstLeadingBit(64293u) > var_2.x, var_1.d.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(max(firstTrailingBit(~var_2.x), max(u_input.a.x, select(_wgslsmith_mult_u32(0u, var_2.x), ~109055u, !var_4.x))), u_input.b >> ((abs(1u) ^ _wgslsmith_clamp_u32(~0u, global0.x, _wgslsmith_add_u32(0u, global0.x))) % 32u), var_2.zwy, min(var_2.xy, vec2<u32>(_wgslsmith_sub_u32(var_2.x, 52747u), ~11541u | var_2.x)));
}

