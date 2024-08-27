struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(2147483647i, 1i, -20005i, -3176i);

var<private> global1: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> f32 {
    var var_0 = arg_0;
    global0 = vec4<i32>(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c.x, arg_0.b.x) & vec2<i32>(arg_1.b.x, -9527i), firstTrailingBit(vec2<i32>(28723i, var_0.c.x))) ^ 1i), -13426i, -arg_1.b.x, ~(-firstTrailingBit(~(-19178i))));
    var var_1 = Struct_1((112794u > _wgslsmith_mod_u32(~arg_1.d.x, arg_0.d.x)) || ((all(vec4<bool>(false, arg_0.a, false, false)) || false) | (all(vec3<bool>(true, arg_0.a, global1.a)) == any(vec4<bool>(var_0.a, true, arg_0.a, true)))), arg_0.c, arg_1.b ^ vec3<i32>(~(~(-1i)), arg_0.b.x, _wgslsmith_mult_i32(0i, ~(-11195i))), arg_1.d);
    var_1 = Struct_1(any(!vec2<bool>(all(vec2<bool>(false, false)), all(vec2<bool>(var_0.a, arg_0.a)))), select(reverseBits(arg_0.b), vec3<i32>(arg_1.c.x & ~arg_1.b.x, ~2147483647i, -abs(0i)), vec3<bool>(true, true, !(u_input.a.x < 54214u))), arg_1.c, _wgslsmith_div_vec3_u32(vec3<u32>(abs(_wgslsmith_dot_vec2_u32(arg_0.d.xx, vec2<u32>(11390u, 4294967295u))), u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(61794u, 4294967295u) >> (arg_0.d.zx % vec2<u32>(32u)))), global1.d));
    let var_2 = u_input.a >> (~arg_1.d.xx % vec2<u32>(32u));
    return 212f;
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> i32 {
    global0 = -vec4<i32>(-33945i, 1i, ~0i, -38483i);
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(arg_0, global0.wzz, global1.c, vec3<u32>(global1.d.x, 10364u, u_input.a.x)), Struct_1(arg_0, global1.c, vec3<i32>(global0.x, 17555i, -2147483647i), global1.d), !arg_0)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1221f, 1761f)), _wgslsmith_div_f32(2338f, 234f)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(max(-205f, 974f)), _wgslsmith_f_op_f32(f32(-1f) * -849f)))))));
    global0 = firstTrailingBit(vec4<i32>(abs(global1.c.x), _wgslsmith_sub_i32(global0.x, global0.x), ~_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -45080i, 2147483647i, 2147483647i), vec4<i32>(global0.x, global0.x, -823i, 1i)), global1.b.x), global0.x));
    global1 = Struct_1(true, -vec3<i32>(7416i, 1i, -6103i), _wgslsmith_mult_vec3_i32(~(~global0.yxz) | global1.c, global0.yxw), (~vec3<u32>(u_input.a.x, 71331u, u_input.a.x) | ~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 15921u, global1.d.x), vec3<u32>(1u, global1.d.x, 6743u))) << (firstTrailingBit(reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, 0u)) & global1.d) % vec3<u32>(32u)));
    let var_1 = vec3<u32>(_wgslsmith_sub_u32(countOneBits(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.d.x, global1.d.x, arg_1.x, u_input.a.x), vec4<u32>(arg_1.x, 1u, global1.d.x, 1u)), u_input.a.x, _wgslsmith_div_u32(37959u, 27570u))), global1.d.x), _wgslsmith_add_u32(arg_1.x, ~4909u), countOneBits(~u_input.a.x));
    return _wgslsmith_clamp_i32(global0.x, ~(~2147483647i ^ -(global0.x & 1i)), 16689i);
}

fn func_1() -> i32 {
    global0 = vec4<i32>(func_2(global1.a, global1.d), firstLeadingBit(7112i), global1.b.x, 1i) & select(-_wgslsmith_sub_vec4_i32(-vec4<i32>(-32318i, global0.x, global0.x, global1.b.x), vec4<i32>(global0.x, 0i, 2147483647i, global1.b.x)), -(~firstLeadingBit(vec4<i32>(-7035i, 2147483647i, global0.x, -1i))), !(!vec4<bool>(false, false, global1.a, global1.a)));
    global1 = Struct_1(global1.a, -(~global1.c), -vec3<i32>(14902i, global1.b.x, 20496i), _wgslsmith_div_vec3_u32(~(~vec3<u32>(u_input.a.x, global1.d.x, 0u)) ^ vec3<u32>(reverseBits(u_input.a.x), u_input.a.x, _wgslsmith_div_u32(global1.d.x, u_input.a.x)), ~_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, global1.d.x, global1.d.x), vec3<u32>(1u, global1.d.x, global1.d.x)), ~global1.d)));
    let var_0 = Struct_1(false & !global1.a, vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(min(vec4<i32>(2147483647i, -9252i, -1i, global1.c.x), vec4<i32>(global0.x, global0.x, -2147483647i, 1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global1.c.x, global0.x, global0.x, -1i), vec4<i32>(54821i, global1.b.x, 2147483647i, global1.c.x), vec4<i32>(global0.x, global0.x, global0.x, global1.b.x))), abs(vec4<i32>(22969i, 2147483647i, 21511i, -2517i)) ^ select(vec4<i32>(2147483647i, global0.x, 0i, global0.x), vec4<i32>(global1.c.x, 0i, global1.c.x, 2147483647i), global1.a)), global1.c.x, -2147483647i), global1.c, ~abs(reverseBits(global1.d)));
    var var_1 = _wgslsmith_add_u32(global1.d.x, reverseBits(_wgslsmith_clamp_u32(78177u, var_0.d.x, 21212u)));
    var var_2 = _wgslsmith_add_u32((~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.d.x, global1.d.x, var_0.d.x), vec4<u32>(u_input.a.x, global1.d.x, var_0.d.x, u_input.a.x)) >> (_wgslsmith_add_u32(1u, ~4294967295u) % 32u)) >> (u_input.a.x % 32u), global1.d.x);
    return _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -global0.wwx, min(vec3<i32>(8497i, ~_wgslsmith_sub_i32(global0.x, global0.x), 21491i), ~vec3<i32>(~1i, 1i, global1.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_add_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, -57715i, global1.c.x, 2147483647i), firstTrailingBit(vec4<i32>(global0.x, global1.c.x, 2147483647i, global1.b.x))), -(~vec4<i32>(global1.c.x, -34333i, global0.x, -1i) ^ vec4<i32>(global0.x, global0.x, global1.b.x, global1.c.x)));
    global0 = vec4<i32>(1i, (max(global1.c.x >> (64101u % 32u), firstLeadingBit(-2147483647i)) | -func_1()) ^ ~global0.x, select(_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_dot_vec2_i32(select(vec2<i32>(2147483647i, global1.c.x), global0.wz, false), global1.b.zy), abs(min(global1.b.x, 2147483647i))), -7361i, true), global1.c.x);
    var var_0 = Struct_1(any(!vec4<bool>(true, true, all(vec4<bool>(true, true, true, false)), any(vec4<bool>(false, global1.a, global1.a, global1.a)))), global1.b, _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(1i, global0.x), 30291i), _wgslsmith_sub_i32(-2147483647i << (u_input.a.x % 32u), ~29040i), -2147483647i), ~vec3<i32>(global0.x, i32(-1i) * -2147483647i, 2147483647i << (global1.d.x % 32u))), _wgslsmith_sub_vec3_u32(global1.d, _wgslsmith_add_vec3_u32(~(~global1.d), _wgslsmith_mult_vec3_u32(~global1.d, _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, global1.d.x), vec3<u32>(56529u, u_input.a.x, 0u))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~func_2(false, select(global1.d, vec3<u32>(28027u, var_0.d.x, 25182u), vec3<bool>(global1.a, var_0.a, global1.a))), global1.c.x, 9051i), ~((var_0.d & min(vec3<u32>(35036u, var_0.d.x, 49454u), global1.d)) >> (vec3<u32>(global1.d.x, 1u, 68161u) % vec3<u32>(32u))), vec4<i32>(global0.x, 0i, _wgslsmith_mult_i32(var_0.b.x, ~(-var_0.b.x)), -2147483647i));
}

