struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: u32,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec3<f32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_2;

var<private> global2: Struct_2;

var<private> global3: Struct_4 = Struct_4(0i, vec3<i32>(-1i, i32(-2147483648), -1i), Struct_2(vec2<i32>(2147483647i, -6597i), 253f));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>) -> vec3<i32> {
    global0 = Struct_4(select(_wgslsmith_mod_i32(global2.a.x, reverseBits(-19789i)), global3.c.a.x, true), _wgslsmith_clamp_vec3_i32(-abs(~global3.b), abs(vec3<i32>(_wgslsmith_mod_i32(global3.c.a.x, -26234i), 50905i, ~1i)), -_wgslsmith_mod_vec3_i32(max(u_input.d, u_input.a.yzy), vec3<i32>(-43660i, global1.a.x, global2.a.x))), global3.c);
    return vec3<i32>(~max(u_input.c, 1i), u_input.a.x, 1124i);
}

fn func_2(arg_0: vec2<u32>) -> u32 {
    global0 = Struct_4(countOneBits(global1.a.x ^ abs(_wgslsmith_dot_vec3_i32(global3.b, u_input.d))), ~(-select(vec3<i32>(-19908i, 0i, u_input.a.x), vec3<i32>(global2.a.x, global0.b.x, -1i), vec3<bool>(true, true, true))) | func_3(global0.c.b, ~vec2<u32>(arg_0.x, 4294967295u)), Struct_2(max(func_3(_wgslsmith_f_op_f32(select(1000f, global3.c.b, false)), vec2<u32>(48172u, arg_0.x)).yy, vec2<i32>(global2.a.x, -u_input.d.x)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-260f + -1472f), global3.c.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b))))));
    var var_0 = 4294967295u;
    var_0 = _wgslsmith_sub_u32(31792u, min(28384u, arg_0.x));
    return ~abs(~(arg_0.x >> (1u % 32u))) & abs(reverseBits(min(_wgslsmith_add_u32(1u, arg_0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 862u, arg_0.x), vec3<u32>(arg_0.x, arg_0.x, arg_0.x)))));
}

fn func_1() -> Struct_2 {
    let var_0 = false;
    let var_1 = vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(1u, 19510u))) >> (_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, 1u)), ~vec2<u32>(48173u, 1u)) % vec2<u32>(32u))), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~(~30436u), ~(~46385u)), _wgslsmith_div_u32(reverseBits(23863u), func_2(vec2<u32>(15305u, 64846u)) | _wgslsmith_clamp_u32(11868u, 0u, 45145u)), countOneBits(select(_wgslsmith_mod_u32(0u, 4294967295u), reverseBits(4294967295u), true))));
    let var_2 = -global3.c.a.x;
    let var_3 = vec2<f32>(global2.b, _wgslsmith_f_op_f32(127f + _wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(716f, _wgslsmith_f_op_f32(f32(-1f) * -512f)))));
    let var_4 = vec2<bool>(all(vec2<bool>(var_0 != false, var_0)) & (global2.b == global3.c.b), ~var_1.x == (var_1.x ^ 67443u));
    return global0.c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    var var_0 = global3.b.x | ~global1.a.x;
    let var_1 = ~vec2<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, 4294967295u)), abs(~vec2<u32>(3641u, 14124u))), _wgslsmith_dot_vec4_u32(vec4<u32>(48252u, ~0u, abs(1u), 1u), vec4<u32>(4294967295u, firstLeadingBit(0u), 45475u, _wgslsmith_clamp_u32(70207u, 1u, 0u))));
    global3 = Struct_4(global0.b.x, ~_wgslsmith_div_vec3_i32(u_input.d, u_input.a.xww), func_1());
    var var_2 = ~global1.a.x;
    var var_3 = Struct_2(_wgslsmith_add_vec2_i32(vec2<i32>(1i, ~2147483647i), _wgslsmith_mult_vec2_i32(-global2.a, vec2<i32>(0i, global1.a.x))) & ~(-(~vec2<i32>(global3.a, 12001i))), _wgslsmith_f_op_f32(155f - _wgslsmith_f_op_f32(-global2.b)));
    var var_4 = any(!select(vec3<bool>(all(vec2<bool>(false, false)), 212f >= global1.b, true), vec3<bool>(true, select(false, false, true), true), true));
    let var_5 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b * -887f)))), Struct_2(global0.c.a, global2.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(966f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1606f * -226f) * _wgslsmith_f_op_f32(min(-1552f, global0.c.b))), var_3.b)), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(var_1.x, 91357u, 4294967295u, var_1.x), vec4<u32>(_wgslsmith_mult_u32(var_1.x, 43173u), var_1.x, 1139u, _wgslsmith_sub_u32(45409u, var_1.x))));
    global0 = Struct_4(-2147483647i & global0.a, vec3<i32>(global3.b.x, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(~0i, -1i), _wgslsmith_add_i32(-37489i, u_input.c), (global3.c.a.x & global0.b.x) >> (6158u % 32u)), 75898i), Struct_2(vec2<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(-991i, 4025i, 0i), _wgslsmith_mult_i32(0i, 0i)), -countOneBits(-20459i)), 967f));
    let x = u_input.a;
    s_output = StorageBuffer(1u >> (~(~(~var_1.x)) % 32u));
}

