struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec4<f32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 8>;

var<private> global1: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec3<i32>(26007i, 15053i, 2147483647i), -2652f), Struct_2(vec3<i32>(11441i, -41908i, -14933i), 1000f), Struct_2(vec3<i32>(i32(-2147483648), 0i, 2147483647i), 543f), Struct_2(vec3<i32>(3266i, 11302i, 45545i), -1674f), Struct_2(vec3<i32>(1i, 10102i, -1i), 1542f), Struct_2(vec3<i32>(-21684i, i32(-2147483648), -99917i), -137f), Struct_2(vec3<i32>(0i, i32(-2147483648), 2147483647i), 2145f), Struct_2(vec3<i32>(2147483647i, -13514i, 1i), -789f), Struct_2(vec3<i32>(-74585i, -12395i, 27660i), 244f), Struct_2(vec3<i32>(5330i, 10145i, 1i), -803f), Struct_2(vec3<i32>(-29912i, 18749i, i32(-2147483648)), -1123f), Struct_2(vec3<i32>(i32(-2147483648), 18830i, 1i), 508f), Struct_2(vec3<i32>(19758i, -17254i, -2985i), -1530f), Struct_2(vec3<i32>(17469i, -1823i, -16777i), -770f), Struct_2(vec3<i32>(5849i, 0i, -12748i), 780f), Struct_2(vec3<i32>(1i, 44160i, -34499i), 1000f), Struct_2(vec3<i32>(2147483647i, 2147483647i, -1i), 580f), Struct_2(vec3<i32>(-27724i, i32(-2147483648), 0i), -370f), Struct_2(vec3<i32>(7577i, -5212i, i32(-2147483648)), -1282f), Struct_2(vec3<i32>(-40139i, 22091i, 60512i), 387f), Struct_2(vec3<i32>(-72520i, 39314i, -3095i), 1920f), Struct_2(vec3<i32>(1i, 2147483647i, -6199i), 1368f), Struct_2(vec3<i32>(37786i, -16935i, -39647i), 1339f), Struct_2(vec3<i32>(-12018i, i32(-2147483648), -34352i), -574f), Struct_2(vec3<i32>(-68088i, -1i, -8054i), -1859f), Struct_2(vec3<i32>(33515i, -1i, -7172i), 198f), Struct_2(vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), 1126f), Struct_2(vec3<i32>(i32(-2147483648), 7832i, -56535i), 1000f), Struct_2(vec3<i32>(2147483647i, 2147483647i, -27982i), 677f), Struct_2(vec3<i32>(-7514i, 17214i, 2147483647i), 2083f), Struct_2(vec3<i32>(20352i, -2153i, 0i), 741f));

var<private> global2: Struct_3 = Struct_3(vec2<bool>(true, true), vec3<bool>(true, false, false), vec4<f32>(1232f, -128f, 376f, 847f), 1u);

var<private> global3: vec3<u32>;

var<private> global4: vec3<u32> = vec3<u32>(11898u, 1u, 14750u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: bool) -> vec3<f32> {
    global0 = array<vec3<u32>, 8>();
    global1 = array<Struct_2, 31>();
    var var_0 = vec2<f32>(485f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.x) * _wgslsmith_f_op_f32(step(global2.c.x, -704f))), _wgslsmith_f_op_f32(-arg_0.c.x)))));
    var_0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(515f))))), _wgslsmith_f_op_f32(floor(-857f)))));
    var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-272f, -1000f) + global2.c.xz)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1972f, -247f)))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.c.zw, arg_0.c.yx), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), global2.c.x) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(-284f, arg_0.c.x), vec2<f32>(-226f, var_0.x)))))), vec2<bool>(arg_1, false)));
    return _wgslsmith_f_op_vec3_f32(global2.c.xxw - global2.c.xzx);
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: bool, arg_3: i32) -> vec4<f32> {
    let var_0 = Struct_1(global2.b.zx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(774f)), global2.c.x, _wgslsmith_f_op_f32(global2.c.x * _wgslsmith_f_op_f32(floor(global2.c.x))))), select(!vec3<bool>(u_input.a <= 42171i, arg_2, true), vec3<bool>(global2.b.x, arg_2, (false && global2.a.x) && global2.b.x), !(!(!vec3<bool>(true, arg_2, arg_2)))));
    let var_1 = Struct_1(!select(select(select(global2.b.zz, vec2<bool>(global2.a.x, var_0.c.x), var_0.a), !vec2<bool>(arg_2, false), global2.b.yy), select(global2.a, global2.a, select(vec2<bool>(true, arg_2), global2.a, vec2<bool>(false, false))), select(var_0.c.yy, global2.a, vec2<bool>(global2.a.x, true))), _wgslsmith_f_op_vec3_f32(max(var_0.b, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2.c.x, var_0.b.x, var_0.b.x))))))), !vec3<bool>(var_0.a.x, arg_2, true));
    var var_2 = vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(2147483647i, u_input.a), select(-23889i, u_input.a, arg_2)) >> (arg_1 % 32u), -2147483647i) ^ vec2<i32>(u_input.a, arg_3);
    return global2.c;
}

fn func_2(arg_0: f32) -> StorageBuffer {
    let var_0 = Struct_3(global2.a, global2.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_3(max(0i, 1i), ~global2.d, true, u_input.a)), _wgslsmith_f_op_vec4_f32(abs(global2.c)))), _wgslsmith_f_op_vec4_f32(max(global2.c, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(global2.c, global2.c), _wgslsmith_f_op_vec4_f32(global2.c * vec4<f32>(-324f, arg_0, -760f, 430f))))))), ~(~74675u));
    global3 = global0[_wgslsmith_index_u32(global2.d, 8u)];
    global1 = array<Struct_2, 31>();
    var var_1 = Struct_2(-_wgslsmith_clamp_vec3_i32(~countOneBits(vec3<i32>(8711i, u_input.a, u_input.a)), -select(vec3<i32>(58788i, u_input.a, u_input.a), vec3<i32>(u_input.a, -36121i, u_input.a), vec3<bool>(true, var_0.a.x, global2.a.x)), firstTrailingBit(-vec3<i32>(-1i, -1i, -19243i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-171f))));
    global1 = array<Struct_2, 31>();
    return StorageBuffer(var_1.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.x, -196f, var_0.c.x, var_1.b)), vec4<f32>(var_1.b, arg_0, -376f, 233f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, global2.c.x, global2.c.x, var_0.c.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(855f, global2.c.x, global2.c.x, var_0.c.x))))), vec4<f32>(_wgslsmith_f_op_f32(-534f + -548f), global2.c.x, _wgslsmith_f_op_f32(-arg_0), -827f))), _wgslsmith_sub_vec3_u32(vec3<u32>(108306u, 48591u, 1u), ~max(vec3<u32>(36883u, var_0.d, 21829u), global0[_wgslsmith_index_u32(global3.x, 8u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 8>();
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_3(!vec2<bool>(global2.a.x, true), global2.b, global2.c, ~1u), false, select(global2.a.x, all(vec3<bool>(false, false, true)), global2.a.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(global2.c.zwz, vec3<f32>(-568f, 618f, 354f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global2.c.xyw, _wgslsmith_div_vec3_f32(global2.c.yww, global2.c.zxx)) + _wgslsmith_f_op_vec3_f32(global2.c.zzx - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.x, 529f, -1634f))))), select(!global2.b, global2.b, global2.b.x)));
    let var_1 = ~(~(-1i));
    let var_2 = global2.b.xy;
    var var_3 = _wgslsmith_sub_vec4_i32(~(-select(_wgslsmith_div_vec4_i32(vec4<i32>(var_1, 15507i, u_input.a, u_input.a), vec4<i32>(var_1, -2147483647i, 30800i, u_input.a)), vec4<i32>(-1i, var_1, -2147483647i, -12118i) << (vec4<u32>(0u, global2.d, global2.d, 16056u) % vec4<u32>(32u)), all(vec3<bool>(false, global2.b.x, false)))), max(_wgslsmith_div_vec4_i32((vec4<i32>(-26882i, 52154i, var_1, -1004i) & vec4<i32>(u_input.a, 8740i, -2147483647i, -734i)) | vec4<i32>(28008i, var_1, u_input.a, var_1), vec4<i32>(u_input.a, _wgslsmith_div_i32(var_1, u_input.a), -19029i, u_input.a)), reverseBits(abs(vec4<i32>(u_input.a, 9825i, -9468i, var_1)))));
    global1 = array<Struct_2, 31>();
    let var_4 = global4.xz;
    let var_5 = vec4<i32>(_wgslsmith_dot_vec4_i32(abs(countOneBits(vec4<i32>(var_3.x, var_1, u_input.a, var_1))), -_wgslsmith_sub_vec4_i32(-vec4<i32>(-13505i, -1i, var_1, u_input.a), select(vec4<i32>(var_1, var_3.x, var_3.x, var_3.x), vec4<i32>(var_1, u_input.a, u_input.a, u_input.a), var_2.x))), ~_wgslsmith_dot_vec3_i32(var_3.zyx, ~_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -2147483647i, -1i), vec3<i32>(var_1, 7333i, 44763i), var_3.wxz)), _wgslsmith_dot_vec2_i32(var_3.zw, abs(vec2<i32>(47112i, _wgslsmith_dot_vec3_i32(var_3.xyx, vec3<i32>(var_3.x, -33391i, var_3.x))))), reverseBits(-(~select(-33425i, 2147483647i, global2.a.x))));
    let var_6 = Struct_2(-var_5.yyx, var_0.x);
    let x = u_input.a;
    s_output = func_2(var_0.x);
}

