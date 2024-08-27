struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 8722u;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32) -> u32 {
    global0 = ~u_input.b.x;
    global0 = u_input.b.x;
    global0 = ~4294967295u;
    global0 = abs(u_input.a.x);
    let var_0 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(-1i, arg_0, arg_0), -23445i);
    return u_input.c.x;
}

fn func_2() -> vec3<bool> {
    global0 = _wgslsmith_mod_u32(max(75999u, ~_wgslsmith_mod_u32(36654u, u_input.b.x) & ~_wgslsmith_clamp_u32(4294967295u, u_input.b.x, 90447u)), u_input.c.x);
    let var_0 = Struct_1(1832f, _wgslsmith_div_u32(0u, _wgslsmith_mod_u32(func_3(-2147483647i), 4294967295u)));
    let var_1 = -181f;
    var var_2 = Struct_1(var_1, 1u);
    var var_3 = -1i;
    return select(!(!vec3<bool>(true, true, u_input.c.x < u_input.c.x)), vec3<bool>(40384u == _wgslsmith_dot_vec4_u32(u_input.c, ~vec4<u32>(var_0.b, var_0.b, u_input.a.x, 55425u)), _wgslsmith_f_op_f32(abs(var_0.a)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1, 280f)) * -1479f), !any(vec4<bool>(true, true, true, true))), true);
}

fn func_1(arg_0: i32) -> vec3<bool> {
    global0 = u_input.b.x;
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(453f, 1892f, 728f), vec3<f32>(327f, -964f, 489f)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1281f, 172f, -535f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-472f, -821f, 110f))))))))));
    global0 = u_input.a.x;
    let var_1 = vec2<i32>(_wgslsmith_div_i32(abs(~(-27942i)), -_wgslsmith_add_i32(1i, arg_0)) ^ 1i, 16800i);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-683f)) * -1038f)), var_0.x, _wgslsmith_f_op_f32(-var_0.x));
    return !select(func_2(), vec3<bool>(any(vec2<bool>(true, true)), any(vec3<bool>(true, false, true)), true), !select(vec3<bool>(true, true, true), func_2(), vec3<bool>(true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(~(~vec2<i32>(1i, -12581i)), vec2<i32>(1i, 1i)), -7753i);
    global0 = max(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~(~u_input.b.x), reverseBits(u_input.c.x) ^ 0u, firstTrailingBit(4294967295u)), u_input.c.x), ~(~countOneBits(reverseBits(u_input.b.x))));
    let var_1 = select(!select(select(vec3<bool>(false, false, false), func_1(var_0), false), vec3<bool>(func_1(-43894i).x, func_1(-39956i).x, any(vec4<bool>(false, false, false, false))), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), func_1(~_wgslsmith_mod_i32(min(-1i, var_0), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, -98i, var_0), vec3<i32>(20652i, var_0, 0i)))), func_1(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, 2147483647i, 10293i), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0, 2147483647i, -1i), vec3<i32>(-27873i, var_0, var_0))) & select(_wgslsmith_dot_vec4_i32(vec4<i32>(31474i, var_0, var_0, var_0), vec4<i32>(-2721i, -44048i, 1i, var_0)), ~(-39229i), func_2().x)));
    global0 = 4294967295u;
    global0 = firstTrailingBit(_wgslsmith_clamp_u32(firstLeadingBit(u_input.c.x), select(82570u >> (u_input.c.x % 32u), abs(4294967295u), (var_0 & var_0) < -1i), countOneBits(~(~6216u))));
    let var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(u_input.b.zy, abs(u_input.a.zx)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1201f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1008f, -752f)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(751f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(593f, 1552f)), _wgslsmith_f_op_f32(abs(-1000f))), var_1.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-444f)), _wgslsmith_div_f32(-566f, -254f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -854f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-245f * 1718f)))))), var_0);
}

