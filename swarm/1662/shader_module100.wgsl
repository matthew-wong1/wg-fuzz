struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: vec3<bool>,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1198f, -435f, -442f, 212f);

var<private> global1: Struct_2 = Struct_2(vec3<u32>(0u, 12698u, 1u), true, vec3<bool>(false, false, true), Struct_1(true, 66501u, vec3<bool>(true, false, true)), vec2<u32>(0u, 0u));

var<private> global2: array<Struct_1, 25>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec4<f32>) -> vec4<f32> {
    global1 = Struct_2(global1.a, any(select(vec2<bool>(true, global1.b), select(global1.c.zx, global1.c.zz, global1.d.c.yy), false)) && !all(select(vec4<bool>(arg_0, global1.c.x, false, arg_0), vec4<bool>(global1.b, false, false, global1.b), vec4<bool>(false, true, false, true))), vec3<bool>(true, arg_0, global1.b), Struct_1(false, firstTrailingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(21571u, 37048u, 15133u, 10994u), vec4<u32>(4294967295u, global1.a.x, u_input.c, 5865u)), ~vec4<u32>(10324u, 0u, 4294967295u, global1.e.x))), select(global1.c, vec3<bool>(true | global1.c.x, !global1.c.x, false), vec3<bool>(arg_0, true, arg_0))), ~vec2<u32>(_wgslsmith_clamp_u32(global1.d.b, min(global1.d.b, 4294967295u), 1u), global1.a.x));
    global1 = Struct_2(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_add_u32(44444u, global1.d.b), u_input.c, reverseBits(u_input.a.x | 34045u)), vec3<u32>(global1.d.b << (u_input.a.x % 32u), reverseBits(u_input.c), ~(~u_input.c))), !(!arg_0) | false, !vec3<bool>(arg_0, global1.b, u_input.c > u_input.a.x), Struct_1(!(any(vec4<bool>(true, false, arg_0, arg_0)) & true), u_input.c, vec3<bool>(arg_1 >= _wgslsmith_f_op_f32(-global0.x), true || select(false, true, arg_0), false)), global1.a.yz);
    var var_0 = 1000f;
    let var_1 = _wgslsmith_div_u32(u_input.c, 4294967295u);
    global1 = Struct_2(~reverseBits(countOneBits(u_input.a >> (vec3<u32>(u_input.a.x, var_1, 4294967295u) % vec3<u32>(32u)))), true, global1.d.c, Struct_1(true, ~4033u | _wgslsmith_div_u32(13411u, global1.e.x), vec3<bool>(~var_1 != firstLeadingBit(global1.d.b), arg_0, false)), ~(~min(vec2<u32>(13039u, 3279u), _wgslsmith_add_vec2_u32(vec2<u32>(var_1, u_input.c), vec2<u32>(var_1, 4294967295u)))));
    return vec4<f32>(-2165f, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(ceil(arg_2.x)))), arg_2.x, false)), global0.x);
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: u32) -> vec4<bool> {
    let var_0 = !select(!(!vec4<bool>(global1.d.c.x, true, global1.c.x, global1.d.a)), vec4<bool>(true, min(u_input.c, 16318u) == ~4294967295u, any(!vec4<bool>(true, global1.b, global1.c.x, global1.b)), !select(true, global1.b, global1.d.a)), true);
    var var_1 = Struct_2(~reverseBits(firstLeadingBit(abs(vec3<u32>(arg_2, arg_2, 13218u)))), global1.d.a, vec3<bool>(select(global1.d.c.x, global0.x > _wgslsmith_f_op_f32(exp2(global0.x)), ~arg_2 > _wgslsmith_mod_u32(arg_1.x, arg_1.x)), true, true), Struct_1(true, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, arg_1.x, arg_1.x), ~(arg_1.zxy << (vec3<u32>(arg_2, 0u, 1u) % vec3<u32>(32u)))), vec3<bool>(false, true | any(global1.c.zy), global1.c.x)), ~arg_1.yz);
    global0 = _wgslsmith_f_op_vec4_f32(func_3(any(!select(vec2<bool>(global1.c.x, global1.c.x), vec2<bool>(true, false), var_1.b)) & var_1.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), global0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-416f, _wgslsmith_f_op_f32(trunc(-566f)), -584f, _wgslsmith_f_op_f32(f32(-1f) * -295f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_0, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, -1348f, 742f, global0.x))), false)), false)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2166f, global0.x, -1000f, 1249f)) + vec4<f32>(-781f, global0.x, -373f, arg_0))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_vec4_f32(func_3(true, 833f, vec4<f32>(global0.x, 229f, global0.x, global0.x))).x, arg_0, _wgslsmith_div_f32(1863f, -840f))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-106f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(select(global0.x, -784f, false))), global0.yzx))));
    let var_3 = 2147483647i;
    return !(!vec4<bool>(!(113142u >= u_input.a.x), any(select(var_0.yyw, global1.d.c, var_0.yyx)), false == (var_3 < 19067i), 2869u > ~global1.a.x));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec3<u32>) -> vec3<bool> {
    let var_0 = (select(reverseBits(1u), max(~25981u, 4294967295u), all(func_2(-658f, vec4<u32>(global1.e.x, arg_0, global1.a.x, 25865u), 48546u))) & 0u) & _wgslsmith_add_u32(0u, global1.e.x);
    global1 = Struct_2(~vec3<u32>(~122961u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(global1.e, arg_2.xx), _wgslsmith_div_vec2_u32(vec2<u32>(var_0, 4294967295u), vec2<u32>(arg_0, arg_2.x))), abs(4294967295u) | ~var_0), false, !vec3<bool>(arg_1, (global0.x != global0.x) && all(vec3<bool>(true, true, arg_1)), any(global1.d.c.zy) && false), global2[_wgslsmith_index_u32(min(~4294967295u, var_0) ^ u_input.c, 25u)], _wgslsmith_div_vec2_u32(vec2<u32>(17430u, u_input.a.x), _wgslsmith_mod_vec2_u32(vec2<u32>(56757u, 1u), u_input.a.yz)));
    var var_1 = Struct_2(~u_input.a, func_2(_wgslsmith_f_op_f32(global0.x - 1f), firstLeadingBit((vec4<u32>(68482u, 62084u, 0u, global1.e.x) ^ vec4<u32>(var_0, u_input.a.x, var_0, u_input.c)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(72388u, 1456u, var_0, 46465u), vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 16178u)) % vec4<u32>(32u))), firstTrailingBit(1u << (arg_0 % 32u))).x, !global1.d.c, Struct_1(any(!(!vec4<bool>(true, true, true, arg_1))), global1.a.x, vec3<bool>(any(global1.d.c), any(vec4<bool>(true, true, true, true)), !global1.c.x)), select(~(firstTrailingBit(vec2<u32>(1u, u_input.a.x)) >> (arg_2.yx % vec2<u32>(32u))), select(vec2<u32>(arg_2.x >> (global1.a.x % 32u), abs(0u)), ~firstTrailingBit(vec2<u32>(14664u, var_0)), select(false, true, global1.d.c.x)), global0.x > 1737f));
    global1 = Struct_2(_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(arg_0, 4294967295u, global1.e.x)) ^ firstLeadingBit(u_input.a), vec3<u32>(~4294967295u, 1u, abs(4294967295u)), u_input.a) >> ((~vec3<u32>(74939u, var_0, 14573u) >> (~vec3<u32>(12427u, arg_0, 0u) % vec3<u32>(32u))) % vec3<u32>(32u)), false, vec3<bool>(!(var_0 > _wgslsmith_clamp_u32(1u, arg_2.x, 1u)), false, !global1.c.x && arg_1), Struct_1(true, _wgslsmith_div_u32(~var_0, min(var_0 ^ arg_2.x, firstTrailingBit(1u))), select(select(vec3<bool>(true, arg_1, arg_1), global1.c, !global1.d.c), global1.d.c, !var_1.d.c)), ~(~global1.e) & (~abs(vec2<u32>(4294967295u, 10157u)) >> (var_1.e % vec2<u32>(32u))));
    var var_2 = Struct_2(vec3<u32>(0u, ~(~arg_2.x), ~(~36555u)), true, var_1.c, Struct_1(all(global1.d.c.zz), _wgslsmith_clamp_u32(~0u, 35013u, var_0), select(select(select(global1.d.c, vec3<bool>(false, global1.c.x, true), arg_1), vec3<bool>(true, false, global1.b), vec3<bool>(true, false, false)), !var_1.c, all(!vec3<bool>(global1.d.a, false, true)))), vec2<u32>(reverseBits(_wgslsmith_clamp_u32(var_1.d.b, arg_2.x, 30880u)) << (1u % 32u), ~(select(arg_0, global1.d.b, var_1.d.c.x) & var_1.a.x)));
    return func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -301f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, -1000f))) * _wgslsmith_f_op_vec4_f32(func_3(var_1.c.x, global0.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, 444f, global0.x, -1168f))), vec4<f32>(-255f, global0.x, global0.x, global0.x), select(vec4<bool>(false, global1.b, false, true), vec4<bool>(false, var_2.c.x, true, true), vec4<bool>(arg_1, var_1.b, false, true)))))).x), select(vec4<u32>(u_input.c, ~_wgslsmith_dot_vec2_u32(var_1.e, arg_2.yx), max(firstLeadingBit(0u), select(var_2.d.b, var_1.d.b, arg_1)), ~89097u), _wgslsmith_add_vec4_u32(select(vec4<u32>(28160u, 2115u, var_1.a.x, global1.e.x), abs(vec4<u32>(4294967295u, 58157u, arg_0, u_input.a.x)), true), abs(~vec4<u32>(var_2.a.x, arg_2.x, 1u, var_1.d.b))), !vec4<bool>(any(var_2.d.c.yx), true, u_input.b != 2147483647i, arg_1 || var_1.d.c.x)), 37869u).wzy;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(min(global0.x, global0.x)), _wgslsmith_div_f32(838f, 2109f), 668f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1194f, global0.x, global0.x, global0.x), vec4<f32>(global0.x, global0.x, 1000f, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1000f, global0.x, 560f))) + vec4<f32>(_wgslsmith_f_op_f32(-792f - -1415f), _wgslsmith_f_op_f32(step(2047f, global0.x)), global0.x, global0.x))));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1086f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(exp2(global0.x)), false)))) * _wgslsmith_f_op_f32(min(-836f, 1f)));
    var var_1 = global0.x;
    let var_2 = Struct_2(_wgslsmith_add_vec3_u32(vec3<u32>(abs(~global1.e.x), firstLeadingBit(1u), 1u), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(68374u, 21936u, 4294967295u) | vec3<u32>(0u, global1.d.b, u_input.a.x), vec3<u32>(4294967295u, u_input.c, u_input.c)), ~(u_input.a ^ global1.a))), global1.d.c.x, select(select(vec3<bool>(true, true, true), !vec3<bool>(false, global1.b, false), all(!vec4<bool>(global1.b, true, global1.b, true))), !vec3<bool>(any(vec4<bool>(global1.d.a, true, global1.c.x, global1.b)), global1.d.c.x, false), global1.d.c), Struct_1(!global1.b, ~_wgslsmith_add_u32(_wgslsmith_mod_u32(13083u, 1u), 85384u), select(select(func_1(global1.d.b, true, vec3<u32>(0u, 1u, 51548u)), vec3<bool>(global1.c.x, global1.b, global1.d.c.x), !global1.d.c.x), vec3<bool>(global1.c.x, all(vec2<bool>(true, global1.c.x)), true), func_2(_wgslsmith_f_op_f32(-672f - -219f), vec4<u32>(global1.d.b, u_input.c, 0u, u_input.c), u_input.c).x)), ~vec2<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 2889u, u_input.a.x), vec3<u32>(0u, 35296u, 14097u))) & firstLeadingBit(u_input.a.zz));
    let var_3 = var_2;
    let var_4 = ~(_wgslsmith_mult_vec4_u32(vec4<u32>(~var_2.a.x, 4294967295u, ~u_input.a.x, 0u), vec4<u32>(_wgslsmith_mult_u32(var_3.d.b, var_2.e.x), 2814u, global1.d.b, 30275u)) ^ ~vec4<u32>(global1.e.x, _wgslsmith_add_u32(91908u, u_input.a.x), global1.d.b & 1u, firstTrailingBit(u_input.a.x)));
    var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(284f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -533f, -340f, -2314f)), ~57835u);
}

