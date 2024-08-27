struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec4<bool>(true, false, false, true), vec4<i32>(-9417i, -1i, 0i, 42147i), vec3<u32>(37166u, 1u, 640u), vec2<u32>(62239u, 73363u), 202f));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<u32>) -> vec4<bool> {
    let var_0 = !vec3<bool>(!(2147483647i <= _wgslsmith_clamp_i32(arg_0.b.x, arg_0.b.x, u_input.a.x)), arg_0.a.x, arg_0.a.x);
    var var_1 = !all(select(arg_0.a, select(select(arg_0.a, arg_0.a, vec4<bool>(var_0.x, var_0.x, true, true)), vec4<bool>(arg_0.a.x, true, true, arg_0.a.x), !var_0.x), arg_0.a));
    global0 = array<Struct_1, 1>();
    let var_2 = arg_0;
    let var_3 = firstLeadingBit(~abs(~countOneBits(vec3<u32>(arg_2.x, var_2.c.x, 4294967295u))));
    return vec4<bool>(true, any(select(var_2.a, vec4<bool>(true, any(arg_0.a.yxz), !var_0.x, any(vec4<bool>(arg_0.a.x, true, false, var_2.a.x))), var_2.a)), false, true);
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = global0[_wgslsmith_index_u32(u_input.b.x, 1u)];
    return Struct_1(select(func_3(global0[_wgslsmith_index_u32(u_input.b.x | _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), 1u)], abs(var_1.b.zyw), var_1.c), !var_1.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_1.e)))) != _wgslsmith_f_op_f32(min(var_1.e, var_1.e))), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(-var_1.b, vec4<i32>(10706i, var_1.b.x, 1i, u_input.a.x)), var_1.b), ~_wgslsmith_mult_vec3_u32(~(~u_input.b.wzw), _wgslsmith_mult_vec3_u32(~var_1.c, var_1.c ^ var_1.c)), u_input.b.xy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_1.e)), var_1.e))))));
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = arg_2;
    let var_1 = _wgslsmith_mod_u32(max(var_0.d.x, var_0.c.x), arg_1.x);
    var var_2 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(16133i, -max(-2147483647i, -2147483647i), var_0.b.x, func_2(vec3<bool>(var_0.a.x, true, var_0.a.x)).b.x), _wgslsmith_mult_vec4_i32(-var_0.b, vec4<i32>(arg_2.b.x, -2147483647i, -56375i, u_input.a.x)) | _wgslsmith_div_vec4_i32(arg_2.b >> (vec4<u32>(4294967295u, 1u, 47111u, 1u) % vec4<u32>(32u)), vec4<i32>(2147483647i, arg_2.b.x, var_0.b.x, arg_2.b.x) >> (u_input.b % vec4<u32>(32u)))), ~((max(43806i, arg_2.b.x) ^ select(var_0.b.x, 0i, var_0.a.x)) >> (~6673u % 32u)));
    var var_3 = vec3<u32>(var_0.d.x, 17882u, ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(arg_2.d.x, 37085u, 21202u, var_0.d.x)) & ~u_input.b, vec4<u32>(var_0.d.x, select(var_0.c.x, var_1, var_0.a.x), 35552u ^ arg_2.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, u_input.b.x, var_0.d.x, arg_0), u_input.b))));
    var var_4 = Struct_1(vec4<bool>(func_2(func_2(!vec3<bool>(arg_2.a.x, arg_2.a.x, false)).a.yxz).a.x, var_0.a.x, true, true), vec4<i32>(-1i, arg_2.b.x, var_0.b.x & u_input.a.x, _wgslsmith_mod_i32(var_0.b.x, abs(var_0.b.x))), vec3<u32>(7190u, _wgslsmith_dot_vec2_u32(firstTrailingBit(~vec2<u32>(88023u, arg_0)), vec2<u32>(arg_2.c.x, ~0u)), ~_wgslsmith_mod_u32(12698u, reverseBits(63195u))), vec2<u32>(var_0.d.x, u_input.b.x), arg_2.e);
    return _wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_0.d.x >> (var_4.d.x % 32u), 4979u, 1u ^ func_2(select(var_0.a.zzy, arg_2.a.xzw, vec3<bool>(true, var_4.a.x, true))).c.x), u_input.b);
}

fn func_1(arg_0: Struct_1) -> bool {
    global0 = array<Struct_1, 1>();
    var var_0 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x | arg_0.d.x, 1u, ~arg_0.c.x), vec4<u32>(u_input.b.x >> (arg_0.c.x % 32u), ~arg_0.c.x, 135814u, 1u)) | arg_0.d.x, _wgslsmith_mult_u32(~firstTrailingBit(u_input.b.x | 10749u), arg_0.d.x & ~(arg_0.c.x | u_input.b.x)), 1u, u_input.b.x);
    global0 = array<Struct_1, 1>();
    var_0 = func_4(5457u, arg_0.c ^ vec3<u32>(1u, ~_wgslsmith_mult_u32(0u, 69582u), ~(~88888u)), func_2(vec3<bool>(!any(vec3<bool>(true, arg_0.a.x, true)), true, true)));
    var var_1 = -u_input.a.x;
    return !func_2(vec3<bool>(true, true, false)).a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 1>();
    var var_0 = vec3<bool>(any(vec4<bool>(true, true, false, true)), all(!select(vec2<bool>(false, true), vec2<bool>(true, true), true)), false);
    var_0 = select(vec3<bool>(func_1(global0[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(63024u, 42944u)), 1u)]), func_3(func_2(vec3<bool>(false, var_0.x, true)), select(~vec3<i32>(25188i, u_input.a.x, -17719i), select(vec3<i32>(5774i, -1i, -13371i), vec3<i32>(0i, u_input.a.x, u_input.a.x), var_0.x), !var_0.x), max(vec3<u32>(u_input.b.x, u_input.b.x, 27144u), ~vec3<u32>(1u, u_input.b.x, 19451u))).x, var_0.x), !(!(!vec3<bool>(var_0.x, var_0.x, var_0.x))), var_0.x);
    var_0 = vec3<bool>(func_1(func_2(func_3(Struct_1(vec4<bool>(false, false, false, var_0.x), vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x), u_input.b.xww, vec2<u32>(u_input.b.x, u_input.b.x), 1033f), vec3<i32>(u_input.a.x, 0i, u_input.a.x) & vec3<i32>(-34080i, u_input.a.x, u_input.a.x), ~u_input.b.zzw).zxz)), !(true & (true | (var_0.x | var_0.x))), select(false, firstLeadingBit(u_input.a.x ^ 8451i) > ~(-39672i), false));
    var_0 = vec3<bool>(true, !func_1(func_2(!vec3<bool>(var_0.x, var_0.x, var_0.x))), all(vec3<bool>(false, !all(vec3<bool>(true, false, var_0.x)), var_0.x)));
    let var_1 = firstLeadingBit(~vec4<i32>(-1i | -u_input.a.x, 20013i, u_input.a.x ^ -2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -84620i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), firstTrailingBit(vec3<i32>(u_input.a.x, u_input.a.x, 0i)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(289f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2428f * -324f) - 934f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1011f)) - _wgslsmith_div_f32(869f, 194f)) * _wgslsmith_f_op_f32(-2662f * -484f))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.zxz);
}

