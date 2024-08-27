struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
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

var<private> global0: Struct_5;

var<private> global1: Struct_3 = Struct_3(1i, 18622i);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> Struct_5 {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_add_i32(0i, global1.b), -global1.b);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1768f, _wgslsmith_f_op_f32(abs(-1472f))))), -1469f, _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1074f - -308f), _wgslsmith_f_op_f32(f32(-1f) * -1315f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -507f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-263f * 602f), _wgslsmith_f_op_f32(floor(892f)))))));
    var var_2 = abs(_wgslsmith_div_u32(~(~firstTrailingBit(global0.a.x)), _wgslsmith_add_u32(0u, global0.a.x)));
    let var_3 = Struct_3(max(u_input.b.x, -2402i), global1.a);
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1995f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_1.x, -291f)), _wgslsmith_f_op_f32(f32(-1f) * -798f))) - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_f_op_f32(-var_1.x)))), 1204f, _wgslsmith_f_op_f32(abs(var_1.x))));
    return Struct_5(global0.a);
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec3<i32>, arg_3: i32) -> vec4<i32> {
    global1 = Struct_3(u_input.a.x, -(min(firstTrailingBit(1i), arg_0 | 50193i) ^ 2147483647i));
    global1 = Struct_3(_wgslsmith_dot_vec3_i32(select(firstTrailingBit(arg_2) << (abs(vec3<u32>(40336u, global0.a.x, arg_1)) % vec3<u32>(32u)), max(vec3<i32>(u_input.b.x, 41895i, arg_0) >> (vec3<u32>(0u, global0.a.x, 4294967295u) % vec3<u32>(32u)), abs(vec3<i32>(arg_0, global1.a, -1i))), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), -min(u_input.b.wxx, vec3<i32>(19317i, 2734i, arg_0)) | (u_input.b.wxy << (select(vec3<u32>(7656u, 49765u, arg_1), vec3<u32>(4294967295u, 1u, 38688u), true) % vec3<u32>(32u)))), -18754i);
    global0 = Struct_5(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_add_u32(64969u, 2838u), 41764u), global0.a));
    global0 = Struct_5(vec2<u32>(11696u, global0.a.x));
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-975f, 1045f), _wgslsmith_div_f32(-1619f, 1326f), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(724f - 524f))) + _wgslsmith_f_op_f32(-1577f + -594f)))), -392f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -143f), -481f))));
    return vec4<i32>(u_input.b.x, arg_0, _wgslsmith_dot_vec3_i32(firstLeadingBit(reverseBits(vec3<i32>(-1i, 33273i, 0i))), arg_2 >> (_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1, 1u, arg_1), vec3<u32>(global0.a.x, global0.a.x, 33955u)) % vec3<u32>(32u))) ^ arg_2.x, min(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.b.x, abs(arg_2.x)), select(arg_2.xy, _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -2147483647i), u_input.b.yz, arg_2.zz), vec2<bool>(true, true)))));
}

fn func_1(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = arg_0.xxw;
    global0 = Struct_5(~global0.a);
    var var_1 = ~(_wgslsmith_add_u32(0u, _wgslsmith_mod_u32(1u, _wgslsmith_add_u32(1u, global0.a.x))) | _wgslsmith_sub_u32(_wgslsmith_add_u32(global0.a.x, 0u >> (1u % 32u)), 50188u));
    global0 = func_2();
    let var_2 = true;
    return Struct_2(global0.a.x, max(max(vec4<i32>(16208i, 1i, u_input.a.x, _wgslsmith_add_i32(-5824i, u_input.a.x)), firstLeadingBit(vec4<i32>(-41425i, 4504i, -30586i, global1.b))), ~(-func_3(3761i, 0u, vec3<i32>(-28833i, -24753i, 1i), 0i))), u_input.b);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>) -> Struct_5 {
    let var_0 = Struct_3(-_wgslsmith_add_i32(0i, global1.a | global1.a), abs(-30027i));
    global0 = func_2();
    let var_1 = 0u;
    var var_2 = !(!all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false))));
    let var_3 = vec4<i32>(_wgslsmith_sub_i32(countOneBits(min(34347i, 2147483647i)), _wgslsmith_dot_vec2_i32(arg_1 >> (global0.a % vec2<u32>(32u)), arg_0.b.wz) << (_wgslsmith_div_u32(_wgslsmith_clamp_u32(global0.a.x, global0.a.x, 0u), var_1) % 32u)), 2147483647i, -18052i, arg_0.b.x);
    return Struct_5(_wgslsmith_mod_vec2_u32(~_wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(global0.a.x, 1u)), vec2<u32>(var_1, 0u)), vec2<u32>(var_1, _wgslsmith_sub_u32(min(60295u, var_1), 18936u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_5(~(_wgslsmith_mult_vec2_u32(select(global0.a, global0.a, false), _wgslsmith_add_vec2_u32(vec2<u32>(0u, global0.a.x), global0.a)) & ~(~global0.a)));
    var var_0 = ~_wgslsmith_div_u32(global0.a.x, 1u);
    global1 = Struct_3(_wgslsmith_div_i32(-42307i, 18723i), _wgslsmith_mult_i32(1i, _wgslsmith_add_i32(global1.a, 2147483647i)));
    let var_1 = 850f;
    var_0 = global0.a.x;
    global0 = func_4(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1153f, var_1, var_1, -461f))), vec4<f32>(var_1, -195f, 799f, -1000f), global1.a >= 28770i)))), countOneBits(-vec2<i32>(i32(-1i) * -35882i, firstLeadingBit(global1.a))));
    global0 = Struct_5(global0.a);
    let var_2 = func_1(vec4<f32>(589f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1, var_1, true)) + _wgslsmith_f_op_f32(var_1 - 266f)))), _wgslsmith_f_op_f32(ceil(var_1)), 447f));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -27076i, var_2.b.x, u_input.b.x) >> (vec4<u32>(global0.a.x, 55384u, 4294967295u, var_2.a) % vec4<u32>(32u)), func_3(0i, var_2.a, -var_2.b.wwx, 2147483647i))));
}

