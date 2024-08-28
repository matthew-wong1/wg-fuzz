struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_1() -> f32 {
    var var_0 = firstLeadingBit(_wgslsmith_mult_vec4_i32(-select(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 36867i, 26639i, u_input.c.x), vec4<i32>(32707i, u_input.c.x, u_input.d, -93538i)), -vec4<i32>(-30802i, u_input.e, 19308i, 7468i), true), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, -17957i, -20530i, u_input.c.x), max(vec4<i32>(u_input.d, u_input.a, u_input.b.x, u_input.c.x) | vec4<i32>(u_input.a, u_input.d, -1i, u_input.d), vec4<i32>(u_input.e, -24262i, u_input.c.x, 40157i) ^ vec4<i32>(u_input.d, 4209i, u_input.b.x, u_input.e)))));
    var var_1 = -countOneBits(vec2<i32>(u_input.d, u_input.e));
    let var_2 = vec4<u32>(_wgslsmith_clamp_u32(4294967295u, 22483u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, 60294u), ~4294967295u | _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 52006u), vec3<u32>(0u, 122727u, 36573u)))), 4294967295u, 0u, ~_wgslsmith_div_u32(~1u, ~1u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2272f) + 123f))) - 607f) + -1000f);
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: i32) -> i32 {
    var var_0 = !(-1i == -(~u_input.a)) && !arg_0;
    var_0 = u_input.a > arg_2;
    let var_1 = _wgslsmith_div_vec3_i32(abs(u_input.c), _wgslsmith_mod_vec3_i32(vec3<i32>(~(arg_2 | 209i), _wgslsmith_dot_vec2_i32(u_input.b, _wgslsmith_add_vec2_i32(u_input.b, u_input.c.xx)), _wgslsmith_mod_i32(_wgslsmith_add_i32(-1i, arg_2), arg_2)), u_input.c & vec3<i32>(arg_2, u_input.e, abs(arg_2))));
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(329f, 342f, arg_1)) * -898f))), -1040f), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1299f, 1000f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1969f) - vec2<f32>(-862f, -304f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-832f, -696f))), true)))));
    var_0 = true;
    return 0i;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: i32) -> u32 {
    let var_0 = Struct_3(~55379u, arg_2, select(vec3<u32>(arg_1.a, arg_0.x, arg_1.a) ^ firstTrailingBit(vec3<u32>(4294967295u, 456u, 25446u)), ~(_wgslsmith_add_vec3_u32(vec3<u32>(29872u, arg_1.a, 39310u), vec3<u32>(0u, 0u, arg_1.a)) >> ((vec3<u32>(arg_1.a, 111118u, 30601u) & vec3<u32>(84976u, 1u, 19678u)) % vec3<u32>(32u))), true), vec3<bool>(!(!all(vec2<bool>(false, true))), true, true));
    let var_1 = Struct_1((!(0u == arg_0.x) & var_0.d.x) | (var_0.d.x & (all(var_0.d.xx) & true)), _wgslsmith_add_i32(_wgslsmith_clamp_i32(var_0.b, _wgslsmith_add_i32(1i, -2147483647i), ~(2147483647i << (arg_1.a % 32u))), i32(-1i) * -arg_2), vec2<f32>(_wgslsmith_f_op_f32(-408f - 1162f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -347f)) * -1374f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-697f)), _wgslsmith_f_op_f32(ceil(-1569f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-140f))), _wgslsmith_f_op_f32(-223f + _wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2504f * 673f) * _wgslsmith_div_f32(-1296f, -931f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-278f, -1000f, -908f, 1198f))), true)));
    let var_2 = -(~(~(~u_input.c.xx)));
    var var_3 = Struct_2(arg_1.a);
    let var_4 = var_0.c;
    return var_4.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1());
    var var_1 = vec4<i32>(_wgslsmith_clamp_i32(~u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.b.x, -2147483647i, u_input.b.x), vec4<i32>(u_input.a, u_input.e, 2147483647i, u_input.a)), -u_input.a) & -1i, u_input.b.x, u_input.b.x, -func_2(any(vec4<bool>(false, true, false, true)), all(vec2<bool>(true, true)), _wgslsmith_dot_vec2_i32(min(u_input.b, vec2<i32>(u_input.a, u_input.c.x)), ~u_input.b)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-962f - _wgslsmith_f_op_f32(-1000f - 1f)));
    var_2 = 1154f;
    var var_3 = Struct_3(43230u, _wgslsmith_div_i32(-u_input.e, -_wgslsmith_dot_vec4_i32(-vec4<i32>(80955i, var_1.x, 2147483647i, 34887i), ~vec4<i32>(2147483647i, 2147483647i, -1i, 0i))), vec3<u32>(reverseBits(_wgslsmith_mult_u32(func_3(vec2<u32>(0u, 4294967295u), Struct_2(112555u), u_input.b.x), 52594u)), ~_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(14929u, 44451u)), vec2<u32>(0u, 17683u)), min(33188u, min(1u, ~4294967295u))), vec3<bool>(true, true, true));
    var_2 = var_0;
    var_1 = ~select(-(~vec4<i32>(21536i, u_input.d, u_input.c.x, 100458i) | vec4<i32>(u_input.a, -1i, -43657i, var_1.x)), max(max(vec4<i32>(var_3.b, var_1.x, -2147483647i, 1i) << (vec4<u32>(31712u, 0u, var_3.c.x, var_3.a) % vec4<u32>(32u)), ~vec4<i32>(29963i, 18234i, 1i, var_3.b)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_3.b, 38192i, var_3.b, var_3.b), vec4<i32>(u_input.c.x, var_1.x, 20273i, var_3.b) >> (vec4<u32>(var_3.a, var_3.a, var_3.c.x, 1u) % vec4<u32>(32u)))), !any(vec2<bool>(false, var_3.d.x)));
    let var_4 = firstTrailingBit(u_input.c) >> (~var_3.c % vec3<u32>(32u));
    var_3 = Struct_3(~(_wgslsmith_mult_u32(1u, min(var_3.a, var_3.c.x)) >> (select(~var_3.c.x, var_3.c.x, var_3.d.x) % 32u)), ~(~(-1i)), ~countOneBits(countOneBits(var_3.c)), select(vec3<bool>(select(false, !var_3.d.x, true), any(vec4<bool>(var_3.d.x, true, true, var_3.d.x)), all(vec2<bool>(var_3.d.x, true))), var_3.d, !select(select(vec3<bool>(false, true, false), var_3.d, vec3<bool>(var_3.d.x, var_3.d.x, var_3.d.x)), !vec3<bool>(var_3.d.x, var_3.d.x, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, vec2<u32>(var_3.c.x, 53142u << (countOneBits(var_3.a ^ var_3.c.x) % 32u)));
}

