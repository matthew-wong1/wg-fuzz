struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec4<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(-1152f, vec4<u32>(4294967295u, 29632u, 3963u, 58833u), Struct_3(Struct_1(1239f, true, 635f)));

var<private> global1: array<Struct_2, 20>;

var<private> global2: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(Struct_1(-1000f, false, 1892f)), Struct_2(Struct_1(403f, true, -2014f)), Struct_2(Struct_1(-134f, true, 471f)), Struct_2(Struct_1(1000f, true, -573f)), Struct_2(Struct_1(-848f, false, -1865f)), Struct_2(Struct_1(809f, true, -442f)), Struct_2(Struct_1(-1962f, false, -905f)), Struct_2(Struct_1(816f, true, 1430f)), Struct_2(Struct_1(1866f, true, 788f)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(34025i, 32621i, u_input.a), vec3<i32>(u_input.b.x, u_input.a, -7929i)), u_input.a), -(~vec2<i32>(-30168i, -1i))), _wgslsmith_add_vec2_i32(u_input.b, u_input.b));
    var var_1 = vec3<u32>(_wgslsmith_mult_u32(global0.b.x, global0.b.x), max(_wgslsmith_clamp_u32(~4294967295u, firstTrailingBit(global0.b.x), reverseBits(global0.b.x)), reverseBits(4294967295u)) << (~14591u % 32u), _wgslsmith_mult_u32(min(_wgslsmith_clamp_u32(1u, ~4294967295u, 1u), _wgslsmith_dot_vec2_u32(~vec2<u32>(59493u, 40434u), ~global0.b.wy)), ~(select(global0.b.x, 1u, global0.c.a.b) | reverseBits(48992u))));
    var var_2 = u_input.b;
    let var_3 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(countOneBits(-select(-49090i, var_2.x, global0.c.a.b)), var_2.x), var_0.x);
    var var_4 = !vec2<bool>(global0.c.a.b, global0.c.a.b);
    let var_5 = global0.b.wyw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.a.a, global0.c.a.a, 199f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, global0.c.a.c, global0.a))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, global0.c.a.c, global0.c.a.a) + vec3<f32>(global0.c.a.a, global0.c.a.c, -1217f))))), abs(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-32378i, -1i, -1i, 15918i), vec4<i32>(var_3, 8155i, 58630i, 34596i)), ~vec4<i32>(-1i, var_2.x, var_2.x, -1i)), -40599i, -58529i, 1i)));
}

