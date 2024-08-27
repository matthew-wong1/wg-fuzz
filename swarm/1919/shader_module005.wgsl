struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: vec4<i32>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 32>;

var<private> global1: u32 = 8182u;

var<private> global2: bool;

var<private> global3: array<Struct_1, 10>;

var<private> global4: array<Struct_2, 24>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec4<u32>) -> bool {
    let var_0 = Struct_4(~_wgslsmith_mult_vec2_i32(select(u_input.c.zz, vec2<i32>(arg_2.e.a.x, arg_2.e.a.x) & u_input.c.zz, !vec2<bool>(false, arg_2.e.c)), u_input.c.xy), 743f, _wgslsmith_mod_vec4_i32(reverseBits(reverseBits(arg_1.c)) << (vec4<u32>(_wgslsmith_mod_u32(u_input.d, u_input.b), abs(u_input.d), 18753u, ~1u) % vec4<u32>(32u)), ~_wgslsmith_clamp_vec4_i32(arg_0.a, vec4<i32>(2147483647i, u_input.c.x, -1i, arg_0.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, -4582i, 1i, u_input.c.x), arg_1.c))), _wgslsmith_f_op_f32(trunc(139f)), Struct_1(countOneBits(arg_1.c), arg_2.b, _wgslsmith_mod_u32(45315u, u_input.d) != _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a.x, 4294967295u), 1u), !(!arg_1.e.c)));
    let var_1 = Struct_4(vec2<i32>(u_input.c.x, ~(-1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(756f))) * -862f), arg_2.c, _wgslsmith_f_op_f32(round(-1021f)), arg_1.e);
    global4 = array<Struct_2, 24>();
    var var_2 = global4[_wgslsmith_index_u32(u_input.d, 24u)];
    var var_3 = Struct_2(~var_2.a ^ _wgslsmith_mod_vec2_u32(arg_3.zx << (countOneBits(vec2<u32>(arg_3.x, arg_3.x)) % vec2<u32>(32u)), ~(~vec2<u32>(var_2.a.x, 0u))), _wgslsmith_mult_vec3_i32(firstTrailingBit(firstLeadingBit(vec3<i32>(u_input.c.x, var_2.b.x, -24202i))) & (firstTrailingBit(vec3<i32>(arg_0.a.x, u_input.c.x, -28083i)) & vec3<i32>(arg_2.a.x, var_1.a.x, var_1.a.x)), select(var_0.e.a.wyy, -abs(arg_2.e.a.xwy), var_0.e.d)));
    return true;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: Struct_4) -> bool {
    global4 = array<Struct_2, 24>();
    global1 = _wgslsmith_dot_vec2_u32(~(~(~max(u_input.a.zx, vec2<u32>(1u, u_input.b)))), _wgslsmith_sub_vec2_u32(~u_input.a.xx, vec2<u32>(u_input.b, u_input.b)));
    var var_0 = min(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1, min(-1i, arg_2.a.x)), _wgslsmith_sub_vec2_i32(-arg_2.a.xw, vec2<i32>(-2147483647i, arg_3.a.x)))), ~(~u_input.c.zx));
    global3 = array<Struct_1, 10>();
    var var_1 = Struct_3(_wgslsmith_div_i32(-_wgslsmith_sub_i32(-arg_1, _wgslsmith_dot_vec3_i32(arg_3.c.xwx, vec3<i32>(-35808i, u_input.c.x, u_input.c.x))), ~(0i)), any(select(!select(vec2<bool>(false, false), vec2<bool>(false, arg_0), arg_3.e.c), select(vec2<bool>(true, true), select(vec2<bool>(arg_3.e.c, true), vec2<bool>(false, true), arg_0), vec2<bool>(false, arg_0)), select(vec2<bool>(true, true), vec2<bool>(arg_2.d, arg_0), vec2<bool>(false, arg_3.e.d)))), countOneBits(_wgslsmith_add_vec4_u32(~u_input.a, u_input.a) ^ select(u_input.a, abs(u_input.a), !vec4<bool>(true, true, arg_2.c, arg_2.c))));
    return all(!vec2<bool>(min(u_input.d, u_input.a.x) >= _wgslsmith_clamp_u32(4294967295u, u_input.a.x, var_1.c.x), all(select(vec2<bool>(arg_3.e.c, true), vec2<bool>(var_1.b, arg_3.e.c), arg_3.e.c))));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32) -> i32 {
    var var_0 = 29114u;
    var_0 = ~(~arg_1) << (arg_1 % 32u);
    var var_1 = any(vec4<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(166f * arg_0.x), _wgslsmith_div_f32(arg_0.x, 103f))) < -547f, true, func_4(true, firstLeadingBit(u_input.c.x), Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -17871i), vec4<i32>(u_input.c.x, u_input.c.x, -1i, -6096i), vec4<i32>(u_input.c.x, u_input.c.x, 1i, -68796i)), arg_0.x, func_3(global3[_wgslsmith_index_u32(35859u, 10u)], Struct_4(vec2<i32>(u_input.c.x, 1i), -461f, vec4<i32>(u_input.c.x, 0i, -1i, u_input.c.x), arg_0.x, Struct_1(vec4<i32>(18145i, 10380i, -2147483647i, u_input.c.x), arg_0.x, true, false)), Struct_4(vec2<i32>(1i, u_input.c.x), arg_0.x, vec4<i32>(u_input.c.x, 1014i, 2147483647i, u_input.c.x), 111f, global3[_wgslsmith_index_u32(16968u, 10u)]), vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b)), true), Struct_4(vec2<i32>(-5425i, u_input.c.x), _wgslsmith_f_op_f32(-arg_0.x), vec4<i32>(25596i, u_input.c.x, -2147483647i, -1i), _wgslsmith_f_op_f32(round(2300f)), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(773u, arg_1), 10u)])), arg_0.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))));
    global3 = array<Struct_1, 10>();
    var var_2 = -38297i;
    return i32(-1i) * -(~(-(i32(-1i) * -1i)));
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(0u, 32u)];
    var var_1 = i32(-1i) * -firstTrailingBit(~countOneBits(var_0.a));
    let var_2 = -vec4<i32>(func_2(vec4<f32>(1000f, -569f, 1755f, -1012f), u_input.a.x), -45118i << ((36788u & u_input.a.x) % 32u), countOneBits(~19813i), abs(u_input.c.x)) ^ vec4<i32>((-2147483647i >> (~var_0.c.x % 32u)) & 8421i, 82683i, -var_0.a, -35998i);
    let var_3 = vec2<i32>(var_2.x, _wgslsmith_dot_vec3_i32(u_input.c & _wgslsmith_clamp_vec3_i32(u_input.c, vec3<i32>(-2147483647i, -1i, u_input.c.x) | vec3<i32>(u_input.c.x, u_input.c.x, -2147483647i), vec3<i32>(var_2.x, var_0.a, 1i) | var_2.xyy), _wgslsmith_add_vec3_i32(u_input.c, _wgslsmith_mult_vec3_i32(u_input.c, var_2.xyz))));
    let var_4 = global3[_wgslsmith_index_u32(reverseBits(abs(4294967295u)), 10u)];
    return global3[_wgslsmith_index_u32(~1u, 10u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(vec2<i32>(~(-38570i), ~(5460i ^ ~u_input.c.x)), 572f, ~(vec4<i32>(-1i) * -(vec4<i32>(42335i, u_input.c.x, -1i, u_input.c.x) | vec4<i32>(-2147483647i, 24473i, -2147483647i, u_input.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1597f)))))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -672f))))), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2005f, 828f)) + vec2<f32>(1000f, -255f)))));
    global4 = array<Struct_2, 24>();
    global0 = array<Struct_3, 32>();
    let var_1 = func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -244f), _wgslsmith_f_op_f32(var_0.d + _wgslsmith_f_op_f32(select(var_0.d, -547f, true))))));
    global0 = array<Struct_3, 32>();
    global2 = select(false, var_1.c, _wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-162f + var_1.b) - var_0.b)) < var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(136f, var_0.b, var_1.b, var_1.b))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.e.b, -301f, var_1.b, 1000f)))) + vec4<f32>(func_1(vec2<f32>(-589f, var_1.b)).b, _wgslsmith_f_op_f32(var_1.b + var_0.e.b), func_1(vec2<f32>(var_1.b, 684f)).b, _wgslsmith_f_op_f32(ceil(-1518f)))), 47032u), -651f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, _wgslsmith_div_f32(var_1.b, var_1.b), -956f))), -1263f, firstTrailingBit(u_input.b));
}

