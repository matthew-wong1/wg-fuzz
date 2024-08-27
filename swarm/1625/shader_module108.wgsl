struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32> = array<i32, 32>(-1i, 2147483647i, 0i, -22465i, 1798i, -17872i, i32(-2147483648), 689i, 1188i, 2147483647i, -29077i, i32(-2147483648), -1i, -20322i, 21505i, i32(-2147483648), 1i, i32(-2147483648), 0i, 73768i, -23009i, -5110i, -21020i, -1i, 18651i, 1i, 0i, 2147483647i, -888i, 2147483647i, i32(-2147483648), -1i);

var<private> global1: Struct_2;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> vec4<i32> {
    let var_0 = global1.c;
    global0 = array<i32, 32>();
    global0 = array<i32, 32>();
    return -global1.a.b;
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1350f, global1.d.x, 1744f, global1.d.x))))))));
    var var_1 = min(select(~(~vec3<u32>(global1.e.a.x, u_input.d.x, 0u)), vec3<u32>(4294967295u, _wgslsmith_mod_u32(u_input.b.x, 0u), _wgslsmith_mod_u32(global1.e.a.x, global1.c.a.x)), !vec3<bool>(true, global1.b.c, global1.c.c)) ^ ~select(abs(vec3<u32>(u_input.d.x, 34006u, 4294967295u)), firstLeadingBit(vec3<u32>(4294967295u, 60800u, 24352u)), global1.c.c), vec3<u32>(4294967295u, global1.a.a.x, abs(4294967295u) << (max(u_input.d.x, u_input.b.x) % 32u)) | _wgslsmith_clamp_vec3_u32(~select(vec3<u32>(global1.a.a.x, 42953u, 1173u), vec3<u32>(global1.c.a.x, u_input.b.x, global1.a.a.x), vec3<bool>(false, false, global1.b.c)), _wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, global1.c.a.x, 66841u), min(vec3<u32>(u_input.d.x, u_input.d.x, 12635u), vec3<u32>(11409u, global1.c.a.x, global1.c.a.x))), ~vec3<u32>(global1.b.a.x, global1.b.a.x, global1.a.a.x)));
    var var_2 = Struct_2(Struct_1(vec2<u32>(~u_input.b.x >> (~u_input.d.x % 32u), ~12205u), func_2(), true), Struct_1(var_1.yy, _wgslsmith_mult_vec4_i32(~global1.b.b & vec4<i32>(-1i, 1i, u_input.c.x, 80028i), global1.a.b), true), global1.e, _wgslsmith_f_op_vec2_f32(floor(global1.d)), global1.c);
    global0 = array<i32, 32>();
    var var_3 = !(!vec3<bool>(false, false, (-2147483647i ^ u_input.c.x) >= (i32(-1i) * -33967i)));
    return Struct_2(var_2.e, Struct_1(~(~(~u_input.d)), vec4<i32>(-2147483647i, 2147483647i, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, u_input.b.x), 32u)], 2147483647i), true), var_2.a, vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1476f, var_2.d.x, false)))))), _wgslsmith_f_op_f32(f32(-1f) * -1394f)), var_2.b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    global0 = array<i32, 32>();
    var var_0 = select(vec2<bool>(arg_0.c | global1.a.c, global1.b.c), !vec2<bool>(arg_0.c, false), vec2<bool>(!all(vec2<bool>(true, true)), all(!select(vec4<bool>(arg_0.c, true, false, global1.b.c), vec4<bool>(true, global1.c.c, false, false), vec4<bool>(arg_0.c, false, false, false)))));
    let var_1 = global1.b;
    var var_2 = Struct_2(Struct_1(vec2<u32>(64450u, 1u), ~_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(global1.c.b, vec4<i32>(-25268i, -1202i, global1.e.b.x, 1i)), func_1().c.b), false), func_1().a, arg_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1509f, -1000f)), func_1().e);
    global0 = array<i32, 32>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.e.c;
    var var_1 = global1.b.c;
    let var_2 = 784f;
    var var_3 = ~u_input.b.x;
    var_0 = func_3(global1.c, func_1());
    var_3 = max(_wgslsmith_mod_u32(global1.c.a.x, ~min(u_input.d.x, 37945u)), ~(~4294967295u)) >> (u_input.d.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_i32(1i, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.d.x, 32u)], _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], u_input.a)), 21447i ^ _wgslsmith_add_i32(2147483647i, u_input.c.x)), _wgslsmith_f_op_f32(trunc(-619f)), _wgslsmith_f_op_f32(sign(1213f)));
}

