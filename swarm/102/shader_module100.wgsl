struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: u32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: vec2<u32>;

var<private> global2: array<vec2<u32>, 20>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = 4294967295u;
    global2 = array<vec2<u32>, 20>();
    global1 = u_input.a;
    var var_1 = vec2<i32>(arg_1.a, ~abs(0i));
    var var_2 = arg_1.c;
    return firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.e.x, 17590i, -2147483647i), -arg_0.e) | -arg_0.a);
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> vec4<i32> {
    global1 = vec2<u32>(~4294967295u, 948u);
    global0 = array<Struct_1, 31>();
    let var_0 = vec3<u32>(arg_3.d, 0u, _wgslsmith_mult_u32(select(abs(_wgslsmith_add_u32(1u, 18823u)), 54864u, true), arg_3.d));
    return _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(-50544i, arg_2.a, select(arg_3.e.x, -11510i, false), _wgslsmith_mod_i32(-21626i, arg_2.e.x))), abs(vec4<i32>(~arg_2.e.x, 0i, firstLeadingBit(arg_3.e.x), -46177i))) >> (((_wgslsmith_clamp_vec4_u32(~u_input.b, vec4<u32>(1u, arg_3.d, arg_3.d, 1u) << (vec4<u32>(u_input.c, var_0.x, global1.x, global1.x) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(58991u, global1.x, var_0.x, 26048u))) >> (u_input.b % vec4<u32>(32u))) | ~vec4<u32>(global1.x & var_0.x, 24119u, firstLeadingBit(u_input.b.x), ~1u)) % vec4<u32>(32u));
}

fn func_1() -> i32 {
    var var_0 = select(-select(vec4<i32>(0i, func_2(Struct_1(-7602i, 640f, -1000f, 30558u, vec3<i32>(-22033i, -26301i, 42448i)), Struct_1(12844i, 285f, -713f, 4294967295u, vec3<i32>(16775i, -2147483647i, 2794i))), -2147483647i >> (1u % 32u), 1i), func_3(_wgslsmith_f_op_f32(abs(1322f)), -522f, Struct_1(-42794i, -300f, 202f, 19778u, vec3<i32>(-2147483647i, -2147483647i, 37862i)), Struct_1(1i, 487f, 584f, global1.x, vec3<i32>(-2147483647i, 66673i, 2147483647i))), false), vec4<i32>(-1i) * -min(-vec4<i32>(-2147483647i, -64365i, 28015i, 34129i), vec4<i32>(1i, 1i, 1i, 1i)), select(vec4<bool>(true, true, true, ~2413u > firstLeadingBit(u_input.b.x)), !select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true), true), any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(false, true), vec2<bool>(false, true), false)))));
    let var_1 = global0[_wgslsmith_index_u32(u_input.b.x, 31u)];
    let var_2 = vec4<i32>(2147483647i, 3189i, ~(-2147483647i), _wgslsmith_dot_vec2_i32(var_1.e.xx >> (~firstLeadingBit(global2[_wgslsmith_index_u32(var_1.d, 20u)]) % vec2<u32>(32u)), var_1.e.yx));
    global2 = array<vec2<u32>, 20>();
    var var_3 = Struct_1(-3875i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))), var_1.c, 49290u, ~_wgslsmith_mult_vec3_i32(var_1.e, vec3<i32>(var_1.e.x ^ var_0.x, -var_1.e.x, 0i)));
    return max(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -674f), var_3.c, global0[_wgslsmith_index_u32(107866u, 31u)], global0[_wgslsmith_index_u32(var_3.d, 31u)]).x, _wgslsmith_clamp_i32(i32(-1i) * -1i, _wgslsmith_mult_i32(1i, var_1.a), ~var_1.a)), 2147483647i, 1i), var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(~1i >> (global1.x % 32u), _wgslsmith_mod_i32(_wgslsmith_mult_i32(func_1(), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), firstTrailingBit(vec2<i32>(0i, -105366i)))), -1i));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(668f + 1769f))))) - -1624f);
    var_0 = -_wgslsmith_clamp_i32(_wgslsmith_mult_i32(func_1(), _wgslsmith_mod_i32(-2147483647i, -1i)) & -_wgslsmith_sub_i32(-14823i, -2147483647i), -32119i, 9872i);
    var var_2 = global0[_wgslsmith_index_u32(global1.x, 31u)];
    global2 = array<vec2<u32>, 20>();
    global0 = array<Struct_1, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, _wgslsmith_div_vec4_u32(u_input.b, ~vec4<u32>(firstLeadingBit(global1.x), _wgslsmith_sub_u32(var_2.d, 1u), var_2.d, ~u_input.c)));
}

