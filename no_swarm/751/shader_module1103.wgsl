struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<f32>) -> i32 {
    let var_0 = ~u_input.d.zz & vec2<u32>(countOneBits(u_input.b.x), ~43443u);
    let var_1 = select(vec3<bool>(any(vec4<bool>(true, true, true, true)) && true, true | any(vec3<bool>(false, true, false)), all(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(false, true), arg_1.x >= 323f))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), false), !(_wgslsmith_mod_i32(-73416i, u_input.c) > arg_0.x)), vec3<bool>(all(vec3<bool>(0i == u_input.c, false, false)), all(vec4<bool>(false, false, true, false)) == !all(vec4<bool>(false, false, false, false)), any(vec2<bool>(true, true))));
    var var_2 = Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 6527i), arg_0) >> (countOneBits(0u) % 32u), -2147483647i), ~arg_0), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.c, -15830i, _wgslsmith_div_i32(2147483647i, -2147483647i))), select(vec3<i32>(reverseBits(10447i), -2147483647i, u_input.c), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, 1i), vec3<i32>(-2147483647i, 0i, u_input.c)), ~vec3<i32>(arg_0.x, -1i, arg_0.x)), var_1)), any(vec2<bool>(!all(vec2<bool>(var_1.x, var_1.x)), !any(vec2<bool>(true, var_1.x)))), select(true, any(vec4<bool>(true, var_0.x >= 4294967295u, false, true)), true));
    let var_3 = vec3<f32>(162f, arg_1.x, arg_1.x);
    let var_4 = arg_1.wxx;
    return min(_wgslsmith_sub_i32(abs(0i), -max(-44285i, 1i)), arg_0.x);
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> i32 {
    var var_0 = 1i;
    var_0 = (u_input.c & ~arg_0.b) & -1i;
    let var_1 = Struct_2(_wgslsmith_clamp_vec3_u32(~_wgslsmith_mod_vec3_u32(u_input.d.wzx, vec3<u32>(41459u, u_input.a, 4294967295u)), countOneBits(max(vec3<u32>(u_input.a, 15268u, u_input.a), vec3<u32>(u_input.b.x, 0u, u_input.b.x))), (u_input.d.xxz >> (u_input.d.xzw % vec3<u32>(32u))) ^ abs(u_input.d.zzz)) ^ max(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(u_input.d.wzz, u_input.d.zxw), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 0u, u_input.b.x), u_input.d.wwx), vec3<u32>(u_input.d.x, 0u, u_input.b.x)), _wgslsmith_div_vec3_u32(~u_input.b, vec3<u32>(56337u, u_input.a, u_input.a))), _wgslsmith_clamp_u32(~u_input.a >> (firstLeadingBit(u_input.d.x) % 32u), max(u_input.a, 1u) >> (_wgslsmith_div_u32(4294967295u, u_input.d.x) % 32u), 3355u) >> (~35465u % 32u), abs(~(~(~vec2<u32>(18730u, u_input.b.x)))), Struct_1(reverseBits(arg_0.a), 43010i, arg_0.c, any(select(vec4<bool>(true, true, arg_0.c, true), select(vec4<bool>(true, arg_0.c, true, arg_0.c), vec4<bool>(arg_0.c, arg_0.c, arg_0.d, false), arg_0.d), select(vec4<bool>(arg_0.d, arg_0.d, false, true), vec4<bool>(arg_0.c, true, arg_0.d, true), arg_0.d)))));
    var var_2 = -(vec3<i32>(i32(-1i) * -arg_1, ~(~(-4472i)), -_wgslsmith_dot_vec2_i32(arg_0.a, arg_0.a)) << (u_input.b % vec3<u32>(32u)));
    var var_3 = _wgslsmith_mod_u32(reverseBits(4289u), _wgslsmith_clamp_u32(4294967295u, _wgslsmith_mod_u32(u_input.a, var_1.c.x), u_input.d.x));
    return ~var_2.x;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: u32) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(~u_input.c << (arg_2 % 32u), u_input.c), select(~(-vec2<i32>(u_input.c, u_input.c)), -(vec2<i32>(u_input.c, -3072i) | vec2<i32>(u_input.c, u_input.c)), true)), func_4(Struct_1(vec2<i32>(u_input.c, _wgslsmith_div_i32(-10424i, -1i)), func_3(min(vec2<i32>(u_input.c, u_input.c), vec2<i32>(-2147483647i, u_input.c)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(584f, 653f, 1002f, -1563f)))), all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false)), any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)))), func_3(vec2<i32>(firstLeadingBit(-23059i), -2147483647i), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1582f, 757f, -127f, 662f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1114f, -1048f, 1589f, -1423f))))))), select(select(true, true, true) & true, all(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), vec3<bool>(false, false, false), vec3<bool>(false, true, false))), (_wgslsmith_div_i32(u_input.c, 0i) <= ~u_input.c) & (false | (u_input.c == 2147483647i))), false);
    var var_1 = -var_0.b;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(min(-1000f, 1158f)), 783f, 578f);
    var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, i32(-1i) * -55323i, u_input.c), abs(~_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -10459i, var_0.a.x), vec3<i32>(u_input.c, 1i, 5132i), vec3<i32>(var_0.a.x, -24197i, 2147483647i)))), vec3<i32>(u_input.c << (u_input.b.x % 32u), reverseBits(max(1i, i32(-1i) * -3201i)), -(_wgslsmith_mult_i32(6388i, u_input.c) & var_0.b)));
    let var_3 = vec3<u32>(u_input.d.x, arg_0, _wgslsmith_sub_u32(0u, reverseBits(~(u_input.b.x << (67907u % 32u)))));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x - -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * -1699f) + _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(var_2.x + -207f))))), -397f));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_2(firstLeadingBit(firstLeadingBit((u_input.d.x ^ u_input.b.x) << ((86928u & u_input.b.x) % 32u))), 4294967295u, 0u));
    var var_1 = (any(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true))) && true) | true;
    var_1 = all(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), any(vec4<bool>(false, true, false, true)))));
    return Struct_1(vec2<i32>(_wgslsmith_mult_i32(firstTrailingBit(u_input.c), -u_input.c), u_input.c) ^ abs(vec2<i32>(u_input.c, u_input.c) ^ _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(u_input.c, u_input.c))), u_input.c, true, all(vec2<bool>(false, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(631f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-910f, 512f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1628f + -340f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(239f - 1f))));
    let var_1 = Struct_2(u_input.b, 13905u, ~u_input.d.yw, func_1());
    var var_2 = !(!(!vec3<bool>(false, any(vec4<bool>(true, var_1.d.c, var_1.d.d, true)), var_1.d.c)));
    var var_3 = 20724u;
    var_3 = ~((~u_input.a | min(1u, var_1.c.x)) ^ abs(~4294967295u)) & firstTrailingBit(0u);
    let var_4 = Struct_1(firstTrailingBit(var_1.d.a & abs(vec2<i32>(var_1.d.a.x, u_input.c))), ~(-_wgslsmith_div_i32(u_input.c, -1i) >> (((1u & u_input.d.x) >> (39125u % 32u)) % 32u)), var_1.d.c, all(select(vec4<bool>(var_1.d.c, !var_1.d.d, all(var_2.zx), var_1.d.d), vec4<bool>(false, true, var_1.a.x > 0u, false), select(vec4<bool>(var_1.d.d, false, false, var_2.x), !vec4<bool>(false, var_2.x, false, var_2.x), func_1().d))));
    var_3 = 0u;
    let var_5 = _wgslsmith_dot_vec3_u32(~vec3<u32>(~var_1.a.x, abs(u_input.a), u_input.b.x >> (abs(6991u) % 32u)), var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.x, var_0.x)))), _wgslsmith_f_op_f32(-var_0.x))));
}

