struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<bool>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec4<f32>,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 9>;

var<private> global1: vec3<f32> = vec3<f32>(-310f, 851f, 1000f);

var<private> global2: vec3<u32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: f32, arg_3: u32) -> vec2<i32> {
    global0 = array<vec3<f32>, 9>();
    var var_0 = true;
    global2 = ~_wgslsmith_mult_vec3_u32(select(_wgslsmith_mod_vec3_u32(abs(u_input.c), u_input.c), ~min(u_input.c, vec3<u32>(68730u, 4294967295u, 55280u)), !select(vec3<bool>(arg_1.e.c.x, arg_1.e.c.x, arg_1.e.c.x), vec3<bool>(arg_1.e.c.x, false, arg_1.e.c.x), vec3<bool>(true, arg_1.e.c.x, arg_1.e.c.x))), u_input.c);
    var var_1 = arg_1.b;
    var var_2 = select(select(select(vec3<bool>(true, true, !arg_1.e.c.x), select(vec3<bool>(false, arg_1.e.c.x, arg_1.e.c.x), !vec3<bool>(arg_1.e.c.x, arg_1.e.c.x, false), 1018f >= arg_2), vec3<bool>(false, true, true)), select(select(select(vec3<bool>(true, arg_1.e.c.x, true), vec3<bool>(false, arg_1.e.c.x, arg_1.e.c.x), arg_1.e.c.x), select(vec3<bool>(arg_1.e.c.x, arg_1.e.c.x, true), vec3<bool>(arg_1.e.c.x, true, arg_1.e.c.x), vec3<bool>(false, true, false)), false), vec3<bool>(arg_1.e.c.x, !arg_1.e.c.x, true), select(!vec3<bool>(false, false, arg_1.e.c.x), !vec3<bool>(arg_1.e.c.x, arg_1.e.c.x, arg_1.e.c.x), false | arg_1.e.c.x)), false), !select(select(select(vec3<bool>(arg_1.e.c.x, arg_1.e.c.x, arg_1.e.c.x), vec3<bool>(false, arg_1.e.c.x, true), vec3<bool>(arg_1.e.c.x, arg_1.e.c.x, false)), select(vec3<bool>(arg_1.e.c.x, true, arg_1.e.c.x), vec3<bool>(false, false, arg_1.e.c.x), vec3<bool>(arg_1.e.c.x, false, false)), 1u >= arg_1.a), !select(vec3<bool>(true, true, arg_1.e.c.x), vec3<bool>(false, arg_1.e.c.x, false), vec3<bool>(false, arg_1.e.c.x, arg_1.e.c.x)), !vec3<bool>(arg_1.e.c.x, arg_1.e.c.x, arg_1.e.c.x)), select(vec3<bool>(true, !arg_1.e.c.x, !all(vec4<bool>(false, arg_1.e.c.x, false, arg_1.e.c.x))), vec3<bool>(true, all(vec3<bool>(arg_1.e.c.x, arg_1.e.c.x, false)), false), !(!(!vec3<bool>(arg_1.e.c.x, false, arg_1.e.c.x)))));
    return reverseBits(var_1.b.yy);
}

fn func_2() -> vec4<bool> {
    global2 = max(vec3<u32>(global2.x, select(u_input.e, firstLeadingBit(max(u_input.e, 1u)), true), ~countOneBits(_wgslsmith_mult_u32(u_input.e, u_input.e))), countOneBits(countOneBits(~u_input.c) << (~firstLeadingBit(u_input.c) % vec3<u32>(32u))));
    var var_0 = Struct_3(u_input.c.x, Struct_1(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(0i, u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.d, u_input.a.x, -31137i), vec4<i32>(-55346i, u_input.a.x, 1i, -2147483647i)), countOneBits(37194i)), _wgslsmith_dot_vec2_i32(func_3(global1.xz, Struct_3(4294967295u, Struct_1(vec4<i32>(0i, 2147483647i, u_input.d, u_input.a.x), vec3<i32>(-2591i, -17016i, 40145i), global0[_wgslsmith_index_u32(global2.x, 9u)]), vec4<f32>(global1.x, 680f, -311f, -123f), u_input.a.x, Struct_2(Struct_1(vec4<i32>(u_input.b, 0i, u_input.a.x, -2147483647i), u_input.a, global0[_wgslsmith_index_u32(4294967295u, 9u)]), -39478i, vec2<bool>(true, false), vec4<i32>(-1i, 9113i, u_input.a.x, 11577i))), 702f, 6506u), vec2<i32>(u_input.a.x, u_input.d)), -(u_input.a.x << (global2.x % 32u)), 10919i), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, ~u_input.d, 1i), vec3<i32>(u_input.a.x, _wgslsmith_mod_i32(u_input.b, -27754i), u_input.d ^ u_input.d)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global0[_wgslsmith_index_u32(1u, 9u)])))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, global1.x, 988f, global1.x), vec4<f32>(-970f, 1505f, -749f, global1.x), vec4<bool>(false, false, true, true))) + vec4<f32>(-1086f, -552f, global1.x, 678f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(global1.x + 1000f), _wgslsmith_f_op_f32(global1.x - global1.x), _wgslsmith_f_op_f32(ceil(global1.x)))))), _wgslsmith_add_i32(u_input.d, 0i), Struct_2(Struct_1(vec4<i32>(55551i, u_input.d, u_input.a.x, u_input.a.x) ^ vec4<i32>(u_input.b, 2147483647i, u_input.a.x, -37262i), vec3<i32>(1i, _wgslsmith_mult_i32(u_input.d, u_input.a.x), 23548i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -857f, 540f)))), -2147483647i, vec2<bool>(true, true), min(vec4<i32>(40297i & u_input.a.x, u_input.b, -14537i, _wgslsmith_dot_vec3_i32(vec3<i32>(-22146i, -33796i, 1i), u_input.a)), ~(vec4<i32>(u_input.d, -1i, 0i, u_input.b) & vec4<i32>(1i, -17619i, u_input.b, u_input.d)))));
    let var_1 = select(!vec4<bool>(false, true, _wgslsmith_div_u32(var_0.a, global2.x) >= (u_input.c.x & 4294967295u), var_0.e.c.x), vec4<bool>(!(u_input.e <= _wgslsmith_mult_u32(83801u, u_input.e)), !(!var_0.e.c.x), !all(select(vec3<bool>(false, var_0.e.c.x, false), vec3<bool>(false, true, true), var_0.e.c.x)), false), select(select(!vec4<bool>(var_0.e.c.x, true, var_0.e.c.x, true), select(select(vec4<bool>(var_0.e.c.x, true, true, true), vec4<bool>(false, true, var_0.e.c.x, false), true), vec4<bool>(var_0.e.c.x, true, false, false), var_0.e.c.x), !vec4<bool>(var_0.e.c.x, false, false, false)), vec4<bool>(var_0.b.b.x != ~var_0.b.a.x, true, true, any(vec3<bool>(true, var_0.e.c.x, var_0.e.c.x)) || var_0.e.c.x), vec4<bool>(false, true, !all(vec4<bool>(false, var_0.e.c.x, false, var_0.e.c.x)), 2147483647i < _wgslsmith_dot_vec3_i32(vec3<i32>(-24962i, var_0.b.b.x, -1i), u_input.a))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.b.c.x + -774f), _wgslsmith_f_op_f32(floor(839f))));
    let var_3 = (u_input.c & ~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, var_0.a, 82288u), ~u_input.c)) & abs(u_input.c);
    return vec4<bool>(!(any(vec4<bool>(var_0.e.c.x, var_1.x, var_0.e.c.x, false)) || true), true & select(all(!var_1.ywz), !(!var_1.x), true), all(vec2<bool>(true, var_0.e.c.x)), false);
}

fn func_1(arg_0: f32) -> Struct_2 {
    var var_0 = vec3<f32>(arg_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1591f, -1317f)))), _wgslsmith_f_op_f32(f32(-1f) * -896f));
    let var_1 = func_2();
    let var_2 = Struct_1(_wgslsmith_div_vec4_i32(max(vec4<i32>(1i, -65171i, ~u_input.b, ~(-9213i)), vec4<i32>(_wgslsmith_mult_i32(41244i, u_input.a.x), -u_input.d, min(u_input.b, u_input.a.x), 1i)), max(select(vec4<i32>(u_input.b, u_input.a.x, u_input.b, u_input.d), vec4<i32>(u_input.d, 53712i, -59217i, u_input.b), vec4<bool>(false, var_1.x, false, true)) | abs(vec4<i32>(u_input.b, 1i, u_input.b, 36079i)), vec4<i32>(_wgslsmith_add_i32(u_input.a.x, u_input.d), _wgslsmith_sub_i32(u_input.b, -2147483647i), reverseBits(u_input.b), select(u_input.d, -1250i, var_1.x)))), u_input.a, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, var_0.x, arg_0)))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(-362f, arg_0), _wgslsmith_f_op_f32(-1370f * 711f), _wgslsmith_f_op_f32(-var_0.x), -283f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1099f, -863f, -1321f, 644f), vec4<f32>(-2433f, 338f, -1057f, -627f), true)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, var_2.c.x, var_2.c.x, -725f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1183f, var_0.x, -174f, -164f), vec4<f32>(var_2.c.x, arg_0, 1931f, 154f), false))) - vec4<f32>(-1598f, _wgslsmith_f_op_f32(-var_2.c.x), global1.x, -2310f))));
    global2 = select(vec3<u32>(_wgslsmith_mult_u32(global2.x, reverseBits(~44953u)), ~(~24846u), u_input.c.x), select(reverseBits(~_wgslsmith_mod_vec3_u32(u_input.c, u_input.c)), ~(~vec3<u32>(global2.x, 28740u, global2.x)), var_1.zyz), all(vec4<bool>(func_2().x, u_input.b <= _wgslsmith_sub_i32(u_input.d, u_input.a.x), var_1.x, true)));
    return Struct_2(Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, 18135i, 2147483647i, 37064i), vec4<i32>(60080i, var_2.a.x, u_input.d, 23854i)), vec4<i32>(~(-2147483647i), reverseBits(-35632i), u_input.d | 1i, reverseBits(var_2.a.x))), var_2.a.yzw, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.c) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(global0[_wgslsmith_index_u32(48210u, 9u)])), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-754f, 299f, 326f), vec3<f32>(-1956f, arg_0, var_0.x))), select(var_1.wyw, var_1.yzz, false))))), (~(-26636i) << (1u % 32u)) | var_2.a.x, vec2<bool>(var_1.x, any(vec4<bool>(select(false, var_1.x, true), true, var_1.x, !var_1.x))), ~var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.c;
    var var_0 = func_1(global1.x);
    var var_1 = vec3<bool>(func_2().x, var_0.c.x, false);
    var var_2 = Struct_3(firstLeadingBit(~u_input.c.x | 90801u) ^ 4294967295u, func_1(572f).a, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, var_0.a.c.x))))), vec4<f32>(-2278f, _wgslsmith_f_op_f32(var_0.a.c.x - -864f), 441f, var_0.a.c.x))), u_input.b, func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.c.x - _wgslsmith_f_op_f32(ceil(142f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -796f), var_0.a.c.x, false != var_1.x)))));
    var var_3 = Struct_2(var_2.b, var_0.b & u_input.b, var_1.yz, ~var_0.d);
    var var_4 = reverseBits(~17405u);
    var_2 = Struct_3(_wgslsmith_mod_u32(global2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.e, abs(1978u)), ~max(u_input.c.yy, u_input.c.yx))), var_0.a, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, var_3.a.c.x, var_3.a.c.x, _wgslsmith_f_op_f32(select(global1.x, var_3.a.c.x, var_0.c.x))))))), select(0i, firstTrailingBit(0i >> (var_2.a % 32u)) << (65006u % 32u), -(i32(-1i) * -53597i) > func_1(_wgslsmith_f_op_f32(-var_3.a.c.x)).d.x), func_1(_wgslsmith_f_op_f32(step(-3354f, var_0.a.c.x))));
    var var_5 = (vec4<i32>(-1i) * -var_3.d) << ((vec4<u32>(53417u, _wgslsmith_clamp_u32(u_input.c.x, _wgslsmith_mod_u32(global2.x, u_input.e), _wgslsmith_dot_vec3_u32(vec3<u32>(21248u, 1u, 0u), u_input.c)), _wgslsmith_div_u32(~u_input.e, var_2.a ^ 4294967295u), firstTrailingBit(_wgslsmith_div_u32(var_2.a, 81291u))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(32764u, global2.x, u_input.e, firstLeadingBit(global2.x)), ~vec4<u32>(0u, u_input.c.x, 4294967295u, u_input.e) << ((vec4<u32>(var_2.a, global2.x, 4294967295u, var_2.a) | vec4<u32>(42004u, u_input.e, 0u, 70170u)) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_6 = _wgslsmith_f_op_vec2_f32(var_0.a.c.zy + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - 330f) - var_2.c.x) * _wgslsmith_div_f32(-933f, global1.x)), 711f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1565f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-105f)) - -1438f)), global1.x)), -4175i, vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(var_0.b, 2147483647i, var_2.d, var_5.x)), abs(var_0.a.a)), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(var_0.a.a, vec4<i32>(var_3.d.x, 30710i, var_5.x, var_0.b)), reverseBits(var_2.b.b.x))), ~_wgslsmith_dot_vec4_i32(var_2.b.a, var_0.a.a), var_2.b.a.x & u_input.a.x, 0i), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(430f, -914f, -153f)), vec3<f32>(_wgslsmith_f_op_f32(var_2.c.x + var_3.a.c.x), _wgslsmith_f_op_f32(exp2(var_6.x)), _wgslsmith_f_op_f32(284f * -801f))))));
}

