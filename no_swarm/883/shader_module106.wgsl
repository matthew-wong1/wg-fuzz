struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<u32>,
    c: f32,
    d: bool,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global1: vec3<i32>;

var<private> global2: vec2<f32> = vec2<f32>(-612f, -1180f);

var<private> global3: f32 = -1785f;

var<private> global4: array<Struct_1, 24>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = 568f;
    var_0 = _wgslsmith_f_op_f32(max(-1753f, _wgslsmith_f_op_f32(f32(-1f) * -669f)));
    var var_1 = vec3<bool>(select(global0.x, !(_wgslsmith_f_op_f32(round(global2.x)) <= _wgslsmith_f_op_f32(197f - 1000f)), !(_wgslsmith_add_i32(52244i, u_input.a.x) <= _wgslsmith_div_i32(-1260i, -1i))), true, global0.x);
    let var_2 = max(~_wgslsmith_mod_i32(_wgslsmith_mult_i32(37251i, u_input.a.x), abs(u_input.a.x)), -(~firstTrailingBit(u_input.a.x)));
    var var_3 = Struct_4(vec3<bool>(!select(global2.x >= global2.x, true, any(vec4<bool>(true, global0.x, false, global0.x))), !any(vec4<bool>(true, var_1.x, false, global0.x)), any(select(!vec4<bool>(var_1.x, global0.x, false, var_1.x), vec4<bool>(false, true, true, var_1.x), select(vec4<bool>(global0.x, false, true, true), vec4<bool>(false, global0.x, global0.x, var_1.x), vec4<bool>(global0.x, var_1.x, true, var_1.x))))), global2.x, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-315f, 1268f, global2.x, global2.x) * vec4<f32>(683f, global2.x, global2.x, -277f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -1550f, global2.x, global2.x) * vec4<f32>(global2.x, 1116f, global2.x, 707f))))))), global4[_wgslsmith_index_u32(1u, 24u)]);
    return var_3.b;
}

fn func_2(arg_0: u32) -> f32 {
    global0 = select(!(!vec4<bool>(all(vec4<bool>(false, true, global0.x, global0.x)), true, true & global0.x, true)), vec4<bool>(!(global0.x && true), true, true, all(global0.xyz)), vec4<bool>(false, true, !global0.x, true));
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-1543f, _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(1000f + global2.x)))), 361f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.x)) * _wgslsmith_f_op_f32(global2.x - -704f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), global2.x)) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-673f, global2.x)), _wgslsmith_f_op_f32(f32(-1f) * -708f), global2.x, -563f));
    var var_1 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(min(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0, 4294967295u), vec2<u32>(17563u, 0u)), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 20140u), vec2<u32>(31960u, arg_0))), vec2<u32>(1u, 1u)), reverseBits(vec2<u32>(4294967295u, 34380u))), firstTrailingBit(~(~vec2<u32>(0u, 4294967295u))) >> (firstLeadingBit(_wgslsmith_add_vec2_u32(~vec2<u32>(arg_0, 35250u), _wgslsmith_clamp_vec2_u32(vec2<u32>(27771u, arg_0), vec2<u32>(45106u, arg_0), vec2<u32>(arg_0, 3906u)))) % vec2<u32>(32u))), 24u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_0.wzy)) + var_0.yww)) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_0.ywy), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global2.x, 809f)))))) + var_0.zxw);
    let var_3 = !select(vec4<bool>(true, all(vec4<bool>(false, false, false, false)), any(!vec2<bool>(global0.x, global0.x)), false | (global0.x || global0.x)), select(!(!vec4<bool>(global0.x, global0.x, global0.x, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(false, global0.x, true, global0.x)), arg_0 != 4294967295u), !vec4<bool>(false, global0.x, true, global0.x)), !select(vec4<bool>(global0.x, false, global0.x, false), !vec4<bool>(true, global0.x, global0.x, global0.x), all(vec4<bool>(global0.x, true, false, true))));
    return _wgslsmith_f_op_f32(sign(-132f));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> vec2<u32> {
    let var_0 = vec3<f32>(global2.x, 991f, _wgslsmith_f_op_f32(func_2(arg_0.a)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(func_3()), 461f));
    let var_2 = _wgslsmith_div_i32(u_input.a.x, min(-(~_wgslsmith_dot_vec4_i32(vec4<i32>(1033i, u_input.a.x, -27037i, 86496i), vec4<i32>(0i, u_input.a.x, 2147483647i, 2147483647i))), firstTrailingBit(19894i) & -13010i));
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1302f, _wgslsmith_f_op_f32(max(-796f, var_1.x)), -288f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-222f, global2.x))), -1744f, var_0.x, 674f)));
    var var_4 = Struct_3(vec2<f32>(var_3.x, global2.x), _wgslsmith_add_vec3_i32(u_input.a.xwx << (vec3<u32>(34124u, _wgslsmith_mod_u32(arg_2, 0u), 17269u >> (arg_1 % 32u)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(~u_input.a.xzz, reverseBits(~vec3<i32>(var_2, global1.x, 29149i)))), Struct_1(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(arg_2, arg_0.a), arg_1 >> (~20463u % 32u), _wgslsmith_mod_u32(arg_1, 4294967295u))), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2, -u_input.a.x, firstLeadingBit(_wgslsmith_add_i32(u_input.a.x, global1.x)), _wgslsmith_mult_i32(-1i, 8265i)), vec4<i32>(2147483647i, 1i, u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a.wyx, u_input.a.zzw >> (vec3<u32>(arg_1, arg_0.a, arg_2) % vec3<u32>(32u))))));
    return firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2, arg_0.a), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(arg_1, arg_2)) & ~vec2<u32>(54957u, var_4.c.a), vec2<u32>(_wgslsmith_add_u32(arg_0.a, arg_2), 0u))) | _wgslsmith_mult_vec2_u32(vec2<u32>(0u, arg_1), vec2<u32>(abs(abs(0u)), var_4.c.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(0u, 24u)];
    let var_1 = -1509f;
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~min(var_0.a, 0u), var_0.a, 38772u, firstTrailingBit(var_0.a)) | vec4<u32>(var_0.a, _wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, var_0.a), vec2<u32>(var_0.a, 4294967295u), false), func_1(Struct_1(var_0.a), 15598u, var_0.a)), 0u, _wgslsmith_div_u32(select(8182u, var_0.a, true), var_0.a ^ 0u)), abs(_wgslsmith_sub_vec4_u32(min(vec4<u32>(4294967295u, 1u, var_0.a, 4294967295u), vec4<u32>(64262u, var_0.a, var_0.a, var_0.a)), vec4<u32>(38511u, var_0.a, 0u, var_0.a))) ^ _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(4294967295u, 0u, var_0.a, 138678u) | vec4<u32>(var_0.a, 56147u, 0u, var_0.a)), _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(72361u, var_0.a, 9827u, var_0.a)), ~vec4<u32>(43440u, var_0.a, var_0.a, 40799u), ~vec4<u32>(var_0.a, 0u, var_0.a, var_0.a)), vec4<u32>(45376u, min(1u, var_0.a), abs(var_0.a), var_0.a))), 24u)];
    var var_3 = Struct_3(vec2<f32>(-1099f, var_1), vec3<i32>(-u_input.a.x, _wgslsmith_mod_i32(-40870i, reverseBits(1i)), -global1.x), Struct_1(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, var_0.a, var_2.a, var_2.a), vec4<u32>(var_0.a, 0u, 0u, var_0.a)))), 2147483647i >> (~(~1u | ~var_2.a) % 32u));
    global1 = u_input.a.xxw;
    var var_4 = Struct_1(7147u);
    var var_5 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(min(var_1, 818f))) - _wgslsmith_f_op_f32(-global2.x)) * 1278f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1543f * -940f)))) + -1459f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-838f, _wgslsmith_f_op_f32(sign(-279f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(u_input.a.wzx, u_input.a.xwx), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_3.a.x, global2.x), var_5.yy)), vec2<f32>(_wgslsmith_f_op_f32(select(var_3.a.x, -725f, global0.x)), -1199f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.x, 1066f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, _wgslsmith_f_op_f32(select(var_1, -1431f, global0.x)), var_3.a.x, _wgslsmith_f_op_f32(f32(-1f) * -471f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1828f, -723f, -1904f, var_5.x), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(223f, var_1, var_5.x, -574f))))))));
}

