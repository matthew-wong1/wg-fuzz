struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<f32>,
    d: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -31018i;

var<private> global1: vec3<f32>;

var<private> global2: array<vec4<u32>, 21> = array<vec4<u32>, 21>(vec4<u32>(42769u, 10359u, 4294967295u, 64397u), vec4<u32>(4294967295u, 47647u, 52151u, 0u), vec4<u32>(15474u, 1u, 4294967295u, 40296u), vec4<u32>(1u, 24704u, 1u, 36122u), vec4<u32>(35186u, 0u, 13953u, 64890u), vec4<u32>(0u, 95943u, 16734u, 4294967295u), vec4<u32>(38015u, 24800u, 31823u, 1u), vec4<u32>(0u, 11586u, 4294967295u, 1u), vec4<u32>(1u, 10826u, 15565u, 79748u), vec4<u32>(41891u, 4294967295u, 10464u, 4294967295u), vec4<u32>(30281u, 1u, 93375u, 4294967295u), vec4<u32>(79881u, 11306u, 17041u, 83244u), vec4<u32>(0u, 40273u, 4294967295u, 36188u), vec4<u32>(1u, 1u, 27116u, 0u), vec4<u32>(39642u, 1u, 4294967295u, 4294967295u), vec4<u32>(1u, 1u, 0u, 62509u), vec4<u32>(49906u, 1u, 4294967295u, 24554u), vec4<u32>(37166u, 1u, 96207u, 12679u), vec4<u32>(4294967295u, 31542u, 10497u, 4294967295u), vec4<u32>(0u, 10027u, 4294967295u, 43830u), vec4<u32>(61566u, 24693u, 20765u, 1u));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> bool {
    global0 = -firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(0i, 1i, 0i, -19766i), max(vec4<i32>(-20490i, 2147483647i, 1i, 39102i), vec4<i32>(-2147483647i, 0i, -26621i, 2147483647i))), select(1i, 0i, false)));
    var var_0 = firstTrailingBit(~vec3<u32>(abs(29343u >> (1u % 32u)), u_input.b, 1u));
    global1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, _wgslsmith_div_f32(global1.x, global1.x), _wgslsmith_f_op_f32(abs(global1.x)))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1580f * global1.x) - _wgslsmith_f_op_f32(select(global1.x, -173f, true))), -752f, 1416f))));
    let var_1 = Struct_2(vec4<i32>(-(_wgslsmith_clamp_i32(38645i, -14568i, 2817i) >> (u_input.b % 32u)), 0i, 0i, abs(_wgslsmith_add_i32(min(-2147483647i, 14720i), -1i >> (var_0.x % 32u)))));
    let var_2 = Struct_3(_wgslsmith_div_vec2_i32(-(vec2<i32>(-1i) * -vec2<i32>(var_1.a.x, var_1.a.x)), select(-select(vec2<i32>(-41453i, -2147483647i), vec2<i32>(-27308i, var_1.a.x), vec2<bool>(true, false)), min(vec2<i32>(0i, -1i) | vec2<i32>(var_1.a.x, var_1.a.x), ~var_1.a.wy), true)), Struct_1(vec4<i32>(0i, _wgslsmith_sub_i32(abs(1i), firstLeadingBit(var_1.a.x)), 1i, -48564i), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(815f, global1.x, global1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x), vec3<f32>(1973f, global1.x, global1.x))))), vec4<bool>(_wgslsmith_f_op_f32(step(-1455f, -1046f)) < global1.x, true, true, true & any(vec2<bool>(true, true))), any(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(228f, global1.x, global1.x, 685f)))))), ~(~(~max(u_input.a, u_input.c))));
    return all(var_2.b.c.wy);
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: vec2<i32>) -> Struct_2 {
    let var_0 = global2[_wgslsmith_index_u32(26575u, 21u)];
    let var_1 = arg_1.b.c;
    global0 = i32(-1i) * -countOneBits(_wgslsmith_div_i32(~arg_2.x, arg_2.x >> (arg_1.d % 32u)));
    let var_2 = select(true, !(((arg_1.b.a.x ^ arg_1.a.x) >= (19983i ^ arg_2.x)) && arg_0), !any(vec2<bool>(func_3(), arg_1.b.c.x)));
    let var_3 = _wgslsmith_clamp_i32(~(~arg_2.x), -arg_1.a.x, 1i);
    return Struct_2(abs(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-1i, 1i), abs(60334i)), -_wgslsmith_dot_vec2_i32(vec2<i32>(-23179i, -47478i), arg_2), abs(_wgslsmith_sub_i32(arg_2.x, -48082i)), select(_wgslsmith_div_i32(0i, 1i), _wgslsmith_add_i32(arg_2.x, arg_2.x), true))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_5, arg_2: bool) -> i32 {
    let var_0 = 23111u;
    global2 = array<vec4<u32>, 21>();
    global0 = abs(arg_0.a.x);
    global2 = array<vec4<u32>, 21>();
    var var_1 = arg_2;
    return abs(~func_2(true, Struct_3(vec2<i32>(arg_0.a.x, arg_0.a.x), Struct_1(vec4<i32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x), arg_1.a.yxw, vec4<bool>(true, arg_2, true, arg_2), arg_2), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, arg_1.a.x, global1.x, arg_1.b.x)), var_0 >> (arg_1.c % 32u)), ~(~vec2<i32>(-18019i, arg_0.a.x))).a.x);
}

fn func_1() -> vec3<f32> {
    var var_0 = Struct_1(~vec4<i32>(reverseBits(-1i >> (u_input.a % 32u)), max(1i, ~1i), 2147483647i, 0i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-622f, 2330f, global1.x)))))), !(!vec4<bool>(true, any(vec3<bool>(true, false, true)), all(vec4<bool>(true, false, true, false)), all(vec3<bool>(true, false, false)))), true);
    var_0 = Struct_1(-var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-727f, global1.x, 542f) + var_0.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b * vec3<f32>(683f, -480f, var_0.b.x))))), select(var_0.c, vec4<bool>(false, true, select(!var_0.c.x, var_0.c.x, var_0.c.x | var_0.c.x), false), !select(vec4<bool>(false, false, true, false), var_0.c, false)), true);
    var var_1 = Struct_1(vec4<i32>(~24387i, 19233i, 1i, func_4(func_2(true & var_0.c.x, Struct_3(vec2<i32>(var_0.a.x, var_0.a.x), Struct_1(vec4<i32>(var_0.a.x, var_0.a.x, 1i, 6343i), var_0.b, var_0.c, false), vec4<f32>(global1.x, -1027f, global1.x, global1.x), 66226u), select(vec2<i32>(var_0.a.x, var_0.a.x), var_0.a.wx, vec2<bool>(false, true))), Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1864f, 194f, var_0.b.x, 1000f)), vec2<f32>(var_0.b.x, global1.x), 1u), any(select(var_0.c, vec4<bool>(true, false, var_0.c.x, var_0.c.x), vec4<bool>(var_0.c.x, true, var_0.c.x, var_0.c.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_0.b)) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(301f, global1.x, -152f) - vec3<f32>(-927f, -1097f, global1.x)))), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, global1.x, global1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(366f, var_0.b.x, var_0.b.x) * var_0.b))))), select(var_0.c, var_0.c, select(select(vec4<bool>(false, true, true, var_0.d), select(vec4<bool>(false, true, false, false), var_0.c, vec4<bool>(var_0.c.x, true, var_0.c.x, var_0.d)), var_0.c.x), vec4<bool>(var_0.d, select(var_0.c.x, var_0.d, true), select(var_0.d, var_0.c.x, var_0.c.x), true), vec4<bool>(var_0.a.x == -1i, !var_0.d, u_input.c < u_input.b, var_0.c.x | true))), var_0.d);
    let var_2 = -384f;
    var var_3 = ~abs(0u);
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(func_1());
    var var_0 = ~(~reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, u_input.a), vec2<u32>(75715u, u_input.c)) << (~vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))));
    let var_1 = Struct_5(vec4<f32>(-1541f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1.x, global1.x)))), 635f, _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_vec2_f32(-global1.xx), u_input.c ^ var_0.x);
    var_0 = vec2<u32>(var_0.x, ~(~_wgslsmith_add_u32(u_input.a, var_1.c))) >> (vec2<u32>(4294967295u, var_0.x) % vec2<u32>(32u));
    global0 = abs(-(~_wgslsmith_mod_i32(_wgslsmith_mod_i32(-48004i, 2147483647i), _wgslsmith_mod_i32(24981i, 2147483647i))));
    let var_2 = _wgslsmith_dot_vec2_i32(min(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 51061i), func_2(false, Struct_3(vec2<i32>(-12261i, 53201i), Struct_1(vec4<i32>(-70274i, -1i, -1i, -29795i), vec3<f32>(var_1.b.x, 616f, 1201f), vec4<bool>(false, true, false, true), true), vec4<f32>(980f, 1842f, 1000f, -153f), 18134u), vec2<i32>(-41581i, -88i)).a.ww), _wgslsmith_sub_vec2_i32(func_2(false, Struct_3(vec2<i32>(-1i, -74954i), Struct_1(vec4<i32>(16987i, -21614i, 1i, 1i), vec3<f32>(var_1.b.x, var_1.a.x, 988f), vec4<bool>(true, true, true, false), false), var_1.a, 0u), vec2<i32>(-2147483647i, 1i)).a.zx, max(vec2<i32>(0i, -1i), vec2<i32>(-19076i, -34081i)))) ^ max(vec2<i32>(1i, 1i), -vec2<i32>(-2147483647i, -1i)), -(vec2<i32>(1i, 1i) & select(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(6245i, -1i), vec2<i32>(-63156i, -49328i)), reverseBits(vec2<i32>(2147483647i, -4851i)), vec2<bool>(false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, u_input.a)), vec2<u32>(0u, ~var_1.c)) | (vec2<u32>(countOneBits(var_1.c), 4294967295u) | ~(vec2<u32>(u_input.a, var_1.c) ^ vec2<u32>(6795u, 4294967295u))), 56767i);
}

