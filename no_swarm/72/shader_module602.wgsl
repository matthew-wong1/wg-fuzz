struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: i32, arg_3: bool) -> u32 {
    var var_0 = Struct_1(_wgslsmith_sub_vec2_i32(~(~_wgslsmith_sub_vec2_i32(arg_1.xz, arg_1.zy)), vec2<i32>(_wgslsmith_div_i32(arg_2, 5366i) | (u_input.c >> (0u % 32u)), ~(~arg_1.x))), min((abs(arg_1) & _wgslsmith_mod_vec3_i32(arg_1, vec3<i32>(42857i, arg_1.x, arg_2))) >> ((_wgslsmith_sub_vec3_u32(vec3<u32>(7970u, 49291u, u_input.b), vec3<u32>(49521u, 79203u, u_input.b)) | (vec3<u32>(u_input.b, 69584u, u_input.b) >> (vec3<u32>(35769u, u_input.b, u_input.b) % vec3<u32>(32u)))) % vec3<u32>(32u)), ~(vec3<i32>(arg_1.x, arg_1.x, arg_1.x) ^ arg_1)), select(vec2<bool>(true, select(arg_3, arg_3, true) || arg_0), vec2<bool>(false, any(!vec3<bool>(arg_0, true, arg_0))), !select(select(vec2<bool>(arg_0, true), vec2<bool>(true, arg_3), arg_0), vec2<bool>(arg_0, true), select(vec2<bool>(true, false), vec2<bool>(arg_3, arg_3), vec2<bool>(arg_3, arg_3)))));
    var_0 = Struct_1(-((vec2<i32>(u_input.a, -1i) | var_0.a) | vec2<i32>(reverseBits(arg_2), -var_0.a.x)), select(countOneBits(~max(vec3<i32>(2147483647i, arg_2, arg_2), arg_1)), arg_1 | ~vec3<i32>(arg_1.x, arg_2, -1i), u_input.b > _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.b, u_input.b)), abs(vec2<u32>(19418u, u_input.b)))), select(var_0.c, select(!(!var_0.c), select(select(vec2<bool>(arg_0, var_0.c.x), var_0.c, arg_3), select(vec2<bool>(var_0.c.x, arg_0), var_0.c, var_0.c), vec2<bool>(var_0.c.x, true)), !(-2641i > arg_1.x)), arg_0));
    let var_1 = Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(arg_1.x, arg_2), -u_input.c), arg_1.x), _wgslsmith_mod_vec2_i32(vec2<i32>(-20549i, -26958i), -vec2<i32>(arg_2, arg_2)) >> (~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u))), ~var_0.b ^ vec3<i32>(~33605i, -1i, 1i), !var_0.c);
    var_0 = var_1;
    var_0 = Struct_1(-vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, -1i, u_input.a), ~vec4<i32>(var_0.b.x, arg_2, var_1.b.x, arg_2)), -1i), firstLeadingBit(var_0.b), select(var_0.c, !(!vec2<bool>(arg_0, false)), !(!var_0.c)));
    return ~_wgslsmith_mod_u32(~(~u_input.b), 4294967295u) | ~(~(~u_input.b));
}

fn func_2() -> bool {
    var var_0 = min(~(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.b), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.b, 1u), vec3<u32>(u_input.b, u_input.b, 1u))) & (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 1u), vec3<u32>(u_input.b, u_input.b, u_input.b)) << ((vec3<u32>(0u, u_input.b, 8122u) >> (vec3<u32>(u_input.b, 33950u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)))), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 61388u, u_input.b), vec3<u32>(func_3(true, _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, u_input.c, u_input.a), vec3<i32>(u_input.a, -2147483647i, -1i)), -u_input.a, false), 1u, 75217u)));
    var_0 = select(~abs(vec3<u32>(u_input.b, ~u_input.b, 1u)), ~countOneBits(reverseBits(abs(vec3<u32>(u_input.b, u_input.b, var_0.x)))), select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), any(vec4<bool>(true, false, false, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), u_input.a < u_input.c), vec3<bool>(true, true, true), (var_0.x ^ 0u) == 0u), vec3<bool>(false, false, true)));
    var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, _wgslsmith_div_u32(u_input.b, _wgslsmith_mult_u32(4294967295u, 1u)), 38417u), _wgslsmith_sub_vec3_u32(firstLeadingBit(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 1u), vec3<u32>(1u, 1u, 4294967295u))), vec3<u32>(~1u, ~62814u, _wgslsmith_sub_u32(99207u, 67058u)) << (~min(vec3<u32>(var_0.x, var_0.x, u_input.b), vec3<u32>(u_input.b, var_0.x, var_0.x)) % vec3<u32>(32u))));
    var var_1 = Struct_1(-(max(vec2<i32>(u_input.c, -1i), vec2<i32>(1i, 1i)) << (var_0.zz % vec2<u32>(32u))), _wgslsmith_mod_vec3_i32(vec3<i32>(firstTrailingBit(1i), _wgslsmith_div_i32(min(3209i, u_input.c), i32(-1i) * -25745i), _wgslsmith_dot_vec3_i32(vec3<i32>(33327i, u_input.a, u_input.a), abs(vec3<i32>(-2147483647i, u_input.c, -1i)))), reverseBits(abs(vec3<i32>(u_input.a, -64882i, -2147483647i)))), select(vec2<bool>(true, true), vec2<bool>(!all(vec2<bool>(false, false)), any(vec2<bool>(true, true))), true));
    var var_2 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(~var_0.x, 793u), 13696u, ~1u << (_wgslsmith_div_u32(var_0.x, var_0.x) % 32u), func_3(var_1.c.x, vec3<i32>(u_input.c, var_1.b.x, var_1.b.x), -40385i, !var_1.c.x)), (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 47260u, u_input.b, 35619u), vec4<u32>(u_input.b, var_0.x, u_input.b, var_0.x)) >> ((vec4<u32>(65802u, var_0.x, u_input.b, var_0.x) ^ vec4<u32>(21383u, 1u, var_0.x, var_0.x)) % vec4<u32>(32u))) >> ((abs(vec4<u32>(u_input.b, u_input.b, 20099u, 76677u)) << (firstTrailingBit(vec4<u32>(u_input.b, var_0.x, var_0.x, u_input.b)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return var_1.c.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: bool, arg_3: bool) -> i32 {
    var var_0 = !select(vec3<bool>(all(vec3<bool>(arg_2, true, arg_3)) || false, (arg_0.x >= u_input.b) & all(vec4<bool>(true, arg_3, arg_2, true)), all(vec2<bool>(true, true))), vec3<bool>(!(!arg_3), true, func_2()), false);
    var var_1 = ~(28798u >> (arg_0.x % 32u));
    var_1 = _wgslsmith_dot_vec2_u32(reverseBits(arg_0.yz) >> (arg_0.xz % vec2<u32>(32u)), arg_0.xx);
    var_1 = arg_0.x;
    var var_2 = Struct_1(_wgslsmith_add_vec2_i32(~(-vec2<i32>(1i, u_input.a)), ~(~vec2<i32>(u_input.a, u_input.c))) & countOneBits(-(vec2<i32>(22304i, 3091i) >> (arg_0.yy % vec2<u32>(32u)))), reverseBits(~(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -31909i, -1i), vec3<i32>(u_input.c, u_input.c, u_input.a)))), select(vec2<bool>(!all(vec2<bool>(true, arg_2)), _wgslsmith_f_op_f32(sign(-1008f)) == _wgslsmith_f_op_f32(f32(-1f) * -1930f)), select(var_0.zy, select(arg_1, !vec2<bool>(var_0.x, arg_3), arg_2), true), u_input.c != u_input.a));
    return ~1061i;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = min(_wgslsmith_clamp_vec2_u32(abs(~(~vec2<u32>(74724u, 23290u))), vec2<u32>(_wgslsmith_div_u32(u_input.b, u_input.b) << (1u % 32u), firstLeadingBit(50500u)), ~(~vec2<u32>(u_input.b, u_input.b)) ^ vec2<u32>(~u_input.b, u_input.b)), vec2<u32>(~(u_input.b >> (~u_input.b % 32u)), (firstTrailingBit(u_input.b) ^ u_input.b) ^ 4294967295u));
    var var_1 = !func_2();
    var_0 = (vec2<u32>(0u, 41375u) ^ ~min(abs(vec2<u32>(u_input.b, u_input.b)), max(vec2<u32>(var_0.x, 4294967295u), vec2<u32>(34766u, var_0.x)))) ^ max(_wgslsmith_add_vec2_u32(~(~vec2<u32>(u_input.b, 33815u)), abs(vec2<u32>(57247u, 446u) ^ vec2<u32>(var_0.x, 85158u))), _wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(1u, 1u)), ~vec2<u32>(var_0.x, var_0.x) << (~vec2<u32>(1u, 1u) % vec2<u32>(32u))));
    var_1 = true;
    let var_2 = arg_0;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~43384u;
    var var_1 = vec2<bool>(true, true);
    let var_2 = _wgslsmith_mod_u32(21744u, ~_wgslsmith_add_u32(~1u, u_input.b));
    let var_3 = func_4(Struct_1(~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, u_input.a), vec2<i32>(-2147483647i, -21730i)) << (vec2<u32>(max(1u, u_input.b), ~u_input.b) % vec2<u32>(32u)), vec3<i32>(max(~u_input.a, 29168i), 48664i, _wgslsmith_add_i32(func_1(vec3<u32>(var_2, 6306u, u_input.b), vec2<bool>(var_1.x, true), var_1.x, false), u_input.a)), select(select(!vec2<bool>(var_1.x, true), vec2<bool>(false, false), false), select(!vec2<bool>(true, var_1.x), vec2<bool>(true, true), var_1.x), !vec2<bool>(var_1.x, var_1.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(-907f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-679f - -551f) + _wgslsmith_f_op_f32(trunc(108f)))))), select(select(!select(vec4<bool>(false, var_1.x, false, var_1.x), vec4<bool>(false, true, var_1.x, var_1.x), true), vec4<bool>(var_2 < 0u, select(false, var_1.x, false), any(vec2<bool>(true, var_1.x)), var_1.x), all(select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(false, true, var_1.x), var_1.x))), select(select(vec4<bool>(true, true, var_1.x, false), !vec4<bool>(true, true, var_1.x, false), select(vec4<bool>(true, var_1.x, var_1.x, true), vec4<bool>(var_1.x, true, true, var_1.x), vec4<bool>(false, var_1.x, true, var_1.x))), select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), !vec4<bool>(true, true, var_1.x, true), var_1.x), all(select(vec3<bool>(true, true, var_1.x), vec3<bool>(false, true, true), vec3<bool>(var_1.x, false, var_1.x)))), true), Struct_1(~(~abs(vec2<i32>(-55665i, 1i))), reverseBits(vec3<i32>(_wgslsmith_add_i32(u_input.c, u_input.c), -3412i, -2147483647i)), select(select(!vec2<bool>(false, var_1.x), select(vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, false), vec2<bool>(true, var_1.x)), var_1.x), select(!vec2<bool>(var_1.x, var_1.x), !vec2<bool>(var_1.x, var_1.x), !var_1.x), true)));
    var_1 = vec2<bool>(var_1.x, 38612i < func_1(vec3<u32>(~0u, ~0u, ~77875u), vec2<bool>(true, true), func_2(), var_3.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(~vec2<i32>(var_3.b.x, _wgslsmith_clamp_i32(1i, 4008i, var_3.b.x)), var_3.b.zz), vec2<i32>(i32(-1i) * -69991i, -2147483647i) >> (_wgslsmith_sub_vec2_u32(~firstLeadingBit(vec2<u32>(0u, u_input.b)), ~vec2<u32>(var_2, var_2)) % vec2<u32>(32u)), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.b, 0u, 4294967295u) & _wgslsmith_mult_vec3_u32(vec3<u32>(var_2, 4294967295u, 0u), ~vec3<u32>(3152u, 62671u, var_2)), ~max(~vec3<u32>(var_2, 85506u, var_2), ~vec3<u32>(37291u, 0u, var_2))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1000f, 1000f)) + vec3<f32>(-178f, _wgslsmith_f_op_f32(abs(-1559f)), _wgslsmith_f_op_f32(423f - -317f)))), ~select(_wgslsmith_add_i32(1222i, -13075i), u_input.c, false));
}

