struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(57033i, 0i);

var<private> global1: array<f32, 7> = array<f32, 7>(487f, 792f, 621f, 452f, 1658f, -622f, 1294f);

var<private> global2: array<Struct_1, 22>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec3<bool>) -> vec2<i32> {
    var var_0 = arg_1;
    let var_1 = Struct_4(vec4<u32>(_wgslsmith_div_u32(1u, firstTrailingBit(arg_1.b.b)), ~_wgslsmith_mod_u32(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.b, u_input.a, 54248u), vec3<u32>(var_0.b.b, arg_2.d.b, var_0.b.b))), _wgslsmith_clamp_u32(60579u, ~4294967295u, 19713u) << (firstTrailingBit(arg_1.b.b) % 32u), _wgslsmith_add_u32(0u, firstTrailingBit(1u))), arg_2, global1[_wgslsmith_index_u32(arg_1.b.b, 7u)], Struct_2(max(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b.yz, arg_1.a.xw), ~arg_2.a), -vec2<i32>(16199i, 2147483647i)), all(arg_3.yx), ~global0.x, Struct_1(arg_1.b.a, 44718u)));
    let var_2 = var_1;
    var var_3 = select(!(!(!select(var_0.b.a.xx, arg_1.b.a.xy, var_2.b.b))), !vec2<bool>(var_1.b.b, true), ~min(_wgslsmith_add_u32(64113u, var_1.d.d.b), 19126u) != _wgslsmith_dot_vec4_u32(vec4<u32>(max(8429u, var_2.d.d.b), 1u, 4072u, arg_2.d.b), ~_wgslsmith_clamp_vec4_u32(var_2.a, var_2.a, vec4<u32>(1u, var_0.b.b, arg_1.b.b, arg_2.d.b))));
    global0 = abs(~(-vec2<i32>(0i, -arg_2.c)));
    return vec2<i32>(1i, ~_wgslsmith_clamp_i32(select(max(var_1.b.a.x, -70978i), _wgslsmith_div_i32(arg_1.a.x, var_2.b.a.x), arg_1.b.a.x), -1i, var_0.a.x));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec4<i32>) -> vec4<bool> {
    let var_0 = vec3<f32>(-580f, _wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(arg_1.c + _wgslsmith_f_op_f32(abs(885f))));
    let var_1 = !select(true, arg_0.b.d.a.x, any(vec4<bool>(all(arg_1.d.d.a.yx), true, arg_0.b.b, arg_0.d.b & arg_0.d.b)));
    var var_2 = Struct_2(_wgslsmith_mod_vec2_i32(select(func_3(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(4294967295u, 7u)], -439f), Struct_3(u_input.b, Struct_1(arg_1.d.d.a, arg_0.b.d.b), var_0.xz), Struct_2(vec2<i32>(2147483647i, u_input.b.x), arg_0.b.d.a.x, u_input.b.x, arg_1.d.d), arg_0.d.d.a), reverseBits(_wgslsmith_mod_vec2_i32(u_input.b.yw, arg_2.ww)), !(!arg_1.d.d.a.zz)), vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(global0.x, -5641i), i32(-1i) * -1i, min(u_input.b.x, arg_1.b.c)), firstTrailingBit(~(-40284i)))), arg_0.d.b, ~(global0.x << (u_input.a % 32u)), Struct_1(vec3<bool>(all(arg_1.d.d.a) | true, true, false & var_1), ~arg_0.d.d.b));
    global1 = array<f32, 7>();
    var var_3 = _wgslsmith_mult_vec4_u32(select(vec4<u32>(arg_1.d.d.b, ~123945u, _wgslsmith_div_u32(u_input.a, arg_0.b.d.b), _wgslsmith_mod_u32(~arg_1.d.d.b, max(arg_0.a.x, 8500u))), vec4<u32>(0u, ~u_input.a, _wgslsmith_add_u32(4294967295u, u_input.a), firstTrailingBit(arg_1.b.d.b)) << (~arg_1.a % vec4<u32>(32u)), select(!select(vec4<bool>(arg_1.b.d.a.x, var_1, var_2.d.a.x, false), vec4<bool>(arg_0.b.d.a.x, var_2.b, false, false), vec4<bool>(var_2.b, false, true, arg_1.b.b)), !vec4<bool>(false, false, var_1, false), !vec4<bool>(var_1, false, false, arg_1.b.b))), ~arg_1.a << (arg_1.a % vec4<u32>(32u)));
    return !(!vec4<bool>(arg_0.b.d.a.x, true, !(!var_2.b), arg_1.d.d.a.x));
}

fn func_4(arg_0: vec2<u32>, arg_1: bool, arg_2: u32, arg_3: vec3<i32>) -> vec3<bool> {
    global2 = array<Struct_1, 22>();
    global0 = _wgslsmith_mult_vec2_i32(vec2<i32>((u_input.b.x ^ 1i) << (arg_0.x % 32u), u_input.b.x), u_input.b.yy);
    return vec3<bool>(true, any(!select(vec3<bool>(arg_1, false, false), select(vec3<bool>(false, false, arg_1), vec3<bool>(true, arg_1, false), vec3<bool>(arg_1, false, false)), vec3<bool>(arg_1, arg_1, true))), false);
}

fn func_1(arg_0: u32) -> Struct_4 {
    let var_0 = Struct_3(u_input.b, Struct_1(func_4(~abs(vec2<u32>(129227u, 0u)), all(func_2(Struct_4(vec4<u32>(u_input.a, arg_0, 4294967295u, u_input.a), Struct_2(vec2<i32>(u_input.b.x, u_input.b.x), true, global0.x, global2[_wgslsmith_index_u32(43807u, 22u)]), -1713f, Struct_2(vec2<i32>(u_input.b.x, u_input.b.x), false, 5907i, Struct_1(vec3<bool>(false, false, true), u_input.a))), Struct_4(vec4<u32>(u_input.a, arg_0, arg_0, u_input.a), Struct_2(u_input.b.xx, false, global0.x, global2[_wgslsmith_index_u32(arg_0, 22u)]), global1[_wgslsmith_index_u32(66561u, 7u)], Struct_2(u_input.b.zx, false, -40020i, Struct_1(vec3<bool>(true, false, true), u_input.a))), vec4<i32>(50099i, u_input.b.x, global0.x, 0i))), arg_0, _wgslsmith_sub_vec3_i32(u_input.b.yzw, u_input.b.xwx)), u_input.a | (~u_input.a | 4294967295u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(253f, _wgslsmith_f_op_f32(406f * global1[_wgslsmith_index_u32(u_input.a, 7u)])) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(771f, global1[_wgslsmith_index_u32(0u, 7u)])))) + vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 7u)]), global1[_wgslsmith_index_u32(abs(arg_0), 7u)]))));
    let var_1 = _wgslsmith_sub_vec3_i32(max(_wgslsmith_div_vec3_i32(vec3<i32>(~global0.x, 1i, func_3(var_0.c.x, Struct_3(vec4<i32>(-45863i, 19773i, u_input.b.x, global0.x), Struct_1(var_0.b.a, u_input.a), var_0.c), Struct_2(vec2<i32>(global0.x, var_0.a.x), var_0.b.a.x, -1i, Struct_1(vec3<bool>(false, var_0.b.a.x, var_0.b.a.x), u_input.a)), vec3<bool>(var_0.b.a.x, true, var_0.b.a.x)).x), min(-vec3<i32>(8813i, 20332i, global0.x), _wgslsmith_add_vec3_i32(var_0.a.yxx, u_input.b.xzx))), vec3<i32>(34169i, _wgslsmith_dot_vec4_i32(u_input.b, var_0.a) ^ _wgslsmith_sub_i32(10721i, 21526i), _wgslsmith_clamp_i32(_wgslsmith_add_i32(30314i, -1i), -13652i | var_0.a.x, 32912i))), u_input.b.xww);
    var var_2 = _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(0u, 1u, 18378u), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(~1u, max(arg_0, ~var_0.b.b), ~u_input.a), reverseBits(var_0.b.b)));
    var_2 = 10030u;
    let var_3 = _wgslsmith_div_vec3_u32(vec3<u32>(1u, firstTrailingBit(29069u) ^ countOneBits(~var_0.b.b), firstLeadingBit(~1u)), vec3<u32>(max(~0u << (~arg_0 % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 63017u, arg_0, u_input.a) << (vec4<u32>(6437u, 1u, u_input.a, 1u) % vec4<u32>(32u)), select(vec4<u32>(17850u, var_0.b.b, 27896u, 4294967295u), vec4<u32>(1u, 37961u, arg_0, u_input.a), true))), 0u, arg_0));
    return Struct_4(vec4<u32>(~countOneBits(4294967295u), reverseBits(countOneBits(var_3.x | 10698u)), ~u_input.a ^ _wgslsmith_add_u32(86179u, var_3.x), ~_wgslsmith_div_u32(reverseBits(4524u), arg_0)), Struct_2(-(~(~vec2<i32>(var_1.x, -146i))), var_0.b.a.x, (~29014i & (u_input.b.x & u_input.b.x)) << (~30516u % 32u), global2[_wgslsmith_index_u32(0u, 22u)]), 1488f, Struct_2(firstLeadingBit(vec2<i32>(u_input.b.x, -global0.x)), 8588u <= _wgslsmith_mult_u32(min(4294967295u, arg_0), 0u), var_1.x, Struct_1(!vec3<bool>(var_0.b.a.x, false, true), ~0u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(63364u);
    var var_1 = Struct_3(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(i32(-1i) * -33117i, u_input.b.x, 2147483647i, -var_0.b.c), -firstLeadingBit(u_input.b), ~u_input.b)), var_0.b.d, vec2<f32>(_wgslsmith_f_op_f32(-1200f * -1229f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(767f)))));
    let var_2 = Struct_3(vec4<i32>(firstLeadingBit(global0.x), max(_wgslsmith_mod_i32(~var_1.a.x, -2147483647i), 18600i), 0i >> (0u % 32u), u_input.b.x), func_1(countOneBits(~firstLeadingBit(var_0.b.d.b))).b.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.c - var_1.c) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(912f, var_0.c)))))));
    let var_3 = var_2;
    var var_4 = 4294967295u ^ _wgslsmith_mult_u32(~(_wgslsmith_add_u32(0u, u_input.a) >> (~u_input.a % 32u)), reverseBits(countOneBits(~u_input.a)));
    let var_5 = all(vec2<bool>(var_2.b.a.x, !(!var_1.b.a.x)));
    global1 = array<f32, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, max(vec2<i32>(_wgslsmith_dot_vec2_i32(var_1.a.zz, vec2<i32>(var_1.a.x, var_1.a.x)), _wgslsmith_dot_vec2_i32(var_0.d.a, var_0.b.a)) << (_wgslsmith_sub_vec2_u32(~var_0.a.ww, vec2<u32>(var_3.b.b, var_3.b.b)) % vec2<u32>(32u)), ~(~var_2.a.zz)));
}

