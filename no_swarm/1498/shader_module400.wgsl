struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec2<f32>,
    d: vec2<f32>,
    e: Struct_3,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: f32) -> f32 {
    let var_0 = 15138u;
    let var_1 = Struct_1(all(vec3<bool>(true, true, true)) && true);
    let var_2 = arg_0;
    let var_3 = var_1;
    let var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, arg_1) * vec3<f32>(-1101f, -1939f, -1409f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1, arg_1, arg_1))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-387f, 640f, arg_1)), true)))), vec3<f32>(119f, _wgslsmith_f_op_f32(f32(-1f) * -2339f), _wgslsmith_f_op_f32(max(arg_1, -455f))));
    return 1475f;
}

fn func_2() -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(func_3(Struct_5(u_input.a), -210f));
    var var_1 = select(!all(vec3<bool>(true, any(vec2<bool>(false, true)), true)), select(any(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true))), any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true))) == true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false)))), true);
    let var_2 = false;
    let var_3 = !var_2 || any(select(select(!vec4<bool>(var_2, var_2, var_2, var_2), !vec4<bool>(false, true, var_2, true), var_2), vec4<bool>(true, false | var_2, var_2, true), var_2));
    var var_4 = max(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-2147483647i, ~(i32(-1i) * -1i)), 1i), 2147483647i);
    return min(~(~(vec3<i32>(-2147483647i, -29831i, -2147483647i) >> (vec3<u32>(0u, u_input.a, 1u) % vec3<u32>(32u)))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 53313i, -163i, 51450i), ~vec4<i32>(0i, -38515i, 2147483647i, 8295i)), -2147483647i, _wgslsmith_div_i32(-39229i, 1i))) << (vec3<u32>(u_input.a, u_input.a, 1451u) % vec3<u32>(32u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_5, arg_2: vec3<i32>) -> u32 {
    var var_0 = 68917u;
    var_0 = ~4294967295u;
    var var_1 = i32(-1i) * -1i;
    var_0 = 42818u;
    var_1 = -_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-2147483647i, -9514i), select(vec2<i32>(arg_2.x, -24081i), max(vec2<i32>(arg_2.x, 50638i), arg_2.zz), select(vec2<bool>(true, arg_0.c.a), vec2<bool>(false, arg_0.c.a), vec2<bool>(true, arg_0.c.a))) & firstTrailingBit(vec2<i32>(6040i, 34808i)));
    return u_input.a;
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-559f * -326f), _wgslsmith_f_op_f32(f32(-1f) * -620f), -436f, _wgslsmith_f_op_f32(133f * 1405f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-503f, -467f, -1770f, 1000f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, -1192f, 1205f, 362f))))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-659f, 766f, -1050f, -1671f)))))));
    let var_1 = _wgslsmith_div_vec3_f32(var_0.zwx, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 405f)), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -369f)));
    var var_2 = vec3<u32>(u_input.a, u_input.a, ~(~func_4(Struct_2(vec4<f32>(-227f, -114f, -712f, -750f), vec4<u32>(u_input.a, u_input.a, 3575u, 56333u), Struct_1(true)), Struct_5(0u), func_2())));
    let var_3 = true;
    let var_4 = Struct_5(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(22777u, var_2.x, var_2.x), vec3<u32>(u_input.a, var_2.x, var_2.x) & vec3<u32>(u_input.a, 46447u, 49686u)) | _wgslsmith_div_vec3_u32(vec3<u32>(var_2.x, var_2.x, var_2.x), firstTrailingBit(vec3<u32>(4294967295u, var_2.x, u_input.a))), ~vec3<u32>(var_2.x, 4294967295u, u_input.a) ^ _wgslsmith_sub_vec3_u32(~vec3<u32>(15833u, var_2.x, 4294967295u), vec3<u32>(var_2.x, 0u, 66978u))));
    return _wgslsmith_clamp_i32(37494i, -abs(~(1i << (var_2.x % 32u))), _wgslsmith_dot_vec3_i32(-vec3<i32>(_wgslsmith_clamp_i32(-48698i, 27904i, 2147483647i), _wgslsmith_div_i32(-2147483647i, -1i), ~1i), -_wgslsmith_div_vec3_i32(select(vec3<i32>(-17588i, -2147483647i, 2147483647i), vec3<i32>(0i, -2147483647i, 1i), vec3<bool>(var_3, var_3, var_3)), vec3<i32>(1i, 1i, 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_4(1063f, true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1307f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(649f, -991f)))))), vec2<f32>(1f, 1f), Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -602f, 2494f, -1593f)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(u_input.a, u_input.a)), u_input.a, u_input.a, u_input.a >> (u_input.a % 32u)), Struct_1(any(vec4<bool>(false, true, true, true)))), ~max(min(vec3<u32>(u_input.a, 39978u, u_input.a), vec3<u32>(0u, 0u, u_input.a)), ~vec3<u32>(u_input.a, 4294967295u, 0u)), Struct_1(_wgslsmith_f_op_f32(floor(-1556f)) >= _wgslsmith_f_op_f32(f32(-1f) * -629f))));
    var var_2 = var_0;
    var_2 = abs(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-var_0, i32(-1i) * -1i, 1i, countOneBits(var_0)), vec4<i32>(firstLeadingBit(var_0), firstTrailingBit(1i), 0i, 2147483647i)), min(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0, 5334i, var_0), vec4<i32>(-37838i, 22872i, var_0, var_0)) & -6519i, countOneBits(_wgslsmith_add_i32(var_0, 5766i)))));
    var_2 = _wgslsmith_add_i32(var_0, abs(var_0));
    let var_3 = Struct_5(_wgslsmith_sub_u32(_wgslsmith_mod_u32(4953u, countOneBits(var_1.e.a.b.x)), 0u));
    var var_4 = var_1.e.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_4.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1676f * var_1.a) - 648f) + var_1.c.x)), 0i, -_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0, -2147483647i), vec2<i32>(var_0, -5170i)), var_0, func_2().x), ~(~vec4<i32>(var_0, var_0, var_0, -1i))), 20665u);
}

