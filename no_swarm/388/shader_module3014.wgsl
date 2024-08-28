struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: f32,
    d: vec4<f32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: Struct_2) -> u32 {
    var var_0 = Struct_5(_wgslsmith_div_u32((u_input.a ^ arg_1) & (18498u >> (0u % 32u)), 1u) << (4294967295u % 32u));
    let var_1 = Struct_2(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.d.x, 50031u, var_0.a) >> (select(vec3<u32>(u_input.c, var_0.a, 35127u), vec3<u32>(var_0.a, 8435u, u_input.a), true) % vec3<u32>(32u)), abs(vec3<u32>(1u, arg_3.a, 9213u))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(34976u, var_0.a, arg_1) >> (vec3<u32>(26391u, 37453u, u_input.d.x) % vec3<u32>(32u)), vec3<u32>(u_input.d.x, 53300u, 1u) >> (vec3<u32>(arg_3.a, 55968u, 5845u) % vec3<u32>(32u)), vec3<u32>(4294967295u, 12892u, 4294967295u) ^ vec3<u32>(576u, arg_1, 44764u))), arg_3.d.x, arg_3.c, arg_3.d, !(!arg_3.e));
    let var_2 = arg_3;
    var_0 = Struct_5(_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, 1u, var_2.a), vec3<u32>(0u, u_input.e, 143739u)), 1u));
    var var_3 = Struct_4(!select(!(!vec4<bool>(false, true, var_2.e.x, true)), vec4<bool>(var_0.a >= 17216u, arg_2, all(vec3<bool>(var_1.e.x, false, arg_2)), var_1.e.x), vec4<bool>(-399f >= var_1.d.x, true & arg_3.e.x, !var_1.e.x, var_2.e.x)), ~23091u, -419f, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-191f + arg_3.d.x), 564f, _wgslsmith_f_op_f32(var_2.b + var_1.d.x), 155f) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(604f, 633f, arg_3.d.x, arg_3.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.d.x, -550f, var_2.d.x, arg_3.b) * vec4<f32>(-866f, var_1.b, -707f, 158f)), true))))));
    return _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(u_input.d << (_wgslsmith_add_vec2_u32(u_input.d, vec2<u32>(4294967295u, 0u)) % vec2<u32>(32u)), ~abs(u_input.d)), u_input.d);
}

fn func_2() -> vec4<bool> {
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(select((u_input.d.x >> (0u % 32u)) & _wgslsmith_div_u32(u_input.c, 51352u), ~func_3(Struct_1(vec4<i32>(u_input.b.x, -53026i, u_input.b.x, 2147483647i), vec2<i32>(u_input.b.x, 0i)), u_input.c, true, Struct_2(0u, 1000f, Struct_1(vec4<i32>(u_input.b.x, -2147483647i, 31653i, -43621i), u_input.b.wx), vec3<f32>(-2484f, 744f, -118f), vec2<bool>(true, false))), any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)))), 52077u, 4294967295u), reverseBits(~vec3<u32>(u_input.d.x, 1u, u_input.c)));
    let var_1 = max(0u, ~17119u) >> (~reverseBits(~0u) % 32u);
    var var_2 = Struct_2(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(234f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -331f)))), Struct_1(countOneBits(u_input.b) | vec4<i32>(min(u_input.b.x, u_input.b.x), u_input.b.x >> (var_1 % 32u), _wgslsmith_mult_i32(u_input.b.x, 11349i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.b.x), u_input.b)), vec2<i32>(-40657i, ~(-2147483647i))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(891f))), _wgslsmith_f_op_f32(trunc(-819f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -143f), -756f))), ~_wgslsmith_clamp_i32(u_input.b.x, 1i, u_input.b.x) <= -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -3960i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)))), vec2<bool>(any(vec4<bool>(true, true, true, all(vec4<bool>(false, false, false, false)))), false));
    var var_3 = select(i32(-1i) * -abs(15452i), 2021i, (true & (var_2.e.x & (var_2.d.x > var_2.b))) || any(select(select(vec4<bool>(var_2.e.x, true, true, var_2.e.x), vec4<bool>(var_2.e.x, false, false, var_2.e.x), var_2.e.x), !vec4<bool>(var_2.e.x, false, true, var_2.e.x), true)));
    var var_4 = abs(~(~15305u));
    return select(select(vec4<bool>(true, !(!var_2.e.x), !var_2.e.x == var_2.e.x, false), !vec4<bool>(true, !var_2.e.x, all(vec3<bool>(false, true, var_2.e.x)), var_2.e.x), select(select(vec4<bool>(true, var_2.e.x, var_2.e.x, false), !vec4<bool>(var_2.e.x, var_2.e.x, var_2.e.x, var_2.e.x), any(vec2<bool>(false, false))), select(vec4<bool>(var_2.e.x, false, true, var_2.e.x), vec4<bool>(var_2.e.x, false, false, true), any(vec4<bool>(false, var_2.e.x, var_2.e.x, true))), select(select(vec4<bool>(var_2.e.x, var_2.e.x, false, false), vec4<bool>(var_2.e.x, var_2.e.x, true, var_2.e.x), var_2.e.x), !vec4<bool>(var_2.e.x, var_2.e.x, var_2.e.x, true), !var_2.e.x))), select(!(!vec4<bool>(var_2.e.x, false, false, var_2.e.x)), !select(!vec4<bool>(false, var_2.e.x, var_2.e.x, var_2.e.x), vec4<bool>(false, var_2.e.x, true, true), !vec4<bool>(var_2.e.x, var_2.e.x, var_2.e.x, false)), _wgslsmith_dot_vec2_i32(u_input.b.zz, firstLeadingBit(var_2.c.b)) >= var_2.c.b.x), var_2.e.x);
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: u32) -> vec3<bool> {
    let var_0 = u_input.b.x;
    let var_1 = Struct_4(select(vec4<bool>(true, true, true, true), func_2(), vec4<bool>(true, true, true, true)), ~max(u_input.d.x, arg_2), arg_0, vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_f_op_f32(arg_1.x - arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2291f)))), arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0)) - _wgslsmith_div_f32(-258f, _wgslsmith_f_op_f32(floor(2204f))))));
    var var_2 = abs(~vec4<u32>(firstLeadingBit(0u), _wgslsmith_clamp_u32(var_1.b, _wgslsmith_mod_u32(4681u, arg_2), 3354u), ~var_1.b, var_1.b));
    var_2 = vec4<u32>(_wgslsmith_mod_u32(0u, 8344u), 68742u, arg_2, 32614u);
    var var_3 = vec3<u32>(arg_2 & firstTrailingBit(0u), ~firstTrailingBit(var_2.x), _wgslsmith_clamp_u32(1u, arg_2, 68910u));
    return var_1.a.xxw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(func_1(1675f, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1312f) + vec2<f32>(144f, -1000f)), vec2<f32>(1000f, -473f))), u_input.c), !select(func_2().ywy, select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), true), true);
    var var_1 = true;
    var_0 = vec3<bool>(all(select(vec2<bool>(!var_0.x, true), vec2<bool>(false, all(vec4<bool>(var_0.x, false, true, true))), !vec2<bool>(true, var_0.x))), false, all(select(vec2<bool>(var_0.x, true), var_0.xx, false)));
    var_1 = var_0.x;
    let var_2 = Struct_1(vec4<i32>(u_input.b.x, -30485i, u_input.b.x, i32(-1i) * -_wgslsmith_mod_i32(u_input.b.x, u_input.b.x)), u_input.b.yz & vec2<i32>(-(~u_input.b.x), -46010i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -613f)))));
}

