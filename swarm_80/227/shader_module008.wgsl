struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_5, 27>;

var<private> global2: vec4<u32> = vec4<u32>(4294967295u, 1u, 6019u, 0u);

var<private> global3: array<Struct_2, 26>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = firstTrailingBit(37441u);
    global2 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1200u, countOneBits(u_input.c.x >> (global2.x % 32u)), global2.x, _wgslsmith_dot_vec3_u32(min(u_input.c.wwz, vec3<u32>(u_input.c.x, var_0, 0u)), u_input.c.yxw)), _wgslsmith_div_vec4_u32(max(~u_input.c, vec4<u32>(67793u, 4294967295u, 0u, u_input.c.x)), vec4<u32>(1u, _wgslsmith_dot_vec3_u32(u_input.c.zwx, global2.yww), _wgslsmith_mod_u32(u_input.c.x, var_0), 8569u))), reverseBits(min(abs(min(vec4<u32>(10119u, u_input.c.x, u_input.c.x, global2.x), u_input.c)), ~(vec4<u32>(4294967295u, u_input.c.x, 4294967295u, global2.x) | vec4<u32>(34410u, u_input.c.x, 4294967295u, var_0)))), _wgslsmith_clamp_vec4_u32(u_input.c, (abs(vec4<u32>(global2.x, 0u, 1u, 9291u)) & _wgslsmith_add_vec4_u32(vec4<u32>(var_0, 1u, 4294967295u, var_0), u_input.c)) ^ select(vec4<u32>(0u, 102339u, 0u, global2.x), vec4<u32>(u_input.c.x, global2.x, 1u, global2.x), arg_1.a & arg_1.a), _wgslsmith_add_vec4_u32(vec4<u32>(global2.x, var_0, 72522u, global2.x) | (vec4<u32>(u_input.c.x, global2.x, global2.x, u_input.c.x) ^ vec4<u32>(global2.x, global2.x, 0u, 4294967295u)), abs(vec4<u32>(4294967295u, u_input.c.x, 16263u, global2.x)))));
    let var_1 = _wgslsmith_div_f32(1459f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1961f), _wgslsmith_f_op_f32(round(1000f)))))))));
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-404f + _wgslsmith_f_op_f32(-var_1))) - -167f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))));
    let var_2 = vec3<u32>(33905u >> (_wgslsmith_clamp_u32(_wgslsmith_mod_u32(34666u, 16724u | u_input.c.x), abs(0u), min(_wgslsmith_div_u32(var_0, var_0), var_0)) % 32u), 1981u, ~u_input.c.x >> (_wgslsmith_mod_u32(0u, reverseBits(var_0) ^ ~global2.x) % 32u));
    return var_1;
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: u32, arg_3: f32) -> Struct_4 {
    global3 = array<Struct_2, 26>();
    var var_0 = 15182u;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.a.x, arg_1.c, -463f), _wgslsmith_f_op_vec3_f32(-arg_1.a), !vec3<bool>(true, any(vec4<bool>(true, true, true, true)), all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false))))));
    let var_2 = false;
    var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(Struct_1(var_2), Struct_1(var_2))), 417f)) + 478f), arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_3, arg_1.a.x, true)))) - 285f)) * arg_1.a);
    return Struct_4(Struct_2(select(vec4<bool>(var_2, false, true, var_2), vec4<bool>(any(vec2<bool>(var_2, true)), var_2, !var_2, var_2), select(!vec4<bool>(var_2, true, var_2, false), !vec4<bool>(true, true, false, var_2), !vec4<bool>(var_2, false, true, true))), false, arg_2));
}

fn func_1() -> Struct_4 {
    global1 = array<Struct_5, 27>();
    var var_0 = ~vec3<u32>(u_input.c.x ^ ~_wgslsmith_mod_u32(u_input.c.x, global2.x), 1u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~global2.xy, u_input.c.zx >> (vec2<u32>(48288u, global2.x) % vec2<u32>(32u))), ~(u_input.c.zw ^ vec2<u32>(global2.x, u_input.c.x))));
    let var_1 = vec4<i32>(~2147483647i, ~(-abs(i32(-1i) * -1i)), ~0i, ((-2147483647i | u_input.a.x) & 65166i) ^ -18276i);
    let var_2 = (_wgslsmith_mult_u32(~_wgslsmith_add_u32(var_0.x, 4294967295u), abs(abs(var_0.x))) ^ var_0.x) << (~(~var_0.x) % 32u);
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-206f, -914f, true))) * -1000f))), _wgslsmith_f_op_f32(-383f + _wgslsmith_f_op_f32(1237f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -620f) * _wgslsmith_f_op_f32(round(1107f)))))));
    return func_2(1035f, Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-297f, 671f, 836f) + vec3<f32>(-476f, 1054f, -385f))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -950f), _wgslsmith_f_op_f32(f32(-1f) * -933f), _wgslsmith_f_op_f32(f32(-1f) * -1802f))), 38467i, -1306f), ~_wgslsmith_dot_vec2_u32(select(vec2<u32>(var_2, 13644u) >> (var_0.yx % vec2<u32>(32u)), select(u_input.c.zx, vec2<u32>(0u, 4294967295u), vec2<bool>(true, true)), vec2<bool>(true, true)), min(vec2<u32>(0u, 7599u), var_0.xz) ^ vec2<u32>(global2.x, 39467u)), -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(966f * 1043f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1457f))))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1126f, 341f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(1886f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-1267f, 985f)));
}

