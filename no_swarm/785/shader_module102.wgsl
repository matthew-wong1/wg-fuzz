struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
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

var<private> global1: bool = true;

var<private> global2: vec3<i32> = vec3<i32>(-1i, -31631i, 1i);

var<private> global3: bool = true;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_2, arg_3: i32) -> vec4<bool> {
    global1 = !(!select(all(vec3<bool>(arg_2.a, arg_2.a, false)), arg_2.a, arg_2.a));
    var var_0 = vec3<u32>(4294967295u, 11820u, ~(u_input.c.x | max(u_input.c.x, 1u)));
    global3 = true;
    var var_1 = Struct_1(select(!vec4<bool>(arg_2.a & arg_2.a, !arg_2.a, arg_2.a, true), !vec4<bool>(!arg_2.a, true, select(arg_2.a, true, arg_2.a), arg_2.a), vec4<bool>(arg_1 >= _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, arg_1), vec3<i32>(u_input.d, -2147483647i, arg_3)), arg_2.a, all(select(vec4<bool>(false, false, true, arg_2.a), vec4<bool>(false, arg_2.a, arg_2.a, arg_2.a), vec4<bool>(arg_2.a, true, arg_2.a, arg_2.a))), !all(vec2<bool>(true, true)))));
    var var_2 = -firstLeadingBit(-min(vec3<i32>(4597i, -1i, arg_1), vec3<i32>(0i, -3768i, arg_3))) ^ vec3<i32>(-(~firstLeadingBit(1i)), arg_1, -u_input.b);
    return var_1.a;
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: vec3<bool>) -> Struct_3 {
    let var_0 = ~0u ^ select(abs(_wgslsmith_mult_u32(~u_input.a.x, select(0u, u_input.c.x, arg_2.x))), ~reverseBits(~u_input.c.x), false);
    var var_1 = Struct_3(Struct_2(all(select(arg_2, select(vec3<bool>(false, true, false), arg_2, arg_2), arg_2))), Struct_2(arg_0), Struct_2(!(all(vec3<bool>(true, true, arg_2.x)) & true)), Struct_1(func_3(vec2<f32>(_wgslsmith_f_op_f32(445f + -1884f), arg_1.x), global2.x & 0i, Struct_2(u_input.a.x <= 414u), u_input.d | _wgslsmith_mod_i32(u_input.b, 2147483647i))));
    let var_2 = Struct_3(var_1.a, var_1.c, var_1.b, Struct_1(!var_1.d.a));
    let var_3 = -1522f;
    global0 = false;
    return var_2;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_3) -> Struct_3 {
    let var_0 = min(~(-firstTrailingBit(firstLeadingBit(vec2<i32>(u_input.b, -1i)))), vec2<i32>(max(~0i, -2147483647i), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(arg_0.x, arg_0.x, -111i)), firstTrailingBit(-vec3<i32>(global2.x, arg_0.x, u_input.b)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(2102f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-249f, -416f, arg_2.c.a)))) * vec3<f32>(_wgslsmith_f_op_f32(abs(-553f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1973f)), _wgslsmith_f_op_f32(f32(-1f) * -1386f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1131f))))), 765f));
    global2 = -(~(select(vec3<i32>(339i, arg_0.x, -12345i), vec3<i32>(u_input.d, arg_0.x, var_0.x), arg_1.d.a.wzz) | -vec3<i32>(-47711i, -2147483647i, -41200i))) | max(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(-2147483647i, -14986i, -45950i)), ~vec3<i32>(-24101i, u_input.b, -26002i), vec3<i32>(arg_0.x, 42267i, u_input.b) << (u_input.c % vec3<u32>(32u))), vec3<i32>(0i, min(u_input.d, global2.x), 23591i)), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.x, 60687i, -32472i), vec3<i32>(u_input.b, arg_0.x, var_0.x)) ^ countOneBits(vec3<i32>(var_0.x, global2.x, 0i)), reverseBits(vec3<i32>(var_0.x, var_0.x, 31592i)) | _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.x, u_input.d, 7002i), vec3<i32>(-59720i, -9109i, var_0.x))));
    global0 = true;
    let var_2 = func_2(true, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -627f)))), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_1.x, -1060f)), _wgslsmith_f_op_f32(1126f + -1946f)))), vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(var_1.x + var_1.x)) != -1116f, arg_2.a.a, true)).a;
    return Struct_3(arg_2.a, func_2(false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(753f, -412f, 530f))), arg_1.d.a.wzz).b, func_2(!any(arg_2.d.a) | !(!var_2.a), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -584f))))), !func_2(var_2.a, vec3<f32>(-298f, -556f, -1000f), vec3<bool>(arg_1.a.a, false, false)).d.a.zxy).c, Struct_1(func_3(var_1.zz, abs(arg_0.x & -2147483647i), Struct_2(arg_1.d.a.x), max(global2.x & var_0.x, _wgslsmith_add_i32(arg_0.x, arg_0.x)))));
}

fn func_5(arg_0: Struct_3) -> vec3<bool> {
    global1 = any(vec4<bool>(arg_0.d.a.x, u_input.a.x > firstLeadingBit(1u), true, -1i >= u_input.b));
    var var_0 = arg_0.d;
    global2 = vec3<i32>(u_input.b, -2147483647i, 25547i);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, -824f, -248f), vec3<f32>(-1738f, 1344f, -1788f))) + vec3<f32>(-1006f, -1127f, 227f)) + vec3<f32>(_wgslsmith_f_op_f32(select(1656f, -790f, var_0.a.x)), _wgslsmith_div_f32(2051f, -330f), _wgslsmith_f_op_f32(f32(-1f) * -1089f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-1501f)), _wgslsmith_f_op_f32(round(539f)), _wgslsmith_f_op_f32(150f - 712f)))));
    global1 = false & !(true || arg_0.b.a);
    return !arg_0.d.a.zzw;
}

fn func_1(arg_0: vec4<u32>, arg_1: u32) -> Struct_3 {
    var var_0 = false | all(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)));
    let var_1 = Struct_2(all(vec4<bool>(true | select(true, false, true), false, true, true)));
    global0 = true;
    global1 = var_1.a;
    var_0 = all(func_5(func_4(select(vec2<i32>(-1i, -2147483647i), global2.yx, select(true, true, var_1.a)), func_2(!var_1.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -715f, 2169f)), select(vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(var_1.a, true, var_1.a), var_1.a)), Struct_3(Struct_2(true), Struct_2(false), func_2(var_1.a, vec3<f32>(217f, 577f, -657f), vec3<bool>(true, var_1.a, false)).c, Struct_1(vec4<bool>(var_1.a, true, var_1.a, true))))));
    return func_2(any(!func_3(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-425f, 408f))), 1i, func_2(true, vec3<f32>(803f, -319f, 1428f), vec3<bool>(var_1.a, var_1.a, var_1.a)).b, max(u_input.b, global2.x))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-523f, 331f, 1324f)), _wgslsmith_div_vec3_f32(vec3<f32>(-353f, 1400f, 1031f), vec3<f32>(2392f, 1112f, 396f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, -816f, -1776f)))), select(vec3<bool>(func_5(func_2(var_1.a, vec3<f32>(-414f, -295f, -363f), vec3<bool>(true, var_1.a, var_1.a))).x, all(!vec4<bool>(var_1.a, false, var_1.a, true)), any(!vec4<bool>(var_1.a, true, var_1.a, var_1.a))), select(!select(vec3<bool>(var_1.a, var_1.a, true), vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(var_1.a, var_1.a, var_1.a)), func_4(vec2<i32>(global2.x, u_input.d), Struct_3(var_1, var_1, var_1, Struct_1(vec4<bool>(true, false, var_1.a, true))), func_4(global2.zz, Struct_3(var_1, var_1, var_1, Struct_1(vec4<bool>(var_1.a, false, var_1.a, var_1.a))), Struct_3(Struct_2(var_1.a), Struct_2(var_1.a), Struct_2(true), Struct_1(vec4<bool>(true, true, true, var_1.a))))).d.a.wzx, vec3<bool>(true, all(vec4<bool>(var_1.a, false, false, false)), true)), !func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -2547f)), -global2.x, var_1, -2147483647i).xyz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d << (u_input.c.x % 32u);
    let var_1 = func_1(~countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.c.x, 61494u, u_input.c.x), vec4<u32>(u_input.a.x, 32715u, u_input.c.x, 8574u) >> (vec4<u32>(1u, 18724u, 1u, 29599u) % vec4<u32>(32u)))), ~_wgslsmith_mult_u32(~(~u_input.c.x), u_input.a.x));
    var var_2 = func_4(vec2<i32>(min(0i, 938i), -1i), var_1, Struct_3(var_1.b, func_2(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(677f, 1148f, 2086f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(148f, -1089f, 761f))), vec3<bool>(var_1.a.a, func_5(Struct_3(Struct_2(var_1.a.a), var_1.a, Struct_2(true), Struct_1(vec4<bool>(true, true, true, var_1.d.a.x)))).x, var_1.a.a)).c, Struct_2(any(var_1.d.a.xxy)), var_1.d)).b.a;
    var var_3 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -573f)) - -1000f) == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1131f)) + _wgslsmith_f_op_f32(f32(-1f) * -604f)))));
    var_3 = false;
    let var_4 = all(var_1.d.a.xzy);
    var var_5 = -866f;
    var_5 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-259f + _wgslsmith_f_op_f32(min(371f, -223f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(-1658f * -1466f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -653f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(_wgslsmith_add_u32(abs(1u), 0u), ~u_input.c.x));
}

