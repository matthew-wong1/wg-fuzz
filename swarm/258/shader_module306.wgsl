struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 30>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> i32 {
    var var_0 = select(false, false, all(vec3<bool>(false, _wgslsmith_add_u32(28619u, u_input.a.x) <= countOneBits(u_input.a.x), select(any(vec3<bool>(false, true, true)), select(true, false, true), true))));
    let var_1 = Struct_1(-abs(~reverseBits(vec3<i32>(u_input.b, u_input.b, u_input.b))), vec4<u32>(u_input.a.x, _wgslsmith_add_u32(1u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, 40058u, 91433u), 8956u)), ~u_input.a.x, u_input.a.x), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 0u, ~(~u_input.a.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 34623u, 4294967295u), vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x))), _wgslsmith_add_vec4_u32(~(~vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x)), ~vec4<u32>(u_input.a.x, 18576u, 4294967295u, u_input.a.x))), u_input.b);
    let var_2 = vec4<i32>(36925i, ~4695i, _wgslsmith_dot_vec3_i32(-(var_1.a ^ var_1.a), _wgslsmith_sub_vec3_i32(var_1.a, _wgslsmith_sub_vec3_i32(var_1.a, vec3<i32>(var_1.d, -41158i, u_input.b)))) ^ (-_wgslsmith_add_i32(36210i, 0i) >> (select(17327u, reverseBits(u_input.a.x), any(vec2<bool>(true, false))) % 32u)), firstTrailingBit(0i));
    let var_3 = vec4<u32>(~4714u, ~max(~var_1.b.x >> (abs(0u) % 32u), select(var_1.c.x, min(4294967295u, u_input.a.x), true)), _wgslsmith_dot_vec4_u32(var_1.c, var_1.b), ~(~select(18365u, u_input.a.x, true)));
    var var_4 = _wgslsmith_f_op_f32(-714f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(148f)))));
    return var_1.a.x;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = 1u;
    var var_1 = u_input.a;
    var var_2 = Struct_1(~vec3<i32>(firstTrailingBit(reverseBits(u_input.b)), -1i, 1i), ~countOneBits(firstTrailingBit(abs(vec4<u32>(arg_0, 33736u, 1u, 0u)))), ~_wgslsmith_add_vec4_u32(vec4<u32>(~u_input.a.x, 12149u, arg_0 | arg_0, ~arg_0), vec4<u32>(~u_input.a.x, u_input.a.x, 24390u, 300u)), _wgslsmith_sub_i32(abs(~(-2147483647i)), ~u_input.b) << (firstLeadingBit(73099u) % 32u));
    var_0 = firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.a.x, ~38749u, ~1u) >> (93084u % 32u), u_input.a.x));
    let var_3 = Struct_3(Struct_1(vec3<i32>(_wgslsmith_mult_i32(func_3(), -50091i), i32(-1i) * -1i, var_2.d), abs(_wgslsmith_div_vec4_u32(vec4<u32>(52864u, var_1.x, 4923u, arg_0), vec4<u32>(1u, u_input.a.x, var_2.c.x, u_input.a.x)) << (~var_2.b % vec4<u32>(32u))), ~vec4<u32>(var_1.x, _wgslsmith_dot_vec3_u32(u_input.a, var_2.b.wyw), ~94719u, var_2.b.x), firstTrailingBit(var_2.d)), _wgslsmith_mult_vec4_i32(~firstLeadingBit(vec4<i32>(-14223i, u_input.b, var_2.a.x, var_2.d)), _wgslsmith_div_vec4_i32(~vec4<i32>(88546i, u_input.b, -2147483647i, u_input.b), ~vec4<i32>(-9073i, u_input.b, -24684i, u_input.b))) >> (_wgslsmith_sub_vec4_u32(var_2.b, var_2.c) % vec4<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(669f * 781f), -545f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-223f * 999f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(401f, -549f)) * _wgslsmith_f_op_f32(round(-565f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1257f * 2628f) - _wgslsmith_div_f32(393f, 581f)))) * -821f), 5478u);
    return Struct_1(var_3.b.wxx, _wgslsmith_clamp_vec4_u32(~vec4<u32>(_wgslsmith_div_u32(4294967295u, 4294967295u), ~1u, 16176u, 71989u), vec4<u32>(reverseBits(abs(var_1.x)), 21060u, 1u & (13014u >> (var_2.b.x % 32u)), ~abs(arg_0)), ~reverseBits(vec4<u32>(var_2.b.x, 0u, var_1.x, u_input.a.x))), _wgslsmith_sub_vec4_u32(var_2.c, var_3.a.b), -1i | abs(_wgslsmith_sub_i32(~u_input.b, -2147483647i)));
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_3, 30>();
    var var_0 = Struct_2(!(u_input.b <= 1i), func_2(u_input.a.x), func_2(~1u));
    let var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2493f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1811f, 160f))), _wgslsmith_f_op_f32(-608f - 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(333f, 873f)))))));
    var var_2 = firstTrailingBit(select(_wgslsmith_mult_vec4_i32(vec4<i32>(select(-55748i, 2147483647i, var_0.a), _wgslsmith_sub_i32(12677i, var_0.c.a.x), select(var_0.b.d, var_0.b.d, true), var_0.b.a.x), _wgslsmith_mult_vec4_i32(vec4<i32>(27425i, var_0.b.d, -1i, var_0.c.a.x), ~vec4<i32>(var_0.c.a.x, var_0.b.a.x, -2147483647i, var_0.c.a.x))), firstTrailingBit(abs(vec4<i32>(0i, var_0.b.a.x, 1i, var_0.b.d))), !(!select(vec4<bool>(true, var_0.a, true, var_0.a), vec4<bool>(false, var_0.a, var_0.a, false), vec4<bool>(var_0.a, var_0.a, true, false)))));
    let var_3 = var_0.a;
    return func_2(var_0.c.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1(), vec4<i32>((-u_input.b << (u_input.a.x % 32u)) ^ abs(func_2(u_input.a.x).d), ~((u_input.b ^ u_input.b) & firstTrailingBit(-43992i)), abs(abs(54556i)), _wgslsmith_mod_i32(~u_input.b, u_input.b)), _wgslsmith_f_op_f32(-1544f - -850f), -456f, 4294967295u);
    var_0 = global0[_wgslsmith_index_u32(abs(~29243u), 30u)];
    var_0 = global0[_wgslsmith_index_u32(1u ^ _wgslsmith_mod_u32(~func_2(var_0.a.c.x).b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 47596u, u_input.a.x) | vec3<u32>(1287u, 13888u, var_0.a.b.x), var_0.a.b.wwx) << (_wgslsmith_dot_vec3_u32(vec3<u32>(28146u, var_0.e, u_input.a.x) << (u_input.a % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 65068u, 85676u), vec3<u32>(u_input.a.x, 0u, u_input.a.x))) % 32u)), 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(~u_input.a)), vec2<i32>(var_0.b.x, _wgslsmith_div_i32(var_0.a.a.x, -5650i)) | _wgslsmith_div_vec2_i32(vec2<i32>(12177i, 24647i) | min(vec2<i32>(u_input.b, 13738i), var_0.a.a.xx), _wgslsmith_mult_vec2_i32(var_0.a.a.xz, var_0.b.yw)), vec4<u32>(reverseBits(_wgslsmith_dot_vec4_u32(~var_0.a.c, vec4<u32>(30052u, 71402u, 0u, 23813u))), ~u_input.a.x, firstLeadingBit(~(~4294967295u)), u_input.a.x), var_0.a.a, ~21849u);
}

