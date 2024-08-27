struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 17>;

var<private> global1: array<f32, 24> = array<f32, 24>(-577f, 482f, 1070f, -574f, 600f, 870f, 568f, -366f, -187f, 849f, -479f, 809f, 374f, 499f, 608f, -1135f, -1347f, -161f, 1006f, 210f, -949f, 627f, 1000f, -102f);

var<private> global2: array<vec4<u32>, 3>;

var<private> global3: array<vec4<i32>, 2>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: vec2<i32>) -> f32 {
    let var_0 = Struct_2(-firstTrailingBit(-arg_1.x) & 2147483647i, Struct_1(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true))), min(u_input.b.x, u_input.b.x)));
    let var_1 = true;
    global2 = array<vec4<u32>, 3>();
    global1 = array<f32, 24>();
    var var_2 = Struct_1(select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u >> (arg_2.x % 32u), 24u)] < global1[_wgslsmith_index_u32(~45741u, 24u)], false, !var_0.b.a.x, var_1), !select(vec4<bool>(var_0.b.a.x, false, true, false), select(vec4<bool>(var_0.b.a.x, true, var_0.b.a.x, var_1), var_0.b.a, var_0.b.a), u_input.a == var_0.a), any(vec3<bool>(all(var_0.b.a.yy), any(var_0.b.a), any(var_0.b.a.xw)))), var_0.b.b);
    return _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(abs(arg_2.x), 24u)] - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1415f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -561f)))));
}

fn func_2() -> vec4<bool> {
    global2 = array<vec4<u32>, 3>();
    global1 = array<f32, 24>();
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-505f, global1[_wgslsmith_index_u32(u_input.b.x, 24u)], global1[_wgslsmith_index_u32(4294967295u, 24u)]))) + vec3<f32>(362f, global1[_wgslsmith_index_u32(u_input.b.x, 24u)], -381f)))), vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 24u)], _wgslsmith_f_op_f32(func_3(vec3<i32>(2147483647i, _wgslsmith_sub_i32(0i, 2147483647i), -1i), vec2<i32>(u_input.a, i32(-1i) * -1i), ~u_input.b & _wgslsmith_add_vec3_u32(u_input.b, u_input.b), _wgslsmith_mult_vec2_i32(-vec2<i32>(-16047i, u_input.a), abs(vec2<i32>(u_input.a, u_input.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(253f + global1[_wgslsmith_index_u32(55373u, 24u)]), global1[_wgslsmith_index_u32(reverseBits(u_input.b.x), 24u)]))))));
    global2 = array<vec4<u32>, 3>();
    var var_1 = vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, u_input.a), _wgslsmith_mult_vec2_i32(vec2<i32>(17004i, u_input.a), vec2<i32>(u_input.a, u_input.a))), -2147483647i), _wgslsmith_sub_i32(u_input.a, reverseBits(firstLeadingBit(u_input.a))), -2147483647i) ^ select(vec3<i32>(u_input.a, _wgslsmith_sub_i32(-u_input.a, -7552i), max(u_input.a << (23037u % 32u), u_input.a)), countOneBits(abs(reverseBits(vec3<i32>(u_input.a, 45671i, 33102i)))), any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true)) && all(vec3<bool>(true, true, true)));
    return !vec4<bool>(true, !(!select(true, false, false)), !any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), false);
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: bool) -> Struct_1 {
    global2 = array<vec4<u32>, 3>();
    return Struct_1(func_2(), arg_1);
}

fn func_4(arg_0: Struct_2) -> StorageBuffer {
    global3 = array<vec4<i32>, 2>();
    let var_0 = func_1(_wgslsmith_clamp_i32(abs(1i), min(_wgslsmith_add_i32(-11786i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -6122i), vec2<i32>(0i, -15988i))), _wgslsmith_mod_i32(u_input.a, -u_input.a)), -2147483647i), u_input.b.x, true).a;
    var var_1 = u_input.b.x;
    let var_2 = !(!arg_0.b.a.x);
    var_1 = 4294967295u;
    return StorageBuffer(reverseBits(vec4<u32>(u_input.b.x, 4294967295u, abs(firstTrailingBit(0u)), ~arg_0.b.b & u_input.b.x)), arg_0.b.b, ~4294967295u, vec3<u32>(~(~countOneBits(306u)), countOneBits(~(~1u)), 7593u), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<u32>, 3>();
    global1 = array<f32, 24>();
    global1 = array<f32, 24>();
    let x = u_input.a;
    s_output = func_4(Struct_2(min(-min(u_input.a, 0i), u_input.a >> (u_input.b.x % 32u)), func_1(reverseBits(u_input.a), u_input.b.x, true)));
}

