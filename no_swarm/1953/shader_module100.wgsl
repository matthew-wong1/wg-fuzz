struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec3<f32>,
    e: i32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec3<u32>(34042u, 41912u, 46756u)), Struct_1(vec3<u32>(4294967295u, 70610u, 1u)), Struct_1(vec3<u32>(4294967295u, 0u, 1u)), Struct_1(vec3<u32>(3492u, 34738u, 4294967295u)), Struct_1(vec3<u32>(0u, 9890u, 48398u)), Struct_1(vec3<u32>(4294967295u, 17075u, 52228u)), Struct_1(vec3<u32>(0u, 1u, 4294967295u)), Struct_1(vec3<u32>(42049u, 26027u, 1u)), Struct_1(vec3<u32>(1u, 0u, 4294967295u)), Struct_1(vec3<u32>(11224u, 1u, 63747u)), Struct_1(vec3<u32>(2972u, 45400u, 1u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_1(vec3<u32>(82351u, 59759u, 41487u)), Struct_1(vec3<u32>(196u, 4294967295u, 0u)), Struct_1(vec3<u32>(62867u, 11646u, 21914u)), Struct_1(vec3<u32>(1u, 53767u, 53269u)), Struct_1(vec3<u32>(35187u, 1u, 0u)), Struct_1(vec3<u32>(4294967295u, 60366u, 35599u)), Struct_1(vec3<u32>(26320u, 1u, 4294967295u)), Struct_1(vec3<u32>(67890u, 0u, 67325u)), Struct_1(vec3<u32>(0u, 1u, 4294967295u)), Struct_1(vec3<u32>(0u, 36472u, 1u)), Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(50542u, 1u, 1u)));

var<private> global2: vec4<i32> = vec4<i32>(21261i, 50192i, 16280i, 43992i);

var<private> global3: vec2<bool>;

var<private> global4: i32 = -36156i;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-554f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(1925f)))));
}

fn func_2() -> Struct_5 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1314f, 2096f, -1389f, 533f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(2002f, -235f, -115f, 133f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(427f, -985f, -875f, 625f))))), vec2<u32>(_wgslsmith_dot_vec2_u32(~(~u_input.c.zy), vec2<u32>(select(u_input.b, u_input.b, true), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 4294967295u), vec2<u32>(u_input.c.x, u_input.c.x)))), ~(~(u_input.c.x << (u_input.b % 32u)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-214f, 715f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(506f, -161f))), vec2<f32>(_wgslsmith_f_op_f32(func_3(u_input.b)), _wgslsmith_f_op_f32(ceil(-1000f))), !(!global3.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(781f, -225f) - vec2<f32>(1000f, 316f)))), !select(vec2<bool>(true, false), select(vec2<bool>(global3.x, false), vec2<bool>(true, global3.x), vec2<bool>(true, false)), false))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1278f, 346f, 547f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(260f, -127f, -766f)), true)), vec3<f32>(-1339f, _wgslsmith_f_op_f32(-1000f - 1487f), _wgslsmith_f_op_f32(-1000f + 339f)))))), _wgslsmith_div_i32(abs(-8561i), -firstTrailingBit(_wgslsmith_clamp_i32(global2.x, global2.x, -7021i))));
    let var_1 = ~(~(~(~(-61537i))));
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(abs(244f)), _wgslsmith_f_op_f32(f32(-1f) * -669f), _wgslsmith_f_op_f32(var_0.c.x * var_0.d.x), -973f))), -vec4<i32>(abs(var_0.e), var_0.e, global2.x, 1i), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.c.x >> (var_0.b.x % 32u), reverseBits(var_0.b.x)), 17u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2066f - 311f) - _wgslsmith_f_op_f32(var_0.c.x * -691f)) + 1158f)), ~abs(~2649u), select(var_1, ~global2.x, global3.x));
    global1 = array<Struct_1, 24>();
    var var_3 = global3.x;
    return Struct_5(var_2.a.c.a.x << (54410u % 32u));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec2<bool>) -> vec4<f32> {
    var var_0 = func_2();
    let var_1 = arg_1;
    let var_2 = -(~(-reverseBits(u_input.a) | _wgslsmith_add_i32(1i, -global2.x)));
    global2 = arg_2.b;
    global1 = array<Struct_1, 24>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_2.a, vec4<f32>(arg_2.d, 938f, _wgslsmith_f_op_f32(arg_2.d - -708f), 674f))));
}

fn func_4(arg_0: Struct_2) -> Struct_5 {
    var var_0 = Struct_3(arg_0, countOneBits(1u), -2147483647i & (_wgslsmith_div_i32(-global2.x, _wgslsmith_div_i32(55262i, 37208i)) >> (_wgslsmith_div_u32(4294967295u, 1u) % 32u)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a.a * vec4<f32>(343f, -108f, -1150f, var_0.a.d))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1133f, var_0.a.d, 562f, 131f))))), vec4<i32>(-43959i, _wgslsmith_mult_i32(global2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-19599i, u_input.a, 31936i, -2147483647i), vec4<i32>(global2.x, -71564i, -1i, global2.x))), var_0.a.b.x, u_input.a), Struct_1(u_input.c.yyw), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.x)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(~u_input.b);
    global1 = array<Struct_1, 24>();
    global1 = array<Struct_1, 24>();
    let var_1 = global0[_wgslsmith_index_u32(~(~abs(u_input.c.x)), 17u)];
    global1 = array<Struct_1, 24>();
    var_0 = func_4(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1323f, 1045f, 2493f, -658f), _wgslsmith_f_op_vec4_f32(func_1(vec4<bool>(true, global3.x, true, true), vec3<u32>(var_0.a, 1u, var_1.a.x), Struct_2(vec4<f32>(-2691f, -282f, 577f, 611f), vec4<i32>(u_input.a, global2.x, -1i, 6165i), Struct_1(u_input.c.xyz), -1498f), vec2<bool>(global3.x, global3.x)))))), ~(-min(vec4<i32>(0i, -3800i, global2.x, 19013i), vec4<i32>(-26142i, u_input.a, 0i, 12792i))), Struct_1(u_input.c.zyz), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec4_f32(func_1(select(vec4<bool>(global3.x, global3.x, global3.x, global3.x), vec4<bool>(global3.x, false, false, false), vec4<bool>(true, false, false, true)), u_input.c.zwy, Struct_2(vec4<f32>(141f, -1442f, 1720f, 280f), vec4<i32>(-2147483647i, 2147483647i, 0i, u_input.a), global1[_wgslsmith_index_u32(u_input.c.x, 24u)], -369f), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(global3.x, false)))).x, _wgslsmith_f_op_f32(1000f - -629f), _wgslsmith_f_op_f32(sign(-1975f)) >= _wgslsmith_f_op_f32(abs(2720f))))));
    var var_2 = _wgslsmith_mult_vec4_i32(max(select(~vec4<i32>(38719i, 16759i, u_input.a, u_input.a), ~select(vec4<i32>(global2.x, 1i, u_input.a, u_input.a), vec4<i32>(u_input.a, 2147483647i, u_input.a, -24700i), vec4<bool>(true, global3.x, global3.x, true)), global3.x), reverseBits(vec4<i32>(-2147483647i, global2.x, global2.x, global2.x)) >> (vec4<u32>(abs(74279u), firstLeadingBit(u_input.c.x), countOneBits(var_1.a.x), u_input.c.x & var_1.a.x) % vec4<u32>(32u))), firstTrailingBit(firstTrailingBit(vec4<i32>(~(-80756i), 1i, reverseBits(29392i), 7705i))));
    global0 = array<Struct_1, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<u32>(54382u, (58650u ^ u_input.c.x) << ((var_1.a.x << (var_1.a.x % 32u)) % 32u))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-466f, -908f, 949f, -1630f), vec4<f32>(169f, -567f, -407f, 1134f))) + vec4<f32>(1090f, -182f, -1000f, 904f)) - vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1454f, 1134f, 366f, -855f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(264f, -1093f, -362f, 311f))))), all(!(!vec3<bool>(false, global3.x, global3.x))))));
}

