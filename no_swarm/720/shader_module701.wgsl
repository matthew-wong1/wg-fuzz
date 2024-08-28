struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: f32,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: bool,
    e: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3) -> vec4<f32> {
    let var_0 = vec2<bool>(!arg_0.b.a, !(u_input.a.x <= select(29064u, 4294967295u, arg_0.b.a)) != !(arg_0.b.b.d.x != u_input.a.x));
    let var_1 = ~arg_0.a;
    global0 = array<u32, 1>();
    global0 = array<u32, 1>();
    let var_2 = ~(~_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(59232u, u_input.b.x, 0u), vec3<u32>(1u, arg_0.b.b.d.x, 29709u)) | ~vec3<u32>(u_input.b.x, global0[_wgslsmith_index_u32(u_input.c.x, 1u)], 0u), reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.b.b.d.x, 1u, 72565u), vec3<u32>(u_input.c.x, 1u, arg_0.b.b.d.x)))));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1439f)))), arg_0.b.b.b.x, arg_0.b.b.b.x, arg_0.b.b.c) + _wgslsmith_f_op_vec4_f32(arg_0.b.b.b * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.b.b.e, arg_0.b.b.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1563f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.b.b.x - arg_0.b.b.e) + -104f), arg_0.b.b.e)));
}

fn func_2(arg_0: vec4<bool>) -> i32 {
    var var_0 = Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d.x, -firstLeadingBit(u_input.d.x)), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(u_input.d.x, u_input.d.x), _wgslsmith_sub_vec2_i32(u_input.d.zx, vec2<i32>(-11776i, u_input.d.x))), u_input.d.zy)), _wgslsmith_f_op_vec4_f32(func_3(Struct_3(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, 2147483647i, u_input.d.x, 0i), Struct_2(arg_0.x && arg_0.x, Struct_1(vec2<i32>(1i, u_input.d.x), vec4<f32>(-785f, -1294f, -1809f, -296f), -1596f, u_input.b, -283f), true && arg_0.x)))), _wgslsmith_f_op_f32(316f * _wgslsmith_f_op_f32(floor(-948f))), vec2<u32>(~min(4294967295u, u_input.b.x), 1u), _wgslsmith_f_op_vec4_f32(func_3(Struct_3(firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-495i, -34787i, 39887i, 10946i), vec4<i32>(-17291i, u_input.d.x, 2147483647i, u_input.d.x))), Struct_2(false, Struct_1(vec2<i32>(u_input.d.x, 1i), vec4<f32>(-2180f, -314f, 303f, -759f), 188f, u_input.c, -581f), arg_0.x)))).x);
    var var_1 = select(!vec2<bool>(!(arg_0.x || true), any(arg_0)), select(!arg_0.wy, arg_0.zw, !select(arg_0.yx, arg_0.zx, arg_0.x)), !select(!select(vec2<bool>(false, false), arg_0.wy, arg_0.ww), !(!arg_0.xz), arg_0.x));
    var_0 = Struct_1(select(~abs(var_0.a), ~vec2<i32>(27772i, var_0.a.x) & u_input.d.zy, var_1.x), vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.b.x)), _wgslsmith_f_op_f32(sign(-1168f)), _wgslsmith_f_op_vec4_f32(func_3(Struct_3(reverseBits(vec4<i32>(6824i, 1i, u_input.d.x, var_0.a.x)), Struct_2(arg_0.x, Struct_1(var_0.a, vec4<f32>(var_0.c, var_0.b.x, 1691f, var_0.b.x), var_0.e, var_0.d, var_0.c), var_1.x)))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.e + var_0.c))))), var_0.e, vec2<u32>(_wgslsmith_add_u32(reverseBits(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], global0[_wgslsmith_index_u32(15911u, 1u)], var_0.d.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.a.x, 24143u))) & u_input.a.x, u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b.x))));
    global0 = array<u32, 1>();
    let var_2 = ~(abs(vec3<u32>(2888u, var_0.d.x, 54837u)) & ~select(vec3<u32>(var_0.d.x, 33620u, 1u), vec3<u32>(var_0.d.x, var_0.d.x, 49838u), false)) >> (_wgslsmith_add_vec3_u32(select(~(~vec3<u32>(1u, 4294967295u, 0u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, global0[_wgslsmith_index_u32(71212u, 1u)], var_0.d.x) ^ vec3<u32>(1u, var_0.d.x, u_input.c.x), vec3<u32>(1u, var_0.d.x, global0[_wgslsmith_index_u32(4294967295u, 1u)])), false), ~select(_wgslsmith_add_vec3_u32(vec3<u32>(54480u, var_0.d.x, 4294967295u), vec3<u32>(global0[_wgslsmith_index_u32(var_0.d.x, 1u)], 66145u, 0u)), ~vec3<u32>(14541u, global0[_wgslsmith_index_u32(u_input.b.x, 1u)], u_input.a.x), arg_0.yxz)) % vec3<u32>(32u));
    return firstLeadingBit(var_0.a.x) & 0i;
}

fn func_4(arg_0: f32, arg_1: Struct_4) -> Struct_4 {
    let var_0 = Struct_5(all(!vec3<bool>(true, all(vec3<bool>(arg_1.d, arg_1.e.b.c, true)), !arg_1.e.b.c)), _wgslsmith_div_u32(~(~(~38899u)), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_1.e.b.b.d.x, 0u), global0[_wgslsmith_index_u32(~arg_1.e.b.b.d.x, 1u)]), 1u)]));
    let var_1 = arg_1.b.x;
    var var_2 = arg_1.e.b.b;
    global0 = array<u32, 1>();
    global0 = array<u32, 1>();
    return Struct_4(vec2<i32>(arg_1.c.x, reverseBits(-1i)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(arg_1.b)), arg_1.b)), arg_1.e.a, false, arg_1.e);
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> vec3<u32> {
    let var_0 = Struct_5(arg_1.a, ~global0[_wgslsmith_index_u32(~u_input.c.x, 1u)]);
    var var_1 = 764f;
    let var_2 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(arg_1.b.e))))) * arg_1.b.b.x), Struct_4(vec2<i32>(func_2(!vec4<bool>(var_0.a, true, false, true)), 73502i), vec3<f32>(_wgslsmith_f_op_f32(-1023f - _wgslsmith_div_f32(arg_1.b.c, -1551f)), 1000f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(883f, arg_1.b.e)))), abs(reverseBits(~vec4<i32>(arg_0, arg_1.b.a.x, arg_1.b.a.x, u_input.d.x))), all(vec3<bool>(var_0.a, arg_1.b.e >= 1148f, false)), Struct_3(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -2008i, arg_1.b.a.x, -24346i), reverseBits(vec4<i32>(21269i, -8075i, u_input.d.x, u_input.d.x))), Struct_2(false || arg_1.a, arg_1.b, var_0.a))));
    var var_3 = _wgslsmith_sub_vec2_i32(-vec2<i32>(-(1i | var_2.e.b.b.a.x), arg_1.b.a.x | abs(arg_1.b.a.x)), reverseBits(-countOneBits(_wgslsmith_mod_vec2_i32(arg_1.b.a, vec2<i32>(-2147483647i, -5952i)))));
    return _wgslsmith_clamp_vec3_u32(~_wgslsmith_mult_vec3_u32(~vec3<u32>(71445u, global0[_wgslsmith_index_u32(arg_1.b.d.x, 1u)], 4294967295u), vec3<u32>(33953u, 0u, ~var_2.e.b.b.d.x)), _wgslsmith_mult_vec3_u32(~(~vec3<u32>(1u, arg_1.b.d.x, u_input.c.x)) ^ ~vec3<u32>(123557u, arg_1.b.d.x, 4294967295u), vec3<u32>(~_wgslsmith_clamp_u32(57371u, 18646u, 4294967295u), 54770u, var_2.e.b.b.d.x)), select(min(~vec3<u32>(u_input.b.x, var_0.b, arg_1.b.d.x), abs(vec3<u32>(4294967295u, 0u, 6836u))), reverseBits(~vec3<u32>(var_2.e.b.b.d.x, arg_1.b.d.x, arg_1.b.d.x)), select(vec3<bool>(true, true, true), !vec3<bool>(var_2.d, var_0.a, var_2.e.b.a), !vec3<bool>(true, var_0.a, var_0.a))) << (((vec3<u32>(var_0.b, 58188u, arg_1.b.d.x) << (~vec3<u32>(8424u, 4294967295u, 42997u) % vec3<u32>(32u))) | _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(35439u, 1u)], 4294967295u, 71007u), vec3<u32>(4294967295u, arg_1.b.d.x, arg_1.b.d.x)), ~vec3<u32>(11815u, 1u, 1u), firstLeadingBit(vec3<u32>(4953u, var_0.b, var_2.e.b.b.d.x)))) % vec3<u32>(32u)));
}

fn func_5(arg_0: Struct_5, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: Struct_3) -> StorageBuffer {
    var var_0 = arg_1;
    var_0 = vec3<u32>(15057u, _wgslsmith_dot_vec3_u32(arg_1, arg_1), ~(~48167u & (var_0.x >> (u_input.c.x % 32u)))) >> (select(~vec3<u32>(1u, arg_1.x, 40990u), _wgslsmith_div_vec3_u32(~arg_1, select(arg_1, arg_1, false)) ^ ~vec3<u32>(arg_0.b, arg_1.x, arg_1.x), !vec3<bool>(arg_0.a, arg_2.x, !arg_3.b.c)) % vec3<u32>(32u));
    let var_1 = -2454i;
    var_0 = arg_1;
    var_0 = arg_1;
    return StorageBuffer(vec3<i32>(-1i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-24930i, -1i, -1i, var_1), vec4<i32>(arg_3.a.x, u_input.d.x, var_1, 2147483647i)), 317i & u_input.d.x, ~1i) >> (reverseBits(var_0.x) % 32u), 1i), vec3<u32>(arg_3.b.b.d.x, 28390u, arg_0.b), 0u, _wgslsmith_f_op_vec3_f32(max(arg_3.b.b.b.yyz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.b.b.e, -1247f, arg_3.b.b.c)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 30496i;
    global0 = array<u32, 1>();
    global0 = array<u32, 1>();
    var var_1 = Struct_1(u_input.d.xz, vec4<f32>(2071f, 1363f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1485f * -675f)))), -1028f), _wgslsmith_f_op_f32(-127f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-3105f))))), countOneBits(u_input.b), -2662f);
    global0 = array<u32, 1>();
    let x = u_input.a;
    s_output = func_5(Struct_5(any(vec4<bool>(true, u_input.b.x > 1u, u_input.d.x != -29945i, all(vec4<bool>(true, true, false, true)))), _wgslsmith_add_u32(~firstLeadingBit(44673u), _wgslsmith_mod_u32(u_input.a.x | 4294967295u, 0u))), _wgslsmith_sub_vec3_u32(func_1(-(var_0 << (global0[_wgslsmith_index_u32(var_1.d.x, 1u)] % 32u)), Struct_2(true, Struct_1(vec2<i32>(-13004i, u_input.d.x), vec4<f32>(-1000f, 212f, -624f, 1389f), var_1.e, vec2<u32>(global0[_wgslsmith_index_u32(78171u, 1u)], global0[_wgslsmith_index_u32(61974u, 1u)]), var_1.c), var_0 == u_input.d.x)), abs(firstTrailingBit(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], 1u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13910u, 1u)], 1u)])))), !(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false))), Struct_3(reverseBits(-vec4<i32>(1i, u_input.d.x, u_input.d.x, u_input.d.x)), func_4(_wgslsmith_f_op_f32(trunc(var_1.e)), Struct_4(_wgslsmith_clamp_vec2_i32(vec2<i32>(-49386i, var_1.a.x), u_input.d.xx, vec2<i32>(1779i, 2147483647i)), func_4(689f, Struct_4(vec2<i32>(7117i, var_1.a.x), var_1.b.ywy, vec4<i32>(-12689i, u_input.d.x, -16090i, var_0), false, Struct_3(vec4<i32>(u_input.d.x, var_1.a.x, var_1.a.x, var_1.a.x), Struct_2(false, Struct_1(u_input.d.zx, var_1.b, 630f, vec2<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 1u)], u_input.c.x), 102f), true)))).b, vec4<i32>(0i, -14474i, u_input.d.x, var_0) >> (vec4<u32>(global0[_wgslsmith_index_u32(63228u, 1u)], 1u, u_input.a.x, global0[_wgslsmith_index_u32(u_input.b.x, 1u)]) % vec4<u32>(32u)), true, func_4(var_1.c, Struct_4(var_1.a, var_1.b.yzz, vec4<i32>(var_0, var_0, 2147483647i, var_0), true, Struct_3(vec4<i32>(var_1.a.x, -2147483647i, u_input.d.x, var_0), Struct_2(true, Struct_1(vec2<i32>(-38105i, var_0), vec4<f32>(var_1.e, var_1.b.x, 572f, var_1.c), 877f, vec2<u32>(u_input.c.x, u_input.c.x), 860f), false)))).e)).e.b));
}

