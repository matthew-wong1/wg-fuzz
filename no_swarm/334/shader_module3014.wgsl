struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: array<Struct_1, 7>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> i32 {
    var var_0 = firstTrailingBit(abs(_wgslsmith_div_u32(4294967295u, ~abs(10009u))));
    var var_1 = select(vec4<u32>(~(~u_input.a) << (62719u % 32u), firstLeadingBit(_wgslsmith_mod_u32(~6382u, u_input.a)), select(u_input.a, _wgslsmith_div_u32(u_input.a, u_input.a) & 0u, true), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1360u, 68258u, u_input.a, u_input.a), vec4<u32>(11804u, u_input.a, 25284u, 4294967295u)), abs(vec4<u32>(4294967295u, 17241u, u_input.a, 0u))) ^ 1u), ~(~(~vec4<u32>(1u, 0u, 0u, 72419u))), select(vec4<bool>(false, true, true, (1i | u_input.b) < ~u_input.b), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), !(-2147483647i >= select(u_input.b, -1i, false))));
    return -countOneBits(_wgslsmith_div_i32(_wgslsmith_add_i32(1i, i32(-1i) * -15130i), ~(u_input.b | u_input.b)));
}

fn func_3() -> u32 {
    global1 = array<Struct_1, 7>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1556f, 1000f))) * _wgslsmith_f_op_f32(step(-227f, -428f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-566f)) - -891f)));
    var var_1 = _wgslsmith_f_op_f32(round(-776f));
    let var_2 = u_input.b;
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(214f)))) + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-515f - _wgslsmith_f_op_f32(147f * -173f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.x + 1222f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), -405f))));
    return firstTrailingBit(~(~u_input.a));
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = select(vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), _wgslsmith_sub_i32(func_2(), u_input.b) >= ~(-u_input.b)), vec2<bool>(true | (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, arg_0), vec2<u32>(1u, u_input.a)) <= 1u), false), vec2<bool>(true, true));
    return select(_wgslsmith_dot_vec4_u32(vec4<u32>(10592u, select(4294967295u, u_input.a, true) << (countOneBits(1u) % 32u), u_input.a, ~firstLeadingBit(34735u)), max(~vec4<u32>(4294967295u, arg_0, u_input.a, arg_0), vec4<u32>(u_input.a, u_input.a | arg_0, func_3(), ~4294967295u))), ~(~(~0u)) << (~arg_0 % 32u), true);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = arg_1.c;
    let var_1 = select(select(select(!vec2<bool>(var_0, false), vec2<bool>(true | arg_1.c, true), !vec2<bool>(true, var_0)), vec2<bool>(!arg_1.c, true), select(!select(vec2<bool>(false, arg_0.c), vec2<bool>(true, arg_0.c), arg_1.c), vec2<bool>(true, true), vec2<bool>(select(var_0, true, false), arg_0.c))), !select(vec2<bool>(true, true), vec2<bool>(true, arg_0.c), !select(vec2<bool>(var_0, false), vec2<bool>(true, true), var_0)), !select(select(select(vec2<bool>(true, arg_0.c), vec2<bool>(var_0, arg_0.c), arg_0.c), vec2<bool>(true, var_0), vec2<bool>(true, var_0)), vec2<bool>(false, var_0), select(vec2<bool>(arg_0.c, var_0), vec2<bool>(false, arg_1.c), select(vec2<bool>(false, false), vec2<bool>(false, var_0), vec2<bool>(arg_1.c, arg_0.c)))));
    global1 = array<Struct_1, 7>();
    global1 = array<Struct_1, 7>();
    var var_2 = 12818i;
    return Struct_1(min(_wgslsmith_sub_i32(firstTrailingBit(-arg_0.a), -24825i), arg_0.b.x), _wgslsmith_mult_vec2_i32(-(_wgslsmith_add_vec2_i32(arg_0.b, arg_1.b) << (~vec2<u32>(arg_2.x, arg_2.x) % vec2<u32>(32u))), select(-vec2<i32>(arg_1.b.x, -1i), -arg_0.b, var_1)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), false))));
    let var_1 = func_4(global0[_wgslsmith_index_u32(32335u, 26u)], global1[_wgslsmith_index_u32(1342u, 7u)], select(~vec4<u32>(u_input.a, func_1(u_input.a), u_input.a | 20029u, ~0u), abs(vec4<u32>(_wgslsmith_sub_u32(u_input.a, 0u), firstLeadingBit(4294967295u), reverseBits(u_input.a), 27086u)), any(vec2<bool>(true, !var_0.x))));
    let var_2 = vec4<bool>(var_0.x, !var_0.x, select(any(var_0.zx), var_1.c, false), all(!select(select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), var_0, var_0), var_0, false)));
    let var_3 = _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(30977u, 4294967295u)), countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(117444u, u_input.a)))), select(max(vec2<u32>(u_input.a ^ u_input.a, 4294967295u), ~(~vec2<u32>(u_input.a, u_input.a))), abs(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(u_input.a, 1u)), select(vec2<u32>(0u, 4294967295u), vec2<u32>(22275u, u_input.a), false))), all(!(!vec2<bool>(var_1.c, var_2.x)))));
    global0 = array<Struct_1, 26>();
    var var_4 = func_4(Struct_1(-1i, vec2<i32>(36070i, func_2()), true), Struct_1(~abs(u_input.b), _wgslsmith_div_vec2_i32(-var_1.b << (_wgslsmith_mod_vec2_u32(vec2<u32>(50894u, 8750u), vec2<u32>(0u, var_3)) % vec2<u32>(32u)), var_1.b), all(vec2<bool>(true, true))), firstTrailingBit(_wgslsmith_sub_vec4_u32(select(_wgslsmith_mod_vec4_u32(vec4<u32>(var_3, 75159u, u_input.a, 103360u), vec4<u32>(49822u, 20395u, 0u, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_3, var_3, 5176u, 12031u), vec4<u32>(u_input.a, var_3, 6413u, var_3)), !var_0), vec4<u32>(1u, countOneBits(u_input.a), ~1u, ~53917u)))).a;
    var var_5 = ~firstLeadingBit(4098i);
    var_5 = ~firstLeadingBit(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(1124i, 560f, reverseBits(~var_3 | 4294967295u), var_3, select(vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, -1i, -1i), vec3<i32>(var_1.a, -13472i, -2147483647i)), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_div_i32(u_input.b, -41455i), _wgslsmith_mult_i32(var_1.a, 8321i), ~u_input.b), _wgslsmith_div_vec3_i32(vec3<i32>(-26806i, u_input.b, var_1.a), reverseBits(vec3<i32>(u_input.b, u_input.b, u_input.b)))), all(!(!vec3<bool>(var_0.x, var_0.x, var_2.x)))));
}

