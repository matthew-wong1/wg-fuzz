struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: vec3<u32> = vec3<u32>(14249u, 4294967295u, 72825u);

var<private> global2: Struct_2 = Struct_2(Struct_1(vec2<i32>(7303i, -46491i), vec4<i32>(1i, i32(-2147483648), -1i, -32004i), vec2<i32>(0i, 54265i)), Struct_1(vec2<i32>(0i, 75848i), vec4<i32>(34646i, 2147483647i, -2734i, -56579i), vec2<i32>(-20729i, i32(-2147483648))), vec4<f32>(220f, 311f, 1715f, -381f));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    global0 = vec3<f32>(-107f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-782f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(251f - global0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * global2.c.x) * _wgslsmith_f_op_f32(661f - -1000f)))));
    var var_0 = global2.c.x;
    let var_1 = vec2<i32>(-global2.b.a.x, firstTrailingBit(global2.b.b.x));
    var_0 = _wgslsmith_f_op_f32(step(global2.c.x, -1581f));
    var var_2 = vec2<bool>(!(!(0u >= ~u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(109f + -545f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(717f * global2.c.x), _wgslsmith_f_op_f32(global2.c.x - 284f), true))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-661f * global2.c.x), _wgslsmith_f_op_f32(f32(-1f) * -2557f)));
    return -1358f;
}

fn func_2() -> u32 {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(859f)))))), _wgslsmith_f_op_f32(round(-280f)), global2.c.x);
    var var_0 = global2.b;
    let var_1 = Struct_3(var_0.b.x, Struct_2(Struct_1(global2.b.b.yw, global2.a.b, var_0.c), Struct_1(max(vec2<i32>(var_0.b.x, var_0.a.x), global2.b.c), ~vec4<i32>(-34694i, 0i, -67853i, var_0.a.x), -(~vec2<i32>(global2.a.b.x, -48891i))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.c + global2.c)), global2.c)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(select(vec4<u32>(4294967295u, 1u, 12997u, u_input.a.x), vec4<u32>(global1.x, 4294967295u, 4294967295u, global1.x), false), firstLeadingBit(vec4<u32>(13675u, 14949u, u_input.a.x, global1.x))), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(63127u, global1.x, 55326u, 0u), vec4<u32>(1u, global1.x, global1.x, u_input.a.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, 1u, u_input.a.x, global1.x), vec4<u32>(87191u, global1.x, 1u, 37494u), vec4<u32>(4294967295u, global1.x, u_input.a.x, 4294967295u)))), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(23658u, 8403u, 1u, 1u), abs(vec4<u32>(3748u, 34247u, 94701u, u_input.a.x)))));
    var var_2 = var_1.b;
    var var_3 = u_input.a.zz;
    return global1.x;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec3<i32>, arg_3: i32) -> StorageBuffer {
    global1 = ~select(~(~firstTrailingBit(vec3<u32>(global1.x, 4294967295u, u_input.a.x))), ~vec3<u32>(_wgslsmith_div_u32(87805u, 1u), ~1765u, func_2()), vec3<bool>(false, (global1.x < 22719u) && arg_0, true));
    var var_0 = u_input.a.yz;
    let var_1 = true;
    let var_2 = vec2<u32>(abs(~(~max(4294967295u, 4294967295u))), _wgslsmith_div_u32(_wgslsmith_add_u32(global1.x, 34032u), 1u));
    var var_3 = select(!vec2<bool>(all(vec2<bool>(var_1, var_1)), arg_0), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.c.x)) + _wgslsmith_f_op_f32(floor(357f))) == _wgslsmith_f_op_f32(251f - _wgslsmith_f_op_f32(-global2.c.x)), !all(!vec2<bool>(arg_0, arg_0))), any(vec4<bool>(true, true, _wgslsmith_add_u32(var_2.x, 16030u) >= ~var_0.x, !arg_0)));
    return StorageBuffer(_wgslsmith_dot_vec2_u32(firstTrailingBit(~var_2 >> (~vec2<u32>(u_input.a.x, var_0.x) % vec2<u32>(32u))), (vec2<u32>(var_0.x, 4294967295u) << (vec2<u32>(global1.x, var_2.x) % vec2<u32>(32u))) ^ _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global1.x, 4294967295u), u_input.a.xy), _wgslsmith_add_vec2_u32(u_input.a.yz, u_input.a.yy))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(true, _wgslsmith_mult_i32(global2.a.c.x, ~_wgslsmith_sub_i32(_wgslsmith_clamp_i32(2147483647i, 2147483647i, global2.b.c.x), _wgslsmith_clamp_i32(global2.a.a.x, global2.b.b.x, global2.b.b.x))), global2.b.b.yxw, ~32956i);
}

