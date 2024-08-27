struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_3,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<u32>, 9>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: i32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(0u, ~47805u, _wgslsmith_mod_u32(35026u, ~arg_1.a.b.x), 22470u), vec4<u32>(1u & (arg_1.a.a.x | 0u), 1u & firstTrailingBit(arg_1.a.d.x), arg_1.a.a.x, arg_1.a.a.x)), _wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, arg_1.a.a.x, 0u) << (_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(arg_1.a.b.x, arg_1.a.d.x, 1u)), vec3<u32>(arg_1.a.b.x, arg_1.a.e, arg_1.a.a.x)) % vec3<u32>(32u)), arg_1.a.a.zzx), ~select(2147483647i, (-1i & arg_0.x) & arg_1.a.c, false), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_1.a.a.x, max(_wgslsmith_div_u32(1u, 39616u), _wgslsmith_sub_u32(arg_1.a.b.x, arg_1.a.e))), 9u)], _wgslsmith_mod_u32(max(1u, ~arg_1.a.d.x), 0u));
    global1 = array<vec2<u32>, 9>();
    global0 = _wgslsmith_div_u32(4294967295u, abs(reverseBits(~var_0.e))) << (max(arg_1.a.b.x, ~40647u) % 32u);
    global0 = ~4294967295u;
    var var_1 = Struct_3(vec4<f32>(-1039f, 1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-759f))), 2058f)), -1808f), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(149f, 790f), vec2<f32>(363f, -535f), vec2<bool>(true, true)))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, 1394f), vec2<f32>(-359f, 1174f))))))), arg_0.x);
    return _wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)) + 444f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1696f))));
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(func_3(vec4<i32>(u_input.a, 22706i, u_input.a, u_input.a), Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 23586u), vec3<u32>(6990u, 8772u, 438u), u_input.a, vec2<u32>(4294967295u, 0u), 1u)), u_input.a)), arg_0)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1015f, 889f, arg_0, var_0.x), vec4<f32>(var_0.x, -559f, 879f, arg_0), false))))));
    var var_2 = var_1.ww;
    let var_3 = vec3<bool>(select(false | (select(false, false, false) | true), false, true), !all(vec4<bool>(true, true, true, true)) && all(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), true), true)), true);
    var var_4 = Struct_1(~vec4<u32>(1u, 1u, 1u, 1u), vec3<u32>(74248u, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), vec3<u32>(~4294967295u, max(1u, 20685u), _wgslsmith_div_u32(121734u, 47386u))), 4294967295u), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-82384i, 49657i, u_input.a), vec3<i32>(1i, u_input.a, -10076i)), vec3<i32>(u_input.a, -1i, 42498i)), -_wgslsmith_mod_vec3_i32(vec3<i32>(-21801i, u_input.a, 25525i), vec3<i32>(26401i, arg_1, arg_1))) << (1u % 32u), ~global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, ~11909u), 9u)], min(countOneBits(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, 6827u, 39999u), _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(102097u, 9u)], vec2<u32>(36264u, 0u)))), countOneBits(countOneBits(reverseBits(1u)))));
    return Struct_1(~(~var_4.a), _wgslsmith_add_vec3_u32(min(_wgslsmith_clamp_vec3_u32(var_4.b, vec3<u32>(1u, 4294967295u, var_4.a.x), ~var_4.a.yyw), var_4.a.zzw), var_4.a.zyw), -(~_wgslsmith_div_i32(abs(9374i), abs(var_4.c))), ~global1[_wgslsmith_index_u32(~0u, 9u)], 30348u);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_4) -> Struct_4 {
    global0 = arg_0.a.x;
    var var_0 = arg_0;
    var_0 = arg_0;
    let var_1 = Struct_4(Struct_3(vec4<f32>(arg_2.e, arg_2.e, arg_2.c.a.x, arg_2.e), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.c.a.x, -1270f), _wgslsmith_f_op_vec2_f32(-arg_2.c.a.yy), true)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2650f, arg_2.e))))), true)), _wgslsmith_div_i32(countOneBits(-23124i), -abs(-2147483647i))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.x, arg_2.b ^ arg_0.e, var_0.d.x), countOneBits(vec3<u32>(arg_0.b.x, 1u, arg_2.b))), arg_2.c, (i32(-1i) * -firstTrailingBit(var_0.c)) >> (~(~(arg_2.b << (arg_0.a.x % 32u))) % 32u), 139f);
    var var_2 = func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.a.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e) - -766f))), i32(-1i) * -1710i).c;
    return arg_2;
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = func_4(func_2(_wgslsmith_f_op_f32(-arg_0), 35078i), (_wgslsmith_sub_vec3_i32(vec3<i32>(-22756i, 17172i, u_input.a) << (vec3<u32>(34214u, 16408u, 28007u) % vec3<u32>(32u)), ~vec3<i32>(26423i, -13780i, u_input.a)) ^ vec3<i32>(select(u_input.a, -1i, true), u_input.a, select(u_input.a, -2147483647i, false))) ^ (vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(1i, u_input.a, u_input.a), vec3<i32>(u_input.a, 34085i, u_input.a))), Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -1622f, arg_0, 837f) + vec4<f32>(arg_0, arg_0, arg_0, arg_0)))), vec2<f32>(arg_0, arg_0), _wgslsmith_clamp_i32(u_input.a ^ u_input.a, -u_input.a, _wgslsmith_sub_i32(2147483647i, u_input.a))), func_2(_wgslsmith_f_op_f32(1147f + arg_0), -29064i | firstLeadingBit(u_input.a)).e, Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-774f, arg_0, 1000f, 677f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1107f, -1038f)), u_input.a), ~(-u_input.a), -373f));
    let var_1 = vec3<i32>(u_input.a, _wgslsmith_add_i32(u_input.a ^ (_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, 1i, 2147483647i), vec4<i32>(u_input.a, -2147483647i, -1i, 2147483647i)) | ~0i), 37143i), -58581i);
    var var_2 = i32(-1i) * -(~(u_input.a & -u_input.a));
    global0 = _wgslsmith_add_u32(var_0.b << (_wgslsmith_mult_u32(_wgslsmith_div_u32(~139453u, var_0.b), var_0.b) % 32u), reverseBits(47324u));
    global0 = var_0.b;
    return _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(func_2(_wgslsmith_f_op_f32(select(var_0.e, 462f, true)), var_0.a.c).e, var_0.b), var_0.b), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(var_0.b, var_0.b, var_0.b, var_0.b)), vec4<u32>(1u, var_0.b, var_0.b, var_0.b)) << ((vec4<u32>(var_0.b, 63043u, var_0.b, var_0.b) ^ _wgslsmith_div_vec4_u32(vec4<u32>(var_0.b, var_0.b, 35780u, var_0.b), vec4<u32>(4273u, var_0.b, 73670u, var_0.b))) % vec4<u32>(32u)), vec4<u32>(var_0.b, var_0.b, _wgslsmith_sub_u32(59525u, var_0.b | var_0.b), var_0.b)));
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> Struct_2 {
    global0 = ~(~arg_0);
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-305f, 1153f, -1000f, -847f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(225f, 403f, -1000f, 1378f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(691f, -657f, -799f, -1882f))))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(876f, 365f, -437f, -1000f) + vec4<f32>(-1353f, 150f, -1000f, 1444f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(249f, 1550f, 1766f, 1261f)) - vec4<f32>(-691f, -389f, 1771f, -2001f))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(788f, 1092f) + vec2<f32>(1089f, 1000f))), vec2<f32>(-1669f, _wgslsmith_f_op_f32(682f - 604f))))), _wgslsmith_sub_i32(func_4(func_2(-1000f, _wgslsmith_dot_vec2_i32(vec2<i32>(23580i, u_input.a), vec2<i32>(61754i, -1i))), reverseBits(min(vec3<i32>(-1i, arg_1.c, 13565i), vec3<i32>(2147483647i, 2147483647i, 2147483647i))), func_4(arg_1, _wgslsmith_div_vec3_i32(vec3<i32>(arg_1.c, u_input.a, 0i), vec3<i32>(5775i, -2147483647i, u_input.a)), Struct_4(Struct_3(vec4<f32>(-2145f, 935f, -2094f, -809f), vec2<f32>(1451f, -372f), 11465i), arg_0, Struct_3(vec4<f32>(264f, 1000f, 531f, -248f), vec2<f32>(-1401f, -1338f), arg_1.c), 2147483647i, 1595f))).d, 2147483647i & -func_4(Struct_1(vec4<u32>(arg_1.e, arg_0, arg_0, 0u), vec3<u32>(arg_1.b.x, arg_0, 21383u), 31637i, vec2<u32>(arg_0, arg_1.d.x), arg_1.d.x), vec3<i32>(arg_1.c, u_input.a, -40689i), Struct_4(Struct_3(vec4<f32>(1204f, 779f, -924f, -953f), vec2<f32>(-2212f, -611f), 0i), 5252u, Struct_3(vec4<f32>(1045f, 422f, -1000f, -968f), vec2<f32>(-351f, -999f), 2147483647i), -43334i, 646f)).a.c));
    var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -567f), _wgslsmith_f_op_f32(616f - -614f), -396f, 612f) * _wgslsmith_div_vec4_f32(var_0.a, _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.x, var_0.b.x, var_0.b.x, -998f), vec4<f32>(var_0.b.x, var_0.a.x, -1175f, var_0.b.x)))) * _wgslsmith_f_op_vec4_f32(-var_0.a)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(func_4(arg_1, _wgslsmith_add_vec3_i32(vec3<i32>(arg_1.c, var_0.c, -51106i), vec3<i32>(-5395i, 4265i, var_0.c)), func_4(Struct_1(arg_1.a, vec3<u32>(arg_0, arg_1.d.x, 0u), 0i, arg_1.d, 42134u), vec3<i32>(18423i, 463i, u_input.a), Struct_4(Struct_3(vec4<f32>(var_0.b.x, var_0.b.x, var_0.a.x, var_0.b.x), var_0.b, u_input.a), 1u, Struct_3(vec4<f32>(var_0.a.x, -539f, var_0.a.x, -786f), vec2<f32>(var_0.a.x, 107f), u_input.a), 2147483647i, var_0.a.x))).c.a.x, var_0.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(-var_0.b.x))))), abs(-21150i));
    var var_1 = !select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), true), vec2<bool>(any(vec2<bool>(true, false)), var_0.b.x == var_0.b.x), true), vec2<bool>(all(vec4<bool>(true, true, true, true)), any(vec2<bool>(false, true))), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(all(vec2<bool>(false, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    global0 = arg_0 << (reverseBits(min(19616u, 21599u)) % 32u);
    return Struct_2(func_2(var_0.b.x, 42884i));
}

fn func_6(arg_0: i32, arg_1: Struct_2) -> vec4<f32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(sign(1117f))), -694f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-667f))))), _wgslsmith_f_op_f32(floor(1122f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1361f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-798f * -135f) + _wgslsmith_f_op_f32(f32(-1f) * -354f))));
    var var_1 = Struct_4(func_4(arg_1.a, select(abs(vec3<i32>(-2147483647i, u_input.a, -8300i)), -vec3<i32>(u_input.a, u_input.a, arg_1.a.c), arg_0 <= 2147483647i) >> (arg_1.a.a.wzx % vec3<u32>(32u)), func_4(arg_1.a, _wgslsmith_add_vec3_i32(~vec3<i32>(4395i, u_input.a, arg_1.a.c), -vec3<i32>(arg_1.a.c, arg_1.a.c, -2147483647i)), Struct_4(func_4(Struct_1(arg_1.a.a, vec3<u32>(arg_1.a.a.x, arg_1.a.d.x, arg_1.a.e), arg_0, vec2<u32>(arg_1.a.a.x, arg_1.a.e), arg_1.a.b.x), vec3<i32>(arg_1.a.c, arg_0, arg_1.a.c), Struct_4(Struct_3(vec4<f32>(var_0.x, 550f, var_0.x, -416f), vec2<f32>(-124f, 253f), 1i), 5718u, Struct_3(vec4<f32>(-2448f, var_0.x, 234f, var_0.x), var_0.xy, -43898i), -2147483647i, var_0.x)).c, 17795u << (0u % 32u), Struct_3(vec4<f32>(851f, var_0.x, -1410f, var_0.x), var_0.yy, arg_0), arg_1.a.c, -644f))).a, 1u, Struct_3(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(1038f - 1199f), _wgslsmith_f_op_f32(var_0.x * -648f), _wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(min(-167f, var_0.x))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 595f) + vec2<f32>(var_0.x, 273f)))), arg_0), arg_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(~vec4<i32>(2147483647i, 2147483647i, 46301i, -1i), func_5(0u, Struct_1(arg_1.a.a, arg_1.a.b, -2147483647i, global1[_wgslsmith_index_u32(48869u, 9u)], 35707u)), abs(arg_0))), _wgslsmith_f_op_f32(abs(-739f))))));
    global1 = array<vec2<u32>, 9>();
    var var_2 = func_4(Struct_1(vec4<u32>(var_1.b, _wgslsmith_dot_vec2_u32(~arg_1.a.a.yw, ~vec2<u32>(0u, 43333u)), firstTrailingBit(var_1.b), arg_1.a.a.x), arg_1.a.a.yxy, 5925i, _wgslsmith_div_vec2_u32(~select(global1[_wgslsmith_index_u32(1u, 9u)], vec2<u32>(arg_1.a.d.x, 0u), vec2<bool>(true, false)), global1[_wgslsmith_index_u32(~(~5657u), 9u)]), 1u), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(-11125i, 684i, arg_0), -vec3<i32>(arg_0, var_1.d, -1i)) & (_wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.a.c, -2147483647i, arg_1.a.c), vec3<i32>(-24519i, arg_0, -1i)) << (max(arg_1.a.a.zzy, arg_1.a.a.zww) % vec3<u32>(32u))), ~reverseBits(vec3<i32>(arg_1.a.c, var_1.a.c, u_input.a))), Struct_4(Struct_3(var_1.a.a, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1590f), -537f), -41283i), arg_1.a.e, func_4(arg_1.a, abs(-vec3<i32>(arg_1.a.c, arg_0, -12003i)), Struct_4(func_4(Struct_1(arg_1.a.a, arg_1.a.a.wzy, 2147483647i, vec2<u32>(60187u, 21372u), arg_1.a.a.x), vec3<i32>(-20376i, arg_0, -6894i), Struct_4(Struct_3(vec4<f32>(-1000f, 517f, 1254f, var_0.x), vec2<f32>(var_0.x, -455f), 2147483647i), 4294967295u, var_1.c, 42155i, 201f)).c, ~1136u, var_1.c, _wgslsmith_dot_vec4_i32(vec4<i32>(8149i, 1i, arg_1.a.c, arg_0), vec4<i32>(50905i, var_1.c.c, var_1.d, arg_0)), var_1.e)).c, abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(-19323i, -1i, 41748i, arg_1.a.c), -vec4<i32>(arg_1.a.c, 2147483647i, -1i, -2147483647i))), -1238f));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.a.x)) - -510f), var_2.a.b.x, _wgslsmith_div_f32(var_2.a.b.x, -660f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_1.e, 282f) + var_0.xwy))), vec3<f32>(var_2.e, _wgslsmith_f_op_f32(trunc(1124f)), _wgslsmith_f_op_f32(ceil(var_1.e)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.a.a.xww * var_1.a.a.wxw)))), select(!vec3<bool>(true, -670f == var_0.x, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), !all(vec3<bool>(true, false, false))))));
    return var_2.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_6(reverseBits(1i), func_5(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(30669u, 0u, 4294967295u)), Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(101386u, 4294967295u, 21261u, 29877u), vec4<u32>(63182u, 0u, 19702u, 17701u), vec4<u32>(0u, 1u, 1u, 5938u)), vec3<u32>(1u, firstTrailingBit(1u), min(1u, 96059u)), u_input.a, vec2<u32>(~0u, func_1(-1566f)), ~reverseBits(0u)))));
    global1 = array<vec2<u32>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(6695u, global1[_wgslsmith_index_u32(0u, 9u)]);
}

