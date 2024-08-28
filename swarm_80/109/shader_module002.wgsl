struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: vec3<bool>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: vec4<i32>,
    e: bool,
}

struct Struct_5 {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(4294967295u, 1i, 29844u), Struct_2(2476u, 0i, 4294967295u), Struct_2(4294967295u, 1i, 1u), Struct_2(89611u, 2147483647i, 9860u), Struct_2(0u, 2147483647i, 14626u), Struct_2(1u, 43304i, 54828u), Struct_2(37668u, i32(-2147483648), 73107u), Struct_2(1u, 48790i, 7402u), Struct_2(0u, 38656i, 0u), Struct_2(0u, 1i, 43473u), Struct_2(36992u, 22752i, 4294967295u), Struct_2(0u, 9633i, 11288u), Struct_2(65516u, 1i, 26795u), Struct_2(33492u, 57502i, 12337u), Struct_2(1u, -12913i, 1u), Struct_2(55020u, i32(-2147483648), 6822u));

var<private> global3: array<vec2<f32>, 23>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(796f, 378f, -874f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1051f, -839f, -816f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1844f, -163f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1063f, 1632f, -714f), vec3<f32>(-742f, 940f, -786f))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-585f, 342f, -732f))))));
}

fn func_2() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-916f + -743f), 1f, true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -166f), 1000f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 397f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1420f, 1837f)) * _wgslsmith_f_op_f32(floor(510f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(632f - 326f)))) * 426f);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(4294967295u, 25126i, 1u))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-752f, 1571f, -1694f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-305f, -669f, -627f))))))) * vec3<f32>(-1835f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(global1.x, 41602i, global1.x))).x)))), _wgslsmith_f_op_vec3_f32(func_3(Struct_2(global1.x, -39864i, 15340u))).x));
    let var_2 = vec2<i32>(firstLeadingBit(1i), -_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(22087i, -40624i, -10708i), firstLeadingBit(-5269i), ~(-9437i)), abs(vec3<i32>(-2147483647i, -1i, -2147483647i))));
    var var_3 = ~_wgslsmith_clamp_vec3_u32(global1.zyx, _wgslsmith_mult_vec3_u32(u_input.e, reverseBits(select(global1.zxy, vec3<u32>(u_input.e.x, 94375u, 1u), vec3<bool>(false, false, true)))), vec3<u32>(global1.x, ~(~44517u), ~28913u | _wgslsmith_clamp_u32(u_input.a, 33166u, u_input.d.x)));
    global1 = vec4<u32>(_wgslsmith_add_u32(select(global1.x, u_input.b, false), countOneBits(31899u) & ~(~var_3.x)), 57068u, ~var_3.x, u_input.c);
    return select(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, global1.x, 1u) << (_wgslsmith_sub_vec3_u32(u_input.e, vec3<u32>(var_3.x, 24922u, 33733u)) % vec3<u32>(32u)), firstTrailingBit(firstTrailingBit(vec3<u32>(15183u, global1.x, global1.x)))), global1.wzx), reverseBits(firstLeadingBit(~select(u_input.e, vec3<u32>(1u, global1.x, 44083u), true))), vec3<bool>(true, true, true));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_5, arg_2: vec4<bool>) -> vec2<i32> {
    var var_0 = func_2();
    let var_1 = select(select(vec3<bool>(-2147483647i > _wgslsmith_mult_i32(1i, arg_0.d), true, _wgslsmith_clamp_i32(arg_1.c, 1i, arg_1.a) != (arg_1.a | -80227i)), vec3<bool>(all(!arg_0.c.xz), arg_0.c.x, true), arg_0.c), !vec3<bool>(_wgslsmith_f_op_f32(-arg_0.a.x) > -1719f, all(!arg_0.c.xx), all(select(arg_0.c.zy, arg_2.zx, arg_2.x))), select(!arg_0.c.x, arg_0.c.x, !arg_2.x));
    let var_2 = _wgslsmith_f_op_f32(-arg_0.a.x);
    let var_3 = ~(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-20095i, 1i, arg_1.a), vec3<i32>(-23509i, arg_1.c, arg_1.a)) >> (var_0.x % 32u), _wgslsmith_sub_i32(arg_1.c, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -66892i, arg_0.d, arg_0.d), vec4<i32>(17126i, 1i, arg_0.d, arg_0.d)))) >> (vec2<u32>(firstTrailingBit(firstLeadingBit(var_0.x)), ~31343u) % vec2<u32>(32u)));
    global2 = array<Struct_2, 16>();
    return vec2<i32>(-6517i, (arg_0.d << (~arg_0.e.x % 32u)) ^ -var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(-14935i);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(-1858f - _wgslsmith_f_op_f32(step(-923f, -1437f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-126f, _wgslsmith_f_op_f32(f32(-1f) * -890f)))) - _wgslsmith_f_op_vec2_f32(floor(global3[_wgslsmith_index_u32(reverseBits(firstLeadingBit(4294967295u)), 23u)])));
    let var_2 = Struct_5(min(_wgslsmith_mult_i32(_wgslsmith_mult_i32(-11499i << (0u % 32u), _wgslsmith_mod_i32(2147483647i, -1i)), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-44411i, -1i, -4226i), vec3<i32>(-1i, 11157i, -2147483647i)), _wgslsmith_mult_i32(-1i, 4884i))), -(~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 11983i, -4966i), vec3<i32>(3599i, -64923i, -13507i)))), vec3<u32>(1u, 23402u << (global1.x % 32u), 0u), ~(~_wgslsmith_sub_i32(64886i, 4768i)) & _wgslsmith_dot_vec2_i32(func_1(Struct_3(vec2<f32>(var_1.x, var_1.x), true, vec3<bool>(false, false, true), 0i, vec4<u32>(0u, 17466u, 9868u, global1.x)), Struct_5(1i, u_input.e, 0i, -1000f), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), false)), vec2<i32>(6679i, 13087i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_1.x)))) - var_1.x) * _wgslsmith_f_op_f32(step(-487f, _wgslsmith_f_op_f32(-978f + -2275f)))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.d, _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.x, -1177f), _wgslsmith_f_op_f32(exp2(var_1.x)))), _wgslsmith_f_op_vec2_f32(global3[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(var_2.b, global1.xxz)), 23u)] * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global3[_wgslsmith_index_u32(1u, 23u)], vec2<f32>(502f, -1190f), false)))), vec2<bool>(true, true))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3[_wgslsmith_index_u32(20983u, 23u)]), _wgslsmith_div_vec2_f32(global3[_wgslsmith_index_u32(u_input.b, 23u)], global3[_wgslsmith_index_u32(global1.x, 23u)])), vec2<f32>(_wgslsmith_f_op_f32(abs(var_1.x)), -1033f))));
    global2 = array<Struct_2, 16>();
    var var_3 = Struct_1(global1.x, reverseBits(vec3<u32>(u_input.a << (1u % 32u), reverseBits(_wgslsmith_mod_u32(23603u, global1.x)), ~1u)));
    var var_4 = 1395f;
    var_4 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, ~vec3<u32>(global1.x, 64453u, 1u >> (var_2.b.x % 32u)) << (vec3<u32>(1u, u_input.d.x, ~abs(var_3.a)) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(-(~vec3<i32>(-19908i, -56946i, 0i)), vec3<i32>(firstLeadingBit(var_2.a), var_2.a, _wgslsmith_mod_i32(var_2.c, -1i)), vec3<i32>(-14927i, _wgslsmith_sub_i32(-2147483647i, var_2.a), var_2.c)) | max(-(~vec3<i32>(25541i, -27505i, var_2.a)), vec3<i32>(var_2.c, -34913i, var_2.a) >> (var_2.b % vec3<u32>(32u))), var_1.x);
}

