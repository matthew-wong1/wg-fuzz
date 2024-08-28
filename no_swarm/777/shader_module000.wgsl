struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<i32>) -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 90889u, 84279u, 1954u) & vec4<u32>(87035u, u_input.b, 4806u, u_input.b), vec4<u32>(u_input.b, 14962u, 15904u, u_input.c) & vec4<u32>(1u, 63914u, 30700u, u_input.b), vec4<u32>(0u, u_input.b, u_input.c, 14567u) & vec4<u32>(u_input.c, u_input.c, 36168u, 26372u)), _wgslsmith_add_u32(~u_input.c, _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.b, 7216u), u_input.b, firstLeadingBit(u_input.b))), vec2<i32>(reverseBits(2147483647i), arg_0.x), max(reverseBits(vec4<i32>(1686i, arg_0.x, arg_0.x, arg_0.x)), vec4<i32>(-2147483647i, -arg_1.x, -arg_0.x, reverseBits(1i)))), ~73947u);
    let var_1 = Struct_2(Struct_1(abs(~abs(var_0.a.a)), 42487u, firstTrailingBit(abs(arg_0.zx)), ~var_0.a.d), 59866u);
    var_0 = Struct_2(Struct_1(~(vec4<u32>(0u, var_1.a.a.x, 1u, var_1.a.b) >> (vec4<u32>(39291u, 4294967295u, var_1.b, 0u) % vec4<u32>(32u))), ~16771u, -_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(arg_1.yw, arg_0.xx), vec2<i32>(19857i, 52666i)), arg_1), _wgslsmith_add_u32(var_1.a.a.x, ~42627u));
    var var_2 = ~(~(~_wgslsmith_clamp_u32(var_0.a.b << (0u % 32u), 25294u, ~1u)));
    let var_3 = Struct_1(reverseBits(countOneBits(abs(~vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b)))), _wgslsmith_dot_vec3_u32(vec3<u32>(~reverseBits(u_input.b), 0u, abs(~var_1.a.b)), min(_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, 78528u, var_0.a.a.x), var_1.a.a.zwy), reverseBits(~vec3<u32>(46163u, 36390u, var_0.a.a.x)))), vec2<i32>(_wgslsmith_clamp_i32(2434i, -30683i, _wgslsmith_add_i32(firstTrailingBit(arg_0.x), -1103i)), arg_1.x & (min(var_0.a.c.x, u_input.a) ^ (2147483647i ^ arg_1.x))), vec4<i32>(arg_1.x, ~(var_0.a.d.x ^ arg_0.x) ^ -57770i, u_input.a, _wgslsmith_div_i32(0i & var_0.a.d.x, _wgslsmith_dot_vec4_i32(var_1.a.d, firstTrailingBit(vec4<i32>(u_input.a, -2147483647i, arg_1.x, 954i))))));
    return vec4<bool>(true, true, true, true);
}

fn func_2() -> i32 {
    var var_0 = select(select(vec4<bool>(true, true, true, true), func_3(_wgslsmith_mod_vec4_i32(select(vec4<i32>(-8704i, u_input.a, 2147483647i, u_input.a), vec4<i32>(u_input.a, u_input.a, -3270i, u_input.a), vec4<bool>(true, true, false, false)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -763i, u_input.a, u_input.a), vec4<i32>(0i, u_input.a, 1511i, 2147483647i))), vec4<i32>(_wgslsmith_mod_i32(-1i, -4902i), -2147483647i << (u_input.b % 32u), u_input.a & u_input.a, u_input.a)), func_3(vec4<i32>(15111i, -1i, -39533i, u_input.a), vec4<i32>(u_input.a, u_input.a, 2147483647i, 2147483647i)).x & (true && any(vec4<bool>(false, false, false, true)))), vec4<bool>(func_3(-(~vec4<i32>(-2147483647i, u_input.a, u_input.a, -31737i)), vec4<i32>(0i, 1i, _wgslsmith_add_i32(2147483647i, u_input.a), u_input.a)).x, true == (~u_input.c <= 0u), reverseBits(_wgslsmith_mult_i32(u_input.a, u_input.a)) >= _wgslsmith_mod_i32(0i, 8986i), true), !(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), false))));
    let var_1 = vec3<i32>(u_input.a << (~1u % 32u), -44960i, _wgslsmith_sub_i32(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a & u_input.a, min(1i, 0i), u_input.a, abs(13984i)), (vec4<i32>(u_input.a, 59077i, -2147483647i, u_input.a) ^ vec4<i32>(u_input.a, -42522i, u_input.a, 2147483647i)) << (vec4<u32>(0u, 1u, u_input.c, u_input.b) % vec4<u32>(32u)))));
    let var_2 = Struct_3(Struct_1(countOneBits(~min(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, 4294967295u, u_input.c, 4294967295u))), _wgslsmith_clamp_u32(u_input.c, _wgslsmith_add_u32(min(5191u, 1u), ~u_input.c), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(48327u, u_input.b)), _wgslsmith_sub_u32(u_input.c, 36075u))), var_1.zy, -(vec4<i32>(var_1.x, 29242i, u_input.a, u_input.a) & vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a))));
    var_0 = vec4<bool>(!(!any(!var_0.wy)), true, var_0.x, false);
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1932f)) - _wgslsmith_f_op_f32(max(1392f, 503f))) * 1041f)), _wgslsmith_f_op_f32(trunc(1818f))));
    return u_input.a;
}

fn func_1(arg_0: f32) -> i32 {
    let var_0 = vec4<u32>(1u, u_input.c, ~min(4294967295u, u_input.b), ~1u >> (_wgslsmith_sub_u32(_wgslsmith_clamp_u32(abs(u_input.b), ~u_input.c, _wgslsmith_sub_u32(1u, u_input.b)), _wgslsmith_sub_u32(13067u << (u_input.b % 32u), abs(u_input.c))) % 32u));
    var var_1 = Struct_3(Struct_1(_wgslsmith_mult_vec4_u32(var_0, vec4<u32>(u_input.b, 46153u, u_input.b << (u_input.b % 32u), u_input.c << (u_input.b % 32u))), u_input.b, -(~(~vec2<i32>(-2147483647i, u_input.a))), max(vec4<i32>(~u_input.a, -u_input.a, u_input.a, u_input.a), _wgslsmith_mult_vec4_i32(vec4<i32>(72450i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, -2147483647i, 2147483647i, 1i)) ^ (vec4<i32>(-53198i, u_input.a, 1i, u_input.a) >> (var_0 % vec4<u32>(32u))))));
    var_1 = Struct_3(Struct_1(var_0, 0u, vec2<i32>((var_1.a.c.x ^ 12229i) << (0u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.d.x, 1i, var_1.a.d.x, var_1.a.c.x), -var_1.a.d)), min(vec4<i32>(u_input.a, func_2(), _wgslsmith_add_i32(var_1.a.c.x, -17717i), min(u_input.a, u_input.a)), var_1.a.d)));
    var_1 = Struct_3(var_1.a);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0 - arg_0), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(arg_0 + 435f)), arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(597f, 1399f, arg_0), vec3<f32>(-1726f, -297f, -295f)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, -530f, arg_0), vec3<f32>(-554f, -1167f, -386f))))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -400f, arg_0)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(224f, arg_0, 1994f)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, arg_0, -1416f)))))));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~countOneBits(_wgslsmith_mod_vec3_i32(~(-vec3<i32>(u_input.a, u_input.a, -1i)), vec3<i32>(func_1(-107f), ~(-2147483647i), _wgslsmith_div_i32(u_input.a, u_input.a))));
    var var_1 = Struct_1(select(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 1u, u_input.c, 4294967295u), vec4<u32>(10785u, u_input.b, 4294967295u, u_input.c), ~vec4<u32>(4294967295u, 0u, 1u, u_input.b)), vec4<u32>(~(~u_input.b), u_input.c, _wgslsmith_div_u32(~u_input.c, 0u), 23351u), vec4<bool>(all(vec4<bool>(true, true, true, true)), true, true, all(vec4<bool>(true, true, false, false)))), _wgslsmith_div_u32(_wgslsmith_div_u32(~1u, 18110u), countOneBits(min(64617u, u_input.c))), vec2<i32>(var_0.x, -firstLeadingBit(-6262i) << (0u % 32u)), vec4<i32>(var_0.x, 0i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, var_0.x, u_input.a, 7887i), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, -2147483647i, -283i, var_0.x), vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a)), ~vec4<i32>(u_input.a, var_0.x, u_input.a, 0i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -2147483647i, 25224i, u_input.a) >> (vec4<u32>(u_input.b, 0u, u_input.c, u_input.b) % vec4<u32>(32u)), vec4<i32>(var_0.x, 1i, 1i, 2147483647i))), 57434i ^ var_0.x));
    var_1 = Struct_1(~var_1.a, _wgslsmith_div_u32(~_wgslsmith_add_u32(1u, ~6662u), 72554u), ~_wgslsmith_clamp_vec2_i32(-vec2<i32>(var_1.d.x, u_input.a), -firstLeadingBit(var_1.d.zw), abs(var_0.yz)), vec4<i32>(16255i, _wgslsmith_mod_i32(~var_1.c.x, var_1.c.x), _wgslsmith_mult_i32(var_1.c.x, 31362i) ^ -69647i, var_0.x) >> (var_1.a % vec4<u32>(32u)));
    var_1 = Struct_1(var_1.a, firstLeadingBit(u_input.c), -var_0.xy, var_1.d);
    let var_2 = _wgslsmith_sub_i32(~(~(-56136i)), var_1.c.x);
    let var_3 = -838f;
    var_0 = ~countOneBits(firstLeadingBit(_wgslsmith_div_vec3_i32(var_1.d.wyw, ~var_1.d.zwz)));
    var var_4 = func_3(var_1.d, -select(vec4<i32>(max(var_1.c.x, -12501i), _wgslsmith_sub_i32(var_2, 32020i), var_0.x ^ -15769i, _wgslsmith_clamp_i32(-19678i, 0i, var_2)), firstTrailingBit(-var_1.d), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)))).x;
    var var_5 = 3933u;
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(-_wgslsmith_clamp_i32(-2147483647i, 1i, 1i))), ~var_1.a.wzz, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1515f, 816f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, -642f)), _wgslsmith_div_vec2_f32(vec2<f32>(-553f, -1563f), vec2<f32>(509f, -1072f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3, 797f) + vec2<f32>(var_3, 594f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-2826f, 314f), vec2<f32>(-1639f, 903f)))), vec2<bool>(true, true))), _wgslsmith_clamp_vec2_u32(firstTrailingBit(_wgslsmith_sub_vec2_u32(var_1.a.xz, vec2<u32>(u_input.c, var_1.a.x) << (vec2<u32>(13966u, u_input.c) % vec2<u32>(32u)))), ~_wgslsmith_add_vec2_u32(vec2<u32>(var_1.a.x, u_input.c), max(vec2<u32>(0u, var_1.a.x), var_1.a.wz)), _wgslsmith_clamp_vec2_u32(var_1.a.wz | abs(var_1.a.yz), abs(abs(vec2<u32>(21895u, u_input.c))), abs(_wgslsmith_div_vec2_u32(vec2<u32>(var_1.b, 30434u), var_1.a.xy)))), ~vec2<u32>(~47990u ^ select(u_input.c, 39731u, false), u_input.c));
}

