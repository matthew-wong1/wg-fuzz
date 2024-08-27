struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec4<bool>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 16> = array<vec3<i32>, 16>(vec3<i32>(40245i, -23528i, 55098i), vec3<i32>(-60178i, -15368i, 28116i), vec3<i32>(2147483647i, 1i, 2147483647i), vec3<i32>(6594i, -2112i, 3958i), vec3<i32>(-22795i, i32(-2147483648), 4615i), vec3<i32>(7124i, 47547i, 6599i), vec3<i32>(18710i, -21216i, 11399i), vec3<i32>(-33787i, -19876i, 0i), vec3<i32>(0i, -34064i, 2147483647i), vec3<i32>(-6441i, -35341i, -1i), vec3<i32>(1i, -20512i, 2147483647i), vec3<i32>(-1i, 0i, -18288i), vec3<i32>(15713i, 40729i, -25244i), vec3<i32>(2147483647i, 25552i, 2147483647i), vec3<i32>(2147483647i, 2147483647i, -69i), vec3<i32>(1i, -22446i, 36996i));

var<private> global1: array<f32, 29>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: u32) -> u32 {
    var var_0 = min(2147483647i, 31862i);
    global0 = array<vec3<i32>, 16>();
    var var_1 = _wgslsmith_mult_vec2_u32(abs(vec2<u32>(arg_2, arg_2)), vec2<u32>(0u >> ((arg_2 | 1u) % 32u), arg_2));
    var var_2 = -2147483647i;
    var_2 = i32(-1i) * -2147483647i;
    return abs(1126u);
}

fn func_3(arg_0: vec2<f32>) -> bool {
    var var_0 = arg_0.x <= 922f;
    var var_1 = _wgslsmith_dot_vec4_i32(select(max(_wgslsmith_mult_vec4_i32(u_input.a, u_input.a), vec4<i32>(firstTrailingBit(-32944i), abs(23010i), 1i, u_input.a.x | u_input.a.x)), vec4<i32>(firstLeadingBit(u_input.a.x), _wgslsmith_add_i32(u_input.a.x, _wgslsmith_div_i32(u_input.a.x, u_input.a.x)), u_input.a.x, u_input.a.x), select(vec4<bool>(true, true, any(vec2<bool>(true, false)), false), vec4<bool>(true, true, false, u_input.a.x != 2147483647i), vec4<bool>(true, true, true, true))), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(u_input.a, ~(vec4<i32>(u_input.a.x, -959i, u_input.a.x, 1i) | vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 36465i))), u_input.a));
    global0 = array<vec3<i32>, 16>();
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), global1[_wgslsmith_index_u32(4294967295u, 29u)]);
    let var_3 = u_input.a.wzy;
    return true;
}

fn func_1() -> vec2<f32> {
    var var_0 = 1u != (_wgslsmith_mod_u32(~_wgslsmith_div_u32(18471u, 1u), func_2(Struct_3(Struct_2(Struct_1(vec4<f32>(606f, 430f, -211f, 798f), vec2<f32>(1114f, -1111f), vec4<bool>(true, true, false, false), vec3<i32>(14373i, u_input.a.x, 48416i), true)), -2147483647i), vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 29u)], 323f, global1[_wgslsmith_index_u32(76513u, 29u)]), ~1u)) | func_2(Struct_3(Struct_2(Struct_1(vec4<f32>(1006f, global1[_wgslsmith_index_u32(23567u, 29u)], 250f, global1[_wgslsmith_index_u32(4294967295u, 29u)]), vec2<f32>(global1[_wgslsmith_index_u32(56749u, 29u)], 492f), vec4<bool>(false, true, false, true), u_input.a.xxz, true)), 1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(341f, 1334f, global1[_wgslsmith_index_u32(16325u, 29u)]), vec3<f32>(1132f, global1[_wgslsmith_index_u32(17394u, 29u)], 1087f)))), ~_wgslsmith_mult_u32(1u, 0u)));
    var_0 = all(vec2<bool>(all(vec3<bool>(true, all(vec3<bool>(false, true, true)), any(vec4<bool>(true, true, true, true)))), !func_3(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1[_wgslsmith_index_u32(1u, 29u)], -785f))))));
    var_0 = u_input.a.x >= 12252i;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1595f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 29u)]), global1[_wgslsmith_index_u32(~4294967295u, 29u)], _wgslsmith_f_op_f32(-878f * global1[_wgslsmith_index_u32(4294967295u, 29u)]))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(28895u, 29u)], global1[_wgslsmith_index_u32(17095u, 29u)]), vec2<f32>(global1[_wgslsmith_index_u32(133328u, 29u)], global1[_wgslsmith_index_u32(1u, 29u)]), vec2<bool>(false, true))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(808f, global1[_wgslsmith_index_u32(1u, 29u)]) - vec2<f32>(global1[_wgslsmith_index_u32(33072u, 29u)], global1[_wgslsmith_index_u32(45116u, 29u)])), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-953f, global1[_wgslsmith_index_u32(0u, 29u)]), vec2<f32>(global1[_wgslsmith_index_u32(296u, 29u)], global1[_wgslsmith_index_u32(66980u, 29u)]), vec2<bool>(false, false))))))), select(vec4<bool>(true, true, true, true), vec4<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true)), true, true, any(vec2<bool>(false, false))), !(!any(vec4<bool>(true, true, false, false)))), _wgslsmith_mult_vec3_i32(~(countOneBits(global0[_wgslsmith_index_u32(4294967295u, 16u)]) << (abs(vec3<u32>(11690u, 0u, 15168u)) % vec3<u32>(32u))), -_wgslsmith_add_vec3_i32(global0[_wgslsmith_index_u32(1u, 16u)], vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), true);
    global1 = array<f32, 29>();
    return vec2<f32>(var_1.a.x, -675f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(991f)), _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(~4294967295u, 29u)])), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(852f, global1[_wgslsmith_index_u32(1u, 29u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(683f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(42227u, 29u)])), global1[_wgslsmith_index_u32(69147u, 29u)]) * _wgslsmith_f_op_vec2_f32(func_1())), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1()))), true && (true | all(vec2<bool>(true, false))))), select(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(false, any(vec4<bool>(true, false, false, true)), any(vec2<bool>(true, true)), select(true, false, false)), vec4<bool>(true, true, true, select(any(vec3<bool>(false, false, false)), true, all(vec4<bool>(false, false, true, true))))), _wgslsmith_sub_vec3_i32(-(~u_input.a.xxx), -_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i) ^ vec3<i32>(u_input.a.x, u_input.a.x, 1i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), abs(vec3<i32>(u_input.a.x, 1i, -28383i)))), -387f <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 29u)])))));
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 29u)]), _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(57564u, 4294967295u), 29u)])), var_0.b.x, -873f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1676f, -371f) + var_0.a.zw) * _wgslsmith_f_op_vec2_f32(var_0.a.zy - vec2<f32>(global1[_wgslsmith_index_u32(75753u, 29u)], -207f))) * var_0.b) + _wgslsmith_div_vec2_f32(var_0.a.zw, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1[_wgslsmith_index_u32(21834u, 29u)], 1000f))))))), select(!select(var_0.c, vec4<bool>(var_0.e, var_0.c.x, false, var_0.c.x), true != var_0.e), vec4<bool>(var_0.e || true, any(var_0.c), true, true && (var_0.e || var_0.e)), vec4<bool>(_wgslsmith_div_f32(var_0.b.x, -1498f) != _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(69534u, 29u)]), true, true && var_0.e, var_0.c.x)), vec3<i32>(~max(~(-34741i), ~u_input.a.x), -18674i, ~(_wgslsmith_dot_vec2_i32(var_0.d.zz, var_0.d.yy) << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 33257u, 1u, 10781u), vec4<u32>(0u, 0u, 0u, 27531u)) % 32u))), any(select(select(var_0.c.xwy, vec3<bool>(var_0.e, true, false), vec3<bool>(true, var_0.c.x, var_0.e)), var_0.c.zyz, var_0.c.wzx)));
    let var_2 = Struct_3(Struct_2(var_1), u_input.a.x);
    let var_3 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, 1u, min(abs(0u), ~1u), _wgslsmith_clamp_u32(66253u, 2378u, 0u) << (~54106u % 32u)) >> (vec4<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, 40073u), vec2<u32>(38783u, 1u), vec2<bool>(var_1.c.x, var_2.a.a.e)), abs(vec2<u32>(4294967295u, 21708u))), abs(1u), 26447u, ~1u) % vec4<u32>(32u)), ~abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 20213u), vec2<u32>(22359u, 0u))), ~(~vec4<u32>(1u, 1u, 1u, 1u)), reverseBits(vec4<u32>(1u, 1u, 1u, 1u)));
}

