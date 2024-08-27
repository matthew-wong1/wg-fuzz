struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<bool>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: f32,
    e: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18> = array<bool, 18>(true, true, false, false, true, false, true, true, false, false, false, true, true, false, false, true, false, true);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>) -> bool {
    global0 = array<bool, 18>();
    let var_0 = ~(~max(~vec4<u32>(1u, 14579u, 31315u, 50760u), ~vec4<u32>(1u, 46277u, 62549u, 4294967295u)));
    var var_1 = Struct_3(abs(u_input.a), Struct_2(~36014u, true, arg_1.x, select(1u << (select(var_0.x, 1u, false) % 32u), 21852u, true)), Struct_2(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(var_0.wz, vec2<u32>(var_0.x, var_0.x)), _wgslsmith_add_u32(38855u, var_0.x)), !(!all(vec4<bool>(true, false, arg_0, true))), arg_1.x, _wgslsmith_mod_u32(var_0.x, ~_wgslsmith_dot_vec4_u32(var_0, vec4<u32>(var_0.x, 40470u, 20442u, var_0.x)))), 300f, _wgslsmith_dot_vec2_i32(arg_1 << (vec2<u32>(~var_0.x, _wgslsmith_div_u32(var_0.x, 48359u)) % vec2<u32>(32u)), abs(vec2<i32>(arg_1.x >> (1u % 32u), arg_1.x & u_input.a))));
    var var_2 = abs(~_wgslsmith_clamp_u32(var_0.x, var_1.b.d, var_0.x));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d, var_1.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-583f)), _wgslsmith_f_op_f32(round(var_1.d)))), 2338f) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.d, var_1.d, var_1.d, -516f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d, var_1.d, -272f, 837f) * vec4<f32>(-1572f, 408f, 284f, 404f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.d, -232f, -1663f, 802f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, 1129f, var_1.d, 372f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, 131f, var_1.d, var_1.d)), _wgslsmith_f_op_vec4_f32(vec4<f32>(389f, 1000f, var_1.d, 223f) + vec4<f32>(622f, var_1.d, var_1.d, 2255f)))) + vec4<f32>(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(exp2(var_1.d)), -523f, _wgslsmith_f_op_f32(-var_1.d))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, var_1.d, var_1.d, -577f)), vec4<f32>(564f, 590f, _wgslsmith_f_op_f32(f32(-1f) * -496f), _wgslsmith_f_op_f32(min(var_1.d, 282f)))))));
    return true;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: u32) -> vec3<bool> {
    global0 = array<bool, 18>();
    let var_0 = 37044u;
    let var_1 = select(!(!vec3<bool>(true, !global0[_wgslsmith_index_u32(var_0, 18u)], any(vec2<bool>(arg_0.x, arg_0.x)))), vec3<bool>(all(arg_0.zz), func_3(false, ~(~vec2<i32>(u_input.a, u_input.a))), arg_0.x), global0[_wgslsmith_index_u32(~arg_2, 18u)]);
    global0 = array<bool, 18>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -767f))));
    return select(var_1, select(vec3<bool>(false, true, var_1.x), !vec3<bool>(!var_1.x, true, false && global0[_wgslsmith_index_u32(90752u, 18u)]), false), vec3<bool>(false, !func_3(all(vec4<bool>(var_1.x, true, global0[_wgslsmith_index_u32(arg_2, 18u)], var_1.x)), max(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 1i))), any(arg_0)));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(firstLeadingBit(87882u), false, ~(1i | ~u_input.a), _wgslsmith_add_u32(~22433u, ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(45842u, 0u, 65604u), ~1u)));
    let var_1 = select(vec3<bool>(var_0.b, (-17657i ^ -var_0.c) > 0i, global0[_wgslsmith_index_u32(var_0.a, 18u)]), select(vec3<bool>(!(!global0[_wgslsmith_index_u32(4294967295u, 18u)]), var_0.b, true), vec3<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_0.d, firstLeadingBit(0u)), 18u)], all(select(vec3<bool>(var_0.b, global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(0u, 18u)]), vec3<bool>(false, var_0.b, true), global0[_wgslsmith_index_u32(4294967295u, 18u)]))), select(vec3<bool>(!global0[_wgslsmith_index_u32(var_0.d, 18u)], true, true), func_2(select(vec3<bool>(false, true, var_0.b), vec3<bool>(var_0.b, true, true), vec3<bool>(true, false, false)), ~vec2<u32>(var_0.a, 35010u), var_0.d), all(select(vec2<bool>(true, var_0.b), vec2<bool>(global0[_wgslsmith_index_u32(var_0.d, 18u)], var_0.b), false)))), true);
    global0 = array<bool, 18>();
    let var_2 = Struct_1(!select(vec2<bool>(func_2(vec3<bool>(true, var_1.x, false), vec2<u32>(39084u, 4294967295u), 25649u).x, true), vec2<bool>(true, true), vec2<bool>(all(var_1.zz), true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1445f - -1163f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -237f))), -1000f, var_0.b)), var_1, var_0.a, 0i);
    var var_3 = abs(~var_0.d);
    return Struct_1(var_2.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1446f * _wgslsmith_f_op_f32(-175f + -1009f)))), !vec3<bool>(var_2.a.x, (12068i >> (var_2.d % 32u)) <= var_0.c, !var_0.b), var_2.d, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = vec3<i32>(-var_0.e, u_input.a, var_0.e);
    var var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(2147483647i, u_input.a) & (firstTrailingBit(-1528i) & -29181i), min(max(-8937i, var_1.x), reverseBits(abs(var_1.x))), -47638i, reverseBits(~0i)), min(~(~vec4<i32>(7634i, var_0.e, var_0.e, u_input.a)), firstTrailingBit(abs(vec4<i32>(-1687i, 2720i, var_1.x, var_1.x) & vec4<i32>(var_0.e, var_0.e, var_1.x, -65732i)))));
    global0 = array<bool, 18>();
    var var_3 = var_2.x == (-1i & (var_2.x ^ var_0.e));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(var_0.b)), _wgslsmith_mult_i32(_wgslsmith_div_i32(var_0.e, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(var_2.yxx, vec3<i32>(115i, u_input.a, var_1.x)), abs(15153i))), _wgslsmith_sub_i32(~(u_input.a ^ 0i), -7684i)));
}

