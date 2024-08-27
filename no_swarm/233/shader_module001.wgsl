struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: i32,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: Struct_4 = Struct_4(vec4<f32>(1249f, -313f, -125f, 559f));

var<private> global2: Struct_4;

var<private> global3: Struct_2 = Struct_2(Struct_1(-1000f, vec4<i32>(-15597i, 1i, 16664i, 15907i), 31788u, 0i, -267f), Struct_1(1000f, vec4<i32>(8894i, 18891i, 1i, 2147483647i), 39005u, -15158i, 1125f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    global1 = Struct_4(global2.a);
    var var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1233f, global2.a.x), global1.a.x)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -996f)))), _wgslsmith_f_op_f32(global2.a.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1767f + global3.a.e), -541f)))), countOneBits(global3.a.b), 0u, -abs(global3.b.d), 934f);
    let var_1 = ~0u;
    global0 = array<Struct_1, 18>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.a.x))), global3.a.b, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(~var_1, select(33762u, 5218u, true))), reverseBits(vec2<u32>(9290u, global3.b.c)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(global3.b.c, u_input.a), vec2<u32>(global3.a.c, 5491u)) % vec2<u32>(32u))), 1i << (min(89470u, _wgslsmith_sub_u32(1u, 1u << (var_0.c % 32u))) % 32u), _wgslsmith_f_op_f32(abs(133f)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3.a.e)) + global1.a.x);
}

fn func_2(arg_0: u32, arg_1: vec2<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(abs(-2272f))), _wgslsmith_f_op_f32(f32(-1f) * -1294f), 1f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1400f)), _wgslsmith_f_op_f32(-1375f - _wgslsmith_f_op_f32(func_3())), arg_1.x) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.a.xzx) - global1.a.zxz) - _wgslsmith_f_op_vec3_f32(global2.a.yzz * _wgslsmith_f_op_vec3_f32(sign(global1.a.xww))))));
    var var_1 = ~(~vec2<u32>(27876u, ~u_input.a));
    let var_2 = vec2<f32>(788f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -847f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.a.a + _wgslsmith_div_f32(-463f, global1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.e * global2.a.x)))))));
    let var_3 = Struct_4(vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(700f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.a.x))) + 806f), -1000f));
    var var_4 = global3.a.d;
    return Struct_2(global3.a, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1148f, _wgslsmith_f_op_f32(-1000f + -370f), all(vec3<bool>(false, true, false)))) + var_3.a.x), vec4<i32>(min(abs(0i), global3.a.b.x), _wgslsmith_sub_i32(global3.a.d, global3.b.b.x), global3.a.d, firstLeadingBit(_wgslsmith_sub_i32(global3.b.b.x, global3.b.d))), _wgslsmith_clamp_u32(~(~0u), select(24302u, ~u_input.a, all(vec4<bool>(true, false, false, false))), countOneBits(~u_input.a)), -(~firstLeadingBit(global3.b.b.x)), _wgslsmith_f_op_f32(func_3())));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>) -> StorageBuffer {
    let var_0 = func_2(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(13256u, 5395u), vec2<u32>(global3.a.c, select(u_input.a, 24612u, true))), 29103u, ~(~countOneBits(1u))), vec2<f32>(global2.a.x, -119f));
    var var_1 = vec2<u32>(arg_0 >> (reverseBits(~1u) % 32u), ~0u >> (~arg_0 % 32u));
    var var_2 = _wgslsmith_f_op_f32(ceil(global2.a.x));
    var_1 = max(~countOneBits(vec2<u32>(firstTrailingBit(4294967295u), 1u)), ~(~(~vec2<u32>(19139u, 1u) << (select(vec2<u32>(54704u, global3.b.c), vec2<u32>(global3.b.c, arg_0), vec2<bool>(true, false)) % vec2<u32>(32u)))));
    let var_3 = Struct_3(_wgslsmith_div_i32(select(_wgslsmith_div_i32(firstTrailingBit(var_0.b.b.x), ~global3.a.b.x), -1i, global3.a.a < -518f), abs(var_0.a.d)), abs(~1u), arg_1.x);
    return StorageBuffer(~vec3<u32>(~global3.b.c & 17038u, _wgslsmith_mult_u32(var_3.b, 78568u), arg_0), func_2(var_0.b.c, global1.a.zw).b.b.x << (_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, 1u, 2268u)), vec3<u32>(38656u, global3.b.c, 4294967295u)), reverseBits(func_2(25751u, vec2<f32>(-652f, 687f)).a.c), _wgslsmith_dot_vec4_u32(vec4<u32>(85691u, var_1.x, 46254u, 1u) >> (vec4<u32>(var_0.a.c, 1u, global3.a.c, u_input.a) % vec4<u32>(32u)), vec4<u32>(21401u, 1u, 53333u, 1u))) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(global3.a.c, min(countOneBits(global3.b.b.zwy), _wgslsmith_sub_vec3_i32(global3.a.b.xzz, vec3<i32>(global3.b.d, reverseBits(1i), global3.a.d))));
}

