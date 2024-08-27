struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7>;

var<private> global1: array<Struct_1, 5>;

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)));

var<private> global3: array<Struct_1, 11>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = _wgslsmith_clamp_u32(~u_input.a << (1u % 32u), ~6225u, ~32763u);
    global1 = array<Struct_1, 5>();
    let var_1 = (countOneBits(-firstLeadingBit(vec3<i32>(arg_0, arg_0, arg_0))) ^ ((_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, -13167i, arg_0), vec3<i32>(arg_0, 0i, arg_0)) & firstTrailingBit(vec3<i32>(arg_0, arg_0, arg_0))) ^ reverseBits(vec3<i32>(-27777i, 0i, arg_0) << (vec3<u32>(31823u, 40948u, var_0) % vec3<u32>(32u))))) >> (vec3<u32>(u_input.b.x, ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_0, var_0), 47360u, var_0), min(_wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, var_0), 10304u >> (u_input.a % 32u)), ~var_0)) % vec3<u32>(32u));
    let var_2 = select(reverseBits(u_input.c), _wgslsmith_mult_vec3_u32(u_input.c, vec3<u32>(_wgslsmith_div_u32(4294967295u, 1u | var_0), _wgslsmith_dot_vec4_u32(max(vec4<u32>(0u, 1u, var_0, u_input.b.x), vec4<u32>(u_input.a, u_input.a, var_0, 2758u)), select(vec4<u32>(60426u, var_0, 1u, u_input.b.x), vec4<u32>(var_0, u_input.c.x, u_input.a, 0u), false)), ~(~u_input.b.x))), any(vec3<bool>(true, all(vec2<bool>(false, false)), true)));
    let var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(~select(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_1.x, -17159i), var_1), -arg_0, arg_0 < -60441i), 1i), ~var_1.zy);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1183f)) * _wgslsmith_div_f32(-642f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1f))))));
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 37591i, 0i), vec4<i32>(1i, 1i, 1i, 1i)) >> (~(~1u) % 32u)))));
    var var_1 = ~(~vec4<u32>(4294967295u, ~(~4294967295u), 1u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.c, vec3<u32>(29666u, 5274u, 50195u)), u_input.c)));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_mult_u32(max(min(67641u, var_1.x), 1u >> (var_1.x % 32u)), var_1.x), u_input.b.x), 7u)];
    global3 = array<Struct_1, 11>();
    global1 = array<Struct_1, 5>();
    return global0[_wgslsmith_index_u32(~64840u, 7u)];
}

fn func_1(arg_0: f32) -> u32 {
    global3 = array<Struct_1, 11>();
    var var_0 = func_2(all(vec4<bool>(true, true, true, false)));
    let var_1 = func_2(true).b;
    let var_2 = Struct_3(~u_input.c.x, 21063i, min(var_0.c.x, 2147483647i));
    global0 = array<Struct_2, 7>();
    return select(abs(~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.c.x, var_2.a, u_input.c.x), ~vec4<u32>(var_2.a, 47582u, 1u, var_2.a))), _wgslsmith_dot_vec2_u32(vec2<u32>(0u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 33255u, 22819u), u_input.c), _wgslsmith_add_u32(0u, var_2.a)), vec2<u32>(~_wgslsmith_div_u32(72240u, var_2.a), 113019u)), all(vec3<bool>(!var_0.b.a.x, !var_0.a, all(!vec4<bool>(var_0.a, true, var_0.a, true)))));
}

fn func_4(arg_0: u32, arg_1: u32) -> u32 {
    var var_0 = Struct_3(4294967295u, _wgslsmith_sub_i32(40500i, 5599i >> ((u_input.b.x ^ 13036u) % 32u)) >> (~1u % 32u), ~(-min(_wgslsmith_div_i32(-1i, 10342i), 1i)));
    global0 = array<Struct_2, 7>();
    var var_1 = func_2(false).b;
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(11104u, arg_1), 12u)];
    let var_3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1596f - -1000f))) + 527f), _wgslsmith_f_op_f32(-560f - -719f)), 2432f, 1466f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(952f, _wgslsmith_f_op_f32(step(-564f, _wgslsmith_f_op_f32(select(-709f, -283f, true)))), true))));
    return ~18284u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 11>();
    let var_0 = !vec4<bool>(false && (all(vec2<bool>(false, true)) || any(vec4<bool>(false, true, false, true))), firstTrailingBit(u_input.c.x) > func_4(func_1(-1000f), u_input.a), any(vec3<bool>(true, true, true)), true);
    global0 = array<Struct_2, 7>();
    global0 = array<Struct_2, 7>();
    global3 = array<Struct_1, 11>();
    let var_1 = Struct_3(_wgslsmith_mult_u32(u_input.b.x, max(u_input.c.x, 38146u)), 0i, _wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_clamp_i32(select(0i, -23316i, var_0.x), -3738i, 1i), 0i), 0i));
    let var_2 = Struct_1(var_0.xz);
    global2 = array<Struct_1, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(var_1.b, ~var_1.b, var_1.b) ^ ~abs(countOneBits(vec3<i32>(-1i, var_1.c, var_1.b))));
}

