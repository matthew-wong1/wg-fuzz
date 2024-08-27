struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(true, 31736u), Struct_1(false, 0u), Struct_1(false, 0u), Struct_1(false, 34385u), Struct_1(true, 1u), Struct_1(false, 34395u), Struct_1(true, 68473u), Struct_1(true, 1u), Struct_1(true, 0u));

var<private> global1: array<vec3<bool>, 8>;

var<private> global2: f32 = 368f;

var<private> global3: vec2<u32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_2, arg_3: u32) -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.a))), Struct_1(true, 1u), !arg_2.d.a, Struct_1(arg_2.d.a, 58563u), Struct_1(arg_2.e.a, arg_0));
    var var_1 = select(select(!vec2<bool>(all(vec3<bool>(arg_2.d.a, false, true)), !arg_2.d.a), select(vec2<bool>(arg_2.b.a, true), !select(vec2<bool>(arg_2.b.a, var_0.c), vec2<bool>(arg_2.d.a, var_0.c), vec2<bool>(false, arg_2.e.a)), vec2<bool>(true, true)), _wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(max(arg_2.a, arg_2.a)))) >= _wgslsmith_f_op_f32(-var_0.a)), vec2<bool>(var_0.d.a, any(select(vec3<bool>(var_0.b.a, arg_2.d.a, var_0.b.a), select(vec3<bool>(false, var_0.d.a, var_0.b.a), vec3<bool>(arg_2.c, var_0.d.a, true), global1[_wgslsmith_index_u32(33997u, 8u)]), !global1[_wgslsmith_index_u32(arg_0, 8u)]))), arg_2.e.a);
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.a, arg_2.a)))) - 334f)));
    var_2 = var_0;
    return var_2.c;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_2 {
    global1 = array<vec3<bool>, 8>();
    global3 = ~vec2<u32>(~_wgslsmith_div_u32(_wgslsmith_mod_u32(arg_1.e.b, 1u), 4294967295u), ~select(global3.x, 4294967295u, func_3(1959u, u_input.e.x, arg_1, arg_0.x)));
    global3 = _wgslsmith_clamp_vec2_u32(select(vec2<u32>(countOneBits(0u), arg_1.d.b) | _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(arg_0, arg_0), ~arg_0), _wgslsmith_mult_vec2_u32(firstTrailingBit(~arg_0), reverseBits(vec2<u32>(u_input.a, arg_1.b.b))), vec2<bool>(!arg_1.e.a, select(true, true, arg_1.e.a && arg_1.c))), arg_0, ~(~(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(0u, 79519u), arg_0) | _wgslsmith_sub_vec2_u32(vec2<u32>(45481u, 4294967295u), vec2<u32>(u_input.b, u_input.a)))));
    let var_0 = ~firstTrailingBit(-2147483647i);
    let var_1 = vec4<i32>(-8089i, -(~select(0i, -3997i, arg_1.b.a) >> (21998u % 32u)), ~(-26135i) ^ (1i ^ ~select(-42779i, u_input.e.x, arg_1.b.a)), var_0);
    return Struct_2(arg_1.a, Struct_1(arg_1.e.a, ~(~arg_1.d.b)), arg_1.c || (arg_1.b.a || !all(vec2<bool>(true, arg_1.c))), Struct_1(true, ~u_input.b), global0[_wgslsmith_index_u32(u_input.a, 9u)]);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    let var_0 = true;
    global1 = array<vec3<bool>, 8>();
    global2 = _wgslsmith_f_op_f32(-1541f * arg_1.a);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * arg_1.a) - _wgslsmith_f_op_f32(f32(-1f) * -804f));
    global0 = array<Struct_1, 9>();
    return false;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: i32) -> u32 {
    let var_0 = true;
    var var_1 = Struct_2(-687f, global0[_wgslsmith_index_u32(~(~u_input.d), 9u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-200f, 1170f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -981f), _wgslsmith_f_op_f32(-197f + 308f)))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -534f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(605f))))), Struct_1(func_4(-8569i, func_2(vec2<u32>(1u, 37644u) << (vec2<u32>(16330u, arg_0) % vec2<u32>(32u)), Struct_2(-974f, Struct_1(true, 0u), var_0, global0[_wgslsmith_index_u32(global3.x, 9u)], Struct_1(true, 20390u))), func_2(_wgslsmith_div_vec2_u32(vec2<u32>(global3.x, 1u), vec2<u32>(1u, 4294967295u)), Struct_2(-571f, global0[_wgslsmith_index_u32(u_input.d, 9u)], false, global0[_wgslsmith_index_u32(27807u, 9u)], Struct_1(var_0, 1u))), Struct_1(true, u_input.b)), 0u), global0[_wgslsmith_index_u32(~60655u, 9u)]);
    let var_2 = 126f;
    let var_3 = _wgslsmith_div_vec2_u32((firstLeadingBit(~vec2<u32>(arg_0, 4294967295u)) ^ min(~vec2<u32>(7425u, arg_1), vec2<u32>(35580u, 0u))) ^ vec2<u32>(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(52856u, u_input.b, arg_0, global3.x)), vec4<u32>(arg_0, arg_0, 1u, 52032u)), min(arg_0 ^ 16191u, 4294967295u)), _wgslsmith_clamp_vec2_u32(select(select(vec2<u32>(arg_1, arg_1) ^ vec2<u32>(var_1.e.b, 79816u), ~vec2<u32>(0u, 37901u), any(vec4<bool>(false, true, var_0, false))), ~firstLeadingBit(vec2<u32>(global3.x, 37912u)), all(select(vec3<bool>(var_1.e.a, var_0, var_0), global1[_wgslsmith_index_u32(1u, 8u)], var_1.b.a))), vec2<u32>(~reverseBits(var_1.d.b), ~_wgslsmith_add_u32(arg_0, u_input.b)), _wgslsmith_div_vec2_u32(~vec2<u32>(var_1.d.b, var_1.b.b) ^ (vec2<u32>(arg_1, 634u) & vec2<u32>(38489u, arg_1)), (vec2<u32>(arg_0, global3.x) >> (vec2<u32>(44292u, 500u) % vec2<u32>(32u))) << (~vec2<u32>(1u, 31712u) % vec2<u32>(32u)))));
    let var_4 = min(var_3, vec2<u32>(~select(global3.x, 4294967295u, var_1.c), ~47917u)) | _wgslsmith_div_vec2_u32(firstTrailingBit(var_3 << (_wgslsmith_clamp_vec2_u32(var_3, var_3, var_3) % vec2<u32>(32u))), var_3 >> (var_3 % vec2<u32>(32u)));
    return _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~(4294967295u & u_input.d), arg_1), ~(~global3.x), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~func_1(31919u, countOneBits(u_input.a), select(u_input.c.x, _wgslsmith_dot_vec2_i32(max(u_input.e.xw, vec2<i32>(34695i, u_input.c.x)), vec2<i32>(-55706i, 1i) & u_input.c), true)), 9u)];
    global0 = array<Struct_1, 9>();
    global1 = array<vec3<bool>, 8>();
    var var_1 = func_2(~(~select(~vec2<u32>(global3.x, var_0.b), vec2<u32>(global3.x, 24911u), vec2<bool>(var_0.a, var_0.a))), Struct_2(_wgslsmith_f_op_f32(380f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(404f, 1041f))), func_2((vec2<u32>(global3.x, 1u) << (vec2<u32>(1u, global3.x) % vec2<u32>(32u))) << (vec2<u32>(u_input.d, global3.x) % vec2<u32>(32u)), func_2(~vec2<u32>(var_0.b, global3.x), Struct_2(-250f, Struct_1(false, u_input.a), var_0.a, Struct_1(var_0.a, 11975u), Struct_1(var_0.a, u_input.a)))).e, true, global0[_wgslsmith_index_u32(u_input.d, 9u)], func_2(firstLeadingBit(vec2<u32>(1u, 1u)), Struct_2(253f, func_2(vec2<u32>(global3.x, u_input.b), Struct_2(-416f, Struct_1(false, 0u), var_0.a, global0[_wgslsmith_index_u32(var_0.b, 9u)], Struct_1(var_0.a, global3.x))).e, var_0.a, Struct_1(true, 1u), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.x, 121899u), vec2<u32>(u_input.d, u_input.a)), 9u)])).b)).e;
    global1 = array<vec3<bool>, 8>();
    var var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(-abs(vec4<i32>(u_input.e.x, 1i, u_input.c.x, u_input.c.x)), reverseBits(vec4<i32>(37776i, abs(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(43027i, u_input.e.x, u_input.c.x, u_input.e.x), u_input.e), _wgslsmith_mult_i32(u_input.e.x, u_input.e.x)))), _wgslsmith_div_i32(max(countOneBits(_wgslsmith_mod_i32(27573i, -29088i)), _wgslsmith_mod_i32(0i, _wgslsmith_clamp_i32(u_input.c.x, u_input.e.x, u_input.e.x))), firstLeadingBit(~(~(-52729i)))), -19886i, u_input.c.x);
    var_2 = u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(~select(max(vec2<u32>(29139u, 0u) >> (vec2<u32>(0u, global3.x) % vec2<u32>(32u)), vec2<u32>(21865u, 85096u)), ~firstTrailingBit(vec2<u32>(var_0.b, 24723u)), abs(var_2.x) <= (0i ^ var_2.x)), firstTrailingBit(countOneBits(-countOneBits(u_input.c.x))));
}

