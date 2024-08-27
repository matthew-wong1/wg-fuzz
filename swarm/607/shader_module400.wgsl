struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19>;

var<private> global1: array<vec4<u32>, 16> = array<vec4<u32>, 16>(vec4<u32>(4294967295u, 4294967295u, 0u, 4009u), vec4<u32>(60324u, 1u, 15785u, 63097u), vec4<u32>(5109u, 46256u, 36963u, 1u), vec4<u32>(4294967295u, 4294967295u, 1u, 1u), vec4<u32>(5235u, 4294967295u, 9257u, 46280u), vec4<u32>(0u, 0u, 4294967295u, 6718u), vec4<u32>(1u, 4294967295u, 24711u, 0u), vec4<u32>(1u, 1u, 4294967295u, 37328u), vec4<u32>(0u, 0u, 4294967295u, 1u), vec4<u32>(0u, 58317u, 3272u, 0u), vec4<u32>(4294967295u, 1u, 53239u, 24345u), vec4<u32>(18500u, 0u, 5785u, 4294967295u), vec4<u32>(22181u, 4294967295u, 0u, 48088u), vec4<u32>(4294967295u, 62161u, 4294967295u, 0u), vec4<u32>(52219u, 21861u, 0u, 4294967295u), vec4<u32>(19061u, 25869u, 31579u, 0u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec2<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-593f, 2782f)));
    let var_1 = Struct_2(Struct_1(min(~(~0u), ~arg_0), vec3<i32>(67719i, 1i, _wgslsmith_sub_i32(-19123i, u_input.b.x | -1i)), vec3<bool>(false, all(vec3<bool>(true, true, false)) || true, all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false))), _wgslsmith_add_i32(1218i, select(-59660i, 2147483647i, 3149u <= u_input.a.x))), 2147483647i >= u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-251f))))), 4294967295u);
    var var_2 = Struct_1(_wgslsmith_add_u32(~11583u, firstTrailingBit(4294967295u | (var_1.d << (1u % 32u)))), var_1.a.b, !vec3<bool>(!all(vec4<bool>(var_1.b, var_1.b, var_1.b, var_1.a.c.x)), var_1.b, all(var_1.a.c.zy) || true), u_input.b.x << (_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(~arg_0, 16u)] | ~vec4<u32>(arg_0, var_1.d, arg_0, u_input.d.x), select(abs(vec4<u32>(1u, 0u, 4294967295u, u_input.a.x)), countOneBits(global1[_wgslsmith_index_u32(49702u, 16u)]), vec4<bool>(true, var_1.b, true, var_1.a.c.x))) % 32u));
    global1 = array<vec4<u32>, 16>();
    var var_3 = 1i;
    return max(-max(min(abs(var_2.b.x), var_1.a.b.x), -2147483647i), firstLeadingBit(var_1.a.b.x));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<u32>) -> Struct_1 {
    global1 = array<vec4<u32>, 16>();
    var var_0 = ~vec4<i32>(u_input.c, -63173i, _wgslsmith_clamp_i32(-(i32(-1i) * -4158i), u_input.c, func_3(max(arg_1.x, arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -538f), _wgslsmith_div_vec2_f32(vec2<f32>(1223f, -1222f), vec2<f32>(-1143f, 1000f)))), u_input.c);
    return Struct_1(u_input.d.x, var_0.zyx, vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(false, true, false, true)))), false, any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)))), abs((var_0.x | -18308i) ^ (select(-1681i, u_input.c, false) << (50166u % 32u))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> f32 {
    let var_0 = _wgslsmith_mod_i32(2147483647i, ~_wgslsmith_mod_i32(-abs(-2147483647i), 1i));
    global1 = array<vec4<u32>, 16>();
    var var_1 = Struct_2(Struct_1(u_input.d.x, -_wgslsmith_mult_vec3_i32(arg_0.b, arg_1) | _wgslsmith_sub_vec3_i32(min(arg_1, arg_1), arg_1), select(!func_2(u_input.d.yz, vec3<u32>(1u, arg_0.a, u_input.d.x)).c, vec3<bool>(u_input.b.x <= arg_0.b.x, arg_0.c.x, false), arg_0.c), u_input.c), true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(326f + _wgslsmith_f_op_f32(f32(-1f) * -942f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(185f)))), -1178f), u_input.a.x);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1785f);
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -998f), 1f), _wgslsmith_f_op_f32(-var_1.c))));
    return _wgslsmith_f_op_f32(f32(-1f) * -226f);
}

fn func_1(arg_0: vec2<f32>) -> f32 {
    let var_0 = ~abs(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, u_input.c, u_input.c), vec3<i32>(u_input.c, 2147483647i, 13070i), vec3<i32>(u_input.b.x, u_input.c, u_input.c)), reverseBits(vec3<i32>(39538i, -2147483647i, 43763i)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(u_input.c, u_input.b.x, -34783i))), ~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, 2147483647i, -2147483647i), vec3<i32>(u_input.c, u_input.b.x, -8065i))));
    let var_1 = Struct_1(u_input.a.x, reverseBits(~(-(~vec3<i32>(0i, 1i, var_0.x)))), vec3<bool>(_wgslsmith_div_i32(reverseBits(u_input.b.x), 20407i) == var_0.x, true, _wgslsmith_f_op_f32(func_4(func_2(u_input.a, vec3<u32>(u_input.a.x, 36593u, 4294967295u)), var_0)) < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(arg_0.x, arg_0.x))))), -2147483647i);
    let var_2 = var_1;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)));
    var var_4 = var_1.c.x || var_1.c.x;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 16>();
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -671f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2162f, 414f)))))), true));
    var var_1 = u_input.b.x;
    global0 = array<Struct_2, 19>();
    let var_2 = Struct_1(u_input.a.x, -(~min(vec3<i32>(33162i, u_input.b.x, u_input.b.x), vec3<i32>(17014i, u_input.b.x, -2147483647i)) ^ firstLeadingBit(firstLeadingBit(vec3<i32>(-2147483647i, u_input.c, 28234i)))), vec3<bool>(reverseBits(87552u) == _wgslsmith_sub_u32(160936u, u_input.a.x), true & !any(vec4<bool>(true, true, true, false)), all(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, false, false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false)))), ~abs(~abs(u_input.b.x)));
    global0 = array<Struct_2, 19>();
    var_1 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.b.x | _wgslsmith_dot_vec3_i32(vec3<i32>(16838i, var_2.b.x, var_2.b.x), vec3<i32>(var_2.d, 0i, 2147483647i)), var_2.b.x) << (_wgslsmith_add_u32((var_2.a ^ 20971u) ^ var_2.a, _wgslsmith_add_u32(109999u, 34152u) >> (var_2.a % 32u)) % 32u), ~firstLeadingBit(4294967295u), _wgslsmith_mod_vec3_i32((var_2.b ^ vec3<i32>(-1i, var_2.b.x, u_input.c)) | var_2.b, vec3<i32>(-2147483647i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-36611i, 13933i, var_2.d, var_2.b.x), vec4<i32>(u_input.c, 5772i, -2147483647i, 1i)), -1i & var_2.b.x), _wgslsmith_add_i32(~0i, var_2.b.x))), min(u_input.d.x, ~u_input.a.x), ~vec2<i32>(~abs(var_2.b.x), -_wgslsmith_div_i32(u_input.b.x, -2147483647i)));
}

