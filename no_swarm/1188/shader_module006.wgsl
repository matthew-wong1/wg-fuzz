struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec2<bool>,
    d: vec3<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(select(vec3<bool>(true, all(vec4<bool>(false, false, false, true)), true), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), !(u_input.a < 4294967295u)), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, true, all(vec2<bool>(false, true)))), vec4<bool>(true, true, true, true), true), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), vec2<bool>(true, true), false), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1055f, 378f) + vec3<f32>(468f, -532f, 1540f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, 524f, -1000f))))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(882f, 532f, -780f))))))), vec4<f32>(711f, _wgslsmith_div_f32(-1267f, 225f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-467f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(842f - -308f) * _wgslsmith_f_op_f32(f32(-1f) * -2169f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1570f)))));
    let var_1 = Struct_2(vec3<bool>(any(vec4<bool>(var_0.c.x, true, var_0.b.x, var_0.c.x)) || (_wgslsmith_f_op_f32(exp2(var_0.d.x)) >= -536f), false, var_0.a.x), select(vec4<bool>(var_0.a.x, var_0.a.x, -1000f != _wgslsmith_f_op_f32(-var_0.d.x), var_0.c.x), var_0.b, any(vec4<bool>(false, var_0.a.x, true, var_0.a.x))), var_0.c, var_0.d, _wgslsmith_f_op_vec4_f32(-var_0.e));
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-2147483647i, -1i, 28277i), ~1i);
    var var_3 = vec3<u32>(~(~(firstLeadingBit(u_input.a) & 3684u)), u_input.a, u_input.a);
    let var_4 = min(vec2<u32>(u_input.a, min(_wgslsmith_mod_u32(var_3.x, min(11844u, 1u)), u_input.a)), var_3.xz);
    return _wgslsmith_clamp_u32(select(4294967295u, u_input.a, var_1.b.x), ~_wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, var_3.x), vec2<u32>(var_4.x, var_3.x), select(vec2<bool>(false, false), vec2<bool>(true, true), var_0.c.x)), _wgslsmith_mod_vec2_u32(var_4, ~var_4)), var_3.x);
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_1(select(!all(vec2<bool>(true, true)), any(vec3<bool>(true, true, false)), false), vec2<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, 4294967295u, u_input.a) | vec3<u32>(98286u, u_input.a, u_input.a)), ~vec3<u32>(3266u, 8533u, 4475u)), _wgslsmith_add_u32(u_input.a, _wgslsmith_clamp_u32(func_3(), u_input.a, min(u_input.a, u_input.a)))), vec2<i32>(-reverseBits(-22043i), firstLeadingBit(1i)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false)), select(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), any(vec2<bool>(false, false)) || true), true && !any(vec2<bool>(true, false))));
    let var_1 = Struct_1(!(!(!all(vec2<bool>(var_0.a, var_0.a)))), firstTrailingBit(vec2<u32>(~u_input.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, var_0.b.x, 47413u), vec3<u32>(4294967295u, 58722u, 17293u)))), abs(var_0.c), var_0.d);
    let var_2 = u_input.a;
    let var_3 = var_1.d;
    let var_4 = var_1.b.x;
    return min(vec2<u32>(var_0.b.x, 1u) | ~_wgslsmith_add_vec2_u32(vec2<u32>(31045u, u_input.a), var_1.b), vec2<u32>(5755u, 4294967295u));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: u32) -> Struct_2 {
    let var_0 = Struct_1(arg_1, ~(max(_wgslsmith_add_vec2_u32(vec2<u32>(arg_2, arg_2), vec2<u32>(u_input.a, u_input.a)), func_2()) << (firstTrailingBit(~vec2<u32>(86897u, 107540u)) % vec2<u32>(32u))), vec2<i32>(reverseBits(arg_0.x & _wgslsmith_add_i32(arg_0.x, -3618i)), firstLeadingBit(select(-2147483647i, 0i, false))), vec2<bool>(true, !(all(vec3<bool>(arg_1, arg_1, true)) | any(vec4<bool>(arg_1, arg_1, arg_1, false)))));
    let var_1 = ~var_0.b;
    let var_2 = 278f;
    var var_3 = max(vec2<i32>(-(~(~arg_0.x)), _wgslsmith_div_i32(~22208i, _wgslsmith_sub_i32(var_0.c.x, arg_0.x)) & (~arg_0.x ^ -1i)), arg_0.xx);
    var_3 = _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(-2147483647i, countOneBits(var_0.c.x)), var_0.c, var_0.a), _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(arg_0.zz, -var_0.c), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(arg_0.yx, var_0.c), select(vec2<i32>(44487i, var_0.c.x), vec2<i32>(arg_0.x, arg_0.x), var_0.a), vec2<i32>(var_0.c.x, arg_0.x)), ~vec2<i32>(1436i, arg_0.x)), firstTrailingBit(reverseBits(vec2<i32>(1i, 2147483647i) | vec2<i32>(arg_0.x, arg_0.x)))), arg_0.zw);
    return Struct_2(vec3<bool>(true, false, true), select(vec4<bool>(true, false, !var_0.d.x && true, arg_1), vec4<bool>(true || all(vec3<bool>(arg_1, false, true)), all(!vec4<bool>(var_0.d.x, arg_1, var_0.d.x, false)), all(select(vec2<bool>(arg_1, arg_1), var_0.d, true)), !var_0.a && !arg_1), !(!(!vec4<bool>(true, arg_1, true, var_0.a)))), select(vec2<bool>(var_0.a, true), vec2<bool>(var_0.d.x, all(vec4<bool>(var_0.a, true, true, false))), false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, -1056f, var_2) - vec3<f32>(var_2, 598f, var_2)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_2, var_2) * vec3<f32>(-1361f, 582f, -1202f))) * vec3<f32>(_wgslsmith_div_f32(-526f, 1248f), _wgslsmith_f_op_f32(select(var_2, 151f, true)), _wgslsmith_f_op_f32(337f * var_2)))), vec4<f32>(_wgslsmith_f_op_f32(sign(-275f)), 645f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), _wgslsmith_div_f32(-2001f, 967f)) - var_2), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-2302f, var_2, arg_2 > arg_2))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_sub_i32(select(arg_1.c.x, arg_1.c.x << (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(13279u, 1u, arg_1.b.x, arg_2.b.x), vec4<u32>(arg_2.b.x, 81727u, arg_1.b.x, u_input.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 47550u, 4294967295u, u_input.a), vec4<u32>(arg_1.b.x, arg_2.b.x, 1u, arg_1.b.x), vec4<u32>(u_input.a, u_input.a, arg_2.b.x, 42243u))) % 32u), arg_0.b.x), arg_1.c.x);
    return vec4<i32>(arg_2.c.x, _wgslsmith_mod_i32(_wgslsmith_div_i32(2147483647i, ~arg_2.c.x) ^ ~(-14159i ^ arg_1.c.x), 1i), ~arg_2.c.x, _wgslsmith_add_i32(i32(-1i) * -1i, -firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.c.x, arg_1.c.x), arg_2.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    var var_1 = ~(reverseBits(firstTrailingBit(u_input.a)) | 1u);
    var_1 = ~_wgslsmith_mod_u32(3737u, min(~1u, u_input.a));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -314f)), -260f))));
    let var_3 = _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(countOneBits(_wgslsmith_mod_vec4_i32(~vec4<i32>(var_0, var_0, -2147483647i, var_0), vec4<i32>(-1i, -1i, var_0, 35233i))), ~(-(vec4<i32>(var_0, 2147483647i, var_0, 2147483647i) | vec4<i32>(var_0, var_0, var_0, var_0))), func_4(func_1(~vec4<i32>(-1i, var_0, var_0, var_0), true, 0u), Struct_1(true, reverseBits(vec2<u32>(u_input.a, u_input.a)), select(vec2<i32>(-53017i, var_0), vec2<i32>(var_0, var_0), false), vec2<bool>(true, true)), Struct_1(select(true, false, false), vec2<u32>(u_input.a, 112031u), vec2<i32>(var_0, var_0), vec2<bool>(true, true)))), vec4<i32>(~(~(0i | var_0)), var_0, var_0, -func_4(Struct_2(vec3<bool>(true, false, true), vec4<bool>(true, true, true, false), vec2<bool>(true, false), vec3<f32>(637f, 1072f, 475f), vec4<f32>(1061f, 938f, -1596f, -2002f)), Struct_1(true, vec2<u32>(u_input.a, u_input.a), vec2<i32>(var_0, -1i), vec2<bool>(false, true)), Struct_1(true, vec2<u32>(u_input.a, 0u), vec2<i32>(1i, var_0), vec2<bool>(false, true))).x));
    let var_4 = !(func_1(~_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 1i, -2147483647i, 45404i), vec4<i32>(-10152i, -2147483647i, var_0, -11975i)), all(vec2<bool>(true, true)), ~u_input.a).b.x & (func_1(-vec4<i32>(var_3, 52813i, var_0, var_0), false, ~u_input.a).b.x & all(vec4<bool>(true, false, false, false))));
    var_1 = 12966u;
    let var_5 = func_1(vec4<i32>(-61898i, -var_0, -1i, -var_3), var_4, ~(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(15299u, u_input.a, u_input.a), vec3<u32>(u_input.a, 187u, u_input.a)), vec3<u32>(57214u, u_input.a, 594u)) >> ((~4294967295u | u_input.a) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(max(countOneBits(abs(14430u)), u_input.a), _wgslsmith_mult_u32(u_input.a, abs(~1u))));
}

