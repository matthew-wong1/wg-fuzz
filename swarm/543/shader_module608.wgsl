struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<i32>(i32(-2147483648), -6265i, -20533i), 4294967295u);

var<private> global1: array<vec3<i32>, 14>;

var<private> global2: f32;

var<private> global3: Struct_1 = Struct_1(vec4<i32>(i32(-2147483648), 18623i, 0i, 156i), -3597i, vec4<i32>(40477i, -7937i, -9226i, -1i), vec4<u32>(0u, 1u, 8262u, 1u));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec4<i32>) -> vec4<i32> {
    global1 = array<vec3<i32>, 14>();
    global1 = array<vec3<i32>, 14>();
    global0 = Struct_3(global3.a.yzz, _wgslsmith_mod_u32(0u, _wgslsmith_div_u32(4294967295u, 4294967295u)));
    var var_0 = Struct_3(countOneBits(abs(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0, -11378i, 1i), u_input.a), vec3<i32>(arg_2.x, global0.a.x, -1i) << (arg_1.b.d.xzw % vec3<u32>(32u))))), _wgslsmith_sub_u32(u_input.c.x, ~global3.d.x));
    global1 = array<vec3<i32>, 14>();
    return _wgslsmith_sub_vec4_i32(vec4<i32>(min(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.e.x, global0.a.x, var_0.a.x), arg_2) >> (firstLeadingBit(var_0.b) % 32u), _wgslsmith_add_i32(_wgslsmith_clamp_i32(2147483647i, arg_1.b.b, 1i), arg_0)), i32(-1i) * -18710i, ~_wgslsmith_div_i32(global3.a.x, global3.a.x), -(~1i) >> (~(~0u) % 32u)), countOneBits(global3.a) ^ (arg_1.b.c << (_wgslsmith_div_vec4_u32(vec4<u32>(var_0.b, arg_1.b.d.x, u_input.c.x, u_input.c.x), ~arg_1.b.d) % vec4<u32>(32u))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2) -> vec3<i32> {
    global1 = array<vec3<i32>, 14>();
    let var_0 = ~26021u;
    var var_1 = Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, u_input.d.x, -2147483647i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.x, 56523i), vec2<i32>(-58231i, 49539i))), _wgslsmith_sub_vec4_i32((global3.a << (vec4<u32>(4294967295u, global3.d.x, 1u, global0.b) % vec4<u32>(32u))) << (arg_1.b.d % vec4<u32>(32u)), ~vec4<i32>(arg_1.b.a.x, arg_1.b.c.x, 61814i, 2147483647i))), countOneBits(-_wgslsmith_sub_i32(55414i, global3.a.x) | 1i), _wgslsmith_clamp_vec4_i32(u_input.e, arg_0 ^ (vec4<i32>(-1i) * -vec4<i32>(-51180i, global0.a.x, 5213i, 24973i)), vec4<i32>(global0.a.x, ~abs(u_input.e.x), -2147483647i, countOneBits(-1i))), global3.d);
    let var_2 = arg_1.b;
    var_1 = Struct_1(vec4<i32>(~firstTrailingBit(var_1.c.x) & abs(-1i), var_2.a.x, 36751i, 1i), ~(-(12775i >> (0u % 32u))), arg_0, vec4<u32>(_wgslsmith_dot_vec2_u32(~global3.d.xy, select(u_input.c, vec2<u32>(global3.d.x, 4294967295u), vec2<bool>(true, arg_1.a))), ~arg_1.b.d.x, (var_0 & arg_1.b.d.x) << (54927u % 32u), _wgslsmith_div_u32(firstTrailingBit(4294967295u), _wgslsmith_add_u32(global3.d.x, u_input.c.x))) >> (~arg_1.b.d % vec4<u32>(32u)));
    return -arg_0.ywy;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_3(func_4(select(func_3(global0.a.x << (u_input.c.x % 32u), Struct_2(false, Struct_1(vec4<i32>(77860i, -1i, global0.a.x, global3.a.x), global0.a.x, global3.c, vec4<u32>(50548u, 35260u, u_input.c.x, global0.b)), -687f), -vec4<i32>(-53257i, 2147483647i, 1i, global3.a.x)), global3.a, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)))), Struct_2(true, Struct_1(vec4<i32>(u_input.b, -7605i, global0.a.x, global0.a.x), global0.a.x, min(vec4<i32>(u_input.b, 1i, u_input.e.x, -5864i), vec4<i32>(global3.b, u_input.a.x, global3.b, global3.c.x)), vec4<u32>(u_input.c.x, 1u, 26955u, global3.d.x) & vec4<u32>(global0.b, 4294967295u, global3.d.x, 5617u)), 1000f)), _wgslsmith_div_u32(~abs(~u_input.c.x), _wgslsmith_dot_vec4_u32(firstTrailingBit(global3.d), reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(global3.d.x, global0.b, u_input.c.x, 45813u), global3.d)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f)))));
    var var_2 = 4294967295u;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -603f) - _wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(var_1.x * var_1.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1618f, 624f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-225f * var_1.x) - _wgslsmith_f_op_f32(var_1.x - var_1.x))))));
    let var_4 = Struct_1(max(reverseBits(-vec4<i32>(0i, 2147483647i, global3.b, global3.c.x)) ^ u_input.e, ~firstTrailingBit(vec4<i32>(global0.a.x, -2147483647i, global0.a.x, var_0.a.x)) | u_input.e), -2147483647i, vec4<i32>(-1i) * -u_input.e, _wgslsmith_mult_vec4_u32(~(~vec4<u32>(global3.d.x, u_input.c.x, 1u, global0.b)), global3.d));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) + _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(171f - var_1.x))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_3.x + var_3.x)))), Struct_1(var_4.a, _wgslsmith_div_i32(~(var_4.a.x >> (var_4.d.x % 32u)), 17532i), ~vec4<i32>(~u_input.d.x, _wgslsmith_dot_vec3_i32(var_4.a.zwz, global3.c.wxy), _wgslsmith_sub_i32(-25212i, -21458i), var_4.b ^ global3.b), var_4.d), 970f);
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_add_vec3_i32(global3.c.yww, vec3<i32>(-global3.a.x, 2606i, max(-29817i, global0.a.x)));
    let var_1 = func_2();
    global3 = Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-40222i, -6896i, 21609i), var_1.b.c.wxy), _wgslsmith_clamp_i32(global0.a.x, 0i, -1621i), select(u_input.a.x, 2147483647i, var_1.a), _wgslsmith_div_i32(-2147483647i, -76449i)), _wgslsmith_div_vec4_i32(vec4<i32>(-11330i, global0.a.x, global0.a.x, global3.a.x), vec4<i32>(1i, -31251i, -1i, u_input.a.x)) | -global3.a, vec4<i32>(global3.b, -global3.b, -2147483647i, -2147483647i ^ global0.a.x)) | _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-28342i, global0.a.x), var_0.x, u_input.d.x, var_0.x), var_1.b.c), -47456i, var_1.b.c, ~(global3.d & _wgslsmith_sub_vec4_u32(~vec4<u32>(global0.b, global0.b, var_1.b.d.x, global3.d.x), abs(vec4<u32>(4294967295u, var_1.b.d.x, 4294967295u, 1u)))));
    let var_2 = 102349i;
    global0 = Struct_3(global0.a, select(_wgslsmith_add_u32(_wgslsmith_mult_u32(62567u, var_1.b.d.x), u_input.c.x), _wgslsmith_clamp_u32(46829u, firstLeadingBit(var_1.b.d.x), _wgslsmith_div_u32(var_1.b.d.x ^ global3.d.x, max(4294967295u, var_1.b.d.x))), all(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(var_1.a, false), vec2<bool>(var_1.a, var_1.a)))));
    return Struct_3(global3.c.wyy, ~_wgslsmith_mod_u32(~(~3109u), global3.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_3(vec3<i32>(1i, ~(i32(-1i) * -global0.a.x), -2947i), ~select(31857u, ~7965u, all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false))));
    var var_1 = Struct_2(false, Struct_1(vec4<i32>(11886i, _wgslsmith_mod_i32(firstLeadingBit(2147483647i), -14560i), global0.a.x, global0.a.x | global0.a.x), _wgslsmith_sub_i32(_wgslsmith_div_i32(-3623i, func_1().a.x), -25265i), reverseBits(~vec4<i32>(global0.a.x, var_0.a.x, global0.a.x, 13540i)), ~(~max(vec4<u32>(1u, global3.d.x, var_0.b, u_input.c.x), global3.d))), _wgslsmith_f_op_f32(max(-745f, _wgslsmith_f_op_f32(320f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1145f, 2270f)), -1121f, false))))));
    let var_2 = _wgslsmith_f_op_f32(var_1.c + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-144f)), _wgslsmith_f_op_f32(max(-1000f, -1732f)), firstLeadingBit(~global3.d.x) <= global3.d.x)));
    global3 = Struct_1(~var_1.b.a, i32(-1i) * -2147483647i, abs(func_3(abs(~3984i), func_2(), func_2().b.c)), select(firstLeadingBit(min(abs(vec4<u32>(var_1.b.d.x, var_1.b.d.x, 1u, 0u)), vec4<u32>(4294967295u, 21997u, var_1.b.d.x, var_0.b))), vec4<u32>(func_2().b.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 30381u, 1u), var_1.b.d.www), var_1.b.d.x, global0.b) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(109695u, global3.d.x, 4294967295u, 1u), vec4<u32>(23340u, var_0.b, 54341u, global3.d.x), ~vec4<u32>(var_0.b, 28132u, 0u, var_0.b)), vec4<bool>(all(!vec4<bool>(true, true, var_1.a, false)), var_1.a, true, false)));
    var_1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_1.b.d), select(firstLeadingBit(~(~vec2<i32>(-47428i, var_1.b.b))), vec2<i32>(-30889i, -(-1i << (var_1.b.d.x % 32u))), vec2<bool>(_wgslsmith_f_op_f32(-var_2) <= _wgslsmith_f_op_f32(round(-2278f)), !(27211u <= global3.d.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1419f, 218f), vec2<f32>(var_1.c, -629f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-511f, -472f) * vec2<f32>(var_2, var_1.c)), select(vec2<bool>(false, true), vec2<bool>(var_1.a, true), false))))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.c, -269f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, -1155f)))))));
}

