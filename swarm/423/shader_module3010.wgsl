struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_1) -> u32 {
    let var_0 = 37131u;
    var var_1 = arg_3.b.yx;
    var var_2 = i32(-1i) * -33060i;
    var var_3 = _wgslsmith_mult_vec3_i32(-(~u_input.c.yxx), min(~(-vec3<i32>(-27750i, arg_3.c, u_input.c.x)), u_input.c.yyz >> (~arg_0.wwz % vec3<u32>(32u))));
    var_2 = u_input.a;
    return var_1.x;
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    var var_0 = true;
    global0 = array<Struct_2, 30>();
    var var_1 = 1u;
    global0 = array<Struct_2, 30>();
    let var_2 = (~abs(4294967295u) << (select(~func_2(vec4<u32>(1u, 50990u, 14070u, 0u), Struct_1(4294967295u, vec3<u32>(0u, 81414u, 8048u), u_input.b.x), arg_0, Struct_1(5976u, vec3<u32>(0u, 0u, 42699u), -3648i)), ~33145u, arg_0.x < _wgslsmith_f_op_f32(abs(arg_0.x))) % 32u)) << (56651u % 32u);
    return var_2;
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_1) -> u32 {
    global0 = array<Struct_2, 30>();
    let var_0 = Struct_1(arg_2.b.x, vec3<u32>(~(~(~arg_2.b.x)), arg_2.a << (firstLeadingBit(~19708u) % 32u), ~(~(~arg_2.b.x))), abs(-1153i));
    let var_1 = Struct_2(arg_2, Struct_1(var_0.a, arg_2.b, _wgslsmith_clamp_i32(~(-13945i) << (_wgslsmith_dot_vec2_u32(var_0.b.xy, vec2<u32>(4294967295u, arg_2.b.x)) % 32u), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c, u_input.c.x), vec2<i32>(24532i, u_input.d)), ~var_0.c), 2147483647i)));
    global0 = array<Struct_2, 30>();
    let var_2 = !arg_0;
    return 2419u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    var var_0 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(8873u, 0u, 85226u, 51156u), vec4<u32>(6158u, 1u, 0u, 4294967295u)), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-626f, 363f)))) | 4294967295u, vec3<u32>(~func_3(any(vec3<bool>(true, true, false)), ~u_input.b, Struct_1(24001u, vec3<u32>(13369u, 0u, 31828u), 28860i)), ~1u, 4294967295u), 2147483647i);
    global0 = array<Struct_2, 30>();
    let var_1 = i32(-1i) * -var_0.c;
    global0 = array<Struct_2, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-125f, -264f))), vec2<f32>(-319f, -1233f))))), -1353f, 19587i, -vec4<i32>(u_input.d, -var_1 >> (1u % 32u), -(~var_1), -(~var_1)), ~var_0.a | _wgslsmith_div_u32(10022u << (_wgslsmith_mod_u32(23080u, 1u) % 32u), reverseBits(1518u)));
}

