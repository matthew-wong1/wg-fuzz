struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(35613i, 61434i, -4715i, -36385i, 0i, 2147483647i, 5873i, 37099i, -26951i, 28635i, 30765i, i32(-2147483648), -1020i, -50221i, 25586i, 31444i, i32(-2147483648), 2147483647i, -52823i, i32(-2147483648), 1i, 13919i, -1i, 81252i);

var<private> global1: Struct_1 = Struct_1(vec2<u32>(18259u, 75294u));

var<private> global2: array<Struct_1, 17>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>) -> f32 {
    var var_0 = arg_1.x;
    let var_1 = _wgslsmith_mult_i32(~max(1i, u_input.b.x << (~global1.a.x % 32u)), 2147483647i);
    var var_2 = _wgslsmith_mult_i32(1i, 23932i) ^ abs(u_input.b.x);
    return _wgslsmith_f_op_f32(arg_0 + -603f);
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1128f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-759f + 654f))), vec3<bool>(false, any(vec3<bool>(true, false, false)), false))), -319f) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(696f, 656f, 1217f, -759f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(454f, -593f, 626f, 1189f))))))));
    let var_1 = Struct_2(56840u);
    global1 = Struct_1(vec2<u32>(~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 85189u, 1u, global1.a.x), vec4<u32>(u_input.a.x, 16486u, 83758u, var_1.a)), ~vec4<u32>(1u, 4294967295u, 1u, u_input.a.x)), ~1u));
    global0 = array<i32, 24>();
    global2 = array<Struct_1, 17>();
    return var_1.a;
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = Struct_1(vec2<u32>(arg_2.a.x ^ u_input.c, global1.a.x));
    var var_1 = abs(firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), var_0.a.x), 12044u)));
    let var_2 = Struct_2(u_input.a.x);
    global1 = Struct_1(~vec2<u32>(~4294967295u, ~(~u_input.c)));
    var var_3 = -7542i;
    return vec2<u32>(~(~func_2()), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(28988u, u_input.c ^ 1u)), global1.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(vec2<u32>(~global1.a.x, 0u));
    global2 = array<Struct_1, 17>();
    global2 = array<Struct_1, 17>();
    let var_0 = Struct_1(func_1(vec3<f32>(_wgslsmith_f_op_f32(-1f), -509f, 1475f), -13151i, Struct_1(~global1.a)));
    global0 = array<i32, 24>();
    let var_1 = Struct_1(~(~_wgslsmith_clamp_vec2_u32(global1.a, var_0.a, vec2<u32>(0u, 1u))) << (vec2<u32>(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(var_0.a.x, global1.a.x)), _wgslsmith_mult_vec2_u32(global1.a, global1.a)), 1u) % vec2<u32>(32u)));
    var var_2 = -_wgslsmith_dot_vec4_i32(vec4<i32>(min(43117i, countOneBits(u_input.b.x)), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b.x, u_input.b.x, -4508i), select(vec3<i32>(1732i, global0[_wgslsmith_index_u32(35503u, 24u)], u_input.b.x), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], -2147483647i, global0[_wgslsmith_index_u32(var_1.a.x, 24u)]), true)), _wgslsmith_dot_vec2_i32(~u_input.b, vec2<i32>(23891i, 9279i)), u_input.b.x), min(-(~vec4<i32>(global0[_wgslsmith_index_u32(var_0.a.x, 24u)], 0i, 2147483647i, 2147483647i)), firstLeadingBit(reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], u_input.b.x, global0[_wgslsmith_index_u32(8801u, 24u)], u_input.b.x)))));
    var var_3 = _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b, _wgslsmith_div_vec2_i32(~reverseBits(u_input.b), vec2<i32>(1i, u_input.b.x))), select(countOneBits(vec2<i32>(1i, _wgslsmith_add_i32(u_input.b.x, u_input.b.x))), _wgslsmith_mult_vec2_i32(firstLeadingBit(~u_input.b), -vec2<i32>(u_input.b.x, -1i)), all(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-vec3<i32>(-2147483647i, 8699i, global0[_wgslsmith_index_u32(16105u, 24u)]) | select(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, 13053i, 2147483647i), vec3<i32>(2147483647i, 0i, global0[_wgslsmith_index_u32(u_input.d, 24u)])), vec3<i32>(1i, 34224i, -2147483647i), true)), ~(-(vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, u_input.b.x, global0[_wgslsmith_index_u32(var_0.a.x, 24u)], var_3.x))), abs(-vec3<i32>(-13494i & u_input.b.x, -45134i, -7468i | var_3.x)));
}

