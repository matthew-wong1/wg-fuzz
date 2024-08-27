struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = vec2<u32>(arg_0.c, ~1u);
    var var_1 = reverseBits(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(var_0.x, 24104u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, var_0.x), vec3<u32>(u_input.c, 32696u, 12218u)), ~0u), select(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.c, arg_0.c, 31529u), vec3<u32>(4822u, var_0.x, var_0.x)), select(vec3<u32>(4294967295u, arg_0.c, 51732u), vec3<u32>(60293u, var_0.x, 19530u), true), vec3<bool>(true, true, true))), ~abs(reverseBits(vec3<u32>(1u, u_input.a, 19708u)))));
    let var_2 = _wgslsmith_dot_vec2_i32(u_input.d ^ vec2<i32>(6429i, ~(-u_input.d.x)), u_input.d);
    var_1 = _wgslsmith_clamp_vec3_u32(min(vec3<u32>(reverseBits(var_1.x), abs(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.c, u_input.a, var_0.x), vec4<u32>(1u, u_input.a, 4294967295u, 33770u))), vec3<u32>(0u, 18837u, 59650u | firstLeadingBit(arg_0.c))), vec3<u32>(_wgslsmith_clamp_u32(var_1.x, var_1.x, _wgslsmith_mod_u32(var_1.x, var_1.x)), var_1.x, ~1u) >> (~abs(vec3<u32>(var_0.x, 4294967295u, arg_0.c) ^ vec3<u32>(var_1.x, var_1.x, 9496u)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 5998u, var_0.x, var_1.x), vec4<u32>(u_input.c, var_1.x, 33652u, var_0.x)), arg_0.c, arg_0.c) >> (_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(21767u, u_input.a, 4669u), vec3<u32>(var_0.x, arg_0.c, 0u)), vec3<u32>(0u, 1u, u_input.c)) % vec3<u32>(32u)), abs(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, 14893u, var_1.x), vec3<u32>(var_0.x, var_1.x, 14454u))) & min(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.x, arg_0.c, 42288u), vec3<u32>(arg_0.c, var_1.x, var_0.x)), max(vec3<u32>(var_0.x, 4294967295u, 0u), vec3<u32>(u_input.a, var_0.x, u_input.c)))));
    let var_3 = Struct_1(vec3<i32>(var_2, arg_0.a.x ^ (-2147483647i << (~var_0.x % 32u)), abs(max(_wgslsmith_sub_i32(var_2, -2147483647i), arg_0.b.x))), min(~(~vec4<i32>(-1i, -2147483647i, u_input.d.x, 1i)) & _wgslsmith_sub_vec4_i32(-arg_0.b, arg_0.b), countOneBits(~vec4<i32>(var_2, u_input.b, 0i, 18537i)) ^ ~_wgslsmith_add_vec4_i32(arg_0.b, arg_0.b)), 150569u);
    return u_input.b;
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = arg_0;
    let var_1 = Struct_1(~vec3<i32>(i32(-1i) * -2147483647i, 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-31005i, u_input.b, -1i, u_input.b), vec4<i32>(-33429i, 0i, 0i, u_input.d.x)) >> (u_input.c % 32u)), vec4<i32>(~select(_wgslsmith_sub_i32(-15082i, u_input.d.x), abs(u_input.b), false), u_input.d.x, -26398i >> (_wgslsmith_mod_u32(u_input.a, ~1u) % 32u), firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.d | u_input.d, u_input.d))), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, u_input.a) & reverseBits(vec2<u32>(0u, 0u)), abs(~vec2<u32>(1u, u_input.a))));
    var var_2 = countOneBits(2147483647i);
    var var_3 = var_1;
    var var_4 = Struct_2(vec3<bool>(any(vec4<bool>(true, true, true, true)), true, any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), false))), Struct_1(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, var_1.b.x, u_input.b), var_1.b.wyy | var_3.b.xww), max(~var_3.b & (var_3.b & var_1.b), vec4<i32>(-2147483647i, u_input.d.x, 2147483647i, u_input.b) & _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, var_1.a.x, var_1.b.x, u_input.b), var_3.b)), ~449u), vec4<i32>(func_3(var_1), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -1i, _wgslsmith_div_i32(var_1.a.x, 1i), var_3.a.x), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 69076i, -20092i, u_input.b), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 8240i, var_1.a.x, var_3.b.x), vec4<i32>(var_1.a.x, -8331i, 2147483647i, var_1.a.x)))), ~abs(-3490i), -1i), var_1, _wgslsmith_div_f32(1000f, var_0));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * 1243f);
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_2(vec3<bool>(arg_0 == _wgslsmith_f_op_f32(abs(arg_0)), true, true), Struct_1(-vec3<i32>(_wgslsmith_div_i32(arg_3.b.x, -1i), arg_2.d.b.x, arg_3.a.x), _wgslsmith_clamp_vec4_i32((arg_3.b >> (vec4<u32>(u_input.c, 22548u, arg_3.c, 0u) % vec4<u32>(32u))) >> (vec4<u32>(1u, 1u, arg_2.d.c, arg_3.c) % vec4<u32>(32u)), arg_3.b, vec4<i32>(-1i, 45254i, min(arg_3.a.x, 13245i), 1i)), ~_wgslsmith_sub_u32(arg_2.b.c, 56930u) | u_input.c), reverseBits(arg_3.b | vec4<i32>(_wgslsmith_sub_i32(arg_3.a.x, 2147483647i), u_input.d.x, ~(-1431i), 0i)), arg_2.d, _wgslsmith_f_op_f32(f32(-1f) * -280f));
    var var_1 = select(select(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.d.c, 0u) << (vec2<u32>(43337u, arg_2.d.c) % vec2<u32>(32u)), min(vec2<u32>(36985u, 0u), vec2<u32>(14683u, arg_3.c))), _wgslsmith_mult_vec2_u32(~vec2<u32>(arg_2.d.c, var_0.d.c), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.d.c, arg_3.c), vec2<u32>(u_input.a, 4294967295u))), arg_2.a.x && true), _wgslsmith_div_vec2_u32(select(abs(vec2<u32>(22229u, u_input.a)), ~vec2<u32>(arg_2.b.c, 6576u), arg_2.a.zx), ~vec2<u32>(0u, 0u)), vec2<bool>(_wgslsmith_div_f32(736f, arg_2.e) > _wgslsmith_f_op_f32(378f + var_0.e), true)) ^ max(~(~_wgslsmith_add_vec2_u32(vec2<u32>(arg_3.c, 17407u), vec2<u32>(u_input.c, arg_3.c))), select(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, arg_3.c), vec2<u32>(arg_2.b.c, arg_3.c)), ~vec2<u32>(9538u, arg_2.b.c) | ~vec2<u32>(var_0.d.c, u_input.c), arg_2.a.x));
    var var_2 = _wgslsmith_sub_vec2_i32(abs(var_0.c.yw), u_input.d);
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.e * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-414f, _wgslsmith_f_op_f32(f32(-1f) * -374f)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(989f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1655f, -401f)))))));
    var var_4 = arg_3;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(316f, var_0.e))))));
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: vec2<bool>, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -271f))), arg_0, 741f)), vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) - _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(floor(2086f)))), Struct_2(!vec3<bool>(true, arg_2.x, true), Struct_1(vec3<i32>(u_input.d.x, u_input.b, u_input.d.x), vec4<i32>(u_input.d.x, 9447i, -54809i, 16368i), arg_3.x), vec4<i32>(u_input.d.x, u_input.d.x, 0i, -27809i), Struct_1(vec3<i32>(u_input.d.x, u_input.b, 1i), vec4<i32>(-1i, 1i, u_input.b, -7498i), arg_3.x), -553f), Struct_1(vec3<i32>(u_input.d.x, 54415i, u_input.b) | vec3<i32>(-3247i, u_input.b, u_input.b), -vec4<i32>(u_input.b, u_input.d.x, u_input.d.x, u_input.b), 28987u))), -569f), !(!(!(!vec3<bool>(arg_2.x, true, arg_2.x))))));
    let var_1 = 4294967295u;
    var var_2 = Struct_1(vec3<i32>(func_3(Struct_1(reverseBits(vec3<i32>(u_input.b, -2147483647i, 0i)), vec4<i32>(u_input.d.x, 1i, -44129i, u_input.b), u_input.a)), ~u_input.b, u_input.d.x), ~vec4<i32>(_wgslsmith_mod_i32(~7517i, 1i), -1i, -3686i, i32(-1i) * -2408i), var_1);
    let var_3 = func_3(Struct_1(select(~var_2.b.ywx, countOneBits(var_2.b.wwx), select(vec3<bool>(arg_2.x, true, true), vec3<bool>(false, true, true), vec3<bool>(arg_2.x, arg_2.x, false))) & max(-vec3<i32>(u_input.b, u_input.d.x, 1879i), vec3<i32>(20829i, u_input.b, -36601i) << (vec3<u32>(0u, 1446u, var_2.c) % vec3<u32>(32u))), _wgslsmith_div_vec4_i32(max(var_2.b, abs(vec4<i32>(1i, -690i, -66921i, var_2.a.x))), var_2.b), firstLeadingBit(_wgslsmith_mult_u32(~0u, _wgslsmith_div_u32(arg_3.x, 1u)))));
    var_2 = Struct_1(~vec3<i32>(~(-40361i | var_2.a.x), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(var_2.b, var_2.b), u_input.d.x, _wgslsmith_sub_i32(var_3, var_2.a.x)), ~min(21105i, 1i)), _wgslsmith_sub_vec4_i32(select(max(~var_2.b, -var_2.b), countOneBits(var_2.b | var_2.b), true), ~countOneBits(vec4<i32>(29036i, var_3, u_input.b, 1i))), 14856u);
    return Struct_2(!vec3<bool>(!all(vec2<bool>(false, arg_2.x)), arg_2.x, arg_2.x), Struct_1(-_wgslsmith_add_vec3_i32(max(var_2.b.wyz, vec3<i32>(29772i, var_2.b.x, -41577i)), -vec3<i32>(10274i, var_2.b.x, var_3)), var_2.b, ~4294967295u), -_wgslsmith_div_vec4_i32(select(var_2.b, vec4<i32>(-2147483647i, u_input.b, 51906i, 2147483647i), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true)), ~vec4<i32>(44255i, 0i, var_2.b.x, var_3)) >> (~_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(88551u, var_2.c, 47762u, u_input.a)), firstLeadingBit(vec4<u32>(u_input.a, 49382u, var_2.c, 1u))) % vec4<u32>(32u)), Struct_1(vec3<i32>(29009i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(-1i, -5116i), var_2.b.x), 19736i), _wgslsmith_clamp_vec4_i32(var_2.b, vec4<i32>(var_3, _wgslsmith_div_i32(var_3, var_3), u_input.b, ~(-29770i)), -reverseBits(var_2.b)), abs(var_1)), _wgslsmith_div_f32(-185f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(885f))))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    var var_0 = u_input.b;
    var var_1 = arg_1.d;
    var var_2 = ~arg_0.c;
    let var_3 = ~1311i;
    var_0 = -3419i;
    return _wgslsmith_mult_u32(1u, 1u);
}

fn func_6(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    var var_0 = ~firstTrailingBit(_wgslsmith_mod_vec3_u32(~select(vec3<u32>(11996u, arg_1.x, 39843u), arg_1, arg_3.a), _wgslsmith_clamp_vec3_u32(~vec3<u32>(5502u, 57786u, u_input.c), vec3<u32>(arg_2.b.c, arg_2.d.c, arg_2.b.c), vec3<u32>(arg_3.d.c, u_input.c, arg_3.b.c) ^ vec3<u32>(14116u, 1u, 0u))));
    var_0 = vec3<u32>(~_wgslsmith_dot_vec3_u32(arg_1, ~arg_1) & min(0u, ~0u), 4294967295u, countOneBits(~0u));
    var_0 = _wgslsmith_div_vec3_u32(arg_1 << (min(arg_1, ~(arg_1 << (arg_1 % vec3<u32>(32u)))) % vec3<u32>(32u)), vec3<u32>(0u, _wgslsmith_clamp_u32(u_input.c, 0u, min(func_1(-967f, vec2<f32>(-1000f, arg_3.e), vec2<bool>(false, false), vec2<u32>(arg_1.x, arg_3.d.c)).d.c, 22944u)), abs(18146u)));
    let var_1 = Struct_1(-arg_2.d.a, ~_wgslsmith_div_vec4_i32(vec4<i32>(arg_2.c.x, arg_2.c.x, 1i, arg_3.b.a.x), arg_2.c) & (abs(reverseBits(arg_2.d.b)) & -vec4<i32>(22024i, -2147483647i, arg_2.c.x, -11060i)), 23321u);
    let var_2 = func_1(337f, vec2<f32>(arg_3.e, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f + arg_2.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.e - -651f) * 815f)))), arg_2.a.xx, var_0.yx);
    return Struct_1(vec3<i32>(arg_2.b.a.x, 6001i, arg_2.d.b.x), _wgslsmith_mod_vec4_i32(var_2.b.b, ~_wgslsmith_mult_vec4_i32(vec4<i32>(38654i, -43894i, arg_3.c.x, var_2.c.x), func_1(arg_2.e, vec2<f32>(-877f, 371f), arg_3.a.xy, vec2<u32>(9243u, 8242u)).b.b)), ~48617u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(any(vec4<bool>(true, false, true, true)), true), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)))), ~vec3<u32>(~(~0u), _wgslsmith_add_u32(abs(39383u), _wgslsmith_mult_u32(u_input.c, u_input.c)), func_5(Struct_1(vec3<i32>(0i, 0i, u_input.b), vec4<i32>(-51085i, 0i, 1i, u_input.b), u_input.a), func_1(-490f, vec2<f32>(696f, 244f), vec2<bool>(false, false), vec2<u32>(u_input.a, 49796u)))), Struct_2(!select(vec3<bool>(false, false, false), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), func_1(-1000f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1325f, -770f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 1004f), vec2<f32>(-167f, -1276f), false))), vec2<bool>(true, true), abs(vec2<u32>(0u, u_input.c))).d, firstLeadingBit(max(min(vec4<i32>(2147483647i, u_input.d.x, u_input.b, -1i), vec4<i32>(u_input.d.x, 1648i, u_input.b, 1i)), vec4<i32>(u_input.d.x, -2147483647i, u_input.d.x, 1i) | vec4<i32>(0i, u_input.b, u_input.b, u_input.b))), Struct_1(vec3<i32>(u_input.d.x, u_input.b, u_input.b) & ~vec3<i32>(u_input.b, -3183i, 1i), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 1i, 8043i, u_input.d.x), vec4<i32>(1i, -47242i, u_input.d.x, u_input.d.x), vec4<i32>(-30608i, 0i, u_input.b, u_input.b)), reverseBits(u_input.a ^ 0u)), _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(440f, -636f, Struct_2(vec3<bool>(false, true, true), Struct_1(vec3<i32>(2147483647i, -20793i, 1i), vec4<i32>(1i, u_input.d.x, u_input.d.x, 3100i), u_input.c), vec4<i32>(2147483647i, 24269i, u_input.b, -17320i), Struct_1(vec3<i32>(12450i, u_input.b, 0i), vec4<i32>(-2147483647i, 1i, u_input.b, -1i), u_input.a), -917f), Struct_1(vec3<i32>(u_input.d.x, 14584i, u_input.d.x), vec4<i32>(u_input.d.x, u_input.d.x, u_input.b, -5551i), 37823u))) * _wgslsmith_f_op_f32(func_2(-1036f))), true))), Struct_2(!vec3<bool>(u_input.a > 18852u, any(vec3<bool>(false, true, false)), select(false, false, false)), Struct_1(vec3<i32>(u_input.d.x, 1i, -u_input.d.x), select(~vec4<i32>(u_input.d.x, 21817i, u_input.b, -2147483647i), ~vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i), vec4<bool>(true, true, true, true)), ~u_input.a), -vec4<i32>(u_input.d.x, u_input.b, -8070i, u_input.d.x), func_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(2202f)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(454f, -248f))), vec2<bool>(true, all(vec2<bool>(false, false))), abs(vec2<u32>(u_input.a, 0u) | vec2<u32>(31713u, 4294967295u))).d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(145f * 250f)))))));
    var var_1 = ~firstTrailingBit(-max(var_0.a, var_0.b.wyw));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1336f + _wgslsmith_f_op_f32(1064f - -769f)));
}

