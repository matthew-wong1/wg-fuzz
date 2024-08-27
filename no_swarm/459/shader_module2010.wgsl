struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

var<private> global1: array<vec4<f32>, 18>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global1 = array<vec4<f32>, 18>();
    let var_0 = global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(u_input.e << (u_input.c.x % 32u), countOneBits(u_input.c.x), u_input.e), 20475u, 39315u), _wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, u_input.e), ~(~vec3<u32>(0u, u_input.d, u_input.e))))), 16u)];
    let var_1 = !(!all(vec3<bool>(false, true, true)));
    let var_2 = Struct_1(countOneBits(_wgslsmith_mod_u32(1u, var_0.a)));
    let var_3 = false;
    return var_0.a;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> i32 {
    global1 = array<vec4<f32>, 18>();
    var var_0 = firstTrailingBit(_wgslsmith_mod_vec2_u32(~u_input.c, ~(~u_input.c ^ _wgslsmith_mult_vec2_u32(vec2<u32>(64539u, 1u), vec2<u32>(arg_1.a, 23338u)))));
    global1 = array<vec4<f32>, 18>();
    let var_1 = Struct_1(1u);
    global0 = array<Struct_1, 16>();
    return -arg_2 << ((func_3() & arg_1.a) % 32u);
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(22245u);
    global0 = array<Struct_1, 16>();
    let var_1 = false;
    global0 = array<Struct_1, 16>();
    let var_2 = -1566i;
    return select(vec3<bool>(!var_1, false, true), !select(vec3<bool>(!var_1, var_1, true), vec3<bool>(any(vec4<bool>(var_1, var_1, var_1, false)), !var_1, true), !select(vec3<bool>(var_1, var_1, false), vec3<bool>(var_1, false, true), vec3<bool>(false, var_1, false))), vec3<bool>(countOneBits(_wgslsmith_clamp_u32(4294967295u, 0u, 0u)) > ~arg_3.a, true, var_1));
}

fn func_1(arg_0: u32) -> vec3<bool> {
    global0 = array<Struct_1, 16>();
    global1 = array<vec4<f32>, 18>();
    global0 = array<Struct_1, 16>();
    let var_0 = global0[_wgslsmith_index_u32(~(~0u) >> (arg_0 % 32u), 16u)];
    var var_1 = select(56285i, u_input.a.x, !select(!all(vec3<bool>(false, false, false)), true, !all(vec4<bool>(false, true, true, false))));
    return !(!(!func_4(func_2(Struct_1(u_input.d), global0[_wgslsmith_index_u32(0u, 16u)], u_input.a.x, global0[_wgslsmith_index_u32(var_0.a, 16u)]), _wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(-1i, -55201i, -5582i, u_input.b.x)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(50640u, 22268u, u_input.c.x, 1u), vec4<u32>(4294967295u, u_input.c.x, u_input.e, 4294967295u)), 16u)], Struct_1(44419u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    global1 = array<vec4<f32>, 18>();
    var var_1 = Struct_1(0u);
    var var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(max(vec2<i32>(28639i, u_input.b.x), -u_input.b.yz), vec2<i32>(u_input.b.x, -5782i) | (vec2<i32>(38728i, u_input.a.x) ^ vec2<i32>(-38012i, u_input.a.x))), ~u_input.b.x, u_input.b.x, -u_input.a.x), u_input.b, select(u_input.b, _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, 0i), max(u_input.b, vec4<i32>(u_input.a.x, 0i, u_input.a.x, -15013i))), ~u_input.b, -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -11782i, 1i, -2302i), u_input.b)), vec4<bool>(true, true, true, true)));
    var var_3 = vec4<bool>(any(func_1(_wgslsmith_mod_u32(~u_input.c.x, ~11153u))), ~var_1.a > ~max(u_input.c.x, var_1.a | 4487u), true, select(true, all(!func_4(u_input.a.x, u_input.b, Struct_1(30437u), Struct_1(var_1.a)).xy), !(func_4(-45058i, u_input.b, global0[_wgslsmith_index_u32(37262u, 16u)], global0[_wgslsmith_index_u32(var_1.a, 16u)]).x && all(vec3<bool>(true, true, true)))));
    var_0 = _wgslsmith_dot_vec4_i32(min(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, var_2.x, var_2.x, var_2.x) >> (vec4<u32>(var_1.a, u_input.e, 10705u, 57996u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(17274i, u_input.a.x, var_2.x, -49804i), u_input.b)), _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.a.x, -25953i, var_2.x, -7905i), vec4<i32>(var_2.x, u_input.a.x, 36417i, var_2.x))), u_input.b), _wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(max(-70973i | u_input.a.x, 37438i), -var_2.x, -72989i | _wgslsmith_div_i32(var_2.x, 26471i), u_input.a.x)));
    global1 = array<vec4<f32>, 18>();
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(func_3(), 80044u), 16u)];
    var_3 = select(!(!(!(!vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x)))), !vec4<bool>(func_4(-5211i, vec4<i32>(var_2.x, 6718i, var_2.x, var_2.x), Struct_1(11094u), global0[_wgslsmith_index_u32(16726u, 16u)]).x, !any(vec4<bool>(false, true, var_3.x, var_3.x)), !(var_3.x && false), !var_3.x), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, var_3.x, var_3.x), vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec2<bool>(false, var_3.x)), all(var_3.zy), true, true), any(vec3<bool>(true, false, true))), select(select(select(vec4<bool>(var_3.x, var_3.x, var_3.x, false), vec4<bool>(var_3.x, true, true, false), vec4<bool>(var_3.x, true, true, false)), !vec4<bool>(var_3.x, true, var_3.x, false), vec4<bool>(var_3.x, true, var_3.x, false)), select(select(vec4<bool>(false, var_3.x, false, var_3.x), vec4<bool>(var_3.x, true, false, var_3.x), vec4<bool>(false, var_3.x, true, true)), select(vec4<bool>(var_3.x, false, true, var_3.x), vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), vec4<bool>(var_3.x, true, var_3.x, var_3.x)), vec4<bool>(true, false, var_3.x, true)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a);
}

