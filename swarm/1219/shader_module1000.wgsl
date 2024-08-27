struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: i32,
    d: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: u32,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13> = array<i32, 13>(2372i, i32(-2147483648), i32(-2147483648), -1i, i32(-2147483648), 5172i, i32(-2147483648), 0i, i32(-2147483648), -16588i, 29634i, 13869i, 32956i);

var<private> global1: i32 = 0i;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> vec3<i32> {
    let var_0 = firstLeadingBit(~_wgslsmith_add_u32(1u, max(u_input.a.x, _wgslsmith_div_u32(0u, arg_1.a))));
    let var_1 = arg_1;
    return vec3<i32>(u_input.c.x, global0[_wgslsmith_index_u32(1u, 13u)], _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, arg_0.b.x, 0i), vec3<i32>(21556i, 6373i, u_input.c.x)), vec3<i32>(40746i, arg_0.b.x, arg_0.b.x)) >> (~(vec3<u32>(4294967295u, u_input.b.x, 6586u) | vec3<u32>(arg_1.a, var_0, 1u)) % vec3<u32>(32u)), vec3<i32>(-1i, select(_wgslsmith_sub_i32(13305i, arg_0.b.x), abs(2147483647i), var_1.c), ~min(-2147483647i, -1i))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: vec2<bool>) -> Struct_2 {
    let var_0 = !vec2<bool>(any(arg_1), false);
    let var_1 = func_3(Struct_3(Struct_1(vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), abs(u_input.d), 45415u), u_input.a.x), vec2<i32>(-global0[_wgslsmith_index_u32(31751u, 13u)], _wgslsmith_mod_i32(~global0[_wgslsmith_index_u32(41379u, 13u)], 40871i))), Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 1u) << (~vec3<u32>(u_input.a.x, 4294967295u, 4294967295u) % vec3<u32>(32u)), ~u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-519f, 722f))), any(select(select(vec2<bool>(arg_0.x, arg_0.x), arg_0.yx, vec2<bool>(false, var_0.x)), vec2<bool>(true, true), select(arg_0.yy, arg_1.zx, var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -295f)))));
    let var_2 = _wgslsmith_sub_u32(~1u, 1u);
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-816f, 1802f) - vec2<f32>(533f, -281f)))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -402f), -643f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-820f, 1493f))))), vec2<bool>(true, arg_0.x == true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-267f, 443f))), select(!select(vec2<bool>(arg_1.x, true), arg_0.xy, false), !select(vec2<bool>(true, arg_2.x), vec2<bool>(arg_0.x, arg_2.x), var_0), vec2<bool>(false, var_1.x >= 1i)))));
    global0 = array<i32, 13>();
    return Struct_2(25588u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.x))), false, _wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_3.x)), _wgslsmith_f_op_f32(floor(-311f)), arg_2.x))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_5) -> Struct_1 {
    var var_0 = Struct_5(_wgslsmith_sub_i32(u_input.c.x, 0i), arg_1.b, arg_0.x, func_2(!select(!vec3<bool>(false, arg_1.b.c, arg_1.b.c), vec3<bool>(true, true, true), arg_1.d.c), select(!vec4<bool>(arg_1.d.c, arg_1.d.c, arg_1.b.c, arg_1.d.c), !select(vec4<bool>(arg_1.b.c, false, false, arg_1.d.c), vec4<bool>(arg_1.b.c, arg_1.b.c, false, arg_1.d.c), vec4<bool>(false, arg_1.d.c, arg_1.b.c, arg_1.b.c)), false), vec2<bool>(~15747u >= _wgslsmith_dot_vec2_u32(u_input.a.yx, u_input.b.zx), true)), 66534u);
    var_0 = Struct_5(~(~(~u_input.c.x)), func_2(select(select(select(vec3<bool>(arg_1.d.c, false, var_0.d.c), vec3<bool>(false, var_0.b.c, false), true), vec3<bool>(true, true, true), false && var_0.d.c), vec3<bool>(var_0.b.d >= arg_1.d.b, all(vec4<bool>(true, var_0.b.c, false, false)), var_0.b.c), vec3<bool>(func_2(vec3<bool>(false, true, false), vec4<bool>(var_0.d.c, var_0.b.c, false, true), vec2<bool>(true, arg_1.b.c)).c, !var_0.b.c, true)), !vec4<bool>(false, all(vec4<bool>(false, true, true, true)), !arg_1.b.c, false), vec2<bool>(true, all(vec4<bool>(true, true, arg_1.b.c, arg_1.b.c)))), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d, 4294967295u), ~(~vec2<u32>(arg_0.x, 0u))), _wgslsmith_mod_u32(~(1u >> (var_0.b.a % 32u)), arg_0.x)), func_2(!select(vec3<bool>(true, true, true), !vec3<bool>(var_0.d.c, var_0.d.c, false), vec3<bool>(true, arg_1.b.c, arg_1.b.c)), select(select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, true, arg_1.b.c, var_0.b.c), vec4<bool>(true, var_0.b.c, false, var_0.d.c), arg_1.d.c), vec4<bool>(true, var_0.d.c, arg_1.d.c, true)), !select(vec4<bool>(false, true, var_0.b.c, arg_1.b.c), vec4<bool>(true, false, true, var_0.d.c), var_0.d.c), select(vec4<bool>(false, var_0.b.c, true, false), !vec4<bool>(true, false, false, arg_1.d.c), !vec4<bool>(arg_1.b.c, var_0.b.c, arg_1.d.c, true))), select(vec2<bool>(true, true), select(select(vec2<bool>(var_0.b.c, arg_1.d.c), vec2<bool>(true, var_0.b.c), arg_1.b.c), vec2<bool>(var_0.b.c, false), vec2<bool>(arg_1.d.c, false)), select(vec2<bool>(var_0.b.c, true), vec2<bool>(var_0.b.c, var_0.d.c), func_2(vec3<bool>(arg_1.d.c, arg_1.b.c, arg_1.d.c), vec4<bool>(true, false, var_0.b.c, false), vec2<bool>(arg_1.d.c, var_0.d.c)).c))), ~firstLeadingBit(7968u));
    global1 = 40978i;
    var_0 = Struct_5(u_input.c.x, func_2(vec3<bool>(!arg_1.b.c, any(!vec3<bool>(false, var_0.b.c, true)), !arg_1.b.c), !(!(!vec4<bool>(var_0.d.c, var_0.b.c, false, false))), !vec2<bool>(!var_0.b.c, true)), abs(~_wgslsmith_mult_u32(arg_0.x, 1u)), Struct_2(5452u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1309f, var_0.b.b))))), var_0.d.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.b.d + -1000f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1000f, var_0.d.d)))))), arg_0.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.d.d, arg_1.b.b), vec2<f32>(1072f, 613f), false))))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(arg_1.b.b * arg_1.b.b), arg_1.b.b), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(620f, 1000f), vec2<f32>(-264f, 3600f), vec2<bool>(arg_1.d.c, arg_1.d.c))), _wgslsmith_div_vec2_f32(vec2<f32>(-2109f, var_0.b.b), vec2<f32>(arg_1.b.b, arg_1.d.b))))))) - vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.d.d, -1000f))), var_0.b.c)), arg_1.d.b));
    return Struct_1(u_input.b.zzw, var_0.e);
}

fn func_1(arg_0: u32) -> vec3<u32> {
    global1 = global0[_wgslsmith_index_u32(arg_0, 13u)];
    var var_0 = func_4(vec4<u32>(_wgslsmith_mod_u32(~(u_input.a.x | 4294967295u), countOneBits(_wgslsmith_sub_u32(arg_0, u_input.b.x))), _wgslsmith_add_u32(arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(79192u, arg_0, 70102u, 19219u), u_input.b) & 54964u), 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(max(4294967295u, 4294967295u), 1u, 939u, ~u_input.d), reverseBits(vec4<u32>(58086u, u_input.a.x, 1u, 55692u)))), Struct_5(~(-27039i << ((0u ^ u_input.b.x) % 32u)), func_2(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec4<bool>(true, true, true, true), vec2<bool>(global0[_wgslsmith_index_u32(29402u, 13u)] <= 41476i, true)), u_input.b.x, Struct_2(1u, -750f, any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(1813f, 2045f))), u_input.d));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(func_2(vec3<bool>(false, false, false), vec4<bool>(true, true, true, false), vec2<bool>(false, true)).d, _wgslsmith_div_f32(651f, 687f), true))))));
    var var_2 = func_4(u_input.b, Struct_5(0i, Struct_2(60850u ^ min(u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(select(var_1, _wgslsmith_f_op_f32(trunc(var_1)), true)), any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(func_2(vec3<bool>(true, false, false), vec4<bool>(false, true, true, true), vec2<bool>(true, false)).d + 156f)), _wgslsmith_add_u32(var_0.b, var_0.b) & ((arg_0 << (0u % 32u)) | 29935u), Struct_2(reverseBits(27916u), _wgslsmith_f_op_f32(-1280f + var_1), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-197f + var_1) + _wgslsmith_f_op_f32(-var_1))), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, 1239u, arg_0, 0u) & max(u_input.b, u_input.b), ~u_input.b)));
    var var_3 = func_4(reverseBits(u_input.b), Struct_5(u_input.c.x, func_2(vec3<bool>(true, true, true), vec4<bool>(func_2(vec3<bool>(true, false, true), vec4<bool>(true, false, false, false), vec2<bool>(true, false)).c, false, false, true), vec2<bool>(false, false)), u_input.a.x, func_2(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec4<bool>(true, true, true, true), vec2<bool>(true, true)), arg_0));
    return ~abs(vec3<u32>(arg_0, var_3.b, 78095u) & (vec3<u32>(0u, var_2.a.x, 4294967295u) ^ var_3.a)) >> (~u_input.a % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    var var_1 = firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(abs(global0[_wgslsmith_index_u32(u_input.a.x, 13u)]), 1i, -4300i), firstLeadingBit(-vec3<i32>(u_input.c.x, 1i, -57766i)))) << (~(~func_1(u_input.d ^ 4294967295u)) % vec3<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -2166f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-956f - -253f))));
    let var_3 = u_input.b;
    var_1 = _wgslsmith_mult_vec3_i32(min(min(vec3<i32>(u_input.c.x, var_1.x, global0[_wgslsmith_index_u32(u_input.a.x, 13u)]), vec3<i32>(53140i, 45005i, global0[_wgslsmith_index_u32(var_3.x, 13u)])) ^ vec3<i32>(-1i, var_1.x, var_1.x), _wgslsmith_mod_vec3_i32(~vec3<i32>(1i, global0[_wgslsmith_index_u32(1u, 13u)], 1i), vec3<i32>(0i, var_1.x, -27460i) << (vec3<u32>(var_3.x, 85956u, 0u) % vec3<u32>(32u)))) << (u_input.a % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(select(_wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(u_input.c.x, var_1.x, global0[_wgslsmith_index_u32(37112u, 13u)])), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, -49446i, 30014i), vec3<i32>(global0[_wgslsmith_index_u32(0u, 13u)], 0i, -2147483647i))), vec3<i32>(1i, firstLeadingBit(-31751i), select(2147483647i, global0[_wgslsmith_index_u32(45442u, 13u)], true)), select(vec3<bool>(true, var_2, false), !vec3<bool>(true, false, var_2), vec3<bool>(false, var_2, true))), (_wgslsmith_add_vec3_i32(vec3<i32>(4353i, global0[_wgslsmith_index_u32(u_input.d, 13u)], u_input.c.x), vec3<i32>(-13536i, 17585i, 1i)) ^ vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(52128u, 13u)], u_input.c.x)) | vec3<i32>(-2147483647i, var_1.x | u_input.c.x, ~var_1.x)));
    global0 = array<i32, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-310f, 205f, _wgslsmith_f_op_f32(select(304f, -1112f, true)), -306f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1895f, 510f, 2810f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-162f, 269f, 862f) - vec3<f32>(-850f, -1810f, 211f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1966f, 234f) * vec3<f32>(336f, 832f, -2017f))))), _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a.x, 1u, var_3.x), max(var_3.yzz, var_3.zxz)), ~(~_wgslsmith_mod_vec3_u32(u_input.b.wyx, u_input.a))), var_3.wwx);
}

