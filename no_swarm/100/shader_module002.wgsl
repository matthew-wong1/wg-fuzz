struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

var<private> global1: array<u32, 14> = array<u32, 14>(23425u, 22169u, 39139u, 28252u, 6495u, 4294967295u, 0u, 79942u, 67378u, 6999u, 26045u, 0u, 32674u, 0u);

var<private> global2: array<i32, 7>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4) -> vec4<bool> {
    let var_0 = u_input.a.x >> ((_wgslsmith_sub_u32(_wgslsmith_mod_u32(46591u, _wgslsmith_mod_u32(0u, u_input.b)), arg_1.a.x) | 4294967295u) % 32u);
    let var_1 = Struct_4(countOneBits(~arg_1.a), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(481f - arg_1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-297f))) * 130f)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) - _wgslsmith_f_op_f32(-var_1.b.x))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2337f))));
    global0 = array<Struct_2, 10>();
    let var_3 = _wgslsmith_f_op_f32(-var_1.b.x);
    return !vec4<bool>((u_input.c.x != ~66636u) && all(vec3<bool>(true, true, false)), true, any(vec4<bool>(true, true, true, true)), any(!select(vec2<bool>(false, true), vec2<bool>(true, false), true)));
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = select(firstTrailingBit(_wgslsmith_div_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -45088i, global2[_wgslsmith_index_u32(4294967295u, 7u)], 37338i), vec4<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 7u)], u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 14u)], 14u)], 14u)], 7u)], u_input.a.x, global2[_wgslsmith_index_u32(u_input.b, 7u)], -155i), vec4<i32>(-4667i, 592i, -2147483647i, 1i) ^ vec4<i32>(global2[_wgslsmith_index_u32(41105u, 7u)], 14198i, u_input.a.x, -1i)))), vec4<i32>(reverseBits(4480i), _wgslsmith_dot_vec4_i32(~vec4<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 7u)], u_input.a.x, global2[_wgslsmith_index_u32(33123u, 7u)], u_input.a.x), ~vec4<i32>(30795i, -2147483647i, global2[_wgslsmith_index_u32(4294967295u, 7u)], u_input.a.x) << (vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(38898u, 14u)], 14u)], 0u, u_input.c.x, u_input.b) % vec4<u32>(32u))), _wgslsmith_mod_i32(u_input.a.x, global2[_wgslsmith_index_u32(11329u, 7u)]), ~(-6135i)), !(!select(!vec4<bool>(true, arg_0, arg_0, arg_0), func_3(Struct_4(vec3<u32>(4294967295u, 71530u, global1[_wgslsmith_index_u32(u_input.b, 14u)]), vec2<f32>(-321f, 821f)), Struct_4(vec3<u32>(26993u, global1[_wgslsmith_index_u32(u_input.b, 14u)], 6837u), vec2<f32>(651f, 824f))), select(vec4<bool>(arg_0, arg_0, true, false), vec4<bool>(false, arg_0, true, arg_0), arg_0))));
    return ~(~u_input.c.x);
}

fn func_1(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = func_2(true);
    let var_1 = ~select(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(arg_0.b.x, 14u)], _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(global1[_wgslsmith_index_u32(54628u, 14u)], var_0, 42106u, 47527u)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, arg_0.b.x), vec2<u32>(33738u, 1u))), 4294967295u), ~1u, arg_0.d.x);
    global2 = array<i32, 7>();
    var var_2 = ~vec2<u32>(1u >> (select(_wgslsmith_dot_vec3_u32(u_input.c.www, vec3<u32>(var_1, 1u, 0u)), firstTrailingBit(global1[_wgslsmith_index_u32(arg_0.b.x, 14u)]), arg_0.d.x) % 32u), countOneBits(~4294967295u));
    global1 = array<u32, 14>();
    return select(func_3(Struct_4(~vec3<u32>(u_input.b, var_1, 28826u), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1752f), -721f)), Struct_4(~arg_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1326f, -1000f), vec2<f32>(-625f, 764f)) * vec2<f32>(157f, -110f)))).yxy, vec3<bool>(true, any(!(!vec4<bool>(true, false, arg_0.d.x, false))), arg_0.d.x), select(vec3<bool>(!(!arg_0.d.x), !(!arg_0.d.x), true), !select(func_3(Struct_4(vec3<u32>(31527u, 38455u, 85884u), vec2<f32>(972f, -1000f)), Struct_4(u_input.c.yxx, vec2<f32>(220f, 820f))).zxz, arg_0.d, arg_0.d), vec3<bool>(!all(vec4<bool>(true, arg_0.d.x, true, false)), false, (u_input.a.x & 2147483647i) <= (u_input.a.x << (4294967295u % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    global2 = array<i32, 7>();
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-700f, -2307f, 242f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(192f, 789f, -119f)))))) + vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1443f * -761f) + -1000f), -781f)));
    global0 = array<Struct_2, 10>();
    var var_2 = vec4<f32>(-931f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - -574f) * _wgslsmith_f_op_f32(floor(var_1.x))), var_1.x, var_1.x);
    let var_3 = !vec4<bool>(false, true, !(global1[_wgslsmith_index_u32(u_input.c.x, 14u)] <= global1[_wgslsmith_index_u32(7181u, 14u)]) && any(func_1(Struct_1(vec3<u32>(3438u, var_0.x, var_0.x), u_input.c.xwy, u_input.a.xx, vec3<bool>(true, false, true)))), true);
    let var_4 = Struct_4(vec3<u32>(u_input.c.x, ~4294967295u, _wgslsmith_mult_u32(1u, ~1u >> (var_0.x % 32u))), _wgslsmith_f_op_vec2_f32(exp2(var_2.zx)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_4.a.x), _wgslsmith_add_i32(_wgslsmith_sub_i32(43029i | global2[_wgslsmith_index_u32(1u, 7u)], 0i) ^ -2147483647i, 2147483647i & reverseBits(u_input.a.x)), _wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_sub_u32(var_4.a.x, _wgslsmith_mod_u32(1u, func_2(var_3.x))));
}

