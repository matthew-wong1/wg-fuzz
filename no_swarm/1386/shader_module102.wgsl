struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26>;

var<private> global1: vec4<f32> = vec4<f32>(615f, -423f, 265f, -1571f);

var<private> global2: vec4<i32> = vec4<i32>(24979i, -38054i, -37524i, i32(-2147483648));

var<private> global3: array<vec4<f32>, 3> = array<vec4<f32>, 3>(vec4<f32>(463f, 1102f, 456f, 551f), vec4<f32>(-273f, -938f, -172f, 538f), vec4<f32>(-766f, -812f, 1386f, -444f));

var<private> global4: vec2<u32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: Struct_5) -> i32 {
    let var_0 = Struct_1(12109i, !arg_2.a.c.b, _wgslsmith_clamp_u32(~(~1u), ~(arg_2.a.b.c >> (global4.x % 32u)), firstLeadingBit(~1u)), 427f, vec3<f32>(global1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(892f - _wgslsmith_f_op_f32(select(arg_2.b.x, 1000f, arg_1.x))), arg_2.b.x)), global1.x));
    let var_1 = -1000f;
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(50819u, u_input.b), u_input.c.zx), 0u & var_0.c);
    let var_3 = Struct_3(var_0);
    let var_4 = u_input.c;
    return -61846i << (1u % 32u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec4<f32>) -> f32 {
    global4 = _wgslsmith_mult_vec2_u32(u_input.c.yy, vec2<u32>(arg_1.c, _wgslsmith_mod_u32(~4294967295u, ~_wgslsmith_mult_u32(5396u, arg_1.c))));
    var var_0 = !arg_1.b;
    let var_1 = Struct_3(Struct_1(-18514i, any(select(!vec4<bool>(arg_0.b, arg_0.b, arg_0.b, true), !vec4<bool>(arg_1.b, true, false, false), !vec4<bool>(arg_1.b, arg_1.b, arg_1.b, false))), arg_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.e.x - arg_3.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.e), arg_3.wzx) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-854f, arg_3.x, arg_3.x)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(369f, global1.x, arg_1.d)))))));
    var var_2 = -u_input.a.wwx;
    global3 = array<vec4<f32>, 3>();
    return global1.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: i32, arg_3: i32) -> vec2<u32> {
    var var_0 = Struct_3(Struct_1(reverseBits(i32(-1i) * -2147483647i), !arg_1.x, ~_wgslsmith_sub_u32(arg_0.x, ~global4.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) + _wgslsmith_f_op_f32(func_4(Struct_1(2147483647i, arg_1.x, 52456u, -1000f, global1.yzy), Struct_1(global2.x, true, 17604u, 1352f, vec3<f32>(global1.x, global1.x, global1.x)), func_3(vec4<bool>(arg_1.x, false, false, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, false, false), Struct_5(global0[_wgslsmith_index_u32(13250u, 26u)], global1.yx, false)), _wgslsmith_div_vec4_f32(global3[_wgslsmith_index_u32(0u, 3u)], global3[_wgslsmith_index_u32(0u, 3u)])))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1018f, global1.x, -142f), global1.xzy))), vec3<f32>(-1775f, _wgslsmith_f_op_f32(-global1.x), -247f), arg_1.x))));
    var var_1 = -48996i;
    global1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1114f + _wgslsmith_f_op_f32(f32(-1f) * -1652f)) + -697f), 1f, _wgslsmith_f_op_f32(func_4(var_0.a, Struct_1(global2.x, var_0.a.b, _wgslsmith_add_u32(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 1u), ~4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.d) * _wgslsmith_f_op_f32(-1507f * global1.x)), global1.wwx), _wgslsmith_mod_i32(firstLeadingBit(2147483647i) >> (0u % 32u), arg_2), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(u_input.b, 3u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a.d)))));
    let var_2 = _wgslsmith_mult_u32(~select(47557u, _wgslsmith_clamp_u32(u_input.b, global4.x | 483u, 1u), all(select(vec3<bool>(var_0.a.b, var_0.a.b, var_0.a.b), arg_1, vec3<bool>(arg_1.x, true, true)))), global4.x ^ 1u);
    let var_3 = Struct_4(2147483647i);
    return _wgslsmith_clamp_vec2_u32(~(~arg_0.zy >> (arg_0.yx % vec2<u32>(32u))), arg_0.zz, vec2<u32>(var_2, min(global4.x, _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(0u, 45308u, arg_0.x, var_2)))));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: Struct_1) -> Struct_5 {
    let var_0 = Struct_5(Struct_2(arg_3.c, Struct_1(arg_3.a, true, 48358u, global1.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_3.e + arg_1) + _wgslsmith_f_op_vec3_f32(arg_1 + global1.yxy))), Struct_1(countOneBits(-2042i), false, 1u >> (select(u_input.b, arg_3.c, arg_3.b) % 32u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -727f))), vec3<f32>(-665f, _wgslsmith_f_op_f32(-arg_3.d), arg_1.x)), _wgslsmith_f_op_vec3_f32(global1.zzz + vec3<f32>(global1.x, _wgslsmith_f_op_f32(-1256f + global1.x), _wgslsmith_f_op_f32(func_4(Struct_1(u_input.a.x, false, arg_3.c, 1000f, global1.xxx), arg_3, 3566i, global3[_wgslsmith_index_u32(0u, 3u)])))), _wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(-global1.x)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1169f * _wgslsmith_f_op_f32(arg_1.x - arg_3.d)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(754f)) + _wgslsmith_f_op_f32(f32(-1f) * -271f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.e.x), _wgslsmith_f_op_f32(global1.x + arg_1.x)))), any(vec4<bool>(arg_3.b & !arg_3.b, !arg_3.b, true & arg_3.b, arg_3.b)));
    var var_1 = Struct_3(var_0.a.b);
    let var_2 = global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_add_u32(arg_3.c, 63499u), u_input.b), 3u)];
    var var_3 = Struct_1(12009i, !any(vec3<bool>(arg_3.c >= u_input.b, all(vec4<bool>(false, var_1.a.b, arg_3.b, var_0.a.c.b)), any(vec4<bool>(false, false, true, false)))), ~(~4294967295u), _wgslsmith_f_op_f32(abs(1f)), vec3<f32>(arg_3.d, var_2.x, global1.x));
    var_1 = Struct_3(arg_3);
    return var_0;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: i32, arg_3: Struct_1) -> i32 {
    var var_0 = global2.zw;
    global4 = arg_0;
    var var_1 = Struct_3(Struct_1(~_wgslsmith_div_i32(-2147483647i, ~(-2147483647i)), true, _wgslsmith_dot_vec2_u32(u_input.c.zz | _wgslsmith_mult_vec2_u32(u_input.c.yy, arg_0), _wgslsmith_sub_vec2_u32(u_input.c.zx, arg_0)), 511f, arg_3.e));
    let var_2 = func_5(func_2(countOneBits(vec3<u32>(global4.x, arg_0.x, global4.x)), vec3<bool>(true, any(vec3<bool>(false, var_1.a.b, arg_3.b)), true), _wgslsmith_div_i32(1183i, ~0i), u_input.a.x) | arg_0, _wgslsmith_f_op_vec3_f32(var_1.a.e * var_1.a.e), Struct_4(-28204i), Struct_1(firstLeadingBit(var_1.a.a), true, _wgslsmith_mod_u32(1u, global4.x), _wgslsmith_f_op_f32(-arg_1.a.d), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_1.a.e * vec3<f32>(global1.x, -556f, -118f))))));
    let var_3 = ~var_2.a.a;
    return -firstTrailingBit(arg_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -vec4<i32>(func_1(u_input.c.ww, Struct_3(Struct_1(41757i, false, global4.x, global1.x, vec3<f32>(479f, global1.x, -850f))), _wgslsmith_mod_i32(u_input.a.x, -2147483647i), Struct_1(-68422i, false, u_input.c.x, -828f, vec3<f32>(1856f, global1.x, -786f))) << (0u % 32u), _wgslsmith_dot_vec3_i32(~firstTrailingBit(global2.wyy), global2.yyz), -2147483647i, ~max(u_input.a.x, 2147483647i) & _wgslsmith_mult_i32(-26042i, _wgslsmith_mod_i32(global2.x, u_input.a.x)));
    var var_0 = vec4<bool>(func_5(u_input.c.zy, _wgslsmith_f_op_vec3_f32(global1.xyx * global1.wyx), Struct_4(1i), Struct_1(abs(u_input.a.x), true, global4.x, -123f, global1.zzx)).c, false, !(true | any(select(vec2<bool>(true, true), vec2<bool>(false, false), true))), all(vec2<bool>(select(true, true, false), false)));
    global0 = array<Struct_2, 26>();
    var var_1 = func_5(_wgslsmith_add_vec2_u32(~(~u_input.c.ww ^ u_input.c.yz), countOneBits(u_input.c.xw | _wgslsmith_add_vec2_u32(u_input.c.yz, u_input.c.zw))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -910f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global1.x)))), _wgslsmith_div_f32(-102f, global1.x), !any(var_0.zxz))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), 449f)), Struct_4(_wgslsmith_dot_vec3_i32(~(~u_input.a.xxz), -_wgslsmith_add_vec3_i32(vec3<i32>(-19951i, -26353i, -2147483647i), global2.ywy))), Struct_1(u_input.a.x, func_5(vec2<u32>(reverseBits(global4.x), func_2(vec3<u32>(16514u, 4294967295u, 27114u), var_0.xyx, -35790i, global2.x).x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.zyx) + global1.wxx), Struct_4(firstTrailingBit(global2.x)), Struct_1(u_input.a.x, any(var_0.zy), ~global4.x, -1791f, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, -1795f, 550f))))).a.c.b, ~0u, -639f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, -2481f))))).a.c;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)), var_1.d, global1.x)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(161f + 2191f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(global1.x - global1.x)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(375f, var_1.e.x, 239f))), vec3<f32>(var_1.e.x, global1.x, global1.x))))) - var_1.e));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.e.x, -313f)), abs(_wgslsmith_mult_i32(1i, 2147483647i)));
}

