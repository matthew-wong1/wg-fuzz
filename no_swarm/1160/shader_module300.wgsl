struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1>;

var<private> global1: array<Struct_2, 18>;

var<private> global2: f32;

var<private> global3: vec3<i32> = vec3<i32>(-50718i, -1i, 0i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<u32> {
    var var_0 = vec3<i32>(firstLeadingBit(-52146i), u_input.b.x, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(37957i, -76606i, 36750i), _wgslsmith_add_vec3_i32(u_input.b, u_input.b)), ~select(u_input.b, u_input.b, false)), -2147483647i));
    return firstLeadingBit(vec2<u32>(~max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(58979u, 1u)], 1u)], 1u)] & 0u, min(22853u, 4294967295u)), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(1u, 1u)] >> (min(global0[_wgslsmith_index_u32(4294967295u, 1u)], 4294967295u) % 32u), ~(1u >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10198u, 1u)], 1u)], 1u)], 1u)] % 32u)))));
}

fn func_2() -> Struct_3 {
    let var_0 = select(abs(abs(~vec2<u32>(8290u, 1803u) << (vec2<u32>(1u, global0[_wgslsmith_index_u32(1u, 1u)]) % vec2<u32>(32u)))), select((_wgslsmith_mult_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35389u, 1u)], 1u)], 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(57768u, 1u)], 1u)], 1u)], 1u)]), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39468u, 1u)], 1u)], 1u)) ^ abs(vec2<u32>(global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)]))) | ~func_3(), _wgslsmith_add_vec2_u32(~func_3(), reverseBits(countOneBits(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 1u)], 0u)))), vec2<bool>(true, select(true, true, all(vec4<bool>(true, false, true, false))))), !vec2<bool>(any(vec3<bool>(true, true, true)), true));
    let var_1 = -(_wgslsmith_sub_vec4_i32(vec4<i32>(global3.x, select(3085i, global3.x, true), -64621i, _wgslsmith_clamp_i32(1i, 1i, global3.x)), vec4<i32>(select(1i, 2147483647i, false), _wgslsmith_mult_i32(-49062i, 0i), -28677i, ~0i)) >> (countOneBits(~vec4<u32>(4294967295u, var_0.x, 0u, var_0.x)) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(391f, _wgslsmith_f_op_f32(select(-1756f, -1111f, true)), _wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -877f) + -768f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(335f, -499f, _wgslsmith_f_op_f32(sign(-289f)), _wgslsmith_f_op_f32(step(-1666f, _wgslsmith_f_op_f32(round(575f)))))));
    var var_3 = _wgslsmith_f_op_f32(-var_2.x);
    global0 = array<u32, 1>();
    return Struct_3(select(0i, 1i, false), -var_1.x, Struct_1(var_2.x, var_2.x, false));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: Struct_3, arg_3: f32) -> i32 {
    global3 = vec3<i32>(global3.x, firstLeadingBit(global3.x), ~(-arg_1.b));
    var var_0 = -281f;
    global3 = -vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(global3.x, global3.x, -18353i), _wgslsmith_sub_i32(global3.x, global3.x)), 5249i, _wgslsmith_dot_vec3_i32(-u_input.b, ~vec3<i32>(global3.x, -2147483647i, u_input.b.x))) & u_input.b;
    var var_1 = _wgslsmith_mult_vec3_i32(~u_input.b, abs(~select(firstLeadingBit(u_input.b), -u_input.b, select(vec3<bool>(false, arg_2.c.c, true), vec3<bool>(arg_1.c.c, false, true), arg_1.c.c))));
    let var_2 = Struct_2(func_2().c, arg_2.c, (i32(-1i) * -8177i) >= firstLeadingBit(_wgslsmith_add_i32(u_input.c, u_input.b.x) | -48082i), !(!(!(!arg_1.c.c))), -9613i << (min(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)]), vec2<u32>(4660u, 2027u))), ~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(18500u, 1u)], global0[_wgslsmith_index_u32(16075u, 1u)])) % 32u));
    return _wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(arg_2.a, u_input.d) ^ 1i, abs(arg_1.a)), ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, global3.x, arg_0), ~vec3<i32>(-14092i, arg_0, 28930i)), ~(~2147483647i), var_1.x), global3.x);
}

fn func_1(arg_0: Struct_2) -> u32 {
    let var_0 = vec4<i32>(reverseBits(-28394i), select(arg_0.e, _wgslsmith_sub_i32(-61158i, global3.x), (i32(-1i) * -20842i) <= (_wgslsmith_sub_i32(global3.x, arg_0.e) << (_wgslsmith_sub_u32(26245u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(55850u, 1u)], 1u)], 1u)], 1u)]) % 32u))), ~6764i, firstTrailingBit(u_input.b.x));
    var var_1 = func_4(-var_0.x, func_2(), Struct_3(firstTrailingBit((-55592i ^ u_input.c) << (3093u % 32u)), ~select(abs(u_input.b.x), arg_0.e, all(vec3<bool>(true, arg_0.a.c, arg_0.d))), func_2().c), -2584f);
    global3 = -_wgslsmith_sub_vec3_i32(~vec3<i32>(min(var_0.x, -38607i), arg_0.e, -2147483647i | arg_0.e), max(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 0i, global3.x), vec3<i32>(global3.x, u_input.d, var_0.x)) | abs(var_0.wyw), ~(~u_input.b)));
    var var_2 = ~firstTrailingBit(~vec4<u32>(58669u, 68450u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28748u, 1u)], 1u)], 1u)], 1u) >> (firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1018u, 1u)], 1u)], 1u)], 4294967295u, 0u, global0[_wgslsmith_index_u32(17071u, 1u)])) % vec4<u32>(32u))) | _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(~1u, global0[_wgslsmith_index_u32(select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20105u, 1u)], 1u)], 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(93723u, 1u)], 1u)], 1u)], 1u)], 1u)], arg_0.d), 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27707u, 1u)], 1u)], 1u)], 1u)], 1u)] ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(abs(1u), 1u)], 1u)])), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42834u, 1u)], 1u)], 1u)]), global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)]), reverseBits(reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47410u, 1u)], 1u)], 1u)])), min(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(46492u, 1u)], 1u)], firstLeadingBit(global0[_wgslsmith_index_u32(8529u, 1u)])), ~10155u));
    let var_3 = global1[_wgslsmith_index_u32(36700u, 18u)];
    return global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(~_wgslsmith_div_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20383u, 1u)], 1u)], global0[_wgslsmith_index_u32(countOneBits(18006u), 1u)]), (reverseBits(global0[_wgslsmith_index_u32(57869u, 1u)]) & select(global0[_wgslsmith_index_u32(1u, 1u)], var_2.x, var_3.c)) | ~abs(global0[_wgslsmith_index_u32(13841u, 1u)])), 1u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(~(~func_1(global1[_wgslsmith_index_u32(9180u, 18u)])), ~(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)])), 1u, select(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(1u), 1u), 1u)], global0[_wgslsmith_index_u32(~(~58533u), 1u)], !func_2().c.c));
    let var_1 = u_input.b.x;
    global1 = array<Struct_2, 18>();
    var_0 = vec4<u32>(~reverseBits(1u) >> (0u % 32u), 4294967295u, max(~max(1u, var_0.x), _wgslsmith_sub_u32(1u, global0[_wgslsmith_index_u32(var_0.x & 20380u, 1u)])) | 40180u, ~countOneBits(func_1(Struct_2(Struct_1(1353f, -758f, true), Struct_1(-3706f, -138f, true), true, false, var_1))));
    let var_2 = vec2<u32>(abs(~(~4294967295u)), abs(abs(firstTrailingBit(4294967295u))));
    global0 = array<u32, 1>();
    global0 = array<u32, 1>();
    let var_3 = global3.yz;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -640f), _wgslsmith_f_op_f32(round(636f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1271f))), ~34729u == ~var_0.x)) + -478f) - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1642f, -462f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(259f)))), all(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), false)))));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-613f)))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - 1585f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-136f))))), vec2<i32>(~2147483647i, ~_wgslsmith_div_i32(-17224i, abs(var_1))));
}

