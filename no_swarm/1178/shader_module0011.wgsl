struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: f32;

var<private> global2: u32;

var<private> global3: array<vec4<i32>, 3>;

var<private> global4: array<vec4<bool>, 24>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec4<bool>) -> i32 {
    global3 = array<vec4<i32>, 3>();
    global1 = _wgslsmith_f_op_f32(-arg_1.b.x);
    global1 = 817f;
    global0 = ~_wgslsmith_add_vec3_u32(~(~vec3<u32>(30026u, 0u, global0.x)), select(abs(vec3<u32>(global0.x, global0.x, 4294967295u)) & _wgslsmith_div_vec3_u32(vec3<u32>(0u, global0.x, global0.x), vec3<u32>(global0.x, 69720u, 0u)), select(reverseBits(vec3<u32>(global0.x, 17495u, global0.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, global0.x, global0.x), vec3<u32>(4294967295u, 30110u, global0.x), vec3<u32>(global0.x, 1u, global0.x)), vec3<bool>(true, false, false)), arg_2.xxw));
    let var_0 = Struct_1(1i, select(~4294967295u ^ global0.x, global0.x, arg_2.x), reverseBits(~1566i & u_input.a.x), -2147483647i, any(arg_2));
    return _wgslsmith_mod_i32(var_0.c, firstTrailingBit(~_wgslsmith_mod_i32(firstLeadingBit(var_0.d), ~70991i)));
}

fn func_2() -> Struct_1 {
    global3 = array<vec4<i32>, 3>();
    global4 = array<vec4<bool>, 24>();
    let var_0 = countOneBits(_wgslsmith_add_u32(global0.x, 4294967295u | (global0.x | 39767u))) | 1472u;
    let var_1 = _wgslsmith_sub_i32(func_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-506f - -228f))))), Struct_2(!select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec3<f32>(1f, 1f, 1f)), select(!global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0.x, 1u, var_0), 24u)], vec4<bool>(true, true, true, true), ~global0.x < 1u)), u_input.b);
    var var_2 = true;
    return Struct_1(u_input.b, ~global0.x, u_input.c, max(34213i, _wgslsmith_sub_i32(u_input.c, reverseBits(-1i))) | (-_wgslsmith_sub_i32(u_input.b, u_input.b) >> (_wgslsmith_mult_u32(_wgslsmith_add_u32(global0.x, var_0), max(0u, global0.x)) % 32u)), any(vec4<bool>(all(!global4[_wgslsmith_index_u32(4294967295u, 24u)]), true, true, any(vec2<bool>(true, true)))));
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> Struct_3 {
    global2 = (arg_0.a.x | (97954u >> (~global0.x % 32u))) | _wgslsmith_mult_u32(abs(4294967295u), max(~max(102354u, 4294967295u), arg_0.a.x));
    let var_0 = !vec3<bool>(true, arg_0.b.e, arg_0.b.e);
    let var_1 = arg_0.a;
    let var_2 = !(!all(vec4<bool>(true, true, var_0.x, arg_0.b.e)));
    let var_3 = Struct_3(min(~arg_0.a, arg_0.a), arg_0.b, arg_0.c);
    return arg_0;
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_mod_vec4_u32(~((arg_0.a & arg_0.a) >> (arg_0.a % vec4<u32>(32u))), abs(max(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, global0.x, global0.x, 4294967295u), vec4<u32>(4294967295u, 0u, 72286u, 1u)), _wgslsmith_sub_vec4_u32(arg_0.a, vec4<u32>(global0.x, 0u, 4294967295u, 1u))))), func_4(func_4(Struct_3(arg_0.a, arg_0.b, arg_0.c), -1i), u_input.d.x).b, func_4(func_4(arg_0, -2147483647i), -_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(1i, arg_0.b.c)), -2147483647i)).c);
    var var_1 = ~1u < _wgslsmith_dot_vec3_u32(~(~vec3<u32>(14196u, global0.x, 61831u)), min(var_0.a.xxy, vec3<u32>(var_0.a.x, ~global0.x, func_4(arg_0, arg_0.b.c).a.x)));
    let var_2 = var_0.b.a;
    var var_3 = select(arg_0.c.a.x, var_0.c.b.x == var_0.c.b.x, var_0.b.e);
    let var_4 = _wgslsmith_mult_vec2_u32(select(~var_0.a.xz, (vec2<u32>(0u, arg_0.a.x) ^ ~arg_0.a.yz) & reverseBits(select(vec2<u32>(arg_0.b.b, 1u), global0.yz, var_0.c.a.x)), false), ~countOneBits(arg_0.a.zx));
    return Struct_3(firstTrailingBit(abs(_wgslsmith_add_vec4_u32(vec4<u32>(7987u, 61966u, global0.x, 41381u), ~vec4<u32>(41271u, 4294967295u, 4294967295u, global0.x)))), func_2(), var_0.c);
}

fn func_1(arg_0: u32, arg_1: u32) -> vec3<i32> {
    let var_0 = 20228u;
    var var_1 = func_5(func_4(Struct_3(countOneBits(vec4<u32>(global0.x, 4294967295u, var_0, arg_0)), func_2(), Struct_2(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec3<f32>(569f, -1739f, -344f))), ~_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a.x, u_input.d.x), -u_input.c)));
    var var_2 = !(((u_input.a.x >> (21337u % 32u)) | ~(-37429i)) <= _wgslsmith_add_i32(-2147483647i | var_1.b.d, u_input.b)) & (_wgslsmith_sub_i32(-1i, u_input.d.x) < 7788i);
    var var_3 = Struct_2(!(!(!var_1.c.a)), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.c.b.x))), _wgslsmith_f_op_f32(-1556f * var_1.c.b.x), -386f));
    let var_4 = !select(select(select(vec4<bool>(var_3.a.x, var_1.b.e, var_1.b.e, false), !global4[_wgslsmith_index_u32(arg_0, 24u)], global4[_wgslsmith_index_u32(var_0, 24u)]), global4[_wgslsmith_index_u32(var_1.b.b, 24u)], !global4[_wgslsmith_index_u32(4294967295u, 24u)]), vec4<bool>(1u >= _wgslsmith_add_u32(arg_1, arg_1), true, false || !var_3.a.x, var_1.c.a.x), vec4<bool>(false, var_1.c.a.x, any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(f32(-1f) * -924f) >= _wgslsmith_div_f32(var_1.c.b.x, var_1.c.b.x)));
    return reverseBits(~u_input.d);
}

fn func_6(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(exp2(arg_2.b.x));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, -1689f)) * arg_2.b.x);
    var var_2 = func_4(func_5(Struct_3(~reverseBits(vec4<u32>(44469u, 0u, 1u, 1u)), func_2(), func_4(func_4(Struct_3(vec4<u32>(global0.x, global0.x, 34605u, global0.x), Struct_1(-2147483647i, arg_1, 65900i, u_input.b, arg_2.a.x), Struct_2(vec2<bool>(arg_2.a.x, arg_2.a.x), arg_2.b)), 2147483647i), func_3(-270f, Struct_2(arg_2.a, vec3<f32>(var_0, 502f, arg_2.b.x)), global4[_wgslsmith_index_u32(global0.x, 24u)])).c)), 69003i);
    var var_3 = Struct_2(!select(var_2.c.a, arg_2.a, any(!vec3<bool>(var_2.b.e, var_2.c.a.x, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(Struct_3(var_2.a, Struct_1(-2063i, arg_1, var_2.b.d, -2147483647i, false), Struct_2(vec2<bool>(arg_2.a.x, arg_2.a.x), vec3<f32>(arg_2.b.x, arg_2.b.x, var_0)))).c.b * _wgslsmith_f_op_vec3_f32(arg_2.b * var_2.c.b)))));
    var var_4 = _wgslsmith_f_op_f32(1825f - 1149f);
    return var_2.b;
}

fn func_7(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    global4 = array<vec4<bool>, 24>();
    global0 = ~(~firstTrailingBit(~arg_0.a.yxy));
    var var_0 = Struct_2(arg_0.c.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(618f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.x * 402f)), arg_1.x) - _wgslsmith_f_op_vec3_f32(-arg_2.b)));
    global2 = 19421u;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.b.x - arg_1.x) - -888f);
    return func_6(u_input.d, ~48865u, arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-231f, 1327f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(546f - 892f) + _wgslsmith_div_f32(-1318f, -1255f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1426f), _wgslsmith_f_op_f32(-530f + _wgslsmith_f_op_f32(-777f * -1669f)), -2119f) - vec3<f32>(_wgslsmith_f_op_f32(-192f + 399f), _wgslsmith_f_op_f32(sign(693f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(183f + 1626f) * -501f))));
    var var_1 = func_7(Struct_3(_wgslsmith_div_vec4_u32(vec4<u32>(~global0.x, 1u, global0.x, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, global0.x, 1u, global0.x) | vec4<u32>(global0.x, global0.x, global0.x, global0.x), firstTrailingBit(vec4<u32>(0u, 4294967295u, global0.x, global0.x)))), func_6(_wgslsmith_add_vec3_i32(func_1(global0.x, global0.x), -vec3<i32>(-1i, -1i, -1i)), global0.x, Struct_2(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec3<f32>(var_0.x, 333f, 927f))), func_5(func_4(Struct_3(vec4<u32>(global0.x, 1u, 0u, 62704u), Struct_1(u_input.d.x, 1u, u_input.b, -23444i, true), Struct_2(vec2<bool>(true, false), vec3<f32>(-1000f, var_0.x, var_0.x))), u_input.d.x << (50446u % 32u))).c), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) + -2324f), _wgslsmith_f_op_f32(func_4(func_5(Struct_3(vec4<u32>(global0.x, global0.x, global0.x, global0.x), Struct_1(u_input.c, 53997u, 13207i, 2147483647i, false), Struct_2(vec2<bool>(true, true), vec3<f32>(var_0.x, var_0.x, var_0.x)))), -2147483647i << (global0.x % 32u)).c.b.x - func_4(Struct_3(vec4<u32>(global0.x, 0u, global0.x, 105342u), Struct_1(-49633i, 39103u, -63445i, u_input.c, false), Struct_2(vec2<bool>(false, true), vec3<f32>(1070f, var_0.x, var_0.x))), u_input.a.x).c.b.x)), func_5(Struct_3(vec4<u32>(0u, global0.x, 1u, global0.x) << ((vec4<u32>(global0.x, global0.x, 36142u, global0.x) ^ vec4<u32>(global0.x, global0.x, global0.x, global0.x)) % vec4<u32>(32u)), Struct_1(-32569i >> (global0.x % 32u), ~global0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -2147483647i, -2147483647i), u_input.d), -u_input.d.x, func_4(Struct_3(vec4<u32>(82432u, 3895u, 62949u, global0.x), Struct_1(2147483647i, 0u, u_input.a.x, u_input.d.x, false), Struct_2(vec2<bool>(true, true), vec3<f32>(var_0.x, var_0.x, var_0.x))), u_input.a.x).c.a.x), func_5(func_5(Struct_3(vec4<u32>(global0.x, global0.x, 4294967295u, global0.x), Struct_1(55656i, global0.x, 16823i, -1i, true), Struct_2(vec2<bool>(true, false), vec3<f32>(572f, -1350f, var_0.x))))).c)).c, Struct_2(!(!func_4(Struct_3(vec4<u32>(global0.x, global0.x, 0u, global0.x), Struct_1(u_input.c, 1u, -2147483647i, 10327i, true), Struct_2(vec2<bool>(true, true), vec3<f32>(var_0.x, -1076f, 480f))), u_input.c).c.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1033f, var_0.x, 109f), vec3<f32>(var_0.x, -377f, var_0.x))) - vec3<f32>(1f, 1f, 1f)))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -668f))) + var_0.x), var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(1126f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(959f - var_0.x))))));
    global0 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(~_wgslsmith_sub_u32(13712u, global0.x), reverseBits(_wgslsmith_mult_u32(global0.x, global0.x)), var_1.b), select(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, var_1.b, global0.x), vec3<u32>(var_1.b, var_1.b, 4294967295u)), select(vec3<u32>(global0.x, var_1.b, var_1.b), vec3<u32>(global0.x, 0u, var_1.b), vec3<bool>(var_1.e, var_1.e, var_1.e))), ~vec3<u32>(11995u, var_1.b, global0.x), false), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(global0.x, var_1.b, 47920u), ~vec3<u32>(4294967295u, 0u, 55392u)));
    let var_2 = func_5(func_5(Struct_3(countOneBits(vec4<u32>(3707u, 0u, var_1.b, global0.x)), func_2(), Struct_2(func_5(Struct_3(vec4<u32>(1u, 39038u, 1u, 0u), Struct_1(2147483647i, 6884u, 0i, -38623i, var_1.e), Struct_2(vec2<bool>(var_1.e, var_1.e), vec3<f32>(1986f, -701f, -105f)))).c.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1115f, var_0.x, 400f))))));
    var var_3 = var_1.c;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.c.b - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.c.b.x, var_0.x, var_2.c.b.x))))));
    global0 = var_2.a.xxz;
    let var_4 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(_wgslsmith_sub_u32(4294967295u, var_2.b.b), ~var_2.b.b, ~5029u) >> (vec3<u32>(0u, 1u, 29861u) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(select(var_2.c.b.yy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(662f, -1613f), var_4.b.zx) * _wgslsmith_f_op_vec2_f32(floor(var_0.yy))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.xz), var_4.b.xx, !var_2.c.a))), var_4.a)), reverseBits(~(~(~vec2<u32>(64686u, 4294967295u)))));
}

