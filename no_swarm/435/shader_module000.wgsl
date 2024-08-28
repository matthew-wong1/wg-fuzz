struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 8>;

var<private> global1: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(-2417f, -1778f, 473f), vec3<f32>(303f, 919f, 1532f), vec3<f32>(-104f, -1616f, 748f), vec3<f32>(202f, 962f, -1000f), vec3<f32>(1000f, 1310f, 125f), vec3<f32>(-563f, 1318f, -318f), vec3<f32>(-1299f, -759f, 1712f), vec3<f32>(826f, 1148f, -821f), vec3<f32>(-747f, -1266f, -350f), vec3<f32>(720f, -345f, 2214f), vec3<f32>(1311f, -1105f, -1153f), vec3<f32>(986f, 253f, -309f), vec3<f32>(-731f, -316f, -714f), vec3<f32>(1398f, -1368f, 925f), vec3<f32>(449f, -514f, 446f), vec3<f32>(324f, 385f, -766f), vec3<f32>(1000f, -2065f, -1561f), vec3<f32>(-822f, -125f, -2284f), vec3<f32>(503f, -1000f, 295f), vec3<f32>(-1019f, -1697f, -273f), vec3<f32>(-2515f, 624f, 387f));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2) -> vec3<u32> {
    let var_0 = min(vec3<i32>(0i, arg_0.b.c.x | _wgslsmith_mod_i32(reverseBits(-43453i), 20405i), (1i | _wgslsmith_mod_i32(28844i, u_input.a)) >> (~_wgslsmith_clamp_u32(1u, 11267u, 0u) % 32u)), min(vec3<i32>(14909i, min(arg_0.b.c.x, -1i), u_input.a), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, arg_0.b.c.x, arg_0.b.c.x), vec3<i32>(-18723i, u_input.a, arg_0.b.c.x)), -vec3<i32>(u_input.a, -96482i, 37305i)) | -vec3<i32>(u_input.a, arg_0.b.c.x, arg_0.b.c.x)));
    global0 = array<vec4<f32>, 8>();
    let var_1 = arg_0.b;
    let var_2 = Struct_1(vec4<bool>(true, false, !(-142f >= _wgslsmith_f_op_f32(sign(-161f))), !(!(!arg_1.a.x))), any(!select(var_1.a.xx, vec2<bool>(arg_1.a.x, arg_0.b.a.x), false)) && arg_2.a.x, vec2<i32>(abs(~abs(var_1.c.x)), firstTrailingBit(~(~0i))));
    let var_3 = var_1;
    return ~vec3<u32>(~countOneBits(0u), max(abs(max(1u, 12755u)), ~reverseBits(47179u)), 69125u);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: bool) -> bool {
    var var_0 = Struct_3(!arg_3, Struct_1(arg_2.a, true, vec2<i32>(-1i) * -min(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(-750i, -21201i))), Struct_2(select(arg_2.a, select(select(arg_2.a, arg_2.a, arg_2.a), vec4<bool>(arg_3, true, false, true), all(vec4<bool>(true, arg_2.a.x, arg_3, true))), !all(arg_2.a.wz))));
    var var_1 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_add_u32(~arg_1.x, 1u), 1u, 4294967295u), countOneBits(_wgslsmith_sub_vec3_u32(reverseBits(arg_1), func_3(Struct_3(arg_3, Struct_1(var_0.b.a, arg_3, var_0.b.c), var_0.c), var_0.c, arg_2))));
    global1 = array<vec3<f32>, 21>();
    var_1 = arg_1;
    let var_2 = -var_0.b.c;
    return arg_2.a.x;
}

fn func_1() -> u32 {
    var var_0 = Struct_1(!select(vec4<bool>(any(vec2<bool>(true, false)), true, func_2(vec4<u32>(1u, 23877u, 81875u, 0u), vec3<u32>(4294967295u, 4294967295u, 1u), Struct_2(vec4<bool>(true, false, true, true)), true), all(vec4<bool>(false, false, false, false))), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true), !func_2(vec4<u32>(1u, 1u, 1u, 1u), abs(vec3<u32>(15467u, 16308u, 35646u)), Struct_2(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true))), select(_wgslsmith_sub_vec2_i32(vec2<i32>(17595i, u_input.a), vec2<i32>(-1i, u_input.a)), min(select(vec2<i32>(-63640i, -31582i), vec2<i32>(1i, 2147483647i), true), ~vec2<i32>(-1i, 0i)), all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true))) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)));
    let var_1 = max(~_wgslsmith_mult_vec3_i32(-vec3<i32>(var_0.c.x, u_input.a, var_0.c.x), ~vec3<i32>(u_input.a, u_input.a, var_0.c.x)) | vec3<i32>(-1i, countOneBits(reverseBits(var_0.c.x)), ~_wgslsmith_mult_i32(var_0.c.x, -1i)), select(vec3<i32>(_wgslsmith_div_i32(2147483647i, -13105i), 25693i, -27708i), select(select(vec3<i32>(var_0.c.x, var_0.c.x, -2147483647i), vec3<i32>(u_input.a, var_0.c.x, -17387i), vec3<bool>(true, var_0.b, var_0.a.x)), abs(vec3<i32>(1491i, u_input.a, u_input.a)), var_0.c.x == -1i) | select(vec3<i32>(-844i, u_input.a, 2147483647i), select(vec3<i32>(var_0.c.x, u_input.a, var_0.c.x), vec3<i32>(u_input.a, 0i, u_input.a), vec3<bool>(false, var_0.a.x, var_0.a.x)), var_0.a.x), any(select(!var_0.a, select(vec4<bool>(var_0.b, false, true, true), var_0.a, true), select(vec4<bool>(true, false, var_0.b, var_0.a.x), var_0.a, vec4<bool>(false, true, var_0.a.x, true))))));
    let var_2 = Struct_1(select(!select(!vec4<bool>(var_0.a.x, false, false, var_0.a.x), var_0.a, vec4<bool>(true, var_0.b, var_0.a.x, true)), select(select(select(vec4<bool>(true, var_0.a.x, true, true), var_0.a, var_0.a.x), var_0.a, var_0.a), !(!vec4<bool>(true, var_0.b, var_0.b, false)), false), true | (select(true, var_0.a.x, var_0.b) & var_0.a.x)), false, abs(var_0.c));
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-437f, -363f)))))), _wgslsmith_div_vec2_f32(vec2<f32>(-173f, _wgslsmith_f_op_f32(-119f * _wgslsmith_f_op_f32(step(-295f, -123f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2029f, 443f))), vec2<f32>(_wgslsmith_f_op_f32(-1694f - 627f), _wgslsmith_f_op_f32(abs(-1839f))))), vec2<bool>(!var_2.b, var_0.a.x)));
    global0 = array<vec4<f32>, 8>();
    return ~_wgslsmith_mult_u32(1u, reverseBits(1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(~(~1u >> (select(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(53585u, 4294967295u, 25708u), vec3<u32>(53920u, 56134u, 14221u)), true) % 32u)), 8u)]);
    let var_1 = max(~vec4<u32>(firstLeadingBit(~1u), max(~4294967295u, func_1()), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 99491u), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 56420u), vec2<u32>(1u, 1u))), countOneBits(_wgslsmith_div_u32(30823u, 1u))), ~max(~(~vec4<u32>(0u, 0u, 13804u, 25297u)), vec4<u32>(1u, ~21998u, 1u, countOneBits(1u))));
    let var_2 = true;
    let var_3 = Struct_1(!select(vec4<bool>(true, true, true, true), vec4<bool>(var_2, false, var_2, false), !(!vec4<bool>(var_2, var_2, false, true))), var_2, vec2<i32>(_wgslsmith_sub_i32(abs(_wgslsmith_mod_i32(u_input.a, 1i)), _wgslsmith_add_i32(-u_input.a, 12930i)), u_input.a));
    global1 = array<vec3<f32>, 21>();
    let var_4 = Struct_2(var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(-1i) * -vec4<i32>(u_input.a, var_3.c.x, u_input.a, u_input.a)), countOneBits(~32673u), vec2<f32>(-1948f, -277f));
}

