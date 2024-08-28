struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec3<bool>(false, false, true), vec4<u32>(45624u, 73409u, 4294967295u, 1u), vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, true, true), vec4<u32>(44424u, 43313u, 14377u, 4294967295u), vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, true, true), vec4<u32>(34259u, 0u, 1u, 894u), vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, true), vec4<u32>(987u, 56888u, 0u, 28268u), vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, false), vec4<u32>(44187u, 0u, 0u, 0u), vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, false), vec4<u32>(64228u, 4294967295u, 1u, 43030u), vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, false, true), vec4<u32>(4294967295u, 4294967295u, 1u, 5770u), vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, false, false), vec4<u32>(1u, 0u, 45252u, 32924u), vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, true, false), vec4<u32>(1u, 4294967295u, 4294967295u, 34547u), vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, false, true), vec4<u32>(32725u, 22418u, 4294967295u, 36960u), vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, false, true), vec4<u32>(1443u, 80560u, 0u, 23838u), vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, false, false), vec4<u32>(4294967295u, 1u, 1u, 53406u), vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, false, true), vec4<u32>(0u, 4294967295u, 1045u, 89657u), vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, true), vec4<u32>(65249u, 1u, 1u, 18886u), vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, false, false), vec4<u32>(1u, 4294967295u, 0u, 74998u), vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, true, false), vec4<u32>(9062u, 1u, 4294967295u, 32612u), vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, true), vec4<u32>(0u, 0u, 46754u, 40273u), vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, false), vec4<u32>(99880u, 9123u, 1680u, 53360u), vec3<bool>(true, true, true)));

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec3<bool>(true, true, false), vec4<u32>(41610u, 6479u, 1u, 0u), vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, false), vec4<u32>(21156u, 0u, 23130u, 84474u), vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, true, true), vec4<u32>(76354u, 0u, 39103u, 4294967295u), vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, false, true), vec4<u32>(78810u, 0u, 0u, 11070u), vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, false), vec4<u32>(1u, 183077u, 0u, 7934u), vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, false), vec4<u32>(100699u, 43457u, 69067u, 4294967295u), vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, false), vec4<u32>(4294967295u, 12468u, 46349u, 59718u), vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, true), vec4<u32>(4294967295u, 44279u, 0u, 0u), vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, true, true), vec4<u32>(4294967295u, 5864u, 0u, 36992u), vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, false, true), vec4<u32>(4294967295u, 1u, 0u, 20359u), vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, true, false), vec4<u32>(1u, 4294967295u, 1u, 0u), vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, true), vec4<u32>(4294967295u, 4294967295u, 3790u, 0u), vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, false, true), vec4<u32>(0u, 1u, 95881u, 1u), vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, false, true), vec4<u32>(25932u, 6887u, 1u, 44983u), vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, true, true), vec4<u32>(1u, 1u, 1u, 8999u), vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, true), vec4<u32>(51281u, 0u, 0u, 1u), vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, true), vec4<u32>(0u, 48408u, 12851u, 21976u), vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, true, true), vec4<u32>(1u, 4253u, 4294967295u, 1u), vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, false), vec4<u32>(111374u, 83785u, 136202u, 76275u), vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, true, true), vec4<u32>(52414u, 27513u, 52471u, 1u), vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, true), vec4<u32>(93394u, 36838u, 4150u, 0u), vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, false, false), vec4<u32>(56197u, 0u, 0u, 0u), vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, true, true), vec4<u32>(12899u, 4294967295u, 39096u, 1579u), vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, false, true), vec4<u32>(1u, 6299u, 0u, 4294967295u), vec3<bool>(false, true, false)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: vec2<i32>, arg_3: vec3<f32>) -> vec3<bool> {
    global1 = array<Struct_1, 24>();
    var var_0 = u_input.a;
    let var_1 = arg_3.x;
    var_0 = ~vec4<u32>(_wgslsmith_add_u32(37773u | _wgslsmith_dot_vec4_u32(arg_1, u_input.a), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(var_0.x, arg_0.x, 121139u), 9269u, 15654u)), _wgslsmith_mult_u32(abs(43686u), ~(~u_input.d)), ~(~67522u), u_input.d << (55694u % 32u));
    let var_2 = !vec4<bool>(false, true, all(vec4<bool>(false, true, true, false)), all(vec4<bool>(true, true, true, true)));
    return vec3<bool>(!(true | !select(false, true, false)), all(!(!var_2.xww)), !(!(~u_input.a.x == (u_input.a.x | 15722u))));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    global1 = array<Struct_1, 24>();
    var var_0 = global1[_wgslsmith_index_u32(~(~(~select(u_input.d, ~u_input.a.x, false))), 24u)];
    var var_1 = global1[_wgslsmith_index_u32(~(~var_0.b.x), 24u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_0.ywy, vec3<f32>(_wgslsmith_f_op_f32(min(-1891f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_div_f32(-955f, -1230f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1606f * 759f) + 1522f)), var_1.a)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1239f + 324f), _wgslsmith_f_op_f32(trunc(248f)), _wgslsmith_f_op_f32(trunc(1002f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-365f, -1405f, _wgslsmith_f_op_f32(f32(-1f) * -302f)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(arg_0.wyy, arg_0.zwx, var_1.c.x)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(238f, -2002f, arg_0.x), arg_0.wwx)), !var_1.c.x)))));
    let var_3 = u_input.a.xz;
    return Struct_1(var_1.a, (select(_wgslsmith_mod_vec4_u32(var_1.b, vec4<u32>(var_3.x, var_0.b.x, 0u, var_0.b.x)), var_1.b, vec4<bool>(false, false, false, var_0.a.x)) >> (~var_1.b % vec4<u32>(32u))) & vec4<u32>(var_0.b.x, 4294967295u, 10062u, select(~var_3.x, ~51301u, var_1.a.x)), var_1.a);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global0 = array<Struct_1, 18>();
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(601f, 1087f, -1447f, -585f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(505f, -549f, -574f, 988f))))));
    var var_1 = countOneBits(~(~(~40676u))) ^ _wgslsmith_div_u32(abs(_wgslsmith_dot_vec2_u32(arg_2.b.yw << (vec2<u32>(17518u, 1u) % vec2<u32>(32u)), vec2<u32>(1u, 0u))), ~((arg_2.b.x ^ 45453u) ^ ~u_input.a.x));
    var_1 = ~var_0.b.x;
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(538f, 166f, 339f, -2195f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-421f, -181f, 577f, -451f)))));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(false, false, true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    global0 = array<Struct_1, 18>();
    var_0 = select(!(!(!select(vec4<bool>(true, true, true, var_0.x), vec4<bool>(true, true, var_0.x, false), var_0.x))), vec4<bool>(var_0.x, any(!(!var_0.wx)), true, true), any(!select(func_1(vec2<u32>(15556u, 4294967295u), u_input.a, u_input.c.zz, vec3<f32>(188f, -873f, -1791f)), var_0.xxz, var_0.x && var_0.x)));
    global0 = array<Struct_1, 18>();
    let var_1 = var_0.xzx;
    global0 = array<Struct_1, 18>();
    var var_2 = -487f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xxy, 1i, ~(~u_input.d), u_input.d, _wgslsmith_mod_vec3_u32(u_input.a.xzy, vec3<u32>(~(0u ^ u_input.d), func_3(_wgslsmith_clamp_u32(u_input.a.x, u_input.d, 73704u), func_2(vec4<f32>(-1721f, 1341f, -1062f, -392f)), Struct_1(var_0.yzx, vec4<u32>(4294967295u, u_input.a.x, u_input.d, u_input.d), vec3<bool>(true, var_0.x, true))), _wgslsmith_div_u32(select(0u, u_input.a.x, true), _wgslsmith_mult_u32(1u, u_input.a.x)))));
}

