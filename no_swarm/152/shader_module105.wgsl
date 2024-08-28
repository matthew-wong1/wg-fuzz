struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec3<u32>,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<bool>,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: vec3<i32>;

var<private> global2: array<Struct_2, 31>;

var<private> global3: i32 = -34988i;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: bool) -> i32 {
    var var_0 = select(select(vec2<bool>(true, true), vec2<bool>(!arg_1, arg_0), !(!vec2<bool>(arg_0, arg_1))), select(!(!select(vec2<bool>(arg_0, arg_1), vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0))), select(vec2<bool>(!arg_1, true), select(vec2<bool>(true, true), vec2<bool>(arg_0, false), any(vec2<bool>(true, arg_0))), select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1), any(vec4<bool>(arg_0, false, false, arg_1)))), select(!(!vec2<bool>(arg_0, true)), select(select(vec2<bool>(true, arg_0), vec2<bool>(false, true), arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_1, true), arg_1), !vec2<bool>(arg_0, arg_0)), vec2<bool>(arg_0, true))), true);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-609f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1498f + -1487f))))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1299f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-222f, -1000f) * var_1.x)), _wgslsmith_f_op_f32(round(var_1.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.x * -1340f), _wgslsmith_f_op_f32(-766f * 363f))));
    let var_2 = u_input.c.x;
    let var_3 = Struct_2(vec4<i32>(reverseBits(u_input.b), -11309i, _wgslsmith_dot_vec3_i32(~(~vec3<i32>(0i, global1.x, u_input.b)), ~abs(vec3<i32>(global1.x, 0i, global1.x))), ~reverseBits(-1i)), abs(~((vec3<i32>(global1.x, 4415i, -2147483647i) & vec3<i32>(-2147483647i, -74830i, global1.x)) | vec3<i32>(u_input.a.x, 1i, -6191i))), select(!(!select(vec2<bool>(true, false), vec2<bool>(var_0.x, true), vec2<bool>(false, true))), !(!vec2<bool>(true, var_0.x)), select(true, arg_0, -1000f >= _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(971f)), 156f)), Struct_1(reverseBits(-vec3<i32>(-1i, -1i, u_input.a.x)), !(!(!vec4<bool>(var_0.x, true, var_0.x, arg_1))), vec3<u32>(~(u_input.c.x & u_input.c.x), ~(~u_input.c.x), ~(~0u)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-250f))), _wgslsmith_f_op_f32(round(1026f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(2468f)), _wgslsmith_f_op_f32(-400f * var_1.x), arg_1))), ~_wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.a.x, -37888i, 2147483647i, global1.x)), vec4<i32>(u_input.b, -23290i, 49849i, -2147483647i) >> (vec4<u32>(0u, 16981u, 0u, 4294967295u) % vec4<u32>(32u)))));
    return global1.x;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2) -> vec3<i32> {
    let var_0 = arg_1.e;
    global2 = array<Struct_2, 31>();
    global3 = ~var_0.e.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) - var_0.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.d.x, arg_1.e.d.x, arg_1.c.x)), _wgslsmith_f_op_f32(445f + var_0.d.x)))), var_0.d.x));
    global0 = ~(arg_1.e.c.x & _wgslsmith_mult_u32(firstTrailingBit(arg_1.e.c.x & 1u), firstLeadingBit(0u)));
    return arg_1.a.xyy;
}

fn func_2(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = arg_0;
    var var_1 = Struct_2(~(vec4<i32>(_wgslsmith_mod_i32(global1.x, var_0.b.x), 0i, var_0.b.x ^ u_input.a.x, 58651i) << (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_0.e.c.x, 4294967295u, u_input.c.x) << (vec4<u32>(1u, var_0.e.c.x, var_0.e.c.x, arg_0.e.c.x) % vec4<u32>(32u)), select(vec4<u32>(0u, u_input.c.x, u_input.c.x, var_0.e.c.x), vec4<u32>(4294967295u, 0u, u_input.c.x, 0u), var_0.e.b)) % vec4<u32>(32u))), func_4(!vec2<bool>(arg_0.c.x, !var_0.e.b.x), Struct_2(vec4<i32>(arg_0.b.x, ~(-1i), global1.x, func_3(false, arg_0.e.b.x)), vec3<i32>(~28958i, global1.x, abs(35228i)), select(vec2<bool>(true, true), arg_0.c, select(var_0.e.b.xw, vec2<bool>(false, false), vec2<bool>(arg_0.c.x, true))), var_0.d, Struct_1(abs(var_0.b), vec4<bool>(true, true, true, true), vec3<u32>(arg_0.e.c.x, u_input.c.x, var_0.e.c.x), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.d.x, 574f, var_0.d.x))), vec4<i32>(-1i, u_input.a.x, 26159i, u_input.b)))), var_0.e.b.xz, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.x, -1747f))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1694f, arg_0.d.x), _wgslsmith_div_vec2_f32(var_0.d, vec2<f32>(arg_0.d.x, 682f)), select(arg_0.e.b.wx, var_0.c, true)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_0.e.d.yz)))))), arg_0.e);
    var_0 = global2[_wgslsmith_index_u32(~var_0.e.c.x, 31u)];
    let var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(max(min(arg_0.e.c.x, 1u), abs(u_input.c.x)), arg_0.e.c.x), vec2<u32>(var_0.e.c.x, arg_0.e.c.x) & var_1.e.c.xx);
    let var_3 = Struct_1(vec3<i32>(-(~arg_0.b.x), -1i, -1i), !select(vec4<bool>(var_0.e.b.x, true, any(var_0.e.b), var_1.e.b.x), select(!vec4<bool>(var_1.c.x, arg_0.e.b.x, var_0.e.b.x, false), vec4<bool>(var_1.e.b.x, var_1.e.b.x, false, true), vec4<bool>(arg_0.e.b.x, false, arg_0.e.b.x, arg_0.c.x)), !(var_1.c.x & arg_0.e.b.x)), vec3<u32>(arg_0.e.c.x >> (64317u % 32u), var_1.e.c.x, 4294967295u) & vec3<u32>(var_0.e.c.x, var_0.e.c.x, 4294967295u), var_1.e.d, -reverseBits(~vec4<i32>(global1.x, -5033i, global1.x, var_1.b.x)));
    return vec4<bool>(false, !(-1789f < arg_0.d.x), all(!var_3.b.xz), any(vec2<bool>(any(var_3.b), all(!var_3.b.wzy))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<u32>) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(~1u, 31u)];
    var var_1 = firstTrailingBit(var_0.b.x);
    var var_2 = Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, ~(global1.x >> (arg_2.x % 32u)), select(global1.x & arg_1.a.x, -u_input.a.x, !arg_1.b.x)), ~arg_1.e.wxy), !(!func_2(global2[_wgslsmith_index_u32(~1u, 31u)])), select(vec3<u32>(_wgslsmith_add_u32(var_0.e.c.x, 1u), ~850u, 4294967295u | u_input.c.x) ^ ~arg_1.c, _wgslsmith_clamp_vec3_u32(countOneBits(arg_2 >> (vec3<u32>(1u, 4294967295u, var_0.e.c.x) % vec3<u32>(32u))), var_0.e.c, vec3<u32>(var_0.e.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 0u), vec2<u32>(0u, 33224u)), arg_1.c.x)), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-290f, var_0.e.d.x, _wgslsmith_f_op_f32(-var_0.e.d.x))), var_0.a);
    let var_3 = ~select(39759u, 49068u ^ (_wgslsmith_add_u32(u_input.c.x, 93203u) ^ max(arg_2.x, var_0.e.c.x)), var_0.e.b.x);
    var_2 = Struct_1(countOneBits(vec3<i32>(_wgslsmith_dot_vec4_i32(var_0.e.e ^ var_2.e, -var_2.e), 34721i, var_0.a.x)), func_2(global2[_wgslsmith_index_u32(var_0.e.c.x, 31u)]), ~vec3<u32>(2457u, var_2.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 70070u, var_0.e.c.x, 4294967295u) << (vec4<u32>(arg_2.x, 1u, 0u, arg_1.c.x) % vec4<u32>(32u)), vec4<u32>(43490u, arg_2.x, var_3, 30162u))), vec3<f32>(_wgslsmith_f_op_f32(354f * _wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.d.x, 105f), -1663f))), -260f), ((countOneBits(var_0.e.e) >> (vec4<u32>(var_0.e.c.x, 4294967295u, 8729u, var_0.e.c.x) % vec4<u32>(32u))) >> (reverseBits(vec4<u32>(var_2.c.x, 0u, 0u, 1u) >> (vec4<u32>(arg_1.c.x, 25876u, arg_1.c.x, var_2.c.x) % vec4<u32>(32u))) % vec4<u32>(32u))) >> ((~vec4<u32>(arg_1.c.x, var_2.c.x, var_0.e.c.x, 1u) >> (_wgslsmith_add_vec4_u32(~vec4<u32>(var_3, u_input.c.x, arg_1.c.x, 25039u), vec4<u32>(var_0.e.c.x, 24239u, arg_2.x, var_2.c.x)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return var_0.e.c.x;
}

fn func_6(arg_0: u32, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = arg_3.e;
    global3 = u_input.b;
    let var_1 = Struct_1(vec3<i32>(0i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, global1.x), ~vec3<i32>(-44887i, arg_3.b.x, -2147483647i)), u_input.b), vec4<bool>(true, any(!(!arg_3.c)), var_0.b.x, false), vec3<u32>(var_0.c.x, firstTrailingBit(arg_0), _wgslsmith_mult_u32(1u, 4294967295u) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.c.xx, vec2<u32>(arg_3.e.c.x, arg_2)), u_input.c.zx) % 32u)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -580f), _wgslsmith_f_op_f32(arg_3.e.d.x + var_0.d.x)), arg_3.e.d.x, arg_3.e.d.x))), vec4<i32>(0i, ~arg_3.a.x, func_4(arg_1.xw, Struct_2(vec4<i32>(arg_3.a.x, u_input.b, -2147483647i, 3317i), arg_3.e.a, var_0.b.yw, vec2<f32>(-1739f, 1702f), arg_3.e)).x, arg_3.e.e.x));
    let var_2 = _wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(~(~arg_3.e.c), _wgslsmith_div_vec3_u32(abs(u_input.c), var_1.c)), _wgslsmith_div_u32(29006u, arg_0));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.d.yx) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-425f, arg_3.d.x))))))), vec2<f32>(arg_3.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1536f)), arg_3.d.x != var_1.d.x)));
    return arg_3.e;
}

fn func_1(arg_0: vec3<u32>) -> vec3<f32> {
    let var_0 = func_6(max(_wgslsmith_div_u32(33559u, min(arg_0.x, u_input.c.x)) & ~56988u, func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(388f, 1082f, -335f, 1586f))), Struct_1(~vec3<i32>(-15516i, -2147483647i, global1.x), func_2(Struct_2(vec4<i32>(1i, 7845i, global1.x, global1.x), vec3<i32>(u_input.a.x, 23404i, global1.x), vec2<bool>(true, true), vec2<f32>(2125f, -1447f), Struct_1(vec3<i32>(-2147483647i, 2147483647i, 34658i), vec4<bool>(true, true, false, false), vec3<u32>(41267u, 0u, 8259u), vec3<f32>(726f, -1767f, -766f), vec4<i32>(0i, 0i, global1.x, -44772i)))), ~vec3<u32>(0u, 0u, u_input.c.x), vec3<f32>(-378f, -1318f, 371f), ~vec4<i32>(36596i, 2147483647i, global1.x, global1.x)), vec3<u32>(u_input.c.x, 1u, 4294967295u) ^ _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.x, 4294967295u, arg_0.x), vec3<u32>(1u, arg_0.x, u_input.c.x)))), !(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false)))), arg_0.x, Struct_2(-select(~vec4<i32>(14037i, -2147483647i, global1.x, 10615i), _wgslsmith_div_vec4_i32(vec4<i32>(42946i, 1i, global1.x, 52032i), vec4<i32>(u_input.b, u_input.a.x, u_input.a.x, 1i)), vec4<bool>(false, false, true, false)), _wgslsmith_mult_vec3_i32(vec3<i32>(~u_input.b, global1.x, 2147483647i), ~countOneBits(vec3<i32>(2147483647i, u_input.b, -2147483647i))), !(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-270f, -219f))))), Struct_1(~vec3<i32>(23793i, global1.x, -34654i) << (vec3<u32>(29102u, u_input.c.x, arg_0.x) % vec3<u32>(32u)), func_2(global2[_wgslsmith_index_u32(reverseBits(u_input.c.x), 31u)]), ~u_input.c << ((vec3<u32>(0u, 0u, u_input.c.x) | vec3<u32>(arg_0.x, 1u, u_input.c.x)) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-586f, 1179f, 344f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-545f, -489f, -364f) * vec3<f32>(529f, -498f, -1976f)), vec3<bool>(true, true, true))), countOneBits(min(vec4<i32>(0i, 0i, -52830i, global1.x), vec4<i32>(global1.x, u_input.a.x, -1i, -5958i))))));
    let var_1 = var_0.d;
    let var_2 = var_0;
    var var_3 = var_0.b.x;
    var var_4 = func_6(~(~func_6(_wgslsmith_sub_u32(2205u, var_2.c.x), var_2.b, firstTrailingBit(1u), global2[_wgslsmith_index_u32(25755u | u_input.c.x, 31u)]).c.x), !var_2.b, 4294967295u, Struct_2(var_0.e, _wgslsmith_add_vec3_i32(vec3<i32>(var_0.a.x, var_0.e.x, global1.x) << (u_input.c % vec3<u32>(32u)), var_2.e.zxy) | abs(vec3<i32>(var_2.a.x, var_0.a.x, var_0.a.x)), vec2<bool>(all(var_0.b.zy) & func_6(4294967295u, vec4<bool>(false, var_0.b.x, false, var_0.b.x), 12852u, Struct_2(vec4<i32>(-19426i, var_2.e.x, var_0.a.x, -1i), var_2.e.yxw, var_0.b.zy, vec2<f32>(315f, 1000f), Struct_1(var_2.a, var_0.b, vec3<u32>(1u, var_2.c.x, 4294967295u), vec3<f32>(2225f, var_2.d.x, -1000f), var_0.e))).b.x, false), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.d.x, var_0.d.x))))), func_6(4294967295u, vec4<bool>(true, true, var_2.e.x == global1.x, var_2.b.x & var_0.b.x), 33409u, global2[_wgslsmith_index_u32(func_6(var_0.c.x, !var_0.b, ~56967u, Struct_2(var_2.e, var_2.e.wxy, var_0.b.wx, var_2.d.xz, var_2)).c.x, 31u)])));
    return vec3<f32>(-1000f, _wgslsmith_f_op_f32(var_0.d.x + -1204f), var_1.x);
}

fn func_7(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: Struct_2) -> vec4<f32> {
    var var_0 = arg_2;
    var var_1 = Struct_2(select(arg_2.a, ~(-abs(vec4<i32>(global1.x, 47373i, -1772i, global1.x))), !arg_2.e.b), _wgslsmith_mult_vec3_i32(vec3<i32>(firstTrailingBit(2147483647i) << (4294967295u % 32u), 13508i, -_wgslsmith_dot_vec4_i32(arg_2.e.e, var_0.a)), arg_2.a.wzx), !func_6(arg_2.e.c.x, !arg_2.e.b, abs(abs(15234u)), global2[_wgslsmith_index_u32(48262u ^ ~var_0.e.c.x, 31u)]).b.ww, func_6(_wgslsmith_mult_u32(~arg_2.e.c.x, ~(arg_0.x & var_0.e.c.x)), vec4<bool>(true, var_0.e.b.x, var_0.e.b.x, any(arg_2.e.b.xy)), ~firstTrailingBit(countOneBits(45660u)), Struct_2(vec4<i32>(countOneBits(-32574i), -1i, u_input.a.x & -2147483647i, -42833i), var_0.b, select(!vec2<bool>(var_0.c.x, false), arg_2.c, true), var_0.e.d.zx, Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, 46633i, u_input.a.x), vec3<i32>(var_0.e.e.x, 0i, arg_2.a.x), arg_2.a.xzx), vec4<bool>(var_0.e.b.x, var_0.e.b.x, false, true), vec3<u32>(arg_2.e.c.x, 4294967295u, 28520u), _wgslsmith_f_op_vec3_f32(-var_0.e.d), arg_2.a))).d.xx, func_6(_wgslsmith_dot_vec3_u32(vec3<u32>(15186u | arg_2.e.c.x, arg_2.e.c.x, var_0.e.c.x), countOneBits(firstTrailingBit(vec3<u32>(arg_0.x, u_input.c.x, arg_2.e.c.x)))), select(!var_0.e.b, arg_2.e.b, true), ~1u, global2[_wgslsmith_index_u32(var_0.e.c.x, 31u)]));
    let var_2 = var_0.e.c.x;
    let var_3 = func_6(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(select(var_1.e.c.x, 26728u, var_1.e.b.x), arg_2.e.c.x, 1431u, 43864u), countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 1u, 51529u, var_0.e.c.x), vec4<u32>(arg_0.x, 4294967295u, 1u, var_1.e.c.x)))), vec4<u32>(var_1.e.c.x, _wgslsmith_mod_u32(1u ^ var_1.e.c.x, u_input.c.x), func_5(_wgslsmith_f_op_vec4_f32(arg_1 - vec4<f32>(var_0.d.x, arg_1.x, var_1.d.x, 2210f)), Struct_1(arg_2.b, var_0.e.b, vec3<u32>(arg_0.x, 30642u, 37488u), arg_1.zzx, vec4<i32>(u_input.b, u_input.a.x, arg_2.e.a.x, var_0.b.x)), abs(arg_0)), u_input.c.x)), var_1.e.b, abs(~(~arg_0.x)) & (~(6585u | u_input.c.x) & 1u), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.e.c.x, arg_0.x), 31u)]);
    global3 = global1.x;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_7(u_input.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1381f, -404f, 116f, 1095f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-297f, 1226f, -1356f, -161f)))))), Struct_2(vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b) << ((vec4<u32>(1u, 51668u, 29914u, 4294967295u) & vec4<u32>(46047u, u_input.c.x, u_input.c.x, 35541u)) % vec4<u32>(32u)), vec3<i32>(-u_input.a.x, ~55869i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -1i, 2147483647i, 29999i), vec4<i32>(global1.x, -9140i, 2147483647i, -1i))), select(vec2<bool>(false, true), vec2<bool>(true, true), all(vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(390f, 1087f) - vec2<f32>(645f, 512f)), _wgslsmith_div_vec2_f32(vec2<f32>(565f, -960f), vec2<f32>(-248f, -1043f)), true)), Struct_1(~vec3<i32>(-1i, 0i, -2147483647i), vec4<bool>(true, true, true, true), min(vec3<u32>(u_input.c.x, 74460u, u_input.c.x), u_input.c), _wgslsmith_f_op_vec3_f32(func_1(vec3<u32>(6025u, 0u, u_input.c.x))), func_6(1u, vec4<bool>(false, false, true, true), u_input.c.x, global2[_wgslsmith_index_u32(72173u, 31u)]).e)))));
    global0 = 1485u;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2205f - _wgslsmith_f_op_f32(-var_0.x)));
    let var_2 = countOneBits(~(-countOneBits(i32(-1i) * -2147483647i)));
    let var_3 = func_6(u_input.c.x, !(!(!func_2(Struct_2(vec4<i32>(var_2, 46619i, -9911i, -1i), vec3<i32>(1i, 2147483647i, global1.x), vec2<bool>(false, false), var_0.xx, Struct_1(vec3<i32>(var_2, var_2, 29912i), vec4<bool>(true, false, true, true), u_input.c, var_0.xyx, vec4<i32>(-9881i, 2147483647i, 32403i, -52492i)))))), reverseBits(u_input.c.x), global2[_wgslsmith_index_u32(9806u, 31u)]);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~firstTrailingBit(u_input.b), _wgslsmith_mult_i32(~(-15468i), var_3.a.x), ~global1.x), vec3<u32>(~(min(u_input.c.x, 1u) >> ((u_input.c.x & 21481u) % 32u)), 4294967295u, 4294967295u));
}

