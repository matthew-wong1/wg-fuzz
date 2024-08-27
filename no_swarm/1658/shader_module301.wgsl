struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-789f, -407f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1032f + -2020f)))));
    var var_1 = Struct_1(_wgslsmith_clamp_u32(0u, firstLeadingBit(~_wgslsmith_add_u32(0u, 0u)), _wgslsmith_mult_u32(min(~u_input.b, u_input.e), u_input.b)), _wgslsmith_f_op_vec2_f32(var_0 * _wgslsmith_div_vec2_f32(var_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0)))), 50915u, _wgslsmith_div_vec4_i32(vec4<i32>(countOneBits(u_input.c.x), -1010i, _wgslsmith_clamp_i32(select(-1i, u_input.a, true), 0i, 1i), _wgslsmith_add_i32(~u_input.d.x, -u_input.d.x)), u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1207f, var_0.x)));
    let var_2 = Struct_3(select(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)), select(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), vec3<bool>(false, true, u_input.b >= var_1.c), -1298i < u_input.d.x), vec3<bool>(true, true, true)), Struct_2(vec3<u32>(var_1.a, ~1u, 1u >> (~u_input.b % 32u)), Struct_1(reverseBits(~4294967295u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-218f, -1770f)), _wgslsmith_div_u32(47343u, ~u_input.e), vec4<i32>(u_input.a >> (42851u % 32u), ~66563i, var_1.d.x | 47427i, u_input.d.x), var_1.b.x), Struct_1(abs(1u), vec2<f32>(1305f, _wgslsmith_f_op_f32(max(743f, var_0.x))), 4294967295u, max(u_input.c, var_1.d) ^ -vec4<i32>(13525i, 45115i, var_1.d.x, var_1.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2295f * 137f) * _wgslsmith_f_op_f32(var_1.e - var_0.x))), vec4<bool>(true, true, true, true), Struct_1(u_input.b, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(var_1.b, var_1.b)), vec2<f32>(-485f, 1374f), vec2<bool>(true, false))), 0u, vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_1.d.x, -1i, 0i), u_input.c), var_1.d.x, reverseBits(var_1.d.x), 2147483647i), var_0.x)), Struct_2(max(~vec3<u32>(var_1.c, 51143u, var_1.a) >> ((vec3<u32>(var_1.a, u_input.b, 4294967295u) & vec3<u32>(4294967295u, 36735u, 0u)) % vec3<u32>(32u)), ~(vec3<u32>(var_1.a, var_1.c, u_input.e) & vec3<u32>(var_1.c, 1u, u_input.b))), Struct_1(51691u, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-287f, 1099f), var_1.b, true)))), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(46189u, var_1.a, 45908u), vec3<u32>(u_input.e, u_input.e, var_1.a)), ~vec3<u32>(var_1.a, 4294967295u, 0u)), var_1.d, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_1.b.x))), Struct_1(1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.b, vec2<f32>(1090f, 2892f))), u_input.b, max(vec4<i32>(5996i, 274i, 2147483647i, 1321i), abs(var_1.d)), var_1.b.x), !(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true))), Struct_1(28705u, var_1.b, u_input.e, -vec4<i32>(u_input.c.x, -2147483647i, u_input.a, -2147483647i), -1547f)), u_input.e);
    var var_3 = var_2.b;
    var var_4 = Struct_2(vec3<u32>(~10880u, var_1.c, var_2.d), Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_2.b.a.zx, var_2.b.a.xx | var_2.c.a.xx), var_2.c.a.xy), var_3.e.b, ~(~4294967295u), (~var_1.d ^ select(vec4<i32>(var_2.c.c.d.x, u_input.d.x, var_3.b.d.x, 31531i), u_input.c, var_2.b.d)) << (~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.c, var_3.b.c, var_2.d, u_input.e), vec4<u32>(var_1.a, var_2.c.a.x, u_input.b, 1u), vec4<u32>(var_3.c.a, 48921u, u_input.b, var_2.d)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -674f))), var_3.b, select(select(!(!var_2.c.d), !(!var_3.d), var_3.d.x), vec4<bool>(true, var_3.e.d.x < _wgslsmith_add_i32(var_1.d.x, 30621i), select(var_3.d.x, false, true), var_3.d.x), var_2.a.x), var_2.b.c);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1346f, _wgslsmith_f_op_f32(f32(-1f) * -192f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(153f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1339f, _wgslsmith_f_op_f32(sign(1659f))))))));
}

fn func_2() -> i32 {
    let var_0 = Struct_2(~_wgslsmith_sub_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(11514u, 55498u, 0u), vec3<u32>(u_input.e, u_input.e, 4294967295u)), ~vec3<u32>(u_input.e, 0u, 27824u)), Struct_1(101391u, vec2<f32>(_wgslsmith_f_op_f32(step(523f, _wgslsmith_f_op_f32(f32(-1f) * -153f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - -979f)), u_input.e, u_input.c, -453f), Struct_1(~1u, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 223f)))))), ~406u, vec4<i32>(-1i) * -abs(vec4<i32>(u_input.c.x, u_input.c.x, u_input.d.x, 24615i)), _wgslsmith_f_op_f32(step(-741f, 699f))), vec4<bool>(!all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false)), firstLeadingBit(abs(u_input.d.x)) > u_input.a, true, true | all(vec4<bool>(true, true, true, true))), Struct_1(_wgslsmith_add_u32((u_input.b & 4294967295u) >> (_wgslsmith_mult_u32(0u, 44798u) % 32u), u_input.b), vec2<f32>(505f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-152f)), _wgslsmith_f_op_f32(1000f * -836f))), select(1u, _wgslsmith_clamp_u32(~22013u, 22065u, ~12734u), true), abs(-abs(vec4<i32>(u_input.a, u_input.c.x, -44879i, 70329i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 1106f))) - 585f)));
    var var_1 = Struct_3(!(!select(vec3<bool>(true, var_0.d.x, var_0.d.x), select(vec3<bool>(true, false, false), var_0.d.wxx, vec3<bool>(true, true, var_0.d.x)), var_0.d.x)), var_0, var_0, var_0.a.x);
    var_1 = Struct_3(var_1.a, var_0, Struct_2(vec3<u32>(firstTrailingBit(49907u) | (u_input.b ^ var_0.b.c), ~u_input.e, 37246u), Struct_1(~4294967295u, vec2<f32>(_wgslsmith_f_op_f32(var_0.c.b.x + 447f), _wgslsmith_f_op_f32(var_1.b.e.e * 845f)), abs(u_input.e), abs(var_0.c.d), _wgslsmith_f_op_f32(-var_1.b.b.b.x)), Struct_1(u_input.b, vec2<f32>(_wgslsmith_f_op_f32(step(var_1.c.c.e, var_0.e.e)), _wgslsmith_div_f32(1295f, var_0.b.e)), ~1u, u_input.c, -1717f), var_1.c.d, var_1.c.c), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(1u), 1u << (1u % 32u)), vec2<u32>(0u, var_1.b.c.c)), firstLeadingBit(~(1u << (0u % 32u)))));
    var var_2 = vec2<i32>(countOneBits(_wgslsmith_div_i32(_wgslsmith_sub_i32(47513i, -1i), var_0.b.d.x) | 27757i), ~countOneBits(countOneBits(333i)));
    var var_3 = Struct_1(var_0.b.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.b.e.b) - var_1.c.c.b), _wgslsmith_f_op_vec2_f32(var_0.e.b + var_0.e.b)), _wgslsmith_sub_u32(u_input.b, var_0.e.c & (firstTrailingBit(var_0.a.x) ^ u_input.e)), max(abs(~min(vec4<i32>(11684i, 0i, -22182i, var_2.x), var_1.b.b.d)), select(-var_1.b.c.d << (countOneBits(vec4<u32>(51962u, 4294967295u, 9564u, 7660u)) % vec4<u32>(32u)), u_input.c, select(select(vec4<bool>(var_0.d.x, false, true, var_1.c.d.x), var_0.d, vec4<bool>(false, var_0.d.x, true, false)), select(vec4<bool>(true, true, true, var_1.c.d.x), vec4<bool>(true, var_1.a.x, false, true), var_1.a.x), true))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -236f), _wgslsmith_f_op_f32(var_0.c.b.x * 1809f)) - var_1.b.e.b.x))));
    return 0i;
}

fn func_4(arg_0: i32, arg_1: vec2<i32>) -> Struct_3 {
    var var_0 = -893f;
    var var_1 = _wgslsmith_mult_vec3_u32(~vec3<u32>(24563u, 1u, ~u_input.b >> (4294967295u % 32u)), firstLeadingBit(~(~vec3<u32>(12450u, u_input.b, u_input.e))) & vec3<u32>(u_input.e, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.e, 34919u), vec4<u32>(u_input.e, 1u, 0u, u_input.e)), _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.e, 4294967295u), _wgslsmith_mult_u32(u_input.e, 27333u))));
    var var_2 = Struct_3(select(!vec3<bool>(any(vec4<bool>(true, true, false, true)), true, any(vec2<bool>(false, false))), vec3<bool>(!(-33013i > u_input.d.x), select(true, true, any(vec2<bool>(true, true))), any(vec3<bool>(true, false, true))), false), Struct_2(select(~vec3<u32>(u_input.e, var_1.x, 30177u), firstTrailingBit(~vec3<u32>(2486u, var_1.x, u_input.b)), ~var_1.x <= max(1u, 71730u)), Struct_1(14281u, vec2<f32>(-1500f, _wgslsmith_div_f32(736f, 331f)), var_1.x, vec4<i32>(-arg_1.x, _wgslsmith_mod_i32(23712i, -2147483647i), -2846i, ~u_input.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -638f))), Struct_1(~var_1.x, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -2481f), vec2<f32>(-1544f, -736f), select(vec2<bool>(true, false), vec2<bool>(true, false), true))), ~20780u, ~_wgslsmith_mod_vec4_i32(u_input.c, u_input.c), 889f), vec4<bool>(true, all(vec2<bool>(true, true)), any(vec3<bool>(false, false, false)), false), Struct_1(var_1.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(215f, -580f)), vec2<f32>(-1000f, 629f), true)), var_1.x, _wgslsmith_div_vec4_i32(vec4<i32>(-34954i, 48961i, arg_0, 2147483647i), vec4<i32>(-27645i, -11109i, arg_1.x, 0i)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(213f, -1000f) - _wgslsmith_f_op_f32(round(721f))))), Struct_2(vec3<u32>(u_input.e, u_input.e, min(~u_input.b, u_input.b)), Struct_1(var_1.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, 656f), vec2<f32>(870f, 639f)))), 10930u, reverseBits(vec4<i32>(-1i, arg_0, -1i, 42328i)), 365f), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, var_1.x, 2315u), vec4<u32>(u_input.b, u_input.e, var_1.x, 1u)), vec2<f32>(_wgslsmith_div_f32(-713f, 2196f), _wgslsmith_div_f32(1317f, -466f)), select(u_input.e, u_input.e, true) ^ _wgslsmith_add_u32(var_1.x, u_input.b), vec4<i32>(_wgslsmith_div_i32(arg_1.x, -2147483647i), min(-1i, -2147483647i), -59494i, _wgslsmith_sub_i32(arg_0, 1i)), 1000f), !vec4<bool>(false, any(vec3<bool>(true, true, false)), true, select(true, false, false)), Struct_1(firstLeadingBit(_wgslsmith_add_u32(var_1.x, 4294967295u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-376f, -695f), vec2<f32>(1013f, -1000f)))), ~(~46464u), u_input.c, -2903f)), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~_wgslsmith_mult_u32(13575u, u_input.b), ~u_input.e), 1u, min(var_1.x, ~abs(u_input.e))));
    let var_3 = -1i;
    var_1 = max(var_2.b.a, select(var_2.b.a & var_2.c.a, var_2.b.a, true)) >> ((vec3<u32>(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.e.a, 5138u, var_2.b.a.x, u_input.e), vec4<u32>(var_2.d, 0u, var_1.x, u_input.e))), _wgslsmith_div_u32(1u, var_2.d | 4294967295u), 1u) & vec3<u32>(min(~var_2.b.a.x, 1u), ~0u, _wgslsmith_div_u32(~15615u, ~1u))) % vec3<u32>(32u));
    return Struct_3(!vec3<bool>(all(var_2.b.d), any(var_2.c.d), var_2.b.d.x), Struct_2(vec3<u32>(~var_2.c.e.a, abs(u_input.e << (u_input.e % 32u)), _wgslsmith_mod_u32(var_1.x, u_input.b) & u_input.e), var_2.c.b, var_2.b.c, var_2.c.d, Struct_1(u_input.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.b.c.e, -377f)))), 1u, abs(~vec4<i32>(0i, -1i, var_3, 49319i)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.c.c.e, -800f)))), Struct_2(vec3<u32>(0u, ~var_1.x | ~var_1.x, ~u_input.e << (~var_2.d % 32u)), Struct_1(1u, var_2.c.e.b, 128681u, _wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(-7417i, 26226i, arg_1.x, -32064i)), _wgslsmith_div_vec4_i32(var_2.c.e.d, vec4<i32>(arg_0, 43836i, -1i, 2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(42673i, -1i, arg_0, 20900i), u_input.c)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.c.b.b.x - -1000f)))), var_2.c.e, select(!(!var_2.b.d), vec4<bool>(var_2.b.d.x, !var_2.a.x, true, all(var_2.c.d)), false), var_2.c.c), 49273u);
}

fn func_1() -> u32 {
    let var_0 = func_4(min(func_2(), u_input.a), u_input.c.xy);
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-u_input.c.wy);
    var_0 = vec2<i32>(abs(~(-36537i)), -39109i);
    let var_1 = select(_wgslsmith_clamp_vec3_u32(vec3<u32>(func_1(), u_input.b, 4294967295u), abs(~vec3<u32>(u_input.b, 21671u, 78671u) & ~vec3<u32>(0u, u_input.e, 1u)), ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e, u_input.b, u_input.e), vec3<u32>(u_input.b, u_input.e, 83464u)))), ~vec3<u32>(u_input.e, u_input.b, 1u), select(func_4(~(-var_0.x), ~u_input.c.zy).b.d.yyz, select(vec3<bool>(true, true, false), vec3<bool>(true, any(vec2<bool>(true, true)), true), true), all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1129f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -218f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1272f, 1185f)) * -724f))));
    let var_3 = any(vec4<bool>(false, any(vec3<bool>(true, select(true, false, true), false)), true, !all(vec3<bool>(true, true, true))));
    let var_4 = u_input.b >> (_wgslsmith_mod_u32(69890u, ~1u) % 32u);
    var_2 = vec2<f32>(449f, 1135f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(-15527i, _wgslsmith_mod_i32(~(-var_0.x), 1i)), select(min(-1i, -firstLeadingBit(-1i)), -var_0.x, select(func_4(~u_input.c.x, ~u_input.c.zx).a.x, true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 115f, var_2.x, -156f) * vec4<f32>(var_2.x, var_2.x, 3532f, -1000f)) * vec4<f32>(_wgslsmith_f_op_f32(var_2.x + -836f), _wgslsmith_div_f32(var_2.x, var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -361f), _wgslsmith_f_op_f32(f32(-1f) * -1348f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -404f), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(1337f + var_2.x), _wgslsmith_f_op_f32(sign(-423f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(2257f, 1409f, var_2.x, 385f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -1000f, var_2.x, 680f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x - var_2.x), 172f), _wgslsmith_f_op_f32(f32(-1f) * -198f), 910f) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.x, var_2.x, _wgslsmith_f_op_f32(max(var_2.x, -303f)), 1014f)))));
}

