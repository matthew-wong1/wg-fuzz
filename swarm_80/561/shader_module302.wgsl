struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 14> = array<Struct_5, 14>(Struct_5(35903u, 4294967295u), Struct_5(4294967295u, 0u), Struct_5(0u, 15206u), Struct_5(39581u, 1u), Struct_5(45345u, 0u), Struct_5(69275u, 51613u), Struct_5(4230u, 1u), Struct_5(7684u, 4294967295u), Struct_5(4294967295u, 15787u), Struct_5(0u, 1u), Struct_5(10767u, 30336u), Struct_5(0u, 4294967295u), Struct_5(14338u, 0u), Struct_5(13158u, 75198u));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, -2147483647i, u_input.d.x), reverseBits(reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 1i, u_input.e.x), vec3<i32>(u_input.d.x, u_input.b, u_input.e.x))))), true, _wgslsmith_div_i32(u_input.e.x, abs(-14348i) | _wgslsmith_mult_i32(firstTrailingBit(u_input.b), min(u_input.d.x, -31854i))), vec4<bool>(false, true, all(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false))), select(false, true, true)));
    let var_1 = var_0.d.x;
    let var_2 = Struct_2(Struct_1(~abs(var_0.a), all(select(select(var_0.d, vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false)), var_0.d, !var_0.b)), abs(58041i), var_0.d), -202f, u_input.a);
    let var_3 = Struct_4(Struct_2(var_0, var_2.b, _wgslsmith_div_vec4_u32(u_input.a, u_input.a)), Struct_3(var_2.c.x, Struct_1(reverseBits(vec3<i32>(-2147483647i, 0i, var_0.a.x)), !select(var_1, var_2.a.b, true), u_input.d.x, select(vec4<bool>(var_2.a.b, true, var_2.a.b, true), select(var_0.d, vec4<bool>(var_1, false, false, var_2.a.b), var_0.b), true)), 12643u | (~4294967295u >> (u_input.c % 32u)), var_2.a));
    var var_4 = Struct_5(~(~u_input.c), 1u);
    return 64734u;
}

fn func_2() -> f32 {
    global0 = array<Struct_5, 14>();
    var var_0 = _wgslsmith_add_vec4_u32(u_input.a, u_input.a);
    var var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(func_3(), min(u_input.a.x, ~4294967295u)), vec2<u32>(1u, var_0.x)), ~var_0.wz | reverseBits(vec2<u32>(var_0.x, ~4294967295u)));
    var_1 = u_input.a.x;
    var var_2 = ~vec3<i32>(u_input.b, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x), _wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(-2147483647i, u_input.b, u_input.b)), vec3<i32>(-28210i, u_input.b, u_input.b))), ~u_input.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1743f, _wgslsmith_f_op_f32(trunc(-122f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-838f)))))));
}

fn func_4(arg_0: f32) -> Struct_3 {
    let var_0 = 2147483647i;
    global0 = array<Struct_5, 14>();
    var var_1 = var_0;
    var_1 = 2147483647i ^ countOneBits(u_input.b);
    var var_2 = u_input.a;
    return Struct_3(var_2.x >> (1u % 32u), Struct_1(-vec3<i32>(-var_0, _wgslsmith_sub_i32(var_0, u_input.b), countOneBits(-2147483647i)), _wgslsmith_sub_u32(countOneBits(u_input.c), countOneBits(var_2.x)) > var_2.x, firstTrailingBit(firstTrailingBit(i32(-1i) * -1i)), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true), true)), var_2.x, Struct_1(u_input.d.xyx, true, 0i, vec4<bool>(true, !any(vec4<bool>(true, false, true, false)), true, true)));
}

fn func_1(arg_0: vec3<i32>) -> bool {
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(~(5876u | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 30231u), u_input.a.ww)), ~(~u_input.c)), 14u)];
    var var_1 = func_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-790f)))))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-u_input.d.ywx, true, u_input.d.x, !vec4<bool>(func_1(u_input.d.zyz), firstLeadingBit(u_input.c) == (4294967295u << (0u % 32u)), true, false));
    var_0 = Struct_1(_wgslsmith_sub_vec3_i32(firstLeadingBit(-var_0.a), vec3<i32>(abs(var_0.a.x), 1i, -15505i)), false, -2147483647i, select(select(!var_0.d, !vec4<bool>(var_0.b, var_0.b, true, true), var_0.b), !var_0.d, false));
    var var_1 = ~min(_wgslsmith_sub_vec2_i32(~(~vec2<i32>(1i, 1526i)), countOneBits(vec2<i32>(26387i, u_input.d.x))), vec2<i32>(firstLeadingBit(-9593i), ~var_0.c));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -357f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(466f - -108f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1560f, 956f) * -1051f), _wgslsmith_f_op_f32(max(1438f, _wgslsmith_f_op_f32(381f * 346f)))))), _wgslsmith_f_op_f32(f32(-1f) * -372f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1339f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(129f, -1000f))) * 163f), all(func_4(377f).b.d.zxw))));
    var var_3 = 4294967295u;
    var var_4 = Struct_2(Struct_1(var_0.a, true, -(~firstLeadingBit(u_input.b)), !select(select(vec4<bool>(false, var_0.b, var_0.b, false), var_0.d, var_0.d), var_0.d, !var_0.d)), -1560f, vec4<u32>(~29409u, ~(~1u), firstLeadingBit(_wgslsmith_dot_vec3_u32(abs(u_input.a.wwx), u_input.a.zzz << (u_input.a.xzw % vec3<u32>(32u)))), u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.a.yy);
}

