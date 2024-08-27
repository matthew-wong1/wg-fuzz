struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: u32,
    d: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: Struct_2,
    d: Struct_3,
    e: bool,
}

struct Struct_5 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_1, 24>;

var<private> global2: array<bool, 18>;

var<private> global3: vec2<u32>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_5) -> u32 {
    global2 = array<bool, 18>();
    global0 = ~abs(reverseBits(vec4<u32>(arg_0.b, ~684u, _wgslsmith_mod_u32(1u, global3.x), 0u)));
    var var_0 = Struct_3(any(vec4<bool>(true, arg_0.c.b, arg_1.c.b, false)), Struct_2(_wgslsmith_f_op_f32(443f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), firstTrailingBit(arg_1.a.x)), global0.x, u_input.c);
    global1 = array<Struct_1, 24>();
    var var_1 = _wgslsmith_div_i32(1i, -arg_1.a.x & (0i ^ _wgslsmith_div_i32(max(u_input.a, -26967i), _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(1i, var_0.b.b, u_input.c.x, u_input.d)))));
    return ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.x, 83155u) << (~global0.yxx % vec3<u32>(32u)), global0.wyy) >> (abs(abs(global0.x)) % 32u);
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -281f);
    var var_2 = Struct_4(u_input.c.x, select(vec4<bool>(false, any(vec3<bool>(global2[_wgslsmith_index_u32(global0.x, 18u)], global2[_wgslsmith_index_u32(global3.x, 18u)], var_0)) & false, var_0, true), select(!vec4<bool>(var_0, false, false, true), select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 18u)], true, false, true), vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(global0.x, 18u)]), 2147483647i < u_input.c.x), all(!vec3<bool>(true, var_0, global2[_wgslsmith_index_u32(0u, 18u)]))), true), Struct_2(629f, ~(-14725i)), Struct_3(max(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global3.x, global0.x, global0.x), vec4<u32>(4294967295u, 1u, global3.x, 0u)), _wgslsmith_dot_vec2_u32(global0.xw, vec2<u32>(1u, 0u))) < ~38017u, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), -6073i), global0.x, u_input.c), global3.x == (firstTrailingBit(_wgslsmith_mod_u32(global0.x, 12197u)) ^ _wgslsmith_sub_u32(func_3(Struct_5(vec3<i32>(u_input.b, -16315i, 2147483647i), 1517u, Struct_1(vec2<f32>(var_1, var_1), false)), Struct_5(vec3<i32>(u_input.a, 46253i, u_input.c.x), 20154u, global1[_wgslsmith_index_u32(0u, 24u)])), firstLeadingBit(global3.x))));
    let var_3 = abs(~_wgslsmith_mult_vec3_u32(~global0.zzx, vec3<u32>(1u, 4294967295u, global3.x) | vec3<u32>(1u, global3.x, 24105u)));
    let var_4 = Struct_5(_wgslsmith_mult_vec3_i32(-(vec3<i32>(u_input.d, 13838i, u_input.c.x) << (vec3<u32>(var_2.d.c, var_2.d.c, 1u) % vec3<u32>(32u))) ^ min(-vec3<i32>(var_2.d.d.x, -2147483647i, var_2.c.b), u_input.c.xyx), _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.c.xzy, vec3<i32>(16282i, u_input.c.x, u_input.c.x) ^ u_input.c.yzx), u_input.c.xyy, var_2.d.d.wzy)), min(0u, 45708u), Struct_1(vec2<f32>(-629f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1205f * 950f) - _wgslsmith_f_op_f32(-arg_0))), false));
    return abs(_wgslsmith_dot_vec3_u32(var_3 << (min(_wgslsmith_mult_vec3_u32(var_3, vec3<u32>(17134u, 4294967295u, global3.x)), ~var_3) % vec3<u32>(32u)), var_3));
}

fn func_1() -> Struct_5 {
    global2 = array<bool, 18>();
    global0 = countOneBits(vec4<u32>(_wgslsmith_clamp_u32(select(1u, ~global0.x, false & global2[_wgslsmith_index_u32(4294967295u, 18u)]), firstLeadingBit(114957u), func_2(_wgslsmith_f_op_f32(-2502f * 1000f))), abs(_wgslsmith_dot_vec3_u32(min(global0.xyx, global0.zwx), global0.xyw & global0.yww)), countOneBits(abs(func_3(Struct_5(u_input.c.yzy, 33253u, Struct_1(vec2<f32>(-596f, -995f), global2[_wgslsmith_index_u32(1u, 18u)])), Struct_5(vec3<i32>(u_input.d, u_input.b, u_input.b), global3.x, Struct_1(vec2<f32>(-375f, 1411f), true))))), 0u));
    global0 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_div_u32(4294967295u << (global0.x % 32u), ~global0.x), _wgslsmith_sub_u32(~global0.x, ~global3.x), 27666u, ~firstTrailingBit(global0.x)), ~(countOneBits(vec4<u32>(global3.x, global0.x, 4294967295u, global3.x)) << (~vec4<u32>(0u, global3.x, 14203u, global0.x) % vec4<u32>(32u)))) >> (firstLeadingBit(select(~(vec4<u32>(global0.x, global3.x, 7862u, global0.x) << (vec4<u32>(1u, 15130u, global3.x, global0.x) % vec4<u32>(32u))), vec4<u32>(global3.x, global3.x, 0u, global0.x), any(select(vec2<bool>(global2[_wgslsmith_index_u32(global0.x, 18u)], true), vec2<bool>(global2[_wgslsmith_index_u32(global0.x, 18u)], false), global2[_wgslsmith_index_u32(global3.x, 18u)])))) % vec4<u32>(32u));
    var var_0 = Struct_3(all(select(!(!vec3<bool>(global2[_wgslsmith_index_u32(81131u, 18u)], global2[_wgslsmith_index_u32(global3.x, 18u)], false)), !select(vec3<bool>(global2[_wgslsmith_index_u32(10300u, 18u)], global2[_wgslsmith_index_u32(98613u, 18u)], true), vec3<bool>(false, false, global2[_wgslsmith_index_u32(4622u, 18u)]), vec3<bool>(global2[_wgslsmith_index_u32(1u, 18u)], global2[_wgslsmith_index_u32(global0.x, 18u)], true)), !all(vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 18u)], global2[_wgslsmith_index_u32(4294967295u, 18u)], global2[_wgslsmith_index_u32(global0.x, 18u)])))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-448f, -266f)) + _wgslsmith_f_op_f32(521f * _wgslsmith_f_op_f32(sign(479f)))), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.c.wwy, u_input.c.wyz), u_input.c.yxz)), _wgslsmith_div_u32(1u, firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(60493u, 21725u, 4294967295u, 2087u), vec4<u32>(global3.x, 0u, 56519u, 35793u)) << (33248u % 32u))), _wgslsmith_sub_vec4_i32(abs(-vec4<i32>(-2147483647i, u_input.b, u_input.c.x, 2147483647i)), vec4<i32>(-11749i, _wgslsmith_dot_vec2_i32(u_input.c.yx, vec2<i32>(2147483647i, -1i)), (u_input.d << (1u % 32u)) >> ((global3.x >> (global3.x % 32u)) % 32u), u_input.a)));
    var var_1 = 72280u;
    return Struct_5(u_input.c.zzx, abs(global0.x), Struct_1(vec2<f32>(var_0.b.a, var_0.b.a), _wgslsmith_mod_u32(~69709u, global0.x) >= 52465u));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_5, arg_2: vec4<i32>) -> Struct_5 {
    let var_0 = Struct_2(-544f, ~select(2209i, abs(-u_input.d), all(!vec4<bool>(true, false, arg_1.c.b, arg_1.c.b))));
    global0 = vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.b << (global0.x % 32u), 1u, 4294967295u, global3.x), max(_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, 4294967295u, global3.x, 16459u), vec4<u32>(0u, 10137u, arg_1.b, 1u)), ~vec4<u32>(global0.x, 19446u, arg_1.b, arg_1.b)) & select(~vec4<u32>(global3.x, arg_1.b, global3.x, global0.x), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, global3.x, global3.x), vec4<u32>(global3.x, 3842u, arg_1.b, global3.x)), true)), ~_wgslsmith_div_u32(~(~global3.x), arg_1.b), reverseBits(global0.x), _wgslsmith_dot_vec3_u32(abs(abs(select(global0.wwy, vec3<u32>(1u, 3156u, 4294967295u), true))), global0.xxz));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.a, 363f))));
    let var_2 = global0.x;
    let var_3 = abs(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, arg_1.a.x), _wgslsmith_clamp_vec2_i32(u_input.c.xy, -(~arg_2.yx), -countOneBits(arg_1.a.zz))));
    return arg_1;
}

fn func_5(arg_0: vec4<f32>, arg_1: u32, arg_2: f32, arg_3: Struct_5) -> f32 {
    var var_0 = Struct_3(global2[_wgslsmith_index_u32(4294967295u, 18u)] & (!(!global2[_wgslsmith_index_u32(15483u, 18u)]) && true), Struct_2(_wgslsmith_f_op_f32(-529f * _wgslsmith_f_op_f32(max(-1886f, arg_3.c.a.x))), _wgslsmith_mod_i32(~_wgslsmith_div_i32(u_input.d, arg_3.a.x), u_input.c.x)), 0u, _wgslsmith_sub_vec4_i32((u_input.c & u_input.c) | -u_input.c, _wgslsmith_clamp_vec4_i32(~vec4<i32>(-31487i, 2147483647i, arg_3.a.x, -25110i), -vec4<i32>(-10609i, 2147483647i, 0i, 64800i), vec4<i32>(arg_3.a.x, -30459i, u_input.a, 2147483647i))) & vec4<i32>(arg_3.a.x, u_input.c.x | ~1i, u_input.b, -2147483647i));
    var_0 = Struct_3(any(select(vec3<bool>(true, true, !global2[_wgslsmith_index_u32(4294967295u, 18u)]), vec3<bool>(func_1().c.b, true, any(vec2<bool>(true, true))), select(select(vec3<bool>(global2[_wgslsmith_index_u32(global0.x, 18u)], arg_3.c.b, global2[_wgslsmith_index_u32(53941u, 18u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 18u)], true), vec3<bool>(global2[_wgslsmith_index_u32(73347u, 18u)], false, false)), select(vec3<bool>(true, true, arg_3.c.b), vec3<bool>(global2[_wgslsmith_index_u32(arg_1, 18u)], true, false), vec3<bool>(var_0.a, false, var_0.a)), !vec3<bool>(true, global2[_wgslsmith_index_u32(arg_1, 18u)], global2[_wgslsmith_index_u32(var_0.c, 18u)])))), var_0.b, 0u & _wgslsmith_clamp_u32(~abs(global0.x), var_0.c, 1u >> (countOneBits(var_0.c) % 32u)), var_0.d);
    global2 = array<bool, 18>();
    var var_1 = arg_3;
    var var_2 = var_0.b;
    return _wgslsmith_f_op_f32(-406f - var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global2 = array<bool, 18>();
    var var_1 = vec2<bool>(!(!(!global2[_wgslsmith_index_u32(~6760u, 18u)])), true);
    var var_2 = global2[_wgslsmith_index_u32(global3.x, 18u)] | !(((u_input.c.x ^ 10155i) < min(u_input.b, 5277i)) & false);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -729f))), -730f));
    let var_4 = vec3<f32>(-463f, 1f, 1f);
    global2 = array<bool, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1530f, -1000f, var_4.x, -581f), vec4<f32>(var_4.x, var_3, 714f, var_4.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, var_3, var_4.x, var_4.x) - vec4<f32>(var_4.x, 322f, -1504f, -1612f))), _wgslsmith_mod_u32(~global3.x, global0.x), var_4.x, func_4(vec3<bool>(global2[_wgslsmith_index_u32(1u, 18u)], true, global2[_wgslsmith_index_u32(4294967295u, 18u)]), func_1(), max(u_input.c, u_input.c)))))), global0.xx, u_input.c, 256f, _wgslsmith_f_op_f32(f32(-1f) * -1958f));
}

