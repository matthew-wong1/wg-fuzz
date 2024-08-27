struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec3<u32>,
    d: vec3<bool>,
    e: f32,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 7> = array<u32, 7>(38784u, 4294967295u, 4438u, 4294967295u, 1u, 99679u, 13549u);

var<private> global2: f32;

var<private> global3: u32;

var<private> global4: array<vec2<f32>, 32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_5, arg_1: vec4<f32>, arg_2: f32, arg_3: vec4<u32>) -> vec2<bool> {
    let var_0 = ~u_input.a;
    let var_1 = _wgslsmith_mod_vec3_i32(max(firstLeadingBit(firstTrailingBit(abs(u_input.e))), (vec3<i32>(10225i, var_0.x, 454i) | ~vec3<i32>(u_input.b.x, var_0.x, u_input.a.x)) ^ -_wgslsmith_div_vec3_i32(vec3<i32>(490i, var_0.x, -2147483647i), vec3<i32>(1i, 0i, u_input.a.x))), _wgslsmith_add_vec3_i32(~_wgslsmith_div_vec3_i32(var_0, vec3<i32>(-25406i, u_input.c, var_0.x)), var_0));
    global3 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.d, _wgslsmith_sub_u32(~(~arg_3.x), _wgslsmith_mult_u32(41120u & arg_3.x, _wgslsmith_mult_u32(25167u, u_input.d)))), _wgslsmith_add_u32(4294967295u, max(u_input.d, ~u_input.d)), _wgslsmith_dot_vec3_u32(arg_3.zzz, vec3<u32>(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(74580u, 33118u, global1[_wgslsmith_index_u32(61763u, 7u)], 1u), arg_3), 7u)], 1u, 60394u)));
    let var_2 = u_input.b.x;
    var var_3 = ~select(firstTrailingBit(firstLeadingBit(14204u)), global1[_wgslsmith_index_u32(~40129u ^ ~firstTrailingBit(arg_3.x), 7u)], any(arg_0.a));
    return !select(!arg_0.a.xx, select(!(!arg_0.a.yz), !(!arg_0.a.yx), select(select(vec2<bool>(false, true), vec2<bool>(true, arg_0.a.x), arg_0.a.zx), vec2<bool>(arg_0.a.x, true), arg_0.a.zy)), vec2<bool>(any(select(arg_0.a, vec3<bool>(false, arg_0.a.x, false), arg_0.a)), true));
}

fn func_2() -> Struct_2 {
    global0 = all(select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), any(vec3<bool>(false, false, true))), vec2<bool>(u_input.c < u_input.b.x, all(vec2<bool>(false, false))), false), func_3(Struct_5(vec3<bool>(false, false, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(705f, -631f, 194f, -471f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-256f))), vec4<u32>(u_input.d & u_input.d, u_input.d, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 0u), ~0u))));
    var var_0 = reverseBits(vec3<i32>(53208i, 2147483647i >> (~global1[_wgslsmith_index_u32(55885u, 7u)] % 32u), 2147483647i) & u_input.a);
    var_0 = vec3<i32>(-(~var_0.x), var_0.x, _wgslsmith_dot_vec4_i32(select(vec4<i32>(_wgslsmith_mult_i32(u_input.b.x, var_0.x), _wgslsmith_mod_i32(0i, u_input.a.x), _wgslsmith_mod_i32(13220i, -34937i), _wgslsmith_dot_vec3_i32(u_input.e, u_input.e)), ~reverseBits(vec4<i32>(-15862i, -44063i, u_input.b.x, -1i)), !all(vec3<bool>(false, true, true))), _wgslsmith_add_vec4_i32(~(vec4<i32>(var_0.x, u_input.b.x, 1i, -2147483647i) & vec4<i32>(-1i, var_0.x, var_0.x, 12937i)), vec4<i32>(u_input.c, _wgslsmith_clamp_i32(26321i, var_0.x, 2147483647i), _wgslsmith_dot_vec3_i32(u_input.e, u_input.a), _wgslsmith_clamp_i32(36013i, 0i, -2147483647i)))));
    let var_1 = -1i;
    var var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 7u)], _wgslsmith_mod_u32(_wgslsmith_div_u32(1u, u_input.d), max(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 7u)], 7u)], 7u)], 7u)], u_input.d)), _wgslsmith_dot_vec3_u32((vec3<u32>(u_input.d, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 7u)], 4294967295u) >> (vec3<u32>(10540u, 24976u, 4294967295u) % vec3<u32>(32u))) >> (~vec3<u32>(53643u, 0u, 4294967295u) % vec3<u32>(32u)), select(~vec3<u32>(u_input.d, u_input.d, 1u), vec3<u32>(u_input.d, 0u, 10249u) & vec3<u32>(88205u, 1u, global1[_wgslsmith_index_u32(u_input.d, 7u)]), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false)))), vec3<u32>(_wgslsmith_sub_u32(24956u, (u_input.d ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16919u, 7u)], 7u)]) | (1u << (u_input.d % 32u))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.d, global1[_wgslsmith_index_u32(6685u, 7u)], 1u, u_input.d)), vec4<u32>(60562u, 0u, u_input.d, 0u)), global1[_wgslsmith_index_u32(7227u, 7u)], 64833u), u_input.d << (_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(94021u, 7u)], ~u_input.d) % 32u)));
    return Struct_2(true, u_input.e.x, firstLeadingBit(~vec3<u32>(1u, 1u, 1u)), select(vec3<bool>(true, true, true), vec3<bool>(func_3(Struct_5(vec3<bool>(true, false, false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-431f, -986f, 1064f, -1362f) * vec4<f32>(327f, -563f, -1000f, -118f)), -1000f, vec4<u32>(3927u, 41473u, 4294967295u, 1u)).x, false, false), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
}

fn func_4(arg_0: Struct_4) -> vec4<u32> {
    return vec4<u32>(firstLeadingBit(arg_0.b.c.x), min(1u, 4294967295u), ~u_input.d, select(u_input.d, u_input.d, arg_0.b.a)) | vec4<u32>(1u, _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(71539u, u_input.d), 7u)], 1u), 0u, ~(~12019u) ^ _wgslsmith_dot_vec3_u32(~arg_0.b.c, arg_0.b.c));
}

fn func_5(arg_0: vec4<i32>, arg_1: f32, arg_2: vec4<u32>) -> vec2<bool> {
    return func_3(Struct_5(vec3<bool>(true, true, true)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(444f, 878f)), _wgslsmith_div_f32(arg_1, arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), -124f, -1160f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -522f)))), 329f, arg_2);
}

fn func_1(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = firstTrailingBit(-(~(~u_input.e)));
    let var_1 = select(func_5(vec4<i32>(var_0.x, abs(~(-2147483647i)), -(arg_2.x << (78508u % 32u)), ~var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1402f) + 689f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -910f) * _wgslsmith_div_f32(-684f, -1609f))), func_4(Struct_4(1i >> (u_input.d % 32u), func_2()))), func_5(arg_2, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(522f, _wgslsmith_div_f32(-1044f, -596f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -527f) * _wgslsmith_f_op_f32(-1000f + 1399f)))), _wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(985u, 54314u, 37027u, 4294967295u), vec4<u32>(global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(1u, 7u)], 0u, 94382u)), vec4<u32>(11356u, ~2756u, u_input.d, 1u))), arg_0.a.xz);
    global1 = array<u32, 7>();
    var var_2 = countOneBits(u_input.a) ^ select(u_input.a, firstTrailingBit(select(vec3<i32>(-1i, -1i, arg_3.x), ~var_0, func_2().d)), !arg_0.a);
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1195f) - _wgslsmith_f_op_f32(f32(-1f) * -499f)) + -1243f), 1f, _wgslsmith_f_op_f32(2034f - _wgslsmith_f_op_f32(406f * 1016f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-806f, 715f), -1192f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-317f)), _wgslsmith_f_op_f32(f32(-1f) * -715f)), true))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-319f, -1252f, -1751f, 112f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-696f, _wgslsmith_f_op_f32(1000f + 1106f), -944f, _wgslsmith_f_op_f32(sign(590f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-739f, -1000f, 1000f, 863f)) - vec4<f32>(-877f, 617f, 405f, 1323f))), arg_1)));
    return func_2();
}

fn func_6(arg_0: vec3<f32>, arg_1: bool, arg_2: vec2<i32>, arg_3: Struct_2) -> vec2<bool> {
    global3 = ~countOneBits(_wgslsmith_dot_vec4_u32(max(~vec4<u32>(1u, 51465u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 7u)], 7u)], 12570u), vec4<u32>(67626u, u_input.d, 11218u, u_input.d) >> (vec4<u32>(4294967295u, 1u, 4294967295u, 0u) % vec4<u32>(32u))), vec4<u32>(max(arg_3.c.x, u_input.d), 1u, ~u_input.d, ~11339u)));
    var var_0 = abs(arg_2);
    global1 = array<u32, 7>();
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~max(~21190u, _wgslsmith_div_u32(1u, 4294967295u)), 7u)], 32u)] - _wgslsmith_f_op_vec2_f32(arg_0.yy + arg_0.xx)), arg_0.xy));
    let var_2 = func_2().d;
    return vec2<bool>(false, true);
}

fn func_7(arg_0: Struct_3) -> Struct_4 {
    var var_0 = Struct_5(select(!vec3<bool>(arg_0.c.x && arg_0.c.x, false, true), func_1(Struct_5(func_2().d), vec4<bool>(all(vec4<bool>(false, true, false, arg_0.c.x)), false, arg_0.c.x, true), ~min(vec4<i32>(-11492i, 42066i, u_input.a.x, u_input.a.x), vec4<i32>(0i, -106410i, u_input.c, u_input.e.x)), (vec4<i32>(23396i, u_input.e.x, -1i, u_input.c) & vec4<i32>(47742i, -9541i, u_input.c, -9023i)) | max(vec4<i32>(-50934i, 2147483647i, -2147483647i, u_input.a.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.e.x, 50519i))).d, arg_0.b.x));
    global0 = !select(true, true, countOneBits(u_input.c) >= u_input.e.x);
    global4 = array<vec2<f32>, 32>();
    let var_1 = vec4<bool>(true, !func_1(Struct_5(vec3<bool>(true, true, true)), select(!vec4<bool>(false, true, true, var_0.a.x), vec4<bool>(true, true, true, true), false), select(~vec4<i32>(0i, u_input.c, 1i, 3276i), firstTrailingBit(vec4<i32>(45319i, 2147483647i, 2147483647i, u_input.e.x)), arg_0.b.x == arg_0.b.x), vec4<i32>(2147483647i, -2968i, i32(-1i) * -1i, _wgslsmith_mod_i32(0i, 4453i))).a, var_0.a.x, any(var_0.a));
    var var_2 = arg_0;
    return Struct_4(u_input.c, Struct_2(true, -1i, firstLeadingBit(abs(~vec3<u32>(u_input.d, global1[_wgslsmith_index_u32(11856u, 7u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)]))), select(vec3<bool>(var_1.x, false, func_2().a), vec3<bool>(var_2.b.x, any(var_0.a.yx), true), !var_1.yww), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -603f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(Struct_3(!(_wgslsmith_div_i32(u_input.c, u_input.b.x) != u_input.b.x), !func_6(_wgslsmith_f_op_vec3_f32(-vec3<f32>(159f, -2968f, 470f)), true, ~u_input.b, func_1(Struct_5(vec3<bool>(false, true, true)), vec4<bool>(false, false, false, true), vec4<i32>(-1i, u_input.b.x, u_input.c, 0i), vec4<i32>(-14180i, 2147483647i, u_input.c, 2615i))), func_5(vec4<i32>(u_input.c | 0i, _wgslsmith_clamp_i32(2147483647i, u_input.e.x, 1i), _wgslsmith_add_i32(-44119i, -1225i), _wgslsmith_add_i32(0i, u_input.a.x)), -2123f, _wgslsmith_mult_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(41480u, 7u)], u_input.d, 1u, global1[_wgslsmith_index_u32(u_input.d, 7u)]), ~vec4<u32>(0u, 53118u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 7u)], 7u)], 1u)))));
    global2 = var_0.b.e;
    let var_1 = var_0.b.d.zx;
    global0 = var_1.x;
    global3 = reverseBits(func_2().c.x);
    var var_2 = _wgslsmith_mod_vec4_u32(~vec4<u32>(abs(global1[_wgslsmith_index_u32(~0u, 7u)]), u_input.d ^ ~var_0.b.c.x, 4294967295u, func_2().c.x), vec4<u32>(~(~_wgslsmith_add_u32(1u, global1[_wgslsmith_index_u32(u_input.d, 7u)])), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(1u, var_0.b.c.x)), var_0.b.c.yx), func_2().c.x & 28978u, reverseBits(func_1(Struct_5(var_0.b.d), vec4<bool>(false, false, true, true), vec4<i32>(-1i, -22597i, -1i, 2147483647i), vec4<i32>(3693i, var_0.b.b, u_input.e.x, u_input.a.x)).c.x)), ~(~_wgslsmith_add_u32(u_input.d, 0u)), 0u));
    let var_3 = min(func_7(Struct_3(true, var_0.b.d.yy, vec2<bool>(var_2.x == 62958u, !var_1.x))).b.c.x, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.b.e), _wgslsmith_div_vec4_i32(vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, var_0.b.b, var_0.a, 2147483647i), vec4<i32>(2147483647i, 23327i, var_0.a, u_input.a.x)), 11532i, -(~var_0.b.b), u_input.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, -8404i, 25531i, 5241i), _wgslsmith_clamp_vec4_i32(vec4<i32>(24512i, 2147483647i, u_input.a.x, var_0.b.b), vec4<i32>(var_0.b.b, 0i, var_0.a, -40074i), vec4<i32>(0i, var_0.b.b, 46192i, -1i))) << (vec4<u32>(firstTrailingBit(0u), var_3, 1u, ~var_0.b.c.x) % vec4<u32>(32u))), vec4<i32>(i32(-1i) * -1i, _wgslsmith_mod_i32(~var_0.a, var_0.a) ^ (var_0.a | -u_input.c), 1i, _wgslsmith_add_i32(~(var_0.a | -16938i), -12570i)));
}

