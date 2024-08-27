struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = reverseBits(-2147483647i);
    return _wgslsmith_clamp_u32(4294967295u, u_input.a.x, u_input.a.x);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec4<i32>) -> vec2<u32> {
    var var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -arg_2.xzy, vec3<i32>(-2147483647i, arg_1.c, ~(-10118i)) & vec3<i32>(2147483647i, -1i, -856i));
    return countOneBits(min(vec2<u32>(~4294967295u, 0u), ~(~vec2<u32>(u_input.a.x, 4294967295u)))) | vec2<u32>(~func_2(_wgslsmith_f_op_f32(-348f - 230f)), ~(~4010u));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>) -> f32 {
    var var_0 = Struct_2(Struct_1(!vec3<bool>(all(vec2<bool>(false, false)), true, true), func_1(-7645i, Struct_1(vec3<bool>(true, true, true), firstLeadingBit(0u), min(18934i, 2147483647i), vec3<i32>(-27328i, 3710i, -1i), ~vec4<i32>(68437i, 0i, 42271i, -20136i)), ~firstTrailingBit(vec4<i32>(0i, -34468i, -1i, 22997i))).x, -_wgslsmith_sub_i32(1i, i32(-1i) * -55046i), ~(vec3<i32>(2147483647i, 0i, 2147483647i) >> (abs(vec3<u32>(65774u, u_input.a.x, 13930u)) % vec3<u32>(32u))), ~vec4<i32>(_wgslsmith_sub_i32(-1i, -65603i), -1i, ~(-28529i), 1i)), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(abs(-17395i), countOneBits(12429i)), vec2<i32>(1i, 2494i)), reverseBits(-(~vec2<i32>(47301i, 21419i))), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(0i, -93218i)) & ~(vec2<i32>(9029i, 14780i) >> (u_input.a % vec2<u32>(32u)))), Struct_1(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), ~_wgslsmith_div_u32(select(u_input.a.x, u_input.b, true), ~u_input.a.x), select(0i, ~(-1i), true), vec3<i32>(~(-1i), abs(~29978i), -34544i), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(48261i, 2147483647i, 2147483647i, 2147483647i) << (vec4<u32>(2201u, u_input.a.x, 1u, u_input.b) % vec4<u32>(32u)), vec4<i32>(2147483647i, 1i, -26471i, -1i)), 21769i, 50785i, _wgslsmith_clamp_i32(-8564i, ~2147483647i, _wgslsmith_mod_i32(17555i, 48086i)))));
    let var_1 = arg_0;
    let var_2 = !(u_input.a.x >= ~(~_wgslsmith_add_u32(24557u, var_0.c.b)));
    var var_3 = var_0.c.a.x;
    let var_4 = Struct_4(var_1, ~(reverseBits(vec4<u32>(30867u, var_0.a.b, 85385u, 4294967295u)) ^ ~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 11190u, 64827u, 1u), vec4<u32>(4294967295u, 0u, var_0.c.b, 1u))), arg_0);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-669f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.a.x), -1076f)))));
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: f32, arg_3: vec3<i32>) -> f32 {
    var var_0 = !all(vec3<bool>(true, arg_2 <= arg_2, false)) || !any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true)));
    var var_1 = countOneBits(_wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_add_vec3_u32(~vec3<u32>(5954u, arg_1.x, arg_1.x), firstTrailingBit(vec3<u32>(30793u, 1u, 0u)))), select(vec3<u32>(arg_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, u_input.a.x, 64046u, 8789u), vec4<u32>(arg_1.x, u_input.b, arg_1.x, 0u)), u_input.b), select(~vec3<u32>(arg_1.x, 12886u, arg_1.x), ~vec3<u32>(arg_1.x, 0u, u_input.b), any(vec4<bool>(false, false, false, true))), vec3<bool>(true, true, true))));
    var var_2 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-633f, -1450f, arg_2) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1073f, -1055f, 1359f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_2, 525f) + vec3<f32>(-480f, 1155f, -651f))))), abs((~vec4<u32>(1u, u_input.b, 58431u, 0u) >> (vec4<u32>(arg_1.x, u_input.a.x, u_input.a.x, 0u) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_clamp_u32(0u, 17559u, arg_1.x), arg_1.x, countOneBits(arg_1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 16610u, 39751u), vec4<u32>(30537u, u_input.b, arg_1.x, 70162u))) % vec4<u32>(32u))), Struct_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-752f, arg_2, 420f))))));
    var var_3 = arg_3.x;
    var_2 = Struct_4(var_2.c, var_2.b, var_2.c);
    return 243f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(false, true);
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(785f, -1000f), -1032f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), vec2<bool>(false, false))), vec2<f32>(1f, _wgslsmith_f_op_f32(func_4(-981f, _wgslsmith_sub_vec2_u32(vec2<u32>(1811u, 21420u) << (vec2<u32>(41237u, u_input.b) % vec2<u32>(32u)), func_1(-37240i, Struct_1(vec3<bool>(var_1, var_0.x, var_0.x), 64017u, 35107i, vec3<i32>(9603i, -1i, -2147483647i), vec4<i32>(-1i, 1i, 1i, -2147483647i)), vec4<i32>(-2147483647i, -1i, 2147483647i, 0i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_3(vec3<f32>(-1000f, 1263f, -1000f)), vec3<f32>(353f, -414f, -704f))), -874f), reverseBits(~vec3<i32>(888i, -1i, -50733i)))))));
    let var_3 = ~_wgslsmith_mod_vec2_i32(vec2<i32>(1i, ~(-20206i)), _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(46640i, 83977i), vec2<i32>(-1i, 79532i)), max(vec2<i32>(-39232i, 37854i), vec2<i32>(0i, -15081i)), -vec2<i32>(21468i, 2147483647i))) ^ -((-vec2<i32>(57358i, -27394i) >> (~vec2<u32>(u_input.b, 1u) % vec2<u32>(32u))) ^ vec2<i32>(_wgslsmith_div_i32(2147483647i, -2147483647i), -2147483647i));
    var var_4 = Struct_2(Struct_1(select(select(!vec3<bool>(true, true, var_0.x), select(vec3<bool>(var_1, true, false), vec3<bool>(var_1, var_0.x, var_1), vec3<bool>(var_0.x, var_0.x, var_0.x)), -1000f != var_2.x), select(!vec3<bool>(var_0.x, false, var_1), vec3<bool>(true, true, var_0.x), select(var_0.x, var_1, false)), select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, var_1, true), !vec3<bool>(var_0.x, false, false))), 48168u, _wgslsmith_sub_i32(var_3.x & _wgslsmith_div_i32(var_3.x, -2147483647i), ~var_3.x), (-vec3<i32>(-33761i, 4276i, var_3.x) >> (_wgslsmith_add_vec3_u32(vec3<u32>(47155u, 0u, 4294967295u), vec3<u32>(u_input.a.x, 35726u, u_input.a.x)) % vec3<u32>(32u))) << (vec3<u32>(select(24257u, u_input.a.x, true), 23129u, ~62078u) % vec3<u32>(32u)), firstTrailingBit(vec4<i32>(select(-1i, -2147483647i, var_0.x), 2147483647i | var_3.x, 6959i, _wgslsmith_div_i32(var_3.x, -1i)))), max(firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(-57288i, var_3.x) >> (vec2<u32>(4294967295u, 13869u) % vec2<u32>(32u)), var_3 & vec2<i32>(var_3.x, 0i))), reverseBits(min(vec2<i32>(var_3.x, -32082i) & vec2<i32>(-2147483647i, var_3.x), vec2<i32>(-18526i, 0i)))), Struct_1(select(!vec3<bool>(var_1, true, var_0.x), vec3<bool>(all(vec4<bool>(false, var_1, var_1, false)), false, var_0.x), !(!vec3<bool>(var_0.x, var_1, var_1))), 4294967295u, 13903i, -vec3<i32>(i32(-1i) * -41657i, firstLeadingBit(var_3.x), var_3.x), vec4<i32>(-1i) * -(~vec4<i32>(-68794i, var_3.x, 1i, -26401i))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_4.c.d.xx) | _wgslsmith_add_vec2_i32(var_3, var_3), vec4<u32>(49778u << (u_input.b % 32u), ~4294967295u, u_input.a.x, u_input.a.x & (var_4.c.b | _wgslsmith_mod_u32(u_input.a.x, 18078u))));
}

