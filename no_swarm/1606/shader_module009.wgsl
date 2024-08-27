struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(1u, 1i, Struct_1(0i), Struct_1(-1i));

var<private> global1: f32 = -180f;

var<private> global2: vec3<u32> = vec3<u32>(14652u, 1u, 29552u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<f32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -278f)) - _wgslsmith_f_op_f32(min(1f, arg_0.x)))));
    var var_1 = reverseBits(abs(vec2<u32>(12060u, _wgslsmith_dot_vec4_u32(vec4<u32>(27382u, 21817u, 4294967295u, 4294967295u), ~vec4<u32>(global0.a, global0.a, 0u, global2.x)))));
    global2 = ~vec3<u32>(countOneBits(abs(96280u | global0.a)), global2.x, 26036u);
    let var_2 = vec4<bool>(any(vec2<bool>(26569u <= _wgslsmith_mult_u32(global0.a, 54049u), !select(true, true, false))), false & all(vec4<bool>(true, true, true, true)), !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)))), select(true, any(vec3<bool>(true, true, true)), true) & true);
    var var_3 = vec4<u32>(select(90373u, ~(~global2.x), true), ~countOneBits(~global0.a), global2.x, global2.x);
    return !vec3<bool>(var_2.x, true, !var_2.x);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> f32 {
    let var_0 = Struct_2(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(func_3(vec2<f32>(580f, -1411f)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false), true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)))), vec3<bool>(any(vec4<bool>(true, true, false, false)), false, any(vec3<bool>(true, true, true))), true));
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(585f - 1020f), _wgslsmith_div_f32(-775f, 1263f))))));
    global0 = Struct_3(global0.a, u_input.b, Struct_1(global0.b), Struct_1(arg_1.x));
    let var_1 = u_input.c.x;
    var var_2 = vec2<u32>(firstLeadingBit(abs(u_input.d)), global2.x);
    return _wgslsmith_f_op_f32(f32(-1f) * -379f);
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: u32) -> Struct_2 {
    let var_0 = any(select(select(select(select(vec4<bool>(true, arg_0, false, false), vec4<bool>(false, arg_0, true, true), vec4<bool>(arg_0, false, arg_0, arg_0)), vec4<bool>(false, false, true, arg_0), any(vec4<bool>(arg_0, arg_0, arg_0, arg_0))), !select(vec4<bool>(true, true, false, arg_0), vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, false, true)), select(vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, true, arg_0, false))), select(!(!vec4<bool>(false, arg_0, arg_0, arg_0)), vec4<bool>(!arg_0, arg_0, true, true), true), false));
    var var_1 = _wgslsmith_div_f32(-1898f, 188f);
    var var_2 = firstLeadingBit(~reverseBits(u_input.c.zz));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.x * -368f), _wgslsmith_div_f32(arg_1.x, arg_1.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - -601f)))) * _wgslsmith_f_op_f32(func_2(Struct_1(_wgslsmith_div_i32(~70264i, global0.c.a)), -vec2<i32>(var_2.x, global0.c.a))));
    let var_3 = arg_0 | all(select(vec2<bool>(arg_0 & arg_0, select(true, true, true)), vec2<bool>(var_0 && true, var_0), !vec2<bool>(var_0, false)));
    return Struct_2(!(!(!select(vec3<bool>(true, var_0, false), vec3<bool>(false, true, var_3), vec3<bool>(false, false, true)))));
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = vec4<bool>(arg_1.a.x & true, arg_1.a.x, func_1(true, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-742f, -1000f, 585f, 1118f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(562f, -294f, -1311f, 799f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1225f, 1204f, 322f, -329f), vec4<f32>(1445f, 270f, -1755f, 1595f))))))), select(global2.xx, abs(global2.yy & global2.zy), !func_1(false, vec4<f32>(-796f, 156f, 1000f, -853f), vec2<u32>(4294967295u, u_input.a), 8248u).a.xy), 4294967295u).a.x, !any(!select(arg_1.a.yx, vec2<bool>(true, arg_1.a.x), arg_1.a.yy)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1410f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1423f - _wgslsmith_f_op_f32(floor(-1109f)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-288f))) + _wgslsmith_f_op_f32(round(1530f))))));
    var var_2 = vec4<bool>(var_0.x, all(!arg_1.a) & (_wgslsmith_f_op_f32(-var_1.x) <= _wgslsmith_f_op_f32(1986f - _wgslsmith_f_op_f32(f32(-1f) * -358f))), true, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(var_1.x + 598f)), _wgslsmith_f_op_f32(round(262f)))) < 1539f);
    global0 = Struct_3(min(~abs(global2.x), 8106u) ^ _wgslsmith_add_u32(4294967295u, global2.x), 2147483647i, Struct_1(~min(global0.c.a, 0i)), Struct_1(-2147483647i));
    var var_3 = select(_wgslsmith_mult_vec4_i32(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.c.a, arg_0, 0i, arg_0) >> (vec4<u32>(global0.a, 79163u, 4294967295u, 25652u) % vec4<u32>(32u)), u_input.c, vec4<i32>(arg_0, arg_0, 1i, global0.c.a) ^ vec4<i32>(global0.c.a, arg_0, -9503i, 1872i))), vec4<i32>(u_input.b, arg_0, -7486i, global0.d.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(global0.c.a, global0.c.a, u_input.c.x), 2147483647i, -61737i, 1i) & (u_input.c | _wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(arg_0, global0.d.a, arg_0, 1i))), u_input.c), select(select(!select(vec4<bool>(var_2.x, true, arg_1.a.x, var_0.x), vec4<bool>(true, var_2.x, arg_1.a.x, false), vec4<bool>(var_2.x, false, var_2.x, var_0.x)), !(!vec4<bool>(false, false, var_0.x, true)), !var_2.x), select(vec4<bool>(arg_1.a.x, true, true, true), !(!vec4<bool>(arg_1.a.x, true, var_2.x, var_2.x)), true), true));
    return global0.d;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~reverseBits(vec3<u32>(~(~global2.x), _wgslsmith_sub_u32(61837u, ~4294967295u), _wgslsmith_mult_u32(~30378u, global0.a)));
    var var_0 = global0.c;
    let var_1 = Struct_3(1u, -2147483647i ^ u_input.b, func_4(42883i, func_1(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(398f, 567f, -1560f, -995f)) * vec4<f32>(267f, 1810f, 206f, -1040f)), ~(vec2<u32>(global0.a, global2.x) ^ global2.xz), ~u_input.a)), func_4(_wgslsmith_clamp_i32(-(i32(-1i) * -2147483647i), -1i, 0i >> (~global2.x % 32u)), func_1(false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-293f, -548f, 793f, -366f) + vec4<f32>(-1000f, 1231f, -1347f, 1036f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1355f, 1689f, -1000f, -360f)))), vec2<u32>(~u_input.a, ~global0.a), 86460u)));
    var var_2 = select(2837u, firstLeadingBit(67848u), all(func_1(true, vec4<f32>(-2333f, _wgslsmith_f_op_f32(-2468f - -619f), 1000f, -466f), ~select(vec2<u32>(79257u, global2.x), vec2<u32>(global2.x, global0.a), vec2<bool>(true, true)), select(_wgslsmith_mult_u32(41732u, global0.a), var_1.a, true)).a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(global0.a, global2.x | ~53881u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1351f)) - 502f), _wgslsmith_dot_vec3_i32(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, var_0.a, 2147483647i) << (vec3<u32>(global0.a, 0u, global2.x) % vec3<u32>(32u)), vec3<i32>(-17996i, -4283i, u_input.c.x), vec3<i32>(var_1.d.a, global0.b, 25157i))), -vec3<i32>(global0.b, -var_0.a, 29522i)), vec4<f32>(-662f, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(sign(-413f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -819f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-959f, _wgslsmith_f_op_f32(floor(487f))))));
}

