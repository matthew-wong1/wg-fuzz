struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: Struct_3,
    d: i32,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: u32,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7>;

var<private> global1: array<f32, 23>;

var<private> global2: Struct_1 = Struct_1(vec4<f32>(556f, 107f, 1344f, 2205f), vec3<u32>(87688u, 12857u, 0u));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_5, arg_3: vec2<bool>) -> i32 {
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(-global2.a), select(abs(global2.b), ~_wgslsmith_add_vec3_u32(vec3<u32>(arg_2.b.b.b.x, 106262u, global2.b.x), reverseBits(global2.b)), !select(!vec3<bool>(true, arg_3.x, true), vec3<bool>(true, true, true), true)));
    return -21331i;
}

fn func_2() -> u32 {
    var var_0 = Struct_5(Struct_4(abs(func_3(u_input.c, global2.a.yxx, Struct_5(Struct_4(-50820i, 101f, global0[_wgslsmith_index_u32(47202u, 7u)], 1289i, Struct_1(global2.a, global2.b)), global0[_wgslsmith_index_u32(global2.b.x, 7u)], u_input.b, Struct_2(vec2<i32>(2147483647i, u_input.c), global1[_wgslsmith_index_u32(u_input.a.x, 23u)], Struct_1(vec4<f32>(-1000f, -2697f, -547f, global1[_wgslsmith_index_u32(global2.b.x, 23u)]), vec3<u32>(u_input.a.x, 4294967295u, 99401u)), vec3<f32>(-1106f, 246f, global1[_wgslsmith_index_u32(24597u, 23u)]), vec3<i32>(-71611i, u_input.c, u_input.c)), false), vec2<bool>(false, false)) ^ (i32(-1i) * -1i)), global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)], 2147483647i, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(47773u, 23u)], 1768f, -385f, global2.a.x) * vec4<f32>(global2.a.x, global1[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(global2.b.x, 23u)], -349f)), global2.b << (vec3<u32>(106026u, 47746u, u_input.a.x) % vec3<u32>(32u)))), global0[_wgslsmith_index_u32(countOneBits(~25244u), 7u)], ~(~select(4294967295u, global2.b.x, any(vec2<bool>(false, true)))), Struct_2(firstLeadingBit(_wgslsmith_sub_vec2_i32(-vec2<i32>(2147483647i, -1i), -vec2<i32>(-2147483647i, u_input.c))), -1175f, Struct_1(global2.a, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 0u, global2.b.x), abs(global2.b))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.x, global2.a.x, global2.a.x) - vec3<f32>(global1[_wgslsmith_index_u32(0u, 23u)], 1581f, global1[_wgslsmith_index_u32(4294967295u, 23u)]))), global2.a.wxw)), ~(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, u_input.c, -1i), vec3<i32>(0i, 6683i, u_input.c)) << (~global2.b % vec3<u32>(32u)))), !all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true))) | (~_wgslsmith_add_i32(u_input.c, -10024i) <= -u_input.c));
    let var_1 = select(!(!(!(!vec3<bool>(var_0.e, var_0.e, var_0.e)))), select(select(!select(vec3<bool>(var_0.e, false, var_0.e), vec3<bool>(false, var_0.e, true), true), vec3<bool>(true, true, true), u_input.c > -1271i), vec3<bool>(true, any(vec3<bool>(true, false, var_0.e)), any(select(vec4<bool>(var_0.e, var_0.e, false, var_0.e), vec4<bool>(var_0.e, true, var_0.e, var_0.e), vec4<bool>(var_0.e, true, false, false)))), vec3<bool>(false, var_0.e, false)), vec3<bool>(all(!vec4<bool>(true, var_0.e, var_0.e, var_0.e)), false, any(vec2<bool>(405f > global2.a.x, true))));
    var var_2 = Struct_2(vec2<i32>(var_0.b.a, min(~var_0.a.a ^ -2147483647i, var_0.a.d)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-659f + _wgslsmith_f_op_f32(trunc(global2.a.x))))), var_0.b.b, vec3<f32>(global1[_wgslsmith_index_u32((~var_0.d.c.b.x << (abs(14473u) % 32u)) | global2.b.x, 23u)], var_0.d.b, global2.a.x), -vec3<i32>(reverseBits(var_0.a.c.a), _wgslsmith_mod_i32(-2147483647i, 1i), 0i));
    var var_3 = vec4<i32>(_wgslsmith_mult_i32(var_2.a.x, ~func_3(-1i, vec3<f32>(-1592f, var_2.c.a.x, global2.a.x), Struct_5(var_0.a, global0[_wgslsmith_index_u32(38296u, 7u)], u_input.b, var_0.d, true), var_1.yy)), func_3(i32(-1i) * -u_input.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.b, 610f, var_2.b)) + var_2.d), Struct_5(Struct_4(var_0.d.a.x, var_0.a.c.b.a.x, var_0.a.c, -2147483647i, Struct_1(var_0.d.c.a, global2.b)), Struct_3(var_2.a.x, var_2.c, var_0.a.c.b.b.x, global2.b.x), var_2.c.b.x, var_0.d, false), !select(vec2<bool>(true, false), vec2<bool>(false, true), var_0.e)), var_0.a.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 1i, 27077i & var_0.a.a, -var_0.a.c.a), ~(-vec4<i32>(var_0.b.a, -17928i, var_0.b.a, var_2.e.x)))) | (_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.d.a.x, var_0.a.c.a, var_2.a.x, 38350i), vec4<i32>(var_0.a.a, var_2.e.x, -52334i, -2147483647i)), min(vec4<i32>(u_input.c, var_2.a.x, var_0.d.e.x, -2147483647i), vec4<i32>(var_0.a.a, u_input.c, 39590i, 1i))), -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, 8197i, var_0.a.d, 2147483647i), vec4<i32>(var_2.a.x, var_2.e.x, 1i, 0i))) | -(~(~vec4<i32>(var_2.a.x, -1i, u_input.c, 14958i))));
    var_3 = min(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(~(-vec4<i32>(27012i, -25694i, var_2.e.x, var_0.b.a)), vec4<i32>(_wgslsmith_div_i32(var_0.a.c.a, var_2.e.x), abs(var_0.d.a.x), firstLeadingBit(-2147483647i), firstLeadingBit(var_2.e.x))), firstLeadingBit(-vec4<i32>(var_0.a.d, 1i, -1i, u_input.c)) ^ vec4<i32>(~(-2147483647i), var_0.b.a, _wgslsmith_mult_i32(var_3.x, -47909i), -1i)), firstTrailingBit(vec4<i32>(-21145i, u_input.c, _wgslsmith_mod_i32(_wgslsmith_add_i32(-1i, var_0.b.a), -var_3.x), i32(-1i) * -33163i)));
    return u_input.a.x;
}

fn func_1(arg_0: Struct_1) -> Struct_4 {
    global2 = arg_0;
    let var_0 = 1u;
    let var_1 = firstTrailingBit(~((max(global2.b.xy, vec2<u32>(0u, 1u)) | vec2<u32>(0u, global2.b.x)) << ((select(vec2<u32>(4294967295u, u_input.b), u_input.a, vec2<bool>(false, false)) >> (arg_0.b.xz % vec2<u32>(32u))) % vec2<u32>(32u))));
    let var_2 = _wgslsmith_clamp_vec3_u32(global2.b ^ vec3<u32>(_wgslsmith_add_u32(1u, ~4294967295u), arg_0.b.x, func_2()), reverseBits(firstLeadingBit(vec3<u32>(~var_1.x, 4294967295u, u_input.b))), ~abs(arg_0.b));
    global1 = array<f32, 23>();
    return Struct_4(u_input.c, -110f, global0[_wgslsmith_index_u32(min(var_1.x, ~select(select(global2.b.x, var_1.x, true), firstTrailingBit(22748u), any(vec2<bool>(false, false)))), 7u)], ~u_input.c, arg_0);
}

fn func_4(arg_0: u32, arg_1: Struct_4) -> bool {
    var var_0 = -1027f;
    let var_1 = Struct_5(Struct_4(1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(229f, -427f, all(vec4<bool>(false, false, false, false))))), func_1(Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1[_wgslsmith_index_u32(56764u, 23u)], 856f, global1[_wgslsmith_index_u32(arg_0, 23u)], -920f), vec4<f32>(global2.a.x, -857f, 426f, -291f))), global2.b)).c, u_input.c, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, -1018f, 1000f, -1856f)), _wgslsmith_add_vec3_u32(func_1(arg_1.e).c.b.b, ~arg_1.e.b))), Struct_3(-reverseBits(arg_1.c.a), Struct_1(arg_1.c.b.a, ~arg_1.c.b.b), ~_wgslsmith_add_u32(~156422u, _wgslsmith_mod_u32(u_input.a.x, 79424u)), 0u), arg_1.e.b.x, Struct_2(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(select(vec2<i32>(16188i, -47153i), vec2<i32>(arg_1.a, -25456i), false), -vec2<i32>(u_input.c, -2147483647i)), _wgslsmith_sub_vec2_i32(abs(vec2<i32>(-22925i, 1i)), -vec2<i32>(6071i, 1i)), -(~vec2<i32>(arg_1.c.a, u_input.c))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, 1u) ^ (0u << (arg_1.c.c % 32u)), func_1(arg_1.c.b).e.b.x), 23u)], arg_1.c.b, _wgslsmith_f_op_vec3_f32(arg_1.e.a.xzy * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global2.a.www, vec3<f32>(arg_1.e.a.x, 1000f, 430f)) + _wgslsmith_f_op_vec3_f32(arg_1.c.b.a.wzw - vec3<f32>(-362f, arg_1.c.b.a.x, 1000f)))), reverseBits(select(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, -1i, u_input.c), vec3<i32>(-2147483647i, 0i, u_input.c)), vec3<i32>(u_input.c, u_input.c, 15767i), true))), all(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false)), vec3<bool>(true, true, true), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false)))));
    var var_2 = 13359i;
    let var_3 = var_1.a.e.b;
    global1 = array<f32, 23>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(global2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.b.b.a.x, -2138f)))))) < global2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(select(any(vec3<bool>(any(vec2<bool>(false, false)), true, true)), true, any(vec4<bool>(false, false, all(vec3<bool>(false, true, false)), false))), select(false, true, any(vec3<bool>(true, false, true)) & func_4(8873u, func_1(Struct_1(global2.a, global2.b)))));
    var var_1 = -(abs(u_input.c) >> (~global2.b.x % 32u));
    var var_2 = func_1(func_1(func_1(func_1(Struct_1(global2.a, vec3<u32>(4294967295u, global2.b.x, global2.b.x))).c.b).e).e).c.b;
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global2.a.xyz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1389f, -1625f))))) + _wgslsmith_f_op_vec3_f32(min(global2.a.ywx, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.a.x, global1[_wgslsmith_index_u32(1u, 23u)], var_2.a.x))), var_2.a.zxx)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-202f - -630f)), var_2.a.x, var_2.a.x)));
    let var_4 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.a), func_1(Struct_1(global2.a, _wgslsmith_add_vec3_u32(global2.b, vec3<u32>(0u, 4294967295u, u_input.a.x)))).e.a), global2.b);
    var var_5 = max(abs(select(vec4<i32>(-1i, -18640i, u_input.c, u_input.c), firstTrailingBit(vec4<i32>(u_input.c, -1i, 18393i, u_input.c)), select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, false, true, var_0.x), var_0.x))), -vec4<i32>(_wgslsmith_sub_i32(1i, u_input.c), 2147483647i, ~79014i, firstLeadingBit(u_input.c))) | select(select(_wgslsmith_add_vec4_i32(max(vec4<i32>(u_input.c, u_input.c, u_input.c, 2147483647i), vec4<i32>(u_input.c, -4837i, u_input.c, u_input.c)), ~vec4<i32>(u_input.c, u_input.c, 1i, u_input.c)), (vec4<i32>(u_input.c, u_input.c, -34059i, -46603i) << (vec4<u32>(var_2.b.x, 4294967295u, var_2.b.x, var_2.b.x) % vec4<u32>(32u))) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, 39020i, 0i, -11459i), vec4<i32>(1041i, u_input.c, u_input.c, 2147483647i)), true), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, -2147483647i, 1i, u_input.c), vec4<i32>(2147483647i, 1i, u_input.c, u_input.c)), vec4<i32>(-1i, u_input.c, 1i, -1i) << (~vec4<u32>(global2.b.x, var_2.b.x, 132428u, 123215u) % vec4<u32>(32u))), vec4<bool>(true, true, var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(27683i, u_input.c, u_input.c)) <= func_1(Struct_1(global2.a, global2.b)).d));
    global0 = array<Struct_3, 7>();
    global0 = array<Struct_3, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(func_1(var_4).c.b.b.x | max(~u_input.a.x, ~_wgslsmith_div_u32(var_2.b.x, 0u)), vec2<i32>(var_5.x >> (countOneBits(0u) % 32u), -var_5.x), var_2.a.zy, -_wgslsmith_add_vec4_i32(vec4<i32>(1i, _wgslsmith_dot_vec3_i32(var_5.zxw, vec3<i32>(2147483647i, var_5.x, 37852i)), func_1(Struct_1(global2.a, vec3<u32>(var_2.b.x, global2.b.x, 1u))).c.a, _wgslsmith_mod_i32(var_5.x, -8998i)), ~vec4<i32>(-36787i, -36539i, u_input.c, 0i) << (countOneBits(vec4<u32>(u_input.a.x, 1u, 41308u, 35110u)) % vec4<u32>(32u))));
}

