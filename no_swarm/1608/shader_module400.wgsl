struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 7>;

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec4<bool>(false, false, true, false), 1385i, 33847u, vec2<i32>(-4463i, 34712i)), Struct_1(vec4<bool>(true, true, true, true), 2147483647i, 0u, vec2<i32>(-40709i, 0i)), Struct_1(vec4<bool>(true, true, true, true), i32(-2147483648), 16552u, vec2<i32>(31483i, 56938i)), Struct_1(vec4<bool>(false, true, false, true), 0i, 73235u, vec2<i32>(i32(-2147483648), 30242i)), Struct_1(vec4<bool>(false, false, true, false), -35908i, 0u, vec2<i32>(i32(-2147483648), -12470i)), Struct_1(vec4<bool>(false, false, true, true), -6933i, 4294967295u, vec2<i32>(1i, 1i)), Struct_1(vec4<bool>(true, true, true, true), 4830i, 4294967295u, vec2<i32>(39128i, -1i)), Struct_1(vec4<bool>(false, false, true, false), -62833i, 7856u, vec2<i32>(45739i, 55084i)), Struct_1(vec4<bool>(false, false, true, false), 28171i, 17392u, vec2<i32>(-34796i, -21463i)), Struct_1(vec4<bool>(true, false, true, false), -22943i, 35291u, vec2<i32>(-1i, -52413i)), Struct_1(vec4<bool>(true, false, true, true), -55346i, 70223u, vec2<i32>(61417i, i32(-2147483648))), Struct_1(vec4<bool>(false, true, true, true), -30682i, 4294967295u, vec2<i32>(-10604i, 0i)), Struct_1(vec4<bool>(true, false, true, true), 2147483647i, 4294967295u, vec2<i32>(i32(-2147483648), -2609i)), Struct_1(vec4<bool>(true, false, true, true), 29461i, 96533u, vec2<i32>(23696i, 72923i)), Struct_1(vec4<bool>(false, true, false, false), 2147483647i, 23506u, vec2<i32>(-19866i, i32(-2147483648))), Struct_1(vec4<bool>(false, true, false, false), 11421i, 0u, vec2<i32>(0i, 37951i)));

var<private> global2: i32 = -17515i;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> StorageBuffer {
    var var_0 = u_input.e;
    var var_1 = -u_input.b.x & ((_wgslsmith_dot_vec2_i32(vec2<i32>(7135i, u_input.d), _wgslsmith_clamp_vec2_i32(vec2<i32>(51803i, u_input.c.x), vec2<i32>(-1i, u_input.d), u_input.a)) ^ ~_wgslsmith_add_i32(u_input.d, u_input.a.x)) | 0i);
    let var_2 = Struct_1(vec4<bool>(false, all(select(vec2<bool>(false, true), vec2<bool>(false, true), true)) && true, true, !(!any(vec2<bool>(true, false)))), 2364i, 44683u, -u_input.c.xx);
    let var_3 = 376f;
    let var_4 = var_2;
    return StorageBuffer(var_4.c, ~62972u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(sign(-512f)), true))) - var_3));
}

fn func_1(arg_0: vec3<u32>) -> StorageBuffer {
    var var_0 = arg_0.x << (_wgslsmith_mod_u32(_wgslsmith_div_u32(~(~46656u), arg_0.x), 1u) % 32u);
    let var_1 = -6739i;
    global2 = firstLeadingBit(select(countOneBits(~(-47846i)), var_1, false && all(vec2<bool>(true, true)))) | -31883i;
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(339f, -122f), vec2<f32>(831f, -1000f))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(0u, 7u)] - global0[_wgslsmith_index_u32(arg_0.x, 7u)])), global0[_wgslsmith_index_u32(70410u | firstTrailingBit(1u), 7u)], vec2<bool>(true, false)))), _wgslsmith_f_op_vec2_f32(sign(global0[_wgslsmith_index_u32(~1u, 7u)]))));
    var var_3 = var_2.x;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -1i;
    global0 = array<vec2<f32>, 7>();
    let var_0 = _wgslsmith_div_i32(1i, u_input.b.x);
    let var_1 = 0u;
    var var_2 = true;
    var var_3 = !(!vec4<bool>(false, !any(vec4<bool>(true, false, true, false)), true, !all(vec3<bool>(false, false, true))));
    global1 = array<Struct_1, 16>();
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(976f, -416f, -1281f, -1000f), vec4<f32>(1000f, -305f, -383f, 1000f), var_3.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(336f, -950f, 1515f, 1288f))))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))))));
    let x = u_input.a;
    s_output = func_1(_wgslsmith_mult_vec3_u32(~firstLeadingBit(vec3<u32>(var_1, 0u, 42906u)) | ((vec3<u32>(var_1, 22665u, var_1) & vec3<u32>(var_1, 4294967295u, var_1)) >> (select(vec3<u32>(var_1, 1u, var_1), vec3<u32>(var_1, 4294967295u, var_1), var_3.x) % vec3<u32>(32u))), ~(~firstTrailingBit(vec3<u32>(57527u, var_1, var_1)))));
}

