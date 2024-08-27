struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: vec4<bool>,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<vec3<bool>, 8>;

var<private> global2: f32 = 185f;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    var var_0 = ~arg_1.b;
    let var_1 = global0.c;
    return var_1.d.x;
}

fn func_3() -> i32 {
    global0 = Struct_5(_wgslsmith_mult_u32(1u, countOneBits(47337u) >> (1u % 32u)), ~60727u, global0.c, Struct_2(_wgslsmith_f_op_f32(-global0.d.a), ~vec3<u32>(0u, u_input.a, 19832u), select(global0.c.a.c, vec4<bool>(global0.c.a.c.x, global0.c.a.c.x, true, global0.d.c.x), global0.d.c.x), _wgslsmith_sub_vec2_i32(abs(-vec2<i32>(14954i, 1i)), max(~vec2<i32>(1i, 18832i), -global0.c.a.d)), global0.d.e));
    var var_0 = ~select(vec4<u32>(global0.c.b.x, 4294967295u, _wgslsmith_mod_u32(u_input.a, global0.c.b.x) | u_input.a, _wgslsmith_dot_vec2_u32(~vec2<u32>(global0.a, 12564u), ~global0.d.b.yx)), ~(vec4<u32>(global0.c.a.b.x, 0u, u_input.a, global0.b) | _wgslsmith_add_vec4_u32(vec4<u32>(44575u, global0.a, u_input.a, 47160u), vec4<u32>(global0.a, global0.d.b.x, u_input.a, u_input.a))), true | global0.c.a.c.x);
    var var_1 = all(vec2<bool>(all(global0.d.c), all(global0.d.c.ww)));
    let var_2 = Struct_3(global0.d, firstLeadingBit(global0.c.d), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global0.d.e * _wgslsmith_f_op_vec2_f32(-global0.d.e)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.c.c))), select(true, !all(global1[_wgslsmith_index_u32(u_input.a, 8u)]), true))), ~(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(global0.c.a.b, global0.d.b, vec3<u32>(u_input.a, var_0.x, 3020u)), select(vec3<u32>(1u, u_input.a, var_0.x), var_0.xyx, vec3<bool>(global0.d.c.x, false, global0.d.c.x))) << (~_wgslsmith_div_vec3_u32(var_0.yzy, vec3<u32>(34643u, var_0.x, global0.a)) % vec3<u32>(32u))));
    let var_3 = global0.c;
    return -1i;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(reverseBits(~_wgslsmith_dot_vec4_i32(vec4<i32>(global0.c.a.d.x, u_input.b.x, 19052i, global0.c.a.d.x), vec4<i32>(global0.d.d.x, 1i, -1i, u_input.b.x)) ^ abs(0i)), u_input.b, -firstTrailingBit(global0.c.a.d.x), !(!vec3<bool>(any(global0.d.c), global0.c.a.c.x, global0.d.c.x)));
    global1 = array<vec3<bool>, 8>();
    var var_1 = global0.d.e;
    var var_2 = vec2<i32>(select(-(_wgslsmith_clamp_i32(-12041i, 10323i, global0.d.d.x) & -997i), u_input.b.x, false), ~_wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -22960i, u_input.b.x, 38014i), vec3<i32>(func_3(), func_3(), -u_input.b.x)));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(2628f)))) + _wgslsmith_f_op_f32(514f - -1964f)), false)), _wgslsmith_f_op_f32(min(410f, 1f)), var_1.x, _wgslsmith_f_op_f32(sign(global0.d.a)));
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_1.x))))), ~(~select(vec3<u32>(11401u, u_input.a, 14250u), vec3<u32>(u_input.a, global0.c.b.x, 43909u), true)), global0.c.a.c, max(vec2<i32>(global0.c.a.d.x, var_0.b.x) | (global0.c.a.d >> (global0.d.b.zx % vec2<u32>(32u))), select(u_input.b.zy, var_0.b.yz, select(vec2<bool>(true, global0.d.c.x), global0.c.a.c.xz, var_0.d.x))), vec2<f32>(-160f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.x))))), ~abs(~_wgslsmith_mod_vec3_u32(global0.c.a.b, vec3<u32>(1976u, u_input.a, 0u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-299f, global0.c.c.x) * var_3.yy), abs(~abs(_wgslsmith_mult_vec3_u32(global0.c.d, global0.d.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_5(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(global0.d.b, abs(global0.c.a.b | global0.d.b)), abs(func_1(Struct_1(5370i, vec3<i32>(global0.c.a.d.x, -2147483647i, global0.c.a.d.x), 1i, vec3<bool>(false, true, false)), Struct_2(393f, vec3<u32>(u_input.a, global0.d.b.x, 0u), vec4<bool>(global0.d.c.x, global0.c.a.c.x, global0.c.a.c.x, global0.d.c.x), global0.d.d, global0.c.c)))), reverseBits(global0.d.b.x << (_wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.a, 4294967295u), global0.d.b.xx), vec2<u32>(1u, 8383u) >> (global0.c.a.b.yy % vec2<u32>(32u))) % 32u)), func_2(), func_2().a);
    global0 = Struct_5(global0.d.b.x, ~(~(~(~3296u))), Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-837f * -353f) + 689f), reverseBits(vec3<u32>(38616u, u_input.a, 8873u) << (global0.c.a.b % vec3<u32>(32u))), !select(global0.c.a.c, vec4<bool>(true, global0.d.c.x, global0.d.c.x, false), true), select(vec2<i32>(u_input.b.x, 11238i), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), u_input.b.zy), func_2().a.c.ww), vec2<f32>(_wgslsmith_f_op_f32(round(-953f)), _wgslsmith_f_op_f32(544f - global0.c.c.x))), ~(_wgslsmith_div_vec3_u32(global0.c.b, vec3<u32>(u_input.a, u_input.a, 4636u)) | ~vec3<u32>(51688u, 42588u, u_input.a)), vec2<f32>(-1700f, global0.d.e.x), global0.d.b), Struct_2(-649f, abs(vec3<u32>(67464u, u_input.a, 29994u)), vec4<bool>(global0.d.c.x, global0.d.c.x, global0.c.a.c.x, !select(true, false, false)), select(abs(vec2<i32>(u_input.b.x, global0.d.d.x)), u_input.b.zz, func_2().a.c.wz), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c.c.x, _wgslsmith_f_op_f32(exp2(global0.d.e.x))) * vec2<f32>(_wgslsmith_f_op_f32(min(global0.c.c.x, 2683f)), _wgslsmith_f_op_f32(round(379f))))));
    let var_0 = _wgslsmith_sub_vec4_u32(abs(~firstLeadingBit(~vec4<u32>(1u, global0.d.b.x, global0.a, 42462u))), ~vec4<u32>(u_input.a, ~(~global0.a), 13741u, global0.b));
    global1 = array<vec3<bool>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(var_0.xy, _wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, global0.b), global0.c.d.zz), ~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 11443u), global0.d.b.yz)), ~func_2().a.b.yz, vec2<u32>(27134u, ~4294967295u) | ~_wgslsmith_sub_vec2_u32(global0.d.b.xz, vec2<u32>(u_input.a, 3897u))), _wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(~var_0.xyx, ~vec3<u32>(36747u, 4294967295u, 4294967295u)), 4294967295u));
}

