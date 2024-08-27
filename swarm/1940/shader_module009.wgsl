struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> Struct_4 {
    var var_0 = _wgslsmith_sub_u32(70174u, _wgslsmith_sub_u32(reverseBits(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 28547u, u_input.a.x), vec3<u32>(u_input.a.x, 0u, 4294967295u)), select(vec3<u32>(15581u, u_input.a.x, u_input.a.x), u_input.a, vec3<bool>(true, true, true)))), u_input.a.x));
    var var_1 = min(-2147483647i, -u_input.b.x);
    let var_2 = vec2<bool>(true, all(!vec3<bool>(all(vec4<bool>(true, false, true, true)), true, true)));
    return Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(1622f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-343f, -183f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1391f)), _wgslsmith_f_op_f32(trunc(1389f))))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -470f) * 147f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))), 195f)), u_input.b.x);
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_clamp_i32(~0i, u_input.b.x, ~9286i), ~u_input.b.x);
    let var_1 = Struct_3(-(~vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.b.xwy, u_input.b.wzw), min(-9885i, var_0), u_input.b.x, _wgslsmith_clamp_i32(var_0, -1i, var_0))));
    var var_2 = vec4<u32>(u_input.a.x, ~abs(u_input.a.x), abs(~(~10308u)), 4294967295u);
    let var_3 = Struct_5(u_input.a.x, var_1, var_0 & 1i, 75926i);
    var var_4 = false;
    return !vec4<bool>(false, ~(~var_0) == min(~var_3.d, u_input.b.x), any(vec4<bool>(true, true, true, true)), true);
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: Struct_5) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))));
    var var_1 = arg_2.b.a.yz;
    var var_2 = !all(select(select(select(vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(false, false, true, true), true), vec4<bool>(false, arg_1, arg_0, arg_1), func_3()), vec4<bool>(!arg_1, arg_1 != arg_0, !arg_0, all(vec4<bool>(arg_0, true, false, true))), !func_3()));
    var_2 = true;
    var_1 = vec2<i32>(var_1.x, _wgslsmith_mult_i32(u_input.b.x, -_wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, 52970i), abs(var_1.x))));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1108f))));
    var var_2 = Struct_2(Struct_1(vec4<u32>(u_input.a.x, 12297u ^ u_input.a.x, 0u, ~func_2(false, true, Struct_5(4294967295u, Struct_3(u_input.b), u_input.b.x, 18756i))), 33481u, ~vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, 95582u), u_input.a.x << (4294967295u % 32u), u_input.a.x), 1899f, vec2<bool>(true, true)));
    var_2 = Struct_2(Struct_1(var_2.a.a, 49272u, vec4<u32>(_wgslsmith_mult_u32(52398u, u_input.a.x) >> (u_input.a.x % 32u), ~reverseBits(99497u), abs(1u) >> (abs(u_input.a.x) % 32u), u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.d, _wgslsmith_f_op_f32(var_1 * 1151f))), !var_2.a.e));
    var var_3 = Struct_1(firstTrailingBit(var_2.a.a), ~(~countOneBits(1u)), ~firstLeadingBit(~vec4<u32>(var_2.a.c.x, 68149u, 4294967295u, 30334u)) << (var_2.a.c % vec4<u32>(32u)), var_2.a.d, func_3().xy);
    var_3 = Struct_1(vec4<u32>(54460u, u_input.a.x, var_3.b, _wgslsmith_dot_vec2_u32(u_input.a.zx, max(var_2.a.c.yw, var_3.c.xw))) << ((var_2.a.c << (_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(4294967295u, u_input.a.x, 3897u, u_input.a.x)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, var_3.b, 14522u), var_2.a.a)) % vec4<u32>(32u))) % vec4<u32>(32u)), ~4294967295u, _wgslsmith_mult_vec4_u32(vec4<u32>(var_2.a.c.x, 1u, select(~51493u, firstLeadingBit(1u), !var_3.e.x), ~_wgslsmith_mult_u32(42090u, 23812u)), ~(vec4<u32>(u_input.a.x, 29661u, 1u, 4294967295u) >> (var_3.c % vec4<u32>(32u))) ^ vec4<u32>(0u, ~31299u, ~8936u, u_input.a.x)), var_1, var_3.e);
    let var_4 = -(~var_0.b);
    var var_5 = _wgslsmith_f_op_vec2_f32(var_0.a.xx * _wgslsmith_f_op_vec2_f32(-var_0.a.zx));
    var var_6 = firstTrailingBit(~17433u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-917f, var_2.a.d)))))), select(min(~select(u_input.b, vec4<i32>(u_input.b.x, 0i, 17031i, var_4), vec4<bool>(var_2.a.e.x, false, false, var_3.e.x)), ~firstLeadingBit(vec4<i32>(var_0.b, u_input.b.x, -25600i, u_input.b.x))), vec4<i32>(u_input.b.x, _wgslsmith_mod_i32(60850i, -var_0.b), _wgslsmith_clamp_i32(~u_input.b.x, 1i, -var_4), 2147483647i), var_2.a.e.x), abs(vec4<i32>(1i, -1i, 2147483647i, -1i)));
}

