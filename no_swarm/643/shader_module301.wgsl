struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: u32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: bool,
    d: vec2<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 29248u;

var<private> global1: array<u32, 16>;

var<private> global2: array<vec3<u32>, 10> = array<vec3<u32>, 10>(vec3<u32>(1u, 1u, 20906u), vec3<u32>(8398u, 4294967295u, 16875u), vec3<u32>(63338u, 1u, 1u), vec3<u32>(0u, 44160u, 25596u), vec3<u32>(19671u, 23356u, 0u), vec3<u32>(61067u, 24229u, 107123u), vec3<u32>(0u, 0u, 1u), vec3<u32>(0u, 1857u, 1u), vec3<u32>(4294967295u, 43611u, 4945u), vec3<u32>(50629u, 0u, 3252u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<bool>) -> i32 {
    var var_0 = arg_1.x;
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(-abs(1i), _wgslsmith_mult_i32(countOneBits(-2147483647i) >> (u_input.a.x % 32u), 1i), -42714i, -_wgslsmith_div_i32(-25860i >> (global1[_wgslsmith_index_u32(30889u, 16u)] % 32u), 1i)), abs(-abs(-vec4<i32>(44570i, -29070i, -54274i, -2147483647i))));
    global1 = array<u32, 16>();
    var_0 = false | arg_1.x;
    var var_2 = ~(~reverseBits(_wgslsmith_mod_u32(41623u, ~global1[_wgslsmith_index_u32(0u, 16u)])));
    return _wgslsmith_mult_i32(_wgslsmith_mod_i32(select(-1i, _wgslsmith_add_i32(0i, -1i), arg_1.x), -58436i), 1i);
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_3(Struct_1(u_input.a.x), ~vec4<i32>(-_wgslsmith_add_i32(0i, 1456i), -func_3(vec4<f32>(-2101f, -611f, -1722f, 1227f), vec3<bool>(true, false, false)), 0i, abs(2147483647i) << (_wgslsmith_mult_u32(4294967295u, u_input.a.x) % 32u)), _wgslsmith_div_vec2_i32(vec2<i32>(abs(2147483647i) << (u_input.a.x % 32u), -2147483647i), vec2<i32>(7718i, 1i)));
    var var_1 = var_0.a;
    let var_2 = var_0.a;
    global2 = array<vec3<u32>, 10>();
    global0 = _wgslsmith_mult_u32(49782u, firstLeadingBit(u_input.a.x ^ 1u)) << (10624u % 32u);
    return Struct_4(_wgslsmith_sub_i32(~func_3(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1584f, 2980f, -102f, -1000f))), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true)), var_0.b.x), select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), true), vec4<bool>(var_0.c.x == var_0.c.x, true, false, all(vec4<bool>(true, false, true, true))), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true))), true), true), !(!(true || select(false, false, true))), vec2<u32>(0u, select(69080u, global1[_wgslsmith_index_u32(4294967295u, 16u)] ^ var_1.a, false) << (u_input.a.x % 32u)), ~40005u);
}

fn func_1() -> Struct_3 {
    let var_0 = func_2();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1462f, _wgslsmith_f_op_f32(abs(1000f))))) - _wgslsmith_f_op_f32(ceil(-521f))), -290f, Struct_1(var_0.d.x), ~1u, vec4<i32>(var_0.a | _wgslsmith_clamp_i32(~16060i, _wgslsmith_clamp_i32(var_0.a, var_0.a, -1696i), func_3(vec4<f32>(1112f, -529f, 594f, -976f), vec3<bool>(false, var_0.b.x, false))), abs(abs(-10643i)), var_0.a, func_2().a));
    global0 = _wgslsmith_mod_u32(~firstLeadingBit(var_1.d), _wgslsmith_clamp_u32(~1u, (~u_input.a.x | var_1.c.a) << (u_input.a.x % 32u), 12316u >> (var_0.e % 32u)));
    global1 = array<u32, 16>();
    var var_2 = ~(~min(4294967295u, 4294967295u));
    return Struct_3(var_1.c, max(var_1.e, -(~min(var_1.e, var_1.e))), select(var_1.e.xw, var_1.e.yx, var_0.b.zz));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> bool {
    global0 = abs(~(~global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(7669u, global1[_wgslsmith_index_u32(arg_1.a.a, 16u)], global1[_wgslsmith_index_u32(10703u, 16u)]), vec3<u32>(arg_0.a, 27214u, 4294967295u)), 0u), 16u)]));
    var var_0 = Struct_2(1235f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-361f * _wgslsmith_f_op_f32(f32(-1f) * -722f))), arg_0, arg_0.a << (_wgslsmith_div_u32(_wgslsmith_sub_u32(36949u, arg_0.a) << (~u_input.a.x % 32u), ~u_input.a.x) % 32u), -(~(-vec4<i32>(arg_1.b.x, 1i, -2147483647i, arg_1.c.x))));
    global1 = array<u32, 16>();
    global1 = array<u32, 16>();
    var var_1 = Struct_2(var_0.a, 474f, func_1().a, 0u, vec4<i32>(1i, -12531i, _wgslsmith_mod_i32(func_3(vec4<f32>(-463f, -363f, var_0.a, var_0.b), vec3<bool>(false, false, false)), -40553i >> (var_0.c.a % 32u)) ^ arg_1.b.x, ~_wgslsmith_dot_vec3_i32(-vec3<i32>(arg_1.c.x, arg_1.c.x, 77385i), vec3<i32>(arg_1.b.x, 1i, arg_1.c.x) ^ var_0.e.yyz)));
    return !(any(!select(vec2<bool>(true, false), vec2<bool>(false, false), true)) || any(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, false), true)));
}

fn func_5(arg_0: vec4<bool>) -> vec4<f32> {
    global2 = array<vec3<u32>, 10>();
    global2 = array<vec3<u32>, 10>();
    global1 = array<u32, 16>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(814f - 1375f) + _wgslsmith_div_f32(-680f, -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(102f, -312f)) + -1076f))))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-943f, _wgslsmith_f_op_f32(881f + 1000f)))))));
    var var_1 = Struct_4(-10722i, arg_0, true, ~vec2<u32>(17766u, global1[_wgslsmith_index_u32(u_input.a.x, 16u)]), 10468u);
    return vec4<f32>(_wgslsmith_f_op_f32(round(var_0)), var_0, -1060f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-520f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_5(!vec4<bool>(false, true, func_4(Struct_1(16169u), func_1()), any(vec3<bool>(true, true, true)))));
    var var_1 = Struct_3(Struct_1(u_input.a.x), -select(func_1().b, ~abs(vec4<i32>(1i, 2470i, -13654i, -1i)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true)), _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(select(vec2<i32>(6490i, 22729i), vec2<i32>(-27712i, -24160i), vec2<bool>(true, true)), vec2<i32>(1i, 1i)) << (~vec2<u32>(4294967295u, 0u) % vec2<u32>(32u)), -select(-vec2<i32>(58106i, -664i), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(-2147483647i, -22846i)), false)));
    let var_2 = Struct_2(var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1166f, var_0.x), var_0.x)), func_1().a, global1[_wgslsmith_index_u32(firstTrailingBit(var_1.a.a), 16u)] & _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(68936u, 4294967295u, 54377u, 0u), vec4<u32>(u_input.a.x, var_1.a.a, 4294967295u, 4294967295u)) & ~u_input.a.x, _wgslsmith_mult_u32(4294967295u, min(global1[_wgslsmith_index_u32(15748u, 16u)], 0u))), -countOneBits(-vec4<i32>(var_1.c.x, 1i, -1i, var_1.c.x)));
    global0 = var_1.a.a;
    global0 = min(13022u, u_input.a.x << (firstTrailingBit(~var_2.c.a) % 32u));
    let var_3 = func_2();
    var var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.a + var_0.x), -476f)))), 2731f))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-var_3.a), (var_1.b.xw & vec2<i32>(var_1.b.x, var_1.b.x)) & vec2<i32>(var_3.a, ~(-var_3.a)), firstLeadingBit(select(-vec3<i32>(32784i, 2522i, 15178i), var_1.b.zwx, !(!vec3<bool>(var_3.b.x, true, var_3.b.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1083f, var_0.x, 599f))))), var_0.yzw));
}

