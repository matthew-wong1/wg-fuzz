struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: bool,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: f32 = -465f;

var<private> global2: array<bool, 11> = array<bool, 11>(true, true, true, true, false, true, false, true, false, true, false);

var<private> global3: array<vec2<f32>, 29>;

var<private> global4: array<Struct_2, 11>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: bool, arg_1: u32) -> f32 {
    global4 = array<Struct_2, 11>();
    let var_0 = Struct_1(-u_input.b, ~(~abs(~u_input.a.x)), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(4294967295u, arg_1, 29001u, 4294967295u)), ~(vec4<u32>(63935u, u_input.a.x, 1u, 0u) << (vec4<u32>(arg_1, arg_1, 50872u, 4294967295u) % vec4<u32>(32u)))) | max(select(~vec4<u32>(4294967295u, arg_1, 14880u, 27079u), ~vec4<u32>(4294967295u, 1u, u_input.a.x, 32397u), true), firstLeadingBit(abs(vec4<u32>(4294967295u, 0u, u_input.a.x, u_input.a.x)))));
    global4 = array<Struct_2, 11>();
    global4 = array<Struct_2, 11>();
    global0 = select(select(!select(!vec2<bool>(global0.x, false), !vec2<bool>(global0.x, false), !vec2<bool>(arg_0, arg_0)), vec2<bool>(true, true), !vec2<bool>(true, all(vec4<bool>(true, false, false, false)))), vec2<bool>(!(select(66693u, u_input.a.x, false) < _wgslsmith_dot_vec3_u32(vec3<u32>(10985u, u_input.a.x, arg_1), vec3<u32>(u_input.a.x, 1u, 1u))), true), false & (false | global2[_wgslsmith_index_u32(~(12444u & var_0.b), 11u)]));
    return 1391f;
}

fn func_2() -> i32 {
    global4 = array<Struct_2, 11>();
    global3 = array<vec2<f32>, 29>();
    global4 = array<Struct_2, 11>();
    global1 = _wgslsmith_f_op_f32(-197f + _wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x ^ u_input.a.x)), 11u)], _wgslsmith_mult_u32(~u_input.a.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 32023u, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, 98729u))))));
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(190f * 690f), 1f, _wgslsmith_f_op_f32(min(-1083f, -621f)), -994f)) - vec4<f32>(_wgslsmith_f_op_f32(-963f * _wgslsmith_f_op_f32(abs(587f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1036f - 1761f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-2021f * 1225f))), _wgslsmith_f_op_f32(max(-225f, -577f)))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1264f), -424f, 672f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1059f))))));
    return _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.c, u_input.c), ~2147483647i);
}

fn func_1(arg_0: vec3<i32>) -> vec3<f32> {
    var var_0 = func_2() >> (u_input.a.x % 32u);
    let var_1 = Struct_1(arg_0.zy, u_input.a.x, ~select(~vec4<u32>(u_input.a.x, u_input.a.x, 27588u, 4294967295u) >> (abs(vec4<u32>(17359u, u_input.a.x, 4294967295u, u_input.a.x)) % vec4<u32>(32u)), ~vec4<u32>(0u, 55756u, u_input.a.x, 27905u), vec4<bool>(true, false & global0.x, true, arg_0.x != u_input.b.x)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-477f * _wgslsmith_f_op_f32(f32(-1f) * -467f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -535f), 762f))) - _wgslsmith_f_op_f32(sign(-332f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1102f * -504f), true)))));
    let var_3 = ~(~arg_0.x & -1i);
    global2 = array<bool, 11>();
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-438f, 825f) * 732f) * _wgslsmith_f_op_f32(max(-2335f, -942f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-666f, 1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1043f, -1493f), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-395f, -192f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 11>();
    let var_0 = _wgslsmith_f_op_vec3_f32(func_1(select(-abs(vec3<i32>(-39119i, u_input.b.x, -71858i)), _wgslsmith_add_vec3_i32(vec3<i32>(-37824i, -1848i, -1i), vec3<i32>(0i, u_input.b.x, 2147483647i)) << (reverseBits(vec3<u32>(20341u, u_input.a.x, u_input.a.x)) % vec3<u32>(32u)), true) | vec3<i32>(1i, -u_input.c, u_input.b.x)));
    global0 = select(select(vec2<bool>(true, true), vec2<bool>(_wgslsmith_add_i32(u_input.b.x, -2147483647i) <= ~u_input.b.x, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 0u)) | u_input.a.x, 11u)]), !(!select(vec2<bool>(global2[_wgslsmith_index_u32(7279u, 11u)], global0.x), vec2<bool>(false, true), false))), select(vec2<bool>(true, false), vec2<bool>(global0.x, true), any(select(vec2<bool>(true, global2[_wgslsmith_index_u32(35304u, 11u)]), select(vec2<bool>(global0.x, true), vec2<bool>(global2[_wgslsmith_index_u32(67806u, 11u)], global0.x), vec2<bool>(true, false)), all(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 11u)], global2[_wgslsmith_index_u32(1u, 11u)], global0.x, global2[_wgslsmith_index_u32(u_input.a.x, 11u)]))))), any(!(!(!vec2<bool>(global0.x, global2[_wgslsmith_index_u32(u_input.a.x, 11u)])))));
    global1 = -538f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, u_input.b.x, u_input.b.x), vec3<i32>(2147483647i, u_input.b.x, u_input.c), vec3<i32>(u_input.b.x, u_input.c, u_input.b.x)) | vec3<i32>(u_input.b.x, -u_input.b.x, 1i), max(firstTrailingBit(vec3<i32>(u_input.c, u_input.b.x, 0i)), min(-vec3<i32>(u_input.b.x, 1i, 2147483647i), vec3<i32>(u_input.c, u_input.b.x, 21597i) & vec3<i32>(u_input.c, u_input.c, u_input.c)))));
}

