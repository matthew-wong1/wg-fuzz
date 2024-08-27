struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: Struct_4,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1;

var<private> global2: vec2<f32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: bool, arg_3: vec4<u32>) -> vec3<bool> {
    var var_0 = firstTrailingBit(~(-33321i));
    let var_1 = vec3<bool>(all(global1.a), !(!(!any(global1.a.zx))), !(_wgslsmith_f_op_f32(f32(-1f) * -749f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))));
    var_0 = -arg_0;
    var_0 = abs(arg_0);
    let var_2 = !(!vec3<bool>(arg_2 == all(vec3<bool>(arg_2, false, false)), !global1.a.x, false));
    return vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-739f * 109f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1715f * global2.x) * -399f)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-780f)) + _wgslsmith_f_op_f32(step(global2.x, global2.x))), false, var_1.x);
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: vec3<bool>, arg_3: vec3<i32>) -> u32 {
    let var_0 = (firstTrailingBit(vec4<i32>(arg_3.x, 2692i, 22498i, arg_3.x) << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, global1.b, global1.b, global1.b), vec4<u32>(global1.b, 0u, 73365u, 22803u)) % vec4<u32>(32u))) ^ reverseBits(firstTrailingBit(-vec4<i32>(26102i, arg_3.x, arg_3.x, arg_3.x)))) & (vec4<i32>(_wgslsmith_mult_i32(arg_3.x, arg_3.x), -2147483647i, ~_wgslsmith_add_i32(arg_3.x, arg_3.x), -(i32(-1i) * -41631i)) ^ (-vec4<i32>(arg_3.x, 1297i, arg_3.x, 18082i) & ~_wgslsmith_div_vec4_i32(vec4<i32>(arg_3.x, arg_3.x, -56593i, 1i), vec4<i32>(arg_3.x, 1i, -18838i, arg_3.x))));
    var var_1 = Struct_1(vec3<bool>(!arg_1, (_wgslsmith_dot_vec2_i32(arg_3.zx, arg_3.yy) == ~2147483647i) & !global1.a.x, global1.a.x), ~0u);
    let var_2 = vec2<i32>(-1i, -var_0.x);
    var var_3 = Struct_5(arg_3.x, _wgslsmith_dot_vec4_i32(-var_0, vec4<i32>(0i ^ arg_3.x, 0i, 7183i, i32(-1i) * -var_2.x)), Struct_4(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 63008u, 57813u, global1.b), ~vec4<u32>(global1.b, global1.b, u_input.a, 12832u)), abs(_wgslsmith_div_vec3_u32(abs(vec3<u32>(global1.b, 137u, 85587u)), ~vec3<u32>(1u, 75246u, u_input.a))), Struct_3(max(var_2.x, arg_3.x), min(var_0.x, -33617i), Struct_1(var_1.a, countOneBits(6218u)), Struct_1(vec3<bool>(global1.a.x, true, var_1.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 8909u, var_1.b, 4294967295u), vec4<u32>(34183u, var_1.b, global1.b, 37726u))), global1.a.yy), Struct_3(53479i, ~_wgslsmith_mult_i32(-10858i, -27180i), Struct_1(!vec3<bool>(global1.a.x, var_1.a.x, false), 0u), Struct_1(func_2(arg_3.x, global1.b, true, vec4<u32>(global1.b, u_input.a, u_input.a, 25530u)), _wgslsmith_div_u32(global1.b, 26888u)), !vec2<bool>(arg_1, var_1.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1425f, global2.x, arg_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2.x, -427f, -465f))))))));
    var var_4 = 21047u;
    return global1.b;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_4(vec4<u32>(global1.b, func_3(arg_0.yx, arg_2.a.x, !func_2(0i, global1.b, arg_2.a.x, vec4<u32>(20846u, u_input.a, 69338u, global1.b)), select(_wgslsmith_add_vec3_i32(vec3<i32>(arg_1.x, arg_1.x, 12523i), vec3<i32>(1i, 2147483647i, 0i)), arg_1, func_2(-12742i, u_input.a, global1.a.x, vec4<u32>(u_input.a, 73655u, 0u, global1.b)))), ~0u, 67447u), _wgslsmith_sub_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(54224u, 4294967295u), vec2<u32>(10428u, arg_2.b)), 1u, firstTrailingBit(36327u)), vec3<u32>(~global1.b, ~4294967295u, u_input.a >> (arg_2.b % 32u)) << (max(vec3<u32>(u_input.a, 53727u, global1.b) >> (vec3<u32>(2882u, 72502u, u_input.a) % vec3<u32>(32u)), vec3<u32>(arg_2.b, global1.b, arg_2.b) & vec3<u32>(global1.b, 12830u, global1.b)) % vec3<u32>(32u))), Struct_3(_wgslsmith_mult_i32(arg_1.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(arg_1, vec3<i32>(arg_1.x, arg_1.x, -1i)), arg_1.x)), -1i & arg_1.x, arg_2, Struct_1(arg_2.a, ~abs(global1.b)), select(select(!global1.a.yx, global1.a.zx, true), func_2(-54602i, ~19426u, false, firstLeadingBit(vec4<u32>(62545u, 4294967295u, 4294967295u, 23056u))).xx, !all(vec4<bool>(false, arg_2.a.x, arg_2.a.x, arg_2.a.x)))), Struct_3(0i, arg_1.x, arg_2, arg_2, !vec2<bool>(true, global1.a.x)));
    var var_1 = Struct_3(12867i, -var_0.c.b, Struct_1(arg_2.a, arg_2.b), Struct_1(arg_2.a, (0u << (~var_0.c.d.b % 32u)) << (arg_2.b % 32u)), select(var_0.c.c.a.zx, var_0.d.e, global1.a.x & false));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1193f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -293f)), 568f), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1234f, -645f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-242f, -836f)) * -247f), _wgslsmith_f_op_f32(-global2.x)))) - _wgslsmith_f_op_vec3_f32(arg_0 - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1261f, global2.x, -1196f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, arg_0.x, -629f) * vec3<f32>(arg_0.x, arg_0.x, arg_0.x)), global1.a)) * vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), global2.x))));
    let var_3 = Struct_3(-3026i, var_1.b, var_1.d, Struct_1(!select(!vec3<bool>(false, true, var_1.e.x), arg_2.a, vec3<bool>(global1.a.x, false, global1.a.x)), abs(min(_wgslsmith_dot_vec3_u32(var_0.b, vec3<u32>(61978u, 1u, 96500u)), countOneBits(0u)))), select(global1.a.xx, func_2(_wgslsmith_sub_i32(var_1.b, 56385i), _wgslsmith_div_u32(select(global1.b, 18749u, true), countOneBits(7892u)), var_2.x > _wgslsmith_f_op_f32(floor(var_2.x)), var_0.a).xy, true));
    let var_4 = Struct_4(var_0.a, vec3<u32>(~(~var_3.c.b), 76316u, arg_2.b), Struct_3(-2147483647i, 1i, Struct_1(select(vec3<bool>(true, var_3.e.x, true), !vec3<bool>(false, var_1.e.x, var_3.c.a.x), true), arg_2.b ^ (var_0.d.d.b & 20369u)), Struct_1(global1.a, global1.b), select(func_2(8208i >> (var_0.c.c.b % 32u), var_3.d.b, select(arg_2.a.x, false, false), firstTrailingBit(vec4<u32>(1u, 28502u, arg_2.b, arg_2.b))).xz, func_2(arg_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_1.c.b), var_0.a.wz), var_0.c.c.a.x, ~var_0.a).zy, !(!var_1.e))), Struct_3(select(-40610i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_0.d.a, var_0.c.a, 1i, var_0.d.a)), select(vec4<i32>(31725i, 2147483647i, var_0.c.a, var_1.b), vec4<i32>(var_0.c.b, 6332i, -53657i, var_0.d.a), global1.a.x)), true), var_3.a, var_3.d, Struct_1(var_3.c.a, ~arg_2.b), select(var_3.e, var_3.d.a.yy, global1.a.x)));
    return (89046u << (countOneBits(max(~global1.b, 0u)) % 32u)) & 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(0u, u_input.a & ((~4294967295u ^ func_1(vec3<f32>(global2.x, global2.x, global2.x), vec3<i32>(2147483647i, 47887i, 0i), Struct_1(global1.a, global1.b))) << (firstLeadingBit(u_input.a) % 32u)), _wgslsmith_add_u32(~(abs(0u) ^ (u_input.a & global1.b)), 4294967295u));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-global2.x), 506f, _wgslsmith_f_op_f32(abs(1000f)))))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(280f + _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global2.x, global2.x), -1362f)), -507f), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.x, global2.x, 356f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(461f, global2.x, -2064f))))))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x));
    global0 = _wgslsmith_div_i32(abs(_wgslsmith_add_i32(1i, 1i)), abs(_wgslsmith_dot_vec4_i32(~firstLeadingBit(vec4<i32>(41045i, 77572i, -1i, 5530i)), firstTrailingBit(-vec4<i32>(0i, 15273i, -13912i, 2147483647i)))));
    global1 = Struct_1(select(select(vec3<bool>(false, false, false), select(vec3<bool>(global1.a.x, global1.a.x, true), !global1.a, var_0.x != var_0.x), !global1.a), vec3<bool>(global1.a.x, ~4294967295u == ~u_input.a, all(!vec4<bool>(false, false, true, global1.a.x))), select(func_2(_wgslsmith_mult_i32(-19768i, 1436i), 9570u, true, ~vec4<u32>(0u, var_0.x, 1u, var_0.x)), global1.a, !func_2(31734i, 91235u, true, vec4<u32>(u_input.a, u_input.a, var_0.x, global1.b)))), ~0u);
    global0 = ~29265i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(73141i, _wgslsmith_sub_i32(1i ^ _wgslsmith_clamp_i32(-2147483647i, -2147483647i, -72286i), reverseBits(~(-1i)))), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(abs(-11825i >> (global1.b % 32u)), abs(i32(-1i) * -2147483647i))), -712f, vec4<u32>(u_input.a, ~func_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.x, var_1.x, var_1.x), vec3<f32>(var_1.x, -453f, global2.x))), vec3<i32>(1i, -1i, 0i), Struct_1(vec3<bool>(global1.a.x, true, false), var_0.x)), var_0.x, 72990u));
}

