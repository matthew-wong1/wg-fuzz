struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: array<Struct_2, 1>;

var<private> global2: Struct_2;

var<private> global3: Struct_1 = Struct_1(30700u, 1u, i32(-2147483648), false, vec4<bool>(true, true, false, true));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    var var_0 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(0i, u_input.c, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b.x, global2.a.c, 1i), abs(u_input.b.wzy))), 29583i);
    var_0 = firstLeadingBit(-46222i);
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(0u, 1u)], max(min(global2.b, global2.b), -select(min(u_input.b, vec4<i32>(u_input.b.x, -37829i, 1i, global2.b.x)), global2.b, vec4<bool>(global3.d, global2.a.d, global3.d, global3.e.x))));
    global3 = var_1.a;
    var var_2 = -1000f;
    return reverseBits(countOneBits(var_1.a.a >> (4294967295u % 32u)));
}

fn func_2() -> Struct_2 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(53451u, _wgslsmith_div_u32(u_input.a, ~(min(global3.b, global3.a) << (_wgslsmith_mult_u32(u_input.a, 0u) % 32u)))), 1u)];
    var var_1 = countOneBits(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(var_0.a.b, global3.b, 421u) ^ ~4294967295u, 0u, global3.b), u_input.a));
    var var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(global2.a.b, u_input.a, 18141u, var_0.a.b) ^ _wgslsmith_div_vec4_u32(vec4<u32>(22696u, 0u, u_input.a, 4294967295u), vec4<u32>(global2.a.a, 28396u, 27984u, 1u)), select(vec4<u32>(22093u, var_0.a.b, u_input.a, u_input.a), min(vec4<u32>(var_0.a.b, global3.b, 41636u, global2.a.b), vec4<u32>(1u, 1u, 1u, global2.a.a)), !vec4<bool>(true, global2.a.e.x, var_0.a.d, global2.a.d))), vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(60280u, global3.b)), ~vec2<u32>(var_0.a.b, global3.a)), 1u, func_3(vec2<f32>(-451f, 556f)), ~(~1u))), 1u)];
    global0 = array<Struct_1, 1>();
    global3 = Struct_1(~_wgslsmith_mod_u32(min(~4294967295u, var_0.a.a & global2.a.a), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_2.a.b, 4294967295u, var_2.a.b), vec4<u32>(u_input.a, global2.a.b, 4294967295u, u_input.a)) ^ u_input.a), u_input.a, _wgslsmith_mult_i32(u_input.c, 2147483647i), any(vec4<bool>(false, true, true, !(global3.b != global3.b))), var_0.a.e);
    return Struct_2(Struct_1(39925u, ~28344u, 24551i, var_0.a.e.x & true, select(vec4<bool>(true, true, select(global2.a.d, true, global3.d), all(global2.a.e.yy)), global2.a.e, !(!vec4<bool>(true, true, var_2.a.e.x, true)))), vec4<i32>(44358i, 2147483647i, u_input.b.x, select(-2147483647i, var_2.a.c, global3.e.x)) ^ -vec4<i32>(-global2.b.x, 2147483647i, 0i, -var_0.b.x));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec4<bool>) -> Struct_1 {
    global2 = global1[_wgslsmith_index_u32(~0u, 1u)];
    global0 = array<Struct_1, 1>();
    var var_0 = func_2();
    var var_1 = global1[_wgslsmith_index_u32(global3.b, 1u)];
    var var_2 = ~(~18199u);
    return func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 1>();
    var var_0 = Struct_2(func_1(2147483647i, global2.a.b, vec4<bool>(false, true, !global3.d, global3.e.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(-global3.c, _wgslsmith_dot_vec4_i32(global2.b, global2.b), u_input.b.x, -118i), ~select(vec4<i32>(17302i, global3.c, -9971i, -17338i) >> (vec4<u32>(u_input.a, 4294967295u, global3.b, u_input.a) % vec4<u32>(32u)), ~vec4<i32>(global2.a.c, 46459i, global3.c, global2.a.c), select(global3.e, vec4<bool>(global3.e.x, global3.e.x, global3.d, true), global3.e.x))));
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1351f))), -1325f, _wgslsmith_f_op_f32(-626f - _wgslsmith_f_op_f32(ceil(-722f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(229f, -588f, -676f)))))));
    var var_2 = select(func_2().a.e.xzx, !select(global3.e.yzy, func_1(global2.b.x, ~4294967295u, !global3.e).e.wzw, !(global3.b < 0u)), !all(vec4<bool>(true, var_0.a.d, global3.d, any(global3.e))));
    let var_3 = Struct_2(func_1(global2.b.x, var_0.a.b, global2.a.e), _wgslsmith_sub_vec4_i32(u_input.b, firstTrailingBit(_wgslsmith_div_vec4_i32(~vec4<i32>(global2.b.x, -2147483647i, var_0.b.x, 21846i), _wgslsmith_clamp_vec4_i32(var_0.b, var_0.b, vec4<i32>(2147483647i, var_0.a.c, -18526i, global3.c))))));
    let x = u_input.a;
    s_output = StorageBuffer(global2.b.yx, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))));
}

