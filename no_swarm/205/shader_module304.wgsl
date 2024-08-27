struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 2>;

var<private> global1: vec3<u32> = vec3<u32>(45469u, 12393u, 7790u);

var<private> global2: Struct_1;

var<private> global3: vec2<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    global0 = array<vec4<i32>, 2>();
    let var_0 = Struct_3(Struct_1(vec4<bool>(all(vec4<bool>(arg_0.a.x, false, global2.a.x, true)), any(!arg_0.a), true, arg_0.a.x & (global2.c.x > u_input.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b.x, 1119f) * global2.b))), abs(_wgslsmith_sub_vec3_u32(firstLeadingBit(u_input.a.wyw), global2.c))));
    global0 = array<vec4<i32>, 2>();
    let var_1 = _wgslsmith_f_op_f32(abs(global2.b.x));
    var var_2 = var_0.a;
    return ~(u_input.a.x | ~1u);
}

fn func_4(arg_0: bool, arg_1: u32) -> vec3<u32> {
    let var_0 = Struct_3(Struct_1(vec4<bool>(arg_0, true, true, !(arg_0 && true)), _wgslsmith_f_op_vec2_f32(global2.b * _wgslsmith_div_vec2_f32(global2.b, _wgslsmith_f_op_vec2_f32(-global2.b))), u_input.a.yyw));
    var var_1 = Struct_2(select(vec4<bool>(arg_0, global2.a.x | (var_0.a.a.x & false), global2.a.x, false), !var_0.a.a, global2.a), _wgslsmith_f_op_f32(sign(var_0.a.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(299f, _wgslsmith_f_op_f32(step(var_0.a.b.x, _wgslsmith_f_op_f32(-var_0.a.b.x))), -579f, _wgslsmith_f_op_f32(abs(-529f)))));
    var var_2 = -(vec2<i32>(_wgslsmith_mod_i32(firstTrailingBit(u_input.d), 17306i), -7265i) >> (global1.zy % vec2<u32>(32u)));
    let var_3 = var_0;
    global0 = array<vec4<i32>, 2>();
    return var_3.a.c;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>) -> Struct_1 {
    global2 = Struct_1(!select(arg_0.a, vec4<bool>(global2.a.x, all(global2.a), u_input.d >= u_input.d, true), false), global2.b, func_4(true, _wgslsmith_add_u32(func_3(Struct_2(vec4<bool>(true, false, arg_0.a.x, global2.a.x), global2.b.x, arg_0.c)), func_3(arg_0))));
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_1.xx))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_1.zw, vec2<f32>(global2.b.x, -808f))))));
    global2 = Struct_1(select(vec4<bool>(max(4146i, u_input.d) != 1i, true, ~(-2147483647i) > u_input.d, true), !global2.a, !(!vec4<bool>(true, arg_0.a.x, true, false))), _wgslsmith_f_op_vec2_f32(-global2.b), countOneBits(_wgslsmith_mult_vec3_u32(~(~global2.c), _wgslsmith_mod_vec3_u32(global2.c, vec3<u32>(u_input.c.x, 41377u, global2.c.x)) ^ _wgslsmith_mult_vec3_u32(global2.c, u_input.a.ywx))));
    var var_0 = ((u_input.d << (~global1.x % 32u)) & firstLeadingBit(u_input.d ^ -u_input.d)) | -firstLeadingBit(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.d, 2147483647i, 2147483647i, 2147483647i), global0[_wgslsmith_index_u32(countOneBits(u_input.a.x), 2u)]));
    global1 = firstLeadingBit(vec3<u32>(global2.c.x, 0u, max(_wgslsmith_dot_vec2_u32(global2.c.xz, vec2<u32>(u_input.c.x, global1.x)), _wgslsmith_clamp_u32(47246u, u_input.c.x, global2.c.x)))) ^ u_input.a.wzx;
    return Struct_1(vec4<bool>(arg_0.a.x, true, (~4294967295u | ~global2.c.x) == (global2.c.x << (1476u % 32u)), !any(arg_0.a.wyx)), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(global2.b.x)))), _wgslsmith_f_op_f32(trunc(-1341f))), global2.c);
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_3 {
    var var_0 = func_2(Struct_2(global2.a, 130f, vec4<f32>(_wgslsmith_f_op_f32(global3.x - global3.x), -1523f, -1035f, _wgslsmith_f_op_f32(-global3.x))), vec4<f32>(_wgslsmith_f_op_f32(sign(global3.x)), 764f, global2.b.x, -1322f));
    var var_1 = _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(var_0.b.x - global2.b.x));
    global3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(2493f + _wgslsmith_f_op_f32(abs(-1670f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1833f, 368f), var_0.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, global3.x))))))));
    global3 = _wgslsmith_f_op_vec2_f32(exp2(var_0.b));
    let var_2 = ~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d, -1i) & vec2<i32>(u_input.d, u_input.d), vec2<i32>(2147483647i, -4607i) << (vec2<u32>(4294967295u, global2.c.x) % vec2<u32>(32u)), vec2<i32>(u_input.d, u_input.d)), firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d, 0i), vec2<i32>(-2147483647i, 13494i)))), select(-2147483647i, u_input.d, !var_0.a.x | arg_1));
    return Struct_3(Struct_1(!(!select(global2.a, vec4<bool>(arg_1, var_0.a.x, var_0.a.x, true), arg_1)), global2.b, ~select(vec3<u32>(global1.x, 76759u, global2.c.x) ^ vec3<u32>(4294967295u, 9000u, 4294967295u), u_input.a.xxy, true | arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(false, _wgslsmith_dot_vec3_u32(min(_wgslsmith_div_vec3_u32(u_input.a.yww, vec3<u32>(4294967295u, global1.x, u_input.b.x)), vec3<u32>(5735u, 15108u, 1u)), reverseBits(vec3<u32>(global1.x, 37065u, global1.x))) == 1u);
    var var_1 = var_0.a;
    var_1 = Struct_1(!global2.a, vec2<f32>(-1414f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1433f, 606f)))))), vec3<u32>(4294967295u, ~2239u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(max(u_input.a, u_input.a), u_input.a & vec4<u32>(45807u, var_1.c.x, 37844u, var_0.a.c.x)), ~u_input.a >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, global2.c.x, global2.c.x, var_1.c.x), vec4<u32>(u_input.b.x, u_input.a.x, 20765u, var_0.a.c.x), u_input.a) % vec4<u32>(32u)))));
    var var_2 = Struct_3(Struct_1(!func_1(false, global2.a.x).a.a, _wgslsmith_f_op_vec2_f32(global2.b + _wgslsmith_f_op_vec2_f32(round(global2.b))), _wgslsmith_div_vec3_u32(var_0.a.c, ~vec3<u32>(54759u, var_1.c.x, 66079u))));
    global2 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1799f, _wgslsmith_f_op_f32(f32(-1f) * -995f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.x, global2.b.x)))), !select(vec2<bool>(global2.a.x, true), vec2<bool>(true, true), all(vec3<bool>(var_2.a.a.x, var_0.a.a.x, var_0.a.a.x))))));
}

