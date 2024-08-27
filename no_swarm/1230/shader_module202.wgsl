struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool = true;

var<private> global2: vec2<i32> = vec2<i32>(26585i, 11365i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> i32 {
    var var_0 = 1u;
    var var_1 = arg_0;
    var var_2 = false;
    let var_3 = 9845i;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1264f * -2184f), _wgslsmith_f_op_f32(-1639f + -1000f))) - _wgslsmith_f_op_f32(select(1385f, _wgslsmith_f_op_f32(-1000f + -1078f), any(var_1.e)))))) * 785f);
    return min(-20941i, 35274i);
}

fn func_2() -> i32 {
    var var_0 = Struct_2(Struct_1(firstLeadingBit(~_wgslsmith_add_u32(u_input.a.x, 27919u)), false, 0i, 1i, !vec2<bool>(true, any(vec3<bool>(false, false, true)))));
    global2 = u_input.c;
    global2 = vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(2147483647i, -17876i), max(_wgslsmith_add_i32(global2.x, u_input.c.x) | firstLeadingBit(-1519i), 1i), firstLeadingBit(52639i << (u_input.a.x % 32u))), _wgslsmith_div_i32(firstLeadingBit(func_3(var_0.a, var_0.a.c)), 40736i << (_wgslsmith_mult_u32(var_0.a.a, min(u_input.a.x, u_input.b.x)) % 32u)));
    global2 = ~(-u_input.c);
    var var_1 = Struct_2(Struct_1(4294967295u, true, global2.x, _wgslsmith_mult_i32(-62327i, var_0.a.c), var_0.a.e));
    return 1i;
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: vec4<bool>, arg_3: vec3<i32>) -> vec4<bool> {
    let var_0 = arg_0;
    let var_1 = Struct_1(u_input.a.x, arg_2.x, _wgslsmith_div_i32(firstLeadingBit(global2.x), func_2()), 2147483647i, !select(arg_2.ww, vec2<bool>(var_0.x != arg_0.x, false), !select(arg_2.yx, arg_2.zx, vec2<bool>(arg_2.x, arg_2.x))));
    var var_2 = Struct_2(Struct_1(arg_1, arg_2.x || any(vec4<bool>(false, arg_2.x, true, false)), 66410i, var_1.d, !vec2<bool>(true, !var_1.b)));
    let var_3 = var_1;
    var_2 = Struct_2(Struct_1(var_3.a, all(!vec4<bool>(var_3.e.x, true, false, var_2.a.b)), _wgslsmith_div_i32(var_2.a.c, -select(var_1.d, global2.x, var_2.a.e.x)), max(var_2.a.d, var_3.d >> (~1u % 32u)), vec2<bool>(arg_2.x, false)));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !any(!func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(532f, 1188f)), _wgslsmith_dot_vec2_u32(u_input.a.yz, vec2<u32>(14804u, u_input.b.x)), vec4<bool>(true, true, true, true), vec3<i32>(u_input.c.x, 30523i, u_input.c.x)));
    let var_0 = 266f;
    let var_1 = _wgslsmith_add_vec3_i32(firstLeadingBit(abs(vec3<i32>(0i, 11371i, 0i))), vec3<i32>(-2147483647i ^ min(-global2.x, global2.x), _wgslsmith_mod_i32(3991i, i32(-1i) * -32250i), u_input.c.x));
    let var_2 = Struct_1(~_wgslsmith_mod_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.a, _wgslsmith_mult_vec3_u32(u_input.a, u_input.a))), true, 0i << (_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 23565u, 1u, u_input.b.x), vec4<u32>(5422u, 43981u, 4493u, 4294967295u)) & ~vec4<u32>(u_input.a.x, u_input.b.x, 0u, u_input.b.x), _wgslsmith_add_vec4_u32(vec4<u32>(91843u, u_input.a.x, 27801u, u_input.a.x) >> (vec4<u32>(u_input.b.x, 85091u, 4294967295u, 102501u) % vec4<u32>(32u)), vec4<u32>(35790u, u_input.b.x, 20959u, u_input.a.x))) % 32u), global2.x, func_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1527f, var_0)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))))), _wgslsmith_sub_u32(_wgslsmith_add_u32(~u_input.a.x, ~4294967295u), 0u), vec4<bool>(any(vec4<bool>(false, false, false, false)), true, true, true), _wgslsmith_mod_vec3_i32(~_wgslsmith_clamp_vec3_i32(var_1, var_1, vec3<i32>(var_1.x, -3526i, var_1.x)), _wgslsmith_div_vec3_i32(abs(var_1), vec3<i32>(-1i, 2147483647i, global2.x) << (vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x) % vec3<u32>(32u))))).zw);
    global1 = select(any(vec3<bool>(all(select(vec3<bool>(var_2.b, true, var_2.e.x), vec3<bool>(false, false, var_2.e.x), true)), !(!var_2.e.x), true && var_2.b)), true, var_2.e.x);
    let var_3 = !(!(!(!(!vec4<bool>(true, var_2.e.x, false, var_2.e.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(vec4<i32>(~(u_input.c.x >> (u_input.a.x % 32u)), var_1.x, var_1.x, -_wgslsmith_mult_i32(1i, -74047i)), vec4<i32>(-21398i, -6326i, ~global2.x, 45149i)));
}

