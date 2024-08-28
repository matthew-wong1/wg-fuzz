struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = vec3<bool>(true, true, ~u_input.c.x <= -(-61953i & ~u_input.e));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-266f, -1896f, false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1677f), 487f)));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(607f * 1369f)))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(861f)) - -1000f);
    var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-469f))));
    return 606f;
}

fn func_2() -> Struct_3 {
    let var_0 = u_input.b;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2640f + -1134f), -664f))), -1782f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(565f - -711f) * 1029f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-574f * -910f), _wgslsmith_f_op_f32(1000f * 1000f))))), -769f);
    let var_2 = Struct_1(vec2<u32>(reverseBits(_wgslsmith_mult_u32(u_input.d.x, u_input.d.x) | _wgslsmith_dot_vec2_u32(u_input.d, u_input.d)), _wgslsmith_mod_u32(~(~4294967295u), ~u_input.d.x | u_input.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1650f) * var_1.x), _wgslsmith_mod_u32(1u, u_input.d.x), var_1.x, 5776i);
    var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.d, var_2.d, var_2.b)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_2.b), vec3<f32>(799f, -392f, var_2.b)))))), vec3<f32>(var_2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-754f, _wgslsmith_f_op_f32(floor(var_2.d))))), 1f)));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1277f, 610f, -167f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1552f, 2017f, var_2.b) - vec3<f32>(var_1.x, var_2.b, var_2.b)))))) * vec3<f32>(1272f, _wgslsmith_f_op_f32(abs(1f)), var_1.x));
    return Struct_3(Struct_1(var_2.a, _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(225f - var_2.d)))), max(var_2.a.x, abs(_wgslsmith_add_u32(4294967295u, var_2.c))), -1462f, ~(-_wgslsmith_mod_i32(-433i, u_input.c.x))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    var var_1 = ~1602u;
    let var_2 = var_0;
    let var_3 = Struct_2(func_2().a, var_0.a, var_0.a.a.x, vec4<f32>(var_2.a.d, var_2.a.b, -1281f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a.d, 138f, true))), 1022f)), !select(vec4<bool>(true, false, true, select(false, false, true)), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true)), true), 4294967295u <= ~u_input.d.x));
    let var_4 = var_3.e.wy;
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec4<i32>(~(u_input.b.x ^ 35049i), -1i, -u_input.c.x, u_input.b.x) & u_input.c;
    var var_1 = any(!select(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), false), vec4<bool>(false, true, true, true), false));
    var_0 = vec4<i32>(-1i) * -(~firstTrailingBit(-vec4<i32>(48374i, -1i, 15410i, u_input.a.x)));
    let var_2 = u_input.d.x;
    let var_3 = Struct_2(func_1(), Struct_1(~(~u_input.d & abs(u_input.d)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-798f, -1000f)))), -1710f), var_2, _wgslsmith_f_op_f32(-311f * 1772f), ~(-45216i | u_input.c.x)), _wgslsmith_mult_u32(~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(5517u, 26785u, u_input.d.x, u_input.d.x), vec4<u32>(93724u, 1u, 0u, 2748u)), u_input.d.x ^ 20449u), func_2().a.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(369f, 134f, -1715f, 534f) + vec4<f32>(-570f, -217f, -1791f, 2262f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-800f, -716f, -1179f, 165f))), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true))))), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-61766i, 21749i)), reverseBits(var_0.zz)) >= var_0.x));
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_5 = false;
    let var_6 = reverseBits(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_3.a.e | var_3.a.e, -22910i), select(u_input.a >> (var_3.a.a % vec2<u32>(32u)), vec2<i32>(24850i, 4761i), var_3.b.b > -135f), var_0.xy), -vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.b.e, 20218i, 1828i, 17361i), vec4<i32>(u_input.e, -19679i, var_0.x, -3594i)), 47540i | var_0.x)));
    var_0 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_3.d))), 1000f, ~vec4<u32>(_wgslsmith_mult_u32(~u_input.d.x, ~50155u), _wgslsmith_dot_vec3_u32(select(vec3<u32>(30959u, 0u, u_input.d.x), vec3<u32>(var_3.a.a.x, 22240u, u_input.d.x), var_3.e.zwy), select(vec3<u32>(u_input.d.x, 4294967295u, 1u), vec3<u32>(u_input.d.x, 90896u, var_3.c), var_3.e.wzz)), ~countOneBits(u_input.d.x), 1u), var_6.x);
}

