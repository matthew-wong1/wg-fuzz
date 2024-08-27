struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: u32,
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

var<private> global0: array<Struct_1, 26>;

var<private> global1: vec3<f32> = vec3<f32>(-1000f, -881f, -476f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<i32>) -> vec2<bool> {
    var var_0 = vec2<u32>(_wgslsmith_mult_u32(abs(~_wgslsmith_add_u32(u_input.d, u_input.d)), u_input.d), 4294967295u);
    let var_1 = Struct_1(arg_0);
    var_0 = _wgslsmith_clamp_vec2_u32(~abs(abs(~vec2<u32>(30357u, 51996u))), ~_wgslsmith_add_vec2_u32(firstTrailingBit(abs(vec2<u32>(4294967295u, 39555u))), reverseBits(abs(vec2<u32>(1u, 0u)))), ~countOneBits(~vec2<u32>(var_0.x, 4814u)));
    let var_2 = Struct_1(vec2<i32>(var_1.a.x, 28439i));
    let var_3 = Struct_1(-abs((vec2<i32>(u_input.c.x, -1i) | vec2<i32>(-30170i, -24563i)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 60389u), vec2<u32>(var_0.x, 1u)) % vec2<u32>(32u))));
    return select(!vec2<bool>(true, all(vec4<bool>(false, false, false, true))), !vec2<bool>(all(vec3<bool>(false, false, false)) & any(vec4<bool>(true, false, true, false)), true), vec2<bool>((-46280i << ((4294967295u >> (var_0.x % 32u)) % 32u)) < abs(-var_3.a.x), true));
}

fn func_2() -> Struct_1 {
    var var_0 = vec2<bool>(~firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 4294967295u, u_input.b), vec3<u32>(u_input.b, u_input.d, u_input.d))) >= u_input.b, u_input.b > ~(~(48763u & u_input.b)));
    var var_1 = u_input.b;
    let var_2 = any(select(!vec3<bool>(any(vec3<bool>(false, true, var_0.x)), !var_0.x, select(true, false, var_0.x)), vec3<bool>(true, var_0.x, false), !select(vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(true, var_0.x, var_0.x), var_0.x), var_0.x)));
    var var_3 = Struct_1(-u_input.c);
    var var_4 = !func_3(-u_input.c, vec4<i32>(select(-1i, _wgslsmith_div_i32(-2147483647i, 1013i), var_2), countOneBits(0i), 1i, -1i));
    return Struct_1(~u_input.c);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    var var_0 = func_2();
    var var_1 = vec4<i32>(_wgslsmith_mult_i32(u_input.a, func_2().a.x), 47231i, u_input.c.x, _wgslsmith_sub_i32(abs(1i), _wgslsmith_sub_i32(-47248i, arg_1.a.x) ^ -arg_0.x));
    var var_2 = true;
    let var_3 = arg_1;
    var var_4 = ~(-7052i) ^ ~_wgslsmith_div_i32(0i ^ var_1.x, 0i);
    return Struct_1(~min(countOneBits(vec2<i32>(u_input.c.x, var_1.x)), arg_0.xz));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 26>();
    let var_0 = global0[_wgslsmith_index_u32(u_input.b, 26u)];
    let var_1 = func_1(vec3<i32>(-u_input.a, -13514i, var_0.a.x), Struct_1(~min(~u_input.c, vec2<i32>(var_0.a.x, u_input.a))), u_input.b);
    var var_2 = ~(~(~1u));
    let var_3 = all(select(vec4<bool>(true, !(var_1.a.x != 2147483647i), true, true), select(vec4<bool>(false, false, 0i >= var_1.a.x, true), vec4<bool>(true, select(true, false, true), -1716f != global1.x, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, func_3(vec2<i32>(u_input.a, 8481i), countOneBits(vec4<i32>(38415i, var_0.a.x, u_input.a, -11776i))).x, u_input.d <= ~0u, any(vec3<bool>(true, true, true)))));
    var_2 = 1u;
    var var_4 = ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, ~_wgslsmith_dot_vec3_u32(vec3<u32>(14812u, u_input.d, u_input.d), vec3<u32>(u_input.d, 0u, u_input.d)), 0u), firstLeadingBit(min(vec3<u32>(0u, u_input.d, 36875u), vec3<u32>(u_input.b, u_input.d, 1u))));
    global1 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-571f, -1804f)))), 1f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_mult_i32(-29012i, var_0.a.x), var_0.a.x | u_input.a), min(-vec3<i32>(-2147483647i, 1i, u_input.a), vec3<i32>(u_input.a, u_input.c.x, var_1.a.x))) >> ((vec3<u32>(_wgslsmith_sub_u32(u_input.d, var_4.x), ~31418u, 1u) >> (vec3<u32>(abs(52783u), 20275u, _wgslsmith_mult_u32(var_4.x, u_input.b)) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

