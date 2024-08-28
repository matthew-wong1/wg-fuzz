struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: f32,
    d: vec3<bool>,
    e: bool,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
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

var<private> global0: Struct_1 = Struct_1(4294967295u, vec4<f32>(1038f, 228f, -2762f, 712f), vec2<u32>(25096u, 28155u));

var<private> global1: array<vec4<i32>, 28>;

var<private> global2: Struct_3;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: Struct_3) -> bool {
    let var_0 = global2.a;
    let var_1 = select(vec4<bool>(any(select(vec3<bool>(false, global2.a, false), vec3<bool>(global2.a, global2.a, global2.a), true)), true, arg_2.a, arg_2.a), !(!(!select(vec4<bool>(global2.a, arg_2.a, arg_2.a, global2.a), vec4<bool>(global2.a, false, arg_2.a, global2.a), vec4<bool>(arg_2.a, arg_2.a, arg_2.a, global2.a)))), !(!select(false && global2.a, any(vec2<bool>(arg_2.a, global2.a)), true)));
    global1 = array<vec4<i32>, 28>();
    let var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_div_u32(u_input.b, ~4422u), 84935u, countOneBits(global0.c.x)), select(~arg_0.zxy, arg_0.zwx, u_input.a > 0u)) ^ (arg_0.yxx << (~((arg_0.xzy & arg_0.zwx) & abs(arg_0.xzx)) % vec3<u32>(32u)));
    global1 = array<vec4<i32>, 28>();
    return any(select(vec3<bool>(true & (var_2.x < 22138u), _wgslsmith_f_op_f32(-arg_1.x) == 666f, false), var_1.zyy, var_1.x));
}

fn func_2() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global0.b.wyy), global0.b.xzx, select(vec3<bool>(true, all(select(vec3<bool>(global2.a, false, global2.a), vec3<bool>(true, true, global2.a), true)), all(vec3<bool>(false, false, global2.a))), !select(!vec3<bool>(true, global2.a, true), vec3<bool>(global2.a, global2.a, global2.a), global0.b.x == global0.b.x), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, all(vec2<bool>(global2.a, true)), 170f != global0.b.x)))));
    global1 = array<vec4<i32>, 28>();
    var var_1 = Struct_2(vec3<u32>(abs(min(countOneBits(u_input.b), firstTrailingBit(global0.c.x))), countOneBits(_wgslsmith_mult_u32(u_input.a, u_input.b)), global0.c.x << (0u % 32u)), select(vec4<bool>(func_3(vec4<u32>(0u, global0.a, 107404u, global0.a), global0.b, Struct_3(global2.a)) && (false | global2.a), any(!vec4<bool>(true, true, global2.a, false)), false, global2.a), !select(vec4<bool>(true, global2.a, global2.a, global2.a), select(vec4<bool>(true, false, global2.a, global2.a), vec4<bool>(global2.a, false, false, global2.a), vec4<bool>(true, global2.a, global2.a, false)), all(vec3<bool>(global2.a, true, false))), !(!select(vec4<bool>(false, global2.a, global2.a, global2.a), vec4<bool>(false, true, global2.a, global2.a), global2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), vec3<bool>(!global2.a, true && !(!global2.a), any(select(vec3<bool>(global2.a, global2.a, global2.a), vec3<bool>(false, false, global2.a), true))), !global2.a);
    global0 = Struct_1(_wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, global0.a, 405u, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(global0.c.x, u_input.a, 45235u, var_1.a.x), vec4<u32>(1u, 0u, global0.a, global0.a))), ~(~(~var_1.a.x))), global0.b, global0.c);
    let var_2 = global1[_wgslsmith_index_u32(var_1.a.x, 28u)];
    return ~_wgslsmith_clamp_vec4_u32(vec4<u32>(~max(9116u, var_1.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 60679u, u_input.b) | vec4<u32>(u_input.b, var_1.a.x, var_1.a.x, global0.a), countOneBits(vec4<u32>(0u, var_1.a.x, 163452u, var_1.a.x))), ~firstTrailingBit(global0.c.x), 42314u), ~vec4<u32>(u_input.a, var_1.a.x, u_input.b << (38u % 32u), 20759u), min(vec4<u32>(global0.a, 0u, 11169u, 1u) << ((vec4<u32>(u_input.b, 21749u, global0.a, u_input.a) | vec4<u32>(1u, var_1.a.x, u_input.b, var_1.a.x)) % vec4<u32>(32u)), vec4<u32>(reverseBits(4294967295u), 36469u, _wgslsmith_dot_vec2_u32(var_1.a.yy, vec2<u32>(var_1.a.x, 1u)), 59648u)));
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    let var_0 = Struct_3(any(!(!vec4<bool>(true, false, global2.a, global2.a))) & !(!global2.a));
    let var_1 = Struct_1(_wgslsmith_dot_vec4_u32(~func_2() | ~vec4<u32>(global0.a, 1u, 54614u, global0.a), vec4<u32>(4294967295u, _wgslsmith_clamp_u32(1u, u_input.a, global0.c.x), ~u_input.b, abs(65684u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global0.b)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1534f, 204f, -2833f, -404f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, -1809f, global0.b.x, 511f), global0.b)))))), abs(vec2<u32>(_wgslsmith_dot_vec2_u32(global0.c, vec2<u32>(922u, 4294967295u) & global0.c), global0.a)));
    var var_2 = global0.a;
    let var_3 = var_1;
    var var_4 = Struct_2(~vec3<u32>(4294967295u, ~_wgslsmith_mult_u32(1u, 375u), ~countOneBits(5513u)), !(!select(select(vec4<bool>(true, var_0.a, global2.a, false), vec4<bool>(false, false, true, global2.a), vec4<bool>(true, global2.a, global2.a, var_0.a)), select(vec4<bool>(false, global2.a, false, var_0.a), vec4<bool>(global2.a, false, true, var_0.a), var_0.a), vec4<bool>(var_0.a, global2.a, var_0.a, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-896f))))), select(!(!vec3<bool>(false, var_0.a, var_0.a)), vec3<bool>(true, true, global2.a), select(select(!vec3<bool>(global2.a, global2.a, var_0.a), vec3<bool>(false, global2.a, true), select(vec3<bool>(true, true, var_0.a), vec3<bool>(var_0.a, var_0.a, false), vec3<bool>(var_0.a, var_0.a, true))), select(select(vec3<bool>(global2.a, true, false), vec3<bool>(var_0.a, false, var_0.a), vec3<bool>(var_0.a, var_0.a, global2.a)), select(vec3<bool>(var_0.a, true, true), vec3<bool>(global2.a, false, var_0.a), vec3<bool>(false, global2.a, true)), func_3(vec4<u32>(51859u, 49973u, var_1.c.x, var_3.a), vec4<f32>(1291f, 1251f, global0.b.x, -489f), var_0)), !var_0.a)), all(vec3<bool>(true, true, true)));
    return -1077f;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: bool, arg_3: Struct_3) -> Struct_3 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(754f)))));
    global1 = array<vec4<i32>, 28>();
    global2 = Struct_3(!(_wgslsmith_f_op_f32(min(var_0.x, -1000f)) <= -733f));
    let var_1 = abs(firstLeadingBit(firstLeadingBit(firstLeadingBit(~vec4<u32>(7356u, 24956u, u_input.a, global0.a)))));
    var var_2 = Struct_4(~global0.c.x);
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(false, _wgslsmith_f_op_f32(func_1(-vec3<i32>(reverseBits(-1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(-1i, -44432i)), 1i))), !(reverseBits(33744u) != global0.a), Struct_3(!(global0.b.x > 1117f)));
    let var_1 = _wgslsmith_mod_vec2_i32(abs(_wgslsmith_sub_vec2_i32(select(vec2<i32>(140i, 53309i), min(vec2<i32>(16427i, -2147483647i), vec2<i32>(-1i, 0i)), vec2<bool>(true, true)), -reverseBits(vec2<i32>(2147483647i, 17878i)))), select(~(~vec2<i32>(1i, 1i)), ~countOneBits(vec2<i32>(-2147483647i, 15802i)), true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

