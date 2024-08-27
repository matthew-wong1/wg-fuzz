struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<i32>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: vec3<bool>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, true);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<i32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1017f, 1657f)) - _wgslsmith_f_op_f32(169f + 1123f)))))));
    var var_1 = true;
    var_1 = global0.x;
    return vec4<bool>(global0.x, global0.x, !global0.x, !(!(!(true || global0.x))));
}

fn func_1(arg_0: Struct_4) -> Struct_1 {
    let var_0 = !global0.xy;
    global0 = vec4<bool>(false, !(!(!arg_0.a.d)), any(func_2(u_input.c)), false);
    return arg_0.a;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> vec4<bool> {
    global0 = !vec4<bool>(true, arg_0.d.d, !(!(arg_1.d == false)), func_2(~countOneBits(vec4<i32>(u_input.c.x, 2147483647i, u_input.b, arg_1.c))).x);
    let var_0 = Struct_4(arg_1);
    let var_1 = 38172i;
    global0 = vec4<bool>(countOneBits(arg_0.b.x) == _wgslsmith_mod_u32(_wgslsmith_div_u32(arg_1.a, var_0.a.a), abs(1u)), arg_1.d, arg_1.d, any(select(!(!vec3<bool>(arg_2, true, false)), select(vec3<bool>(true, false, global0.x), global0.ywz, vec3<bool>(arg_0.a.d, var_0.a.d, true)), func_2(arg_0.c).x)));
    let var_2 = func_1(Struct_4(func_1(var_0))).b.x;
    return func_2(reverseBits(_wgslsmith_clamp_vec4_i32(u_input.c, u_input.c << (vec4<u32>(39018u, 65821u, var_0.a.a, var_0.a.a) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(u_input.c, arg_0.c)) ^ (u_input.c | select(vec4<i32>(-12851i, var_1, 0i, 16322i), vec4<i32>(21491i, -11702i, 0i, -12748i), arg_2))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !select(vec4<bool>((global0.x | global0.x) | all(global0.zw), !global0.x, !global0.x && false, false), select(!vec4<bool>(false, global0.x, global0.x, false), func_3(Struct_2(Struct_1(69185u, u_input.a.yx, 1i, true), vec2<u32>(1134u, 64893u), vec4<i32>(0i, -1i, 2147483647i, u_input.c.x), Struct_1(1u, u_input.a.yx, 1i, global0.x), -1144f), func_1(Struct_4(Struct_1(13460u, u_input.a.yy, u_input.a.x, global0.x))), true), any(!vec4<bool>(true, false, global0.x, false))), !(!select(vec4<bool>(true, false, false, global0.x), vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(global0.x, true, global0.x, global0.x))));
    let var_0 = Struct_1(_wgslsmith_mult_u32(firstTrailingBit(countOneBits(1u)), min(1u, 13767u)), ~u_input.c.wz, ~u_input.c.x, !(!global0.x));
    global0 = select(!func_3(Struct_2(var_0, reverseBits(vec2<u32>(var_0.a, var_0.a)), u_input.c, Struct_1(var_0.a, var_0.b, u_input.b, global0.x), _wgslsmith_f_op_f32(-1337f * -1815f)), Struct_1(1u, vec2<i32>(1i, 34764i), var_0.b.x, func_2(u_input.c).x), any(select(vec3<bool>(var_0.d, true, true), global0.wxw, vec3<bool>(true, true, var_0.d)))), select(!vec4<bool>(!var_0.d, !var_0.d, true, all(vec4<bool>(true, true, global0.x, var_0.d))), !select(vec4<bool>(global0.x, false, global0.x, true), !vec4<bool>(false, false, var_0.d, false), func_2(u_input.c)), select(select(vec4<bool>(true, global0.x, global0.x, false), func_3(Struct_2(var_0, vec2<u32>(0u, 0u), u_input.c, var_0, -839f), var_0, false), vec4<bool>(true, true, global0.x, true)), func_3(Struct_2(Struct_1(68161u, vec2<i32>(u_input.b, -1i), 36629i, true), vec2<u32>(var_0.a, 4263u), vec4<i32>(u_input.c.x, var_0.c, u_input.b, -1535i), var_0, 1444f), var_0, var_0.d || false), var_0.d & all(vec4<bool>(false, global0.x, var_0.d, true)))), true);
    var var_1 = Struct_4(var_0);
    let var_2 = Struct_3(_wgslsmith_div_f32(996f, 1f), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(181f, 960f))), vec2<f32>(1f, 1f))))), !global0.xwz, vec2<i32>(var_1.a.b.x, u_input.c.x));
    var var_3 = ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(53373u, 1u, 104270u, 1u) & vec4<u32>(1u, var_1.a.a, 0u, var_1.a.a), ~vec4<u32>(44889u, var_0.a, var_1.a.a, var_1.a.a)), var_1.a.a, var_1.a.a) & ~(~var_0.a);
    let var_4 = global0.x;
    global0 = !func_3(Struct_2(var_1.a, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(55105u, 0u), vec2<u32>(var_0.a, 0u), vec2<u32>(var_0.a, var_1.a.a)), ~u_input.c << ((vec4<u32>(48028u, 0u, 35546u, 0u) >> (vec4<u32>(36775u, 77525u, var_0.a, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)), func_1(Struct_4(var_1.a)), _wgslsmith_f_op_f32(step(var_2.a, var_2.b.x))), Struct_1(var_1.a.a, ~vec2<i32>(-1i, -2147483647i), _wgslsmith_mod_i32(_wgslsmith_sub_i32(var_1.a.b.x, -15843i), abs(42885i)), true), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(abs(-1i) >> (select(var_0.a, 75974u, false) % 32u), _wgslsmith_mult_i32(_wgslsmith_mod_i32(abs(1i), _wgslsmith_sub_i32(var_2.d.x, -28090i)), countOneBits(u_input.b)), ~(~abs(var_1.a.b.x)), _wgslsmith_mult_i32(var_2.d.x, _wgslsmith_mult_i32(-var_2.d.x, select(var_1.a.b.x, var_0.c, var_1.a.d)))), -vec4<i32>(_wgslsmith_mod_i32(abs(-20668i), -var_1.a.c), _wgslsmith_div_i32(-var_0.c, ~1i), 1i, _wgslsmith_div_i32(select(u_input.a.x, var_1.a.c, true), -2147483647i)), ~(~vec4<u32>(1u, _wgslsmith_mult_u32(var_1.a.a, 0u), 1u, ~var_1.a.a)));
}

