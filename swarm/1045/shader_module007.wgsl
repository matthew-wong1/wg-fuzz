struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<bool>,
    d: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 13417u;

var<private> global1: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(vec3<i32>(26814i, -1i, -20907i)), Struct_4(vec3<i32>(2147483647i, -71949i, -17131i)), Struct_4(vec3<i32>(-43010i, 38524i, 1i)), Struct_4(vec3<i32>(-1i, 15190i, -39522i)), Struct_4(vec3<i32>(i32(-2147483648), -5658i, -1i)), Struct_4(vec3<i32>(7945i, 69791i, -21868i)), Struct_4(vec3<i32>(2147483647i, -21019i, 1i)), Struct_4(vec3<i32>(0i, 29920i, 1i)), Struct_4(vec3<i32>(2147483647i, -25412i, -11609i)), Struct_4(vec3<i32>(i32(-2147483648), -5490i, 10582i)), Struct_4(vec3<i32>(1i, 17668i, i32(-2147483648))), Struct_4(vec3<i32>(34958i, 233i, -1i)), Struct_4(vec3<i32>(2147483647i, -32247i, 23924i)), Struct_4(vec3<i32>(2147483647i, -6659i, 0i)), Struct_4(vec3<i32>(0i, 1i, 1i)), Struct_4(vec3<i32>(1i, 0i, -34557i)), Struct_4(vec3<i32>(4734i, -2031i, 27550i)), Struct_4(vec3<i32>(i32(-2147483648), 2147483647i, 21978i)), Struct_4(vec3<i32>(-34606i, 2147483647i, -32044i)), Struct_4(vec3<i32>(i32(-2147483648), i32(-2147483648), 38550i)), Struct_4(vec3<i32>(42297i, i32(-2147483648), i32(-2147483648))), Struct_4(vec3<i32>(27730i, 9440i, -738i)), Struct_4(vec3<i32>(-2564i, 1i, -22000i)), Struct_4(vec3<i32>(12307i, 0i, -1i)));

var<private> global2: array<vec3<i32>, 15>;

var<private> global3: array<Struct_3, 1>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-arg_1.zxx);
    let var_1 = 145f;
    return _wgslsmith_dot_vec2_u32(arg_0.xy, countOneBits(vec2<u32>((arg_0.x & 1u) | 1u, abs(~arg_0.x))));
}

fn func_2() -> Struct_1 {
    global3 = array<Struct_3, 1>();
    global1 = array<Struct_4, 24>();
    var var_0 = -1231f;
    var var_1 = Struct_3(~vec2<u32>(1u, 1u), Struct_1(vec2<u32>(_wgslsmith_sub_u32(51983u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 122573u, 4294967295u, 63896u), vec4<u32>(75395u, 71390u, 88254u, 26912u))), 74404u), _wgslsmith_sub_vec4_u32(vec4<u32>(func_3(vec3<u32>(25657u, 20489u, 25539u), vec4<f32>(-379f, 832f, 1435f, -153f), u_input.a.zz), 0u >> (0u % 32u), ~1u, ~4294967295u), firstLeadingBit(firstTrailingBit(vec4<u32>(59412u, 4294967295u, 91630u, 51897u)))), countOneBits(vec3<u32>(1u, 1u, 1u)), ~vec4<i32>(u_input.a.x, -2147483647i, -24731i, u_input.a.x) & _wgslsmith_add_vec4_i32(-vec4<i32>(u_input.a.x, 9429i, u_input.a.x, -18253i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 0i, u_input.a.x, 12997i)))), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_add_u32(min(4294967295u, 1u), countOneBits(21820u)), max(~52984u, abs(0u)), 1u, ~18653u), _wgslsmith_mod_vec4_u32(min(vec4<u32>(1u, 0u, 1u, 0u), select(vec4<u32>(36741u, 1u, 0u, 88855u), vec4<u32>(4294967295u, 11482u, 88559u, 4698u), true)), ~vec4<u32>(46638u, 1u, 0u, 7502u)), vec4<u32>(1u, 1u, 1u, 1u)));
    global1 = array<Struct_4, 24>();
    return Struct_1(vec2<u32>(6890u, abs(_wgslsmith_dot_vec4_u32(var_1.b.b, vec4<u32>(4294967295u, 31041u, var_1.c.x, 35435u)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c.x, 4067u, var_1.a.x, var_1.a.x), var_1.b.b) % 32u))), var_1.c | ~var_1.c, _wgslsmith_mult_vec3_u32(var_1.b.c << (vec3<u32>(var_1.b.c.x, var_1.a.x, var_1.b.a.x) % vec3<u32>(32u)), var_1.c.xzx) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(76819u, var_1.c.x | var_1.b.a.x, firstLeadingBit(1u)), firstTrailingBit(var_1.b.b.yxz)), vec4<i32>(-1i, _wgslsmith_sub_i32(u_input.a.x, max(u_input.a.x, var_1.b.d.x) << (_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c.x, var_1.c.x, var_1.c.x), var_1.b.b.wyx) % 32u)), u_input.a.x, -(~2147483647i)));
}

fn func_1() -> i32 {
    var var_0 = func_2();
    let var_1 = var_0.d.x;
    let var_2 = all(select(vec3<bool>(true || any(vec4<bool>(true, false, false, true)), true, (4294967295u >> (var_0.c.x % 32u)) == ~28741u), vec3<bool>(true, false, true), true));
    var var_3 = select(vec4<bool>(false, var_2, !(var_2 & var_2) || false, !(!any(vec4<bool>(false, var_2, var_2, true)))), vec4<bool>(var_2, var_2 & var_2, var_2, u_input.a.x < abs(44909i)), vec4<bool>(select(true, any(!vec2<bool>(var_2, var_2)), false), var_2, false, var_2));
    global1 = array<Struct_4, 24>();
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -208f)), Struct_1(~(~reverseBits(vec2<u32>(5440u, 0u))), ~vec4<u32>(1u, 1u, 1u, 1u), abs(~vec3<u32>(1u, 1u, 1u)), vec4<i32>(1i, _wgslsmith_clamp_i32(i32(-1i) * -22259i, _wgslsmith_sub_i32(u_input.a.x, 63260i), countOneBits(-2147483647i)), u_input.a.x, _wgslsmith_div_i32(u_input.a.x, 1i))), !vec3<bool>((-20496i | u_input.a.x) != ~u_input.a.x, false, all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), false))), abs(func_1()));
    var var_1 = Struct_4(_wgslsmith_mult_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.b.d.x, -2147483647i, var_0.d), global2[_wgslsmith_index_u32(43514u, 15u)]), u_input.a) | -vec3<i32>(i32(-1i) * -1i, var_0.b.d.x, ~1i));
    var var_2 = Struct_4(reverseBits(~u_input.a) << ((~var_0.b.c | vec3<u32>(var_0.b.c.x, select(9152u, var_0.b.b.x, false), 30519u)) % vec3<u32>(32u)));
    let var_3 = select(select(select(!var_0.c.zz, select(var_0.c.xy, var_0.c.xz, select(vec2<bool>(var_0.c.x, var_0.c.x), vec2<bool>(false, var_0.c.x), var_0.c.yx)), var_0.c.x), !var_0.c.zz, !any(var_0.c.yx)), select(select(var_0.c.yy, vec2<bool>(var_0.c.x, any(vec4<bool>(var_0.c.x, var_0.c.x, true, false))), any(!var_0.c)), select(vec2<bool>(var_0.a <= 104f, true), vec2<bool>(any(vec3<bool>(false, false, var_0.c.x)), true), var_0.c.x), select(!select(var_0.c.xx, vec2<bool>(true, false), vec2<bool>(var_0.c.x, var_0.c.x)), vec2<bool>(true, var_1.a.x >= var_1.a.x), true)), !var_0.c.zy);
    let var_4 = var_0.b.c.x;
    var var_5 = ~vec3<u32>(max(0u, 4294967295u | ~var_0.b.a.x), var_0.b.c.x, firstLeadingBit(1u));
    var var_6 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.a, -104f, 207f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(502f, -282f, 422f), vec3<f32>(var_0.a, var_0.a, var_0.a), var_0.c))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-126f, var_0.a, -428f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, 409f))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.a), -739f, -1000f))), _wgslsmith_add_u32(var_0.b.b.x, 1u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), 1074f) + 297f), vec3<i32>(var_1.a.x, 3912i, var_1.a.x), select(_wgslsmith_add_vec4_u32(abs(vec4<u32>(var_0.b.b.x, var_0.b.c.x, 47721u, 1u)), firstTrailingBit(var_6.b)) | ~(var_0.b.b | var_6.b), select(var_6.b, vec4<u32>(countOneBits(1u), var_0.b.a.x, 0u, 0u), vec4<bool>(!var_0.c.x, var_0.c.x, true, !var_0.c.x)), !all(select(vec4<bool>(true, false, var_3.x, true), vec4<bool>(var_3.x, false, var_0.c.x, false), vec4<bool>(true, var_0.c.x, var_0.c.x, true)))));
}

