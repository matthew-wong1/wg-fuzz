struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_2,
    e: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: vec4<u32>,
    c: Struct_1,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 23>;

var<private> global1: vec2<f32> = vec2<f32>(114f, 724f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-193f)), _wgslsmith_f_op_f32(ceil(global1.x)), true & (_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global1.x, global1.x, true)))) == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global1.x)))))));
    global0 = array<vec4<bool>, 23>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1000f, -345f, global1.x));
    global0 = array<vec4<bool>, 23>();
    let var_2 = Struct_4(select(_wgslsmith_mod_i32(~u_input.d.x, -2139i), firstTrailingBit(u_input.d.x), any(global0[_wgslsmith_index_u32(0u, 23u)])) ^ ~u_input.d.x, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1630f))), true), vec2<bool>(true, (u_input.a.x | 5581u) < abs(u_input.b.x & arg_0.x)), Struct_2(_wgslsmith_f_op_f32(floor(226f)) <= _wgslsmith_f_op_f32(-2015f - _wgslsmith_f_op_f32(-global1.x))), Struct_3(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-2330f, 813f)))), true), u_input.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, -851f, 893f, -1198f), vec4<f32>(-540f, var_1.x, -851f, -814f), !global0[_wgslsmith_index_u32(10964u, 23u)])))));
    return 0i;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: f32) -> Struct_5 {
    let var_0 = false;
    let var_1 = -2147483647i;
    var var_2 = func_3(vec3<u32>(arg_1.x, arg_1.x, ~_wgslsmith_add_u32(_wgslsmith_mult_u32(arg_1.x, u_input.b.x), 28173u)));
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.c.x, arg_0.c.x, arg_3), _wgslsmith_f_op_vec3_f32(trunc(arg_0.c.zxw))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-677f, -293f, -136f)), arg_0.c.xyy))) * _wgslsmith_f_op_vec3_f32(arg_0.c.xzz * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(216f, arg_3, arg_0.c.x))))))));
    global0 = array<vec4<bool>, 23>();
    return Struct_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-572f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.a.a), _wgslsmith_f_op_f32(select(393f, _wgslsmith_f_op_f32(-507f * var_3.x), arg_0.a.b || true))))), ~vec4<u32>(_wgslsmith_dot_vec3_u32(reverseBits(u_input.b.xwz), ~arg_1.zzy), countOneBits(~1u), u_input.b.x >> ((4294967295u ^ u_input.a.x) % 32u), 1u), arg_0.a, true, global1.x);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: u32, arg_3: vec3<u32>) -> i32 {
    global0 = array<vec4<bool>, 23>();
    let var_0 = vec2<u32>(64285u, arg_3.x);
    var var_1 = func_2(Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -921f)), false), _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(u_input.d.x, u_input.c, 2147483647i, 1i)), u_input.d) | u_input.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1000f, 651f, global1.x, global1.x))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, global1.x, -719f, arg_0.x), vec4<f32>(global1.x, -627f, arg_0.x, 1010f)), vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(770f, arg_0.x, global1.x, -1000f) - vec4<f32>(global1.x, -1659f, global1.x, 184f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1285f, arg_0.x, -122f, arg_0.x))))))), ~vec4<u32>(~1u, 0u, u_input.a.x, 1u) & ~firstLeadingBit(u_input.b), _wgslsmith_mod_vec4_i32(-firstLeadingBit(u_input.d) >> (u_input.b % vec4<u32>(32u)), -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, 31338i, -24574i, u_input.d.x), u_input.d)), -457f);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(arg_0, arg_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.a, 264f, 593f)), vec3<bool>(true, true, true))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e) - _wgslsmith_f_op_f32(arg_0.x + 238f)), _wgslsmith_f_op_f32(abs(-141f)), var_1.e)) * arg_0);
    var var_3 = select(select(arg_1, arg_1, all(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~4294967295u, firstTrailingBit(var_1.b.x), 33675u), 23u)])), arg_1, arg_1.x);
    return _wgslsmith_div_i32((i32(-1i) * -2147483647i) & u_input.c, ~(~(~u_input.d.x)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_4) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(340f, arg_1.b.b), arg_1.e.b | countOneBits(-min(vec4<i32>(u_input.c, -57086i, -2147483647i, u_input.d.x), arg_1.e.b)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_1.e.a.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), arg_1.e.a.a, global1.x));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-726f, _wgslsmith_f_op_f32(step(var_0.a.a, global1.x)))), arg_1.e.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.e.c.zz) - vec2<f32>(-1576f, arg_1.b.a)))));
    let var_1 = !vec2<bool>(!(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 0u) < ~u_input.a.x), global1.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-957f + arg_1.e.c.x) * _wgslsmith_f_op_f32(arg_1.e.c.x - global1.x)));
    global0 = array<vec4<bool>, 23>();
    var var_2 = vec2<bool>(!(!(!(!var_0.a.b))), (true | var_1.x) & any(!var_1));
    return arg_1.e.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1779f, -775f))), firstLeadingBit(~(_wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(87852u, 4294967295u, u_input.a.x, u_input.a.x)) | vec4<u32>(u_input.a.x, 40788u, u_input.b.x, 1u))), Struct_1(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2159f)))), true), true, _wgslsmith_f_op_f32(trunc(295f)));
    let var_1 = _wgslsmith_f_op_f32(step(1318f, 516f));
    var var_2 = Struct_1(var_1, false);
    var_2 = func_4(vec2<i32>(-u_input.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(func_1(vec3<f32>(var_1, -1663f, var_2.a), vec2<bool>(false, var_0.d), 0u, vec3<u32>(var_0.b.x, u_input.a.x, var_0.b.x)), ~u_input.c), -u_input.d.xx)), Struct_4(u_input.c, Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.x - var_0.a))), true), select(vec2<bool>(-1280f > var_1, var_2.b), vec2<bool>(func_2(Struct_3(var_0.c, vec4<i32>(-1i, u_input.d.x, 2147483647i, u_input.c), vec4<f32>(-737f, var_0.e, -1074f, -1269f)), u_input.b, u_input.d, global1.x).d, true & var_0.c.b), vec2<bool>(!var_0.c.b, !var_0.c.b)), Struct_2(!any(vec2<bool>(true, var_2.b))), Struct_3(Struct_1(_wgslsmith_f_op_f32(-global1.x), !var_0.d), ~u_input.d, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-674f, -2482f, var_2.a, 780f) * vec4<f32>(705f, var_2.a, var_2.a, var_1)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1, -1011f, var_1, var_0.e))))))));
    var var_3 = u_input.c;
    let var_4 = ~reverseBits(u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(510f, _wgslsmith_dot_vec3_i32(max(abs(vec3<i32>(u_input.c, u_input.d.x, u_input.c) >> (var_0.b.yzx % vec3<u32>(32u))), countOneBits(u_input.d.yzz)), _wgslsmith_mult_vec3_i32(abs(u_input.d.yww | u_input.d.xxy), ~u_input.d.xyx)));
}

