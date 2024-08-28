struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
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

var<private> global0: array<vec3<bool>, 22>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32, arg_1: vec3<i32>) -> Struct_1 {
    global0 = array<vec3<bool>, 22>();
    global0 = array<vec3<bool>, 22>();
    global0 = array<vec3<bool>, 22>();
    let var_0 = abs(vec4<i32>(i32(-1i) * -arg_1.x, u_input.a.x, 0i, 0i)) | (-((vec4<i32>(-15160i, 9221i, 31174i, arg_1.x) >> (vec4<u32>(arg_0, 45273u, 0u, 0u) % vec4<u32>(32u))) | firstLeadingBit(vec4<i32>(-1i, -1i, u_input.a.x, -2457i))) ^ ~(~vec4<i32>(u_input.a.x, -71597i, arg_1.x, 0i)));
    var var_1 = true;
    return Struct_1(_wgslsmith_add_u32(u_input.c.x, arg_0), vec2<u32>(u_input.c.x, ~(~(16601u | u_input.c.x))), u_input.b, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c.x >> (4294967295u % 32u), select(2831u, 1u, !all(vec2<bool>(false, false)))), 22u)]);
}

fn func_1(arg_0: vec4<i32>) -> Struct_4 {
    let var_0 = Struct_1(168458u, ~countOneBits(max(~u_input.c.xx, u_input.c.yx)), arg_0.x, global0[_wgslsmith_index_u32(~0u, 22u)]);
    let var_1 = func_2(_wgslsmith_mod_u32(u_input.c.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(abs(20271u), u_input.c.x), ~(~24689u))), arg_0.xwy);
    var var_2 = var_0.d;
    global0 = array<vec3<bool>, 22>();
    var_2 = vec3<bool>(!(~u_input.c.x > 1u) & var_2.x, !var_2.x, var_0.a < 8079u);
    return Struct_4(1u);
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: Struct_2, arg_3: Struct_3) -> u32 {
    var var_0 = select(vec4<i32>(-54789i, u_input.a.x & ~arg_3.b.c, 7681i, u_input.a.x), -(~vec4<i32>(arg_2.a.c, arg_3.b.c, 11555i, ~1i)), any(arg_3.b.d.yy));
    let var_1 = arg_3;
    let var_2 = arg_0;
    let var_3 = arg_2.a.d;
    var_0 = -(max(abs(firstTrailingBit(vec4<i32>(-1i, -4500i, -41006i, -25935i))), vec4<i32>(-var_0.x, firstTrailingBit(var_1.a.c), _wgslsmith_add_i32(27659i, -56239i), max(-1i, var_0.x))) ^ ~vec4<i32>(var_0.x, u_input.b, abs(6582i), _wgslsmith_sub_i32(arg_3.b.c, -2147483647i)));
    return arg_0.a;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: bool, arg_3: vec4<bool>) -> Struct_2 {
    var var_0 = ~vec4<u32>(arg_0.a, select(_wgslsmith_mod_u32(22442u, arg_1.b.b.x), _wgslsmith_clamp_u32(arg_0.a, arg_1.b.b.x, 4294967295u), any(arg_3.xz)), ~u_input.c.x | 5298u, u_input.c.x) << (vec4<u32>(9924u, ~u_input.c.x, 11304u, 16862u) % vec4<u32>(32u));
    let var_1 = Struct_3(func_2(arg_1.b.a, vec3<i32>(~_wgslsmith_mod_i32(u_input.b, u_input.a.x), (-2147483647i >> (var_0.x % 32u)) | arg_1.a.c, _wgslsmith_mod_i32(arg_1.b.c, _wgslsmith_dot_vec4_i32(vec4<i32>(-10304i, arg_1.b.c, u_input.b, -1i), vec4<i32>(2147483647i, arg_1.b.c, 1i, arg_1.b.c))))), Struct_1(~(~var_0.x), vec2<u32>(func_3(func_1(vec4<i32>(u_input.b, -2147483647i, -24280i, 2147483647i)), _wgslsmith_f_op_f32(f32(-1f) * -318f), Struct_2(Struct_1(34471u, arg_1.a.b, 1i, arg_1.b.d)), arg_1), _wgslsmith_clamp_u32(var_0.x, var_0.x, 8604u) << (4294967295u % 32u)), abs(~0i), !(!(!vec3<bool>(arg_1.b.d.x, arg_1.a.d.x, arg_1.b.d.x)))));
    global0 = array<vec3<bool>, 22>();
    let var_2 = ~2494u;
    var_0 = vec4<u32>(1u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(_wgslsmith_div_u32(0u, 4294967295u), var_2), _wgslsmith_sub_vec2_u32(var_0.yz, vec2<u32>(var_2, var_2) & vec2<u32>(12752u, var_0.x)), func_2(_wgslsmith_mod_u32(var_2, var_1.b.b.x), abs(u_input.a)).d.xy), select(~(arg_1.b.b ^ u_input.c.zx), vec2<u32>(0u | var_0.x, ~arg_1.b.a), true)), var_1.a.b.x, 4294967295u);
    return Struct_2(var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 22>();
    let var_0 = ~_wgslsmith_add_vec3_i32(~_wgslsmith_mod_vec3_i32(u_input.a, abs(u_input.a)), vec3<i32>(i32(-1i) * -43267i, 6489i, -u_input.a.x));
    global0 = array<vec3<bool>, 22>();
    var var_1 = func_4(func_1(vec4<i32>(var_0.x, 1i >> (_wgslsmith_sub_u32(u_input.c.x, 92089u) % 32u), _wgslsmith_clamp_i32(1i, u_input.b, select(u_input.a.x, 1i, false)), 3584i)), Struct_3(Struct_1(12545u, vec2<u32>(u_input.c.x, 1u), ~(-1i), global0[_wgslsmith_index_u32(u_input.c.x, 22u)]), Struct_1(abs(func_3(Struct_4(u_input.c.x), 1867f, Struct_2(Struct_1(0u, u_input.c.yy, -7433i, vec3<bool>(false, true, true))), Struct_3(Struct_1(u_input.c.x, vec2<u32>(u_input.c.x, u_input.c.x), -22816i, vec3<bool>(true, false, false)), Struct_1(38167u, u_input.c.yz, var_0.x, vec3<bool>(true, false, false))))), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 4294967295u), u_input.c.yx), ~u_input.c.x), _wgslsmith_dot_vec3_i32(select(var_0, u_input.a, true), vec3<i32>(var_0.x, 5975i, var_0.x)), global0[_wgslsmith_index_u32(0u, 22u)])), any(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), !select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true));
    var_1 = Struct_2(Struct_1(1172u, ~vec2<u32>(_wgslsmith_sub_u32(u_input.c.x, 25175u), ~0u), firstTrailingBit(u_input.a.x) & abs(1i), vec3<bool>(var_1.a.d.x, u_input.c.x < func_4(Struct_4(1u), Struct_3(Struct_1(82112u, var_1.a.b, 2147483647i, vec3<bool>(var_1.a.d.x, true, var_1.a.d.x)), Struct_1(var_1.a.b.x, var_1.a.b, -23023i, vec3<bool>(true, var_1.a.d.x, var_1.a.d.x))), true, vec4<bool>(var_1.a.d.x, var_1.a.d.x, var_1.a.d.x, var_1.a.d.x)).a.a, func_2(reverseBits(u_input.c.x), vec3<i32>(u_input.b, -2147483647i, u_input.b)).d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mult_u32(~u_input.c.x, u_input.c.x)));
}

