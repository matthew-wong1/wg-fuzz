struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(2475f, false, vec2<u32>(1u, 0u)));

var<private> global1: u32 = 4294967295u;

var<private> global2: vec2<i32>;

var<private> global3: vec4<i32> = vec4<i32>(1i, -1i, -29686i, i32(-2147483648));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    let var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(round(339f)), true, global0.a.c)));
    global0 = Struct_2(global0.a);
    var var_1 = u_input.b.zwy;
    let var_2 = var_0.a.a.c;
    var_1 = min(_wgslsmith_sub_vec3_u32(vec3<u32>(~_wgslsmith_sub_u32(u_input.b.x, var_2.x), 35044u, _wgslsmith_mod_u32(abs(u_input.a), 97387u)), ~((u_input.b.yxx >> (u_input.b.wzz % vec3<u32>(32u))) << (vec3<u32>(var_0.a.a.c.x, 1u, 52338u) % vec3<u32>(32u)))), abs(vec3<u32>(~var_2.x, ~min(1u, u_input.a), 0u)));
    return !(!(!(!all(vec3<bool>(global0.a.b, global0.a.b, global0.a.b)))));
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = !(!vec4<bool>(true, all(!vec2<bool>(global0.a.b, true)), !global0.a.b, func_3()));
    let var_1 = 4294967295u;
    var_0 = !vec4<bool>(!(true | all(vec3<bool>(false, false, true))), all(var_0.wxy), ~global2.x > _wgslsmith_dot_vec3_i32(global3.wwz | global3.zzy, firstLeadingBit(global3.xyx)), global0.a.b);
    global1 = _wgslsmith_dot_vec4_u32(~max(vec4<u32>(_wgslsmith_dot_vec2_u32(global0.a.c, global0.a.c), _wgslsmith_add_u32(0u, 4294967295u), abs(54818u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 20577u), vec2<u32>(arg_0, global0.a.c.x))), abs(select(u_input.b, vec4<u32>(1u, arg_0, u_input.b.x, 1u), true))), (min(countOneBits(u_input.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1, 1u, u_input.b.x, 55100u), vec4<u32>(u_input.a, 1u, 23490u, 34307u), u_input.b)) << (~countOneBits(vec4<u32>(arg_0, 58295u, var_1, 4294967295u)) % vec4<u32>(32u))) | u_input.b);
    let var_2 = Struct_2(global0.a);
    return Struct_2(Struct_1(1763f, !func_3(), _wgslsmith_add_vec2_u32(countOneBits(_wgslsmith_div_vec2_u32(global0.a.c, vec2<u32>(57172u, var_2.a.c.x))), vec2<u32>(~u_input.a, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(0u, 23457u, u_input.a, 70793u))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> vec3<u32> {
    let var_0 = arg_1;
    var var_1 = var_0.a.a.a;
    global3 = ~(vec4<i32>(21843i, global3.x << (arg_1.a.a.c.x % 32u), ~(global3.x << (1u % 32u)), -global2.x) & firstTrailingBit(~vec4<i32>(global3.x, 37073i, 2147483647i, global2.x)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(arg_1.a.a.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(370f))))), global0.a.b, ~firstLeadingBit(~u_input.b.xw));
    let var_3 = Struct_3(func_2(~_wgslsmith_clamp_u32(var_2.c.x, arg_1.a.a.c.x, arg_1.a.a.c.x) >> (arg_1.a.a.c.x % 32u)));
    return u_input.b.zyy;
}

fn func_5(arg_0: vec3<u32>, arg_1: bool, arg_2: bool, arg_3: i32) -> Struct_2 {
    var var_0 = _wgslsmith_add_i32(firstLeadingBit(((arg_3 & -14670i) ^ -global2.x) >> (1156u % 32u)), global2.x);
    global2 = vec2<i32>(arg_3, abs(-min(arg_3, 0i) | max(0i << (arg_0.x % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3, 26542i, global3.x), global3.ywz))));
    var_0 = ~_wgslsmith_mod_i32(-_wgslsmith_clamp_i32(-37509i, 4942i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, global3.x, arg_3, 0i), vec4<i32>(1i, global3.x, 1i, -1i))), _wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(global2.x), arg_3, _wgslsmith_sub_i32(-2147483647i, global3.x), -12896i), -vec4<i32>(2147483647i, global3.x, global3.x, -2147483647i)));
    global3 = countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(firstTrailingBit(arg_3 & -13604i), -global3.x, 7465i, -arg_3), vec4<i32>(2660i, -1i, i32(-1i) * -44823i, 0i | global2.x) & abs(vec4<i32>(-1i, global3.x, global3.x, 0i))));
    let var_1 = select(!vec3<bool>(!func_3(), any(vec3<bool>(arg_1, global0.a.b, global0.a.b)), global0.a.b), vec3<bool>(arg_2, true, global0.a.b), select(vec3<bool>(true, false, false), !(!vec3<bool>(arg_2, false, arg_1)), select(all(!vec4<bool>(arg_1, global0.a.b, true, global0.a.b)), false, arg_2)));
    return Struct_2(Struct_1(global0.a.a, !select(any(vec4<bool>(arg_1, global0.a.b, global0.a.b, true)), true, false), ~vec2<u32>(~8859u, u_input.b.x)));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = reverseBits(firstLeadingBit(-vec3<i32>(global3.x, global3.x, -global3.x)));
    var var_1 = _wgslsmith_f_op_f32(-arg_1.x);
    let var_2 = global3.ywx;
    let var_3 = func_5(func_4(global0.a, Struct_3(func_2(0u))), true, global0.a.b, abs(global2.x));
    global3 = vec4<i32>(var_2.x, 25185i, _wgslsmith_clamp_i32(-2147483647i, reverseBits(select(var_0.x >> (u_input.b.x % 32u), _wgslsmith_div_i32(var_2.x, global2.x), true)), 1i), _wgslsmith_clamp_i32(~global3.x, _wgslsmith_clamp_i32(abs(countOneBits(0i)), ~var_2.x, global2.x), var_2.x));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(floor(global0.a.a)))), func_5(~u_input.b.zwy, true, 24946u > u_input.b.x, 2147483647i).a.b, ~_wgslsmith_mod_vec2_u32(vec2<u32>(88526u, 1u), vec2<u32>(4294967295u, var_3.a.c.x)) ^ vec2<u32>(arg_0.a.a.c.x, ~u_input.a)));
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: bool) -> i32 {
    return _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(abs(abs(vec3<i32>(-25172i, global3.x, global3.x))), vec3<i32>(0i, -global2.x, i32(-1i) * -46415i)), firstLeadingBit(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, global3.x, 63575i), global3.wxz), _wgslsmith_div_vec3_i32(vec3<i32>(-70627i, -1i, 18891i), global3.zxz)))), _wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(global3.x, 1i, 56402i, global2.x)), vec4<i32>(global3.x, global3.x, 14388i, global2.x))), -_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global2.x, -7743i, 1i, 29925i), vec4<i32>(40354i, -27844i, 34429i, 43922i), vec4<i32>(2147483647i, global3.x, global3.x, global2.x)), vec4<i32>(1i, global3.x, global3.x, global3.x) & vec4<i32>(-1i, 10574i, 0i, global3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec4<bool>(global0.a.b, func_6(_wgslsmith_mult_vec3_u32(u_input.b.wxx, vec3<u32>(29907u, u_input.a, u_input.b.x)), func_1(Struct_3(Struct_2(global0.a)), vec3<f32>(global0.a.a, 405f, global0.a.a)), !global0.a.b) >= global2.x, global0.a.b, false));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.a.a, -1443f, global0.a.a), vec3<f32>(global0.a.a, global0.a.a, global0.a.a)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.a, global0.a.a, -1074f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.a, -1427f, global0.a.a))))) + vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1758f + global0.a.a))))), global0.a.a, _wgslsmith_f_op_f32(global0.a.a - global0.a.a)));
    var var_2 = global0.a;
    var_0 = !(!((func_1(Struct_3(Struct_2(Struct_1(-551f, global0.a.b, u_input.b.ww))), var_1).a.b && func_2(1u).a.b) && !(!var_2.b)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(func_2(43186u).a.a))))), false, vec2<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(var_2.c.x, var_2.c.x), func_4(Struct_1(global0.a.a, false, u_input.b.yx), Struct_3(Struct_2(global0.a))).x), min(var_2.c.x, _wgslsmith_div_u32(u_input.a, 4294967295u))));
    global1 = ~0u;
    let x = u_input.a;
    s_output = StorageBuffer(global3.zy, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(838f)), var_3.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1389f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3.a))), _wgslsmith_div_f32(731f, _wgslsmith_f_op_f32(386f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_3.a)) - _wgslsmith_div_f32(var_1.x, global0.a.a)))));
}

