struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec4<u32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec3<f32>(463f, -931f, 688f), vec2<bool>(false, true), vec4<u32>(4625u, 0u, 4294967295u, 28538u), false), Struct_1(vec3<f32>(628f, -676f, -1123f), vec2<bool>(false, false), vec4<u32>(1u, 0u, 6433u, 3588u), false), Struct_1(vec3<f32>(-147f, 1864f, 1000f), vec2<bool>(true, false), vec4<u32>(31988u, 4294967295u, 9897u, 4294967295u), false), Struct_1(vec3<f32>(148f, 320f, -324f), vec2<bool>(false, true), vec4<u32>(11794u, 91361u, 4294967295u, 860u), false), Struct_1(vec3<f32>(478f, -813f, -1802f), vec2<bool>(false, false), vec4<u32>(80127u, 4294967295u, 22548u, 18144u), true), Struct_1(vec3<f32>(1471f, -512f, 337f), vec2<bool>(false, false), vec4<u32>(5976u, 88983u, 73159u, 1u), false), Struct_1(vec3<f32>(1257f, -517f, 807f), vec2<bool>(false, false), vec4<u32>(39968u, 82065u, 1u, 1u), true), Struct_1(vec3<f32>(-1388f, -1268f, 478f), vec2<bool>(true, true), vec4<u32>(4294967295u, 0u, 14664u, 41059u), true), Struct_1(vec3<f32>(-313f, 1192f, -934f), vec2<bool>(false, false), vec4<u32>(4294967295u, 24640u, 11986u, 4294967295u), false), Struct_1(vec3<f32>(-633f, -1172f, -960f), vec2<bool>(true, false), vec4<u32>(76084u, 5781u, 0u, 34727u), true), Struct_1(vec3<f32>(-1368f, -136f, -204f), vec2<bool>(true, false), vec4<u32>(26148u, 1u, 64939u, 17754u), true), Struct_1(vec3<f32>(736f, 124f, -722f), vec2<bool>(false, true), vec4<u32>(0u, 38712u, 100583u, 4294967295u), false));

var<private> global1: u32 = 0u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = !arg_3.b;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1331f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1055f - -227f) + arg_3.a.x), _wgslsmith_f_op_f32(arg_2.a.x + -1433f))));
    var var_2 = arg_3;
    global0 = array<Struct_1, 12>();
    global1 = arg_2.c.x;
    return !var_0;
}

fn func_3() -> u32 {
    var var_0 = true & func_2(~u_input.a << (u_input.b.x % 32u), select(vec2<bool>(true, true), func_2(-u_input.a, vec2<bool>(true, true), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 4294967295u), 12u)], Struct_1(vec3<f32>(1626f, 446f, -1419f), vec2<bool>(false, true), vec4<u32>(u_input.b.x, u_input.b.x, 59410u, 4294967295u), true)), vec2<bool>(true, true)), global0[_wgslsmith_index_u32(~237u, 12u)], global0[_wgslsmith_index_u32(u_input.b.x, 12u)]).x;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-369f - _wgslsmith_f_op_f32(step(1092f, -1226f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -596f))) * -829f));
    var var_2 = global0[_wgslsmith_index_u32(~0u, 12u)];
    var var_3 = 20562u;
    var_0 = true;
    return select(u_input.b.x | countOneBits(var_2.c.x), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~(~var_2.c), countOneBits(max(var_2.c, var_2.c))), ~vec4<u32>(u_input.b.x, var_2.c.x, u_input.b.x, 4294967295u) ^ vec4<u32>(25312u, 1u, var_2.c.x, var_2.c.x)), !any(select(select(var_2.b, var_2.b, var_2.b.x), vec2<bool>(var_2.b.x, false), var_2.b)));
}

fn func_1() -> Struct_1 {
    global1 = firstLeadingBit(countOneBits(10820u) ^ u_input.b.x);
    global1 = u_input.b.x;
    global0 = array<Struct_1, 12>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-895f, -657f, -156f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1039f, -160f, 803f) * vec3<f32>(-1911f, 731f, -795f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(600f, -1218f, -104f)))))), func_2(-(~1i), vec2<bool>(true, all(vec4<bool>(true, true, true, true))), global0[_wgslsmith_index_u32(~(~(~u_input.b.x)), 12u)], global0[_wgslsmith_index_u32(u_input.b.x, 12u)]), _wgslsmith_clamp_vec4_u32(~vec4<u32>(~33982u, abs(4294967295u), func_3(), firstLeadingBit(4294967295u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b.x, 1962u, u_input.b.x, 1u), vec4<u32>(0u, u_input.b.x, 1u, u_input.b.x) | vec4<u32>(u_input.b.x, 41670u, u_input.b.x, 10300u)), vec4<u32>(firstLeadingBit(u_input.b.x), firstTrailingBit(31641u), u_input.b.x, u_input.b.x)), false);
    var var_1 = _wgslsmith_sub_u32(~4294967295u, var_0.c.x);
    return var_0;
}

fn func_4(arg_0: Struct_1) -> i32 {
    let var_0 = func_1();
    global1 = select(func_1().c.x, var_0.c.x, any(select(vec3<bool>(!arg_0.b.x, all(vec4<bool>(arg_0.d, false, true, var_0.d)), true), vec3<bool>(any(vec3<bool>(true, true, var_0.b.x)), !var_0.b.x, arg_0.a.x > 3572f), vec3<bool>(true, false != arg_0.b.x, var_0.b.x))));
    global1 = _wgslsmith_clamp_u32(var_0.c.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(54413u, firstLeadingBit(_wgslsmith_dot_vec3_u32(var_0.c.zwz, var_0.c.xwx))), arg_0.c.x), 7270u);
    global0 = array<Struct_1, 12>();
    global1 = ~abs(_wgslsmith_mult_u32(40915u | arg_0.c.x, ~u_input.b.x));
    return -_wgslsmith_dot_vec4_i32(-select(vec4<i32>(u_input.a, u_input.a, u_input.a, 0i) & vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a), vec4<i32>(-2147483647i, u_input.a, u_input.a, -2147483647i) & vec4<i32>(-29046i, 2147483647i, 45051i, u_input.a), !vec4<bool>(var_0.b.x, var_0.b.x, false, true)), vec4<i32>(u_input.a, u_input.a, 1i << (var_0.c.x % 32u), -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(0i, 11959i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 40290i;
    global0 = array<Struct_1, 12>();
    var_0 = func_4(func_1());
    var_0 = select(-1i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -26070i, u_input.a), vec3<i32>(u_input.a, 1i, u_input.a)), vec3<i32>(u_input.a, u_input.a, u_input.a)) ^ countOneBits(vec3<i32>(u_input.a, 0i, u_input.a)), _wgslsmith_mod_vec3_i32(-vec3<i32>(16192i, u_input.a, u_input.a), _wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.a, u_input.a, -1i), vec3<i32>(u_input.a, -45197i, 26210i) >> (vec3<u32>(u_input.b.x, 1u, 1u) % vec3<u32>(32u))))), true);
    var_0 = -1i;
    let var_1 = u_input.a;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-125f, _wgslsmith_f_op_f32(760f + -313f), 486f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, -1679f, 907f), vec3<f32>(1658f, -873f, 1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-512f, 1000f, -1000f) + vec3<f32>(-153f, -485f, 206f)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false))))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1009f, -925f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(532f, -697f, 456f)))))), vec2<bool>(true, true), vec4<u32>(u_input.b.x, ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(5042u, 4294967295u, u_input.b.x, 5716u), vec4<u32>(u_input.b.x, 73247u, u_input.b.x, u_input.b.x)), 1u), reverseBits(u_input.b.x), ~(12130u & max(u_input.b.x, 66463u))), u_input.b.x <= 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1377f))))))), max(var_1, 40998i));
}

