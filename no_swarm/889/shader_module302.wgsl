struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: f32,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: Struct_2,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(-1i, 2147483647i, 36639i), vec4<f32>(508f, 1395f, 608f, 878f), -2007f, vec2<i32>(35315i, i32(-2147483648)), -1i);

var<private> global1: vec3<bool> = vec3<bool>(true, true, true);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool) -> f32 {
    global0 = Struct_1(global0.a, global0.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global0.c)), _wgslsmith_f_op_f32(global0.b.x + _wgslsmith_f_op_f32(-263f * 160f)))), vec2<i32>(11403i, ~_wgslsmith_mod_i32(-47705i >> (u_input.c % 32u), global0.d.x)), 1i);
    let var_0 = Struct_1(u_input.b.wxx, global0.b, _wgslsmith_f_op_f32(floor(global0.b.x)), vec2<i32>(-32649i, -(~(-47697i))), ~2147483647i);
    global0 = Struct_1(abs(-min(vec3<i32>(var_0.d.x, var_0.d.x, var_0.a.x) >> (vec3<u32>(4160u, 43593u, 18572u) % vec3<u32>(32u)), -vec3<i32>(-18711i, var_0.d.x, u_input.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1707f, _wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(f32(-1f) * -587f), global0.b.x)), 869f, u_input.b.zw, ~2147483647i);
    var var_1 = -abs(-1642i);
    global0 = Struct_1(vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a.x, -7829i, global0.a.x, global0.e), u_input.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.d.x, u_input.b.x, u_input.b.x, -1i), u_input.b, vec4<i32>(-39622i, -14598i, -30644i, global0.e))), abs(select(u_input.b.x, u_input.b.x, arg_0.x))), -var_0.e, abs(u_input.d)), global0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) * 415f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.b.x - -450f), _wgslsmith_f_op_f32(sign(var_0.b.x))))), vec2<i32>(_wgslsmith_add_i32(reverseBits(global0.a.x), var_0.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, 6946i, -23992i), global0.a) | -1i) >> (vec2<u32>(4294967295u, 94944u << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.c, 0u), vec3<u32>(0u, u_input.c, 4294967295u)) % 32u)) % vec2<u32>(32u)), -2147483647i);
    return var_0.c;
}

fn func_2() -> vec4<bool> {
    let var_0 = _wgslsmith_div_u32(1u, firstLeadingBit(u_input.a));
    let var_1 = _wgslsmith_div_vec3_i32(~vec3<i32>(global0.d.x, 1i, _wgslsmith_dot_vec2_i32(countOneBits(global0.a.zz), _wgslsmith_div_vec2_i32(vec2<i32>(81695i, global0.e), u_input.b.yw))), ~_wgslsmith_sub_vec3_i32(u_input.b.wzy, -_wgslsmith_mod_vec3_i32(vec3<i32>(1i, -26011i, u_input.b.x), u_input.b.zwx)));
    var var_2 = Struct_2(~u_input.a, -32548i >> (_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.a), vec2<u32>(1u, var_0)), 0u) % 32u), firstTrailingBit(vec4<i32>(abs(1i), u_input.d, _wgslsmith_sub_i32(select(-1i, u_input.b.x, true), 22293i), _wgslsmith_dot_vec4_i32(~u_input.b, _wgslsmith_sub_vec4_i32(vec4<i32>(0i, 33401i, 2147483647i, u_input.b.x), vec4<i32>(15516i, u_input.d, var_1.x, 30983i))))), Struct_1(-vec3<i32>(-9300i, u_input.d, var_1.x) ^ vec3<i32>(-655i, ~0i, u_input.d), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(vec2<bool>(global1.x, false), global1.x)), 893f)), _wgslsmith_f_op_f32(1764f + global0.c), -1287f, _wgslsmith_f_op_f32(global0.c + global0.b.x)), _wgslsmith_f_op_f32(trunc(global0.c)), ~(var_1.xz & vec2<i32>(u_input.d, 1i)), countOneBits(-1i & abs(u_input.d))), true && (_wgslsmith_f_op_f32(round(global0.b.x)) >= _wgslsmith_f_op_f32(func_3(global1.yy, !global1.x))));
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -500f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -661f)), 391f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x - -671f) - -1873f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_2.d.c * -969f), _wgslsmith_f_op_f32(var_2.d.c - 729f), _wgslsmith_f_op_f32(select(-731f, global0.b.x, global1.x)), _wgslsmith_f_op_f32(floor(var_2.d.b.x))), var_2.d.b))));
    let var_4 = _wgslsmith_mod_vec3_u32(vec3<u32>(var_0, abs(firstLeadingBit(u_input.a)), u_input.a) >> (~(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, var_2.a, u_input.c), vec3<u32>(1u, 10501u, 52201u))) % vec3<u32>(32u)), select(~(~vec3<u32>(1u, var_0, var_0) << ((vec3<u32>(74824u, u_input.a, 1u) >> (vec3<u32>(var_2.a, u_input.c, var_0) % vec3<u32>(32u))) % vec3<u32>(32u))), select(vec3<u32>(~95853u, var_2.a & 41463u, _wgslsmith_add_u32(0u, var_2.a)), min(vec3<u32>(4294967295u, 0u, u_input.a), vec3<u32>(1u, var_2.a, 9777u)) >> (vec3<u32>(43673u, 4294967295u, u_input.c) % vec3<u32>(32u)), select(select(vec3<bool>(global1.x, false, var_2.e), vec3<bool>(false, global1.x, true), false), vec3<bool>(global1.x, global1.x, global1.x), !vec3<bool>(false, var_2.e, true))), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, global1.x, true))));
    return !(!select(vec4<bool>(!var_2.e, true, any(vec3<bool>(global1.x, false, true)), var_2.e | false), vec4<bool>(global1.x, all(vec3<bool>(global1.x, global1.x, false)), !var_2.e, !global1.x), vec4<bool>(false, any(vec3<bool>(var_2.e, false, var_2.e)), false & var_2.e, false)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<i32>) -> vec4<i32> {
    global1 = vec3<bool>(all(func_2()), false, !global1.x | global1.x);
    let var_0 = vec4<u32>(~1u, ~(~(1u ^ u_input.c)), abs(20723u), _wgslsmith_dot_vec3_u32(arg_0.xyz, arg_0.yxy)) << (arg_0 % vec4<u32>(32u));
    global1 = func_2().yxx;
    var var_1 = Struct_3(0u, vec2<bool>(27406u > arg_0.x, !all(vec3<bool>(true, true, global1.x)) || !(-15913i >= u_input.b.x)), Struct_2(1u, arg_1.x, firstLeadingBit(vec4<i32>(~u_input.d, 0i, 2147483647i, ~arg_1.x)), Struct_1(_wgslsmith_add_vec3_i32(u_input.b.yzx, ~arg_1.wyz), vec4<f32>(-1602f, -1462f, _wgslsmith_f_op_f32(global0.b.x * -122f), -275f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(466f - global0.b.x), _wgslsmith_f_op_f32(max(303f, -896f)), global1.x | false)), vec2<i32>(12646i, 0i) >> (arg_0.xw % vec2<u32>(32u)), _wgslsmith_mult_i32(global0.d.x, i32(-1i) * -22041i)), false), _wgslsmith_sub_i32(select(_wgslsmith_dot_vec2_i32(~global0.a.yz, global0.a.xz), -arg_1.x, true && any(vec3<bool>(global1.x, true, false))), 2147483647i), Struct_2(var_0.x, _wgslsmith_div_i32(_wgslsmith_add_i32(firstTrailingBit(global0.e), u_input.b.x), ~18908i), vec4<i32>(1i, ~(-2147483647i), 2147483647i, firstLeadingBit(0i | arg_1.x)), Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_1.x, u_input.d, -33917i), arg_1.yzy), vec3<i32>(-2147483647i, -21982i, global0.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1572f, 902f, 1420f, 1975f)), _wgslsmith_f_op_f32(1627f * -235f), vec2<i32>(-u_input.b.x, _wgslsmith_div_i32(0i, u_input.b.x)), countOneBits(-2147483647i)), global1.x));
    global0 = Struct_1(u_input.b.zyw, vec4<f32>(-646f, _wgslsmith_f_op_f32(ceil(var_1.c.d.c)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global0.b.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(ceil(-609f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1441f * _wgslsmith_f_op_f32(step(-1000f, global0.b.x))) - _wgslsmith_f_op_f32(floor(512f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.d.b.x * global0.c))), vec2<i32>(-_wgslsmith_mult_i32(arg_1.x, arg_1.x), var_1.d), abs(u_input.d) << (4294967295u % 32u));
    return vec4<i32>(_wgslsmith_add_i32(reverseBits(1i), select(-1i, -1i, !(global1.x & true))), -var_1.c.b, ~select(firstLeadingBit(-1i), u_input.d, select(true, !var_1.e.e, !var_1.c.e)), arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(53127u, global1.xy, Struct_2(~abs(_wgslsmith_mod_u32(86335u, u_input.c)), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -u_input.b.wwz, ~vec3<i32>(u_input.b.x, 2147483647i, -33636i)), _wgslsmith_div_vec4_i32(~vec4<i32>(-2147483647i, u_input.b.x, 0i, 47784i), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(u_input.b, u_input.b), func_1(vec4<u32>(36469u, 2592u, 22618u, u_input.a), vec4<i32>(global0.d.x, 6251i, global0.a.x, -40245i)))), Struct_1(func_1(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, u_input.c), vec4<u32>(u_input.c, 4294967295u, 4294967295u, u_input.c)), ~vec4<i32>(u_input.b.x, 3928i, global0.e, 1i)).wwz, _wgslsmith_f_op_vec4_f32(abs(global0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -248f)), global0.d & vec2<i32>(-33675i, u_input.d), -2147483647i), global1.x), _wgslsmith_add_i32(global0.e, _wgslsmith_div_i32(-2147483647i & global0.d.x, 16634i & global0.d.x) << (reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.c, u_input.a), vec3<u32>(u_input.c, 61942u, 1u))) % 32u)), Struct_2(~u_input.c, -2147483647i, _wgslsmith_mult_vec4_i32(u_input.b, ~(~u_input.b)), Struct_1(firstTrailingBit(u_input.b.wzx), _wgslsmith_f_op_vec4_f32(ceil(global0.b)), 938f, global0.a.yx, -2147483647i), global1.x));
    let var_1 = global0.b.x;
    global1 = select(!select(vec3<bool>(!global1.x, !global1.x, any(vec3<bool>(false, var_0.e.e, false))), !(!vec3<bool>(true, global1.x, global1.x)), !(!vec3<bool>(var_0.e.e, global1.x, var_0.b.x))), !vec3<bool>(true, any(select(vec4<bool>(true, var_0.e.e, false, true), vec4<bool>(var_0.b.x, false, global1.x, var_0.b.x), global1.x)), all(!vec3<bool>(false, false, global1.x))), vec3<bool>(true, var_0.e.a < ~min(var_0.e.a, 30584u), false));
    let var_2 = Struct_1(~firstLeadingBit(u_input.b.wzw), vec4<f32>(-137f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-2487f)), 438f, global1.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -731f))), _wgslsmith_f_op_f32(sign(global0.c))), _wgslsmith_f_op_f32(f32(-1f) * -664f), vec2<i32>(9267i, -22199i), min(-_wgslsmith_div_i32(u_input.d << (u_input.c % 32u), ~global0.a.x), var_0.d));
    var_0 = Struct_3(u_input.c, vec2<bool>(var_0.b.x, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.e, var_2.e, u_input.b.x), var_2.a)) <= u_input.b.x), Struct_2(countOneBits(_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.c, var_0.e.a), ~22145u)), ~_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(var_0.e.c, u_input.b), ~37200i), (select(vec4<i32>(2822i, -4905i, global0.d.x, u_input.d), vec4<i32>(2147483647i, var_2.e, global0.e, var_0.c.c.x), global1.x) | _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -30933i, 2147483647i, var_2.e), u_input.b, vec4<i32>(-2147483647i, global0.a.x, -2147483647i, var_0.e.d.d.x))) & (vec4<i32>(0i, var_0.d, 28761i, global0.d.x) | vec4<i32>(var_2.d.x, 1i, -48494i, 24792i)), var_2, var_0.c.e), -12417i, Struct_2(_wgslsmith_dot_vec3_u32((vec3<u32>(1u, 1u, u_input.a) & vec3<u32>(1u, u_input.c, u_input.a)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 26348u, 1u), vec3<u32>(u_input.a, u_input.a, 58055u), vec3<u32>(u_input.a, u_input.c, 78458u)) % vec3<u32>(32u)), vec3<u32>(~90383u, ~var_0.a, 1u)), global0.d.x, reverseBits(-firstLeadingBit(u_input.b)), var_2, !all(!vec4<bool>(global1.x, var_0.b.x, true, false))));
    let var_3 = abs(var_0.e.c);
    var var_4 = ~(~countOneBits(~(-2147483647i)) >> (var_0.a % 32u));
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-1i, var_0.e.a);
}

