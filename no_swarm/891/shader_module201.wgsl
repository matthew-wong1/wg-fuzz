struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: bool,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_1;

var<private> global2: Struct_5 = Struct_5(false, Struct_1(vec4<i32>(2147483647i, 2147483647i, 31386i, -16495i), vec2<bool>(true, true), vec4<bool>(false, false, true, true)), vec4<i32>(-2045i, 1i, 1i, 2147483647i));

var<private> global3: vec4<u32> = vec4<u32>(11932u, 61881u, 15648u, 0u);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_4) -> f32 {
    var var_0 = Struct_5(all(global2.b.b), Struct_1(global2.c, !vec2<bool>(!arg_3.c, global2.a), global1.c), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(global2.c, global2.b.a), ~(-(~vec4<i32>(arg_3.a.b.a.x, -1i, arg_3.a.b.a.x, 7978i)))));
    var var_1 = i32(-1i) * -7423i;
    let var_2 = _wgslsmith_div_u32(max(arg_3.b.a.a, ~30955u), arg_1);
    var var_3 = Struct_4(arg_3.a, Struct_3(Struct_2(firstTrailingBit(0u), global1.b.x), arg_3.b.b), global1.b.x);
    var_3 = Struct_4(Struct_3(Struct_2(countOneBits(4769u), true), Struct_1(arg_3.a.b.a, global2.b.b, select(arg_3.b.b.c, var_3.a.b.c, arg_3.a.b.c.x))), Struct_3(Struct_2(reverseBits(~1u), all(var_0.b.c.zzw)), Struct_1(arg_3.b.b.a, !(!vec2<bool>(global2.a, false)), select(!global2.b.c, select(var_0.b.c, vec4<bool>(false, global1.c.x, var_0.a, var_3.c), true), !var_3.b.b.b.x))), 363f > arg_0.x);
    return -1406f;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: bool, arg_3: f32) -> vec3<f32> {
    var var_0 = _wgslsmith_div_vec2_i32(~global2.c.xy, vec2<i32>(-30530i, select(abs(1i), ~arg_1, false) << (min(_wgslsmith_clamp_u32(global3.x, 4294967295u, 4294967295u), _wgslsmith_mult_u32(global3.x, global3.x)) % 32u)));
    let var_1 = global2.b;
    let var_2 = false;
    global1 = global2.b;
    let var_3 = var_1.c.wwy;
    return vec3<f32>(_wgslsmith_f_op_f32(floor(arg_3)), _wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(step(arg_3, global0.x)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: vec4<u32>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(arg_1.yyy + _wgslsmith_f_op_vec3_f32(arg_1.zxy + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(true, -68778i, any(vec3<bool>(global2.b.c.x, global2.b.b.x, global1.c.x)), _wgslsmith_f_op_f32(func_3(arg_1.xzw, arg_2.x, global2.c, Struct_4(Struct_3(Struct_2(arg_2.x, global2.a), Struct_1(vec4<i32>(-1i, global1.a.x, global2.b.a.x, 0i), vec2<bool>(true, global1.b.x), vec4<bool>(false, false, false, true))), Struct_3(Struct_2(1u, true), Struct_1(vec4<i32>(0i, 0i, arg_0.x, global2.c.x), global1.c.zw, global1.c)), global1.b.x))))) - _wgslsmith_f_op_vec3_f32(-arg_1.wyy))));
    global2 = Struct_5(true && global2.a, global2.b, _wgslsmith_clamp_vec4_i32(vec4<i32>(global1.a.x, _wgslsmith_mult_i32(_wgslsmith_mult_i32(-43264i, 1i), _wgslsmith_mod_i32(global1.a.x, 2147483647i)), i32(-1i) * -global1.a.x, (u_input.d.x & global2.b.a.x) << (global3.x % 32u)), ~vec4<i32>(1i >> (global3.x % 32u), 1i, u_input.d.x, -9268i), ~abs(vec4<i32>(u_input.d.x, 2147483647i, 38252i, 67608i))));
    global1 = global2.b;
    global3 = vec4<u32>(~global3.x, global3.x, global3.x, _wgslsmith_mod_u32(~(~global3.x), ~(~global3.x))) & select(select(arg_2, arg_2, !(!vec4<bool>(global1.c.x, false, global1.c.x, false))), firstLeadingBit(arg_2 & ~arg_2), global2.a);
    var var_1 = Struct_3(Struct_2(~(~(~4423u)), global2.b.c.x), global2.b);
    return firstLeadingBit(u_input.d);
}

fn func_5(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: Struct_5) -> Struct_5 {
    let var_0 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(arg_0, arg_0), vec4<u32>(countOneBits(arg_0.x), arg_0.x, firstTrailingBit(0u | arg_0.x), reverseBits(_wgslsmith_div_u32(38584u, arg_0.x))));
    let var_1 = Struct_2(~arg_0.x, any(arg_3.b.c.zz));
    var var_2 = global3.zx;
    var_2 = vec2<u32>(0u, abs(global3.x));
    global1 = arg_3.b;
    return arg_3;
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: f32, arg_3: vec3<i32>) -> Struct_5 {
    var var_0 = -global1.a.zy;
    return func_5(~reverseBits(abs(firstTrailingBit(vec4<u32>(arg_0, 72854u, 1998u, global3.x)))), global1.c.xyx, _wgslsmith_mult_vec2_i32(reverseBits(func_2(global1.a.zy, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1098f, global0.x, arg_2, 1564f))), vec4<u32>(119661u, arg_0, global3.x, 58736u) | vec4<u32>(34062u, global3.x, arg_0, 4294967295u))), ~firstLeadingBit(-vec2<i32>(var_0.x, global1.a.x))), Struct_5(false, global2.b, firstTrailingBit(global1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(~_wgslsmith_add_u32(abs(_wgslsmith_mod_u32(9265u, 22463u)), min(~global3.x, ~global3.x)), select(countOneBits(max(select(global1.a.yyx, global1.a.wwy, vec3<bool>(global2.a, false, global1.b.x)), global1.a.yyz)), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, abs(global1.a.x), global1.a.x), vec3<i32>(-2147483647i, -2147483647i, select(1i, global1.a.x, true))), true), -416f, u_input.c);
    let var_0 = global1.c.x;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-395f, global0.x))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, global0.x), vec2<f32>(465f, global0.x), global1.b.x))))));
    let var_1 = u_input.d.x;
    let var_2 = -388f;
    let var_3 = vec3<f32>(956f, _wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_4(~global3.x <= min(2939u, global3.x), _wgslsmith_dot_vec3_i32(reverseBits(global1.a.xwx), firstTrailingBit(vec3<i32>(u_input.c.x, var_1, -23869i))), !global1.b.x, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_2, 633f) + vec3<f32>(global0.x, -351f, 1000f)), _wgslsmith_mod_u32(1u, 4294967295u), vec4<i32>(global2.c.x, global2.b.a.x, global1.a.x, u_input.d.x), Struct_4(Struct_3(Struct_2(32777u, true), global2.b), Struct_3(Struct_2(53834u, global2.b.b.x), global2.b), global1.c.x))))).x));
    let var_4 = any(global1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3.x, var_3.x, var_3.x, global0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1272f, var_2, var_3.x, var_3.x) * vec4<f32>(459f, -329f, -913f, global0.x)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1176f, -1085f, var_3.x, global0.x))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1855f, -567f, 1706f, 1602f), vec4<f32>(-1000f, 1175f, 134f, var_2))))), true)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2, -578f, 1789f, global0.x))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(408f, -1054f, global0.x, 188f), vec4<f32>(var_2, -327f, 423f, -1000f), vec4<bool>(global2.b.b.x, false, true, var_4))))))), _wgslsmith_div_vec2_u32(select(~global3.yx, ~vec2<u32>(global3.x, global3.x), global2.b.c.xy), vec2<u32>(global3.x, _wgslsmith_div_u32(1u, global3.x))), max(max(vec4<u32>(1u, select(1u, global3.x, var_4), global3.x & global3.x, select(17839u, 5962u, var_4)), _wgslsmith_mult_vec4_u32(~vec4<u32>(global3.x, global3.x, global3.x, global3.x), max(vec4<u32>(1u, 22882u, 17969u, global3.x), vec4<u32>(1u, global3.x, 1u, global3.x)))), ~(~countOneBits(vec4<u32>(35485u, 1u, 0u, 4294967295u)))), _wgslsmith_add_i32(_wgslsmith_mod_i32(~abs(global1.a.x), 35126i), global1.a.x));
}

