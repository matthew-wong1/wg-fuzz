struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: Struct_2,
    d: vec2<bool>,
    e: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: vec3<u32> = vec3<u32>(4294967295u, 84626u, 72849u);

var<private> global2: Struct_4 = Struct_4(0u, 974f, Struct_2(0i), vec2<bool>(false, false), Struct_3(Struct_1(vec4<bool>(true, true, false, false), -2089f), false));

var<private> global3: array<Struct_2, 27>;

var<private> global4: array<bool, 19>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global0 = array<Struct_2, 18>();
    let var_0 = global2.e.a;
    global4 = array<bool, 19>();
    var var_1 = u_input.d.wwx;
    global1 = ~select(firstLeadingBit(reverseBits(~vec3<u32>(global1.x, u_input.b, 1u))), ~u_input.d.zzz << ((_wgslsmith_mod_vec3_u32(vec3<u32>(global2.a, global1.x, global1.x), vec3<u32>(u_input.b, u_input.c, 19491u)) | countOneBits(vec3<u32>(var_1.x, u_input.c, var_1.x))) % vec3<u32>(32u)), true);
    return global2.a;
}

fn func_4(arg_0: u32) -> f32 {
    global4 = array<bool, 19>();
    global2 = Struct_4(~(~4294967295u), -1000f, global3[_wgslsmith_index_u32(~arg_0, 27u)], select(vec2<bool>(true, !(global2.b == 1235f)), !vec2<bool>(true, any(vec4<bool>(false, global4[_wgslsmith_index_u32(global2.a, 19u)], global4[_wgslsmith_index_u32(4215u, 19u)], false))), vec2<bool>(any(global2.e.a.a.wxw), false)), global2.e);
    var var_0 = _wgslsmith_clamp_vec3_u32(~select(u_input.d.yxx, ~u_input.d.xwz & countOneBits(u_input.d.wzy), any(global2.e.a.a)), vec3<u32>(~1u >> ((51144u ^ ~global2.a) % 32u), _wgslsmith_add_u32(53210u, ~global1.x), max(_wgslsmith_div_u32(30828u, arg_0 ^ arg_0), global1.x)), ~vec3<u32>(_wgslsmith_mod_u32(1u, ~global1.x), global2.a | ~931u, global1.x));
    let var_1 = Struct_5(global1.xz);
    global3 = array<Struct_2, 27>();
    return _wgslsmith_f_op_f32(global2.e.a.b - global2.e.a.b);
}

fn func_2() -> i32 {
    global3 = array<Struct_2, 27>();
    var var_0 = global2.e.b;
    global2 = Struct_4(global2.a, global2.e.a.b, Struct_2(~u_input.a), select(!global2.e.a.a.zw, global2.d, !(!global2.d)), Struct_3(Struct_1(global2.e.a.a, _wgslsmith_f_op_f32(func_4(func_3()))), ~reverseBits(u_input.b) >= global2.a));
    global3 = array<Struct_2, 27>();
    var var_1 = global2.e.a.a;
    return global2.c.a;
}

fn func_1(arg_0: vec2<f32>) -> StorageBuffer {
    var var_0 = ~global1.xz;
    let var_1 = Struct_4(_wgslsmith_sub_u32(_wgslsmith_mult_u32(~_wgslsmith_sub_u32(var_0.x, u_input.c), var_0.x), _wgslsmith_add_u32(_wgslsmith_mult_u32(1u, 1u), 1u)), 1244f, Struct_2(func_2()), vec2<bool>(select(true, global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2.a, u_input.c, var_0.x), 19u)] | all(global2.e.a.a), true), true), global2.e);
    global0 = array<Struct_2, 18>();
    let var_2 = countOneBits(_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(firstTrailingBit(-45022i), 0i, ~1i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(global2.c.a, var_1.c.a)))), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(global2.c.a, 65522i, 0i, u_input.a) ^ vec4<i32>(var_1.c.a, u_input.a, global2.c.a, global2.c.a), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.c.a, var_1.c.a, var_1.c.a, 2147483647i), vec4<i32>(-12412i, 0i, -65387i, var_1.c.a)))), vec4<i32>(_wgslsmith_div_i32(1i, global2.c.a), 2147483647i, global2.c.a, -23619i)));
    let var_3 = u_input.a;
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -300f);
    var var_1 = _wgslsmith_div_f32(global2.e.a.b, var_0);
    global4 = array<bool, 19>();
    var var_2 = vec4<f32>(1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(abs(-911f))), 1196f, false & global4[_wgslsmith_index_u32(1u, 19u)])), global2.b, -1732f);
    global0 = array<Struct_2, 18>();
    var var_3 = 18389i;
    let var_4 = true;
    let x = u_input.a;
    s_output = func_1(var_2.xy);
}

