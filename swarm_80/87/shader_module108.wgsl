struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<u32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec2<f32>, 17>;

var<private> global2: bool = false;

var<private> global3: vec4<f32> = vec4<f32>(-2224f, -611f, 231f, 1000f);

var<private> global4: array<Struct_1, 30>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_1(vec2<bool>(global0.x, true), -_wgslsmith_add_i32(reverseBits(52819i), u_input.b) < u_input.c);
    global1 = array<vec2<f32>, 17>();
    global3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -520f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - global3.x) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-680f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3.x, global3.x)) + _wgslsmith_f_op_f32(-global3.x))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-650f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1566f))), any(!vec4<bool>(false, true, var_0.a.x, var_0.a.x))))), _wgslsmith_f_op_f32(exp2(global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global3.x, global3.x))), _wgslsmith_f_op_f32(ceil(-638f)), true))));
    let var_1 = Struct_2(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(~0u, countOneBits(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(48566u, 25795u), vec2<u32>(u_input.a, 11290u)), vec2<u32>(u_input.a, 152u) << (vec2<u32>(8780u, u_input.a) % vec2<u32>(32u))))), 30u)], ~abs(abs(vec4<u32>(4294967295u, u_input.a, 24847u, u_input.a))) & (vec4<u32>(~u_input.a, u_input.a, 47692u << (1u % 32u), u_input.a) >> (~min(vec4<u32>(4294967295u, 9650u, 23032u, 0u), vec4<u32>(7554u, 29215u, u_input.a, u_input.a)) % vec4<u32>(32u))), vec3<u32>(1u, u_input.a, u_input.a), global4[_wgslsmith_index_u32(u_input.a, 30u)], vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.c), vec2<i32>(-1i, 7007i)), u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(35876i, u_input.c), countOneBits(vec2<i32>(35393i, u_input.c)))) ^ vec2<i32>(1443i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.b, 1i, u_input.c), _wgslsmith_mod_i32(u_input.b, 2147483647i))));
    global2 = false;
    return var_1.b.xz;
}

fn func_2() -> vec2<u32> {
    return ~(~func_3());
}

fn func_1(arg_0: bool) -> Struct_3 {
    let var_0 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, ~u_input.a), func_2() & vec2<u32>(~4294967295u, countOneBits(u_input.a))), 28279u), 30u)];
    var var_1 = Struct_2(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~min(vec3<u32>(2370u, 110869u, u_input.a), vec3<u32>(78143u, 66022u, u_input.a)), select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 0u, 22731u), vec3<u32>(38951u, 4294967295u, 1u)), ~vec3<u32>(u_input.a, 24196u, 48965u), all(var_0.a))), ~max(vec3<u32>(u_input.a, 8870u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)) >> (vec3<u32>(abs(u_input.a), _wgslsmith_clamp_u32(22376u, u_input.a, u_input.a), 1u) % vec3<u32>(32u))), 30u)], _wgslsmith_mod_vec4_u32(firstLeadingBit(~vec4<u32>(4294967295u, 9216u, u_input.a, 38384u)) >> (vec4<u32>(84757u, u_input.a | 0u, 0u, u_input.a) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 1u, 3388u, u_input.a), countOneBits(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), ~(vec4<u32>(u_input.a, 0u, 4294967295u, 1856u) ^ vec4<u32>(4294967295u, 0u, u_input.a, u_input.a)), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, 125557u, u_input.a, u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(2103u, u_input.a, 39598u, u_input.a), vec4<u32>(54301u, 0u, 73803u, u_input.a))))), select(vec3<u32>(_wgslsmith_mult_u32(112474u, 0u), u_input.a >> (1u % 32u), ~u_input.a), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, _wgslsmith_sub_u32(1u, u_input.a), ~u_input.a), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(u_input.a, 0u, 0u))), !(!global0.x)), Struct_1(var_0.a, any(var_0.a) || false), vec2<i32>(u_input.c, min(-reverseBits(u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(35830i, 0i, u_input.c), -vec3<i32>(u_input.c, -1i, 44440i)))));
    let var_2 = var_1.e.x;
    var_1 = Struct_2(Struct_1(select(!vec2<bool>(global0.x, global0.x), var_1.d.a, u_input.a >= 0u), all(vec2<bool>(true, true))), vec4<u32>(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(var_1.b.xw, var_1.b.zx, vec2<u32>(var_1.c.x, u_input.a)), ~var_1.b.xy), select(50492u, ~(~19966u), var_1.c.x < u_input.a), select(firstLeadingBit(4294967295u), ~_wgslsmith_mult_u32(48284u, 43374u), all(vec4<bool>(var_0.b, true, arg_0, true))), 51128u), _wgslsmith_mult_vec3_u32(vec3<u32>(abs(1u), countOneBits(countOneBits(0u)), var_1.c.x), _wgslsmith_add_vec3_u32(var_1.c, abs(vec3<u32>(1u, 4294967295u, u_input.a)))), global4[_wgslsmith_index_u32(firstLeadingBit(~u_input.a), 30u)], vec2<i32>(firstLeadingBit(var_1.e.x), -(~var_1.e.x >> (var_1.c.x % 32u))));
    var var_3 = Struct_2(var_1.a, vec4<u32>(~var_1.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, var_1.c.x, 17438u) << (~vec4<u32>(43062u, u_input.a, 62004u, var_1.b.x) % vec4<u32>(32u)), vec4<u32>(max(var_1.c.x, 14354u), ~var_1.b.x, ~u_input.a, max(var_1.b.x, 0u))), u_input.a, 11202u), var_1.b.zyx, global4[_wgslsmith_index_u32(firstTrailingBit(func_2().x), 30u)], -var_1.e | var_1.e);
    return Struct_3(-_wgslsmith_div_i32(13389i, var_3.e.x), _wgslsmith_dot_vec2_u32(vec2<u32>(20968u, 19u) ^ ~var_3.b.wz, vec2<u32>(0u, 1u) & var_3.b.yy) >> (0u % 32u));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>) -> bool {
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1829f, -954f, -2060f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - _wgslsmith_f_op_f32(arg_1.x * -478f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1835f, global3.x, 981f, arg_1.x)), vec4<f32>(2118f, 1061f, 1210f, global3.x))))) * _wgslsmith_div_vec4_f32(vec4<f32>(global3.x, -1051f, 389f, _wgslsmith_f_op_f32(662f - global3.x)), vec4<f32>(global3.x, _wgslsmith_f_op_f32(-global3.x), -870f, _wgslsmith_f_op_f32(global3.x * global3.x)))));
    global3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-305f, global3.x, 798f, -917f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(820f, global3.x, 345f, 103f)))))))));
    var var_0 = all(vec4<bool>(true, true, all(select(!vec2<bool>(global0.x, global0.x), vec2<bool>(false, global0.x), !global0.x)), !any(select(vec2<bool>(false, true), vec2<bool>(global0.x, true), vec2<bool>(true, false)))));
    let var_1 = -1000f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1204f)), _wgslsmith_f_op_f32(-arg_1.x));
    var var_2 = vec2<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~abs(~vec3<u32>(u_input.a, arg_0.b, 1u))));
    return all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(select(vec2<bool>(false, var_1), vec2<bool>(true, global0.x), true))), vec2<bool>(_wgslsmith_f_op_f32(-772f + -668f) > _wgslsmith_f_op_f32(global3.x + arg_1.x), var_1), vec2<bool>(false || (0u < var_2.x), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(u_input.a, 30u)];
    let var_1 = Struct_2(Struct_1(vec2<bool>(var_0.b, func_4(func_1(false), _wgslsmith_f_op_vec2_f32(-global3.xw))), (true || (var_0.b | false)) || (-2302f <= global3.x)), vec4<u32>(4294967295u, u_input.a, ~0u, ~3517u), (~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 42343u, u_input.a), vec3<u32>(1u, u_input.a, u_input.a)) | vec3<u32>(_wgslsmith_mod_u32(u_input.a, 27601u), ~u_input.a, ~u_input.a)) << (~vec3<u32>(1u, 1u, 40016u) % vec3<u32>(32u)), global4[_wgslsmith_index_u32(~u_input.a, 30u)], vec2<i32>(-(~_wgslsmith_clamp_i32(u_input.c, u_input.c, u_input.c)), (_wgslsmith_add_i32(-18033i, u_input.c) << (10648u % 32u)) | firstTrailingBit(_wgslsmith_add_i32(u_input.c, u_input.b))));
    let var_2 = vec3<i32>(~(-47503i), 11885i, var_1.e.x);
    global1 = array<vec2<f32>, 17>();
    let var_3 = var_1.a;
    let var_4 = func_4(func_1(all(vec4<bool>(var_0.a.x, var_3.a.x, var_0.a.x, true))), global1[_wgslsmith_index_u32(var_1.c.x, 17u)]) == true;
    var var_5 = Struct_3(var_1.e.x, u_input.a);
    var var_6 = 1u;
    global1 = array<vec2<f32>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.xy, ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(26372u, 1u, u_input.a, 0u), vec4<u32>(var_1.b.x, u_input.a, 83727u, 4294967295u), countOneBits(var_1.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global3.xy)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-186f, global3.x), global1[_wgslsmith_index_u32(~4294967295u, 17u)])))));
}

