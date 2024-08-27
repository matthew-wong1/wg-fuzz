struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: i32,
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

var<private> global0: array<Struct_1, 8>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1() -> i32 {
    let var_0 = vec3<i32>(-39811i << (select(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 26916u), vec3<u32>(0u, 77538u, u_input.a))), u_input.a, true) % 32u), u_input.d, -(~(-1i)));
    global0 = array<Struct_1, 8>();
    return _wgslsmith_mod_i32(-2147483647i, u_input.d);
}

fn func_3() -> i32 {
    var var_0 = u_input.b | ~countOneBits(-_wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(5600i, u_input.c)));
    let var_1 = _wgslsmith_mod_vec2_u32(abs(~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(4294967295u, 28311u))) & vec2<u32>(8651u, 4294967295u), vec2<u32>(~u_input.a, min(u_input.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))));
    global0 = array<Struct_1, 8>();
    var_0 = ~(~(-firstLeadingBit(u_input.b)) >> (vec2<u32>(1u, _wgslsmith_clamp_u32(0u, ~0u, ~34557u)) % vec2<u32>(32u)));
    let var_2 = 317f;
    return 1i;
}

fn func_2() -> i32 {
    var var_0 = ~_wgslsmith_clamp_vec2_u32(abs(~vec2<u32>(u_input.a, 4294967295u)) << (min(vec2<u32>(17323u, 52672u), ~vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a ^ u_input.a, u_input.a), vec2<u32>(u_input.a, reverseBits(1u))), vec2<u32>(~(~1u), 1u));
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(541f, -438f), _wgslsmith_f_op_f32(-896f * 1000f), _wgslsmith_f_op_f32(f32(-1f) * -104f), _wgslsmith_f_op_f32(max(808f, -2305f))) - vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -339f), -684f, -230f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(109f, -785f, 904f, -2134f) * vec4<f32>(-768f, -1000f, -429f, -1843f)), vec4<f32>(-1000f, 991f, 1256f, -276f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1072f, _wgslsmith_f_op_f32(f32(-1f) * -300f), 1f))));
    var var_2 = func_3();
    let var_3 = Struct_3(var_1);
    global0 = array<Struct_1, 8>();
    return _wgslsmith_dot_vec4_i32(reverseBits(~vec4<i32>(19541i, u_input.e, max(u_input.e, u_input.b.x), _wgslsmith_sub_i32(u_input.d, u_input.d))), _wgslsmith_sub_vec4_i32(-abs(vec4<i32>(-25624i, -2147483647i, -19583i, u_input.b.x)), vec4<i32>(_wgslsmith_sub_i32(0i, u_input.d), -u_input.d, 1i, firstLeadingBit(3088i))) & _wgslsmith_add_vec4_i32(vec4<i32>(abs(u_input.c), u_input.d, -1i, 55095i), ~_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 1i, u_input.b.x, 3402i), vec4<i32>(-2147483647i, u_input.b.x, -2019i, u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_i32(func_1(), func_2() ^ -2147483647i);
    global0 = array<Struct_1, 8>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-259f, -731f)) + -1000f)), u_input.e, vec2<u32>(u_input.a, u_input.a), vec3<bool>(true, all(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), true)), true), max(max(vec3<u32>(~u_input.a, ~33846u, 0u), _wgslsmith_mult_vec3_u32(vec3<u32>(15835u, u_input.a, u_input.a) >> (vec3<u32>(64733u, u_input.a, 4294967295u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(0u, 4294967295u, u_input.a)))), select(firstTrailingBit(vec3<u32>(4672u, 1u, u_input.a)), min(vec3<u32>(85162u, 21077u, 1u), vec3<u32>(u_input.a, 6577u, u_input.a)), vec3<bool>(true, false, true)) | _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 1319u, 25065u) >> (vec3<u32>(u_input.a, 1u, 4294967295u) % vec3<u32>(32u)), vec3<u32>(u_input.a, u_input.a, 32328u) >> (vec3<u32>(0u, u_input.a, u_input.a) % vec3<u32>(32u)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(515f)))));
    global0 = array<Struct_1, 8>();
    global0 = array<Struct_1, 8>();
    var_1 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2))), -1713f)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c | _wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_0, var_0, 17699i), vec4<i32>(var_1.b, 4562i, var_0, var_1.b)), var_0), countOneBits(firstTrailingBit(-vec2<i32>(var_1.b, u_input.b.x)))), ~(~(var_1.c >> (~vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))), var_1.d, ~var_1.e);
    let x = u_input.a;
    s_output = StorageBuffer(~10390u);
}

