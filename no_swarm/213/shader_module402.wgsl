struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 27> = array<i32, 27>(i32(-2147483648), i32(-2147483648), 0i, -6476i, 27020i, -1i, i32(-2147483648), 13459i, -22159i, 13604i, -1i, 35558i, 1i, 2067i, 13962i, 11063i, 10325i, 21408i, -1i, -1i, -29239i, -12166i, 2147483647i, 22770i, 76184i, -1i, 1i);

var<private> global2: vec4<u32> = vec4<u32>(1u, 0u, 1u, 48861u);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec4<f32>) -> u32 {
    global0 = arg_1;
    let var_0 = u_input.c;
    let var_1 = 0u;
    global1 = array<i32, 27>();
    var var_2 = Struct_3(vec2<bool>(all(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false)))), false));
    return ~(~1u);
}

fn func_2() -> bool {
    let var_0 = Struct_3(vec2<bool>(!all(vec3<bool>(true, true, false)), false));
    let var_1 = 4294967295u;
    global0 = Struct_1(global2.yxw, firstTrailingBit(2576u), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(global0.a.x, global0.b << (~global0.b % 32u)), _wgslsmith_div_u32(_wgslsmith_add_u32(global0.b & global0.b, var_1), ~select(global0.a.x, var_1, var_0.a.x)), ~func_3(1187f, Struct_1(global0.a, global2.x, global1[_wgslsmith_index_u32(global0.b, 27u)], -2147483647i), vec4<f32>(810f, -619f, 246f, 466f)) & ~global2.x), 27u)], -((firstTrailingBit(-2147483647i) ^ ~u_input.d) << (var_1 % 32u)));
    global2 = vec4<u32>(global2.x | _wgslsmith_dot_vec2_u32(global2.wx, global0.a.yx), var_1, _wgslsmith_mod_u32(69288u, abs(var_1)), ~_wgslsmith_dot_vec2_u32(~global2.xy, global0.a.zx));
    var var_2 = -2147483647i;
    return true;
}

fn func_4(arg_0: vec2<bool>, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.b, global2.x, reverseBits(47960u)), ~abs(_wgslsmith_div_vec3_u32(global0.a, global2.zzx))), _wgslsmith_dot_vec4_u32(reverseBits(~min(vec4<u32>(13723u, global0.b, global0.b, global0.a.x), vec4<u32>(global0.b, 0u, 84160u, global0.a.x))), ~(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.b, 0u, global2.x, global2.x), vec4<u32>(1u, global0.a.x, global2.x, 0u)) << (~vec4<u32>(global2.x, global2.x, global2.x, global2.x) % vec4<u32>(32u)))), -2147483647i, global1[_wgslsmith_index_u32(77219u, 27u)]);
    var var_1 = arg_0;
    var var_2 = -vec2<i32>(global1[_wgslsmith_index_u32(1u, 27u)], global0.d);
    var_0 = Struct_1(vec3<u32>(abs(min(abs(global0.a.x), ~74115u)), var_0.b ^ var_0.a.x, 0u), 0u, _wgslsmith_mult_i32(-select(0i, 13640i, true) >> (~(global0.a.x << (global0.b % 32u)) % 32u), var_2.x), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.d & u_input.d, global1[_wgslsmith_index_u32(var_0.b | global0.b, 27u)], var_2.x), vec3<i32>(i32(-1i) * -20714i, -33100i, _wgslsmith_mult_i32(var_0.d, 1i))), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.d, 1493i, 36822i), u_input.e.yyx), 2147483647i << (var_0.b % 32u)), u_input.e.zww, u_input.e.yyz)));
    global1 = array<i32, 27>();
    return Struct_1(~global2.wyx, _wgslsmith_mult_u32(4294967295u, global0.a.x), global0.c, -2147483647i);
}

fn func_5(arg_0: u32, arg_1: Struct_5) -> Struct_1 {
    var var_0 = !(!select(vec4<bool>(true, arg_1.b.x & arg_1.b.x, arg_1.b.x, true), arg_1.b, select(arg_1.b.x, arg_1.b.x, arg_1.b.x) != (false || arg_1.b.x)));
    let var_1 = 0u;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -176f));
    return Struct_1(global0.a, abs(_wgslsmith_div_u32(~4294967295u, 41259u >> (arg_0 % 32u))) << (1u % 32u), arg_1.a.c.c, global1[_wgslsmith_index_u32(var_1, 27u)]);
}

fn func_1(arg_0: f32) -> Struct_4 {
    global1 = array<i32, 27>();
    let var_0 = vec3<f32>(arg_0, _wgslsmith_f_op_f32(sign(arg_0)), arg_0);
    global0 = func_5(4294967295u, Struct_5(Struct_4(~(global2.x | global2.x), vec3<u32>(global2.x, global2.x, firstLeadingBit(global2.x)), Struct_1(select(vec3<u32>(global2.x, 58363u, 4294967295u), vec3<u32>(0u, 16804u, global0.a.x), vec3<bool>(false, false, true)), _wgslsmith_sub_u32(global2.x, 0u), global1[_wgslsmith_index_u32(global2.x, 27u)] >> (global2.x % 32u), _wgslsmith_div_i32(-2147483647i, global1[_wgslsmith_index_u32(1u, 27u)])), func_4(vec2<bool>(true, true), func_2())), vec4<bool>(true, !any(vec4<bool>(false, false, true, false)), all(vec2<bool>(true, true)), false)));
    let var_1 = func_4(select(vec2<bool>(true, true), select(vec2<bool>(true, any(vec3<bool>(false, true, true))), vec2<bool>(true, true), true), vec2<bool>(true, all(vec4<bool>(true, false, true, false)))), true);
    var var_2 = min(u_input.e.wxw, vec3<i32>(2147483647i, u_input.e.x, -20693i));
    return Struct_4(~global0.b, _wgslsmith_mult_vec3_u32(vec3<u32>(global0.b & 1u, _wgslsmith_dot_vec2_u32(abs(var_1.a.xy), ~global0.a.xx), func_5(~global2.x, Struct_5(Struct_4(1u, var_1.a, Struct_1(var_1.a, global2.x, global0.d, 1i), Struct_1(global2.xzy, 0u, -3780i, 1i)), vec4<bool>(true, false, false, false))).b), vec3<u32>(global0.a.x, 19561u, ~(~var_1.b))), var_1, Struct_1(vec3<u32>(global2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.b, global2.x), vec2<u32>(0u, 53185u)), abs(global2.x)) & _wgslsmith_mult_vec3_u32(global2.wzz, var_1.a), ~_wgslsmith_sub_u32(~4294967295u, min(global0.a.x, 70457u)), -2147483647i, min(-2147483647i, var_1.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(round(1878f));
    var var_1 = u_input.e;
    var var_2 = 62181u;
    let var_3 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -604f));
    let var_4 = Struct_5(Struct_4(func_3(_wgslsmith_f_op_f32(ceil(-368f)), Struct_1(~vec3<u32>(4294967295u, global0.b, global2.x), _wgslsmith_mult_u32(var_3.c.b, var_3.b.x), -u_input.e.x, -4590i), vec4<f32>(259f, _wgslsmith_f_op_f32(f32(-1f) * -1259f), -1463f, _wgslsmith_f_op_f32(ceil(-667f)))), ~vec3<u32>(firstLeadingBit(0u), ~1u, ~4294967295u), func_5(_wgslsmith_sub_u32(global2.x ^ var_3.a, ~global0.a.x), Struct_5(func_1(1000f), vec4<bool>(true, true, true, true))), var_3.c), select(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !vec4<bool>(all(vec3<bool>(true, true, true)), global0.a.x <= global0.a.x, false, true), all(vec2<bool>(all(vec4<bool>(true, true, false, true)), true))));
    let var_5 = -14198i;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_vec3_i32(countOneBits(countOneBits(u_input.e.yyw)), -vec3<i32>(-1i, var_4.a.c.c, global0.c)));
}

