struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<bool>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
    c: Struct_3,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_3;

var<private> global2: array<i32, 21>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: f32, arg_3: i32) -> bool {
    let var_0 = arg_0.b;
    let var_1 = Struct_4(arg_0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b)), arg_0.c, Struct_2(!arg_0.d.a, arg_0.c.a));
    return !arg_0.a.c.x;
}

fn func_1(arg_0: i32, arg_1: vec2<bool>) -> Struct_5 {
    let var_0 = Struct_4(Struct_3(global1.a, -countOneBits(global1.b) >> (vec2<u32>(~u_input.d, _wgslsmith_mod_u32(4294967295u, 4294967295u)) % vec2<u32>(32u)), vec2<bool>(!func_2(Struct_4(Struct_3(Struct_1(global0.b.a), global0.b.a, arg_1, false, global1.e), vec2<f32>(958f, -478f), Struct_3(global1.a, global1.b, global1.c, false, vec3<u32>(global1.e.x, u_input.b, global1.e.x)), Struct_2(global0.a, Struct_1(vec2<i32>(global1.b.x, global0.b.a.x)))), vec3<u32>(1u, global1.e.x, global1.e.x), 812f, -13037i), !global0.a.x), arg_1.x, global1.e >> (~(~global1.e) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1003f, -269f), vec2<f32>(-208f, 103f))))), Struct_3(global1.a, (_wgslsmith_mult_vec2_i32(global0.b.a, global1.b) << (vec2<u32>(21434u, global1.e.x) % vec2<u32>(32u))) << (~(~vec2<u32>(global1.e.x, 24591u)) % vec2<u32>(32u)), arg_1, global0.a.x, _wgslsmith_clamp_vec3_u32(global1.e, vec3<u32>(global1.e.x, 1u, 41026u), reverseBits(global1.e))), Struct_2(vec2<bool>(true, !any(vec2<bool>(arg_1.x, false))), global0.b));
    var var_1 = var_0.c;
    global0 = var_0.d;
    global2 = array<i32, 21>();
    var var_2 = global0.b;
    return Struct_5(global0.b, var_0.d);
}

fn func_3() -> i32 {
    let var_0 = vec2<i32>(1i, global1.b.x ^ 0i) | (_wgslsmith_mult_vec2_i32(vec2<i32>(-34120i, -33784i) | global1.b, _wgslsmith_div_vec2_i32(abs(global1.a.a), vec2<i32>(-2147483647i, -1i))) & select(vec2<i32>(global1.a.a.x, ~30515i), global0.b.a, false));
    let var_1 = select(!vec3<bool>(!(!global0.a.x), func_1(-3i, vec2<bool>(true, true)).b.a.x, true), select(select(vec3<bool>(all(vec2<bool>(global0.a.x, global0.a.x)), true, global1.c.x), vec3<bool>(true, true, true), true), !select(vec3<bool>(global0.a.x, global0.a.x, true), select(vec3<bool>(false, false, global0.a.x), vec3<bool>(global1.d, global0.a.x, false), vec3<bool>(false, false, global1.d)), vec3<bool>(false, false, global1.d)), vec3<bool>(select(func_1(62977i, vec2<bool>(global0.a.x, global0.a.x)).b.a.x, true, true), !(0u > global1.e.x), all(select(vec2<bool>(global0.a.x, global0.a.x), vec2<bool>(true, true), global0.a)))), vec3<bool>(any(select(vec2<bool>(global1.c.x, global1.d), func_1(-2147483647i, global1.c).b.a, true)), false, false));
    let var_2 = func_1(_wgslsmith_mod_i32(0i, ~_wgslsmith_div_i32(~global1.a.a.x, 0i)), vec2<bool>(true, func_1(24837i, vec2<bool>(any(vec4<bool>(global0.a.x, true, global1.d, false)), false)).b.a.x)).b.b;
    global0 = func_1(_wgslsmith_dot_vec4_i32(-vec4<i32>(countOneBits(var_2.a.x), abs(global2[_wgslsmith_index_u32(global1.e.x, 21u)]), _wgslsmith_mod_i32(var_0.x, -408i), global1.b.x), max(vec4<i32>(func_1(global2[_wgslsmith_index_u32(u_input.b, 21u)], vec2<bool>(false, true)).a.a.x, var_0.x, var_0.x | var_2.a.x, _wgslsmith_dot_vec2_i32(var_0, vec2<i32>(2147483647i, 63789i))), _wgslsmith_div_vec4_i32(vec4<i32>(0i, 5734i, 0i, 2147483647i), firstTrailingBit(vec4<i32>(-16069i, -73497i, 1i, 30617i))))), vec2<bool>(true, any(select(!vec4<bool>(global0.a.x, false, global0.a.x, var_1.x), vec4<bool>(global0.a.x, true, true, global1.c.x), select(vec4<bool>(global1.d, false, true, true), vec4<bool>(global1.d, global0.a.x, true, true), vec4<bool>(true, true, false, global0.a.x)))))).b;
    global2 = array<i32, 21>();
    return ~(-80499i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 21>();
    global2 = array<i32, 21>();
    var var_0 = func_1(-42934i, !(!(!global1.c)));
    global1 = Struct_3(global0.b, -(~global0.b.a), vec2<bool>(global1.c.x, false), false, vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(global1.e, _wgslsmith_mult_vec3_u32(global1.e, global1.e)), global1.e), ~min(min(global1.e.x, u_input.c), _wgslsmith_clamp_u32(50887u, 11066u, u_input.d)), 20122u ^ (global1.e.x & 4294967295u)));
    global2 = array<i32, 21>();
    global2 = array<i32, 21>();
    global2 = array<i32, 21>();
    global1 = Struct_3(global1.a, firstLeadingBit(func_1(_wgslsmith_div_i32(func_3(), global2[_wgslsmith_index_u32(global1.e.x, 21u)]), select(!vec2<bool>(var_0.b.a.x, false), global0.a, vec2<bool>(var_0.b.a.x, false))).b.b.a), var_0.b.a, global1.d, _wgslsmith_sub_vec3_u32(vec3<u32>(7394u, _wgslsmith_dot_vec3_u32(global1.e, vec3<u32>(15376u, 1u, 36448u)), ~global1.e.x), abs(vec3<u32>(global1.e.x, ~global1.e.x, global1.e.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~var_0.a.a, vec2<i32>(57278i, 23520i)), vec2<i32>(global0.b.a.x, -7434i & global1.a.a.x)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(0u, global1.e.x, global1.e.x)), _wgslsmith_mod_vec3_u32(global1.e, max(vec3<u32>(21867u, u_input.b, global1.e.x), global1.e))), ~(~0u)));
}

