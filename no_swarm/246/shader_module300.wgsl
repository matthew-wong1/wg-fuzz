struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 14>;

var<private> global1: array<Struct_1, 25>;

var<private> global2: vec3<u32>;

var<private> global3: array<Struct_1, 12>;

var<private> global4: array<Struct_4, 24>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_4 {
    var var_0 = false;
    global0 = array<Struct_4, 14>();
    let var_1 = global1[_wgslsmith_index_u32(global2.x, 25u)];
    global2 = _wgslsmith_add_vec3_u32(reverseBits(~(vec3<u32>(var_1.a, 17727u, global2.x) << (vec3<u32>(var_1.a, global2.x, 0u) % vec3<u32>(32u))) | ~vec3<u32>(var_1.a, var_1.a, u_input.a.x)), abs(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, 30992u), vec2<u32>(global2.x, 1u)), _wgslsmith_add_u32(~var_1.a, u_input.a.x), 4294967295u)));
    global2 = ~vec3<u32>(~(~u_input.a.x), global2.x, 4294967295u);
    return Struct_4(Struct_2(global3[_wgslsmith_index_u32(967u, 12u)], _wgslsmith_f_op_f32(var_1.b.x + _wgslsmith_div_f32(var_1.d.x, _wgslsmith_f_op_f32(735f * -145f)))), var_1.d.x, Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global2.x, reverseBits(_wgslsmith_div_u32(0u, 1u))), 12u)], 1110f));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_4) -> i32 {
    global4 = array<Struct_4, 24>();
    var var_0 = func_2().a;
    global4 = array<Struct_4, 24>();
    let var_1 = Struct_3(!vec4<bool>(false, all(select(vec2<bool>(arg_1.x, arg_1.x), arg_1.wx, true)), arg_1.x | all(arg_1), all(vec3<bool>(arg_1.x, arg_1.x, arg_1.x))));
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_3.c.b)), -185f, _wgslsmith_div_f32(-404f, 255f), _wgslsmith_f_op_f32(-arg_3.b)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, var_0.a.d.x, arg_0, 1000f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(257f, -663f, arg_0, -2195f))), select(var_1.a.x, false, arg_1.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1376f, arg_3.b, arg_0, var_0.b), vec4<f32>(-358f, var_0.a.d.x, arg_0, -1000f)))))));
    return countOneBits(func_2().c.a.c);
}

fn func_4(arg_0: vec3<i32>) -> f32 {
    global1 = array<Struct_1, 25>();
    var var_0 = ~(~vec4<i32>(countOneBits(~(-2147483647i)), arg_0.x, -arg_0.x >> (~global2.x % 32u), func_3(_wgslsmith_f_op_f32(-574f - -943f), vec4<bool>(true, true, true, true), ~global2.x, func_2())));
    var_0 = min(vec4<i32>(~1i, 4169i, i32(-1i) * -countOneBits(4188i), arg_0.x), select(reverseBits(~(-vec4<i32>(5937i, 1i, arg_0.x, -25149i))), max(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, u_input.b, 3234i), vec4<i32>(var_0.x, -7090i, 402i, 1i) >> (vec4<u32>(36691u, u_input.a.x, 1u, u_input.a.x) % vec4<u32>(32u)), vec4<i32>(u_input.b, var_0.x, var_0.x, u_input.b) >> (vec4<u32>(0u, u_input.a.x, global2.x, global2.x) % vec4<u32>(32u))), max(-vec4<i32>(var_0.x, -32528i, u_input.c.x, 0i), vec4<i32>(u_input.c.x, -3548i, u_input.b, var_0.x))), select(vec4<bool>(all(vec4<bool>(false, true, true, true)), true, u_input.b < var_0.x, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, all(vec3<bool>(true, false, false))))));
    global2 = vec3<u32>(global2.x, ~_wgslsmith_clamp_u32(u_input.a.x, ~max(global2.x, global2.x), 4294967295u >> (max(1u, global2.x) % 32u)), (~12527u >> (min(func_2().a.a.a, 4294967295u) % 32u)) & abs(~reverseBits(20870u)));
    var var_1 = func_2().a.a;
    return -266f;
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_f32(func_4(vec3<i32>(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-537f)) - 1012f), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true)), 1u, func_2()), abs(firstLeadingBit(u_input.c.x)) | -2147483647i, select(-9789i, u_input.c.x, true))));
    let var_1 = Struct_4(func_2().c, _wgslsmith_f_op_f32(f32(-1f) * -578f), Struct_2(global3[_wgslsmith_index_u32(~countOneBits(u_input.a.x) >> (_wgslsmith_mult_u32(1u, max(1u, 42155u)) % 32u), 12u)], var_0));
    global2 = ~vec3<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a.x, global2.x & 4294967295u), 37829u), _wgslsmith_dot_vec2_u32(~max(vec2<u32>(u_input.a.x, global2.x), global2.zz), vec2<u32>(69433u, ~u_input.a.x)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(4168u, 8024u, var_1.a.a.a, 1u)), max(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.c.a.a, u_input.a.x, 1u, global2.x), vec4<u32>(u_input.a.x, u_input.a.x, 1u, 1u)), vec4<u32>(28138u, 45599u, u_input.a.x, u_input.a.x))));
    let var_2 = vec3<u32>(0u, firstTrailingBit(max(var_1.a.a.a, _wgslsmith_dot_vec4_u32(vec4<u32>(39030u, 60704u, global2.x, global2.x), vec4<u32>(u_input.a.x, var_1.a.a.a, 35595u, 0u)))) << ((global2.x ^ reverseBits(~4294967295u)) % 32u), 1u);
    var var_3 = ~(~select(78065u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(global2.x, 4294967295u), _wgslsmith_add_u32(global2.x, 0u)), true));
    return !((all(vec4<bool>(false, true, false, true)) && all(vec3<bool>(true, true, true))) || !all(select(vec2<bool>(false, true), vec2<bool>(true, false), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    let var_1 = Struct_3(vec4<bool>(func_1(), false, any(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))), true));
    global4 = array<Struct_4, 24>();
    var var_2 = ~_wgslsmith_mod_u32(max(firstTrailingBit(0u), 4294967295u), 12546u);
    let var_3 = Struct_3(select(var_1.a, select(vec4<bool>(var_1.a.x, true, var_1.a.x, var_1.a.x && var_1.a.x), !vec4<bool>(true, var_1.a.x, var_1.a.x, var_1.a.x), !select(var_1.a, var_1.a, var_1.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1000f)))) == -1000f));
    let var_4 = vec4<u32>(~(~_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.a), vec2<u32>(4294967295u, 7698u))), global2.x, 49423u, ~firstTrailingBit(~1u));
    global4 = array<Struct_4, 24>();
    var var_5 = vec4<bool>(var_1.a.x, var_3.a.x, var_1.a.x, !any(!vec4<bool>(var_1.a.x, true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, firstLeadingBit(vec3<u32>(global2.x, global2.x, countOneBits(global2.x >> (global2.x % 32u)))), 2147483647i, abs(0i));
}

