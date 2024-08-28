struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: bool,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(690f, 1000f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: vec2<i32>) -> bool {
    var var_0 = -44104i;
    return true;
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = Struct_2(arg_0.c.b.x, u_input.a.x, arg_0.c);
    let var_1 = Struct_3(abs(vec4<u32>(1u, var_0.b, var_0.b << (var_0.b % 32u), _wgslsmith_dot_vec3_u32(~u_input.a.ywy, u_input.a.xzx))), var_0, !(~(~4294967295u) > u_input.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.c.a, arg_0.c.a, false)) * _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(global0.x, global0.x)))), _wgslsmith_f_op_f32(sign(883f))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.a, 1000f, global0.x)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1876f, 1747f, 945f)))))))));
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(1215f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - global0.x) * _wgslsmith_f_op_f32(min(global0.x, global0.x))))), -1000f));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-173f)) * _wgslsmith_f_op_f32(-arg_0.c.a)) - global0.x)) * var_0.c.a);
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.d.zz + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_2))))) - vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c.a, var_1.d.x) - -784f), -793f)), var_2));
    return _wgslsmith_sub_i32(var_1.b.a, -(~(~(-2147483647i))) ^ -(min(var_1.b.a, 22942i) << (firstLeadingBit(0u) % 32u)));
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_3) -> Struct_2 {
    var var_0 = arg_2.b.b;
    var var_1 = ~func_3(arg_2.b);
    let var_2 = Struct_2(max(~firstLeadingBit(arg_2.b.c.b.x) ^ -countOneBits(arg_2.b.c.b.x), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(arg_2.b.c.b.x, arg_2.b.c.b.x, 4680i, arg_2.b.a), vec4<i32>(arg_2.b.c.b.x, 1i, -1i, arg_2.b.a)), -_wgslsmith_div_vec4_i32(vec4<i32>(arg_2.b.c.b.x, arg_2.b.c.b.x, -35998i, 14993i), vec4<i32>(arg_2.b.c.b.x, -28997i, arg_2.b.c.b.x, arg_2.b.a)))), ~(~0u ^ arg_1.x), arg_2.b.c);
    let var_3 = vec2<bool>(!(!arg_0), true);
    var_1 = -39886i;
    return Struct_2(-_wgslsmith_dot_vec3_i32(~(-vec3<i32>(21308i, arg_2.b.c.b.x, arg_2.b.c.b.x)), abs(~vec3<i32>(-76501i, -32239i, arg_2.b.a))), reverseBits(var_2.b), arg_2.b.c);
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: vec2<i32>, arg_3: u32) -> Struct_2 {
    var var_0 = all(!select(!(!vec4<bool>(false, arg_0.b.x, true, arg_0.b.x)), !vec4<bool>(false, arg_0.b.x, true, arg_0.b.x), !vec4<bool>(true, arg_0.b.x, arg_0.b.x, false)));
    var var_1 = vec4<bool>(select(true, arg_0.b.x, true), !((arg_0.a.b >= arg_0.a.b) != (~arg_1 <= (i32(-1i) * -58151i))), false, true);
    let var_2 = vec3<i32>(13886i, 1i, -firstTrailingBit(arg_0.a.c.b.x));
    let var_3 = var_2.zy;
    global0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x * arg_0.a.c.a))), arg_0.a.c.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-166f, global0.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(2259f, arg_0.d.a) - vec2<f32>(-769f, -1400f)))))));
    return func_2(var_1.x, u_input.a.zyw, Struct_3(u_input.a, func_2(!(var_1.x & false), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.a.b, arg_0.a.b, 554u), max(vec3<u32>(61372u, arg_3, 61092u), vec3<u32>(4384u, u_input.b, 40589u))), Struct_3(~u_input.a, arg_0.a, true, vec3<f32>(1000f, -2200f, global0.x))), true, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1549f, _wgslsmith_f_op_f32(abs(-936f)), _wgslsmith_f_op_f32(global0.x - 592f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, 1267f))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, -1388f), vec2<f32>(global0.x, global0.x)))))));
    global0 = vec2<f32>(global0.x, 115f);
    let var_0 = func_4(Struct_4(func_2(func_1(31662u | u_input.a.x, select(vec3<i32>(-29797i, 0i, -1968i), vec3<i32>(-40078i, 1i, -1i), true), ~vec2<i32>(-1i, -19185i)), vec3<u32>(~u_input.a.x, u_input.b, 809u >> (u_input.a.x % 32u)), Struct_3(~vec4<u32>(36119u, 4294967295u, 4294967295u, u_input.b), Struct_2(66395i, 0u, Struct_1(-385f, vec2<i32>(1i, -23845i))), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(796f, global0.x, global0.x)))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), global0.x, func_2(func_1(_wgslsmith_div_u32(25970u, 84181u), vec3<i32>(30333i, 1i, 20647i), vec2<i32>(-30599i, 18722i)), u_input.a.zzy, Struct_3(u_input.a, Struct_2(2147483647i, u_input.b, Struct_1(-771f, vec2<i32>(-71658i, 2147483647i))), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 1000f)))).c), ~(-11252i), _wgslsmith_mult_vec2_i32(-abs(vec2<i32>(1i, 57792i)), func_2(false, u_input.a.zwy, Struct_3(u_input.a, Struct_2(-2147483647i, u_input.a.x, Struct_1(339f, vec2<i32>(-2147483647i, -1i))), false, vec3<f32>(global0.x, 246f, -608f))).c.b) ^ vec2<i32>(1i, 1i), _wgslsmith_sub_u32(~u_input.a.x, u_input.b));
    var var_1 = !(!all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), all(vec4<bool>(true, false, false, true)))));
    let var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-13864i, -2147483647i), 0i, -func_2(true, ~u_input.a.xyx, Struct_3(vec4<u32>(16246u, 11396u, 0u, u_input.b), var_0, true, vec3<f32>(var_0.c.a, 512f, -179f))).c.b.x), -vec3<i32>(var_0.a, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(var_0.a, -1i, var_0.a)), vec3<i32>(var_0.c.b.x, var_0.a, var_0.c.b.x)), -13250i));
    let var_3 = Struct_3(abs(vec4<u32>(u_input.a.x, ~4294967295u, var_0.b, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(4294967295u, var_0.b, 1u, 33491u)))) >> (~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.a.x, 71913u), vec4<u32>(1u, u_input.b, var_0.b, u_input.a.x))) % vec4<u32>(32u)), Struct_2(func_2(false, select(u_input.a.yzz, u_input.a.xwx, vec3<bool>(true, true, true)), Struct_3(~vec4<u32>(0u, 0u, u_input.a.x, 5261u), func_4(Struct_4(var_0, vec3<bool>(true, true, true), global0.x, var_0.c), 2147483647i, var_0.c.b, var_0.b), true, _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 944f, -1560f) - vec3<f32>(602f, -647f, 1826f)))).c.b.x, var_0.b, Struct_1(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(step(var_0.c.a, global0.x))), vec2<i32>(var_2.x, var_2.x) << (_wgslsmith_add_vec2_u32(u_input.a.xz, u_input.a.wy) % vec2<u32>(32u)))), any(select(vec2<bool>(22545i >= var_0.c.b.x, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), true), vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(146f, _wgslsmith_f_op_f32(floor(var_0.c.a)), var_0.c.a)));
    let var_4 = func_2(u_input.b == var_3.b.b, u_input.a.wyw >> (~u_input.a.zyy % vec3<u32>(32u)), var_3).c;
    var_1 = any(!select(select(!vec4<bool>(var_3.c, false, true, var_3.c), !vec4<bool>(var_3.c, var_3.c, true, false), !vec4<bool>(false, var_3.c, var_3.c, true)), !(!vec4<bool>(true, var_3.c, var_3.c, true)), !vec4<bool>(var_3.c, var_3.c, true, var_3.c)));
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(vec2<i32>(_wgslsmith_clamp_i32(var_4.b.x, var_0.a, var_2.x), 1i << (0u % 32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_3.d))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1130f, var_4.a, global0.x), vec3<f32>(global0.x, -198f, -1000f), true))))) + var_3.d), var_0.b, ~var_2);
}

