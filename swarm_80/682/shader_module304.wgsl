struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 32> = array<vec3<u32>, 32>(vec3<u32>(5027u, 48970u, 23269u), vec3<u32>(58882u, 4294967295u, 28398u), vec3<u32>(21269u, 4294967295u, 8195u), vec3<u32>(4668u, 0u, 4294967295u), vec3<u32>(4294967295u, 70712u, 1u), vec3<u32>(1u, 4604u, 18041u), vec3<u32>(31675u, 41433u, 1u), vec3<u32>(8881u, 39648u, 1u), vec3<u32>(0u, 13347u, 101278u), vec3<u32>(26834u, 35381u, 1u), vec3<u32>(29299u, 1u, 4294967295u), vec3<u32>(61967u, 4294967295u, 4294967295u), vec3<u32>(7772u, 34001u, 1u), vec3<u32>(1u, 0u, 0u), vec3<u32>(4294967295u, 0u, 2108u), vec3<u32>(15522u, 7872u, 73698u), vec3<u32>(11165u, 0u, 1u), vec3<u32>(78462u, 4294967295u, 3232u), vec3<u32>(39517u, 1u, 1u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(25323u, 89676u, 4294967295u), vec3<u32>(4294967295u, 65957u, 31790u), vec3<u32>(22529u, 72061u, 36912u), vec3<u32>(38678u, 0u, 0u), vec3<u32>(0u, 4294967295u, 18167u), vec3<u32>(51986u, 0u, 4294967295u), vec3<u32>(4294967295u, 1u, 28499u), vec3<u32>(6921u, 49769u, 284u), vec3<u32>(14569u, 85979u, 46048u), vec3<u32>(62816u, 4294967295u, 1u), vec3<u32>(0u, 63854u, 4294967295u), vec3<u32>(4294967295u, 27147u, 73537u));

var<private> global1: i32;

var<private> global2: f32 = -451f;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: f32) -> vec4<u32> {
    global2 = arg_1;
    let var_0 = firstLeadingBit(~_wgslsmith_sub_vec3_u32(global0[_wgslsmith_index_u32(max(u_input.a.x, 4294967295u), 32u)], ~global0[_wgslsmith_index_u32(32746u, 32u)]));
    var var_1 = vec4<bool>(select(!(51461u != u_input.a.x), !(min(1u, 22330u) <= u_input.a.x), !all(select(vec2<bool>(true, false), vec2<bool>(true, true), false))), true, any(select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), true);
    var var_2 = var_1.x;
    global0 = array<vec3<u32>, 32>();
    return vec4<u32>(1u, ~35341u, max(_wgslsmith_dot_vec4_u32(select(vec4<u32>(32455u, 28383u, u_input.d, 24664u), vec4<u32>(var_0.x, var_0.x, 62224u, 34957u), vec4<bool>(true, var_1.x, false, true)) ^ ~vec4<u32>(0u, var_0.x, var_0.x, 4294967295u), _wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.x, u_input.c.x, 4294967295u, var_0.x), vec4<u32>(u_input.a.x, 4294967295u, u_input.c.x, 4294967295u) ^ vec4<u32>(0u, 4294967295u, 44361u, 12715u))), firstLeadingBit(abs(~4294967295u))), _wgslsmith_dot_vec2_u32(abs(firstLeadingBit(~var_0.zy)), ~((var_0.xz | vec2<u32>(var_0.x, var_0.x)) >> (var_0.yz % vec2<u32>(32u)))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: u32) -> f32 {
    var var_0 = Struct_2(Struct_1(vec3<i32>(-_wgslsmith_mod_i32(591i, 29682i), -3036i, max(2147483647i, _wgslsmith_mult_i32(-21165i, 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1551f)) + 1f)), -17798i, !arg_2.c), Struct_1(-select(~vec3<i32>(-2147483647i, -1i, 24481i), vec3<i32>(1i, 1i, 1i), vec3<bool>(false, arg_0.c.x, arg_1.x)), arg_2.a.x, _wgslsmith_clamp_i32(-1i, _wgslsmith_add_i32(_wgslsmith_add_i32(-27117i, -1i), 1i), -2147483647i), vec2<bool>(all(!arg_1.yw), false)));
    var var_1 = -_wgslsmith_dot_vec3_i32(var_0.b.a, ~vec3<i32>(firstLeadingBit(var_0.a.c), _wgslsmith_mod_i32(-23681i, var_0.b.c), _wgslsmith_sub_i32(var_0.b.c, -3773i)));
    var_0 = Struct_2(Struct_1(var_0.b.a, -481f, -(_wgslsmith_dot_vec4_i32(vec4<i32>(4494i, var_0.b.a.x, var_0.a.c, var_0.b.a.x), vec4<i32>(1i, 2147483647i, 2147483647i, var_0.b.a.x)) >> (arg_2.b.x % 32u)), select(select(!var_0.b.d, select(arg_2.c, vec2<bool>(arg_1.x, var_0.b.d.x), var_0.b.d), vec2<bool>(false, true)), vec2<bool>(!arg_0.c.x, arg_2.b.x < arg_2.b.x), vec2<bool>(arg_0.c.x, false))), var_0.a);
    var_1 = var_0.a.c;
    var_1 = 1i;
    return _wgslsmith_f_op_f32(var_0.b.b - arg_2.a.x);
}

fn func_2(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: f32) -> vec2<f32> {
    global1 = (~_wgslsmith_div_i32(arg_1.x ^ arg_1.x, arg_1.x) & -arg_1.x) << (62403u % 32u);
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-192f, arg_2) * arg_0.a) * arg_0.a), _wgslsmith_add_vec4_u32(~arg_0.b, func_3(-25967i, arg_2)), !vec2<bool>(arg_0.c.x, arg_0.c.x)), select(!select(vec4<bool>(arg_0.c.x, true, arg_0.c.x, false), vec4<bool>(true, arg_0.c.x, arg_0.c.x, false), vec4<bool>(true, false, true, false)), !(!vec4<bool>(true, false, false, arg_0.c.x)), !(!vec4<bool>(false, true, arg_0.c.x, false))), arg_0, 5094u)) * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(trunc(1302f)))))));
    let var_1 = arg_0.c.x;
    var var_2 = _wgslsmith_mod_vec3_i32(-reverseBits(vec3<i32>(~arg_1.x, -13097i, abs(arg_1.x))), ~vec3<i32>(_wgslsmith_div_i32(-arg_1.x, _wgslsmith_add_i32(-58033i, 0i)), firstLeadingBit(arg_1.x), 1i));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, arg_0.a.x, arg_2))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1485f, -124f, -1000f, arg_2))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1596f, 2342f, arg_2, 625f), vec4<f32>(arg_2, arg_2, arg_0.a.x, arg_2))))))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_0.a.x, arg_2, arg_2) - vec4<f32>(627f, arg_0.a.x, arg_0.a.x, 2572f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_0.a.x, -553f, -166f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-524f, -101f, 197f, -1000f) + vec4<f32>(1576f, -302f, -862f, arg_2)), !arg_0.c.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2, 569f, 417f, arg_2)))), vec4<f32>(_wgslsmith_f_op_f32(-arg_2), arg_0.a.x, _wgslsmith_div_f32(arg_0.a.x, arg_0.a.x), -1101f)))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_0.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, 445f) * vec2<f32>(arg_2, 1000f)), true))));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, 1087f))), _wgslsmith_f_op_vec2_f32(func_2(Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b, arg_1.b) * vec2<f32>(781f, arg_1.b)), vec4<u32>(3952u, 1u, u_input.e.x, 40665u) ^ vec4<u32>(1u, u_input.b, 14692u, 94859u), !arg_1.d), -vec2<i32>(arg_1.a.x, -7160i), 546f))), max(_wgslsmith_add_vec4_u32(min(vec4<u32>(0u, u_input.c.x, 0u, 25220u), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.d)), ~vec4<u32>(46627u, 1u, u_input.c.x, u_input.b)) >> (vec4<u32>(13375u, _wgslsmith_sub_u32(u_input.a.x, 36917u), 22872u, _wgslsmith_add_u32(u_input.b, 135077u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(abs(countOneBits(vec4<u32>(1u, 11460u, u_input.a.x, 33464u))), vec4<u32>(3442u, 1u, u_input.e.x, u_input.d) >> (vec4<u32>(0u, u_input.b, u_input.a.x, 0u) % vec4<u32>(32u)))), arg_1.d);
    let var_1 = vec4<u32>(var_0.b.x, _wgslsmith_clamp_u32(54217u, u_input.d | abs(~0u), var_0.b.x), _wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_mult_u32(1u, ~1u)), reverseBits(_wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(u_input.e.x, 0u, 29012u) & global0[_wgslsmith_index_u32(18203u, 32u)]))), 4294967295u);
    let var_2 = Struct_2(arg_1, Struct_1(arg_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)), -776f), 0i, arg_1.d));
    var var_3 = _wgslsmith_f_op_vec2_f32(select(var_0.a, var_0.a, var_1.x <= ~(~_wgslsmith_add_u32(u_input.e.x, u_input.e.x))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - -1121f))) * 556f));
    return vec2<u32>(firstTrailingBit(_wgslsmith_mult_u32(u_input.b >> (~var_1.x % 32u), var_0.b.x)), func_3(7794i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_3(vec2<f32>(arg_1.b, 734f), vec4<u32>(var_0.b.x, u_input.e.x, var_1.x, u_input.e.x), vec2<bool>(var_2.a.d.x, true)), vec2<i32>(arg_0, arg_1.a.x), 114f)).x, -188f))).x);
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: vec4<f32>, arg_3: Struct_2) -> vec4<bool> {
    global2 = arg_2.x;
    let var_0 = vec2<u32>(_wgslsmith_mod_u32(4294967295u, 4294967295u), _wgslsmith_dot_vec3_u32(u_input.e, select(~(~vec3<u32>(15293u, u_input.d, 0u)), ~vec3<u32>(51569u, 40798u, arg_0.x), select(!vec3<bool>(arg_3.a.d.x, false, true), !vec3<bool>(true, true, arg_3.a.d.x), !vec3<bool>(false, arg_3.b.d.x, arg_3.b.d.x)))));
    global1 = 39487i;
    global2 = _wgslsmith_f_op_f32(arg_3.a.b * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_3.a.b - arg_1.x))) * arg_1.x), arg_2.x, arg_3.a.d.x)));
    global0 = array<vec3<u32>, 32>();
    return vec4<bool>(!(arg_3.a.d.x && any(vec4<bool>(arg_3.a.d.x, arg_3.b.d.x, false, false))), !all(!(!vec3<bool>(arg_3.b.d.x, true, arg_3.b.d.x))), !((u_input.a.x > u_input.d) & arg_3.b.d.x), !arg_3.a.d.x);
}

fn func_6(arg_0: vec4<bool>) -> StorageBuffer {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-294f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(ceil(2039f))))));
    var var_0 = -1206f;
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -537f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(449f + -1749f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -984f) + -795f), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 0u, 45573u), global0[_wgslsmith_index_u32(1u, 32u)]) >= firstTrailingBit(23238u))))));
    var var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(11423i, 1i, ~0i) | select(-vec3<i32>(5526i, -1i, 3851i), ~vec3<i32>(-1i, 0i, -2147483647i), u_input.d >= u_input.e.x), _wgslsmith_mult_vec3_i32(-max(vec3<i32>(-2147483647i, -25171i, 2147483647i), vec3<i32>(-20933i, 2147483647i, 2147483647i)), abs(vec3<i32>(1i, 1i, 1i)))), -1i & _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(2147483647i, -2147483647i, 2147483647i)), vec3<i32>(0i, 1i, 13177i) << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, 4294967295u), global0[_wgslsmith_index_u32(u_input.b, 32u)]) % vec3<u32>(32u))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(-var_1.x, firstTrailingBit(var_1.x), -2598i), ~(vec3<i32>(var_1.x, var_1.x, var_1.x) | vec3<i32>(0i, var_1.x, 0i))), 1f, -60938i, arg_0.zx), Struct_1(-_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(-1i, -2147483647i, -1i)), firstLeadingBit(vec3<i32>(var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(836f, 363f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-422f * 1721f)))), ~var_1.x, arg_0.ww));
    return StorageBuffer(u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(!(!func_5(func_1(22251i, Struct_1(vec3<i32>(35347i, 2147483647i, -45626i), 1047f, -1i, vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1190f, -893f, -961f, 1000f), vec4<f32>(-419f, -846f, -1123f, 950f), vec4<bool>(false, true, true, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-752f, -580f, -776f, 410f)), Struct_2(Struct_1(vec3<i32>(-6224i, -32309i, 0i), 884f, -6504i, vec2<bool>(false, true)), Struct_1(vec3<i32>(-883i, 7852i, 0i), -2211f, 2147483647i, vec2<bool>(true, true))))));
}

