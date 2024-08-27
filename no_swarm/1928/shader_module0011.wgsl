struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec2<bool>(false, true), vec2<bool>(false, true), false), Struct_1(vec4<bool>(true, true, false, true), vec2<bool>(false, false), vec2<bool>(false, false), false), Struct_1(vec4<bool>(true, false, false, true), vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<u32>(41833u, 4294967295u), 7874u);

var<private> global2: array<f32, 8> = array<f32, 8>(702f, -641f, 944f, 1199f, -1000f, -766f, 1422f, 529f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> u32 {
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(~1i, 0i, ~firstTrailingBit(1228i) ^ -56180i, ~(-35918i)), _wgslsmith_mod_vec4_i32(max(vec4<i32>(1i, 1i, 1i, 1i), max(vec4<i32>(-5088i, -2147483647i, 1i, -17733i), vec4<i32>(-31864i, -2147483647i, 19472i, -2147483647i))), ~vec4<i32>(1i, 1i, 1i, 1i)));
    var var_1 = arg_0;
    var var_2 = select(arg_0.c.a.xzw, select(vec3<bool>(global1.c.c.x, true, false), !global1.c.a.zzw, !(~global1.d.x > ~17321u)), !(!select(global1.c.a.ywy, vec3<bool>(global1.a.d, global0.x, false), !global1.b.d)));
    return var_1.d.x >> (countOneBits(u_input.a << (4294967295u % 32u)) % 32u);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: u32) -> Struct_1 {
    let var_0 = firstTrailingBit(1i) == -reverseBits(_wgslsmith_add_i32(i32(-1i) * -1797i, ~2147483647i));
    var var_1 = Struct_3(vec3<u32>(0u, 0u, func_3(Struct_2(Struct_1(vec4<bool>(false, global0.x, var_0, global1.b.d), global0.zy, global0.yx, false), Struct_1(vec4<bool>(false, global1.b.c.x, true, false), vec2<bool>(true, true), global0.xy, global0.x), Struct_1(vec4<bool>(var_0, false, true, true), global1.b.a.yy, vec2<bool>(global1.b.a.x, false), var_0), _wgslsmith_sub_vec2_u32(vec2<u32>(global1.e, global1.e), global1.d), 14405u << (arg_2 % 32u)), global2[_wgslsmith_index_u32(46987u, 8u)] == 2813f)), Struct_1(!(!vec4<bool>(var_0, false, global1.c.b.x, var_0)), vec2<bool>(var_0, all(select(vec2<bool>(true, false), vec2<bool>(true, true), var_0))), global1.a.a.ww, any(global1.a.a.zw) || !(!global0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 8u)] + arg_1.x), -1000f, !var_0)), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1933f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-231f)))))), true);
    var var_2 = Struct_1(select(select(vec4<bool>(any(vec4<bool>(global1.b.c.x, global0.x, var_1.d, false)), !var_1.b.c.x, all(var_1.b.a), true), !vec4<bool>(global1.a.d, true, var_0, global1.a.a.x), global0.x), select(vec4<bool>(1780f < global2[_wgslsmith_index_u32(arg_2, 8u)], global1.a.c.x | true, var_0 && var_1.d, all(global0.yy)), !select(vec4<bool>(global0.x, global1.a.a.x, var_1.b.d, true), var_1.b.a, vec4<bool>(global0.x, global0.x, global1.a.a.x, true)), true), all(global1.a.a.zxz)), vec2<bool>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.x, var_1.c))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.c)))), vec2<bool>(true, true), ~0u == _wgslsmith_mult_u32(firstLeadingBit(62210u), _wgslsmith_dot_vec3_u32(var_1.a & var_1.a, var_1.a)));
    let var_3 = ~(21097u & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(arg_2, 1u), var_1.a.zy) % vec2<u32>(32u)), vec2<u32>(global1.d.x, 1u)));
    let var_4 = Struct_1(select(!select(select(vec4<bool>(false, var_0, true, var_0), vec4<bool>(true, global1.c.b.x, false, false), vec4<bool>(var_1.d, false, false, true)), vec4<bool>(false, var_1.b.a.x, false, true), !vec4<bool>(var_0, var_2.a.x, global1.a.c.x, var_1.d)), var_1.b.a, false), select(vec2<bool>(!var_2.d, any(select(vec3<bool>(var_1.d, true, global0.x), vec3<bool>(var_0, var_1.b.d, global0.x), true))), vec2<bool>(true, !var_0), global1.a.c), global0.xy, true);
    return var_4;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: u32, arg_3: vec4<bool>) -> StorageBuffer {
    var var_0 = ~87333u;
    global1 = Struct_2(Struct_1(global1.a.a, select(global0.zy, vec2<bool>(true, true), select(!vec2<bool>(global1.c.d, global0.x), vec2<bool>(global0.x, true), !global1.b.b)), select(vec2<bool>(any(vec3<bool>(global0.x, false, global1.a.a.x)), false), !(!vec2<bool>(global0.x, true)), !global0.x), global2[_wgslsmith_index_u32(global1.d.x ^ _wgslsmith_sub_u32(global1.d.x, 81036u), 8u)] >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f * -719f), _wgslsmith_f_op_f32(-140f - global2[_wgslsmith_index_u32(0u, 8u)])))), global1.b, func_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-214f, global2[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(arg_2, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)]) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(126f, 166f, global2[_wgslsmith_index_u32(arg_2, 8u)], global2[_wgslsmith_index_u32(global1.e, 8u)]))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(298f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(96682u, 8u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(11641u, 8u)])))), _wgslsmith_add_u32(arg_2, ~(~0u))), ~_wgslsmith_add_vec2_u32(arg_0, global1.d), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global1.e, 26719u) | reverseBits(vec3<u32>(1u, global1.e, global1.e)), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2, 1u, 31271u) & vec3<u32>(69707u, 739u, u_input.a), vec3<u32>(arg_2, 1u, global1.e) & vec3<u32>(89962u, 35148u, 1u))), global1.e));
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1574f, _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(global1.e, 8u)])))) - global2[_wgslsmith_index_u32(reverseBits(3705u), 8u)]), global2[_wgslsmith_index_u32(1u, 8u)], _wgslsmith_f_op_f32(select(1291f, 914f, all(select(arg_3, vec4<bool>(arg_1.x, true, arg_3.x, false), true)))), -235f)));
    global2 = array<f32, 8>();
    let var_2 = 64491u;
    return StorageBuffer(vec4<u32>(arg_0.x & 39742u, 4294967295u, ~0u, ~(~_wgslsmith_dot_vec2_u32(arg_0, arg_0))), vec4<f32>(var_1.x, 186f, 325f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 8u)] - var_1.x)))))), _wgslsmith_div_u32(1u, ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_0.x, arg_2), _wgslsmith_sub_u32(11461u, 1u))), _wgslsmith_div_i32(-54061i, min(abs(1i), _wgslsmith_clamp_i32(min(-32180i, -1i), _wgslsmith_add_i32(0i, 2147483647i), _wgslsmith_add_i32(54446i, -2322i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 8>();
    let var_0 = ~(~(~(~_wgslsmith_mult_u32(4294967295u, 0u))));
    let var_1 = all(select(!vec4<bool>(!global0.x, global1.c.c.x, false, global1.b.a.x || true), global1.a.a, var_0 < _wgslsmith_mod_u32(_wgslsmith_clamp_u32(69735u, 69976u, 49702u), 37510u)));
    let var_2 = Struct_3(_wgslsmith_clamp_vec3_u32(vec3<u32>(~38346u, var_0, u_input.a), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1278u, global1.d.x, u_input.a) | vec3<u32>(var_0, var_0, 24446u), ~vec3<u32>(1u, global1.e, u_input.a)), ~vec3<u32>(var_0, 4294967295u, 1u) | ~vec3<u32>(var_0, u_input.a, var_0)), vec3<u32>(~43382u, abs(0u), global1.d.x)), global1.c, 1172f, var_1);
    var var_3 = 833i;
    let x = u_input.a;
    s_output = func_1(global1.d, vec2<bool>(true, true), ~0u, global1.c.a);
}

