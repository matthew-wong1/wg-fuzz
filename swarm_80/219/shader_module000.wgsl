struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: Struct_1,
    d: vec4<u32>,
    e: u32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -572f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(875f, -1288f))), 151f))), vec4<i32>(_wgslsmith_clamp_i32(1i, _wgslsmith_div_i32(0i, 1i), -2147483647i) ^ (_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 77086i, 2147483647i, 1i), vec4<i32>(-1i, -47415i, 15687i, 0i)) << (~u_input.a.x % 32u)), -15341i, _wgslsmith_sub_i32(~1i, i32(-1i) * -5765i), max(1i, _wgslsmith_mod_i32(-40881i, 1i)) & _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), ~vec2<i32>(2147483647i, -20629i))), Struct_1(vec4<bool>(any(vec4<bool>(true, true, true, true)), true, any(vec4<bool>(true, true, true, true)), true), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-1707f, -1339f), vec2<f32>(1521f, -1256f))))), vec4<u32>(((u_input.a.x & u_input.a.x) << (~u_input.a.x % 32u)) >> (~abs(u_input.a.x) % 32u), _wgslsmith_clamp_u32(u_input.a.x | _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 1u ^ _wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(4294967295u, 27383u)), countOneBits(4294967295u)), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 33256u, u_input.a.x), u_input.a), 62153u), abs(u_input.a)), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), _wgslsmith_mod_u32(~(u_input.a.x | countOneBits(3420u)), ~(~(~u_input.a.x))));
    let var_1 = vec3<i32>(abs(1i), firstTrailingBit(var_0.b.x), ~(var_0.b.x >> ((var_0.e ^ countOneBits(var_0.e)) % 32u)));
    let var_2 = var_0.a;
    var var_3 = !vec2<bool>(all(!var_0.c.a.ywz), var_0.c.a.x == var_0.c.a.x);
    var var_4 = any(vec4<bool>(true, true, !select(false, false, true), true));
    return 13876u;
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_4((-vec4<i32>(-3753i, 21454i, -31546i, 0i) << (vec4<u32>(func_3(), abs(u_input.a.x), _wgslsmith_add_u32(u_input.a.x, 71373u), 1u) % vec4<u32>(32u))) ^ min(~max(vec4<i32>(1i, 2147483647i, 3145i, -1i), vec4<i32>(13077i, 1i, 2147483647i, -2147483647i)), vec4<i32>(~(-25645i), -5969i, -24405i, ~(-1i))));
    var var_1 = 0i;
    var_1 = countOneBits(-1i);
    let var_2 = Struct_2(Struct_1(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-152f, -1041f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(152f, 165f), vec2<f32>(-1000f, 513f))))))), select(_wgslsmith_mod_u32(1u, u_input.a.x), _wgslsmith_add_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<u32>(u_input.a.x, 0u, u_input.a.x, 21263u), vec4<u32>(u_input.a.x, 105177u, u_input.a.x, 1u))), true), Struct_1(vec4<bool>(false, !all(vec2<bool>(true, true)), true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2305f, 359f), vec2<f32>(-167f, -476f), false)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-3414f, -1837f), vec2<f32>(-1359f, 322f))), true)))));
    var var_3 = ~(-1i);
    return !vec3<bool>(!select(true, false, true) && var_2.c.a.x, all(var_2.c.a.yy), !(var_2.c.a.x & true));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: vec2<i32>) -> f32 {
    let var_0 = func_2();
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-654f * _wgslsmith_f_op_f32(max(964f, 469f))))))), 269f));
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-444f * -1205f), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-393f + var_1), var_1)))))));
    let var_3 = ~(~firstTrailingBit(countOneBits(_wgslsmith_clamp_i32(38650i, -5408i, -1i))));
    let var_4 = var_1;
    return _wgslsmith_f_op_f32(floor(var_4));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(-1312f, -1697f, -111f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1f, -1404f))), _wgslsmith_div_f32(-610f, _wgslsmith_f_op_f32(func_1(min(u_input.a.yz, u_input.a.yz), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.a.x, 4294967295u), u_input.a), reverseBits(vec2<i32>(2147483647i, -1i)))))));
    let var_1 = Struct_4(vec4<i32>(0i, -countOneBits(-1i), -9320i | _wgslsmith_dot_vec4_i32(-vec4<i32>(-4857i, 0i, -33225i, -78270i), abs(vec4<i32>(-2147483647i, 29362i, 15827i, -2147483647i))), _wgslsmith_dot_vec2_i32(min(firstLeadingBit(vec2<i32>(2147483647i, 1i)), reverseBits(vec2<i32>(-17796i, -1i))), -vec2<i32>(0i, 2147483647i))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -2110f, var_0.x, 864f), vec4<f32>(239f, -153f, var_0.x, var_0.x)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<f32>(var_0.x, var_0.x, 1035f, var_0.x)))))))));
    var var_2 = u_input.a;
    var var_3 = var_1.a.x;
    var var_4 = Struct_3(var_0.wyy, vec4<i32>(-1i) * -select(var_1.a, -vec4<i32>(var_1.a.x, -5987i, 1i, var_1.a.x), vec4<bool>(true, true, true, true)), Struct_1(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false))), _wgslsmith_f_op_vec2_f32(round(var_0.zy))), vec4<u32>(func_3(), u_input.a.x, abs(u_input.a.x), _wgslsmith_add_u32(u_input.a.x, _wgslsmith_mult_u32(0u, u_input.a.x))) | ~(~vec4<u32>(71512u, 4294967295u, u_input.a.x, u_input.a.x)), _wgslsmith_clamp_u32(~func_3(), var_2.x, 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

