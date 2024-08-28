struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<i32>,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: vec2<u32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec4<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true, Struct_1(vec4<f32>(1670f, 819f, -2364f, -738f), 1762f, vec2<bool>(true, false)), vec4<u32>(48781u, 4193u, 34917u, 4294967295u));

var<private> global1: Struct_4 = Struct_4(Struct_2(false, Struct_1(vec4<f32>(-812f, -483f, 2177f, 1563f), -1619f, vec2<bool>(false, true)), vec4<u32>(1u, 15830u, 20761u, 13766u)), true);

var<private> global2: vec4<i32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32) -> vec2<bool> {
    global1 = Struct_4(global1.a, any(!(!vec3<bool>(global1.a.a, true, global0.a))));
    var var_0 = global1.a.c.yzy;
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.b, -771f, global1.a.b.b, global1.a.b.a.x)))), 346f, !global0.b.c), ~countOneBits(~vec2<i32>(global2.x, 1i)), ~(~firstTrailingBit(vec4<i32>(-15617i, -8478i, u_input.a, arg_0.x))) >> (select(~select(global1.a.c, global0.c, vec4<bool>(false, true, true, global1.b)), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(global1.a.c, global0.c, global1.a.c), vec4<u32>(global0.c.x, 31294u, 37436u, global1.a.c.x)), vec4<bool>(global0.a, 484f < global1.a.b.b, global0.a != global0.b.c.x, global0.b.c.x)) % vec4<u32>(32u)), Struct_2(((global1.a.c.x << (var_0.x % 32u)) ^ 1u) >= global1.a.c.x, global0.b, ~vec4<u32>(global1.a.c.x | 4294967295u, select(0u, 0u, global0.a), 4294967295u, _wgslsmith_add_u32(117055u, global0.c.x))), ~_wgslsmith_dot_vec3_u32(~abs(global1.a.c.yww), max(vec3<u32>(46693u, var_0.x, 6159u), ~vec3<u32>(0u, global1.a.c.x, global1.a.c.x))));
    let var_2 = 18300u;
    let var_3 = vec3<bool>(_wgslsmith_dot_vec2_u32(var_0.xx, vec2<u32>(7884u, 5634u)) >= (global0.c.x & var_0.x), true, !(!(var_0.x != 4294967295u)));
    return var_1.a.c;
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = select(global1.a.b.c, select(select(select(!vec2<bool>(global1.a.a, false), !vec2<bool>(global0.b.c.x, global1.b), select(global1.a.b.c, global1.a.b.c, false)), select(select(vec2<bool>(global0.a, global1.a.b.c.x), vec2<bool>(global1.b, global0.a), global0.a), !global0.b.c, !vec2<bool>(true, global1.b)), global1.a.b.c), func_3(vec4<i32>(_wgslsmith_div_i32(-1302i, arg_0), 9918i, global2.x, _wgslsmith_sub_i32(global2.x, -5387i)), u_input.a), vec2<bool>(global1.a.b.c.x, !any(global1.a.b.c))), global0.b.c.x);
    let var_1 = global1.a.b.c.x;
    var var_2 = Struct_2(all(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, global1.b, global1.a.b.c.x, false), vec4<bool>(false, true, global1.b, var_0.x)))), global1.a.b, firstTrailingBit(firstTrailingBit(global1.a.c)));
    let var_3 = _wgslsmith_mult_i32(~(-_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global2.x, 2147483647i), vec3<i32>(global2.x, 4826i, 39898i))), firstTrailingBit(~_wgslsmith_clamp_i32(53140i, global2.x, 16824i))) >> (16192u % 32u);
    return global1.a;
}

fn func_1(arg_0: f32) -> vec4<u32> {
    global2 = min(vec4<i32>(~u_input.a, abs(u_input.a), u_input.a, countOneBits(1i)), countOneBits(firstLeadingBit(vec4<i32>(12893i, ~(-9355i), _wgslsmith_mult_i32(-24079i, -10540i), _wgslsmith_add_i32(global2.x, 2147483647i)))));
    global1 = Struct_4(func_2(~(-23805i)), global1.a.a);
    global2 = vec4<i32>(-(~global2.x), i32(-1i) * -36387i, _wgslsmith_mod_i32(-(~(-38509i)), 15092i), 2147483647i) >> (global0.c % vec4<u32>(32u));
    let var_0 = !(!select(!select(vec4<bool>(false, global1.a.b.c.x, global1.a.a, global0.a), vec4<bool>(false, global0.b.c.x, false, true), vec4<bool>(global1.a.a, true, false, false)), select(select(vec4<bool>(global1.a.b.c.x, global1.b, global1.a.b.c.x, true), vec4<bool>(true, global1.b, global0.a, true), true), vec4<bool>(global1.a.a, false, false, false), !vec4<bool>(global1.a.b.c.x, true, global0.b.c.x, global0.b.c.x)), !any(vec4<bool>(false, true, true, true))));
    global1 = Struct_4(func_2(_wgslsmith_mult_i32(-_wgslsmith_sub_i32(-89635i, u_input.a), 2147483647i)), any(!select(func_2(-19865i).b.c, func_2(28427i).b.c, func_2(-470i).b.c)));
    return ~(abs(vec4<u32>(select(46854u, 4294967295u, global1.b), global0.c.x, global0.c.x, 0u)) ^ reverseBits(~global0.c));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.c.x, min(_wgslsmith_mult_vec4_u32(~vec4<u32>(global1.a.c.x, global1.a.c.x, global0.c.x, 4294967295u), ~global1.a.c), func_1(global0.b.b)), -reverseBits(u_input.a), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global0.b.a.x, -336f, global0.b.a.x) - vec4<f32>(global0.b.a.x, 1258f, 593f, 804f))))), _wgslsmith_div_vec4_f32(global1.a.b.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.b.b, -870f, global1.a.b.b, 266f) + global1.a.b.a))))), abs(-_wgslsmith_div_vec4_i32(-vec4<i32>(-9715i, -2147483647i, u_input.a, global2.x), reverseBits(vec4<i32>(45766i, global2.x, -18005i, global2.x)))));
}

