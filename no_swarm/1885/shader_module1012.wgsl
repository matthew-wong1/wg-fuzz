struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(1u, vec4<f32>(-645f, -286f, 2671f, -232f), Struct_2(1i, -173f));

var<private> global1: array<vec4<i32>, 17>;

var<private> global2: array<i32, 8>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<u32> {
    global0 = Struct_4(4294967295u, global0.b, Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c, min(1u, u_input.c), ~4294967295u), 8u)] << (~4294967295u % 32u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x * global0.b.x) * _wgslsmith_f_op_f32(floor(global0.c.b)))))));
    var var_0 = Struct_2(~firstTrailingBit(-_wgslsmith_div_i32(23176i, 34030i)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-441f)))));
    global1 = array<vec4<i32>, 17>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, _wgslsmith_f_op_f32(-var_0.b), 289f, _wgslsmith_f_op_f32(max(var_0.b, 723f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(global0.b)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.c.b)) + _wgslsmith_f_op_f32(global0.c.b * var_0.b)), _wgslsmith_f_op_f32(1f + 1000f), -148f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.b - 1406f) * _wgslsmith_f_op_f32(-global0.c.b)))));
    var var_2 = (~global2[_wgslsmith_index_u32(~global0.a, 8u)] <= (-1i << (reverseBits(select(0u, u_input.c, true)) % 32u))) || any(vec3<bool>(true || all(vec4<bool>(false, true, true, true)), false, false));
    return u_input.d.xx;
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_1 {
    global2 = array<i32, 8>();
    let var_0 = _wgslsmith_f_op_vec4_f32(global0.b - _wgslsmith_f_op_vec4_f32(-global0.b));
    var var_1 = global0.c;
    let var_2 = vec2<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(65999u, 22340u, 0u), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 41467u, u_input.b.x), vec3<u32>(u_input.d.x, global0.a, 29994u)), vec3<bool>(true, true, true)), vec3<u32>(u_input.d.x & u_input.b.x, u_input.b.x, global0.a)), ~_wgslsmith_clamp_u32(~global0.a, 0u, select(u_input.c, 60307u, true))) << (firstLeadingBit(min(func_3(), countOneBits(u_input.b.wx)) ^ abs(reverseBits(u_input.b.yx))) % vec2<u32>(32u));
    let var_3 = !(var_1.b > _wgslsmith_f_op_f32(-1854f - _wgslsmith_f_op_f32(arg_1 + arg_1)));
    return Struct_1(u_input.d.x, -1179f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1)) - -1000f)), -223f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(var_1.b + 821f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-592f, 803f, arg_1, arg_1)))), _wgslsmith_f_op_vec4_f32(select(var_0, var_0, vec4<bool>(var_3, var_3, false, false))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-741f, 1000f)))), -907f)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_5) -> bool {
    var var_0 = arg_1.a.c;
    var_0 = Struct_2(reverseBits(reverseBits(var_0.a)), _wgslsmith_f_op_f32(-901f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1333f)) - _wgslsmith_f_op_f32(-global0.b.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.e.x))))));
    var var_1 = _wgslsmith_add_vec4_i32(select(~(global1[_wgslsmith_index_u32(reverseBits(global0.a), 17u)] << (_wgslsmith_clamp_vec4_u32(u_input.d, vec4<u32>(global0.a, 4942u, 16124u, u_input.b.x), vec4<u32>(arg_1.a.a, 0u, u_input.d.x, arg_0.a)) % vec4<u32>(32u))), global1[_wgslsmith_index_u32(5766u, 17u)], select(vec4<bool>(false, all(vec3<bool>(true, false, false)), false, true), vec4<bool>(true, true, true, true), true)), global1[_wgslsmith_index_u32(1u, 17u)]);
    let var_2 = global1[_wgslsmith_index_u32(75653u, 17u)];
    global0 = Struct_4(~(~4294967295u), arg_1.d.c, arg_1.a.c);
    return false;
}

fn func_1() -> vec2<u32> {
    let var_0 = select(vec2<bool>(all(vec2<bool>(true, false)) & func_4(func_2(global2[_wgslsmith_index_u32(43159u, 8u)], 355f), Struct_5(Struct_4(u_input.c, global0.b, global0.c), 528i, vec3<u32>(4294967295u, 87499u, 0u), Struct_1(global0.a, global0.b.x, vec4<f32>(350f, -447f, -1000f, 171f), global0.b, vec2<f32>(-1000f, -1364f)))), true), !vec2<bool>(!func_4(Struct_1(u_input.c, -515f, global0.b, vec4<f32>(-243f, global0.b.x, global0.c.b, global0.b.x), vec2<f32>(global0.c.b, -107f)), Struct_5(Struct_4(u_input.c, vec4<f32>(1000f, 1188f, global0.b.x, global0.c.b), Struct_2(global0.c.a, global0.c.b)), u_input.a, u_input.d.xxy, Struct_1(0u, global0.b.x, vec4<f32>(201f, global0.c.b, global0.b.x, global0.c.b), global0.b, vec2<f32>(global0.b.x, 739f)))), false), select(!vec2<bool>(all(vec3<bool>(true, false, true)), true), vec2<bool>(!(global2[_wgslsmith_index_u32(u_input.b.x, 8u)] >= global0.c.a), true), select(vec2<bool>(any(vec2<bool>(false, false)), false), vec2<bool>(all(vec4<bool>(true, true, true, false)), any(vec4<bool>(true, false, false, true))), global0.a >= 0u)));
    let var_1 = select(_wgslsmith_mult_vec3_u32(countOneBits(u_input.b.wxx ^ u_input.b.yzz) | vec3<u32>(~u_input.b.x, global0.a, global0.a), ~u_input.d.xwz), u_input.b.yxw, var_0.x);
    var var_2 = var_0.x;
    let var_3 = Struct_1(~_wgslsmith_mult_u32(global0.a, abs(u_input.d.x)), _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-global0.c.b))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1772f, _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_div_f32(1107f, -255f), 1858f) + global0.b))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-226f)), 560f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.b.x))), func_2(u_input.a, _wgslsmith_div_f32(442f, -1914f)).e.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1522f, -529f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(989f, -1000f), -2126f, _wgslsmith_div_f32(1000f, global0.c.b), 2016f), global0.b)))), _wgslsmith_f_op_vec2_f32(ceil(global0.b.ww)));
    var var_4 = max(var_1.x, global0.a);
    return u_input.b.zw | u_input.d.xz;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_5) -> vec4<f32> {
    var var_0 = firstLeadingBit(~(~_wgslsmith_mult_vec4_u32(u_input.d, ~vec4<u32>(1u, 6370u, arg_0.x, 0u))));
    let var_1 = Struct_4(40087u, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_1.a.b))))), arg_1.a.c);
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.a.b.x + _wgslsmith_f_op_f32(-arg_1.a.c.b))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(-632f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-391f, 860f)))), var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -398f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-222f)), _wgslsmith_f_op_f32(var_2 - -1000f), true)))));
}

fn func_6(arg_0: vec4<f32>) -> Struct_2 {
    let var_0 = !select(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(false, false, false, false), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true)), func_4(func_2(-33036i, arg_0.x), Struct_5(Struct_4(41986u, arg_0, Struct_2(-76954i, 151f)), 41124i, vec3<u32>(global0.a, 1u, global0.a), Struct_1(1u, -681f, global0.b, vec4<f32>(445f, 112f, global0.c.b, global0.c.b), arg_0.wy)))), arg_0.x == _wgslsmith_f_op_f32(-arg_0.x));
    global1 = array<vec4<i32>, 17>();
    global1 = array<vec4<i32>, 17>();
    var var_1 = vec4<bool>(true, var_0.x, global0.b.x <= 261f, var_0.x);
    var var_2 = Struct_1(~firstLeadingBit(_wgslsmith_div_u32(~0u, u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(252f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(ceil(arg_0.x)), arg_0.x, _wgslsmith_f_op_f32(max(arg_0.x, arg_0.x))))), global0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.b, arg_0.x)))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.c.b, _wgslsmith_f_op_f32(min(-847f, 755f))), vec2<f32>(_wgslsmith_f_op_f32(step(-730f, -2180f)), _wgslsmith_f_op_vec4_f32(func_5(u_input.d.yz, Struct_5(Struct_4(1u, global0.b, Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 8u)], global0.b.x)), u_input.a, u_input.d.wzx, Struct_1(u_input.b.x, 517f, vec4<f32>(global0.c.b, -996f, -109f, -1359f), global0.b, vec2<f32>(global0.b.x, 1316f))))).x)))));
    return global0.c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 8>();
    var var_0 = func_6(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_5(func_1(), Struct_5(Struct_4(u_input.c, vec4<f32>(147f, global0.c.b, -460f, 168f), Struct_2(1i, global0.c.b)), -global2[_wgslsmith_index_u32(24369u, 8u)], _wgslsmith_div_vec3_u32(vec3<u32>(7994u, u_input.d.x, 0u), vec3<u32>(u_input.d.x, 0u, u_input.d.x)), Struct_1(u_input.c, -987f, global0.b, global0.b, vec2<f32>(-775f, global0.c.b))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, global0.c.b, 1064f, global0.c.b) + vec4<f32>(1317f, global0.c.b, global0.c.b, global0.c.b)) * global0.b))));
    let var_1 = min(~(-(reverseBits(vec3<i32>(-7262i, 36578i, u_input.a)) & vec3<i32>(1i, global0.c.a, -31893i))), vec3<i32>(min((global2[_wgslsmith_index_u32(u_input.b.x, 8u)] << (global0.a % 32u)) >> (u_input.d.x % 32u), -53209i), -4008i, 7975i));
    global0 = Struct_4(select(global0.a, max(1u, ~1u), !all(vec2<bool>(false, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1963f, 1848f, var_0.b, global0.b.x), global0.b, vec4<bool>(false, false, true, false))))))), Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(u_input.a), abs(-1i), _wgslsmith_add_i32(-1i, 2147483647i), var_1.x), vec4<i32>(global0.c.a, var_0.a, ~global0.c.a, global0.c.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1104f) * global0.c.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b))))));
    var var_2 = global0.b;
    global0 = Struct_4(35488u, global0.b, Struct_2(~(-2055i), func_2(_wgslsmith_mod_i32(global0.c.a, ~60334i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -299f))).e.x));
    var var_3 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_1.zz), ~_wgslsmith_clamp_u32(global0.a, 4294967295u, _wgslsmith_sub_u32(select(global0.a, 33239u, true), 0u)), ~u_input.d.wy, _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(~0u, 1u), global0.a, 10943u), u_input.d.yxz), 12880i);
}

