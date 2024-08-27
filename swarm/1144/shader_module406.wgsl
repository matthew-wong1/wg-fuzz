struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(0i, i32(-2147483648), 1i), vec2<i32>(60710i, -1i), vec2<i32>(-1i, -37777i));

var<private> global2: u32 = 52374u;

var<private> global3: Struct_1 = Struct_1(vec3<i32>(-46377i, 1i, -14747i), vec2<i32>(20808i, -1i), vec2<i32>(6296i, 0i));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2() -> f32 {
    var var_0 = vec2<u32>(4294967295u, ~14581u);
    global1 = Struct_1(max(reverseBits(-vec3<i32>(global3.a.x, 10979i, 0i)), select(min(vec3<i32>(global1.a.x, u_input.b, global1.c.x) | vec3<i32>(57i, global3.c.x, 7479i), _wgslsmith_add_vec3_i32(global3.a, vec3<i32>(2147483647i, u_input.a, -16245i))), ~vec3<i32>(global3.c.x, 0i, -24544i), vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true))), global1.c << (vec2<u32>(4294967295u, 397u) % vec2<u32>(32u)), global1.b);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1406f)), 1f));
    return -247f;
}

fn func_3() -> u32 {
    var var_0 = ~(~(~vec2<u32>(1u, 1u))) ^ max(vec2<u32>(~0u, firstLeadingBit(firstLeadingBit(43736u))), _wgslsmith_mult_vec2_u32(select(vec2<u32>(57006u, 0u), _wgslsmith_mult_vec2_u32(vec2<u32>(27803u, 18231u), vec2<u32>(1u, 7903u)), all(vec2<bool>(false, false))), ~vec2<u32>(1u, 1u)));
    var var_1 = vec2<bool>(23463u >= _wgslsmith_mod_u32(0u, ~0u << (reverseBits(var_0.x) % 32u)), false);
    let var_2 = Struct_1(_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(reverseBits(u_input.b), u_input.a, firstLeadingBit(-782i))), countOneBits(firstTrailingBit(vec3<i32>(u_input.a, u_input.a, 5750i) | vec3<i32>(-3880i, -1i, u_input.b)))), select(abs(vec2<i32>(u_input.b, -1i << (var_0.x % 32u))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, global1.c.x, global3.b.x, u_input.a), _wgslsmith_sub_vec4_i32(vec4<i32>(14419i, global3.b.x, 0i, global3.c.x), vec4<i32>(37952i, 0i, -2147483647i, 0i))), _wgslsmith_div_i32(global1.a.x, select(-4563i, u_input.a, var_1.x))), vec2<bool>(!any(vec3<bool>(var_1.x, true, false)), (-2147483647i >> (var_0.x % 32u)) != u_input.a)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(-2529i), -15799i << (var_0.x % 32u), global3.c.x, abs(0i)), reverseBits(-vec4<i32>(19591i, global1.a.x, global3.b.x, 2147483647i))), select(u_input.a, ~u_input.b, (var_0.x << (var_0.x % 32u)) >= ~var_0.x)));
    let var_3 = select(vec3<bool>(false, any(select(select(vec4<bool>(true, var_1.x, false, true), vec4<bool>(var_1.x, false, var_1.x, false), var_1.x), !vec4<bool>(true, var_1.x, var_1.x, var_1.x), var_1.x && false)), all(!(!vec2<bool>(true, var_1.x)))), vec3<bool>(var_1.x, true, var_1.x == true), select(vec3<bool>(-8885i <= -global3.b.x, var_1.x, var_1.x), vec3<bool>(var_1.x, true, all(!vec4<bool>(false, var_1.x, var_1.x, false))), false));
    global1 = var_2;
    return _wgslsmith_add_u32(~1u, ~(var_0.x >> (12576u % 32u)) ^ (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(1u, 4294967295u, 38514u, var_0.x)) | var_0.x)) << (92592u % 32u);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(func_2());
    global0 = func_3();
    let var_1 = 1565f;
    let var_2 = ~(abs(arg_1.xxy) >> (firstLeadingBit(vec3<u32>(49976u & arg_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, 12575u), vec2<u32>(arg_1.x, arg_1.x)), 0u)) % vec3<u32>(32u)));
    global1 = arg_2;
    return _wgslsmith_dot_vec3_i32(arg_2.a, ~(~vec3<i32>(arg_2.c.x | arg_2.a.x, u_input.b, global1.c.x)));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) * vec2<f32>(arg_1, arg_1))))));
    global3 = Struct_1(firstTrailingBit(-abs(arg_0.a)), -min(arg_0.c, vec2<i32>(1i, -2147483647i)), select(vec2<i32>(_wgslsmith_div_i32(0i, countOneBits(u_input.b)), 1i >> (countOneBits(0u) % 32u)), vec2<i32>(_wgslsmith_div_i32(countOneBits(-37967i), 1i), global3.a.x), any(vec3<bool>(arg_2, !arg_2, true))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-152f, var_0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -446f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-143f, var_0.x))), vec2<f32>(var_0.x, var_0.x))) - vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -481f)))));
    var var_1 = Struct_1(vec3<i32>(-(2147483647i & u_input.b), _wgslsmith_mult_i32(1384i, select(1i, -1i, false)), ~_wgslsmith_sub_i32(-16443i, global1.b.x)), global3.c, ~(~vec2<i32>(3758i, 2581i)) & -global3.b);
    var_1 = Struct_1(_wgslsmith_sub_vec3_i32(global1.a, global3.a), vec2<i32>(func_1(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, arg_2, true)), vec4<u32>(1u, 1u, 1u, 1u), Struct_1(min(vec3<i32>(-18260i, -33266i, global3.c.x), vec3<i32>(-15674i, var_1.c.x, global1.a.x)), ~vec2<i32>(54004i, -77132i), ~vec2<i32>(23546i, global3.c.x))), global3.b.x), ~arg_0.b);
    return Struct_1(vec3<i32>(_wgslsmith_sub_i32(~u_input.b, -2147483647i), var_1.c.x, ~1i), _wgslsmith_clamp_vec2_i32(-_wgslsmith_div_vec2_i32(arg_0.a.zx, global3.b) & arg_0.c, _wgslsmith_mult_vec2_i32(var_1.a.zz, ~var_1.b), global3.c), global3.c >> (vec2<u32>(max(21036u, _wgslsmith_mod_u32(4294967295u, 8807u)), _wgslsmith_clamp_u32(min(0u, 0u), ~0u, countOneBits(11016u))) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(~countOneBits(vec3<i32>(u_input.a, global1.c.x, global3.a.x)) ^ -vec3<i32>(global1.b.x, global1.c.x, global3.c.x), global3.a.xy, _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(~global1.b, global1.a.xx), vec2<i32>(global1.a.x, func_1(vec4<bool>(false, false, true, false), vec4<u32>(4294967295u, 2727u, 0u, 4294967295u), Struct_1(vec3<i32>(-423i, 2147483647i, global1.c.x), vec2<i32>(u_input.a, -1i), vec2<i32>(u_input.a, 2513i)))))), _wgslsmith_f_op_f32(floor(1296f)), any(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), true))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-158f, -1000f, -158f, -492f)))));
    global3 = Struct_1(var_0.a, vec2<i32>(~(-func_1(vec4<bool>(true, true, true, false), vec4<u32>(55448u, 34104u, 1u, 39825u), Struct_1(var_0.a, global1.c, global1.b))), _wgslsmith_dot_vec4_i32(abs(~vec4<i32>(-2147483647i, global3.c.x, global3.c.x, -28377i)), -(vec4<i32>(-1i, 9453i, global3.a.x, global3.c.x) << (vec4<u32>(4294967295u, 0u, 28477u, 20558u) % vec4<u32>(32u))))), -_wgslsmith_mult_vec2_i32(countOneBits(var_0.a.zz) & -vec2<i32>(global3.a.x, 13182i), -(~vec2<i32>(var_0.a.x, 32600i))));
    var var_2 = ~(~global1.a.x);
    let var_3 = Struct_1(vec3<i32>(u_input.b, ~u_input.b, 2147483647i), vec2<i32>(_wgslsmith_dot_vec3_i32(countOneBits(max(global3.a, vec3<i32>(u_input.b, 17647i, 1i))), var_0.a), u_input.a), -var_0.c);
    var var_4 = var_3;
    let var_5 = -select(firstTrailingBit(-vec4<i32>(global1.a.x, global1.c.x, global3.c.x, -1915i)), -_wgslsmith_div_vec4_i32(vec4<i32>(-6915i, 2147483647i, var_0.c.x, var_3.c.x), vec4<i32>(var_4.a.x, -19954i, -12912i, 2147483647i)), vec4<bool>(any(vec2<bool>(true, true)) && true, true, select(true, any(vec2<bool>(false, true)), true), all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true)))));
    let var_6 = max(-(vec2<i32>(_wgslsmith_add_i32(u_input.a, u_input.b), -var_5.x) ^ reverseBits(_wgslsmith_mult_vec2_i32(var_5.xy, vec2<i32>(global1.c.x, -2147483647i)))), abs(-(vec2<i32>(u_input.b, global1.a.x) | vec2<i32>(global1.b.x, var_5.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(i32(-1i) * -(~var_4.a.x), min(-592i, _wgslsmith_mult_i32(~var_4.a.x, -1i)), _wgslsmith_add_i32(-14667i, abs(var_3.b.x)), -max(global1.c.x, countOneBits(global3.c.x))));
}

