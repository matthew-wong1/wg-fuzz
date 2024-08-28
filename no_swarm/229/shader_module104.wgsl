struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_5 {
    a: vec2<u32>,
    b: bool,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), 2147483647i, 58050i, i32(-2147483648));

var<private> global1: Struct_2 = Struct_2(4294967295u, i32(-2147483648));

var<private> global2: Struct_4;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> vec4<i32> {
    global2 = Struct_4(global2.a, global2.b, global2.a);
    var var_0 = Struct_2(global1.a ^ _wgslsmith_mult_u32(min(~global2.c.a, ~global2.a.a), abs(_wgslsmith_dot_vec3_u32(global2.b.a, global2.b.a))), -55399i);
    var var_1 = min(64560u, reverseBits(global1.a));
    var_0 = Struct_2(abs(1u), -168i);
    var_0 = global2.c;
    return vec4<i32>(global0.x, -1i, global2.a.b, global2.a.b);
}

fn func_2(arg_0: i32) -> f32 {
    global1 = Struct_2(global2.c.a, 44373i);
    global2 = Struct_4(global2.c, global2.b, global2.c);
    let var_0 = all(vec4<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true)), true, true, true));
    var var_1 = Struct_3(select(_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a.x, global1.b, -60268i, 12932i)), ~vec4<i32>(47568i, global2.c.b, -38835i, global0.x)), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1437f + -1507f))), all(!vec2<bool>(var_0, var_0))), abs(global2.c.b), global2.c, Struct_2(~global1.a, max(38474i, -(i32(-1i) * -56968i))));
    global2 = Struct_4(Struct_2(4294967295u, countOneBits(9874i)), Struct_1(_wgslsmith_add_vec3_u32(~_wgslsmith_mod_vec3_u32(global2.b.a, vec3<u32>(global2.b.a.x, 19532u, global1.a)), vec3<u32>(_wgslsmith_div_u32(var_1.c.a, var_1.d.a), abs(4294967295u), 126584u)), _wgslsmith_dot_vec3_u32(~global2.b.a, firstLeadingBit(global2.b.a)) & ~0u), Struct_2(firstLeadingBit(select(var_1.c.a, _wgslsmith_add_u32(19159u, var_1.d.a), any(vec4<bool>(true, var_0, var_0, false)))), _wgslsmith_add_i32(_wgslsmith_clamp_i32(2147483647i, -21561i, global1.b), _wgslsmith_dot_vec3_i32(firstLeadingBit(global0.zwz), global0.xxx))));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1f))));
}

fn func_1() -> vec3<u32> {
    var var_0 = global0.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(global0.x)), 1f)));
    return vec3<u32>(_wgslsmith_dot_vec2_u32(global2.b.a.yy, vec2<u32>(global1.a, abs(10858u))), global2.b.b, countOneBits(15875u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(select(1025f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), !all(vec3<bool>(true, true, true))));
    global2 = Struct_4(Struct_2(reverseBits(countOneBits(global2.a.a)), ~firstTrailingBit(global1.b)), Struct_1(_wgslsmith_add_vec3_u32(~vec3<u32>(0u, global2.c.a, global1.a), _wgslsmith_mod_vec3_u32(func_1(), arg_0.a ^ arg_1.a)), ~_wgslsmith_div_u32(arg_1.a.x, 67196u)), global2.a);
    global1 = global2.c;
    global2 = Struct_4(global2.a, Struct_1(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(96297u, global2.a.a, arg_1.b), vec3<u32>(4294967295u, 41663u, global2.b.b)) ^ abs(arg_1.a), arg_0.a, vec3<u32>(~1u, _wgslsmith_mod_u32(global1.a, arg_1.b), ~global1.a)), select(global1.a, _wgslsmith_clamp_u32(~arg_1.b, _wgslsmith_add_u32(arg_1.a.x, arg_1.a.x), global2.b.a.x), select(true, global1.b != u_input.a.x, true))), global2.c);
    let var_1 = _wgslsmith_f_op_f32(sign(642f));
    return Struct_4(Struct_2(arg_0.b, global0.x), arg_0, global2.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~_wgslsmith_sub_vec4_i32(~vec4<i32>(global1.b, global2.c.b, -2147483647i, -2434i), -vec4<i32>(global1.b, global1.b, 1i, 15469i))) | -firstLeadingBit(_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(u_input.a.x, 21902i, global1.b, 7637i)), vec4<i32>(-37958i, -36314i, -23215i, -9208i), ~vec4<i32>(-1i, global0.x, u_input.a.x, u_input.a.x)));
    var var_0 = func_4(Struct_1(~func_1(), _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(1u, 0u, 40135u), global1.a)), Struct_1(global2.b.a, global2.b.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-409f)))))));
    var var_1 = Struct_3(min(~vec4<i32>(~49390i, global2.c.b << (global1.a % 32u), ~global2.a.b, _wgslsmith_mod_i32(20183i, global0.x)), min(select(vec4<i32>(global2.c.b, u_input.a.x, global2.c.b, var_0.c.b) & vec4<i32>(8344i, -5993i, global0.x, 2147483647i), reverseBits(vec4<i32>(-49007i, 1i, global1.b, global1.b)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), true)), vec4<i32>(global0.x, -1i, global2.c.b, 2147483647i) >> (vec4<u32>(43566u, global1.a, global1.a, 0u) % vec4<u32>(32u)))), func_4(func_4(Struct_1(firstTrailingBit(vec3<u32>(1u, 50591u, global1.a)), 113135u), global2.b, 1389f).b, var_0.b, 1f).c.b, var_0.a, var_0.c);
    var var_2 = var_1.d;
    var var_3 = Struct_5(~vec2<u32>(51422u, ~max(0u, global1.a)), true, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-637f + _wgslsmith_f_op_f32(func_2(11976i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -474f) * -1751f)), 1283f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-156f + 1037f) + 1f))), _wgslsmith_f_op_f32(select(377f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(global0.x)))), false))), 506f);
    var_0 = Struct_4(var_1.c, func_4(Struct_1(vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(global2.b.a.yz, vec2<u32>(var_1.d.a, var_1.c.a)), _wgslsmith_mod_u32(4294967295u, 29091u)), _wgslsmith_dot_vec3_u32(select(global2.b.a, var_0.b.a, vec3<bool>(var_3.b, var_3.b, false)), global2.b.a)), Struct_1(~var_0.b.a, var_1.c.a), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(227f)), 490f), -771f))).b, Struct_2(0u, _wgslsmith_clamp_i32(func_3(_wgslsmith_f_op_f32(step(-1170f, -1859f))).x, firstTrailingBit(_wgslsmith_mod_i32(global1.b, var_1.c.b)), max(~0i, global0.x))));
    var_1 = Struct_3(firstTrailingBit(vec4<i32>(~8269i, -27128i, var_0.a.b, ~(-31598i) << (reverseBits(var_3.a.x) % 32u))), _wgslsmith_dot_vec4_i32(var_1.a, vec4<i32>(-1i) * -(~vec4<i32>(global0.x, 2147483647i, -29093i, var_0.a.b))), func_4(Struct_1(~vec3<u32>(0u, var_0.b.b, 1u), 4294967295u), Struct_1(vec3<u32>(4294967295u, var_2.a >> (1u % 32u), 1u), ~(~0u)), _wgslsmith_f_op_f32(select(var_3.c.x, var_3.d, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.b.b, 51628u, var_0.a.a, var_0.b.a.x), vec4<u32>(global2.c.a, global2.a.a, 0u, 40261u)) <= 1u))).a, Struct_2(1u, 0i));
    let var_4 = Struct_5(_wgslsmith_mod_vec2_u32(vec2<u32>(global2.a.a, 22407u), vec2<u32>(global2.a.a, 41565u)) | (global2.b.a.zx | vec2<u32>(var_2.a, var_2.a)), false, _wgslsmith_f_op_vec4_f32(var_3.c + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -143f), _wgslsmith_f_op_f32(var_3.c.x + 1148f), -910f, _wgslsmith_f_op_f32(step(385f, 1000f))) + _wgslsmith_f_op_vec4_f32(exp2(var_3.c)))), var_3.d);
    let var_5 = var_4.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.d, -1466f, 1655f, -510f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5, var_5, var_3.d, 1000f))), _wgslsmith_f_op_vec4_f32(-var_4.c)))), var_3.c);
}

