struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec3<u32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: u32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
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

var<private> global0: vec3<f32>;

var<private> global1: array<u32, 25> = array<u32, 25>(22977u, 3510u, 0u, 19691u, 0u, 10633u, 1u, 12174u, 20678u, 13729u, 29520u, 28265u, 1u, 25496u, 7369u, 40985u, 10535u, 1u, 1u, 4294967295u, 0u, 30596u, 0u, 14328u, 26857u);

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<i32>(-1i, i32(-2147483648), 2147483647i, -23586i), 1134f, vec3<u32>(68754u, 0u, 92121u), 53239u, -1402f), Struct_1(vec4<i32>(-597i, 25908i, -1i, -29791i), -352f, vec3<u32>(4294967295u, 77152u, 44467u), 4294967295u, 1940f), Struct_1(vec4<i32>(i32(-2147483648), 0i, 59181i, 25174i), -1132f, vec3<u32>(1u, 4294967295u, 57526u), 0u, -1127f), Struct_1(vec4<i32>(22568i, 17258i, 26241i, -1i), -720f, vec3<u32>(4294967295u, 56930u, 28695u), 33834u, -133f), Struct_1(vec4<i32>(-1i, 2147483647i, 17744i, 0i), -1000f, vec3<u32>(4294967295u, 84008u, 31253u), 0u, -1843f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32) -> i32 {
    let var_0 = select(!select(!select(arg_0.ywy, vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), vec3<bool>(true, arg_0.x, u_input.b <= global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 25u)], 25u)], 25u)]), select(select(arg_0.zww, arg_0.zyy, arg_0.yzz), vec3<bool>(arg_0.x, arg_0.x, true), true)), !(!vec3<bool>(false & arg_0.x, !arg_0.x, false)), select(!select(vec3<bool>(false, arg_0.x, arg_0.x), select(vec3<bool>(true, true, arg_0.x), arg_0.zyz, arg_0.zzz), select(vec3<bool>(false, arg_0.x, false), vec3<bool>(true, false, arg_0.x), arg_0.x)), select(select(vec3<bool>(arg_0.x, false, true), vec3<bool>(true, true, false), arg_0.zzy), arg_0.zyz, false), !vec3<bool>(true, true, any(vec3<bool>(true, arg_0.x, true)))));
    var var_1 = vec2<u32>(~9067u, ~u_input.b);
    var var_2 = Struct_2(global2[_wgslsmith_index_u32(u_input.b, 5u)], 2147483647i, u_input.b, vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 25u)], var_1.x, 31209u), vec2<f32>(global0.x, arg_1));
    global1 = array<u32, 25>();
    global2 = array<Struct_1, 5>();
    return -reverseBits(-min(u_input.c.x, 3896i));
}

fn func_4(arg_0: i32, arg_1: vec2<i32>, arg_2: f32) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1562f, arg_2, arg_2, global0.x), vec4<f32>(global0.x, 1600f, arg_2, arg_2)))))))));
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    global1 = array<u32, 25>();
    global1 = array<u32, 25>();
    var var_0 = _wgslsmith_f_op_vec4_f32(func_4(func_3(!vec4<bool>(global0.x > -3097f, true, true, true), _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(u_input.c.x, _wgslsmith_div_i32(-7319i, u_input.c.x))), u_input.c), 847f));
    global2 = array<Struct_1, 5>();
    let var_1 = Struct_2(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(u_input.b, 25u)], 4294967295u)), 25u)], 25u)], 25u)], 5u)], 34887i | max(func_3(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(func_4(u_input.c.x, vec2<i32>(u_input.c.x, u_input.c.x), -616f)).x), 16159i), _wgslsmith_mod_u32(~u_input.a, ~1u), ~(~(~vec3<u32>(1u, global1[_wgslsmith_index_u32(4294967295u, 25u)], 0u)) ^ vec3<u32>(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 25u)], 25u)], reverseBits(u_input.a), global1[_wgslsmith_index_u32(45200u, 25u)] << (u_input.a % 32u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1143f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1024f)))) * var_0.zw));
    return var_0.x;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>) -> vec2<u32> {
    global1 = array<u32, 25>();
    global1 = array<u32, 25>();
    global0 = vec3<f32>(560f, arg_0.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, -1428f), vec3<f32>(global0.x, arg_1.x, global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_1.x, 1000f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1511f), _wgslsmith_f_op_f32(max(arg_1.x, 1030f)), all(vec3<bool>(true, false, false)))))));
    let var_0 = arg_0;
    var var_1 = arg_0.b;
    return vec2<u32>(_wgslsmith_div_u32(~_wgslsmith_add_u32(17409u, 1u), abs(1u)), _wgslsmith_sub_u32(arg_0.c, ~var_0.c)) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(~_wgslsmith_clamp_u32(10788u, 0u, global1[_wgslsmith_index_u32(24993u, 25u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(26050u, 4294967295u, var_0.c, arg_0.a.d), vec4<u32>(2633u, 1u, 2841u, global1[_wgslsmith_index_u32(arg_0.c, 25u)])) >> (1u % 32u)), ~(~vec2<u32>(33922u, global1[_wgslsmith_index_u32(var_0.a.d, 25u)]))) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 5>();
    let var_0 = ~(~vec2<u32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 64970u), 25u)], _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(u_input.a, 25u)], 1u, 11802u), vec4<u32>(35004u, 29249u, global1[_wgslsmith_index_u32(0u, 25u)], 84809u)))) & ((reverseBits(vec2<u32>(4294967295u, u_input.a)) | ~(~vec2<u32>(1u, u_input.b))) | _wgslsmith_div_vec2_u32(func_1(Struct_2(Struct_1(vec4<i32>(u_input.c.x, -49260i, 2147483647i, u_input.c.x), -570f, vec3<u32>(global1[_wgslsmith_index_u32(u_input.b, 25u)], u_input.a, 0u), global1[_wgslsmith_index_u32(u_input.a, 25u)], global0.x), 58980i, u_input.b, vec3<u32>(1u, global1[_wgslsmith_index_u32(82880u, 25u)], u_input.a), vec2<f32>(global0.x, -1018f)), vec2<f32>(global0.x, global0.x)), reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(35447u, 25u)], 43917u), vec2<u32>(global1[_wgslsmith_index_u32(7109u, 25u)], 4294967295u)))));
    global1 = array<u32, 25>();
    let var_1 = Struct_2(global2[_wgslsmith_index_u32(17756u, 5u)], _wgslsmith_sub_i32(u_input.c.x, max(_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.c.x, u_input.c.x), firstTrailingBit(-47i)), ~(~u_input.c.x))), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~var_0, var_0), min(_wgslsmith_clamp_vec2_u32(var_0, vec2<u32>(16867u, 1u) & vec2<u32>(23531u, var_0.x), ~vec2<u32>(3243u, u_input.b)), var_0)), ~abs(countOneBits(~vec3<u32>(1u, var_0.x, 1u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global0.zy)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.xz) + global0.xz) - vec2<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1430f)))));
    var var_2 = Struct_3(!(var_1.d.x >= u_input.b), global2[_wgslsmith_index_u32(~u_input.a, 5u)], true, 40670u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(704f, var_1.e.x, 494f) - vec3<f32>(898f, var_1.e.x, 335f))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(2843i, -min(var_2.b.a.x >> (var_1.c % 32u), 30396i), false), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, _wgslsmith_clamp_i32(-28813i, firstTrailingBit(var_2.b.a.x), u_input.c.x), _wgslsmith_dot_vec3_i32(select(vec3<i32>(var_2.b.a.x, u_input.c.x, u_input.c.x), var_1.a.a.zyx, vec3<bool>(false, false, false)), -var_1.a.a.yzx), -1i), ~vec4<i32>(0i, var_1.b, u_input.c.x, _wgslsmith_add_i32(-5079i, var_1.a.a.x))));
}

