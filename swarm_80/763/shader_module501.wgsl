struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 14>;

var<private> global1: array<i32, 25>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<u32>) -> vec2<u32> {
    global0 = array<vec2<bool>, 14>();
    var var_0 = (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, u_input.c), vec2<u32>(0u, 12884u << (0u % 32u))) ^ (firstTrailingBit(u_input.b.x) >> (6944u % 32u))) & _wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(1u), abs(firstLeadingBit(arg_2.x))), countOneBits(countOneBits(u_input.b)));
    var_0 = ~(u_input.a.x >> (~(arg_2.x << (0u % 32u)) % 32u));
    return vec2<u32>(~(_wgslsmith_sub_u32(~65978u, arg_2.x | 13476u) ^ 4294967295u), ~(~abs(~45252u)));
}

fn func_4(arg_0: vec2<u32>, arg_1: u32) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-1f));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)));
    global1 = array<i32, 25>();
    let var_2 = _wgslsmith_dot_vec3_i32(max(firstLeadingBit(vec3<i32>(u_input.e, -2147483647i, -2147483647i)) & ~vec3<i32>(26344i, global1[_wgslsmith_index_u32(u_input.c, 25u)], -2901i), -select(vec3<i32>(1i, global1[_wgslsmith_index_u32(1u, 25u)], u_input.e), vec3<i32>(global1[_wgslsmith_index_u32(19444u, 25u)], u_input.d, u_input.e), vec3<bool>(false, true, false))) & vec3<i32>(-(~u_input.d), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, -1i), vec2<i32>(-1i, -1i) & vec2<i32>(global1[_wgslsmith_index_u32(0u, 25u)], 8230i)), u_input.d), (_wgslsmith_mod_vec3_i32(abs(vec3<i32>(1i, 0i, 32148i)), _wgslsmith_mod_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 25u)], u_input.d, global1[_wgslsmith_index_u32(1u, 25u)]), vec3<i32>(-1i, -1i, 35330i))) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(78668u, u_input.b.x, u_input.b.x), ~vec3<u32>(1u, 11154u, arg_0.x)) % vec3<u32>(32u))) ^ (~vec3<i32>(-2147483647i, -1i, -29396i) ^ _wgslsmith_add_vec3_i32(-vec3<i32>(23719i, -1i, u_input.d), ~vec3<i32>(38668i, -1i, -2147483647i))));
    let var_3 = Struct_1(var_0.a);
    return -_wgslsmith_mult_i32(-5912i, ~_wgslsmith_sub_i32(2147483647i, u_input.d));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: vec4<u32>, arg_3: u32) -> vec2<i32> {
    global1 = array<i32, 25>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -648f));
    global0 = array<vec2<bool>, 14>();
    global0 = array<vec2<bool>, 14>();
    let var_1 = min(vec4<i32>(83068i, func_4(func_3(false, var_0, u_input.b ^ vec2<u32>(u_input.b.x, u_input.a.x)), arg_2.x), arg_0, 26745i), _wgslsmith_sub_vec4_i32(countOneBits(min(vec4<i32>(33788i, 39085i, u_input.e, u_input.e), vec4<i32>(arg_0, 1i, -52165i, -5951i)) | (vec4<i32>(-23149i, u_input.d, -47583i, u_input.e) | vec4<i32>(global1[_wgslsmith_index_u32(0u, 25u)], global1[_wgslsmith_index_u32(arg_2.x, 25u)], u_input.d, 0i))), _wgslsmith_mod_vec4_i32(select(-vec4<i32>(-2694i, 394i, 2147483647i, u_input.d), vec4<i32>(-44548i, u_input.d, global1[_wgslsmith_index_u32(u_input.a.x, 25u)], 0i), all(vec3<bool>(arg_1.x, false, arg_1.x))), ~abs(vec4<i32>(0i, arg_0, -2147483647i, 91934i)))));
    return vec2<i32>(countOneBits(~(-u_input.e)), arg_0);
}

fn func_1() -> StorageBuffer {
    let var_0 = func_2(1i, select(vec2<bool>(true, true), global0[_wgslsmith_index_u32(6556u, 14u)], !global0[_wgslsmith_index_u32(reverseBits(~4294967295u), 14u)]), ~_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.c, u_input.a.x, u_input.b.x), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.b.x, 32435u, 54405u), vec4<u32>(1u, 50196u, 43926u, 1u))), countOneBits(vec4<u32>(u_input.a.x, u_input.b.x, 73699u, u_input.a.x)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1379u), vec4<u32>(44407u, 24388u, 22586u, 1u)) % vec4<u32>(32u))), 1u);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-429f + 639f))))));
    var var_2 = ~u_input.b.x;
    let var_3 = vec4<f32>(-1043f, _wgslsmith_f_op_f32(var_1.a + -1000f), 629f, _wgslsmith_f_op_f32(-3674f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + _wgslsmith_f_op_f32(var_1.a + var_1.a))))));
    global0 = array<vec2<bool>, 14>();
    return StorageBuffer(min(select(vec4<u32>(u_input.a.x & 1u, ~u_input.a.x, u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 149u, u_input.c), vec3<u32>(u_input.a.x, u_input.c, 1u))), ~abs(vec4<u32>(u_input.c, u_input.b.x, 0u, u_input.c)), vec4<bool>(true, true, true, true)), vec4<u32>(0u, 58644u, 50141u, 17625u)), -897f, firstTrailingBit(~vec3<u32>(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.b.x), 4294967295u, ~u_input.a.x)), _wgslsmith_f_op_f32(-var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

