struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_2,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, false);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: f32, arg_1: u32) -> vec4<bool> {
    let var_0 = Struct_1(global0.x, min(-2147483647i, u_input.b.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-703f, arg_0, arg_0, arg_0) * vec4<f32>(arg_0, arg_0, -1000f, arg_0))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -1211f, 2228f, arg_0) + vec4<f32>(arg_0, arg_0, arg_0, 548f)))))));
    var var_2 = ~(1i | countOneBits(~var_0.b));
    var var_3 = reverseBits(_wgslsmith_mult_vec2_u32(firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 10579u), vec2<u32>(arg_1, 33052u))) & vec2<u32>(max(51140u, 1u), 4294967295u), ~_wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(95238u, 28548u)), select(vec2<u32>(4978u, arg_1), vec2<u32>(1u, 51010u), global0.xz))));
    let var_4 = countOneBits(~abs(firstTrailingBit(vec2<i32>(var_0.b, 0i))));
    return select(!(!(!select(vec4<bool>(false, var_0.a, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, false), true))), select(!vec4<bool>(true, false, true, global0.x), vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, global0.x))), all(!vec4<bool>(false, global0.x, global0.x, false)), true, any(vec3<bool>(var_0.a, var_0.a, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(478f))) >= var_1.x), true);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: f32) -> vec4<bool> {
    let var_0 = ~u_input.a;
    global0 = func_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-799f))), _wgslsmith_f_op_f32(arg_2 * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), 925f)))), 4294967295u);
    var var_1 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_2 = -2319i;
    var var_3 = Struct_4(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x))), Struct_2(Struct_1(true, _wgslsmith_mult_i32(2147483647i, arg_1.b ^ -2001i)), !vec2<bool>(arg_1.c.a.a, true), u_input.c.x, reverseBits(reverseBits(arg_1.c.d))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_0, arg_0, false))) - arg_0))));
    return func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_2))))) + _wgslsmith_f_op_f32(step(arg_2, _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, abs(~6192u), 1u), ~_wgslsmith_mult_vec3_u32(vec3<u32>(53650u, 0u, 0u), abs(vec3<u32>(u_input.a, 84608u, var_3.a.a)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_3) -> Struct_3 {
    global0 = vec4<bool>(true, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(787f))))), arg_3.a).x, arg_2.a, !(reverseBits(u_input.c.x | 1i) < (i32(-1i) * -29078i)));
    global0 = !vec4<bool>((-u_input.c.x >> (23884u % 32u)) != _wgslsmith_div_i32(~u_input.b.x, arg_3.b), all(select(!vec2<bool>(arg_2.a, true), func_2(vec2<f32>(618f, -2191f), arg_3, 954f).xw, false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_div_f32(975f, 1694f)) >= 1f, false);
    global0 = arg_0;
    return Struct_3(4294967295u, _wgslsmith_div_i32(1i, -u_input.c.x), Struct_2(Struct_1(false, _wgslsmith_div_i32(countOneBits(arg_3.c.d.x), _wgslsmith_div_i32(4001i, u_input.b.x))), vec2<bool>(arg_0.x, arg_2.a != false), -_wgslsmith_sub_i32(2147483647i & arg_2.b, abs(arg_2.b)), _wgslsmith_add_vec2_i32(~(~arg_3.c.d), arg_3.c.d)));
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: f32) -> Struct_3 {
    var var_0 = global0.zww;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -466f), arg_0.d.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x))), arg_0.d.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 + arg_0.b), _wgslsmith_f_op_f32(max(1332f, arg_0.d.x))), -659f), arg_2) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f * arg_0.d.x), arg_2, arg_0.b, arg_0.b)));
    var var_2 = 1u;
    let var_3 = Struct_4(func_4(select(!func_2(vec2<f32>(arg_2, arg_0.d.x), arg_0.a, -689f), vec4<bool>(true & global0.x, false, !global0.x, arg_0.a.a <= 1u), func_3(-1368f, arg_0.a.a)), any(select(global0.wxy, vec3<bool>(true, false, var_0.x), !global0.x)), arg_0.c.a, Struct_3(firstTrailingBit(firstLeadingBit(arg_0.a.a)), _wgslsmith_mult_i32(arg_1, 16209i) | -2147483647i, Struct_2(Struct_1(false, 2147483647i), select(arg_0.a.c.b, var_0.zz, global0.zz), countOneBits(arg_1), u_input.b.yx))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1038f + 198f), _wgslsmith_f_op_f32(-arg_2))))), arg_0.a.c, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_0.d), vec2<f32>(arg_2, arg_2), false)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, 341f) * arg_0.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.x, arg_0.b)), select(global0.xz, var_0.yz, var_0.x))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, 496f, 1000f, -714f) - vec4<f32>(arg_0.b, var_3.b, -1000f, arg_2)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(2355f, _wgslsmith_f_op_f32(round(153f)), _wgslsmith_f_op_f32(f32(-1f) * -1085f), 1480f))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1082f, var_3.d.x, arg_2, 540f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -1145f, 341f, var_3.b))))));
    return func_4(!func_2(_wgslsmith_f_op_vec2_f32(abs(var_3.d)), Struct_3(_wgslsmith_mod_u32(0u, 4294967295u), -22530i, func_4(vec4<bool>(var_0.x, false, false, false), var_3.c.a.a, var_3.c.a, Struct_3(arg_0.a.a, arg_1, Struct_2(arg_0.c.a, vec2<bool>(false, false), u_input.b.x, u_input.b.zx))).c), arg_2), arg_0.c.a.a, var_3.c.a, arg_0.a);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3) -> bool {
    var var_0 = !all(vec3<bool>(false, false, true));
    let var_1 = !any(!(!(!vec4<bool>(arg_0.a, false, false, false))));
    var_0 = select(func_4(!vec4<bool>(true, false, !var_1, !arg_1.c.b.x), all(func_2(vec2<f32>(-145f, 756f), arg_1, 1000f).xx) && true, arg_0, arg_1).c.b.x, arg_0.a, global0.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(1200f, _wgslsmith_f_op_f32(1749f + _wgslsmith_f_op_f32(select(795f, 1176f, arg_1.c.b.x))), true)), _wgslsmith_f_op_f32(floor(-1000f))));
    global0 = vec4<bool>(select(!(func_3(2698f, arg_1.a).x && false), select(-1308f == var_2.x, any(vec2<bool>(true, true)), any(vec4<bool>(arg_0.a, true, false, false))), func_1(Struct_4(arg_1, var_2.x, func_1(Struct_4(Struct_3(arg_1.a, arg_1.b, arg_1.c), var_2.x, arg_1.c, vec2<f32>(var_2.x, 1000f)), arg_1.c.c, var_2.x).c, var_2), arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(304f - 163f) + _wgslsmith_f_op_f32(f32(-1f) * -180f))).c.a.a), (global0.x | (func_3(-1000f, u_input.a).x & var_1)) || !any(!global0.zxw), !(4294967295u <= u_input.a), !var_1);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.x;
    let var_1 = vec3<f32>(257f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(562f)) + _wgslsmith_f_op_f32(f32(-1f) * -1117f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1230f)) * _wgslsmith_f_op_f32(f32(-1f) * -135f)))) * -660f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(783f, -423f, func_5(Struct_1(global0.x, u_input.c.x), func_1(Struct_4(Struct_3(u_input.a, 0i, Struct_2(Struct_1(false, u_input.c.x), global0.zz, u_input.c.x, vec2<i32>(u_input.c.x, u_input.c.x))), -1593f, Struct_2(Struct_1(global0.x, u_input.b.x), global0.yx, u_input.c.x, u_input.c.xx), vec2<f32>(-1000f, 784f)), 1i, 474f)))), _wgslsmith_f_op_f32(trunc(1326f)))));
    let var_2 = Struct_1(any(!vec3<bool>(true, func_5(Struct_1(global0.x, 1i), Struct_3(78468u, u_input.c.x, Struct_2(Struct_1(true, 2147483647i), vec2<bool>(global0.x, global0.x), u_input.c.x, u_input.c.xx))), true)), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c.x, -1i, 27874i), -u_input.c), -24189i));
    var_0 = false;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-474f, _wgslsmith_f_op_f32(ceil(591f)), _wgslsmith_f_op_f32(f32(-1f) * -1330f), _wgslsmith_f_op_f32(1623f * var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-951f + _wgslsmith_f_op_f32(abs(var_3.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_3.x))))))), _wgslsmith_mult_vec4_i32(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, 22509i, var_2.b, -1i), vec4<i32>(-2147483647i, u_input.b.x, 14769i, -1i))) & vec4<i32>(-53094i & var_2.b, _wgslsmith_mod_i32(u_input.b.x, -66558i), -1i | var_2.b, _wgslsmith_clamp_i32(var_2.b, var_2.b, var_2.b)), _wgslsmith_sub_vec4_i32(vec4<i32>(~u_input.c.x, 0i, 1i, -19124i), _wgslsmith_div_vec4_i32(select(vec4<i32>(0i, 0i, 0i, var_2.b), vec4<i32>(0i, 0i, var_2.b, var_2.b), vec4<bool>(global0.x, true, global0.x, global0.x)), vec4<i32>(u_input.c.x, var_2.b, var_2.b, -53140i)))), ~vec3<u32>(u_input.a, firstLeadingBit(~11022u), min(u_input.a, ~4294967295u)), vec4<i32>(-2147483647i, -(~(-23290i) ^ var_2.b), u_input.b.x, _wgslsmith_div_i32(1i, var_2.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_1.x)))))));
}

