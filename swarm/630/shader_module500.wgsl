struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<u32>,
    d: vec2<u32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: vec2<i32> = vec2<i32>(1i, i32(-2147483648));

var<private> global2: array<f32, 16> = array<f32, 16>(1369f, -539f, 798f, 1012f, 333f, -1000f, -145f, -499f, -1909f, -1532f, 706f, -1014f, -1490f, 743f, 211f, 218f);

var<private> global3: f32 = -120f;

var<private> global4: vec3<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a + -1049f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.a, arg_2.a)) - arg_0.a))), false | !any(select(vec2<bool>(false, true), vec2<bool>(true, false), false)), firstTrailingBit(_wgslsmith_sub_vec2_u32(~arg_0.c, reverseBits(arg_1.d))) | ~arg_2.c, vec2<u32>(firstTrailingBit(71690u), _wgslsmith_add_u32(arg_1.c.x >> (~1u % 32u), ~firstTrailingBit(u_input.b.x))), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global1.x, -1i, arg_3.e, arg_2.e), vec4<i32>(u_input.a, arg_1.e, -28770i, -36470i)), vec4<i32>(_wgslsmith_sub_i32(-2147483647i, -33704i), _wgslsmith_clamp_i32(arg_1.e, global1.x, -20475i), arg_1.e, abs(2147483647i))) << (_wgslsmith_mult_u32(0u, 1u) % 32u));
    var var_1 = max(_wgslsmith_div_vec3_u32(~countOneBits(vec3<u32>(1u, arg_2.d.x, 4584u)), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(74069u, var_0.c.x), arg_0.c), var_0.d.x, arg_1.c.x), vec3<u32>(~4294967295u, ~0u, 4294967295u))), vec3<u32>(~_wgslsmith_mult_u32(min(arg_2.c.x, arg_3.c.x), u_input.b.x), ~19288u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.d.x, 1u), vec2<u32>(u_input.b.x, 4294967295u)), abs(59967u)), firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(global4.x, 1u, global4.x), vec3<u32>(global4.x, 30040u, u_input.b.x))))));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(168f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(710f * global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global4.x, 4294967295u, 0u), 16u)]))))), 271f));
    let var_3 = arg_1;
    let var_4 = Struct_1(1124f, true | var_0.b, firstTrailingBit(~(~(~vec2<u32>(0u, 1u)))), var_3.c, _wgslsmith_mod_i32(-var_3.e, ~(-1i)));
    return global2[_wgslsmith_index_u32(58597u, 16u)];
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: vec2<i32>) -> u32 {
    let var_0 = max(arg_2.c.x, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, firstTrailingBit(arg_2.c.x), ~u_input.b.x, _wgslsmith_sub_u32(78829u, global4.x)), _wgslsmith_div_vec4_u32(~vec4<u32>(global4.x, 36456u, 1u, 34623u), vec4<u32>(41604u, arg_2.d.x, 0u, 82526u) | vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 19890u)))));
    let var_1 = ~vec3<i32>(~_wgslsmith_mult_i32(u_input.a ^ 2147483647i, _wgslsmith_add_i32(global1.x, -1i)), -global1.x, _wgslsmith_add_i32(37243i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-38915i, arg_2.e, global1.x), firstTrailingBit(u_input.a))));
    let var_2 = global0[_wgslsmith_index_u32(abs(global4.x), 10u)];
    let var_3 = _wgslsmith_mod_vec3_i32(min(vec3<i32>(u_input.a, abs(var_1.x), _wgslsmith_div_i32(_wgslsmith_div_i32(-86656i, 31911i), abs(34436i))), firstLeadingBit(-var_1)), var_1);
    global2 = array<f32, 16>();
    return 0u;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_1) -> f32 {
    var var_0 = ~firstTrailingBit(~arg_0.d.x | ~arg_0.d.x);
    let var_1 = ~vec3<i32>(countOneBits(0i), ~(~_wgslsmith_div_i32(50971i, global1.x)), arg_2.x);
    global4 = vec3<u32>(arg_3.c.x, countOneBits(~func_4(_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(4294967295u, 10u)], Struct_1(1029f, arg_0.b, u_input.b, vec2<u32>(48619u, u_input.b.x), global1.x), Struct_1(-259f, true, arg_0.d, global4.yx, -38793i), arg_0)), _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(0u, 16u)], 406f)), arg_3, _wgslsmith_div_vec2_i32(vec2<i32>(arg_3.e, 2147483647i), var_1.xz))), 4294967295u);
    global0 = array<Struct_1, 10>();
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a - arg_0.a))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -158f)))));
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(global4.x, 10u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(694f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], global1.x, vec3<i32>(0i, var_0.e, 0i), Struct_1(global2[_wgslsmith_index_u32(arg_0.x, 16u)], false, var_0.c, u_input.b, 9672i)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(417f, -934f)), vec2<f32>(var_0.a, global2[_wgslsmith_index_u32(arg_0.x, 16u)]))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(195f, var_0.a)) - vec2<f32>(186f, global2[_wgslsmith_index_u32(19794u, 16u)])) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(429f, var_0.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_0.a) * vec2<f32>(1234f, -1600f))))));
    var_0 = Struct_1(var_0.a, (u_input.a << (1u % 32u)) > 0i, ~vec2<u32>(global4.x, ~var_0.d.x), global4.yy, countOneBits(reverseBits(min(-var_0.e, -2147483647i))));
    global1 = reverseBits(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, var_0.e) << (u_input.b % vec2<u32>(32u)), select(vec2<i32>(u_input.a, -30503i), vec2<i32>(global1.x, u_input.a), false)))) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(13276i, min(countOneBits(global1.x), max(-34660i, -19627i))), _wgslsmith_sub_vec2_i32(-vec2<i32>(global1.x, -2147483647i) >> (vec2<u32>(11806u, global4.x) % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(1i, var_0.e))));
    let var_2 = -vec3<i32>(-countOneBits(~u_input.a), global1.x, ~_wgslsmith_add_i32(global1.x, var_0.e) >> (global4.x % 32u));
    return Struct_1(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32(18627u, 0u)), 16u)]), true, ~arg_0.zy, _wgslsmith_mod_vec2_u32(~(~global4.yy), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.c.x, 42147u), ~global4.zx)) ^ countOneBits(_wgslsmith_div_vec2_u32(var_0.c, countOneBits(u_input.b))), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, reverseBits(_wgslsmith_mult_i32(18791i, var_0.e)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, var_0.e) << (vec2<u32>(var_0.c.x, 1u) % vec2<u32>(32u)), vec2<i32>(1i, global1.x) & var_2.yx), ~global1.x), vec4<i32>(71439i, min(514i >> (arg_0.x % 32u), var_2.x), var_0.e, var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = countOneBits(vec3<u32>(0u, 0u, ~(u_input.b.x & ~u_input.b.x)));
    let var_0 = max(u_input.a, -36893i) != (global1.x & firstLeadingBit(~(~u_input.a)));
    global1 = select(((~vec2<i32>(global1.x, 32433i) & ~vec2<i32>(u_input.a, -25222i)) | vec2<i32>(~global1.x, ~global1.x)) & abs(vec2<i32>(75295i, 5899i) << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u))), -_wgslsmith_mult_vec2_i32(~vec2<i32>(global1.x, u_input.a) | (vec2<i32>(-23614i, -29720i) ^ vec2<i32>(u_input.a, u_input.a)), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(u_input.a, u_input.a)), vec2<i32>(52503i, -11623i))), false);
    var var_1 = func_1(vec4<u32>(u_input.b.x, ~78673u, ~_wgslsmith_div_u32(max(1u, u_input.b.x), _wgslsmith_div_u32(global4.x, u_input.b.x)), u_input.b.x));
    global2 = array<f32, 16>();
    let var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(~(var_1.d.x >> (~55160u % 32u)), 16735u << (~(~global4.x) % 32u), countOneBits(~u_input.b.x)), ~min(~abs(vec3<u32>(4294967295u, var_1.d.x, u_input.b.x)), vec3<u32>(_wgslsmith_add_u32(73218u, u_input.b.x), countOneBits(u_input.b.x), 4294967295u)));
    var var_3 = func_1(~vec4<u32>(4294967295u, 20280u, var_1.d.x, var_2));
    var_1 = global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_clamp_u32(45862u, reverseBits(global4.x << (~1u % 32u)), firstLeadingBit(var_1.c.x))), 10u)];
    let var_4 = vec4<f32>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~41588u, 4294967295u), 16u)], -2835f, -1699f, _wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-(-2147483647i >> (var_1.d.x % 32u)), 21606i, u_input.a, ~(-_wgslsmith_div_i32(-50518i, 18850i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.x - _wgslsmith_f_op_f32(func_1(vec4<u32>(u_input.b.x, var_2, 4294967295u, var_3.c.x)).a + _wgslsmith_f_op_f32(582f - 174f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(296f + var_1.a) - -624f)))), max(-select(1i, _wgslsmith_mod_i32(8897i, -2147483647i), var_1.b), firstTrailingBit(-57751i)), 1u, ~firstLeadingBit(select(vec4<i32>(var_1.e, var_1.e, 1i, global1.x), vec4<i32>(-23572i, global1.x, -7324i, var_1.e), vec4<bool>(false, false, var_3.b, false)) ^ -vec4<i32>(-1i, var_1.e, -31658i, var_1.e)));
}

