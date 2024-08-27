struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_3.b.b.x, _wgslsmith_div_f32(arg_1.b.a.x, -2054f)))));
    var var_1 = vec2<bool>(!arg_1.d & arg_3.d, any(!select(select(vec2<bool>(arg_3.c, arg_1.c), vec2<bool>(arg_3.c, arg_1.d), true), select(vec2<bool>(arg_3.c, false), vec2<bool>(false, true), vec2<bool>(arg_3.c, arg_0)), !vec2<bool>(arg_0, false))));
    let var_2 = Struct_3(u_input.a.x);
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_3.b.b.x * _wgslsmith_f_op_f32(ceil(arg_3.b.a.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * -1874f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.a.x)), _wgslsmith_f_op_f32(arg_3.b.a.x - _wgslsmith_f_op_f32(trunc(1343f)))))));
    var var_3 = Struct_3(-u_input.a.x);
    return arg_1.b.a.x;
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_div_vec4_u32(u_input.d & ~(~(~u_input.d)), ~_wgslsmith_mult_vec4_u32(~select(vec4<u32>(28297u, 1u, u_input.d.x, u_input.e.x), u_input.d, vec4<bool>(true, true, true, false)), countOneBits(~vec4<u32>(4294967295u, 0u, 1u, u_input.e.x))));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(734f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(false, Struct_2(u_input.d, Struct_1(vec4<f32>(2611f, -1000f, 857f, 242f), vec3<f32>(548f, 555f, 1000f), u_input.d.x, -916f), false, true), Struct_3(u_input.c), Struct_2(vec4<u32>(67675u, var_0.x, 4294967295u, var_0.x), Struct_1(vec4<f32>(923f, -1110f, -264f, -539f), vec3<f32>(-728f, -1505f, -1000f), var_0.x, -575f), false, false))) * _wgslsmith_f_op_f32(trunc(228f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(289f * -157f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1184f))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(174f, _wgslsmith_f_op_f32(func_3(true, Struct_2(vec4<u32>(var_0.x, var_0.x, var_0.x, 0u), Struct_1(vec4<f32>(1295f, 536f, -1000f, -1442f), vec3<f32>(-696f, 1899f, 1393f), u_input.e.x, -1111f), false, true), Struct_3(-1i), Struct_2(vec4<u32>(u_input.e.x, var_0.x, 0u, 14382u), Struct_1(vec4<f32>(256f, 879f, -1017f, -2325f), vec3<f32>(-1000f, 661f, 792f), var_0.x, -2065f), true, false))))));
    let var_2 = u_input.e.x;
    let var_3 = _wgslsmith_div_vec4_i32(vec4<i32>(0i, 20657i, abs(1i) << (u_input.e.x % 32u), -select(~2147483647i, ~u_input.a.x, false)), vec4<i32>(1i, u_input.c, abs(u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, select(u_input.c, u_input.c, false)), u_input.a.zx)));
    var var_4 = firstLeadingBit(vec4<u32>(~4294967295u, 15904u, 1u, ~30471u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: vec3<i32>) -> i32 {
    var var_0 = Struct_3(~u_input.c);
    var var_1 = Struct_2(u_input.d, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-203f, 1542f, arg_0.x, 268f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.zyz, _wgslsmith_div_vec3_f32(arg_0.yxy, vec3<f32>(arg_0.x, 2153f, arg_0.x)))), _wgslsmith_mod_u32(~u_input.e.x, u_input.e.x & arg_1.x) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, u_input.e.x), _wgslsmith_mult_vec4_u32(vec4<u32>(11u, arg_1.x, 4294967295u, 3944u), vec4<u32>(42346u, 1u, arg_1.x, 1u))), _wgslsmith_f_op_f32(-arg_0.x)), !(true | !all(vec4<bool>(true, false, true, true))), -1i >= var_0.a);
    var_1 = Struct_2(_wgslsmith_mult_vec4_u32(reverseBits(~abs(u_input.d)), _wgslsmith_sub_vec4_u32(vec4<u32>(20622u, var_1.b.c, 35293u, arg_1.x) ^ vec4<u32>(var_1.a.x, 0u, 28678u, 4294967295u), u_input.d)), var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.a.x * -1000f)) <= -933f, !var_1.d & !var_1.d);
    var var_2 = _wgslsmith_sub_vec3_u32(~(~var_1.a.wxx), select(vec3<u32>(u_input.e.x ^ 4294967295u, 0u, 24298u), var_1.a.zxy, ~u_input.e.x <= abs(0u))) | var_1.a.zxy;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1280f)))) + _wgslsmith_f_op_f32(func_2()));
    return -65264i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec4<i32>(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(866f, 416f, 298f, -609f) * vec4<f32>(1000f, 408f, 1853f, 1281f)), select(vec4<u32>(4294967295u, 1u, u_input.d.x, u_input.d.x), u_input.d, vec4<bool>(true, false, false, false)), max(u_input.a, u_input.a)) ^ ~_wgslsmith_sub_i32(u_input.c, u_input.b), reverseBits(_wgslsmith_mod_i32(-2147483647i, _wgslsmith_add_i32(2147483647i, u_input.c))), -2147483647i, u_input.a.x);
    var_0 = ~vec4<i32>(reverseBits(~u_input.b), 2147483647i, u_input.a.x, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1413f)), _wgslsmith_f_op_f32(f32(-1f) * -2619f))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(abs(4294967295u), u_input.d.x << (u_input.e.x % 32u), 0u), _wgslsmith_clamp_vec3_u32(~u_input.d.yyy, _wgslsmith_mod_vec3_u32(u_input.e, vec3<u32>(7491u, u_input.e.x, 25479u)), u_input.e)), _wgslsmith_sub_u32(~63414u, ~(~u_input.e.x) >> (~select(u_input.e.x, 0u, false) % 32u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1618f, -651f)) * -736f))), _wgslsmith_f_op_f32(max(1f, 849f)))));
}

