struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec4<bool>,
    d: Struct_2,
    e: vec3<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: Struct_2,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 26>;

var<private> global1: f32;

var<private> global2: Struct_4 = Struct_4(981f, Struct_3(vec2<u32>(0u, 1u), vec4<i32>(-1i, -3059i, 23276i, 2147483647i)), vec4<bool>(false, false, true, false), Struct_2(664f, Struct_1(vec4<f32>(642f, 143f, -1390f, 334f), 13733u), Struct_1(vec4<f32>(1000f, 1461f, 468f, -787f), 0u)), vec3<u32>(4190u, 1u, 7525u));

var<private> global3: Struct_5;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_4) -> f32 {
    global0 = array<vec4<i32>, 26>();
    global3 = Struct_5(Struct_3(_wgslsmith_div_vec2_u32(~select(arg_0.e.zx, vec2<u32>(global3.d, 61996u), arg_0.c.x), vec2<u32>(19202u, global3.c.b.b)), (~vec4<i32>(global3.a.b.x, global2.b.b.x, -52966i, global3.a.b.x) ^ _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, u_input.b.x, 2147483647i, -48359i), global3.a.b)) | global2.b.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.d.b.a.x * global2.a), -1125f)), arg_0.d.a) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + arg_0.a)), Struct_2(-424f, global3.c.b, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.d.b.a)), _wgslsmith_mult_u32(_wgslsmith_mod_u32(global3.c.b.b, 1u), ~global3.c.c.b))), ~_wgslsmith_clamp_u32(~(~u_input.a.x), firstLeadingBit(0u), ~0u), ~vec2<u32>(countOneBits(arg_0.e.x), global3.c.c.b) & reverseBits(vec2<u32>(~0u, 0u)));
    global2 = arg_0;
    let var_0 = arg_0.d;
    global0 = array<vec4<i32>, 26>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.d.a))))) * -1490f);
}

fn func_3() -> bool {
    global0 = array<vec4<i32>, 26>();
    let var_0 = 988f >= global3.b;
    let var_1 = global2.c.x;
    let var_2 = 0u;
    let var_3 = _wgslsmith_add_vec3_u32(vec3<u32>(abs(_wgslsmith_clamp_u32(~42849u, u_input.a.x, ~4294967295u)), ~1u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a.x, u_input.a.x, global3.d, 49859u), u_input.a, var_0) >> ((u_input.a << (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u)), ~(vec4<u32>(var_2, global2.d.b.b, var_2, u_input.a.x) ^ vec4<u32>(1u, 4294967295u, var_2, 6632u)))), _wgslsmith_mult_vec3_u32(~vec3<u32>(_wgslsmith_add_u32(global2.d.b.b, global2.d.c.b), _wgslsmith_mult_u32(29505u, var_2), 37714u), global2.e << (vec3<u32>(global3.e.x, 1u, 4294967295u) % vec3<u32>(32u))));
    return var_0;
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_div_u32(u_input.a.x, u_input.a.x);
    global3 = Struct_5(global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1586f)))))), Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.d.c.a.x))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global2.d.a), -1189f, _wgslsmith_f_op_f32(func_2(Struct_4(-290f, Struct_3(global3.a.a, u_input.b), vec4<bool>(true, global2.c.x, global2.c.x, true), global3.c, u_input.a.xxz))), -526f), firstTrailingBit(max(1u, 27672u))), Struct_1(_wgslsmith_f_op_vec4_f32(floor(global3.c.c.a)), u_input.a.x)), global2.b.a.x, _wgslsmith_mod_vec2_u32(vec2<u32>(114827u, global3.e.x), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.e.x, 65671u, var_0), vec3<u32>(var_0, global3.e.x, global3.a.a.x)), u_input.a.x), vec2<u32>(1u, global3.e.x))));
    global2 = Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global2.d.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1802f))))), Struct_3(~_wgslsmith_mult_vec2_u32(min(global3.e, global3.e), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 1u), global2.b.a, global3.a.a)), global2.b.b), select(!vec4<bool>(true, false, func_3(), all(global2.c.xyw)), select(global2.c, vec4<bool>(true && global2.c.x, true, true, select(true, global2.c.x, global2.c.x)), !global2.c), !(!select(vec4<bool>(false, global2.c.x, global2.c.x, global2.c.x), vec4<bool>(global2.c.x, global2.c.x, global2.c.x, false), global2.c))), global2.d, ~(~(~vec3<u32>(1u, global3.d, 4294967295u))));
    let var_1 = Struct_5(Struct_3(vec2<u32>(0u, 26316u), ~vec4<i32>(firstLeadingBit(global2.b.b.x), select(u_input.b.x, 44849i, true), global3.a.b.x << (1u % 32u), 2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1241f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(Struct_4(global3.c.a, Struct_3(vec2<u32>(global2.b.a.x, u_input.a.x), global2.b.b), global2.c, Struct_2(1740f, Struct_1(global3.c.c.a, 31432u), Struct_1(global3.c.c.a, 0u)), u_input.a.xyy)))))), global3.c, 46407u, abs(max(global3.a.a, ~vec2<u32>(u_input.a.x, u_input.a.x) | _wgslsmith_clamp_vec2_u32(global2.b.a, vec2<u32>(var_0, global3.d), vec2<u32>(6569u, var_0)))));
    global1 = global2.a;
    return Struct_3(firstLeadingBit(var_1.e), -global3.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 26>();
    global2 = Struct_4(_wgslsmith_f_op_f32(global2.a - global3.b), func_1(), global2.c, global2.d, abs(_wgslsmith_clamp_vec3_u32(u_input.a.xwy, select(~u_input.a.xyy, u_input.a.xxx & vec3<u32>(u_input.a.x, 0u, 32136u), true), vec3<u32>(~25017u, _wgslsmith_mod_u32(u_input.a.x, global3.a.a.x), 1u))));
    global1 = global2.a;
    let x = u_input.a;
    s_output = StorageBuffer(global3.c.b.a.zxx, global3.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1081f, global2.d.b.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global3.c.b.a.x - 729f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.d.c.a.x, global3.c.a, global3.b)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(global2.a)), 1283f, _wgslsmith_f_op_f32(func_2(Struct_4(-475f, global3.a, global2.c, Struct_2(-553f, global2.d.c, Struct_1(global3.c.b.a, 22914u)), vec3<u32>(global2.e.x, 31027u, 0u)))))))));
}

