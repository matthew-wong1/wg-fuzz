struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 18>;

var<private> global1: array<Struct_2, 29>;

var<private> global2: array<Struct_3, 8>;

var<private> global3: vec4<u32>;

var<private> global4: array<Struct_1, 5>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    let var_0 = vec3<bool>(!any(vec2<bool>(true, all(vec2<bool>(true, false)))), false, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !all(vec2<bool>(true, true)))));
    var var_1 = _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(countOneBits(~(-vec3<i32>(-39608i, 66379i, -8009i))), max(vec3<i32>(1i, 1i, 1i), abs(-vec3<i32>(-2147483647i, 1i, -1i)))), abs(_wgslsmith_mod_vec3_i32(select(vec3<i32>(-2147483647i, 60713i, 0i), vec3<i32>(-75814i, -2147483647i, -1i), !var_0), -abs(vec3<i32>(-2147483647i, -1i, -1i)))));
    var var_2 = global1[_wgslsmith_index_u32(1u | u_input.b, 29u)];
    var var_3 = ~global3.zwx;
    let var_4 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.c.b, var_2.c.b, 1000f), vec3<f32>(var_2.c.b, var_2.c.b, var_2.c.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c.b, var_2.c.b, 417f)), vec3<bool>(false, true, var_0.x))))))));
    return var_2.d.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> Struct_3 {
    global4 = array<Struct_1, 5>();
    var var_0 = !(!(!(arg_2 == any(vec4<bool>(arg_2, true, true, true)))));
    var var_1 = !(!select(vec3<bool>(true, arg_2, arg_2), select(!vec3<bool>(arg_2, true, false), vec3<bool>(arg_2, arg_2, false), vec3<bool>(arg_2, arg_2, arg_2)), 1u < arg_0.x));
    global4 = array<Struct_1, 5>();
    var var_2 = -63088i;
    return Struct_3(vec2<bool>(!(!func_3()), true), -11750i, vec4<i32>(arg_3.a.x, 1i, arg_3.a.x, abs(~(arg_3.a.x << (global3.x % 32u)))), -(select(_wgslsmith_add_vec2_i32(vec2<i32>(6331i, 2147483647i), arg_3.a.wx), _wgslsmith_add_vec2_i32(arg_3.a.wz, vec2<i32>(arg_3.a.x, arg_3.a.x)), select(vec2<bool>(var_1.x, false), var_1.zx, true)) | arg_3.a.zx), -2621f);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: Struct_3) -> bool {
    global1 = array<Struct_2, 29>();
    global4 = array<Struct_1, 5>();
    global4 = array<Struct_1, 5>();
    var var_0 = -_wgslsmith_add_i32(arg_2.c.x, _wgslsmith_mod_i32(firstLeadingBit(arg_0.x ^ arg_2.c.x), ~max(-1i, 0i)));
    global0 = array<vec4<u32>, 18>();
    return true;
}

fn func_1() -> vec3<f32> {
    let var_0 = 4294967295u;
    let var_1 = select(true, all(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), false)) | !func_4(-vec2<i32>(0i, -72823i), global0[_wgslsmith_index_u32(global3.x, 18u)] ^ global0[_wgslsmith_index_u32(4294967295u, 18u)], func_2(vec4<u32>(global3.x, var_0, var_0, 0u), -1271f, false, global4[_wgslsmith_index_u32(u_input.b, 5u)])), false);
    var var_2 = Struct_4(Struct_1(~vec4<i32>(~0i, ~(-20866i), -2147483647i, i32(-1i) * -1i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(330f - -246f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1253f + -1000f))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), vec3<f32>(1f, 1f, 1f))), vec4<f32>(func_2(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.b, 0u, global3.x), _wgslsmith_mod_vec4_u32(vec4<u32>(15145u, 94023u, 4294967295u, 36087u), global0[_wgslsmith_index_u32(global3.x, 18u)])), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-367f)), -1000f, all(vec4<bool>(true, var_1, false, var_1)))), select(false, true, true), global4[_wgslsmith_index_u32(var_0, 5u)]).e, _wgslsmith_f_op_f32(func_2(select(global0[_wgslsmith_index_u32(6103u, 18u)], global0[_wgslsmith_index_u32(var_0, 18u)], vec4<bool>(true, var_1, false, var_1)), _wgslsmith_f_op_f32(f32(-1f) * -1060f), func_4(vec2<i32>(-20218i, -11627i), global0[_wgslsmith_index_u32(global3.x, 18u)], global2[_wgslsmith_index_u32(0u, 8u)]), Struct_1(vec4<i32>(-1i, 24175i, -2147483647i, 0i), -566f)).e + 1000f), -331f, 1000f));
    global3 = ~abs(~global0[_wgslsmith_index_u32(countOneBits(1u), 18u)]);
    var var_3 = var_2.b;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.b) + _wgslsmith_f_op_vec3_f32(-var_2.c.zyy)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 8>();
    global2 = array<Struct_3, 8>();
    var var_0 = global4[_wgslsmith_index_u32(~(4294967295u | _wgslsmith_dot_vec3_u32(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(global3.x, 1u, 4294967295u), vec3<u32>(77237u, 0u, global3.x))), (global3.yww << (global3.wyx % vec3<u32>(32u))) | ~global3.wzy)), 5u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_1()))))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.b, -1182f, -1544f), vec3<f32>(var_0.b, 2160f, -644f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -402f), var_0.b, _wgslsmith_f_op_f32(-var_0.b))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(2436f, -1124f, var_0.b), vec3<f32>(1538f, var_0.b, var_0.b))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1330f, 1618f, 470f)))))));
    global1 = array<Struct_2, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(max(~reverseBits(var_0.a.x), 14066i), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.b, var_0.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_1.xy))), select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(false, var_0.a.x < var_0.a.x), vec2<bool>(true, false)))), ~min(1u, _wgslsmith_div_u32(global3.x, 8242u) & global3.x), _wgslsmith_mod_i32(min(1i, func_2(max(vec4<u32>(global3.x, u_input.b, global3.x, 16640u), vec4<u32>(0u, 0u, 4294967295u, 1u)), -1039f, true, global4[_wgslsmith_index_u32(~global3.x, 5u)]).d.x), ~abs(-17221i)), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_div_u32(u_input.b, ~u_input.a), ~_wgslsmith_sub_u32(global3.x, global3.x), _wgslsmith_mod_u32(12702u, ~57379u)), firstTrailingBit(global3.zzz)));
}

