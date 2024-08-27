struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1i, -17632i);

var<private> global1: Struct_2 = Struct_2(59452u, Struct_1(2147483647i, 29879u), i32(-2147483648), vec2<bool>(false, false));

var<private> global2: Struct_1;

var<private> global3: f32 = 232f;

var<private> global4: Struct_3 = Struct_3(false, 6906i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-1000f - -817f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-144f, 1847f))))))));
    var var_1 = true;
    var var_2 = -2147483647i;
    let var_3 = global1.b;
    let var_4 = !global1.d;
    return vec3<i32>(global0.x, -_wgslsmith_div_i32(firstLeadingBit(global0.x) | firstTrailingBit(-14273i), _wgslsmith_dot_vec3_i32(max(vec3<i32>(arg_0, -65489i, var_3.a), vec3<i32>(global0.x, global2.a, 18101i)), vec3<i32>(global1.c, var_3.a, arg_0) >> (u_input.a % vec3<u32>(32u)))), global2.a);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_3) -> u32 {
    global3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.x)) + -330f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(709f + -231f), _wgslsmith_f_op_f32(-arg_1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(345f * 252f))), global1.d.x)), !(select(arg_0.x, -42942i, global1.d.x) != global1.c) != select(select(true, global1.d.x, true), all(select(vec4<bool>(global1.d.x, true, arg_3.a, false), vec4<bool>(false, true, global4.a, false), global4.a)), (arg_1.x >= arg_1.x) && global1.d.x)));
    let var_0 = !select(global1.d, global1.d, vec2<bool>(global4.a, all(select(vec2<bool>(false, arg_3.a), vec2<bool>(global1.d.x, true), global1.d))));
    global2 = arg_2;
    let var_1 = Struct_2(u_input.a.x, Struct_1(_wgslsmith_sub_i32(4413i, -1i), global1.a), select(reverseBits(arg_2.a), firstLeadingBit(~arg_2.a), true) >> (~_wgslsmith_mod_u32(global1.b.b, _wgslsmith_mod_u32(arg_2.b, 19778u)) % 32u), global1.d);
    global4 = Struct_3(global4.a, _wgslsmith_mod_i32(2147483647i, -1i | max(_wgslsmith_clamp_i32(global0.x, arg_2.a, 20391i), arg_2.a)));
    return firstLeadingBit(1u);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(func_4(select(func_3(_wgslsmith_add_i32(2147483647i, global0.x)), vec3<i32>(1975i, global4.b, -66717i), all(!vec4<bool>(global1.d.x, global4.a, true, global4.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2659f, -359f, -275f) + vec3<f32>(-306f, 640f, -1921f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-629f, -1000f, 2156f), vec3<f32>(-476f, 253f, 725f), true)))), global1.b, Struct_3(true, -(global2.a & 22515i))), Struct_1(_wgslsmith_clamp_i32(7441i, ~global0.x >> ((4294967295u | u_input.b) % 32u), 1i), ~(1u & ~global2.b)), i32(-1i) * -(global2.a ^ _wgslsmith_clamp_i32(global2.a, global1.b.a, global4.b)), !global1.d);
    let var_1 = u_input.a;
    var var_2 = select(-vec2<i32>(global0.x, _wgslsmith_div_i32(i32(-1i) * -15276i, ~175i)), ~vec2<i32>(func_3(min(global1.b.a, 1i)).x, global4.b), ~(~var_0.a) <= (select(var_0.b.b, countOneBits(global1.a), true) & u_input.b));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1028f, -154f, _wgslsmith_f_op_f32(trunc(160f)))) * vec3<f32>(_wgslsmith_f_op_f32(1619f - 1238f), _wgslsmith_f_op_f32(-169f - _wgslsmith_f_op_f32(1241f - -426f)), -453f)));
    var_0 = Struct_2(_wgslsmith_add_u32(~(~(63127u >> (1u % 32u))), (global1.b.b ^ 2927u) & 19776u), var_0.b, var_2.x, vec2<bool>(false, (var_0.b.a & -258i) != (-16022i >> (firstLeadingBit(global1.b.b) % 32u))));
    return var_0.b;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_3(global4.a, -41314i);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(step(-473f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(250f, -438f) * 1386f))) != 948f, arg_0.x);
    let var_2 = Struct_2(global2.b, arg_1, firstLeadingBit(global1.c), select(select(vec2<bool>(true, all(vec4<bool>(true, false, true, global1.d.x))), select(select(global1.d, global1.d, false), vec2<bool>(global1.d.x, false), global1.d), vec2<bool>(true, !global4.a)), select(select(global1.d, !global1.d, true), vec2<bool>(any(vec2<bool>(true, global4.a)), all(vec4<bool>(global1.d.x, false, var_1.a, global4.a))), false), vec2<bool>(true, select(var_1.a, global4.a, global4.a))));
    var var_3 = countOneBits(min(_wgslsmith_add_i32(countOneBits(var_1.b) | arg_1.a, 0i), (~var_2.b.a | abs(arg_0.x)) << (_wgslsmith_mod_u32(min(4294967295u, 85453u), reverseBits(arg_1.b)) % 32u)));
    global4 = var_0;
    return min(max(0u, 1062u), abs(48557u) ^ u_input.a.x);
}

fn func_1() -> f32 {
    var var_0 = Struct_1(-7045i, ~4294967295u);
    var var_1 = Struct_2(func_5(max(firstTrailingBit(~vec3<i32>(global0.x, -2147483647i, global0.x)), vec3<i32>(-2147483647i, global2.a, -12432i) << ((vec3<u32>(1u, 18473u, var_0.b) << (u_input.a % vec3<u32>(32u))) % vec3<u32>(32u))), func_2()), Struct_1(global1.c, ~countOneBits(17097u)), ~2147483647i, !global1.d);
    global0 = vec2<i32>(func_3(global0.x).x, -2570i);
    let var_2 = u_input.a;
    let var_3 = abs(~(~(vec2<i32>(2147483647i, global1.c) ^ vec2<i32>(47849i, var_0.a)))) ^ -vec2<i32>(1i, -65065i);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1782f), 2074f));
}

fn func_6(arg_0: u32, arg_1: vec2<u32>, arg_2: u32, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = global4.b;
    var var_1 = func_2();
    global0 = vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, 18180i, 6794i), vec3<i32>(_wgslsmith_mult_i32(0i, global1.b.a), 53050i << (u_input.a.x % 32u), global4.b)), -min(-global4.b, global2.a)) << ((~arg_1 ^ ~abs(vec2<u32>(48108u, arg_0))) % vec2<u32>(32u));
    global2 = global1.b;
    let var_2 = Struct_3(global1.d.x, global1.c);
    return Struct_2(49932u, global1.b, 77862i, select(vec2<bool>(true, _wgslsmith_sub_i32(8604i, -6274i) <= var_1.a), vec2<bool>(true, all(vec4<bool>(false, false, false, global4.a))), all(vec3<bool>(!global1.d.x, false, all(vec4<bool>(var_2.a, var_2.a, global1.d.x, var_2.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = func_6(1u, max(vec2<u32>(_wgslsmith_mult_u32(abs(global1.b.b), max(48528u, 0u)), global1.a), vec2<u32>(global2.b, global2.b)), 30980u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1135f), _wgslsmith_f_op_f32(min(1664f, -1000f)))), -131f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-966f, 782f) - _wgslsmith_f_op_f32(func_1())))));
    global4 = Struct_3(any(!select(!vec4<bool>(var_1.d.x, false, false, global1.d.x), !vec4<bool>(global4.a, false, global1.d.x, var_0), !var_0)), 17100i);
    let var_2 = !(!global1.d);
    var var_3 = Struct_3(!(global4.a || false), _wgslsmith_mult_i32(abs(-(i32(-1i) * -23146i)), 0i));
    global0 = vec2<i32>(~firstLeadingBit(-var_1.b.a ^ (-2147483647i << (0u % 32u))), 0i);
    global0 = vec2<i32>(_wgslsmith_sub_i32(reverseBits(~_wgslsmith_dot_vec3_i32(vec3<i32>(-22828i, var_3.b, -2147483647i), vec3<i32>(global0.x, global2.a, -24040i))), func_3(var_3.b).x), firstTrailingBit(-(global1.b.a >> (global2.b % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~global2.b, global2.a, ~firstTrailingBit((vec2<u32>(119482u, 0u) | vec2<u32>(global1.b.b, 7188u)) | vec2<u32>(57612u, global2.b)), countOneBits(_wgslsmith_mult_vec4_i32(-abs(vec4<i32>(-26893i, 1i, global4.b, global1.c)), _wgslsmith_mod_vec4_i32(~vec4<i32>(1i, global0.x, -1i, -34896i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-74056i, 2147483647i, 0i, global0.x), vec4<i32>(-25161i, global4.b, global2.a, -21882i), vec4<i32>(global2.a, -76279i, global1.c, global2.a))))));
}

