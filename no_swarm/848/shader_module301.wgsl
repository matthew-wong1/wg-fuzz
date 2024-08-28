struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: u32, arg_3: u32) -> f32 {
    var var_0 = min(_wgslsmith_sub_u32(0u & min(firstLeadingBit(u_input.b.x), 24895u), countOneBits(_wgslsmith_sub_u32(arg_2, 1u))), arg_2);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1968f, -439f)))), -1000f);
    var var_2 = vec2<u32>(u_input.b.x, arg_2) >> (_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, arg_1.x), ~vec2<u32>(13513u, 0u)), vec2<u32>(0u, 56688u << (0u % 32u))), vec2<u32>(~(~arg_1.x), 12958u)) % vec2<u32>(32u));
    let var_3 = _wgslsmith_f_op_f32(832f * 1246f);
    var var_4 = Struct_1(u_input.b, arg_1.x);
    return 1143f;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-593f, -1397f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(vec3<i32>(u_input.c, u_input.a, u_input.c), vec4<i32>(-1i, 1i, 1i, 1i), 30484i), Struct_2(vec3<i32>(u_input.c, u_input.c, 2147483647i), vec4<i32>(-1i, 9228i, -24394i, 24566i), 33808i), Struct_2(vec3<i32>(u_input.a, 24488i, u_input.c), vec4<i32>(-25899i, u_input.a, u_input.a, u_input.c), u_input.a), Struct_2(vec3<i32>(u_input.a, 2147483647i, -1i), vec4<i32>(u_input.c, -43951i, -51022i, u_input.a), u_input.c), Struct_2(vec3<i32>(2147483647i, u_input.c, u_input.c), vec4<i32>(47741i, u_input.a, 75866i, -2147483647i), 24319i)), vec2<u32>(25607u, u_input.b.x) << (vec2<u32>(0u, u_input.b.x) % vec2<u32>(32u)), _wgslsmith_mult_u32(u_input.b.x, u_input.b.x), 0u ^ u_input.b.x)))));
    var var_1 = Struct_1(u_input.b, u_input.b.x);
    let var_2 = (~(~(0u >> (u_input.b.x % 32u))) > min(var_1.b, var_1.a.x)) | true;
    var var_3 = false;
    var var_4 = -29865i;
    return Struct_2(_wgslsmith_add_vec3_i32(vec3<i32>(max(u_input.a, u_input.c) << (~0u % 32u), _wgslsmith_div_i32(u_input.c, ~(-30238i)), u_input.a & 1i), -vec3<i32>(-1i ^ u_input.c, -1i & u_input.c, reverseBits(u_input.c))), _wgslsmith_mod_vec4_i32(-vec4<i32>(-12804i, -5589i, _wgslsmith_mult_i32(-2147483647i, u_input.a), _wgslsmith_div_i32(u_input.c, u_input.a)), vec4<i32>(~(-58529i << (1u % 32u)), -8766i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, u_input.b.x, 37049u, 1858u), vec4<u32>(u_input.b.x, var_1.a.x, u_input.b.x, var_1.b)) % 32u), 1i, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, u_input.c, u_input.a, u_input.a), firstLeadingBit(vec4<i32>(u_input.c, u_input.a, u_input.a, u_input.a))))), _wgslsmith_dot_vec2_i32(~max(~vec2<i32>(u_input.c, -75254i), vec2<i32>(u_input.c, u_input.c)), _wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(u_input.a, 47828i)) << (~vec2<u32>(var_1.b, 1u) % vec2<u32>(32u)), vec2<i32>(max(u_input.a, u_input.a), u_input.a))));
}

fn func_1(arg_0: f32) -> vec4<u32> {
    let var_0 = Struct_3(func_2(), Struct_2(vec3<i32>(779i, ~_wgslsmith_div_i32(0i, 47285i), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c, 1i), -vec2<i32>(u_input.a, u_input.a))), vec4<i32>(func_2().a.x, i32(-1i) * -u_input.c, -u_input.a, -u_input.c), 33164i), func_2(), func_2(), Struct_2(min(vec3<i32>(u_input.c, 1i, ~(-53577i)), firstLeadingBit(vec3<i32>(-1i, 2147483647i, u_input.c))), -vec4<i32>(2147483647i, firstLeadingBit(u_input.c), -23514i, u_input.c), u_input.a));
    let var_1 = vec2<u32>(3673u, ~(~(u_input.b.x << (abs(u_input.b.x) % 32u))));
    let var_2 = _wgslsmith_f_op_f32(arg_0 + arg_0);
    var var_3 = select(!(!select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true))), vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, arg_0 >= arg_0)), vec2<bool>(any(vec4<bool>(true, false, true, false)), all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), false))), vec2<bool>(true, true)));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1584f, -1343f))) + vec2<f32>(588f, arg_0))))));
    return _wgslsmith_add_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(21411u, 4294967295u, u_input.b.x)) ^ u_input.b.x, u_input.b.x, var_1.x >> (firstTrailingBit(4294967295u) % 32u), u_input.b.x), select(countOneBits(select(vec4<u32>(u_input.b.x, 0u, 29166u, var_1.x), vec4<u32>(33545u, u_input.b.x, u_input.b.x, var_1.x), false) >> (vec4<u32>(u_input.b.x, 33225u, u_input.b.x, var_1.x) % vec4<u32>(32u))), ~(vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x) | ~vec4<u32>(u_input.b.x, 61385u, var_1.x, u_input.b.x)), !(1i >= u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(u_input.b.x, ~0u);
    var var_1 = func_1(-520f);
    let var_2 = Struct_3(Struct_2(select(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(2147483647i, -2147483647i, 32444i)), abs(vec3<i32>(u_input.c, 10331i, 1i))), firstLeadingBit(-vec3<i32>(12498i, 0i, -40669i)), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(u_input.a, u_input.c), ~1i, func_2().c, _wgslsmith_clamp_i32(-17898i, -1i, u_input.c)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-7111i, u_input.a, -6412i, -9061i), vec4<i32>(u_input.c, u_input.a, 0i, u_input.a))), 2147483647i), func_2(), Struct_2(vec3<i32>(-_wgslsmith_sub_i32(u_input.a, u_input.a), (u_input.c >> (u_input.b.x % 32u)) | ~u_input.c, ~1i), ~_wgslsmith_div_vec4_i32(select(vec4<i32>(u_input.c, 1i, -12806i, 1i), vec4<i32>(u_input.c, -2147483647i, u_input.c, 2967i), true), -vec4<i32>(-29616i, 71834i, u_input.a, u_input.a)), i32(-1i) * -6005i), Struct_2(_wgslsmith_mod_vec3_i32(func_2().a, -func_2().a), _wgslsmith_clamp_vec4_i32(~(vec4<i32>(u_input.a, 24232i, -2147483647i, 2147483647i) ^ vec4<i32>(u_input.c, u_input.a, u_input.c, u_input.a)), func_2().b >> (func_1(-1312f) % vec4<u32>(32u)), max(select(vec4<i32>(u_input.c, 0i, 35574i, 25569i), vec4<i32>(u_input.c, -1i, 2147483647i, u_input.c), vec4<bool>(false, true, true, true)), vec4<i32>(-17528i, u_input.a, 1i, -42806i))), ~u_input.c), Struct_2(vec3<i32>(1i, ~u_input.a, reverseBits(0i)) & _wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(32824i, u_input.c, u_input.a)), ~vec3<i32>(-2147483647i, u_input.c, u_input.c)), _wgslsmith_sub_vec4_i32(firstLeadingBit(-vec4<i32>(18811i, u_input.c, -2147483647i, u_input.a)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -21846i, -20283i, u_input.c), ~vec4<i32>(u_input.a, u_input.a, u_input.c, u_input.a), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, -6453i, -2147483647i, u_input.a), vec4<i32>(u_input.a, -22341i, -39357i, 74410i)))), u_input.c));
    let var_3 = var_2;
    var_1 = _wgslsmith_add_vec4_u32(firstTrailingBit(min(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 22524u) << (vec4<u32>(45226u, 4294967295u, 0u, u_input.b.x) % vec4<u32>(32u)), select(vec4<u32>(var_0, 53059u, var_0, var_0), vec4<u32>(var_1.x, 53061u, 0u, 4294967295u), vec4<bool>(true, false, false, true)))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(21591u, _wgslsmith_sub_u32(var_1.x, var_0), ~18496u, var_0 >> (var_1.x % 32u)), vec4<u32>(var_0, ~u_input.b.x, var_1.x, u_input.b.x | u_input.b.x)) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(108660u, firstTrailingBit(~4294967295u), ~748u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 57597u), vec2<u32>(4294967295u, 1u) & vec2<u32>(var_0, 0u))), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, var_0, 39851u, 31341u), vec4<u32>(u_input.b.x, var_1.x, var_1.x, u_input.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~18146u, vec2<u32>(var_1.x, u_input.b.x), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(var_1.wx, u_input.b.xz) ^ firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 4294967295u), u_input.b.zx)), _wgslsmith_sub_vec2_u32(~(u_input.b.xz >> (vec2<u32>(1u, u_input.b.x) % vec2<u32>(32u))), vec2<u32>(select(var_1.x, 0u, false), 36678u & u_input.b.x))), 23404i, min(abs(~(~var_3.a.b)), _wgslsmith_mod_vec4_i32(~var_2.e.b << (vec4<u32>(71630u, 13784u, u_input.b.x, var_1.x) % vec4<u32>(32u)), select(firstLeadingBit(vec4<i32>(-1i, u_input.a, 0i, -2147483647i)), -vec4<i32>(var_3.c.c, -35748i, -7574i, 14073i), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true))))));
}

