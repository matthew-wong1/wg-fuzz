struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec3<f32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
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

var<private> global0: vec3<u32> = vec3<u32>(18700u, 0u, 0u);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_1) -> u32 {
    var var_0 = arg_0.a.x;
    var_0 = (14290u >> (firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 1u), firstTrailingBit(vec2<u32>(global0.x, global0.x)))) % 32u)) ^ max(~(_wgslsmith_sub_u32(3151u, arg_0.a.x) | _wgslsmith_div_u32(1u, global0.x)), ~global0.x);
    let var_1 = arg_0.c;
    var_0 = u_input.c.x << (33482u % 32u);
    global0 = ~(vec3<u32>(~abs(6541u), ~u_input.b.x, u_input.c.x) ^ _wgslsmith_sub_vec3_u32(u_input.c ^ _wgslsmith_sub_vec3_u32(vec3<u32>(62588u, 21029u, arg_0.a.x), vec3<u32>(38140u, arg_0.a.x, 0u)), vec3<u32>(59189u, 19542u, u_input.a)));
    return select(global0.x, abs(u_input.c.x), all(vec4<bool>(_wgslsmith_dot_vec4_i32(arg_0.c.b, arg_2.b) < -2147483647i, any(vec3<bool>(arg_2.a.x, arg_2.a.x, false)), _wgslsmith_f_op_f32(-491f - 810f) <= _wgslsmith_f_op_f32(ceil(var_1.c)), false)));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: bool) -> vec3<u32> {
    global0 = ~(~vec3<u32>(_wgslsmith_mod_u32(~global0.x, func_3(Struct_2(vec4<u32>(5556u, 4294967295u, 0u, global0.x), vec3<i32>(64840i, 0i, 11928i), Struct_1(vec3<bool>(false, true, true), vec4<i32>(0i, 40290i, 45456i, -1i), -1306f)), vec2<f32>(-818f, arg_1), Struct_1(vec3<bool>(false, false, arg_2), vec4<i32>(-30684i, 2147483647i, -32970i, 30194i), 1560f))), min(u_input.a, u_input.c.x) << (_wgslsmith_mod_u32(global0.x, u_input.b.x) % 32u), firstLeadingBit(109122u)));
    global0 = u_input.c;
    let var_0 = select(select(vec2<bool>(false, all(select(vec4<bool>(true, arg_0, arg_2, true), vec4<bool>(false, arg_2, arg_0, arg_0), arg_2))), !vec2<bool>(arg_2, arg_2), false), vec2<bool>(arg_0, true | (!arg_0 != false)), (_wgslsmith_mult_u32(u_input.a >> (7786u % 32u), select(u_input.a, 4294967295u, arg_2)) << ((0u ^ _wgslsmith_add_u32(global0.x, 1u)) % 32u)) >= abs(~global0.x));
    let var_1 = select(~(-1i), 16138i, any(var_0));
    var var_2 = 1u;
    return u_input.c;
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -847f);
    global0 = func_2(true, var_0, any(vec3<bool>(all(vec2<bool>(true, true)), true, true)));
    global0 = (vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, u_input.b.x, u_input.c.x) | u_input.c, select(u_input.c, u_input.c, false)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4654u, global0.x, 0u), ~vec4<u32>(global0.x, global0.x, 12906u, global0.x)), ~(2000u >> (0u % 32u))) & ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.a, 75521u), u_input.c)) & abs(_wgslsmith_sub_vec3_u32(~u_input.c, vec3<u32>(~1504u, max(global0.x, 4294967295u), abs(4294967295u))));
    global0 = max(~(~u_input.c), u_input.c);
    let var_1 = Struct_2(vec4<u32>(1u, global0.x, countOneBits(min(global0.x, 18181u)), (0u & global0.x) | max(46273u, 4294967295u)) & ~(vec4<u32>(u_input.a, global0.x, 4294967295u, 1u) << (vec4<u32>(13926u, u_input.c.x, global0.x, 39206u) % vec4<u32>(32u))), vec3<i32>(select(~12106i, ~17462i, any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false)))), ~1i, -43026i), Struct_1(select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), vec3<bool>(false, true, false), true), select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)), _wgslsmith_sub_vec4_i32(select(vec4<i32>(-230i, -28085i, 1i, -2978i), vec4<i32>(-1i, -2147483647i, 1i, -34276i), vec4<bool>(true, true, true, false)), ~vec4<i32>(43960i, 0i, -1i, 2147483647i)) >> (~select(vec4<u32>(global0.x, u_input.b.x, 148641u, 4294967295u), vec4<u32>(u_input.a, 0u, 48933u, u_input.c.x), vec4<bool>(true, false, true, false)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(302f * var_0)));
    return Struct_3(Struct_1(!(!select(var_1.c.a, var_1.c.a, var_1.c.a.x)), max(countOneBits(var_1.c.b), vec4<i32>(abs(-21679i), max(-2147483647i, var_1.b.x), var_1.b.x, var_1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-793f * var_1.c.c)) * -615f)), abs(var_1.a.x) != ~var_1.a.x, var_1.c, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.c.c))), 1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-156f))))), _wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(var_1.a, var_1.a), min(u_input.c.x, global0.x)), global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = abs(global0.yx);
    let var_2 = var_0.a.b.x;
    let var_3 = Struct_1(var_0.c.a, _wgslsmith_add_vec4_i32(~var_0.c.b, vec4<i32>(2147483647i, 9968i, var_0.a.b.x, var_0.c.b.x)), _wgslsmith_f_op_f32(-var_0.a.c));
    let var_4 = var_3.a.x;
    let var_5 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.c), -1000f);
    var var_6 = var_0.d.zx;
    let var_7 = var_3.a.xy;
    let x = u_input.a;
    s_output = StorageBuffer(33380i, firstTrailingBit(~select(~var_0.c.b.x, var_0.c.b.x, true)));
}

