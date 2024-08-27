struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 32> = array<vec3<i32>, 32>(vec3<i32>(45399i, 1i, -4532i), vec3<i32>(-1i, -1i, 20829i), vec3<i32>(-1i, 2147483647i, 26595i), vec3<i32>(52236i, -1i, 2709i), vec3<i32>(-52644i, 1i, 2147483647i), vec3<i32>(-29785i, -1i, i32(-2147483648)), vec3<i32>(1642i, 2147483647i, 0i), vec3<i32>(-397i, i32(-2147483648), 0i), vec3<i32>(-1i, 33934i, i32(-2147483648)), vec3<i32>(6496i, -7954i, 1i), vec3<i32>(1i, 0i, 1i), vec3<i32>(-544i, 2147483647i, 0i), vec3<i32>(-28641i, 33837i, 0i), vec3<i32>(i32(-2147483648), 2147483647i, -57076i), vec3<i32>(9003i, -21422i, 38860i), vec3<i32>(15124i, i32(-2147483648), -16852i), vec3<i32>(i32(-2147483648), 2147483647i, -1i), vec3<i32>(2147483647i, i32(-2147483648), 1i), vec3<i32>(7894i, -38883i, 1i), vec3<i32>(57389i, i32(-2147483648), -35324i), vec3<i32>(51665i, 61549i, 201i), vec3<i32>(53256i, i32(-2147483648), -4203i), vec3<i32>(1i, 2147483647i, 15344i), vec3<i32>(-1i, 0i, -60411i), vec3<i32>(0i, i32(-2147483648), -3959i), vec3<i32>(-4438i, 49162i, 37967i), vec3<i32>(58912i, 2147483647i, i32(-2147483648)), vec3<i32>(2147483647i, 2147483647i, 0i), vec3<i32>(22657i, i32(-2147483648), -36009i), vec3<i32>(0i, i32(-2147483648), -3979i), vec3<i32>(-50575i, 2147483647i, i32(-2147483648)), vec3<i32>(-1i, 19008i, -53025i));

var<private> global1: vec2<i32> = vec2<i32>(-9069i, 34055i);

var<private> global2: array<bool, 9>;

var<private> global3: array<i32, 30> = array<i32, 30>(42408i, -1i, -64574i, 40588i, -1i, -16967i, i32(-2147483648), 1i, i32(-2147483648), -1i, -12429i, -15994i, 2147483647i, 1i, 82969i, 36870i, i32(-2147483648), 1i, 8116i, -24267i, 2147483647i, -8246i, 1i, 0i, i32(-2147483648), 11513i, 0i, -14746i, -12411i, 31893i);

var<private> global4: u32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: vec2<u32>) -> u32 {
    var var_0 = Struct_2(-2147483647i);
    var var_1 = Struct_2(-32022i);
    var var_2 = true;
    global2 = array<bool, 9>();
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -605f) * -1634f))), -267f, 1f);
    return max(~arg_1.a, _wgslsmith_mult_u32(1u, ~(arg_0 ^ arg_0)) & select(arg_0, 1u, true));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: Struct_1) -> vec3<u32> {
    global0 = array<vec3<i32>, 32>();
    let var_0 = arg_2;
    global4 = ((~firstLeadingBit(arg_1.x) | _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, arg_2.d.x, arg_1.x), countOneBits(vec4<u32>(var_0.d.x, 0u, arg_2.d.x, arg_1.x)))) >> (_wgslsmith_mod_u32(arg_2.a, ~arg_1.x) % 32u)) << (_wgslsmith_mod_u32(firstLeadingBit(19068u), ~func_3(~arg_1.x, var_0, u_input.b & -1i, abs(vec2<u32>(1u, 4848u)))) % 32u);
    var var_1 = Struct_2(1i);
    global4 = arg_2.d.x;
    return vec3<u32>(reverseBits(~(var_0.e.x ^ 4294967295u)), ~(~_wgslsmith_dot_vec2_u32(var_0.e.yw, vec2<u32>(arg_2.e.x, 78492u))), abs(4294967295u)) | arg_2.e.yzy;
}

fn func_1() -> vec3<u32> {
    global0 = array<vec3<i32>, 32>();
    var var_0 = ~(~vec2<u32>(1u, 1u));
    var var_1 = false;
    global1 = vec2<i32>(43192i, _wgslsmith_mult_i32(~(~(-2147483647i & global1.x)), _wgslsmith_dot_vec2_i32(abs(u_input.c.zy), _wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(-1i, global3[_wgslsmith_index_u32(113934u, 30u)])), vec2<i32>(global3[_wgslsmith_index_u32(var_0.x, 30u)], 0i)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -543f));
    return _wgslsmith_mult_vec3_u32((countOneBits(vec3<u32>(var_0.x, 0u, var_0.x) | vec3<u32>(2074u, var_0.x, var_0.x)) ^ countOneBits(vec3<u32>(var_0.x, var_0.x, 24970u) >> (vec3<u32>(var_0.x, 55305u, var_0.x) % vec3<u32>(32u)))) << (firstLeadingBit(func_2(vec3<f32>(var_2, 668f, -634f), vec4<u32>(var_0.x, 44278u, var_0.x, 0u), Struct_1(33356u, u_input.c.x, global3[_wgslsmith_index_u32(var_0.x, 30u)], vec2<u32>(var_0.x, var_0.x), vec4<u32>(var_0.x, 55304u, 4294967295u, 0u))) ^ vec3<u32>(0u, var_0.x, 83048u)) % vec3<u32>(32u)), vec3<u32>(func_3(~min(var_0.x, var_0.x), Struct_1(var_0.x, 9442i >> (var_0.x % 32u), global1.x, vec2<u32>(var_0.x, var_0.x), firstLeadingBit(vec4<u32>(4294967295u, 4294967295u, var_0.x, var_0.x))), ~(global1.x & -17602i), vec2<u32>(func_3(57693u, Struct_1(25705u, u_input.c.x, global1.x, vec2<u32>(var_0.x, 30231u), vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)), global3[_wgslsmith_index_u32(var_0.x, 30u)], vec2<u32>(var_0.x, 4294967295u)), var_0.x)), reverseBits(1u), 3566u));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = ~(4294967295u ^ _wgslsmith_dot_vec3_u32(func_1(), vec3<u32>(1u, 1u, 1u)));
    global4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, vec3<i32>(-abs(u_input.c.x), _wgslsmith_mod_i32(i32(-1i) * -2403i, global1.x), u_input.b) << (firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 2520u, 56972u), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(4294967295u, 4294967295u, 8737u)))) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1000f) + vec2<f32>(1875f, 961f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(159f, 652f) + vec2<f32>(2219f, 667f)), true)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(304f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1086f * -240f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(235f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(925f))))), select(0i, i32(-1i) * -global3[_wgslsmith_index_u32(18597u, 30u)], true));
}

