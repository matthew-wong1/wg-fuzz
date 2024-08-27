struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
    d: f32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<i32> = vec3<i32>(-1i, i32(-2147483648), 0i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_2(Struct_1(!arg_1.a, abs(arg_3.b), arg_1.c, ~firstLeadingBit(arg_3.d ^ 59383i)), select(_wgslsmith_mult_vec2_u32(~firstLeadingBit(vec2<u32>(arg_3.c.x, 1u)), select(vec2<u32>(1869u, arg_3.c.x), arg_1.c.wx, vec2<bool>(true, arg_2.x)) ^ vec2<u32>(u_input.a.x, 1u)), abs(reverseBits(vec2<u32>(53173u, u_input.d.x))) & (~vec2<u32>(arg_3.c.x, 1u) | ~arg_1.c.yz), vec2<bool>(arg_0.a, _wgslsmith_sub_u32(arg_3.c.x, arg_1.c.x) <= countOneBits(1u))));
    var var_1 = -49179i;
    var var_2 = _wgslsmith_dot_vec2_u32(var_0.a.c.zw, _wgslsmith_mod_vec2_u32(~vec2<u32>(~arg_0.c.x, 1u), _wgslsmith_mult_vec2_u32(~vec2<u32>(arg_3.c.x, arg_0.c.x), ~firstTrailingBit(arg_1.c.zz))));
    let var_3 = _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1863f)))));
    global1 = arg_3.b.yxy;
    return 0u;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3) -> bool {
    let var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(~(~4294967295u), ~min(u_input.d.x, 1u)), firstLeadingBit(u_input.c), vec2<u32>(u_input.a.x, func_3(Struct_1(true, vec4<i32>(global1.x, global1.x, global1.x, global1.x), u_input.b, global1.x), Struct_1(true, vec4<i32>(global1.x, global1.x, global1.x, 22439i), u_input.b, -2147483647i), vec2<bool>(arg_0.x, arg_0.x), Struct_1(false, vec4<i32>(-27945i, global1.x, -1i, global1.x), u_input.b, 6804i))) ^ ~select(~u_input.a, firstLeadingBit(u_input.a), arg_0.x & true));
    var var_1 = 10371u;
    var_1 = abs(_wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_0.x, var_0.x, 23055u), u_input.b) | select(vec4<u32>(var_0.x, 4294967295u, var_0.x, 4294967295u), vec4<u32>(75878u, 30908u, var_0.x, u_input.b.x), vec4<bool>(false, false, arg_0.x, arg_0.x))) ^ var_0.x);
    var var_2 = ~u_input.a.x & var_0.x;
    var var_3 = u_input.b.zzz;
    return true & arg_0.x;
}

fn func_4(arg_0: bool, arg_1: vec4<bool>) -> bool {
    global1 = ~vec3<i32>(global1.x, ~(global1.x ^ select(global1.x, -1i, false)), 12151i);
    global1 = -vec3<i32>(firstLeadingBit(global1.x), -(~(-2147483647i | global1.x)), _wgslsmith_clamp_i32(-_wgslsmith_mult_i32(0i, 2147483647i), ~(-1i), _wgslsmith_sub_i32(~19747i, _wgslsmith_add_i32(1i, global1.x))));
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-614f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -193f))))));
    global0 = !arg_0 | any(arg_1.wxw);
    let var_1 = Struct_1(arg_0, _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(global1.x, global1.x, -1i, global1.x), vec4<i32>(-1i, 1i & (global1.x << (6866u % 32u)), _wgslsmith_clamp_i32(global1.x, 0i << (1u % 32u), -28054i), global1.x)), u_input.b, -43493i << (u_input.d.x % 32u));
    return arg_0;
}

fn func_1(arg_0: vec2<u32>) -> Struct_3 {
    let var_0 = vec4<i32>(_wgslsmith_div_i32(-2147483647i, -24523i), -global1.x >> (min(~(~32728u), ~arg_0.x) % 32u), global1.x, ~_wgslsmith_dot_vec4_i32(~(-vec4<i32>(-10685i, global1.x, 2147483647i, global1.x)), ~(~vec4<i32>(-1i, 8425i, -23667i, 1i))));
    var var_1 = _wgslsmith_f_op_f32(-555f - 105f);
    var var_2 = Struct_1(true == func_4(false, vec4<bool>(func_2(vec2<bool>(false, false), Struct_3(vec4<f32>(901f, 316f, -671f, -866f))), true, true, false)), vec4<i32>(var_0.x, ~(~(~global1.x)), max(_wgslsmith_mult_i32(var_0.x, _wgslsmith_dot_vec4_i32(var_0, var_0)), global1.x ^ -global1.x), var_0.x), firstTrailingBit(abs(~select(u_input.b, vec4<u32>(41372u, 4294967295u, 4959u, u_input.d.x), vec4<bool>(true, false, false, false)))), 25796i);
    global1 = var_0.yzy;
    var_2 = Struct_1(!var_2.a, _wgslsmith_mod_vec4_i32(-_wgslsmith_mod_vec4_i32(max(var_2.b, vec4<i32>(global1.x, -48658i, var_2.d, 87216i)), min(vec4<i32>(var_0.x, -5336i, global1.x, -2147483647i), vec4<i32>(-35484i, -31694i, -38592i, var_0.x))), var_0), var_2.c, -max(-2147483647i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.d, -2147483647i), vec2<i32>(-2147483647i, -33223i)), var_0.x)));
    return Struct_3(vec4<f32>(1000f, 1352f, 1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1226f - _wgslsmith_f_op_f32(f32(-1f) * -608f))))));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: vec4<u32>) -> vec3<i32> {
    var var_0 = true;
    var var_1 = vec3<bool>(-2263i < -abs(max(global1.x, -2147483647i)), !any(vec3<bool>(true, true, true)), !(arg_2.x == 4294967295u));
    let var_2 = var_1.x;
    let var_3 = u_input.b.zx;
    var var_4 = Struct_1(var_1.x, -abs(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, 54629i, 12881i, global1.x), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, global1.x, global1.x, -1i), vec4<i32>(2147483647i, -20241i, -2147483647i, global1.x)))), ~(vec4<u32>(arg_2.x >> (0u % 32u), ~u_input.d.x, ~u_input.a.x, _wgslsmith_mult_u32(u_input.b.x, 1u)) ^ arg_2), _wgslsmith_mult_i32(-28360i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, -2147483647i, ~global1.x), firstTrailingBit(vec4<i32>(0i, 27746i, -2147483647i, global1.x)) ^ min(vec4<i32>(global1.x, global1.x, global1.x, global1.x), vec4<i32>(global1.x, -1i, -35014i, global1.x)))));
    return vec3<i32>(var_4.d | var_4.b.x, (_wgslsmith_div_i32(~global1.x, global1.x) | 7959i) | -25603i, firstTrailingBit(global1.x));
}

fn func_6(arg_0: vec4<u32>, arg_1: vec3<i32>) -> vec3<bool> {
    var var_0 = _wgslsmith_dot_vec3_i32(arg_1, vec3<i32>(_wgslsmith_div_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(20019i, 2311i, arg_1.x, arg_1.x), vec4<i32>(arg_1.x, 0i, 2147483647i, 28454i)), 2147483647i), arg_1.x, global1.x));
    let var_1 = _wgslsmith_dot_vec2_u32(firstTrailingBit(arg_0.zw) >> (firstLeadingBit(reverseBits(~vec2<u32>(4294967295u, u_input.d.x))) % vec2<u32>(32u)), ~abs(~(u_input.c >> (vec2<u32>(arg_0.x, 35994u) % vec2<u32>(32u)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-778f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f * -177f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-848f)), -459f)), _wgslsmith_f_op_f32(floor(-1089f))));
    var_0 = global1.x;
    let var_3 = !(!(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))));
    return vec3<bool>(-38947i >= arg_1.x, !var_3.x, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1213f);
    let var_1 = all(func_6(~vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.c.x), 26331u, ~u_input.d.x, u_input.b.x), _wgslsmith_sub_vec3_i32(func_5(func_1(vec2<u32>(u_input.c.x, u_input.b.x)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(291f, var_0))), _wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(1u, u_input.b.x, 103631u, 51755u))), -vec3<i32>(global1.x, -14182i, global1.x))));
    global1 = firstLeadingBit(~(~(vec3<i32>(-57449i, global1.x, -2147483647i) & vec3<i32>(global1.x, global1.x, -1i)))) & _wgslsmith_mod_vec3_i32(max(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1935i, global1.x, -1i), vec3<i32>(global1.x, global1.x, global1.x)), vec3<i32>(global1.x, 0i, global1.x) << (vec3<u32>(4294967295u, u_input.b.x, 0u) % vec3<u32>(32u))), -vec3<i32>(2147483647i, 1i, global1.x) >> (_wgslsmith_add_vec3_u32(vec3<u32>(10905u, 39693u, 1u), vec3<u32>(u_input.b.x, u_input.a.x, 1u)) % vec3<u32>(32u))), abs(-firstTrailingBit(vec3<i32>(global1.x, global1.x, 18292i))));
    global0 = var_1;
    var var_2 = Struct_4(~(-(select(vec3<i32>(1i, global1.x, 1i), vec3<i32>(0i, 0i, global1.x), false) & -vec3<i32>(global1.x, -6570i, global1.x))), -1i << (~(~u_input.c.x) % 32u), Struct_1(var_1, vec4<i32>(_wgslsmith_sub_i32(16866i, firstLeadingBit(global1.x)), 1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, global1.x, global1.x, global1.x), ~vec4<i32>(-2147483647i, global1.x, -5756i, 0i)), 28078i), ~min(vec4<u32>(u_input.b.x, u_input.a.x, 4294967295u, 34446u) ^ vec4<u32>(u_input.a.x, u_input.a.x, 26729u, 1u), vec4<u32>(u_input.c.x, u_input.d.x, 23261u, 1u) >> (u_input.b % vec4<u32>(32u))), reverseBits(select(-2147483647i, 1i, true))), -170f, !vec3<bool>(any(vec3<bool>(false, false, var_1)), (u_input.d.x < u_input.e) & (u_input.a.x >= 4294967295u), func_4(false, vec4<bool>(var_1, var_1, var_1, var_1)) && true));
    global1 = _wgslsmith_sub_vec3_i32(abs(_wgslsmith_mod_vec3_i32(~func_5(Struct_3(vec4<f32>(var_0, var_2.d, 1703f, var_0)), vec2<f32>(1987f, var_0), vec4<u32>(var_2.c.c.x, u_input.a.x, 1u, 66585u)), select(var_2.c.b.zxy, max(var_2.a, vec3<i32>(global1.x, -27349i, -2147483647i)), var_2.e))), vec3<i32>(max(select(_wgslsmith_dot_vec2_i32(vec2<i32>(37305i, var_2.a.x), global1.xz), _wgslsmith_clamp_i32(-1i, 21883i, var_2.c.d), !var_1), _wgslsmith_add_i32(~var_2.c.b.x, -2147483647i)), global1.x, 1i));
    global1 = -vec3<i32>(var_2.c.d, abs(min(-1i, ~19668i)), ~abs(var_2.c.b.x));
    var_2 = Struct_4(~(~_wgslsmith_add_vec3_i32(var_2.c.b.yww, var_2.c.b.yzw) >> (vec3<u32>(4294967295u, u_input.a.x, ~0u) % vec3<u32>(32u))), 0i, var_2.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2378f - var_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0))), var_0), func_2(select(var_2.e.xy, vec2<bool>(var_2.c.a, true), true), func_1(_wgslsmith_add_vec2_u32(var_2.c.c.wx, u_input.a))))), select(select(select(var_2.e, !vec3<bool>(var_1, true, var_1), true), vec3<bool>(true, true, !var_1), var_2.e), vec3<bool>(select(false, func_6(vec4<u32>(0u, u_input.d.x, u_input.a.x, var_2.c.c.x), var_2.c.b.zwx).x, func_4(true, vec4<bool>(false, true, var_2.e.x, var_1))), !var_1, true), !any(vec3<bool>(true, var_1, false))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

