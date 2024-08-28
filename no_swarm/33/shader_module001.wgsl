struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec2<i32>,
    d: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<f32, 19>;

var<private> global2: array<Struct_1, 23>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1325f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -470f), global1[_wgslsmith_index_u32(abs(u_input.a), 19u)])))));
    global1 = array<f32, 19>();
    let var_1 = true == (u_input.c < u_input.c);
    global1 = array<f32, 19>();
    global2 = array<Struct_1, 23>();
    return vec2<bool>(true, any(vec3<bool>(true, var_1, false)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_4) -> f32 {
    let var_0 = vec3<bool>(all(select(arg_2.a, arg_2.a, any(vec4<bool>(true, true, arg_2.b, true)))), !arg_2.c.x, (arg_2.a.x & all(!vec3<bool>(true, arg_2.b, arg_2.b))) & true);
    global0 = (arg_0.a > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-862f + arg_0.a))) || true;
    let var_1 = Struct_3(arg_0.b.x, all(select(select(select(vec4<bool>(true, true, true, var_0.x), vec4<bool>(true, true, true, arg_2.b), vec4<bool>(var_0.x, var_0.x, var_0.x, true)), !vec4<bool>(false, var_0.x, arg_2.b, false), vec4<bool>(var_0.x, true, false, false)), vec4<bool>(arg_0.b.x > 7548i, var_0.x, var_0.x != true, !var_0.x), vec4<bool>(all(vec2<bool>(true, var_0.x)), all(vec4<bool>(true, true, arg_2.b, true)), true, !var_0.x))), vec2<i32>(9647i, firstLeadingBit(arg_0.b.x)), true);
    global0 = any(func_1());
    global0 = true;
    return _wgslsmith_f_op_f32(trunc(-1458f));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: f32) -> bool {
    var var_0 = arg_1;
    global2 = array<Struct_1, 23>();
    global1 = array<f32, 19>();
    let var_1 = 1u;
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -248f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a, arg_1.a)) * -211f);
    return !(_wgslsmith_mod_u32(~u_input.a >> (1u % 32u), abs(11528u)) > 18170u);
}

fn func_2() -> vec4<u32> {
    global1 = array<f32, 19>();
    global0 = true;
    var var_0 = vec3<bool>(func_4(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b.x, u_input.a, 4294967295u, u_input.b.x), ~vec4<u32>(u_input.a, 36156u, 64035u, 16057u)), Struct_2(_wgslsmith_f_op_f32(func_3(Struct_2(515f, vec2<i32>(u_input.c, u_input.c)), global2[_wgslsmith_index_u32(u_input.b.x, 23u)], Struct_4(vec3<bool>(true, true, false), false, vec2<bool>(false, false)))), ~vec2<i32>(-15300i, -21804i)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)), 425f) | all(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), true)), true, !any(vec4<bool>(true, true, true, true)));
    var var_1 = u_input.c;
    let var_2 = Struct_3(firstLeadingBit(1i), var_0.x & true, _wgslsmith_add_vec2_i32(abs(abs(vec2<i32>(-22160i, u_input.c) ^ vec2<i32>(u_input.c, 85972i))), -select(vec2<i32>(u_input.c, 0i), vec2<i32>(34469i, 824i), false) ^ (_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(-1i, 49465i)) ^ select(vec2<i32>(u_input.c, u_input.c), vec2<i32>(2147483647i, u_input.c), var_0.x))), var_0.x);
    return vec4<u32>(~(~0u), _wgslsmith_mod_u32((u_input.b.x & ~u_input.b.x) >> ((u_input.b.x | 16952u) % 32u), reverseBits(_wgslsmith_clamp_u32(0u, u_input.a, _wgslsmith_mult_u32(u_input.b.x, u_input.b.x)))), 1u >> (_wgslsmith_add_u32(max(u_input.a, u_input.b.x), ~u_input.b.x) % 32u), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(vec2<bool>(true, true), !(!func_1()), !func_1()));
    var var_1 = countOneBits(u_input.b);
    global0 = u_input.a >= var_1.x;
    var_1 = vec2<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.a, 4294967295u, 4294967295u, var_1.x), vec4<u32>(u_input.a, 30168u, 4294967295u, u_input.b.x), vec4<bool>(var_0, var_0, true, true)), vec4<u32>(var_1.x, var_1.x, 4500u, 4294967295u)) << (vec4<u32>(firstLeadingBit(u_input.b.x), _wgslsmith_div_u32(29817u, 4294967295u), _wgslsmith_div_u32(u_input.a, 22435u), _wgslsmith_mod_u32(0u, u_input.b.x)) % vec4<u32>(32u)), reverseBits(func_2())));
    var var_2 = -(~abs(vec4<i32>(u_input.c, 2147483647i, 2341i, u_input.c) >> (vec4<u32>(var_1.x, 1u, 1u, u_input.a) % vec4<u32>(32u))) ^ max(vec4<i32>(abs(u_input.c), u_input.c, 1i, -2147483647i), select(vec4<i32>(u_input.c, -24244i, 2147483647i, u_input.c), _wgslsmith_mod_vec4_i32(vec4<i32>(39618i, u_input.c, -1i, u_input.c), vec4<i32>(-2147483647i, u_input.c, u_input.c, u_input.c)), !vec4<bool>(var_0, true, var_0, false))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.c), ~(vec2<i32>(-1i) * -var_2.zy) << (firstLeadingBit(abs(~vec2<u32>(50664u, var_1.x))) % vec2<u32>(32u)), firstLeadingBit(var_2.xy & -vec2<i32>(u_input.c, var_2.x)) >> (vec2<u32>(~firstTrailingBit(u_input.b.x), firstLeadingBit(abs(3009u))) % vec2<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-523f, 842f)), _wgslsmith_f_op_f32(func_3(Struct_2(995f, var_2.zw), Struct_1(u_input.c), Struct_4(vec3<bool>(false, var_0, false), var_0, vec2<bool>(var_0, true))))), -122f), firstTrailingBit(~29491i));
}

