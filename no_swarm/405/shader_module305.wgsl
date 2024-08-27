struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: Struct_2,
    d: vec2<i32>,
    e: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26> = array<f32, 26>(-3156f, 769f, -350f, 238f, -842f, -1370f, -1000f, -927f, 1945f, 169f, -243f, -930f, 443f, 373f, 579f, 1131f, -2155f, -549f, 115f, 1154f, -1583f, 305f, -1011f, 2345f, -1568f, -1000f);

var<private> global1: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = vec2<i32>(u_input.a.x, u_input.a.x | abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -1i, -7324i, 0i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) | (u_input.a.x ^ -26408i)));
    global1 = select(!select(!select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(true, false, global1.x), vec3<bool>(global1.x, global1.x, false)), vec3<bool>(global1.x, var_0.x < -2147483647i, true), !select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, true, global1.x), false)), !select(!vec3<bool>(global1.x, false, true), vec3<bool>(select(false, true, true), false, any(vec4<bool>(false, false, true, global1.x))), select(vec3<bool>(false, true, false), !vec3<bool>(true, global1.x, true), !vec3<bool>(global1.x, global1.x, global1.x))), global1.x);
    var var_1 = ~(arg_0.a.x << (_wgslsmith_div_u32(u_input.b, ~arg_0.a.x) % 32u));
    var var_2 = Struct_2(Struct_1(firstTrailingBit(~_wgslsmith_mod_vec3_u32(vec3<u32>(14245u, arg_0.a.x, arg_0.a.x), vec3<u32>(1u, u_input.d.x, arg_0.a.x)))), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(~(~(1u >> (0u % 32u))), 26u)])), _wgslsmith_f_op_f32(select(238f, _wgslsmith_f_op_f32(-403f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 26u)] - global0[_wgslsmith_index_u32(arg_0.a.x, 26u)]))), global1.x)), arg_0, arg_0);
    var_1 = reverseBits(arg_0.a.x);
    return select(!(!(!select(vec3<bool>(false, global1.x, false), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(false, false, global1.x)))), select(!vec3<bool>(var_2.c > 188f, global1.x, global1.x), vec3<bool>(true, true, any(select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(true, false, true), vec3<bool>(global1.x, global1.x, true)))), false), global1.x);
}

fn func_3() -> f32 {
    var var_0 = vec3<u32>(_wgslsmith_sub_u32(~0u, 21299u), 4294967295u, u_input.d.x ^ abs(~u_input.e));
    var var_1 = Struct_3((~(vec4<u32>(var_0.x, 4719u, 1u, var_0.x) >> (vec4<u32>(0u, 25194u, 0u, 87746u) % vec4<u32>(32u))) << (vec4<u32>(0u, _wgslsmith_clamp_u32(u_input.b, 23689u, 1u), var_0.x, _wgslsmith_clamp_u32(var_0.x, u_input.c, var_0.x)) % vec4<u32>(32u))) | ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 0u, u_input.e, 20676u), vec4<u32>(0u, 2562u, u_input.c, var_0.x)), abs(select(vec3<u32>(10307u >> (u_input.b % 32u), ~48463u, ~1951u), vec3<u32>(u_input.c, _wgslsmith_div_u32(u_input.e, var_0.x), countOneBits(var_0.x)), !(!vec3<bool>(global1.x, global1.x, true)))), Struct_2(Struct_1(~_wgslsmith_add_vec3_u32(vec3<u32>(22258u, u_input.b, var_0.x), vec3<u32>(u_input.b, 50598u, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 26u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-701f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(64083u, 26u)] - global0[_wgslsmith_index_u32(u_input.b, 26u)])))), Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, var_0.x, 47987u) >> (vec3<u32>(u_input.e, 0u, var_0.x) % vec3<u32>(32u)), vec3<u32>(var_0.x, var_0.x, var_0.x))), Struct_1(~firstTrailingBit(vec3<u32>(u_input.c, 6328u, u_input.d.x)))), -firstLeadingBit(~vec2<i32>(u_input.a.x, -1i)), u_input.a.x);
    let var_2 = vec3<f32>(-103f, var_1.c.b, 237f);
    var var_3 = var_1.c.a;
    var var_4 = var_1.c;
    return 1f;
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec4<i32>) -> vec4<u32> {
    global0 = array<f32, 26>();
    global1 = func_2(Struct_1(~arg_0.b));
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0.c.c)), global0[_wgslsmith_index_u32(1u, 26u)], _wgslsmith_f_op_f32(arg_0.c.b + global0[_wgslsmith_index_u32(49562u, 26u)]), 724f))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d.x, 26u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(70270u, 26u)])), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 26u)] * global0[_wgslsmith_index_u32(u_input.e, 26u)])), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.e, 26u)] * -470f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(16792u, 26u)], arg_0.c.b, arg_0.c.c), vec4<f32>(arg_0.c.c, global0[_wgslsmith_index_u32(u_input.d.x, 26u)], -627f, -1859f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.b, arg_0.c.c, arg_0.c.b, -1229f) + vec4<f32>(arg_0.c.b, arg_0.c.b, 353f, -523f))))));
    var var_1 = min(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(19527u, 1u, 27672u)), ~arg_0.c.a.a) | ~abs(vec3<u32>(u_input.e, u_input.c, 4294967295u)), ~(arg_0.c.d.a >> (countOneBits(arg_0.a.zxz) % vec3<u32>(32u))), vec3<u32>(~arg_0.c.e.a.x, arg_0.c.e.a.x, ~0u)), (_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.x, 4294967295u, 28548u), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.x, 37679u, 0u), arg_0.c.e.a, arg_0.b)) | select(~arg_0.a.xzz, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, arg_0.b.x), vec3<u32>(4707u, arg_0.b.x, 30139u)), func_2(Struct_1(arg_0.b)))) ^ vec3<u32>(arg_0.c.a.a.x, reverseBits(u_input.e ^ arg_0.a.x), u_input.e));
    let var_2 = Struct_3(~firstLeadingBit(arg_0.a) | arg_0.a, arg_0.c.e.a, arg_0.c, ~vec2<i32>(-_wgslsmith_mult_i32(u_input.a.x, arg_0.e), 43811i), countOneBits(-1i));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_mult_vec4_u32(vec4<u32>(abs(u_input.c & 4294967295u), _wgslsmith_mult_u32(3564u, 1u), ~_wgslsmith_mult_u32(u_input.b, 25431u), min(59106u, _wgslsmith_mult_u32(u_input.c, u_input.c))), func_1(Struct_3(vec4<u32>(u_input.e, 63633u, u_input.b, 1u), vec3<u32>(u_input.d.x, 9535u, 4294967295u), Struct_2(Struct_1(vec3<u32>(u_input.b, u_input.d.x, 66397u)), global0[_wgslsmith_index_u32(u_input.d.x, 26u)], -1194f, Struct_1(vec3<u32>(u_input.d.x, u_input.b, 60858u)), Struct_1(vec3<u32>(0u, u_input.b, 97257u))), vec2<i32>(-35382i, u_input.a.x), u_input.a.x), ~vec2<u32>(66724u, 15451u), vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x)) | _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b, u_input.e, 0u, u_input.d.x), vec4<u32>(u_input.e, u_input.e, u_input.d.x, u_input.b) >> (vec4<u32>(u_input.e, 40115u, u_input.b, u_input.e) % vec4<u32>(32u)))), vec3<u32>(u_input.c, u_input.e, ~(countOneBits(24103u) << (abs(u_input.e) % 32u))), Struct_2(Struct_1(vec3<u32>(2355u, 1u, 1u)), global0[_wgslsmith_index_u32(u_input.b, 26u)], global0[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(_wgslsmith_sub_u32(54649u, u_input.d.x), select(80614u, 51672u, global1.x))), 26u)], Struct_1(vec3<u32>(0u, u_input.c, 4294967295u) >> (abs(vec3<u32>(u_input.d.x, 0u, u_input.b)) % vec3<u32>(32u))), Struct_1(abs(vec3<u32>(0u, u_input.c, 1u) | vec3<u32>(u_input.c, 23664u, u_input.d.x)))), min(reverseBits(vec2<i32>(34934i, _wgslsmith_add_i32(27770i, 1358i))), u_input.a), _wgslsmith_div_i32(-52408i, u_input.a.x));
    global1 = vec3<bool>(true, _wgslsmith_mult_u32(~_wgslsmith_add_u32(var_0.b.x, var_0.c.d.a.x), func_1(Struct_3(var_0.a, var_0.c.d.a, var_0.c, var_0.d, u_input.a.x), ~vec2<u32>(31181u, 38328u), ~vec4<i32>(var_0.d.x, u_input.a.x, u_input.a.x, 4557i)).x) == ~1u, global1.x);
    let var_1 = ~(~(~(~var_0.a)));
    var var_2 = u_input.a.x;
    var_0 = Struct_3(select(var_0.a | select(func_1(Struct_3(var_1, var_1.zzy, Struct_2(var_0.c.e, global0[_wgslsmith_index_u32(84414u, 26u)], global0[_wgslsmith_index_u32(28396u, 26u)], var_0.c.d, Struct_1(var_0.a.xwz)), vec2<i32>(var_0.e, 0i), 2147483647i), vec2<u32>(1304u, 0u), vec4<i32>(var_0.d.x, var_0.e, -2147483647i, u_input.a.x)), ~var_1, true), var_0.a, global1.x), vec3<u32>(84415u, ~u_input.c, reverseBits(u_input.e)) | vec3<u32>(4242u, countOneBits(u_input.b), _wgslsmith_sub_u32(22779u, 19568u)), Struct_2(Struct_1(~_wgslsmith_div_vec3_u32(var_0.b, vec3<u32>(19186u, u_input.c, var_0.b.x))), 1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1327f * 193f) * _wgslsmith_div_f32(var_0.c.b, var_0.c.c)))), var_0.c.e, Struct_1(~var_1.zyw)), ~firstLeadingBit(-firstTrailingBit(u_input.a)), 50565i);
    let var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0[_wgslsmith_index_u32(14383u, 26u)], var_0.c.c))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1983f, 749f), vec2<f32>(var_0.c.b, 1290f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1424f, global0[_wgslsmith_index_u32(5329u, 26u)]))) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 26u)]), var_0.c.c))))));
    var var_4 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-976f)))), _wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.b.x, 26u)] * 632f))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d.x, 26u)] + 660f))));
    var var_5 = max(_wgslsmith_add_u32(0u, 16058u) | _wgslsmith_mod_u32(21784u, var_1.x), var_1.x);
    var var_6 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(var_1.x & _wgslsmith_clamp_u32(24801u, u_input.c, var_1.x))), countOneBits(~(~u_input.a.x >> (~52691u % 32u))), _wgslsmith_add_vec4_u32(func_1(Struct_3(var_0.a, ~var_1.wwz, var_0.c, _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.e, -5882i), vec2<i32>(25345i, 43352i)), u_input.a.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d.x, 30645u), vec2<u32>(24910u, 0u), u_input.d), max(min(vec4<i32>(1i, u_input.a.x, -2147483647i, u_input.a.x), vec4<i32>(-4934i, var_0.e, u_input.a.x, 2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.e, var_0.d.x, 2147483647i, 64673i), vec4<i32>(2861i, u_input.a.x, var_0.e, u_input.a.x)))), ~var_1), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, var_4.x, global0[_wgslsmith_index_u32(81086u, 26u)], global0[_wgslsmith_index_u32(var_1.x, 26u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(-479f, -298f, var_3.x, var_3.x) + vec4<f32>(var_0.c.b, -315f, 1085f, global0[_wgslsmith_index_u32(var_0.c.a.a.x, 26u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(var_1.x, 26u)], 1583f, -391f, var_3.x) + vec4<f32>(var_0.c.c, 759f, 489f, 319f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, 1323f, -807f, global0[_wgslsmith_index_u32(4294967295u, 26u)]) - vec4<f32>(-1644f, -1010f, var_0.c.c, global0[_wgslsmith_index_u32(16831u, 26u)])))))), vec3<u32>(~_wgslsmith_div_u32(_wgslsmith_add_u32(28416u, var_1.x), ~var_1.x), 5124u ^ firstTrailingBit(u_input.e << (21917u % 32u)), ~_wgslsmith_mult_u32(4294967295u ^ var_1.x, ~70929u)));
}

