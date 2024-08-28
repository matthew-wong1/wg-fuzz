struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: bool,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7>;

var<private> global1: array<vec2<u32>, 16>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2() -> i32 {
    global1 = array<vec2<u32>, 16>();
    let var_0 = Struct_1(8647u);
    global0 = array<i32, 7>();
    var var_1 = -498f;
    let var_2 = true & select(!(_wgslsmith_f_op_f32(trunc(917f)) >= _wgslsmith_f_op_f32(-1114f - -905f)), !(u_input.a >= 31219u), any(vec4<bool>(true, true, true, true)));
    return reverseBits(69565i);
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = arg_0.a.b;
    global1 = array<vec2<u32>, 16>();
    let var_1 = !(_wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, var_0.a), vec3<u32>(var_0.a, var_0.a, var_0.a)), vec3<u32>(2036u, u_input.a, u_input.a) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(55556u, u_input.a, u_input.a), vec3<u32>(1u, var_0.a, 4294967295u), vec3<u32>(var_0.a, u_input.a, 1u)) % vec3<u32>(32u))) < ~var_0.a);
    global0 = array<i32, 7>();
    var var_2 = vec2<i32>(u_input.c.x, -global0[_wgslsmith_index_u32(u_input.a, 7u)]);
    return var_1;
}

fn func_1(arg_0: f32) -> Struct_3 {
    var var_0 = _wgslsmith_mult_i32(firstLeadingBit(func_2()), global0[_wgslsmith_index_u32(~u_input.a & u_input.a, 7u)]) <= global0[_wgslsmith_index_u32(0u, 7u)];
    let var_1 = u_input.b >> (15248u % 32u);
    var var_2 = Struct_4(vec2<u32>(u_input.a, 35031u), func_3(Struct_3(Struct_2(vec3<bool>(true, true, true), Struct_1(u_input.a), ~53151u, ~u_input.a), Struct_1(1u), Struct_1(u_input.a | u_input.a))), vec2<u32>(u_input.a, abs(~(u_input.a | u_input.a))));
    let var_3 = Struct_2(vec3<bool>(arg_0 < _wgslsmith_f_op_f32(-arg_0), false, var_2.b || true), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(11220u, 4294967295u), var_2.a)), ~(~_wgslsmith_clamp_u32(26943u, _wgslsmith_mult_u32(42981u, u_input.a), 0u)), u_input.a);
    let var_4 = 5067i;
    return Struct_3(var_3, Struct_1(1u), Struct_1((var_3.b.a & ~u_input.a) << (var_2.a.x % 32u)));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>) -> u32 {
    return 68625u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(~1u, ~1u, ~max(u_input.a, 27858u));
    let var_1 = func_4(func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1274f, _wgslsmith_f_op_f32(-159f + -1000f)))), func_1(_wgslsmith_f_op_f32(932f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(365f + 657f) * _wgslsmith_f_op_f32(1000f + -519f)))).a.a);
    global0 = array<i32, 7>();
    let var_2 = Struct_1(48587u);
    global0 = array<i32, 7>();
    global0 = array<i32, 7>();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-521f))));
    var var_4 = Struct_4(_wgslsmith_mult_vec2_u32(((vec2<u32>(var_1, 0u) >> (vec2<u32>(var_1, 4294967295u) % vec2<u32>(32u))) >> (select(vec2<u32>(1u, 0u), var_0.xz, false) % vec2<u32>(32u))) ^ vec2<u32>(reverseBits(var_0.x), 0u), _wgslsmith_mod_vec2_u32(min(global1[_wgslsmith_index_u32(u_input.a, 16u)], firstTrailingBit(global1[_wgslsmith_index_u32(56693u, 16u)])), vec2<u32>(1u, u_input.a) >> (vec2<u32>(28625u, var_0.x) % vec2<u32>(32u)))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec2<bool>(true, true)), all(vec4<bool>(false, false, false, false)), true), vec4<bool>(true, true, true, true))), _wgslsmith_mult_vec2_u32(vec2<u32>(64355u, ~4294967295u), reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u) >> (var_0.zx % vec2<u32>(32u)), ~global1[_wgslsmith_index_u32(4294967295u, 16u)], var_0.xy))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<u32>(~var_2.a, var_2.a, firstTrailingBit(_wgslsmith_mod_u32(1u, var_4.c.x)))), _wgslsmith_sub_vec3_u32(var_0, min(abs(vec3<u32>(0u, 0u, var_4.c.x)), firstLeadingBit(var_0))), firstLeadingBit(1u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1072f - -1000f), -320f))), _wgslsmith_f_op_f32(-366f + _wgslsmith_f_op_f32(sign(-137f)))));
}

