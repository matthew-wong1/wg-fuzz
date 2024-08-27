struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17>;

var<private> global1: Struct_1 = Struct_1(vec4<i32>(-54i, 18150i, 0i, -11998i), 21126i, vec3<u32>(0u, 4294967295u, 135712u));

var<private> global2: array<vec3<bool>, 24> = array<vec3<bool>, 24>(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false));

var<private> global3: array<f32, 4>;

var<private> global4: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(firstTrailingBit(-(~(~u_input.b))), select(_wgslsmith_mod_i32(~(~global1.a.x), ~(-2147483647i)), ~(-1i), all(vec4<bool>(true, true, true, true))), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, ~min(16441u, 0u), _wgslsmith_clamp_u32(abs(80415u), _wgslsmith_mod_u32(12680u, u_input.d.x), global1.c.x)), vec3<u32>(_wgslsmith_dot_vec3_u32(abs(global1.c), vec3<u32>(6503u, 4294967295u, global1.c.x) << (vec3<u32>(global1.c.x, 4294967295u, 1u) % vec3<u32>(32u))), 58434u, ~32054u)));
    global3 = array<f32, 4>();
    var var_1 = var_0;
    let var_2 = var_0.c.zx;
    global3 = array<f32, 4>();
    return _wgslsmith_add_u32(var_1.c.x, 8286u);
}

fn func_2() -> Struct_1 {
    let var_0 = abs(reverseBits(_wgslsmith_mod_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, 27510u, u_input.d.x, u_input.c), vec4<u32>(global1.c.x, global1.c.x, 4294967295u, u_input.c), vec4<u32>(1u, 0u, u_input.d.x, 0u)), ~vec4<u32>(u_input.d.x, 180010u, global1.c.x, 12544u) | vec4<u32>(73601u, global1.c.x, global1.c.x, 4294967295u))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1323f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 73017u), 4u)])))));
    var_1 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_div_u32((_wgslsmith_add_u32(u_input.d.x, 60996u) ^ 495u) & (u_input.d.x & global1.c.x), min(func_3(), ~4294967295u)), 17u)]);
    global0 = array<f32, 17>();
    var var_2 = var_0.x;
    return Struct_1(~global1.a, -_wgslsmith_div_i32(-5411i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-18266i, u_input.b.x, u_input.a, 2147483647i), u_input.b), ~u_input.b.x), ~(~reverseBits(vec3<u32>(18163u, u_input.d.x, u_input.d.x)) << (_wgslsmith_mod_vec3_u32(~var_0.wzw, vec3<u32>(global1.c.x, global1.c.x, 4294967295u)) % vec3<u32>(32u))));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 17u)] * global3[_wgslsmith_index_u32(arg_1, 4u)]), global0[_wgslsmith_index_u32(~22424u, 17u)]))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-335f - 321f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global1.c.x, 4u)])), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(207f, global0[_wgslsmith_index_u32(57539u, 17u)]))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-431f, global3[_wgslsmith_index_u32(u_input.d.x, 4u)]), vec2<f32>(global0[_wgslsmith_index_u32(148881u, 17u)], global0[_wgslsmith_index_u32(u_input.c, 17u)])))))));
    global3 = array<f32, 4>();
    let var_1 = func_2();
    global1 = Struct_1(max(u_input.b, u_input.b), -7451i, global1.c);
    var var_2 = min(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(global1.c.x, global1.c.x, global1.c.x), func_3(), ~4294967295u, ~4294967295u), vec4<u32>(~arg_1, select(1u, 1u, false), ~4294967295u, reverseBits(1u))), select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 46675u, 0u, var_1.c.x) ^ vec4<u32>(u_input.d.x, 764u, global1.c.x, 86865u), ~vec4<u32>(13364u, 64527u, 1u, arg_1)), (vec4<u32>(4294967295u, var_1.c.x, 7130u, 1u) | vec4<u32>(1u, var_1.c.x, 31690u, 1486u)) >> ((vec4<u32>(25717u, 4294967295u, 15156u, var_1.c.x) ^ vec4<u32>(79660u, 41228u, 4294967295u, arg_1)) % vec4<u32>(32u)), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), true), true))) << (countOneBits(select(vec4<u32>(_wgslsmith_div_u32(49623u, 19201u), ~0u, global1.c.x, 1u), vec4<u32>(var_1.c.x, 67072u, u_input.d.x, ~26600u), -6285i == u_input.b.x)) % vec4<u32>(32u));
    return ~61411i;
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: i32) -> StorageBuffer {
    return StorageBuffer(global1.a.yzy >> (vec3<u32>(0u, 4078u, 0u) % vec3<u32>(32u)), global1.c.xx, u_input.b.xwy);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 17>();
    var var_0 = true;
    let var_1 = false;
    global2 = array<vec3<bool>, 24>();
    global3 = array<f32, 4>();
    global2 = array<vec3<bool>, 24>();
    let x = u_input.a;
    s_output = func_4(_wgslsmith_clamp_i32(countOneBits(u_input.a), u_input.b.x, ~func_1(vec3<i32>(global1.a.x, u_input.a, 23632i), u_input.d.x)) == (~countOneBits(u_input.a) << (((u_input.d.x & global1.c.x) << (_wgslsmith_mod_u32(u_input.d.x, 3823u) % 32u)) % 32u)), u_input.b.ww | global1.a.xz, -(i32(-1i) * -48305i));
}

