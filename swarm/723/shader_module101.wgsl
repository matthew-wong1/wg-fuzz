struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: bool,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: array<Struct_1, 1>;

var<private> global2: array<u32, 5>;

var<private> global3: vec2<u32>;

var<private> global4: array<vec2<u32>, 21>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> bool {
    return false;
}

fn func_3() -> vec2<i32> {
    var var_0 = vec4<i32>(2147483647i, _wgslsmith_sub_i32(-2147483647i, u_input.a.x), firstLeadingBit(-(~(-10733i))), u_input.a.x);
    var var_1 = global1[_wgslsmith_index_u32(22106u, 1u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(585f, var_1.d, var_1.d, var_1.d))))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1201f, var_1.b, 149f, 1501f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_1.b, 341f, 729f) - vec4<f32>(738f, var_1.b, var_1.d, 228f))))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(var_1.b)), _wgslsmith_f_op_f32(ceil(var_1.d)), 1648f, _wgslsmith_div_f32(var_1.d, var_1.d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1722f, var_1.d, var_1.d, -1058f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(280f, var_1.d, 1000f, var_1.d)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, 1415f, var_1.d, 480f), vec4<f32>(var_1.b, var_1.b, var_1.b, -1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, 1924f, 1000f, 630f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1793f, var_1.b, var_1.b, var_1.b) - vec4<f32>(918f, var_1.b, var_1.d, var_1.b))))));
    let var_3 = !select(!vec2<bool>(any(vec2<bool>(false, var_1.e)), true), vec2<bool>(var_1.a.x == (var_0.x & var_0.x), any(vec2<bool>(var_1.c, false))), any(select(vec3<bool>(var_1.c, var_1.e, var_1.c), vec3<bool>(var_1.c, var_1.e, var_1.c), vec3<bool>(var_1.e, var_1.e, var_1.e))) && any(vec4<bool>(true, var_1.e, var_1.e, true)));
    global3 = global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~u_input.c, 5u)], 21u)];
    return _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, var_0.x), vec2<i32>(1i, var_1.a.x));
}

fn func_1(arg_0: i32, arg_1: u32) -> u32 {
    global2 = array<u32, 5>();
    var var_0 = vec3<u32>(select(_wgslsmith_clamp_u32(~(~global3.x), abs(max(26369u, 4294967295u)), 4294967295u), ~global3.x, any(vec4<bool>(true, false, func_2(), true))), 1u, arg_1);
    let var_1 = Struct_1(func_3(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2140f, _wgslsmith_f_op_f32(-856f * _wgslsmith_f_op_f32(f32(-1f) * -379f))))), select(select(all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), true, true), true, any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(-239f * 1f), (u_input.c ^ global2[_wgslsmith_index_u32(select(arg_1, 1u, any(vec2<bool>(false, false))), 5u)]) <= (u_input.c << (u_input.c % 32u)));
    global3 = ~vec2<u32>(~_wgslsmith_dot_vec2_u32(~global4[_wgslsmith_index_u32(321u, 21u)], vec2<u32>(25u, global2[_wgslsmith_index_u32(global3.x, 5u)])), ~1u);
    let var_2 = _wgslsmith_mod_vec4_u32(~(~vec4<u32>(arg_1, global2[_wgslsmith_index_u32(18223u, 5u)], var_0.x, 2826u) << ((vec4<u32>(4294967295u, arg_1, u_input.c, 49355u) ^ vec4<u32>(global3.x, 1u, u_input.c, global3.x)) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(vec4<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(0u, 5u)], u_input.c, 1u), vec3<u32>(global3.x, arg_1, 9787u)), _wgslsmith_add_u32(27709u, 22739u), 149356u), ~vec4<u32>(u_input.c, 46216u, 31047u, var_0.x) >> (vec4<u32>(global3.x, 74439u, 12334u, 12618u) % vec4<u32>(32u)))) & reverseBits(abs(~(~vec4<u32>(u_input.c, 7254u, 4294967295u, 43788u))));
    return _wgslsmith_div_u32(~max(var_2.x, var_0.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 0u, 4294967295u), vec3<u32>(global2[_wgslsmith_index_u32(global3.x, 5u)], 79117u, 4294967295u)) % 32u)), ~u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec2<u32>(~reverseBits(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 1u), vec4<u32>(global3.x, global2[_wgslsmith_index_u32(7018u, 5u)], 63963u, global3.x)), vec4<u32>(global2[_wgslsmith_index_u32(29348u, 5u)], global3.x, 15358u, 0u))), _wgslsmith_clamp_u32(4294967295u, u_input.c, func_1(u_input.a.x, ~89874u) ^ ~global3.x));
    let var_0 = all(vec3<bool>(true, any(vec3<bool>(all(vec2<bool>(true, true)), false, true)), true));
    global3 = ~global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(global2[_wgslsmith_index_u32(0u, 5u)], 4294967295u, firstLeadingBit(global2[_wgslsmith_index_u32(0u, 5u)])), ~reverseBits(vec3<u32>(global3.x, 0u, u_input.c))), ~(~(~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.x, 5u)], 5u)], 4294967295u, u_input.c)))), 21u)];
    global4 = array<vec2<u32>, 21>();
    global1 = array<Struct_1, 1>();
    let var_1 = ~(~(~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global3.x, 5u)], 1u, global3.x), vec3<u32>(global2[_wgslsmith_index_u32(u_input.c, 5u)], global3.x, 49167u)), _wgslsmith_mod_u32(u_input.c, global3.x))));
    var var_2 = global4[_wgslsmith_index_u32(u_input.c, 21u)];
    let var_3 = vec3<u32>(80171u, 0u, 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(~(-(~1i)), vec2<f32>(_wgslsmith_f_op_f32(-514f - _wgslsmith_div_f32(837f, _wgslsmith_f_op_f32(-1047f - 415f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1240f + _wgslsmith_f_op_f32(f32(-1f) * -115f)))));
}

