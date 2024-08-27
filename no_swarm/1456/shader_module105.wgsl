struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec4<i32>(1i, i32(-2147483648), i32(-2147483648), 37989i), 16166u, vec4<i32>(0i, -16145i, 0i, -40277i));

var<private> global2: Struct_1;

var<private> global3: bool = true;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec3<bool>) -> f32 {
    let var_0 = abs(min(-7101i, u_input.b) ^ ~firstTrailingBit(countOneBits(0i)));
    var var_1 = Struct_1(firstTrailingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(global0.c, u_input.c, countOneBits(vec4<i32>(global2.a.x, -87590i, 1i, -1i))), ~u_input.c)), ~(_wgslsmith_add_u32(~global1.b, global1.b) & firstTrailingBit(~global0.b)), firstTrailingBit(global2.c));
    let var_2 = Struct_1(~firstLeadingBit(global2.a), 73679u & var_1.b, -global1.a);
    var var_3 = vec2<u32>(reverseBits(112986u & (select(165u, 52957u, arg_3.x) >> (_wgslsmith_clamp_u32(global0.b, arg_2.b, global1.b) % 32u))), ~40583u);
    global1 = var_2;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(286f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(402f, arg_0, arg_3.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + -2377f) * arg_0)), arg_1.x != ~arg_2.b)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(537f * -1766f))))));
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: f32) -> i32 {
    global3 = !(arg_1.x == ~48604u);
    var var_0 = Struct_1(vec4<i32>(-(~_wgslsmith_div_i32(global0.a.x, 1i)), global2.c.x, global2.c.x, firstTrailingBit(firstLeadingBit(global1.c.x))), max(~(~(~48841u)), ~global1.b), -vec4<i32>(min(_wgslsmith_dot_vec4_i32(vec4<i32>(-8669i, 0i, -1i, 38205i), vec4<i32>(-69480i, u_input.c.x, global0.a.x, global1.c.x)), abs(22334i)), 1i | -global0.c.x, min(~(-46246i), 2147483647i), -2147483647i));
    var var_1 = Struct_1(vec4<i32>(min(-42046i, -43578i), -1i, _wgslsmith_dot_vec3_i32(-abs(vec3<i32>(-51540i, -36498i, u_input.c.x)), global0.a.zyz), u_input.c.x), min(firstLeadingBit(abs(~0u)), global0.b), u_input.c);
    global1 = Struct_1(-_wgslsmith_sub_vec4_i32(global1.a, ~_wgslsmith_div_vec4_i32(vec4<i32>(global1.c.x, 1i, 20753i, var_1.c.x), vec4<i32>(2147483647i, u_input.a.x, 12399i, 1i))), _wgslsmith_mod_u32(~(~1u), countOneBits(_wgslsmith_sub_u32(abs(1u), _wgslsmith_mod_u32(arg_1.x, 20433u)))), _wgslsmith_clamp_vec4_i32(global0.a ^ min(vec4<i32>(global1.c.x, -1i, global0.c.x, 0i), global1.a), global1.c, ~_wgslsmith_mod_vec4_i32(var_1.c >> (vec4<u32>(1u, global0.b, 4294967295u, var_0.b) % vec4<u32>(32u)), ~u_input.c)));
    global0 = Struct_1(var_0.c, 25550u, vec4<i32>(global0.a.x, -11246i, 0i, -u_input.b));
    return -((var_1.c.x & (-1i | global2.a.x)) ^ global2.a.x) & countOneBits(~abs(1i));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = vec4<bool>(!arg_0, false, arg_0, true);
    global2 = arg_1;
    var var_1 = true;
    global2 = Struct_1(~_wgslsmith_clamp_vec4_i32(-vec4<i32>(2147483647i, global2.a.x, 81520i, global0.a.x), global2.a, abs(arg_1.a) >> ((vec4<u32>(1u, global0.b, global2.b, global0.b) >> (vec4<u32>(global0.b, global1.b, 1u, 10920u) % vec4<u32>(32u))) % vec4<u32>(32u))), global1.b, abs(~(-arg_1.a)) & vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_1.a.x, 0i, -30669i), global1.c), -1i, -47667i, -1i >> (min(0u, 1u) % 32u)));
    let var_2 = func_4(true, ~vec4<u32>(1u, global0.b, global0.b, 13701u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -1814f), vec4<u32>(1u, _wgslsmith_div_u32(56422u, 42692u), arg_1.b, firstTrailingBit(global0.b)), Struct_1(abs(vec4<i32>(u_input.c.x, -54548i, 1i, u_input.c.x)), firstLeadingBit(54328u), select(u_input.c, vec4<i32>(-1i, 31098i, -30421i, global1.c.x), arg_0)), vec3<bool>(any(var_0), true, !var_0.x))), 1281f));
    return vec3<bool>(true, select(true, arg_0, false), true);
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> i32 {
    let var_0 = arg_0;
    global0 = arg_1;
    let var_1 = select(!select(select(func_2(var_0, arg_1), func_2(arg_0, Struct_1(u_input.c, 4294967295u, vec4<i32>(12603i, arg_1.a.x, global2.c.x, 32249i))), arg_0), !select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(true, true, true), var_0), vec3<bool>(!arg_0, any(vec2<bool>(var_0, false)), var_0)), !select(vec3<bool>(true, arg_0, any(vec3<bool>(arg_0, false, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, arg_0, var_0), vec3<bool>(true, true, true)), select(select(vec3<bool>(var_0, var_0, arg_0), vec3<bool>(var_0, var_0, var_0), true), !vec3<bool>(var_0, arg_0, arg_0), any(vec2<bool>(var_0, arg_0)))), vec3<bool>(any(func_2(var_0, arg_1)), any(vec3<bool>(any(vec4<bool>(var_0, arg_0, var_0, var_0)), select(false, false, var_0), var_0)), var_0));
    var var_2 = vec2<u32>(global2.b, global2.b);
    return func_4(arg_0, select(vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(0u, var_2.x)), var_2.x, global0.b, 0u), abs(_wgslsmith_clamp_vec4_u32(~vec4<u32>(global1.b, 0u, 1u, var_2.x), ~vec4<u32>(var_2.x, global0.b, 0u, 23074u), abs(vec4<u32>(arg_1.b, arg_1.b, 4294967295u, 41975u)))), any(vec2<bool>(arg_0 || true, global0.c.x == -1i))), -1416f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.b;
    global2 = Struct_1(_wgslsmith_mult_vec4_i32(-select(global1.c, global1.a, all(vec4<bool>(true, false, true, true))), global1.c & firstLeadingBit(_wgslsmith_add_vec4_i32(global1.a, vec4<i32>(0i, 20437i, global2.a.x, global0.a.x)))), 0u, max((global2.a & (global1.c >> (vec4<u32>(0u, 1u, 25711u, 0u) % vec4<u32>(32u)))) ^ vec4<i32>(global0.c.x, func_1(true, Struct_1(vec4<i32>(u_input.c.x, global1.c.x, global2.c.x, u_input.b), global2.b, global2.a)), global2.a.x, -global1.c.x), vec4<i32>(_wgslsmith_sub_i32(global1.a.x, global0.a.x) ^ abs(-14213i), 0i, max(global2.c.x, global1.c.x), abs(global2.c.x))));
    let var_1 = Struct_1(~vec4<i32>(u_input.b >> (global1.b % 32u), 0i, firstTrailingBit(global1.a.x >> (global2.b % 32u)), ~(u_input.c.x ^ global1.a.x)), global2.b, select(vec4<i32>(countOneBits(15176i), -7433i >> (global2.b % 32u), global0.c.x, 1i), -vec4<i32>(_wgslsmith_sub_i32(global0.c.x, -33990i), 1i, -global1.c.x, 21962i), true));
    let var_2 = global1.a.x > global0.a.x;
    var var_3 = !(!select(vec3<bool>(false, !var_2, false), !(!vec3<bool>(true, var_2, var_2)), func_2(var_2, Struct_1(global1.c, global1.b, global0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(543f, -793f, -1380f), vec3<f32>(-484f, 485f, 150f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-490f, 1655f, 1016f)), func_2(var_3.x, Struct_1(vec4<i32>(6735i, global0.a.x, u_input.b, 14775i), 4881u, vec4<i32>(2147483647i, global2.a.x, 10514i, u_input.c.x))))), vec3<f32>(-770f, _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(-1360f + -395f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1470f, -186f, -533f)))))), select(~vec2<u32>(~global2.b, 53550u), vec2<u32>(~global1.b, var_1.b) ^ ~_wgslsmith_clamp_vec2_u32(vec2<u32>(36458u, var_1.b), vec2<u32>(25700u, 1u), vec2<u32>(global1.b, global2.b)), any(select(select(vec2<bool>(var_2, var_3.x), var_3.xx, var_3.zy), func_2(true, var_1).yz, false))));
}

