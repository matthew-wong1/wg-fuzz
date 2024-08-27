struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<bool>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = u_input.a.x & (~_wgslsmith_mod_u32(_wgslsmith_mod_u32(67487u, u_input.a.x), u_input.a.x) ^ u_input.a.x);
    var var_1 = vec2<u32>(u_input.a.x, u_input.a.x);
    let var_2 = ~u_input.a;
    var_0 = ~_wgslsmith_mod_u32(~_wgslsmith_sub_u32(u_input.a.x, 1u), ~abs(u_input.a.x)) >> (var_1.x % 32u);
    let var_3 = arg_0;
    return !arg_0.c;
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> bool {
    var var_0 = Struct_1(arg_2.a, 15550i, !func_3(Struct_1(_wgslsmith_div_f32(arg_2.a, arg_2.a), -20690i, vec3<bool>(arg_2.c.x, arg_2.c.x, false), ~arg_2.e, vec4<i32>(0i, arg_2.d.x, arg_0, u_input.b.x))), countOneBits(_wgslsmith_mod_vec4_i32(~(~vec4<i32>(-1i, arg_0, 2147483647i, u_input.b.x)), arg_2.e)), firstTrailingBit(~vec4<i32>(2147483647i, ~(-27955i), ~7152i, arg_0 ^ arg_0)));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, 230f, arg_2.a)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(249f, 732f, var_0.a)), vec3<f32>(515f, -439f, -776f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -917f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a), 702f), -184f))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1318f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), ~abs(_wgslsmith_div_i32(2147483647i, 20418i) << (abs(arg_1) % 32u)), func_3(Struct_1(arg_2.a, arg_2.b, select(func_3(Struct_1(-168f, arg_2.b, arg_2.c, vec4<i32>(-34704i, 28807i, 1i, var_0.b), vec4<i32>(-29824i, arg_2.b, arg_2.e.x, 0i))), select(var_0.c, var_0.c, var_0.c.x), !vec3<bool>(arg_2.c.x, arg_2.c.x, true)), arg_2.e, u_input.b)), vec4<i32>(-_wgslsmith_mod_i32(1i, _wgslsmith_div_i32(arg_2.b, u_input.b.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, -7452i), vec2<i32>(var_0.b, arg_2.b)) >> (u_input.a.x % 32u), arg_2.e.x, abs(_wgslsmith_mod_i32(reverseBits(var_0.b), u_input.b.x))), _wgslsmith_div_vec4_i32(~(~arg_2.e), vec4<i32>(-9825i, _wgslsmith_clamp_i32(29420i, 25538i, _wgslsmith_add_i32(61460i, -1i)), ~_wgslsmith_div_i32(var_0.b, var_0.e.x), -_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 16733i), var_0.d.zz))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1042f, var_1.x, arg_2.c.x))))))), -39614i, select(arg_2.c, !var_0.c, true), countOneBits(vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(-42751i, 33653i, var_0.e.x), countOneBits(vec3<i32>(arg_2.d.x, arg_0, arg_0))), 2147483647i, var_0.d.x, _wgslsmith_div_i32(~(-1i), arg_0))), vec4<i32>(26898i, arg_0, -2147483647i, arg_2.b));
    let var_2 = arg_2;
    return true;
}

fn func_2() -> u32 {
    let var_0 = vec4<bool>(!((~6550u != select(u_input.a.x, u_input.a.x, true)) || any(vec4<bool>(true, true, true, true))), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-416f, -1182f)) + _wgslsmith_f_op_f32(1450f * -385f)) >= -1000f), func_4(max(~(-54149i), u_input.b.x), _wgslsmith_mod_u32(~4294967295u, 54125u), Struct_1(1980f, u_input.b.x, select(func_3(Struct_1(229f, 21094i, vec3<bool>(true, true, true), u_input.b, u_input.b)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), true), -(~vec4<i32>(u_input.b.x, 2147483647i, 2147483647i, u_input.b.x)), ~vec4<i32>(-2147483647i, -1425i, 1i, u_input.b.x))), false);
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-521f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-492f)), _wgslsmith_f_op_f32(197f + -739f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(2634f)), -324f))), u_input.b.x, vec3<bool>(3510i < (u_input.b.x | 1i), var_0.x, any(var_0)), -vec4<i32>(-2147483647i, _wgslsmith_add_i32(-2147483647i, u_input.b.x), ~u_input.b.x, 14089i) ^ vec4<i32>(2147483647i, ~(-2991i), _wgslsmith_mult_i32(-33916i, u_input.b.x) << (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), u_input.a.wy) % 32u), i32(-1i) * -9728i), u_input.b);
    var_1 = Struct_1(_wgslsmith_f_op_f32(-var_1.a), var_1.d.x, select(vec3<bool>(_wgslsmith_div_u32(u_input.a.x, 4294967295u) >= ~u_input.a.x, ~u_input.a.x >= 0u, select(any(var_0), var_1.c.x, any(vec4<bool>(var_0.x, var_0.x, true, true)))), select(select(select(vec3<bool>(var_1.c.x, true, false), var_1.c, vec3<bool>(var_0.x, false, true)), select(vec3<bool>(true, var_0.x, var_1.c.x), vec3<bool>(var_0.x, false, false), var_1.c), true), vec3<bool>(true, true, true), var_0.xyw), any(vec4<bool>(false, true, var_1.c.x, var_1.c.x)) || (true && any(vec3<bool>(true, var_0.x, false)))), -var_1.e, vec4<i32>(_wgslsmith_mult_i32(1i, u_input.b.x), -var_1.b, -42745i, _wgslsmith_clamp_i32(-2063i, _wgslsmith_dot_vec3_i32(var_1.d.wxy, vec3<i32>(var_1.b, var_1.e.x, u_input.b.x)) ^ 1i, _wgslsmith_clamp_i32(var_1.b ^ u_input.b.x, var_1.e.x, var_1.d.x))));
    var var_2 = _wgslsmith_add_u32(4294967295u, ~(~(u_input.a.x & ~u_input.a.x)));
    let var_3 = 53834i;
    return u_input.a.x;
}

fn func_1(arg_0: Struct_2) -> f32 {
    let var_0 = vec4<u32>(4294967295u, u_input.a.x, func_2(), 15010u);
    var var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(abs(2147483647i), u_input.b.x, _wgslsmith_dot_vec4_i32(abs(u_input.b), -(vec4<i32>(arg_0.a, -2147483647i, 14906i, 5928i) << (u_input.a % vec4<u32>(32u)))), u_input.b.x), vec4<i32>(_wgslsmith_add_i32(9350i, arg_0.a) ^ (u_input.b.x & 40839i), -45105i, -2147483647i, arg_0.a));
    var_1 = vec4<i32>(arg_0.a, -max(~u_input.b.x, ~(-u_input.b.x)), -(~countOneBits(36208i)), -2147483647i << (~max(1u, reverseBits(var_0.x)) % 32u));
    var_1 = countOneBits(max(-(firstLeadingBit(vec4<i32>(u_input.b.x, arg_0.a, 0i, var_1.x)) & ~u_input.b), u_input.b));
    var var_2 = ~vec3<u32>(4294967295u, ~max(min(var_0.x, u_input.a.x), ~77784u), firstTrailingBit(1u));
    return _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(574f, -878f)) + _wgslsmith_f_op_f32(1559f * -718f)))), _wgslsmith_f_op_f32(960f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1438f))))), -477f, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec2<bool>(true, all(vec3<bool>(true, true, true))));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), -138f, _wgslsmith_div_f32(1291f, -438f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 351f, _wgslsmith_f_op_f32(abs(-1630f))))), all(vec2<bool>(true, ~1u < u_input.a.x))));
    var var_2 = 1274f;
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -661f);
    var var_3 = var_0;
    var_3 = false;
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(697f - _wgslsmith_f_op_f32(f32(-1f) * -367f)), _wgslsmith_f_op_f32(func_1(Struct_2(9131i))), var_0))), -1054f);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~_wgslsmith_mod_vec3_i32(~vec3<i32>(-30010i, u_input.b.x, 13768i), u_input.b.zxz)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(315f)), -1000f)));
}

