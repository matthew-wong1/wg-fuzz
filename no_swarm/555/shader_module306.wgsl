struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: vec3<bool>,
    d: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-10433i, 40875i, -1253i);

var<private> global1: vec2<u32> = vec2<u32>(73637u, 0u);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_5 {
    var var_0 = Struct_5(Struct_3(abs(abs(vec2<u32>(u_input.a, 19934u)) >> (vec2<u32>(25571u, 63312u) % vec2<u32>(32u))), vec3<f32>(1033f, 1519f, -449f)), 0i);
    var var_1 = Struct_1(true, !arg_1.b);
    let var_2 = vec3<f32>(-686f, _wgslsmith_f_op_f32(sign(var_0.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b.x))))));
    var var_3 = vec3<u32>(_wgslsmith_mod_u32(~(~u_input.a), 1u), u_input.a, _wgslsmith_sub_u32(~1u, 1u)) >> (vec3<u32>(~abs(firstTrailingBit(4294967295u)), 4294967295u, 18693u) % vec3<u32>(32u));
    let var_4 = arg_3.b;
    return Struct_5(var_0.a, firstLeadingBit(~reverseBits(-var_0.b)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_5) -> u32 {
    var var_0 = Struct_2(-_wgslsmith_clamp_vec4_i32(reverseBits(select(vec4<i32>(arg_2.b, global0.x, global0.x, 1i), vec4<i32>(28910i, global0.x, arg_2.b, arg_2.b), arg_1)), vec4<i32>(arg_2.b & -7295i, 2147483647i >> (u_input.a % 32u), ~global0.x, max(-1i, -50775i)), min(~vec4<i32>(1i, global0.x, -28205i, 0i), ~vec4<i32>(arg_2.b, arg_2.b, global0.x, -48670i))), global1.x, vec3<bool>(all(vec3<bool>(true, true, true)), global0.x > ~(-2147483647i), true), true);
    let var_1 = _wgslsmith_sub_vec2_i32(abs(vec2<i32>(var_0.a.x, ~var_0.a.x)), firstTrailingBit(global0.yy) << ((~arg_2.a.a >> (max(vec2<u32>(16115u, arg_2.a.a.x), ~arg_2.a.a) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_2 = Struct_2(countOneBits(select(~var_0.a, countOneBits(max(vec4<i32>(0i, 0i, -2147483647i, global0.x), var_0.a)), arg_1 && true)), firstTrailingBit(~60792u ^ u_input.a), select(select(vec3<bool>(true, true, arg_0 < 1013f), !vec3<bool>(false, arg_1, false), true), vec3<bool>(any(vec4<bool>(arg_1, true, var_0.d, arg_1)), (-37300i == global0.x) && false, !(var_0.d && true)), true), !(!all(select(vec2<bool>(var_0.d, true), vec2<bool>(true, false), var_0.c.xy))));
    global0 = _wgslsmith_mult_vec3_i32(vec3<i32>(global0.x, -1i, firstLeadingBit(-13846i)), vec3<i32>(-1i) * -vec3<i32>(firstTrailingBit(global0.x), -1i, -42062i));
    global1 = ~arg_2.a.a << (reverseBits(~arg_2.a.a) % vec2<u32>(32u));
    return var_0.b;
}

fn func_1() -> Struct_1 {
    global1 = _wgslsmith_mod_vec2_u32(vec2<u32>(3578u, u_input.a), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.a, global1.x), func_3(_wgslsmith_f_op_f32(f32(-1f) * -377f), false, func_2(false, Struct_1(false, true), false, Struct_1(true, true)))), abs(vec2<u32>(~9134u, 0u))));
    var var_0 = _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(global0.xx, global0.xy), _wgslsmith_mod_vec2_i32(global0.yx, -(~vec2<i32>(24231i, 1899i) >> (vec2<u32>(u_input.a, global1.x) % vec2<u32>(32u)))));
    let var_1 = 2199u;
    let var_2 = func_2(true, Struct_1((abs(u_input.a) | func_3(761f, false, Struct_5(Struct_3(vec2<u32>(7276u, global1.x), vec3<f32>(-197f, -1000f, 767f)), var_0.x))) > global1.x, true), true, Struct_1(true, true)).a;
    var var_3 = func_2(true, Struct_1(true, true), select(true, true, (1112u <= _wgslsmith_clamp_u32(0u, var_2.a.x, 1u)) == true), Struct_1(true, all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), false)) && true)).a;
    return Struct_1(any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), all(vec4<bool>(true, true, false, false))), any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false)))), (all(vec3<bool>(false, true, false)) || !any(vec3<bool>(true, true, true))) || true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<i32>(-47120i, firstLeadingBit(global0.x), -2147483647i);
    global1 = vec2<u32>(firstTrailingBit(u_input.a), ~min(global1.x, ~reverseBits(4294967295u)));
    var var_0 = func_1();
    global1 = _wgslsmith_mult_vec2_u32(~reverseBits(reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, global1.x)))), ~(~vec2<u32>(func_3(1564f, true, Struct_5(Struct_3(vec2<u32>(u_input.a, u_input.a), vec3<f32>(-203f, 201f, 1351f)), global0.x)), 51094u)));
    let var_1 = Struct_4(global0.x, Struct_3(~vec2<u32>(54320u, 1u) | ~min(vec2<u32>(37109u, global1.x), vec2<u32>(1u, u_input.a)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-169f, -172f, 1448f) - vec3<f32>(-754f, 451f, -1000f))), vec3<f32>(_wgslsmith_f_op_f32(floor(-1498f)), _wgslsmith_f_op_f32(-1570f * -1318f), -1968f))), Struct_1(var_0.b, !var_0.a));
    let var_2 = Struct_2(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(global0.x, -1i), -global0.x), 1i, var_1.a, -13615i) >> ((~(vec4<u32>(37703u, 0u, 3649u, var_1.b.a.x) ^ vec4<u32>(60782u, global1.x, u_input.a, 1u)) & ~(vec4<u32>(1u, 23218u, global1.x, global1.x) | vec4<u32>(u_input.a, var_1.b.a.x, global1.x, u_input.a))) % vec4<u32>(32u)), 4294967295u, vec3<bool>(!any(vec3<bool>(var_0.b, var_1.c.a, var_0.a)), var_0.a, !all(select(vec2<bool>(true, var_1.c.a), vec2<bool>(false, true), vec2<bool>(var_0.a, false)))), var_1.c.a);
    let var_3 = _wgslsmith_f_op_f32(step(var_1.b.b.x, 418f));
    var var_4 = Struct_4(~(firstLeadingBit(global0.x >> (var_2.b % 32u)) | var_2.a.x), var_1.b, var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(reverseBits(4294967295u), _wgslsmith_mod_u32(var_4.b.a.x, abs(global1.x)), ~(~(11814u & var_4.b.a.x))), var_1.b.b.yy, var_3);
}

