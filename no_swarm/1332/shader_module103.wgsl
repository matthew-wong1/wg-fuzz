struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: u32,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_1, 24>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    var var_0 = global0.x;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(693f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2127f)) + global0.x))));
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1420f, arg_0.x))), -2446f, _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(step(global0.x, -832f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -179f)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.x, arg_0.x))), _wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2309f)), _wgslsmith_f_op_f32(min(-1885f, _wgslsmith_f_op_f32(arg_0.x - 1274f)))))), all(vec3<bool>(true, true, true))));
    let var_1 = vec4<i32>(i32(-1i) * -_wgslsmith_div_i32(1i, 1i), -2147483647i, -2147483647i, _wgslsmith_mult_i32(~min(-37248i, select(u_input.c, 15930i, false)), -(i32(-1i) * -1458i) & u_input.d));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x + 1513f)))), -1111f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-477f, 704f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - 1059f))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(arg_0)) * vec4<f32>(1913f, 622f, arg_0.x, -1553f)))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(412f, _wgslsmith_f_op_f32(round(global0.x)), true)) + 669f) + _wgslsmith_f_op_f32(-957f * _wgslsmith_f_op_f32(step(-193f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))) + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), -329f, true))))));
}

fn func_2() -> i32 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(global0.x, 1533f), _wgslsmith_f_op_f32(func_3(vec4<f32>(global0.x, -449f, global0.x, global0.x))), _wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(ceil(global0.x)))))));
    let var_0 = !select(select(vec4<bool>(all(vec3<bool>(true, true, true)), any(vec2<bool>(false, true)), true, true), vec4<bool>(true, true, u_input.c != -1i, any(vec3<bool>(true, false, true))), any(vec3<bool>(true, true, true))), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(vec4<f32>(-1035f, global0.x, global0.x, 324f))), _wgslsmith_f_op_f32(-global0.x), 1361f, global0.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-142f, global0.x, global0.x, global0.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1579f, -373f, global0.x, global0.x) + vec4<f32>(-1386f, 444f, 232f, -357f))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1846f, -531f, 1000f, 1069f) - vec4<f32>(600f, global0.x, 175f, 369f))))))), var_0.x));
    return select(_wgslsmith_clamp_i32(-20651i, _wgslsmith_dot_vec2_i32(u_input.b.yz, reverseBits(vec2<i32>(0i, u_input.d))), -14651i), u_input.b.x, var_0.x);
}

fn func_1() -> vec4<u32> {
    var var_0 = Struct_2(reverseBits(_wgslsmith_clamp_vec2_i32(u_input.b.xz, firstTrailingBit(reverseBits(vec2<i32>(u_input.b.x, u_input.c))), _wgslsmith_mod_vec2_i32(vec2<i32>(74555i, -1i), -u_input.b.zx))), !all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false)))), _wgslsmith_div_u32(1u, u_input.a), global1[_wgslsmith_index_u32(1u, 24u)], true);
    var var_1 = Struct_2(_wgslsmith_mod_vec2_i32(-_wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.c, -1i), -vec2<i32>(u_input.c, var_0.a.x)), vec2<i32>(func_2(), -4219i)), true, 0u, Struct_1(-2657i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.d.c.x))), var_0.d.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_0.d.c))), ~(~vec3<u32>(var_0.d.d.x, 95229u, var_0.d.d.x)) >> ((vec3<u32>(u_input.e, var_0.c, 29798u) << ((vec3<u32>(4294967295u, 1u, u_input.e) >> (var_0.d.d % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u))), any(vec2<bool>(var_0.e && false, true)));
    var var_2 = 2147483647i;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-948f, 982f, _wgslsmith_f_op_f32(-var_1.d.c.x), var_0.d.b))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(910f, 1067f, -349f, global0.x)))))))) + vec4<f32>(_wgslsmith_f_op_f32(-638f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1922f))))), -656f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -840f) + _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(trunc(var_1.d.c.x)))), _wgslsmith_f_op_f32(-var_1.d.c.x)));
    return vec4<u32>(29701u >> (min(u_input.e >> (_wgslsmith_dot_vec3_u32(var_1.d.d, vec3<u32>(0u, var_1.c, 69496u)) % 32u), var_1.d.d.x) % 32u), _wgslsmith_dot_vec3_u32(max(~vec3<u32>(u_input.e, 0u, var_0.c), var_1.d.d), vec3<u32>(15565u, abs(u_input.a >> (u_input.e % 32u)), 1u)), 0u, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_vec2_f32(sign(global0.ww)));
    var var_1 = !all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !(u_input.c <= -2020i)));
    var var_2 = func_1();
    var var_3 = ~var_2.yw & _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a, ~var_2.x), var_2.xw, var_2.yz);
    var var_4 = global1[_wgslsmith_index_u32(var_2.x, 24u)];
    let x = u_input.a;
    s_output = StorageBuffer((~(~vec4<u32>(6957u, 15868u, var_4.d.x, 4294967295u)) | select(vec4<u32>(28150u, 0u, 60726u, u_input.e) | vec4<u32>(4294967295u, 0u, 0u, 4294967295u), func_1(), false)) >> (max(_wgslsmith_div_vec4_u32(vec4<u32>(7014u, 10223u, var_4.d.x, var_3.x), vec4<u32>(var_4.d.x, 4294967295u, 4294967295u, 109941u)), vec4<u32>(~56471u, var_2.x, 4294967295u, _wgslsmith_add_u32(var_2.x, 16908u))) % vec4<u32>(32u)), 27901u, vec3<u32>(_wgslsmith_mult_u32(1u, ~18553u >> (abs(var_2.x) % 32u)), 0u, firstTrailingBit(var_3.x)));
}

