struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<bool>(false, true, false), vec4<bool>(true, true, true, true)), Struct_1(vec3<bool>(false, false, true), vec4<bool>(true, false, false, false)), Struct_1(vec3<bool>(true, true, true), vec4<bool>(false, false, true, true)), Struct_1(vec3<bool>(false, false, true), vec4<bool>(false, true, true, false)), Struct_1(vec3<bool>(true, true, false), vec4<bool>(false, false, true, false)), Struct_1(vec3<bool>(true, true, true), vec4<bool>(true, false, true, true)), Struct_1(vec3<bool>(true, true, true), vec4<bool>(false, true, false, true)), Struct_1(vec3<bool>(false, false, false), vec4<bool>(false, false, true, false)), Struct_1(vec3<bool>(true, false, false), vec4<bool>(false, false, true, false)), Struct_1(vec3<bool>(false, true, true), vec4<bool>(false, false, false, true)), Struct_1(vec3<bool>(false, false, true), vec4<bool>(true, true, true, true)), Struct_1(vec3<bool>(true, true, true), vec4<bool>(true, false, true, true)), Struct_1(vec3<bool>(false, false, false), vec4<bool>(false, false, false, true)), Struct_1(vec3<bool>(false, false, true), vec4<bool>(true, false, false, true)), Struct_1(vec3<bool>(false, true, false), vec4<bool>(true, false, false, true)), Struct_1(vec3<bool>(false, false, true), vec4<bool>(true, false, true, false)), Struct_1(vec3<bool>(true, true, true), vec4<bool>(false, true, true, true)), Struct_1(vec3<bool>(true, false, true), vec4<bool>(false, false, false, true)), Struct_1(vec3<bool>(false, true, true), vec4<bool>(true, false, true, false)), Struct_1(vec3<bool>(false, false, true), vec4<bool>(false, true, false, false)), Struct_1(vec3<bool>(false, true, false), vec4<bool>(true, true, false, false)), Struct_1(vec3<bool>(false, false, true), vec4<bool>(false, true, false, true)), Struct_1(vec3<bool>(false, true, false), vec4<bool>(true, true, true, true)), Struct_1(vec3<bool>(false, false, true), vec4<bool>(true, false, false, true)), Struct_1(vec3<bool>(false, true, true), vec4<bool>(true, false, false, true)), Struct_1(vec3<bool>(false, true, true), vec4<bool>(true, true, true, true)), Struct_1(vec3<bool>(true, true, true), vec4<bool>(false, false, true, true)), Struct_1(vec3<bool>(false, true, false), vec4<bool>(false, false, true, false)), Struct_1(vec3<bool>(false, false, false), vec4<bool>(true, true, false, false)), Struct_1(vec3<bool>(true, false, false), vec4<bool>(true, true, false, false)), Struct_1(vec3<bool>(false, false, true), vec4<bool>(true, true, false, false)));

var<private> global1: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(1u, 89001u, 0u), vec3<u32>(4294967295u, 42705u, 0u), vec3<u32>(0u, 95215u, 15602u), vec3<u32>(22241u, 31375u, 56843u), vec3<u32>(1u, 1u, 8294u), vec3<u32>(98423u, 2776u, 0u), vec3<u32>(51786u, 20067u, 12579u), vec3<u32>(0u, 13508u, 0u), vec3<u32>(2291u, 1u, 0u), vec3<u32>(22728u, 53237u, 60184u), vec3<u32>(4294967295u, 8123u, 0u), vec3<u32>(4294967295u, 0u, 16375u), vec3<u32>(0u, 69839u, 0u), vec3<u32>(0u, 1u, 0u), vec3<u32>(88395u, 39686u, 53409u), vec3<u32>(4438u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 0u, 1327u), vec3<u32>(0u, 1u, 1u), vec3<u32>(0u, 0u, 38891u), vec3<u32>(15179u, 21172u, 4294967295u), vec3<u32>(10049u, 77845u, 26072u), vec3<u32>(0u, 43291u, 4294967295u), vec3<u32>(4294967295u, 17741u, 11363u), vec3<u32>(1u, 16385u, 63685u), vec3<u32>(1u, 4294967295u, 68088u), vec3<u32>(1u, 19829u, 68409u));

var<private> global2: array<f32, 24> = array<f32, 24>(714f, -1000f, -868f, -986f, 1072f, 1001f, 757f, 1176f, 1647f, 1635f, -266f, -1085f, 1000f, -1210f, 2477f, 1034f, -988f, -1785f, -1799f, -305f, -1000f, 617f, 558f, 357f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: f32) -> bool {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(min(-272f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-538f)), _wgslsmith_f_op_f32(f32(-1f) * -1192f))), -1839f, any(vec4<bool>(false, false, false, true)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(15833u, 24u)]))));
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(-1i, 39079i) ^ _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(35997i, 35534i, 1i, -1i), vec4<i32>(u_input.b, -82521i, -2147483647i, 7184i)), vec4<i32>(31045i ^ arg_1.x, _wgslsmith_dot_vec2_i32(arg_1.xx, arg_1.xy), _wgslsmith_sub_i32(-67455i, arg_1.x), arg_1.x)), 2147483647i);
    var var_2 = ~global1[_wgslsmith_index_u32(~max(24809u, arg_0), 26u)];
    let var_3 = _wgslsmith_div_f32(global2[_wgslsmith_index_u32(countOneBits(firstLeadingBit(arg_0)), 24u)], global2[_wgslsmith_index_u32(1u, 24u)]);
    var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(644f, _wgslsmith_f_op_f32(1000f - arg_2)), vec2<f32>(928f, -1783f), !select(vec2<bool>(any(vec4<bool>(true, false, false, false)), select(true, false, true)), vec2<bool>(true, true), true)));
    return any(!(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false))));
}

fn func_2(arg_0: vec2<bool>) -> vec3<bool> {
    global2 = array<f32, 24>();
    var var_0 = vec4<bool>(true, global2[_wgslsmith_index_u32(~u_input.a, 24u)] < _wgslsmith_f_op_f32(trunc(118f)), arg_0.x, false);
    let var_1 = var_0.x;
    let var_2 = abs(u_input.b);
    global1 = array<vec3<u32>, 26>();
    return vec3<bool>(false, var_2 < firstTrailingBit(u_input.b), select(arg_0.x || any(select(vec2<bool>(true, false), arg_0, false)), func_3(~u_input.a, vec3<i32>(-1144i, u_input.b, 1i), _wgslsmith_f_op_f32(f32(-1f) * -1438f)) | false, all(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, arg_0.x), vec4<bool>(true, var_0.x, arg_0.x, var_0.x), var_0.x))));
}

fn func_4(arg_0: vec3<bool>) -> u32 {
    var var_0 = -(-28144i ^ (-1i >> (u_input.a % 32u)));
    var var_1 = false;
    var_0 = u_input.b;
    global1 = array<vec3<u32>, 26>();
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(u_input.a, 1u, u_input.a)), 24u)]) * global2[_wgslsmith_index_u32(0u << (min(_wgslsmith_dot_vec4_u32(vec4<u32>(43823u, 1u, 1u, 91062u), vec4<u32>(u_input.a, u_input.a, 15859u, 0u)), 8143u) % 32u), 24u)]) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(35198u, 24u)]) * -1054f);
    return _wgslsmith_dot_vec4_u32(min(min(~firstTrailingBit(vec4<u32>(0u, u_input.a, u_input.a, 29086u)), vec4<u32>(~1u, 69937u, u_input.a, 0u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, 16303u) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u), vec4<u32>(u_input.a, u_input.a, 105488u, 52219u)) % vec4<u32>(32u)), ~(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) | vec4<u32>(11767u, 4294967295u, u_input.a, u_input.a)))), ~vec4<u32>(~(~0u), u_input.a, countOneBits(u_input.a), _wgslsmith_div_u32(u_input.a, 65258u)));
}

fn func_1() -> vec4<f32> {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~(u_input.a & 46366u), func_4(select(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(global2[_wgslsmith_index_u32(32177u, 24u)] >= 136f, true, true), func_2(vec2<bool>(true, true))))), 24u)];
    let var_1 = Struct_1(func_2(select(func_2(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))).zx, vec2<bool>(u_input.b != 33267i, func_3(u_input.a, vec3<i32>(-1i, u_input.b, 862i), 231f)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 2147483647i, -48944i), vec3<i32>(u_input.b, u_input.b, u_input.b)) > u_input.b)), vec4<bool>(true, 4294967295u <= u_input.a, -1i == _wgslsmith_div_i32(~u_input.b, u_input.b), select(-u_input.b > u_input.b, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(26900u, 24u)] * global2[_wgslsmith_index_u32(74724u, 24u)]) < _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(u_input.a, 24u)], global2[_wgslsmith_index_u32(u_input.a, 24u)])), func_3(_wgslsmith_div_u32(u_input.a, 0u), vec3<i32>(u_input.b, u_input.b, u_input.b) | vec3<i32>(u_input.b, -1i, -1i), _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(55228u, 24u)]))))));
    let var_2 = Struct_1(var_1.b.zyy, var_1.b);
    global0 = array<Struct_1, 31>();
    var var_3 = _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~(~u_input.a), 1u, 0u, 1u), select(vec4<u32>(u_input.a, 15777u, u_input.a, u_input.a), vec4<u32>(10236u, 15546u, u_input.a, 15869u) >> (vec4<u32>(u_input.a, 5740u, 0u, 35823u) % vec4<u32>(32u)), true) >> (vec4<u32>(0u, ~4294967295u, u_input.a & 28856u, ~0u) % vec4<u32>(32u))), 24u)]);
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(55953u & u_input.a, 24u)], _wgslsmith_f_op_f32(-1279f + global2[_wgslsmith_index_u32(u_input.a, 24u)]))))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(216u, 24u)], global2[_wgslsmith_index_u32(u_input.a, 24u)]))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(277f, global2[_wgslsmith_index_u32(66965u, 24u)]), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, 4294967295u), 24u)])) + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(24149u, 24u)])) + _wgslsmith_f_op_f32(select(270f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(0u, 24u)], global2[_wgslsmith_index_u32(u_input.a, 24u)])), global2[_wgslsmith_index_u32(~u_input.a, 24u)] >= _wgslsmith_f_op_f32(-515f * global2[_wgslsmith_index_u32(0u, 24u)])))), _wgslsmith_f_op_f32(f32(-1f) * -1111f), 441f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<i32>(u_input.b, firstLeadingBit(abs(u_input.b << (19917u % 32u))), _wgslsmith_clamp_i32(1i, abs(u_input.b | 1i), -(u_input.b | -2878i)), -u_input.b);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1()));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(118f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(27491u, 24u)] - -716f) + var_1.x)))));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-300f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(69568u, 24u)]), _wgslsmith_f_op_f32(var_1.x + 1881f)))));
    let var_3 = var_1;
    global2 = array<f32, 24>();
    global2 = array<f32, 24>();
    var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 24u)]))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(456f - 678f) + _wgslsmith_f_op_f32(879f * -686f)))), _wgslsmith_f_op_f32(select(-1300f, 1000f, true))));
    var var_4 = !func_2(func_2(vec2<bool>(true, true)).zy);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~u_input.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_1))))));
}

