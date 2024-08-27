struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<f32>,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(43327i, Struct_1(false, vec2<bool>(false, true), 4294967295u), true, 2147483647i, Struct_1(true, vec2<bool>(true, false), 1u)));

var<private> global1: vec3<f32> = vec3<f32>(-268f, -671f, 1293f);

var<private> global2: i32;

var<private> global3: vec2<i32> = vec2<i32>(34215i, 1i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> Struct_3 {
    var var_0 = 2147483647i;
    global2 = abs(global0.a.d) << ((60504u >> (global0.a.b.c % 32u)) % 32u);
    global0 = Struct_3(global0.a);
    let var_1 = global0.a.e;
    var_0 = global3.x;
    return Struct_3(global0.a);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>) -> vec2<bool> {
    global3 = vec2<i32>(firstTrailingBit(arg_0.a.a), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-12353i ^ arg_0.a.a, global3.x & global0.a.a, 60325i, global3.x), ~_wgslsmith_mult_vec4_i32(vec4<i32>(-10299i, 19533i, 1i, -1i), vec4<i32>(global0.a.a, -2147483647i, 1i, global3.x)))));
    var var_0 = Struct_2(~1i, func_2().a.e, global0.a.e.b.x, max(12275i, global0.a.d), Struct_1(any(vec3<bool>(arg_0.a.b.b.x, true, all(vec3<bool>(true, true, arg_0.a.b.a)))), arg_0.a.b.b, global0.a.e.c));
    var var_1 = vec3<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(global1.x, -757f)))) - _wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(round(-1584f))))), _wgslsmith_f_op_f32(1f * -1619f))));
    let var_2 = arg_0.a;
    return !var_0.e.b;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = func_2().a;
    let var_1 = _wgslsmith_add_vec2_i32(~reverseBits(-vec2<i32>(global3.x, -20518i)), vec2<i32>(var_0.a, 35119i));
    global1 = vec3<f32>(arg_0.x, -365f, arg_0.x);
    var var_2 = vec3<f32>(380f, global1.x, global1.x);
    global3 = var_1;
    return Struct_2(global3.x, var_0.e, global0.a.b.a, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(var_1 | vec2<i32>(var_1.x, var_1.x), vec2<i32>(-2147483647i, 0i)), firstTrailingBit(vec2<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.d, 27565i), vec2<i32>(-1i, -2147483647i))))), func_2().a.b);
}

fn func_1(arg_0: bool) -> vec4<bool> {
    var var_0 = func_4(vec4<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(f32(-1f) * -794f), global1.x), Struct_1(!(!global0.a.b.a), func_3(func_2(), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, global0.a.b.c, 59819u, 1u), vec4<u32>(1u, global0.a.b.c, 8850u, global0.a.b.c))), reverseBits(1u)));
    global2 = ~(-_wgslsmith_add_i32(-30809i, global0.a.d));
    let var_1 = -(1i & _wgslsmith_clamp_i32(func_2().a.d, ~min(32631i, global0.a.a), 17318i));
    let var_2 = vec3<u32>(17408u, var_0.b.c, u_input.a);
    let var_3 = false;
    return !(!vec4<bool>(var_3, global0.a.c, arg_0, any(select(vec3<bool>(arg_0, false, var_0.b.b.x), vec3<bool>(true, arg_0, arg_0), vec3<bool>(global0.a.c, true, var_3)))));
}

fn func_5(arg_0: vec3<bool>, arg_1: f32, arg_2: f32, arg_3: vec4<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(0i, func_4(vec4<f32>(-1000f, 1f, _wgslsmith_f_op_f32(-1039f - global1.x), -277f), global0.a.e).a), vec2<i32>(-5186i, global3.x));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-616f, -181f)) + arg_2);
    var var_2 = ~var_0.x;
    global2 = -2147483647i;
    global2 = 2147483647i;
    return Struct_3(func_2().a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a;
    global0 = func_5(select(vec3<bool>(true, 59916u < u_input.a, any(select(vec3<bool>(var_0.c, global0.a.e.b.x, false), vec3<bool>(false, true, var_0.e.b.x), var_0.e.b.x))), !select(vec3<bool>(var_0.b.a, var_0.b.b.x, false), !vec3<bool>(global0.a.c, false, global0.a.e.a), !var_0.c), vec3<bool>(false, !all(vec4<bool>(false, global0.a.c, var_0.b.b.x, global0.a.b.b.x)), select(var_0.b.b.x | global0.a.c, true, true))), -247f, 445f, func_1(select(!(global1.x > 162f), var_0.c | true, true)));
    global3 = vec2<i32>(-2147483647i, 45264i);
    let var_1 = func_5(vec3<bool>(false, !(!global0.a.e.b.x), -var_0.d == _wgslsmith_clamp_i32(var_0.d, -8022i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global3.x, 25717i, -4263i), vec4<i32>(-20116i, -1i, 1i, var_0.d)))), _wgslsmith_f_op_f32(exp2(global1.x)), global1.x, !(!vec4<bool>(true, true, !global0.a.e.a, false))).a.b;
    global2 = min(global0.a.a & (i32(-1i) * -22773i), global3.x);
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1219f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global1.xy, vec2<f32>(_wgslsmith_f_op_f32(-597f * -416f), global1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(695f, -426f)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~vec3<i32>(_wgslsmith_sub_i32(global0.a.d, global0.a.a), func_2().a.a, -2147483647i | global3.x)), ~0u, global1.zx, vec3<f32>(_wgslsmith_f_op_f32(round(829f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -302f))), _wgslsmith_f_op_f32(floor(global1.x))), ~(~(~(~vec4<u32>(global0.a.e.c, 0u, 41532u, 0u)))));
}

