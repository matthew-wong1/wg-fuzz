struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> u32 {
    let var_0 = Struct_2(Struct_1(vec3<u32>(0u, max(4294967295u, 0u) << (u_input.b.x % 32u), _wgslsmith_dot_vec2_u32(~u_input.c, vec2<u32>(0u, u_input.b.x))), u_input.c.x), u_input.d == _wgslsmith_dot_vec4_i32(vec4<i32>(min(u_input.d, u_input.a), 0i, _wgslsmith_div_i32(u_input.d, 2147483647i), -15973i), vec4<i32>(14042i, countOneBits(u_input.a), 2147483647i & u_input.d, i32(-1i) * -1i)), abs(~_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.b.x), select(vec4<u32>(63080u, u_input.c.x, 63316u, u_input.c.x), vec4<u32>(u_input.c.x, 4294967295u, u_input.b.x, u_input.c.x), vec4<bool>(false, true, false, false)))), Struct_1(~u_input.b, select(u_input.c.x, ~countOneBits(u_input.b.x), !any(vec4<bool>(true, false, true, true)))));
    let var_1 = _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(var_0.d.a.x, var_0.c.x, var_0.a.a.x), firstTrailingBit(vec3<u32>(var_0.c.x, 16798u, 13022u))) << (_wgslsmith_clamp_vec3_u32(reverseBits(u_input.b), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 70503u, u_input.b.x), u_input.b), ~vec3<u32>(u_input.c.x, var_0.a.a.x, var_0.c.x)) % vec3<u32>(32u)), ~min(_wgslsmith_mod_vec3_u32(var_0.d.a, vec3<u32>(1u, 1u, var_0.c.x)), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.a.b, u_input.b.x, var_0.a.a.x), vec3<u32>(var_0.a.b, 1u, 38150u)))) & var_0.d.a;
    let var_2 = vec2<bool>(true, all(select(vec4<bool>(false, all(vec4<bool>(var_0.b, var_0.b, false, var_0.b)), any(vec2<bool>(var_0.b, var_0.b)), true && var_0.b), vec4<bool>(true, var_0.b, all(vec3<bool>(true, false, true)), var_0.b), all(!vec4<bool>(var_0.b, true, var_0.b, true)))));
    var var_3 = vec4<bool>(false, false, false != (_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1009f)))) == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f + -1000f)))), false);
    var var_4 = -_wgslsmith_clamp_i32(select(-43189i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -2147483647i, 1223i), vec4<i32>(-17124i, 3595i, 1i, u_input.a)), any(vec2<bool>(var_2.x, true))) ^ 0i, u_input.d << (abs(1u) % 32u), reverseBits(i32(-1i) * -1i));
    return _wgslsmith_add_u32(1u ^ u_input.c.x, ~_wgslsmith_mod_u32(18507u, ~u_input.b.x) >> (var_1.x % 32u));
}

fn func_2(arg_0: vec2<i32>) -> vec4<u32> {
    var var_0 = func_3();
    let var_1 = _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(u_input.d | u_input.a, ~u_input.d, -arg_0.x, u_input.d)) ^ vec4<i32>(arg_0.x, ~abs(arg_0.x), ~arg_0.x, u_input.a), ~vec4<i32>(arg_0.x, -1i, 34629i, _wgslsmith_div_i32(0i, firstLeadingBit(-24022i))));
    var var_2 = (u_input.c.x >= _wgslsmith_mod_u32(~u_input.c.x >> (~u_input.b.x % 32u), ~(~4294967295u))) && true;
    var var_3 = !(!(!select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(false, true))));
    var_0 = 1u;
    return ~firstLeadingBit(vec4<u32>(~u_input.b.x, _wgslsmith_div_u32(u_input.c.x, select(32020u, 24096u, true)), reverseBits(u_input.b.x), u_input.b.x));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: i32) -> i32 {
    var var_0 = Struct_3(Struct_1(vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(47796u, arg_1.x, u_input.b.x), u_input.b, vec3<u32>(89652u, 1u, 0u)), arg_0.a.d.a), 0u, 4294967295u), ~arg_0.a.d.b), vec2<i32>(-arg_3, ~_wgslsmith_mod_i32(~(-19598i), u_input.d)), arg_1.x, arg_2.b);
    let var_1 = arg_0.b.d;
    var_0 = Struct_3(Struct_1(var_1.a, ~func_2(countOneBits(vec2<i32>(-2588i, 4010i))).x), var_0.b | vec2<i32>(-77989i, arg_3), _wgslsmith_dot_vec4_u32(arg_2.b.c, firstLeadingBit(max(~vec4<u32>(arg_1.x, arg_0.c.x, 22897u, var_1.a.x), ~arg_2.a.c))), arg_0.a);
    var_0 = Struct_3(var_1, var_0.b, ~28635u, Struct_2(arg_0.a.a, true, ~arg_0.a.c | reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.c.x, 4294967295u, var_0.c, 4294967295u), vec4<u32>(var_1.a.x, var_1.a.x, 1u, 1u), vec4<u32>(0u, arg_0.b.d.b, arg_1.x, arg_1.x))), Struct_1(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a.a.x, 1u, 4294967295u), vec3<u32>(15884u, 12684u, arg_1.x)), 0u)));
    let var_2 = select(vec2<i32>(u_input.d, u_input.a), vec2<i32>(_wgslsmith_dot_vec2_i32(var_0.b, _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.b.x, var_0.b.x), vec2<i32>(-5168i, var_0.b.x))), abs(_wgslsmith_sub_i32(arg_3, -2147483647i))), arg_2.a.b) & _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_3 & ~(-61094i), ~(-27386i)), var_0.b, firstLeadingBit(min(countOneBits(vec2<i32>(32575i, var_0.b.x)), vec2<i32>(var_0.b.x, u_input.d))));
    return 73458i;
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: vec3<f32>, arg_3: i32) -> vec3<f32> {
    var var_0 = firstLeadingBit(countOneBits(_wgslsmith_sub_i32(arg_3, _wgslsmith_div_i32(u_input.a, 2147483647i) >> (4294967295u % 32u))));
    var var_1 = -(~vec3<i32>((u_input.d & -14805i) | -25451i, arg_3 >> (~u_input.b.x % 32u), arg_3));
    var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(38066i, i32(-1i) * -12648i, arg_3), ~vec3<i32>(_wgslsmith_mult_i32(arg_3 << (1u % 32u), _wgslsmith_sub_i32(-1391i, arg_3)), u_input.d, ~_wgslsmith_dot_vec2_i32(var_1.xx, vec2<i32>(arg_3, var_1.x))));
    var_0 = func_4(Struct_4(Struct_2(Struct_1(vec3<u32>(56192u, u_input.c.x, arg_1), arg_1), abs(var_1.x) >= 8974i, func_2(-vec2<i32>(arg_3, -8573i)), Struct_1(u_input.b, 1u)), Struct_2(Struct_1(_wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(4294967295u, 4294967295u, 14053u)), _wgslsmith_mod_u32(arg_1, u_input.b.x)), !select(true, false, false), vec4<u32>(u_input.c.x, 1u >> (arg_1 % 32u), ~33842u, max(107610u, arg_1)), Struct_1(u_input.b, arg_1)), _wgslsmith_div_vec3_u32(~(~vec3<u32>(u_input.c.x, u_input.c.x, 32928u)), _wgslsmith_sub_vec3_u32(u_input.b, u_input.b) ^ u_input.b)), vec3<u32>(0u, ~u_input.b.x, reverseBits(func_3())), Struct_4(Struct_2(Struct_1(reverseBits(u_input.b), 36496u), !all(vec4<bool>(true, true, true, true)), (vec4<u32>(68301u, u_input.c.x, 4294967295u, u_input.b.x) ^ vec4<u32>(arg_1, 0u, arg_1, u_input.c.x)) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(33180u, u_input.b.x, 76343u, 63868u), vec4<u32>(u_input.c.x, 21922u, 0u, u_input.b.x)), Struct_1(_wgslsmith_mod_vec3_u32(u_input.b, u_input.b), arg_1 & arg_1)), Struct_2(Struct_1(u_input.b << (vec3<u32>(0u, 1u, arg_1) % vec3<u32>(32u)), ~41633u), true, abs(~vec4<u32>(0u, arg_1, u_input.c.x, 4294967295u)), Struct_1(vec3<u32>(arg_1, arg_1, u_input.b.x), ~u_input.b.x)), ~abs(~vec3<u32>(1u, 4294967295u, arg_1))), min(-43082i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3, u_input.d, 20016i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3, arg_3, -13745i), vec3<i32>(-10577i, 59372i, 0i))), countOneBits(vec4<i32>(1i, -12503i, var_1.x, -1i)))));
    var var_2 = Struct_2(Struct_1(abs(firstTrailingBit(~vec3<u32>(72082u, arg_1, 39807u))), min(firstTrailingBit(arg_1), 1u) ^ 59229u), true, _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(~9604u, u_input.b.x, ~0u, _wgslsmith_div_u32(arg_1, 4294967295u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, arg_1, 4294967295u, 4294967295u), vec4<u32>(arg_1, arg_1, 47479u, 1u))), vec4<u32>(u_input.b.x, _wgslsmith_add_u32(arg_1, arg_1), arg_1, arg_1), func_2(select(vec2<i32>(1i, 5603i), -vec2<i32>(u_input.d, 0i), vec2<bool>(true, true)))), Struct_1(~((vec3<u32>(36287u, 44131u, 0u) << (vec3<u32>(arg_1, arg_1, arg_1) % vec3<u32>(32u))) ^ (u_input.b ^ vec3<u32>(11560u, 4294967295u, u_input.c.x))), select(arg_1, reverseBits(1u), !all(vec4<bool>(false, true, true, true)))));
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2) * _wgslsmith_f_op_vec3_f32(arg_2 * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 875f, 1384f))))), arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-939f, _wgslsmith_f_op_f32(step(976f, 161f)), -185f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1254f, 549f, -1000f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(717f, 356f, -1419f)), _wgslsmith_f_op_vec3_f32(func_1(vec2<f32>(-792f, 728f), 4294967295u, vec3<f32>(-1518f, -893f, -505f), 2147483647i)))))))));
    var var_1 = Struct_1(select(vec3<u32>(~countOneBits(12202u), ~57916u, 1u), vec3<u32>(u_input.c.x, 1u, ~_wgslsmith_div_u32(u_input.b.x, 4294967295u)), vec3<bool>(true, true, _wgslsmith_f_op_f32(sign(-934f)) <= var_0.x)), func_2(vec2<i32>(~_wgslsmith_mod_i32(19417i, u_input.a), -(~0i))).x);
    var_1 = Struct_1(select(_wgslsmith_mod_vec3_u32(~_wgslsmith_sub_vec3_u32(var_1.a, var_1.a), max(~vec3<u32>(u_input.b.x, u_input.b.x, 89051u), ~u_input.b)), vec3<u32>(~(~var_1.a.x), ~61370u >> (var_1.b % 32u), max(_wgslsmith_mult_u32(19991u, 26281u), _wgslsmith_div_u32(54840u, u_input.c.x))), vec3<bool>(all(vec2<bool>(true, true)), !any(vec4<bool>(true, false, false, false)), all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false))))), ~0u);
    let var_2 = func_2(vec2<i32>(u_input.d, firstTrailingBit(u_input.a)));
    var_1 = Struct_1(firstLeadingBit(countOneBits(~(var_2.xzw ^ var_1.a))), 13855u);
    let var_3 = func_2(vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(u_input.d, -14518i)), -1i | u_input.d, _wgslsmith_add_i32(u_input.a, u_input.d)), -1i)).x ^ ((_wgslsmith_div_u32(u_input.b.x >> (21827u % 32u), 21058u) >> (~u_input.c.x % 32u)) ^ ~_wgslsmith_dot_vec3_u32(~vec3<u32>(16632u, 5435u, var_2.x), ~var_1.a));
    var var_4 = false & all(vec4<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))), u_input.a < _wgslsmith_add_i32(u_input.d, u_input.d), (var_3 <= u_input.c.x) && select(false, false, true), var_1.b >= abs(29491u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(~var_2.x, _wgslsmith_div_u32(29612u, 14207u), func_2(-vec2<i32>(-17040i, 26522i)).x, 48887u), _wgslsmith_clamp_vec4_u32((var_2 >> (vec4<u32>(var_2.x, var_2.x, 4294967295u, var_3) % vec4<u32>(32u))) ^ firstLeadingBit(vec4<u32>(var_1.b, var_2.x, 1u, 4294967295u)), vec4<u32>(~u_input.c.x, ~var_2.x, 47194u, u_input.c.x), vec4<u32>(_wgslsmith_sub_u32(12745u, 1u), 21785u, firstTrailingBit(var_3), abs(u_input.c.x)))), _wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(-1i ^ u_input.d), min(u_input.a ^ -2147483647i, ~(-2147483647i))), -vec2<i32>(firstLeadingBit(u_input.d), _wgslsmith_sub_i32(-1i, -2147483647i))));
}

