struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(83605u), Struct_3(13827u), Struct_3(71764u), Struct_3(20187u), Struct_3(38530u), Struct_3(54126u), Struct_3(45111u), Struct_3(0u), Struct_3(1u), Struct_3(1u), Struct_3(1u), Struct_3(45357u), Struct_3(4294967295u), Struct_3(3487u), Struct_3(1u), Struct_3(1u), Struct_3(4294967295u), Struct_3(1u), Struct_3(25959u));

var<private> global2: array<u32, 18> = array<u32, 18>(19569u, 45503u, 1u, 0u, 30804u, 34936u, 10577u, 30988u, 11771u, 96660u, 36664u, 32775u, 30538u, 4294967295u, 0u, 0u, 4294967295u, 26637u);

var<private> global3: Struct_1;

var<private> global4: array<f32, 14>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_1() -> Struct_1 {
    global2 = array<u32, 18>();
    return Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), select(global3.a, vec2<bool>(global3.b <= global4[_wgslsmith_index_u32(1u, 14u)], true), !global3.a.x)), 2120f);
}

fn func_2(arg_0: bool, arg_1: vec3<f32>) -> u32 {
    return _wgslsmith_dot_vec2_u32(vec2<u32>(~0u, 19144u), vec2<u32>(~(~3512u) | ~abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)]), _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(~6497u >> ((global2[_wgslsmith_index_u32(1u, 18u)] | 81411u) % 32u), 18u)], global2[_wgslsmith_index_u32(~1u, 18u)])));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<i32>) -> vec3<bool> {
    global2 = array<u32, 18>();
    var var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.b)))), global3.b, global3.b, arg_2.b), _wgslsmith_mod_i32(arg_1.b, countOneBits(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(arg_1.b, -2147483647i)), -vec2<i32>(1i, 1i)))));
    let var_1 = vec3<f32>(-853f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(90403u, 18u)], 18u)]), 14u)], var_0.a.x)))), 929f);
    let var_2 = vec4<bool>(true, global3.a.x, arg_2.a.x, !(!arg_2.a.x != any(func_1().a)));
    var var_3 = vec2<bool>(func_1().a.x, all(vec3<bool>(true, global3.a.x, false & all(global3.a))));
    return select(select(!vec3<bool>(global3.a.x, select(false, var_2.x, false), true), vec3<bool>(var_3.x, any(vec3<bool>(global3.a.x, true, arg_2.a.x)), !all(var_2.wx)), var_2.yzy), var_2.xxz, -(_wgslsmith_div_i32(u_input.b, 1i) & 0i) > var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1();
    let var_0 = global3.a.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global4[_wgslsmith_index_u32(~76720u, 14u)], _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(10651u, 14u)]), global4[_wgslsmith_index_u32(~(func_2(true, vec3<f32>(235f, -171f, global3.b)) << (0u % 32u)), 14u)])));
    var var_2 = func_3(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -22629i, firstLeadingBit(-14043i)), vec3<i32>(firstLeadingBit(u_input.c.x), -1i, -u_input.c.x)), u_input.c.x), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.b, global3.b, global4[_wgslsmith_index_u32(4294967295u, 14u)], global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 14u)]))))), -1i), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(ceil(307f))), _wgslsmith_mult_vec3_i32(-u_input.c, u_input.c));
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_1)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 18u)], 14u)], -537f, global3.b) + vec3<f32>(-283f, var_1.x, -1238f)), vec3<f32>(-219f, var_1.x, _wgslsmith_f_op_f32(trunc(var_1.x))))), _wgslsmith_div_vec2_i32(firstTrailingBit(~u_input.c.yx & u_input.c.zz), _wgslsmith_add_vec2_i32(-vec2<i32>(u_input.a, -6024i), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(-1i, -65327i)))), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.b, u_input.b, u_input.b, 0i)), vec4<i32>(-22698i, 0i, -13295i, u_input.a)) | _wgslsmith_add_i32(0i, u_input.c.x), u_input.c.x));
}

