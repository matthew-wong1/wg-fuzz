struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<f32>,
    c: vec2<u32>,
    d: Struct_4,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(83493i, 0i);

var<private> global1: i32 = -73608i;

var<private> global2: array<vec3<f32>, 11>;

var<private> global3: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>) -> f32 {
    var var_0 = 51267u;
    let var_1 = vec4<i32>(-1i) * -arg_1;
    var_0 = _wgslsmith_sub_u32(u_input.b, min(_wgslsmith_mult_u32((u_input.b << (u_input.b % 32u)) << (countOneBits(10156u) % 32u), u_input.b), ~_wgslsmith_add_u32(_wgslsmith_add_u32(49419u, 69457u), 0u)));
    global3 = array<Struct_1, 9>();
    var_0 = countOneBits(_wgslsmith_mod_u32(abs(select(~u_input.b, u_input.b, select(true, true, false))), 8375u));
    return _wgslsmith_div_f32(-1285f, _wgslsmith_f_op_f32(-arg_0));
}

fn func_2() -> Struct_2 {
    let var_0 = -(firstLeadingBit(abs(_wgslsmith_mult_i32(global0.x, 2147483647i))) ^ _wgslsmith_mult_i32(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(~u_input.c, u_input.c | vec2<i32>(2147483647i, 22156i))));
    global3 = array<Struct_1, 9>();
    let var_1 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1373f - -234f) * _wgslsmith_f_op_f32(f32(-1f) * -674f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(376f * 311f))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(213f, -955f)), -480f, u_input.b > u_input.b))))), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, -1i, global0.x, 7650i), countOneBits(vec4<i32>(-1i, 1i, var_0, -2147483647i)))) ^ select(~(~vec4<i32>(-1i, -2147483647i, u_input.c.x, -2147483647i)), ~(-vec4<i32>(u_input.c.x, var_0, -1i, u_input.a)), vec4<bool>(true, true, true, true))));
    let var_2 = Struct_1(vec2<bool>(true, true));
    global0 = _wgslsmith_div_vec2_i32(-vec2<i32>(_wgslsmith_sub_i32(~var_0, global0.x | global0.x), global0.x), u_input.c);
    return Struct_2(Struct_1(select(vec2<bool>(var_2.a.x, var_2.a.x), vec2<bool>(var_2.a.x, true), false)), Struct_1(select(var_2.a, var_2.a, true)), -41936i, ~vec2<u32>(122871u, 1u));
}

fn func_1() -> i32 {
    let var_0 = func_2();
    let var_1 = -3118i;
    global2 = array<vec3<f32>, 11>();
    global3 = array<Struct_1, 9>();
    global0 = ~vec2<i32>(-max(~29875i, var_0.c >> (var_0.d.x % 32u)), var_1 ^ ~(-u_input.c.x));
    return _wgslsmith_div_i32(24827i, 64630i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.c;
    let var_0 = abs(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(1u, 1u)), ~vec2<u32>(u_input.b, u_input.b) | vec2<u32>(1u, 1u))) >> (_wgslsmith_mult_vec2_u32(~vec2<u32>(1u, _wgslsmith_sub_u32(u_input.b, u_input.b)), max(select(select(vec2<u32>(23240u, 6687u), vec2<u32>(4294967295u, u_input.b), true), vec2<u32>(u_input.b, u_input.b), vec2<bool>(true, true)), ~(~vec2<u32>(u_input.b, u_input.b)))) % vec2<u32>(32u));
    global2 = array<vec3<f32>, 11>();
    global1 = 0i;
    var var_1 = ~_wgslsmith_sub_i32(~_wgslsmith_clamp_i32(u_input.a, u_input.c.x, -10979i), _wgslsmith_mod_i32(-2147483647i, func_1())) << (_wgslsmith_div_u32(firstTrailingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), var_0)), _wgslsmith_dot_vec4_u32(vec4<u32>(~93196u, var_0.x, var_0.x, 1u), ~vec4<u32>(0u, 75316u, 4294967295u, 1u))) % 32u);
    var var_2 = select(select(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(any(vec2<bool>(true, true)), 0u < u_input.b)), select(func_2().a.a, !func_2().b.a, select(vec2<bool>(all(vec3<bool>(false, true, false)), all(vec2<bool>(false, true))), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, true), true), false), all(vec3<bool>(true, true, true)))), true);
    global3 = array<Struct_1, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<i32>(global0.x, 0i, _wgslsmith_mult_i32(u_input.a, global0.x)), ~(vec3<i32>(13747i, global0.x, -1i) >> (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u)))) | -(_wgslsmith_sub_vec3_i32(vec3<i32>(-14568i, u_input.c.x, u_input.c.x), vec3<i32>(2147483647i, global0.x, global0.x)) >> (abs(vec3<u32>(61402u, 26147u, 0u)) % vec3<u32>(32u))), abs(abs(vec4<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, var_0.x), vec3<u32>(u_input.b, u_input.b, u_input.b)), var_0.x, _wgslsmith_mod_u32(var_0.x, 44458u)))));
}

