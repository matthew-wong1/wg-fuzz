struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> f32 {
    var var_0 = ~(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.e.xxx << (vec3<u32>(28773u, 11531u, u_input.a) % vec3<u32>(32u)), vec3<i32>(1i, -1i, 2147483647i)), ~u_input.e.xyw >> (arg_2.yxy % vec3<u32>(32u)), max(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_3.b.x, -2147483647i, u_input.e.x), u_input.e.yzw, vec3<i32>(u_input.d, arg_1.b.x, arg_1.b.x)), select(vec3<i32>(arg_1.b.x, -31516i, 34979i), vec3<i32>(arg_3.d, u_input.c.x, u_input.c.x), false))) >> (arg_2.wzx % vec3<u32>(32u)));
    return _wgslsmith_f_op_f32(f32(-1f) * -1691f);
}

fn func_3(arg_0: i32) -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.a.x * global0.c), global0.a.x)), -216f, global0.a.x, -658f)), vec2<i32>(2147483647i, arg_0), global0.c, global0.b.x);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-289f, 1338f, var_0.c, 737f), vec4<f32>(var_0.a.x, global0.c, global0.c, global0.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 1000f, -1195f, 1000f))), vec4<f32>(_wgslsmith_f_op_f32(floor(-183f)), _wgslsmith_f_op_f32(var_0.a.x + global0.a.x), -305f, _wgslsmith_f_op_f32(global0.a.x - var_0.a.x)))))), var_0.b, var_0.c, var_0.d);
    var var_2 = Struct_1(global0.a, vec2<i32>(firstLeadingBit(-countOneBits(37757i)), ~(~global0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + -414f)), 2147483647i);
    var var_3 = vec4<i32>(1547i, global0.b.x, ~var_1.d, ~_wgslsmith_dot_vec3_i32(abs(u_input.e.wzz), vec3<i32>(global0.d, var_0.d >> (u_input.a % 32u), 0i)));
    var var_4 = -_wgslsmith_clamp_vec2_i32(var_1.b, countOneBits(vec2<i32>(abs(2147483647i), var_2.d)), var_1.b);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a) + vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.x), var_2.a.x, _wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(global0.a.x + var_2.c))), vec4<f32>(_wgslsmith_f_op_f32(round(global0.c)), _wgslsmith_f_op_f32(max(571f, _wgslsmith_f_op_f32(-var_2.c))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.a.x))), 1f))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32, arg_3: vec4<f32>) -> u32 {
    var var_0 = arg_1;
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, -908f, 161f, -1566f))), vec4<f32>(arg_3.x, 557f, _wgslsmith_f_op_f32(1008f * -2523f), _wgslsmith_f_op_f32(-var_0.c))) + var_0.a), ~min(-var_0.b, arg_1.b >> (vec2<u32>(1u, arg_2) % vec2<u32>(32u))) << (~vec2<u32>(48844u, ~1u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(floor(var_0.c)), countOneBits(3868i));
    var var_1 = arg_1;
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.c, 189f, -1182f, 468f))), _wgslsmith_f_op_vec4_f32(exp2(arg_1.a)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-arg_1.a)))), select(vec2<i32>(u_input.b.x, var_1.b.x), u_input.c, select(vec2<bool>(true, true), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, false), false), false), all(vec2<bool>(true, true)))), -142f, min(-35382i, -12488i));
    var var_2 = ~vec2<i32>(_wgslsmith_div_i32(-26027i, max(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, 2147483647i, var_0.d, global0.b.x), vec4<i32>(var_1.d, var_0.d, 1969i, arg_1.b.x)), countOneBits(-1i))), ~(_wgslsmith_sub_i32(u_input.c.x, u_input.e.x) << (66359u % 32u)));
    return abs(firstTrailingBit(_wgslsmith_sub_u32(u_input.a, countOneBits(u_input.a))));
}

fn func_2(arg_0: bool, arg_1: u32) -> Struct_1 {
    let var_0 = global0.b.x;
    let var_1 = global0.a.x;
    var var_2 = firstTrailingBit(abs(~abs(vec2<u32>(1u, 1u))));
    var var_3 = _wgslsmith_mult_u32(func_4(~(-u_input.c), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(2147483647i)) - _wgslsmith_div_vec4_f32(vec4<f32>(global0.c, global0.a.x, 1038f, global0.c), global0.a)), countOneBits(u_input.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1174f)) - _wgslsmith_f_op_f32(floor(103f))), ~abs(u_input.e.x)), 64969u, _wgslsmith_f_op_vec4_f32(vec4<f32>(739f, -902f, global0.c, -1746f) * _wgslsmith_f_op_vec4_f32(-global0.a))), ~1u);
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-global0.a))))), global0.b, _wgslsmith_f_op_f32(func_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x * -104f) - -2306f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.a.x - 933f)))), Struct_1(global0.a, _wgslsmith_mod_vec2_i32(~u_input.c, firstTrailingBit(global0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.c, global0.a.x))), ~u_input.c.x), vec4<u32>(var_2.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 98689u), vec2<u32>(var_2.x, 1u)), vec2<u32>(arg_1, var_2.x)), max(60038u, 4294967295u), countOneBits(abs(50337u))), Struct_1(global0.a, _wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.d, 1i), ~vec2<i32>(global0.b.x, 1i)), _wgslsmith_f_op_f32(func_1(global0.a.yx, Struct_1(global0.a, global0.b, 681f, global0.b.x), vec4<u32>(1u, u_input.a, 1u, arg_1), Struct_1(global0.a, vec2<i32>(-34364i, global0.b.x), global0.c, -2147483647i))), ~_wgslsmith_clamp_i32(global0.d, -9230i, u_input.d)))), _wgslsmith_mult_i32(abs(-1i), -abs(-18534i) << (~_wgslsmith_div_u32(u_input.a, 4294967295u) % 32u)));
    return Struct_1(global0.a, -firstTrailingBit(vec2<i32>(global0.b.x, u_input.b.x)), _wgslsmith_f_op_f32(max(global0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1910f - -558f), _wgslsmith_f_op_f32(ceil(205f)))), _wgslsmith_f_op_f32(-656f - _wgslsmith_f_op_f32(-global0.a.x))))), _wgslsmith_dot_vec4_i32((countOneBits(u_input.e) ^ ~vec4<i32>(var_4.b.x, var_4.b.x, u_input.e.x, u_input.c.x)) << (vec4<u32>(abs(u_input.a), min(arg_1, u_input.a), reverseBits(8305u), 0u) % vec4<u32>(32u)), vec4<i32>(~(u_input.d >> (1u % 32u)), _wgslsmith_mod_i32(-44460i, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.d, u_input.c.x), u_input.b)), -2147483647i, global0.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a <= (u_input.a & u_input.a);
    let var_1 = func_2(any(vec3<bool>((global0.a.x < global0.a.x) || true, _wgslsmith_f_op_f32(func_1(global0.a.zy, Struct_1(vec4<f32>(global0.a.x, 530f, -1000f, global0.c), global0.b, 837f, u_input.c.x), vec4<u32>(4294967295u, 8618u, 0u, u_input.a), Struct_1(vec4<f32>(global0.a.x, 785f, global0.a.x, 1592f), u_input.c, -941f, global0.b.x))) <= -1868f, true)), max(_wgslsmith_add_u32(u_input.a, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, 77782u), vec4<u32>(u_input.a, u_input.a, 22963u, u_input.a)), vec4<u32>(0u, 24461u, 0u, 31359u))), ~reverseBits(_wgslsmith_sub_u32(u_input.a, u_input.a))));
    var var_2 = ~var_1.d;
    global0 = var_1;
    var var_3 = var_1;
    let var_4 = -1000f;
    let var_5 = ~abs(0i);
    var var_6 = abs(var_3.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_3.a - var_1.a))))));
}

