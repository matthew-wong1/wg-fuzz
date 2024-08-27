struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: array<Struct_1, 18>;

var<private> global2: u32 = 19354u;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: f32) -> vec3<bool> {
    let var_0 = Struct_1(!select(vec3<bool>(any(vec2<bool>(true, false)), any(vec2<bool>(false, true)), true), vec3<bool>(true, true, all(vec2<bool>(true, true))), vec3<bool>(true, arg_0.x != arg_2, true)), 68794i, select(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a, 4294967295u), vec3<u32>(u_input.a, 39577u, u_input.a))), ~abs(~vec3<u32>(74376u, 4294967295u, u_input.a)), true), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(~(-vec2<i32>(1i, 0i)), firstTrailingBit(select(vec2<i32>(1i, 2147483647i), vec2<i32>(-120i, 1i), vec2<bool>(false, false)))), 52116i, ~0i), -(~max(vec4<i32>(1i, 64549i, 0i, 1i), vec4<i32>(17271i, -1i, 2147483647i, -2147483647i)) | vec4<i32>(firstTrailingBit(1064i), ~(-1i), -61006i << (u_input.a % 32u), ~(-1i))));
    var var_1 = vec4<bool>(var_0.a.x, var_0.a.x, (var_0.a.x | select(false, var_0.a.x, var_0.a.x)) && any(select(vec2<bool>(var_0.a.x, var_0.a.x), vec2<bool>(var_0.a.x, false), true)), any(var_0.a.zz));
    global0 = array<Struct_1, 4>();
    global1 = array<Struct_1, 18>();
    return var_1.www;
}

fn func_2() -> bool {
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    let var_0 = 0i;
    var var_1 = Struct_1(select(vec3<bool>(all(vec2<bool>(true, true)), false, true), select(vec3<bool>(true, all(vec4<bool>(false, false, false, false)), all(vec3<bool>(false, true, true))), func_3(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, -587f, 460f, 1877f), vec4<f32>(1409f, -395f, -704f, 901f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(146f, -361f)), -650f), vec3<bool>(false, any(vec3<bool>(true, false, false)), true)), func_3(vec4<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(ceil(1439f)), _wgslsmith_f_op_f32(1464f - 376f), -716f), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2492f), 775f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(395f, 466f) + -895f)).x), firstTrailingBit(var_0 >> (reverseBits(u_input.a >> (35416u % 32u)) % 32u)), vec3<u32>(_wgslsmith_div_u32(u_input.a, ~u_input.a), ~(~(~29372u)), _wgslsmith_add_u32(u_input.a, 4294967295u) << (select(u_input.a, max(u_input.a, u_input.a), all(vec3<bool>(false, false, true))) % 32u)), abs(reverseBits(firstLeadingBit(-16356i ^ var_0))), select(vec4<i32>(var_0, _wgslsmith_sub_i32(-1i, var_0), ~var_0, 1i), -abs(max(vec4<i32>(0i, -10704i, var_0, -27676i), vec4<i32>(1i, 1i, -25711i, -8093i))), !vec4<bool>(u_input.a < 4294967295u, true, true, false)));
    let var_2 = firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(abs(var_0), var_1.b, ~var_1.d), select(~var_1.e.yzx, vec3<i32>(2147483647i, var_0, var_0), !vec3<bool>(true, var_1.a.x, var_1.a.x))) >> ((_wgslsmith_sub_vec3_u32(var_1.c, ~var_1.c) | vec3<u32>(var_1.c.x, 34610u, var_1.c.x)) % vec3<u32>(32u)));
    return var_1.a.x;
}

fn func_1() -> bool {
    global2 = 0u;
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(33054u, min(max(_wgslsmith_add_u32(u_input.a, ~0u), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 0u)), 0u)), ~(_wgslsmith_clamp_u32(0u, u_input.a, 92019u) | _wgslsmith_sub_u32(17630u, u_input.a)))), 18u)];
    global2 = u_input.a;
    var var_1 = false;
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.a, ~29844u), 4u)];
    return func_2();
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: i32) -> u32 {
    let var_0 = _wgslsmith_sub_i32(-_wgslsmith_add_i32(reverseBits(arg_2) << (~u_input.a % 32u), arg_1.d), -arg_1.d);
    global0 = array<Struct_1, 4>();
    let var_1 = global1[_wgslsmith_index_u32(arg_1.c.x, 18u)];
    global1 = array<Struct_1, 18>();
    let var_2 = ~(~_wgslsmith_mod_vec4_u32(max(vec4<u32>(var_1.c.x, 100306u, arg_1.c.x, var_1.c.x) & vec4<u32>(4294967295u, u_input.a, u_input.a, 0u), abs(vec4<u32>(1u, u_input.a, 4294967295u, u_input.a))), firstTrailingBit(vec4<u32>(4294967295u, 1u, 0u, 51091u))));
    return ~(~firstLeadingBit(arg_1.c.x << (min(0u, u_input.a) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(countOneBits(func_4(vec3<bool>(func_1(), all(select(vec2<bool>(true, false), vec2<bool>(true, false), false)), true), global0[_wgslsmith_index_u32(~(abs(u_input.a) | 1u), 4u)], 2147483647i)), 18u)];
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(~select(4294967295u, u_input.a, false) & u_input.a, ~u_input.a), min(var_0.c.x, firstLeadingBit(24945u << ((var_0.c.x & 4294967295u) % 32u)))), 18u)];
    let var_2 = -1629f;
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-102f, _wgslsmith_f_op_f32(abs(var_2)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2))))), _wgslsmith_f_op_f32(round(-345f))) + vec2<f32>(632f, -814f));
    var var_4 = Struct_1(vec3<bool>(select(true, var_3.x > -747f, true), var_1.a.x, true), -6008i, _wgslsmith_clamp_vec3_u32(var_1.c, min(~_wgslsmith_add_vec3_u32(var_1.c, var_0.c), vec3<u32>(7758u << (var_0.c.x % 32u), ~4294967295u, 51153u)), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(var_1.c, var_0.c), _wgslsmith_dot_vec4_u32(vec4<u32>(23625u, u_input.a, 23254u, 12648u), vec4<u32>(1u, u_input.a, 1u, 0u))), select(var_0.c.x, 70188u, false) & ~24059u, _wgslsmith_mod_u32(1u, 34372u))), min(-1i, var_0.d), var_1.e);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, 1i);
}

