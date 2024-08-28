struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7> = array<u32, 7>(1u, 31729u, 0u, 1u, 52047u, 76429u, 1u);

var<private> global1: f32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_2, arg_3: vec3<f32>) -> i32 {
    global0 = array<u32, 7>();
    var var_0 = u_input.d.x;
    var var_1 = Struct_1(arg_2.a.x, select(vec3<u32>(arg_1, global0[_wgslsmith_index_u32(~arg_1, 7u)] >> (~19997u % 32u), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 0u, 32887u, arg_1), vec4<u32>(u_input.d.x, 53485u, u_input.d.x, global0[_wgslsmith_index_u32(arg_1, 7u)])))), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.d, vec3<u32>(4294967295u, 1u, 41384u), vec3<u32>(22479u, arg_1, u_input.d.x)) << (u_input.d % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, u_input.d.x, 14754u), vec3<u32>(1u, 80877u, arg_1) | u_input.d)), select(!vec3<bool>(arg_0, true, false), !select(vec3<bool>(true, arg_0, true), vec3<bool>(false, arg_0, true), arg_0), select(select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, arg_0, false), vec3<bool>(true, arg_0, arg_0)), !vec3<bool>(false, arg_0, arg_0), !vec3<bool>(false, false, arg_0)))), _wgslsmith_div_vec4_i32(firstLeadingBit(select(arg_2.a, arg_2.a << (vec4<u32>(39475u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 7u)], 7u)], u_input.d.x, 1u) % vec4<u32>(32u)), !vec4<bool>(true, arg_0, arg_0, true))), _wgslsmith_sub_vec4_i32(abs(arg_2.a), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, arg_2.a.x, arg_2.a.x, u_input.b.x), countOneBits(arg_2.a)))), min(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), vec2<i32>(-55153i, -1i))), ~(-(~arg_2.a.x))));
    var var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(firstTrailingBit(~u_input.d.x ^ (arg_1 << (1989u % 32u))), var_1.b.x), min(u_input.d.xy, vec2<u32>(_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(u_input.d.x, 7u)], ~u_input.d.x), firstLeadingBit(var_1.b.x))));
    let var_3 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)))), _wgslsmith_f_op_f32(-arg_3.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.x, _wgslsmith_f_op_f32(exp2(arg_3.x)))), !(!(!vec2<bool>(arg_0, arg_0)))));
    return 1i;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    let var_0 = 0u;
    global1 = arg_1;
    let var_1 = -(((i32(-1i) * -arg_0.c.x) ^ -(u_input.a.x ^ -26522i)) << (~9770u % 32u));
    var var_2 = Struct_2(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_1, arg_0.d, 10145i), -vec4<i32>(arg_0.a, -1i, 8703i, 1i)), _wgslsmith_clamp_i32(u_input.c, select(0i, -1i, false), _wgslsmith_div_i32(18016i, var_1))), u_input.c, -(~0i), -2147483647i));
    global1 = -870f;
    return Struct_2(vec4<i32>(-1i, 45349i, 1i ^ ~func_3(false, u_input.d.x, Struct_2(vec4<i32>(var_2.a.x, u_input.c, 1i, 0i)), vec3<f32>(1735f, -1000f, 2498f)), var_1));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec2<i32>, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = 21788i;
    var var_1 = vec3<f32>(-176f, _wgslsmith_f_op_f32(trunc(-678f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 461f) - _wgslsmith_f_op_f32(trunc(111f))) * -1918f) + 251f));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-606f, var_1.x, var_1.x) + vec3<f32>(var_1.x, 427f, var_1.x))) * vec3<f32>(1f, _wgslsmith_f_op_f32(min(-917f, -217f)), _wgslsmith_f_op_f32(-1951f + 1820f)))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(var_1.x, 1016f)), _wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(-var_1.x))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(var_1.x)), 961f, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_1.x))))));
    let var_3 = arg_0;
    return !vec3<bool>(!all(vec2<bool>(false, false)), any(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), false)), true);
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = select(vec3<bool>(true || select(false, true, false), all(vec3<bool>(false, true, true)) || !all(vec4<bool>(true, false, true, false)), true != ((u_input.b.x != u_input.a.x) | (arg_0 == 775f))), vec3<bool>(any(func_4(Struct_2(vec4<i32>(u_input.a.x, u_input.a.x, -31215i, 0i)), ~vec3<u32>(16893u, 15401u, 42915u), vec2<i32>(13484i, 2147483647i) | u_input.a.xx, func_2(Struct_1(u_input.a.x, u_input.d, vec4<i32>(u_input.c, u_input.a.x, u_input.b.x, -2147483647i), -2147483647i), arg_0))), false, any(select(vec2<bool>(false, false), vec2<bool>(true, true), func_4(Struct_2(vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, -298i)), u_input.d, u_input.a.yx, Struct_2(vec4<i32>(-12894i, u_input.b.x, 2147483647i, u_input.c))).zy))), func_4(Struct_2(vec4<i32>(_wgslsmith_div_i32(-2147483647i, 61171i), -2147483647i, abs(54609i), u_input.c)), vec3<u32>(countOneBits(arg_1.x), 0u, 5673u), ~select(vec2<i32>(2147483647i, 0i) ^ vec2<i32>(-1i, u_input.a.x), -vec2<i32>(-1i, u_input.a.x), true), func_2(Struct_1(1i, u_input.d, vec4<i32>(u_input.c, -1i, u_input.b.x, u_input.a.x) ^ vec4<i32>(1i, u_input.c, 14674i, 0i), _wgslsmith_mult_i32(u_input.b.x, u_input.a.x)), _wgslsmith_f_op_f32(-arg_0))).x);
    global0 = array<u32, 7>();
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-567f)))), arg_0));
    var var_1 = func_2(Struct_1(u_input.a.x, ~(vec3<u32>(1u, 52315u, global0[_wgslsmith_index_u32(u_input.d.x, 7u)]) >> (select(vec3<u32>(21486u, u_input.d.x, 49722u), arg_1.wxz, var_0) % vec3<u32>(32u))), _wgslsmith_sub_vec4_i32(-func_2(Struct_1(u_input.c, u_input.d, vec4<i32>(u_input.a.x, u_input.a.x, 17508i, 22473i), 2147483647i), -453f).a, vec4<i32>(-1i, -u_input.a.x, -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 73314i), vec2<i32>(u_input.c, 2147483647i)))), 0i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, 495f)));
    var var_2 = Struct_1(_wgslsmith_mult_i32(func_3(~(-9155i) >= _wgslsmith_add_i32(2147483647i, var_1.a.x), 1u ^ u_input.d.x, Struct_2(vec4<i32>(u_input.a.x, u_input.b.x, -1i, u_input.b.x)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-578f, arg_0, arg_0) + vec3<f32>(arg_0, arg_0, arg_0)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(857f, -827f, -805f), vec3<f32>(arg_0, arg_0, arg_0)))))), ~reverseBits(-2147483647i)), u_input.d ^ vec3<u32>(4294967295u, arg_1.x, 1u << ((47800u ^ global0[_wgslsmith_index_u32(arg_1.x, 7u)]) % 32u)), _wgslsmith_mod_vec4_i32(-firstTrailingBit(countOneBits(var_1.a)), vec4<i32>(u_input.b.x, ~(-u_input.c), -27921i, i32(-1i) * -32154i)), reverseBits(max(-u_input.c, -26803i)));
    return Struct_1(5788i, vec3<u32>(_wgslsmith_mod_u32(arg_1.x, ~(global0[_wgslsmith_index_u32(1u, 7u)] >> (u_input.d.x % 32u))), countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_1.wyy, vec3<u32>(u_input.d.x, 35381u, u_input.d.x)) | 1u, 7u)]), ~global0[_wgslsmith_index_u32(50467u, 7u)]), var_2.c, -5079i);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    global0 = array<u32, 7>();
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.c.x, arg_1.c.x, -1i, 1i), vec4<i32>(arg_0.c.x, u_input.a.x, -7365i, -8795i), vec4<i32>(68353i, 13212i, u_input.b.x, 0i)), firstLeadingBit(vec4<i32>(u_input.c, arg_1.d, -1i, arg_0.d)), firstTrailingBit(vec4<i32>(arg_1.a, arg_0.a, 1i, 28763i)))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.a, arg_1.d, 38332i, arg_0.d), vec4<i32>(u_input.a.x, arg_0.d, -14725i, 1i))), abs(~countOneBits(arg_1.b) >> (~(vec3<u32>(global0[_wgslsmith_index_u32(u_input.d.x, 7u)], 23099u, 0u) & u_input.d) % vec3<u32>(32u))), -reverseBits(arg_1.c), u_input.c);
    var var_1 = _wgslsmith_add_u32(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 4294967295u, 0u), arg_0.b), _wgslsmith_mult_u32(u_input.d.x, 88678u), 16640u), ~max(2619u >> (~u_input.d.x % 32u), 1u));
    var var_2 = func_1(1620f, _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(~var_0.b.x, 7u)], ~var_0.b.x), ~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(var_0.b.x, 7u)], u_input.d.x), 1u << (func_1(-892f, vec4<u32>(u_input.d.x, 7859u, 59865u, 34817u)).b.x % 32u), abs(~52496u)), select(abs(vec4<u32>(6994u, global0[_wgslsmith_index_u32(444u, 7u)], 15343u, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, global0[_wgslsmith_index_u32(21752u, 7u)], arg_1.b.x, 0u), vec4<u32>(1u, 26912u, 31294u, 0u)), all(vec2<bool>(true, true)))));
    global1 = 699f;
    return any(!(!func_4(Struct_2(vec4<i32>(-60378i, arg_1.a, 4331i, arg_0.a)), reverseBits(vec3<u32>(global0[_wgslsmith_index_u32(1u, 7u)], u_input.d.x, 1u)), ~vec2<i32>(2147483647i, var_0.d), func_2(arg_1, -1029f))));
}

fn func_6(arg_0: vec4<bool>, arg_1: f32) -> StorageBuffer {
    var var_0 = ~max(~firstLeadingBit(min(0u, 2609u)), ~global0[_wgslsmith_index_u32(1u, 7u)] ^ 0u);
    var var_1 = Struct_1(reverseBits(_wgslsmith_div_i32(u_input.b.x, -u_input.c)) << ((_wgslsmith_div_u32(u_input.d.x & u_input.d.x, 11483u) >> (~49466u % 32u)) % 32u), abs(~(~vec3<u32>(u_input.d.x, 0u, 78422u))), abs(abs(func_2(Struct_1(9704i, vec3<u32>(42772u, u_input.d.x, global0[_wgslsmith_index_u32(1u, 7u)]), vec4<i32>(u_input.b.x, -2013i, -18473i, -2147483647i), u_input.c), _wgslsmith_f_op_f32(sign(-922f))).a)), countOneBits(-(2147483647i | _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b.x, u_input.a.x), u_input.a))));
    var var_2 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1762f), _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-3024f + arg_1) - 398f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(101f - arg_1)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1 - arg_1), -1000f))))));
    let var_3 = func_2(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-424f, _wgslsmith_f_op_f32(floor(1032f)), any(arg_0)))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 70800u, var_1.b.x, global0[_wgslsmith_index_u32(var_1.b.x, 7u)]), vec4<u32>(var_1.b.x, 0u, 61180u, var_1.b.x)) | 52067u, ~4294967295u, var_1.b.x >> (_wgslsmith_mod_u32(4294967295u, u_input.d.x) % 32u), ~(~53778u))), -689f);
    var_0 = min(~58025u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(abs(~vec4<u32>(var_1.b.x, 1u, 51195u, u_input.d.x)), vec4<u32>(_wgslsmith_sub_u32(27952u, 1u), u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(8234u, 4294967295u, var_1.b.x, 7050u), vec4<u32>(4294967295u, 1u, global0[_wgslsmith_index_u32(1u, 7u)], 23516u)), 1u)), ~countOneBits(vec4<u32>(var_1.b.x, global0[_wgslsmith_index_u32(u_input.d.x, 7u)], u_input.d.x, 34622u))), 7u)]);
    return StorageBuffer(_wgslsmith_sub_u32(~_wgslsmith_mod_u32(func_1(var_2.x, vec4<u32>(58660u, 29022u, var_1.b.x, 22622u)).b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), vec2<u32>(global0[_wgslsmith_index_u32(u_input.d.x, 7u)], 1u))), 0u), abs(var_1.b.x), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.zz)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_2.xz, var_2.zx) + var_2.yz))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-var_2.x)), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1117f, _wgslsmith_f_op_f32(979f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(572f - -724f)))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-763f + -349f)))));
    global0 = array<u32, 7>();
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1381f))));
    var var_1 = -24536i < u_input.b.x;
    let var_2 = u_input.a ^ ~u_input.a;
    let var_3 = 597f;
    let x = u_input.a;
    s_output = func_6(select(vec4<bool>(all(vec2<bool>(false, true)), func_5(func_1(208f, vec4<u32>(u_input.d.x, u_input.d.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43548u, 7u)], 7u)], global0[_wgslsmith_index_u32(u_input.d.x, 7u)])), func_1(var_0.x, vec4<u32>(4294967295u, 0u, u_input.d.x, 0u))), var_0.x == _wgslsmith_f_op_f32(var_3 * 1259f), all(func_4(Struct_2(vec4<i32>(u_input.a.x, 2147483647i, var_2.x, 2147483647i)), vec3<u32>(u_input.d.x, 33726u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)]), vec2<i32>(1i, var_2.x), Struct_2(vec4<i32>(var_2.x, -25813i, -2147483647i, -2259i))))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(true, false, false))), !all(vec4<bool>(true, true, true, true))), var_3);
}

