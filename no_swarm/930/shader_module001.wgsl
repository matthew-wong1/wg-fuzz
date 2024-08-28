struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

var<private> global1: array<vec2<bool>, 14> = array<vec2<bool>, 14>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<i32> {
    global1 = array<vec2<bool>, 14>();
    global1 = array<vec2<bool>, 14>();
    global1 = array<vec2<bool>, 14>();
    let var_0 = Struct_2(Struct_1(vec3<bool>(true, 17125u >= ~u_input.b, true)), !vec2<bool>(all(vec2<bool>(false, false)), all(vec3<bool>(true, true, false))), Struct_1(vec3<bool>(true, true, all(select(vec2<bool>(true, false), vec2<bool>(true, false), false)))));
    var var_1 = vec4<i32>(-(~(~1i)), abs(u_input.a.x), select(-2043i, ~(-u_input.c.x) >> (4294967295u % 32u), select(true, !any(vec4<bool>(var_0.b.x, false, var_0.a.a.x, var_0.c.a.x)), var_0.a.a.x)), u_input.c.x);
    return ~_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(var_1.www, firstTrailingBit(_wgslsmith_mult_vec3_i32(var_1.ywz, var_1.xzx))), ~var_1.yww);
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_2, arg_3: bool) -> f32 {
    let var_0 = -159f;
    let var_1 = vec3<i32>(-_wgslsmith_dot_vec2_i32(min(u_input.a, u_input.a >> (u_input.d.xy % vec2<u32>(32u))), vec2<i32>(-1i) * -u_input.c), u_input.c.x, u_input.a.x & u_input.a.x);
    global1 = array<vec2<bool>, 14>();
    let var_2 = arg_2.c;
    var var_3 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(max(var_1, max(firstTrailingBit(var_1), var_1)), -vec3<i32>(-22089i, u_input.c.x, 35154i)), firstLeadingBit(func_3()));
    return _wgslsmith_f_op_f32(-var_0);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: bool) -> vec4<u32> {
    global1 = array<vec2<bool>, 14>();
    var var_0 = select(select(!(!vec4<bool>(false, true, true, arg_2)), !(!(!vec4<bool>(arg_2, arg_2, arg_0.b.x, true))), select(vec4<bool>(!arg_2, true, any(vec4<bool>(true, true, false, false)), select(arg_0.c.a.x, arg_2, arg_0.c.a.x)), !select(vec4<bool>(arg_2, arg_2, arg_0.c.a.x, arg_0.c.a.x), vec4<bool>(arg_0.a.a.x, false, arg_2, arg_0.c.a.x), vec4<bool>(true, false, true, arg_0.a.a.x)), all(select(vec4<bool>(arg_2, false, false, arg_2), vec4<bool>(arg_0.a.a.x, arg_0.b.x, false, arg_0.c.a.x), vec4<bool>(arg_0.c.a.x, arg_0.b.x, false, false))))), select(vec4<bool>(true, select(arg_0.b.x, true, arg_2) && true, 1i != (arg_1.x & 2147483647i), _wgslsmith_f_op_f32(1916f + -1143f) < _wgslsmith_f_op_f32(func_2(vec4<u32>(u_input.b, u_input.b, u_input.b, 106834u), false, Struct_2(arg_0.a, global1[_wgslsmith_index_u32(28689u, 14u)], arg_0.c), arg_0.a.a.x))), select(!(!vec4<bool>(arg_2, arg_0.c.a.x, arg_0.b.x, true)), !select(vec4<bool>(true, true, arg_2, arg_2), vec4<bool>(arg_0.b.x, false, false, arg_2), vec4<bool>(true, arg_2, true, true)), true), !(!select(vec4<bool>(arg_2, true, arg_2, false), vec4<bool>(true, arg_2, arg_0.a.a.x, arg_2), vec4<bool>(true, arg_0.c.a.x, false, false)))), vec4<bool>(any(arg_0.a.a), arg_2, select(true, arg_0.c.a.x, arg_0.c.a.x != all(global1[_wgslsmith_index_u32(15389u, 14u)])), select(arg_0.c.a.x, countOneBits(u_input.b) <= 1u, !arg_2)));
    var var_1 = Struct_3(u_input.d.x, -2147483647i, abs(vec4<i32>(_wgslsmith_mod_i32(-18627i, arg_1.x), -2195i & arg_1.x, -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-29985i, arg_1.x, 2147483647i), vec3<i32>(u_input.c.x, arg_1.x, 1i))) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -1i, -41643i, 27048i), countOneBits(vec4<i32>(u_input.c.x, arg_1.x, 12436i, arg_1.x)))), vec2<u32>(u_input.b, 20208u << (1u % 32u)));
    var_1 = Struct_3(21573u, max(var_1.b, arg_1.x), abs(var_1.c), var_1.d);
    global0 = array<Struct_2, 23>();
    return min(~vec4<u32>(27364u, max(u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(3413u, 6047u, var_1.a, var_1.d.x), vec4<u32>(var_1.d.x, var_1.a, 4294967295u, 0u))), 81174u ^ var_1.a, ~46921u), vec4<u32>(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, 1u, 24593u)), u_input.d), u_input.b, u_input.d.x, ~var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(vec4<u32>(140698u, u_input.d.x, _wgslsmith_mult_u32(4294967295u, u_input.d.x) >> (_wgslsmith_clamp_u32(u_input.d.x, u_input.b, u_input.b) % 32u), 69923u) ^ ~vec4<u32>(0u | u_input.b, u_input.b, 0u, ~u_input.b));
    global0 = array<Struct_2, 23>();
    var_0 = vec4<u32>(~_wgslsmith_add_u32(u_input.d.x & var_0.x, var_0.x), _wgslsmith_add_u32(u_input.b, u_input.b), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(4294967295u, 1u, 4294967295u)), ~var_0.x << (var_0.x % 32u)), countOneBits(u_input.b)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(0u & u_input.d.x, var_0.x, var_0.x, select(u_input.d.x, var_0.x, true)) ^ firstTrailingBit(vec4<u32>(u_input.d.x, var_0.x, u_input.b, 93620u)), select(func_1(global0[_wgslsmith_index_u32(~15582u, 23u)], u_input.a, true), ~(~vec4<u32>(51645u, u_input.b, var_0.x, 1u)), all(vec3<bool>(true, true, true)))) % vec4<u32>(32u));
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -987f);
    var var_3 = countOneBits(_wgslsmith_dot_vec4_u32(select(~(~vec4<u32>(61604u, 27201u, 30433u, 43863u)), ~(~vec4<u32>(u_input.b, var_0.x, 1u, u_input.d.x)), var_1), _wgslsmith_div_vec4_u32(~(~vec4<u32>(u_input.d.x, 1u, u_input.d.x, u_input.b)), _wgslsmith_mod_vec4_u32(~vec4<u32>(32848u, var_0.x, 0u, 0u), vec4<u32>(u_input.d.x, u_input.b, 1u, 63346u) | vec4<u32>(0u, var_0.x, u_input.d.x, u_input.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(1436f, var_2)), _wgslsmith_div_vec4_f32(vec4<f32>(-1828f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2))), var_2, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_2)), _wgslsmith_f_op_f32(floor(var_2)), select(false, var_1, var_1)))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1236f, var_2, 484f, 226f) * vec4<f32>(-1099f, var_2, var_2, -261f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, var_2, var_2, var_2), vec4<f32>(var_2, var_2, var_2, -523f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, 1590f, var_2)), vec4<f32>(var_2, 1428f, var_2, -283f), select(vec4<bool>(true, true, false, true), vec4<bool>(var_1, var_1, var_1, true), false))))), _wgslsmith_mod_vec2_i32(u_input.c, (u_input.c >> (~var_0.yw % vec2<u32>(32u))) ^ ~u_input.a));
}

