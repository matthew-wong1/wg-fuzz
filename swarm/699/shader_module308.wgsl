struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5> = array<f32, 5>(-2566f, -349f, 542f, -1578f, -3221f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> vec2<bool> {
    global0 = array<f32, 5>();
    let var_0 = reverseBits(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.c.x, arg_0.b.a.x, arg_0.b.a.x, 4294967295u), ~vec4<u32>(u_input.c.x, arg_0.b.a.x, arg_0.b.a.x, 0u), vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, arg_1.a.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, 33072u, 45810u)), arg_1.a.x, u_input.c.x << (4294967295u % 32u))), vec4<u32>(5445u, arg_1.a.x, select(10929u, 1u, true), ~u_input.c.x)));
    global0 = array<f32, 5>();
    global0 = array<f32, 5>();
    global0 = array<f32, 5>();
    return vec2<bool>(false, true);
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: vec3<f32>) -> vec2<bool> {
    let var_0 = _wgslsmith_add_u32(~_wgslsmith_add_u32(u_input.c.x, firstTrailingBit(0u)), reverseBits(firstLeadingBit(arg_0.x)));
    let var_1 = u_input.b;
    let var_2 = Struct_1(min(abs(~vec3<u32>(17748u, 1u, 0u)), vec3<u32>(var_0, _wgslsmith_mult_u32(var_0, 1u), _wgslsmith_div_u32(max(arg_0.x, 34476u), ~15529u))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(312f, arg_2.x))) + arg_2.zx), vec2<f32>(_wgslsmith_f_op_f32(max(-926f, 1000f)), -826f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * global0[_wgslsmith_index_u32(u_input.c.x, 5u)]) + _wgslsmith_f_op_f32(round(arg_2.x))), _wgslsmith_f_op_f32(1000f + arg_2.x)))), u_input.b, -13962i);
    let var_3 = ~vec3<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_0, 24701u)) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 4294967295u), u_input.c) % vec2<u32>(32u)), select(arg_0, vec2<u32>(var_0, 1u), vec2<bool>(false, true))), ~var_2.a.x, 1u);
    global0 = array<f32, 5>();
    return !func_2(Struct_2(arg_2, Struct_1(var_2.a ^ vec3<u32>(u_input.c.x, var_2.a.x, 84417u), arg_2.xz, _wgslsmith_div_i32(6905i, var_2.c), 0i), ~vec3<i32>(-25325i, 2147483647i, var_1) >> ((vec3<u32>(0u, var_3.x, 1u) ^ vec3<u32>(var_0, arg_0.x, 0u)) % vec3<u32>(32u))), Struct_1(reverseBits(vec3<u32>(0u, u_input.c.x, var_2.a.x)), vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), -310f), _wgslsmith_sub_i32(arg_1, -var_2.d), 18621i));
}

fn func_1() -> StorageBuffer {
    var var_0 = Struct_1(vec3<u32>(~(~(~26255u)), 64791u, ~firstTrailingBit(u_input.c.x) << (_wgslsmith_clamp_u32(~u_input.c.x, u_input.c.x, 10730u) % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-184f, -2478f) + vec2<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 5u)], 556f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 5u)], -1017f), vec2<f32>(427f, -1000f))) - _wgslsmith_div_vec2_f32(vec2<f32>(-390f, global0[_wgslsmith_index_u32(48170u, 5u)]), vec2<f32>(403f, -983f))), select(func_2(Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(34956u, 5u)], global0[_wgslsmith_index_u32(u_input.c.x, 5u)], global0[_wgslsmith_index_u32(u_input.c.x, 5u)]), Struct_1(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec2<f32>(1843f, global0[_wgslsmith_index_u32(45095u, 5u)]), u_input.b, u_input.b), vec3<i32>(7422i, u_input.a, u_input.b)), Struct_1(vec3<u32>(u_input.c.x, 26690u, u_input.c.x), vec2<f32>(591f, global0[_wgslsmith_index_u32(6436u, 5u)]), 2147483647i, u_input.b)), vec2<bool>(true, true), all(vec3<bool>(true, true, false)))))), -1i, u_input.a);
    var var_1 = u_input.c.x;
    var var_2 = func_3(~u_input.c, u_input.b << (_wgslsmith_dot_vec2_u32(~select(u_input.c, vec2<u32>(8501u, 37141u), vec2<bool>(false, false)), reverseBits(vec2<u32>(0u, 15947u))) % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c.x, 5u)] * global0[_wgslsmith_index_u32(var_0.a.x, 5u)])))));
    var var_3 = u_input.a;
    var var_4 = vec4<i32>(12433i, ~(~(u_input.b ^ -34048i) | firstLeadingBit(_wgslsmith_sub_i32(-6901i, u_input.a))), u_input.a, 18145i ^ u_input.a);
    return StorageBuffer(vec3<u32>(firstTrailingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, 4294967295u), vec4<u32>(u_input.c.x, u_input.c.x, 71966u, 12515u))), 1u, 2743u), _wgslsmith_mod_vec2_u32(var_0.a.yz, min(u_input.c >> (var_0.a.zx % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a.x, var_0.a.x), firstTrailingBit(vec2<u32>(u_input.c.x, 1u))))), ~vec4<u32>(var_0.a.x, 0u, _wgslsmith_mod_u32(11062u, countOneBits(var_0.a.x)), 3108u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

