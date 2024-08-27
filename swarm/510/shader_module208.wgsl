struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: vec3<bool>,
    d: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(36023u, vec4<u32>(4294967295u, 0u, 22663u, 50907u));

var<private> global1: Struct_1;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    let var_0 = _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.d, _wgslsmith_mod_u32(22389u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, u_input.d, global1.d.x, global1.d.x)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.e.x, global1.d.x, 75186u, 1u), vec4<u32>(4294967295u, 27286u, global1.d.x, u_input.c))))), ~_wgslsmith_sub_u32(1u, 0u));
    global1 = Struct_1(299f, ~u_input.b.x, vec4<i32>(~13132i, reverseBits(_wgslsmith_sub_i32(firstTrailingBit(-1i), arg_0.x << (110995u % 32u))), global1.c.x, _wgslsmith_sub_i32(countOneBits(u_input.a.x), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, global1.b), vec2<i32>(-1i, -42575i)), -u_input.a))), vec4<u32>(_wgslsmith_clamp_u32(~_wgslsmith_div_u32(0u, 204u), min(global1.d.x, 1u), firstTrailingBit(14870u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~global0.b.x, 1u, _wgslsmith_sub_u32(var_0, global0.b.x)), countOneBits(vec4<u32>(global1.d.x, global0.a, 81853u, 89005u))), _wgslsmith_dot_vec2_u32(~vec2<u32>(global1.d.x, u_input.e.x), global0.b.wz), _wgslsmith_dot_vec3_u32(~(global1.d.wwx >> (global0.b.yzw % vec3<u32>(32u))), select(~global0.b.zyz, global0.b.yyy, !global1.e))), vec3<bool>(true, !global1.e.x, _wgslsmith_mod_u32(abs(4294967295u), 38509u) > _wgslsmith_sub_u32(~var_0, ~1u)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a + -1000f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a - global1.a)), _wgslsmith_f_op_f32(max(global1.a, _wgslsmith_div_f32(-1297f, global1.a))))) + global1.a));
    var var_2 = u_input.a >> ((vec2<u32>(var_0, 0u) >> (_wgslsmith_mult_vec2_u32(~select(vec2<u32>(u_input.c, global0.a), u_input.e, vec2<bool>(true, global1.e.x)), vec2<u32>(global0.b.x, ~u_input.c)) % vec2<u32>(32u))) % vec2<u32>(32u));
    return global1.c.x;
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_2(vec4<i32>(_wgslsmith_clamp_i32(u_input.b.x, -18858i, -arg_0.b), _wgslsmith_dot_vec3_i32(~(-arg_0.c.yyz), -u_input.b.zxy), 1i, _wgslsmith_div_i32(i32(-1i) * -2147483647i, max(_wgslsmith_div_i32(2147483647i, global1.c.x), countOneBits(-2147483647i)))), 52525i, global1.e, firstLeadingBit(func_3(~(-vec3<i32>(arg_0.c.x, arg_0.b, u_input.b.x)))));
    global0 = Struct_4(_wgslsmith_div_u32(~10746u, global1.d.x), global1.d);
    let var_1 = Struct_4((arg_0.d.x ^ global1.d.x) >> (arg_0.d.x % 32u), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(select(vec4<u32>(global0.b.x, arg_0.d.x, 4294967295u, 53110u), global0.b, !vec4<bool>(false, global1.e.x, false, arg_0.e.x)), vec4<u32>(52733u, u_input.e.x, global0.a, global1.d.x) & global0.b), vec4<u32>(20817u, ~(~0u), _wgslsmith_clamp_u32(~0u, global0.b.x, global1.d.x), _wgslsmith_mult_u32(global0.b.x, 837u)), arg_0.d));
    global1 = arg_0;
    global1 = arg_0;
    return 2147483647i;
}

fn func_1() -> StorageBuffer {
    global1 = Struct_1(global1.a, _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_mult_i32(-1i ^ -global1.c.x, _wgslsmith_mod_i32(-1i, reverseBits(22105i)))), vec4<i32>(_wgslsmith_div_i32(-u_input.a.x, func_2(Struct_1(global1.a, global1.b, vec4<i32>(u_input.a.x, global1.b, global1.b, global1.b), vec4<u32>(0u, 110412u, 24230u, 1919u), global1.e))), _wgslsmith_mult_i32(-_wgslsmith_mult_i32(-2147483647i, u_input.a.x), _wgslsmith_dot_vec2_i32(global1.c.yw, _wgslsmith_clamp_vec2_i32(global1.c.yz, u_input.a, global1.c.xx))), _wgslsmith_mult_i32(-2147483647i, -1i), u_input.a.x), ~vec4<u32>(global0.a, 57158u, 48996u, _wgslsmith_add_u32(~4294967295u, firstLeadingBit(global0.a))), select(vec3<bool>(false, !(566u != u_input.e.x), true), select(!select(global1.e, vec3<bool>(false, global1.e.x, true), global1.e), global1.e, !(!global1.e)), true));
    var var_0 = _wgslsmith_mod_u32(0u, max(~(~(~33102u)), 13930u | _wgslsmith_sub_u32(global0.b.x, 85612u)));
    global0 = Struct_4(min(u_input.e.x, 1u), global1.d | vec4<u32>(abs(countOneBits(global0.b.x)), ~reverseBits(global1.d.x), 1488u, ~(u_input.d << (u_input.e.x % 32u))));
    global1 = Struct_1(_wgslsmith_f_op_f32(251f * _wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(-global1.a))), 2147483647i, countOneBits(~max(u_input.b, vec4<i32>(global1.b, -1i, 1i, 23611i))), global0.b, vec3<bool>(true, global1.e.x, any(select(global1.e.xy, select(vec2<bool>(global1.e.x, true), vec2<bool>(false, true), global1.e.x), global1.e.x))));
    var var_1 = Struct_3(firstTrailingBit(~(-_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, 36364i), u_input.b.zx, u_input.a))), !global1.e);
    return StorageBuffer(vec2<i32>(_wgslsmith_mult_i32(global1.b, -u_input.b.x), ~u_input.a.x & (i32(-1i) * -1i)) >> (vec2<u32>(~8446u, ~(~4294967295u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, global1.a))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-601f, global1.a))))), vec3<i32>(var_1.a.x, global1.c.x, global1.c.x), 1171f, ~_wgslsmith_sub_vec3_u32(vec3<u32>(global1.d.x, global0.a >> (1u % 32u), firstTrailingBit(1433u)), global0.b.xww));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

