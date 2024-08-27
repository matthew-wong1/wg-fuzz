struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: f32,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: u32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: u32 = 1u;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    let var_0 = arg_2;
    global0 = array<Struct_2, 18>();
    let var_1 = var_0;
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(664f + _wgslsmith_f_op_f32(trunc(1398f))), 1043f));
    return var_2.d.x;
}

fn func_1(arg_0: bool, arg_1: vec2<f32>) -> u32 {
    var var_0 = Struct_3(Struct_1((vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x) | _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))) >> (vec4<u32>(u_input.b.x, reverseBits(u_input.b.x), u_input.b.x, 58750u) % vec4<u32>(32u))), !select(!vec2<bool>(arg_0, false), select(select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true)), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), vec2<bool>(false, true)), vec2<bool>(true, true)), vec2<bool>(true, u_input.a.x == u_input.a.x)), ~(~u_input.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), 1627f, _wgslsmith_div_f32(-669f, -2745f)))) + vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(Struct_3(Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, 114265u, u_input.b.x)), vec2<bool>(false, true), u_input.b.x, vec3<f32>(-632f, -592f, arg_1.x)), u_input.b.x, global0[_wgslsmith_index_u32(12384u, 18u)], Struct_1(vec4<u32>(18745u, u_input.b.x, 72711u, u_input.b.x)))), -919f)), 1038f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1245f, 724f)))));
    var var_1 = -197f;
    global0 = array<Struct_2, 18>();
    let var_2 = var_0.d.x;
    return var_0.a.a.x;
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(arg_3.a.x))));
    global0 = array<Struct_2, 18>();
    global0 = array<Struct_2, 18>();
    global0 = array<Struct_2, 18>();
    global1 = ~18180u << (reverseBits(~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(arg_1.a, vec4<u32>(arg_0, arg_0, 1u, u_input.b.x)), ~u_input.b.x)) % 32u);
    return _wgslsmith_add_u32(~31455u, firstTrailingBit(~4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(107f, -1015f))))) & u_input.b.x;
    let var_1 = global0[_wgslsmith_index_u32(func_3(min(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 4294967295u, 88845u, 16879u) << (vec4<u32>(1u, 4294967295u, 1u, u_input.b.x) % vec4<u32>(32u))), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(59882u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)))), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 40323u, u_input.b.x), vec4<u32>(30595u, 0u, u_input.b.x, 0u)), ~13605u)), Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 1u, 1u, u_input.b.x), ~firstLeadingBit(vec4<u32>(u_input.b.x, 1u, 4294967295u, u_input.b.x)))), true, global0[_wgslsmith_index_u32(~(~(~_wgslsmith_mult_u32(u_input.b.x, u_input.b.x))), 18u)]), 18u)];
    global0 = array<Struct_2, 18>();
    let var_2 = vec2<u32>(u_input.b.x, 4395u);
    let var_3 = var_1.a.x;
    var_0 = _wgslsmith_sub_u32(var_2.x, _wgslsmith_sub_u32(~max(var_2.x, u_input.b.x) >> ((16843u << (func_3(var_2.x, Struct_1(vec4<u32>(var_2.x, 1u, 4294967295u, 75735u)), var_1.d, global0[_wgslsmith_index_u32(var_2.x, 18u)]) % 32u)) % 32u), ~_wgslsmith_sub_u32(61105u, u_input.b.x)));
    var var_4 = Struct_1(_wgslsmith_mult_vec4_u32(min(vec4<u32>(41261u, var_2.x, var_2.x, 3523u), ~vec4<u32>(u_input.b.x, 1386u, var_2.x, var_2.x)), ~select(vec4<u32>(4294967295u, var_2.x, u_input.b.x, 1u), reverseBits(vec4<u32>(36176u, u_input.b.x, u_input.b.x, 4294967295u)), select(vec4<bool>(true, false, var_1.d, var_1.d), vec4<bool>(var_1.d, var_1.d, true, var_1.d), vec4<bool>(var_1.d, true, true, var_1.d)))));
    var var_5 = firstLeadingBit(_wgslsmith_mod_vec3_i32(firstTrailingBit(~u_input.a), vec3<i32>(_wgslsmith_div_i32(u_input.a.x, -2147483647i) ^ -var_1.b.x, -376i, 527i)));
    let var_6 = Struct_3(Struct_1(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(1u, 46526u, 0u, 25267u)), ~var_4.a)), !select(vec2<bool>(true, var_1.d), vec2<bool>(var_1.d, false), !vec2<bool>(true, var_1.d)), 1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.c, 127f, var_1.e)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_sub_i32(41884i, 1i), u_input.c.x, reverseBits(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_5.x, u_input.a.x, var_1.b.x), var_1.b.x)), abs(u_input.a.x)), ~abs(~(~1u)), _wgslsmith_mult_vec3_i32(~max(-u_input.c.wwz, -vec3<i32>(u_input.c.x, 52279i, u_input.c.x)), vec3<i32>(42675i, min(var_5.x, ~(-13900i)), 0i)), max(_wgslsmith_mod_i32(abs(1i), -66022i), ~(-7069i ^ -var_5.x)));
}

