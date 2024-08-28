struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec2<bool>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_1(~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(61904u, 0u, 4294967295u, 1u), vec4<u32>(0u, 44049u, u_input.a, u_input.a)), ~vec4<u32>(u_input.a, u_input.a, u_input.a, 27650u), vec4<u32>(u_input.a, 4294967295u, u_input.a, 0u) >> (vec4<u32>(u_input.a, 0u, 2244u, 1u) % vec4<u32>(32u))) >> (vec4<u32>(~98609u, _wgslsmith_clamp_u32(~u_input.a, u_input.a, _wgslsmith_mod_u32(42757u, 4294967295u)), u_input.a, 63882u) % vec4<u32>(32u)), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)), true), !(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)))), vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(772f, -1000f, -356f, 533f))))));
    let var_1 = Struct_1(_wgslsmith_add_vec4_u32(~var_0.a >> (var_0.a % vec4<u32>(32u)), ~abs(~vec4<u32>(4294967295u, 2165u, 4294967295u, var_0.a.x))), var_0.b, var_0.c, var_0.d);
    return firstLeadingBit(select(vec3<u32>(~(var_1.a.x ^ 4294967295u), 1u, _wgslsmith_add_u32(~91467u, 30209u)), var_1.a.zyz, select(var_0.c.x, all(var_0.c), false || var_0.c.x) & true));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: bool, arg_3: vec4<f32>) -> vec3<u32> {
    let var_0 = 641f;
    var var_1 = func_3();
    var var_2 = Struct_1(~(~countOneBits(firstTrailingBit(vec4<u32>(arg_1.x, 4294967295u, u_input.a, 4294967295u)))), !(!vec4<bool>(true, arg_2 || arg_2, !arg_2, true)), select(!select(vec2<bool>(true, true), !vec2<bool>(false, arg_2), true), !vec2<bool>(true, all(vec2<bool>(false, true))), false), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_3.x, 483f, arg_3.x, var_0), vec4<f32>(arg_3.x, -462f, arg_3.x, var_0)))), arg_3))));
    let var_3 = var_2.c.x;
    var var_4 = vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_div_i32(60148i, max(-1i, u_input.c.x)), ~arg_0.x, countOneBits(_wgslsmith_mod_i32(23249i, -19234i)), abs(_wgslsmith_dot_vec3_i32(arg_0, arg_0)));
    return _wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(~reverseBits(0u), ~u_input.a & max(4294967295u, 2090u), arg_1.x)), arg_1);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_1(abs(vec4<u32>(_wgslsmith_clamp_u32(~arg_1.x, _wgslsmith_mod_u32(u_input.a, arg_1.x), _wgslsmith_mult_u32(u_input.a, 71183u)), ~_wgslsmith_dot_vec2_u32(arg_1.yx, vec2<u32>(1u, arg_1.x)), ~1u, ~0u)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), false), all(vec4<bool>(false, true, true, true))), vec4<bool>(any(vec2<bool>(true, false)), any(vec4<bool>(true, false, true, true)), true, true)), vec4<bool>(false, true, true, true || (u_input.b <= 3192i)), true), select(select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), select(vec2<bool>(true, true), vec2<bool>(false, false), all(vec2<bool>(true, false))), !all(vec2<bool>(true, false))), vec2<bool>(false, false), all(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(false, false, true), true))), arg_0);
    let var_1 = abs(firstLeadingBit(~vec3<u32>(1u, var_0.a.x >> (1803u % 32u), var_0.a.x)));
    let var_2 = Struct_1(var_0.a, select(select(vec4<bool>(var_0.c.x | true, var_0.c.x || false, false, true), select(!var_0.b, select(var_0.b, vec4<bool>(false, var_0.b.x, var_0.c.x, false), var_0.b), var_0.c.x), all(var_0.c)), var_0.b, true), var_0.b.xz, vec4<f32>(_wgslsmith_f_op_f32(trunc(-1986f)), _wgslsmith_f_op_f32(trunc(566f)), arg_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-219f, var_0.d.x)), _wgslsmith_f_op_f32(floor(-1489f))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(var_2.d.x - 1000f), !var_2.b.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.x * 157f))), _wgslsmith_f_op_f32(round(var_0.d.x))));
    var var_4 = Struct_1(var_0.a, var_0.b, !vec2<bool>(var_2.b.x, var_0.b.x), vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(699f + 705f))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -203f)))));
    return var_2;
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: i32) -> Struct_1 {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -1006f, arg_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1569f, arg_0, 336f, -530f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, -1411f, -1715f, 548f), vec4<f32>(arg_0, -1000f, 855f, -282f)))), false))), ~func_2(vec3<i32>(-1i, ~(-2147483647i), -40381i), arg_1.xwz, false, vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -294f), _wgslsmith_f_op_f32(1348f + arg_0), -1182f)));
    let var_1 = ~(~(~abs(var_0.a.x)));
    let var_2 = select(~arg_1, ~_wgslsmith_div_vec4_u32(~(~vec4<u32>(u_input.a, u_input.a, 4294967295u, var_0.a.x)), ~vec4<u32>(arg_1.x, var_0.a.x, 129872u, var_0.a.x)), !(!select(var_0.b, vec4<bool>(false, false, var_0.b.x, var_0.b.x), var_0.b)));
    var var_3 = var_0;
    var_3 = func_4(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.d.x), var_3.d.x)), 1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(abs(arg_0)))), _wgslsmith_f_op_f32(round(arg_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(183f, -419f, var_3.d.x, arg_0), vec4<f32>(arg_0, arg_0, var_3.d.x, var_3.d.x)))))), var_3.a.wyx);
    return var_0;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    return Struct_1(arg_2, arg_1.b, arg_1.c, arg_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(1f, func_1(_wgslsmith_div_f32(-1607f, 1f), ~vec4<u32>(u_input.a, _wgslsmith_clamp_u32(u_input.a, 22010u, u_input.a), 18445u, 4294967295u), -1i), max(~(~vec4<u32>(u_input.a, 0u, u_input.a, u_input.a)), ~abs(vec4<u32>(63554u, 4294967295u, u_input.a, u_input.a))));
    var var_1 = func_5(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1195f, _wgslsmith_div_f32(-787f, 1522f)))), var_0.d.x)), Struct_1(~select(~var_0.a, ~var_0.a, vec4<bool>(var_0.b.x, var_0.b.x, var_0.c.x, true)), func_1(1309f, func_1(var_0.d.x, vec4<u32>(4294967295u, 7827u, 1u, 55248u), -5053i).a ^ ~vec4<u32>(u_input.a, 46834u, 48184u, 22617u), _wgslsmith_div_i32(u_input.b ^ 0i, max(-13815i, u_input.b))).b, var_0.c, var_0.d), ~(~_wgslsmith_mult_vec4_u32(var_0.a << (vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, 1484u) % vec4<u32>(32u)), ~vec4<u32>(u_input.a, 12881u, 0u, 80743u))));
    var_1 = var_0;
    var var_2 = firstLeadingBit(_wgslsmith_mod_u32(~(~1u), ~u_input.a));
    var var_3 = u_input.c.x;
    let var_4 = var_0;
    var var_5 = 1978f;
    let x = u_input.a;
    s_output = StorageBuffer(51104i, _wgslsmith_f_op_vec2_f32(abs(var_4.d.ww)), -845f);
}

