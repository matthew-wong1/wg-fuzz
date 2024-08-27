struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: f32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global1.a), _wgslsmith_f_op_vec4_f32(global1.a * vec4<f32>(global1.c, -1403f, -1000f, -689f)))))) * global1.a);
    var var_1 = true;
    var_1 = any(!vec2<bool>(global1.b.x, global1.b.x && true));
    var var_2 = -1133f;
    var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1912f - _wgslsmith_f_op_f32(-var_0.x)))), var_0.x, global1.b.x));
    return -vec4<i32>(_wgslsmith_add_i32(u_input.a, -24735i), ~(~u_input.c.x), u_input.c.x, u_input.a) << (~vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 28450u, u_input.b, 81096u), vec4<u32>(35478u, global1.d, global1.d, global1.d)), min(vec4<u32>(15941u, global1.d, u_input.b, 1u), vec4<u32>(0u, 1u, 0u, global1.d))), abs(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(61334u, u_input.b, u_input.b, global1.d), vec4<u32>(1u, 50490u, u_input.b, u_input.b)), ~global1.d) % vec4<u32>(32u));
}

fn func_2() -> vec4<i32> {
    global0 = !global1.b.x;
    let var_0 = Struct_1(vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-687f - _wgslsmith_f_op_f32(max(global1.a.x, global1.a.x))))), global1.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-775f, _wgslsmith_f_op_f32(select(486f, -468f, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-797f, global1.c, global1.b.x)) + _wgslsmith_f_op_f32(abs(global1.c))))), global1.b, global1.c, ~global1.d << (u_input.b % 32u));
    let var_1 = var_0;
    global0 = !(!(!(71467u < var_1.d)) && global1.b.x);
    global0 = select(any(!vec2<bool>(false, true && var_1.b.x)), var_0.b.x, global1.b.x);
    return abs(firstTrailingBit(-func_3()));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec3<u32>) -> u32 {
    global0 = false;
    var var_0 = _wgslsmith_mod_vec3_i32(select(select(vec3<i32>(2147483647i, countOneBits(arg_1), -34019i), ~vec3<i32>(-2147483647i, 2147483647i, u_input.c.x), global1.b), vec3<i32>(arg_1, ~abs(0i), -(arg_1 >> (0u % 32u))), global1.b), _wgslsmith_clamp_vec3_i32(reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(arg_1, u_input.c.x, u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.d.x), vec3<i32>(-13162i, 2147483647i, arg_1)))), _wgslsmith_div_vec3_i32(max(vec3<i32>(arg_1, -339i, -3076i), vec3<i32>(0i, 1i, u_input.d.x)), firstTrailingBit(vec3<i32>(-2147483647i, u_input.c.x, u_input.c.x))) << (~(~vec3<u32>(u_input.b, arg_2.x, 30518u)) % vec3<u32>(32u)), vec3<i32>(arg_1, 17309i, _wgslsmith_mult_i32(max(-2147483647i, -1i), -9563i | arg_1))));
    var var_1 = arg_2.zx;
    var_0 = vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(30012i, u_input.c.x), -u_input.a, _wgslsmith_dot_vec4_i32(~func_2(), vec4<i32>(-19919i << (var_1.x % 32u), var_0.x >> (1u % 32u), _wgslsmith_div_i32(41969i, arg_1), var_0.x))), var_0.x, ~(-u_input.c.x));
    let var_2 = vec3<i32>(u_input.a, -1i, -u_input.d.x);
    return firstTrailingBit(select(1u, ~18876u, !(!all(vec4<bool>(arg_0, true, global1.b.x, global1.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!(~u_input.b >= 255u));
    var var_0 = ~(~firstTrailingBit(u_input.b));
    var var_1 = (~(-vec3<i32>(0i, u_input.c.x, u_input.d.x)) | reverseBits(_wgslsmith_div_vec3_i32(select(vec3<i32>(u_input.a, u_input.d.x, 21352i), vec3<i32>(-7501i, -7148i, -30288i), global1.b.x), ~vec3<i32>(u_input.c.x, 1i, u_input.c.x)))) << (vec3<u32>(u_input.b, ~(4294967295u >> (global1.d % 32u)), func_1(global1.b.x, u_input.d.x, ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, global1.d, 37024u), vec3<u32>(global1.d, global1.d, global1.d)))) % vec3<u32>(32u));
    let var_2 = !(!(!(!vec4<bool>(true, global1.b.x, global1.b.x, global1.b.x))));
    global0 = !(!all(vec2<bool>(var_2.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-global1.a.yw), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-567f, _wgslsmith_div_f32(-1355f, -2436f), 807f)))), global1.a.x, global1.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(global1.a * _wgslsmith_f_op_vec4_f32(global1.a * vec4<f32>(965f, global1.c, 475f, global1.a.x))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c, -843f, -602f, 106f) - vec4<f32>(global1.c, 374f, global1.c, 975f)), global1.a)))) - vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1498f))), -864f, _wgslsmith_div_f32(_wgslsmith_div_f32(1000f, -2182f), _wgslsmith_f_op_f32(-global1.c)))));
}

