struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: f32,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> f32 {
    let var_0 = -vec3<i32>(u_input.a, -_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d.x, 1i), vec2<i32>(u_input.d.x, u_input.a)), select(u_input.d.xy, vec2<i32>(0i, -33172i), vec2<bool>(true, true))), 44684i & u_input.a);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(441f))) - -1392f), -vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, -2147483647i, 0i, var_0.x), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, -35043i, var_0.x, var_0.x), vec4<i32>(-32857i, -2147483647i, -1i, u_input.c))), var_0.x), countOneBits(select(u_input.b << (_wgslsmith_mult_vec2_u32(vec2<u32>(50708u, u_input.e), vec2<u32>(u_input.e, u_input.e)) % vec2<u32>(32u)), -vec2<i32>(2147483647i, -15788i) & vec2<i32>(-2147483647i, var_0.x), vec2<bool>(false, var_0.x == var_0.x))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, 812f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.a))), true))), !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false)), any(vec3<bool>(false, false, false))), vec4<bool>(true, true, u_input.e < u_input.e, false), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), false)), Struct_1(var_1.a, min(u_input.b, vec2<i32>(u_input.c, -2147483647i) ^ var_0.zx) >> (vec2<u32>(~0u, u_input.e) % vec2<u32>(32u)), (vec2<i32>(-1i) * -var_1.c) & ~(u_input.b & var_0.xx)), u_input.e);
    var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))))), vec4<bool>(select(var_0.x, var_1.b.x, all(vec2<bool>(var_2.b.x, var_2.b.x))) == var_2.c.b.x, all(!(!var_2.b.wy)), true, !(!all(var_2.b))), Struct_1(461f, select(~(vec2<i32>(-13151i, var_0.x) & var_1.c), vec2<i32>(2147483647i >> (u_input.e % 32u), u_input.a), true), vec2<i32>(2147483647i, -2147483647i & var_0.x) ^ vec2<i32>(-var_2.c.c.x, -9549i)), _wgslsmith_mod_u32(u_input.e, _wgslsmith_dot_vec2_u32((vec2<u32>(u_input.e, 34955u) & vec2<u32>(13655u, var_2.d)) & vec2<u32>(u_input.e, var_2.d), _wgslsmith_add_vec2_u32(~vec2<u32>(0u, 8479u), abs(vec2<u32>(var_2.d, 1u))))));
    let var_3 = Struct_2(var_2.a, !(!(!(!vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, var_2.b.x)))), var_2.c, 4294967295u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-420f - _wgslsmith_f_op_f32(-var_1.a)));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: bool) -> Struct_2 {
    let var_0 = -76624i;
    let var_1 = arg_2;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1308f - 981f), _wgslsmith_div_f32(-1927f, 968f))), 1064f), any(vec2<bool>(true, true)))), vec2<i32>(-(~(~1i)), _wgslsmith_clamp_i32(u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(23443i, var_0, u_input.b.x, u_input.a), vec4<i32>(u_input.a, 1i, 0i, var_0)), abs(63628i)) >> (~(arg_0.x ^ u_input.e) % 32u)), _wgslsmith_clamp_vec2_i32(u_input.b, u_input.d.yz, u_input.d.xz));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(773f, var_2.a)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, 711f)) * vec2<f32>(-1062f, -356f)))), vec4<bool>(true, true, true, true), Struct_1(761f, vec2<i32>(var_0, -2147483647i), -(~select(vec2<i32>(26037i, -16622i), var_2.c, vec2<bool>(false, var_1)))), arg_1 ^ ~(~(~4294967295u)));
    var_3 = Struct_2(var_3.a, vec4<bool>(false, true, true & arg_2, any(!vec3<bool>(arg_2, false, arg_2))), Struct_1(_wgslsmith_f_op_f32(max(var_3.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1528f, var_3.c.a, false)), var_2.a)))), var_2.b, (vec2<i32>(u_input.a, -28607i) ^ vec2<i32>(2147483647i, var_2.c.x)) & vec2<i32>(_wgslsmith_add_i32(-19539i, 23827i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, 15889i, u_input.c), vec3<i32>(var_2.b.x, 2147483647i, var_0)))), _wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, 20775u), _wgslsmith_div_u32(var_3.d, ~(~36076u))));
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_3.a)))))), var_3.b, Struct_1(806f, -(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, var_3.c.b.x), vec2<i32>(var_0, var_0), vec2<i32>(-2147483647i, var_3.c.c.x)) | -vec2<i32>(6707i, var_3.c.c.x)), min(-vec2<i32>(32900i, u_input.b.x), var_2.b)), _wgslsmith_add_u32(arg_1 >> (u_input.e % 32u), arg_1));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: bool) -> vec2<f32> {
    let var_0 = arg_1.c.b;
    var var_1 = func_2(_wgslsmith_mod_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, u_input.e, 0u, arg_0.x), vec4<u32>(arg_0.x, arg_0.x, arg_1.d, 13402u)), arg_1.d), vec2<u32>(arg_0.x, arg_1.d)), 28785u, !all(vec4<bool>(arg_1.b.x, arg_2, arg_1.b.x, arg_2)) && all(vec2<bool>(!arg_2, any(arg_1.b)))).c;
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-456f * -759f)) - _wgslsmith_f_op_f32(func_3()))), var_0, min(reverseBits(countOneBits(~vec2<i32>(var_0.x, var_0.x))), ~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, -24471i), vec2<i32>(-33491i, var_1.b.x))));
    var var_2 = arg_1.c;
    var_1 = func_2(arg_0.xx, min(~min(~63050u, u_input.e), 33774u & ~arg_0.x), all(!(!vec3<bool>(false, arg_2, true)))).c;
    return vec2<f32>(arg_1.c.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(func_2(min(arg_0.xy, arg_0.xz), u_input.e, false).c.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) + func_2(arg_0.yy, arg_1.d, arg_2).a.x))))));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: bool) -> vec4<i32> {
    var var_0 = 33337u;
    var_0 = u_input.e;
    let var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(7102i, 1145i), -_wgslsmith_mod_vec2_i32(vec2<i32>(1i << (1u % 32u), 2147483647i), firstLeadingBit(-arg_0.c.c)));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, arg_0.c.a)) + _wgslsmith_f_op_vec2_f32(func_4(vec3<u32>(u_input.e, u_input.e, u_input.e) ^ vec3<u32>(4294967295u, u_input.e, 4294967295u), func_2(vec2<u32>(0u, 0u), arg_0.d, false), true))), vec2<f32>(arg_0.a.x, -2142f))), arg_0.b, arg_0.c, ~(~1u & max(select(14301u, 27080u, arg_0.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, arg_0.d, u_input.e, 90659u), vec4<u32>(11172u, arg_0.d, arg_0.d, arg_0.d)))));
    let var_3 = ~((abs(_wgslsmith_mod_i32(-2147483647i, -1i)) << (0u % 32u)) | _wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_mult_vec3_i32(u_input.d, vec3<i32>(15578i, -2147483647i, var_2.c.b.x))), firstTrailingBit(abs(u_input.d))));
    return countOneBits(-vec4<i32>(2350i, -2147483647i, var_2.c.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_1.x, arg_1.x, 44156i), vec4<i32>(25891i, -67556i, var_1.x, -51245i))) >> (_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(53911u, 4294967295u, var_2.d, arg_0.d), reverseBits(vec4<u32>(0u, 0u, arg_0.d, u_input.e))), ~vec4<u32>(4451u, 2383u, var_2.d, 1u)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -611f;
    let var_1 = ~(~18073u);
    var var_2 = _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(~(~u_input.d.yz), vec2<i32>(_wgslsmith_add_i32(u_input.c, 2147483647i), -15154i)) >> (select(~(vec2<u32>(138629u, u_input.e) & vec2<u32>(var_1, var_1)), vec2<u32>(var_1, 0u) ^ ~vec2<u32>(u_input.e, 1u), false) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(u_input.d.yz, (vec2<i32>(2147483647i, u_input.a) ^ u_input.d.xz) ^ _wgslsmith_add_vec2_i32(vec2<i32>(-1i, u_input.c), vec2<i32>(-46949i, u_input.b.x) ^ u_input.d.xz)));
    var_2 = ~u_input.b;
    var var_3 = all(vec3<bool>(!select(true, false, true), !any(vec3<bool>(false, false, true)), true & (~0u != (0u ^ u_input.e))));
    var_2 = ~countOneBits(vec2<i32>(max(u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_2.x), u_input.b)), min(select(-2147483647i, u_input.d.x, true), select(var_2.x, var_2.x, true))));
    let var_4 = 1232f;
    var var_5 = _wgslsmith_add_vec4_i32(~(min(~vec4<i32>(-2824i, 0i, var_2.x, -2147483647i), reverseBits(vec4<i32>(-44645i, u_input.a, -2147483647i, u_input.a))) ^ max(vec4<i32>(u_input.b.x, var_2.x, u_input.b.x, var_2.x), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, var_2.x, var_2.x, -21696i), vec4<i32>(12894i, var_2.x, 34683i, -6668i)))), _wgslsmith_mult_vec4_i32(max(-vec4<i32>(u_input.c, var_2.x, 0i, -2147483647i), func_1(Struct_2(vec2<f32>(-305f, var_4), vec4<bool>(false, true, false, true), Struct_1(var_4, vec2<i32>(var_2.x, 39071i), u_input.b), 31313u), _wgslsmith_mod_vec2_i32(u_input.d.yx, u_input.b), false)), ~vec4<i32>(u_input.c, var_2.x, _wgslsmith_add_i32(u_input.b.x, var_2.x), var_2.x)));
    let var_6 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4 - _wgslsmith_div_f32(298f, 221f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(537f)), _wgslsmith_f_op_f32(func_3()))), 111f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_4, -888f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_mult_u32(var_1, u_input.e), ~(~0u)), _wgslsmith_mult_u32(u_input.e, 0u) << ((_wgslsmith_dot_vec2_u32(min(vec2<u32>(1u, var_1), vec2<u32>(u_input.e, 7129u)), vec2<u32>(u_input.e, 32725u)) | var_1) % 32u), -vec2<i32>(var_2.x, firstLeadingBit(-var_2.x)), ~firstLeadingBit(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.e, u_input.e, u_input.e)), vec3<u32>(var_1, 0u, 40165u))), 113f);
}

