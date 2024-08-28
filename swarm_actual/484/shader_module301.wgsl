struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_3,
    d: vec3<u32>,
    e: bool,
}

struct Struct_5 {
    a: vec2<bool>,
    b: bool,
    c: vec2<i32>,
    d: vec4<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<u32>, 31> = array<vec2<u32>, 31>(vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(95267u, 4083u), vec2<u32>(4294967295u, 1u), vec2<u32>(3303u, 4127u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(40860u, 1u), vec2<u32>(0u, 27396u), vec2<u32>(20516u, 1u), vec2<u32>(73249u, 1u), vec2<u32>(47903u, 5788u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(29836u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(39104u, 23272u), vec2<u32>(10610u, 97154u), vec2<u32>(160215u, 18254u), vec2<u32>(4294967295u, 0u), vec2<u32>(120149u, 12518u), vec2<u32>(4294967295u, 14639u), vec2<u32>(28486u, 34619u), vec2<u32>(0u, 0u), vec2<u32>(0u, 41927u), vec2<u32>(128308u, 0u), vec2<u32>(1u, 834u), vec2<u32>(15346u, 9582u), vec2<u32>(1u, 47927u), vec2<u32>(1u, 34150u), vec2<u32>(3960u, 4294967295u), vec2<u32>(1u, 0u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_5, arg_3: bool) -> bool {
    global0 = ~firstTrailingBit(arg_0.a.x);
    var var_0 = vec2<i32>(arg_0.a.x >> (firstLeadingBit(4294967295u) % 32u), max(14042i, max(u_input.a.x, -1i) & arg_2.e));
    global1 = array<vec2<u32>, 31>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -140f)) * _wgslsmith_f_op_f32(f32(-1f) * -690f));
    var_0 = ~vec2<i32>(-2147483647i, ~1i);
    return true;
}

fn func_2(arg_0: vec3<u32>, arg_1: i32) -> bool {
    let var_0 = vec3<i32>(firstTrailingBit(u_input.a.x), abs(_wgslsmith_mult_i32(abs(64033i), arg_1) >> (_wgslsmith_div_u32(1u, ~1u) % 32u)), _wgslsmith_mult_i32(select(-7136i, arg_1, true) & firstTrailingBit(arg_1), ~2147483647i));
    let var_1 = Struct_2(~var_0, Struct_1(vec3<bool>(true, true, all(vec4<bool>(true, true, false, false)) && all(vec3<bool>(true, true, false)))), Struct_1(select(vec3<bool>(true, true, func_3(Struct_2(vec3<i32>(47892i, arg_1, arg_1), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, false, false))), -1000f, Struct_5(vec2<bool>(false, false), true, vec2<i32>(u_input.a.x, var_0.x), vec4<bool>(true, true, true, true), -57810i), false)), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(false, false, false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))))));
    var var_2 = var_1.b.a.x;
    var var_3 = select(vec3<bool>(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_1.a.x, -2147483647i, -2147483647i), var_0 << (arg_0 % vec3<u32>(32u))) <= firstTrailingBit(-50499i << (1u % 32u)), false, true && var_1.b.a.x), select(!(!(!vec3<bool>(var_1.c.a.x, true, var_1.b.a.x))), !select(vec3<bool>(var_1.b.a.x, var_1.b.a.x, var_1.c.a.x), select(var_1.c.a, var_1.b.a, var_1.b.a.x), var_1.c.a.x), vec3<bool>(!any(vec4<bool>(var_1.c.a.x, var_1.c.a.x, false, true)), any(select(vec4<bool>(var_1.c.a.x, false, var_1.c.a.x, true), vec4<bool>(true, var_1.b.a.x, var_1.b.a.x, false), vec4<bool>(var_1.b.a.x, var_1.c.a.x, true, var_1.c.a.x))), !var_1.b.a.x)), !var_1.c.a);
    var_2 = !var_3.x;
    return false;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec4<bool>, arg_3: bool) -> Struct_5 {
    var var_0 = Struct_1(arg_2.xyz);
    var var_1 = min(vec4<i32>(_wgslsmith_add_i32(0i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, u_input.a.x, 2147483647i), vec4<i32>(arg_1, 1i, u_input.a.x, -2147483647i)), ~(~u_input.a.x)), arg_1, arg_1, arg_1), -vec4<i32>(u_input.a.x, ~(-67478i), arg_1, u_input.a.x) & ((_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -25182i, 17684i, 0i), vec4<i32>(u_input.a.x, u_input.a.x, arg_1, 15007i)) << (vec4<u32>(12048u, 0u, 58230u, 4294967295u) % vec4<u32>(32u))) << (~vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))));
    var var_2 = Struct_2(~(-(vec3<i32>(u_input.a.x, var_1.x, arg_1) << (vec3<u32>(29859u, 0u, 36182u) % vec3<u32>(32u)))), Struct_1(vec3<bool>(true, false, !arg_2.x)), Struct_1(arg_2.wzy));
    var var_3 = Struct_3(Struct_1(vec3<bool>(arg_0 == arg_0, -5944i >= _wgslsmith_add_i32(u_input.a.x, var_1.x), true)));
    var var_4 = var_3.a;
    return Struct_5(vec2<bool>(all(var_2.b.a.yz) || var_2.b.a.x, arg_2.x), all(vec2<bool>(arg_3, true)), firstTrailingBit(vec2<i32>(_wgslsmith_dot_vec2_i32(countOneBits(var_1.yw), vec2<i32>(-58046i, var_2.a.x)), 1i)), !arg_2, -1i);
}

fn func_1() -> Struct_5 {
    global1 = array<vec2<u32>, 31>();
    let var_0 = countOneBits(-vec2<i32>(2147483647i, -u_input.a.x) ^ u_input.a.xy);
    var var_1 = Struct_1(!vec3<bool>(true, any(vec4<bool>(true, true, true, true)), false));
    global1 = array<vec2<u32>, 31>();
    var var_2 = ~15316i;
    return func_4(-305f, countOneBits(_wgslsmith_mult_i32(~(-8935i), -1i)), vec4<bool>(func_2(~vec3<u32>(1u, 1u, 1u), -2147483647i), !var_1.a.x & !var_1.a.x, func_3(Struct_2(u_input.a, Struct_1(var_1.a), Struct_1(var_1.a)), _wgslsmith_f_op_f32(-127f - 2126f), Struct_5(vec2<bool>(var_1.a.x, false), var_1.a.x, u_input.a.yy, vec4<bool>(true, var_1.a.x, true, false), 2147483647i), false) | (true || var_1.a.x), any(vec4<bool>(select(true, var_1.a.x, var_1.a.x), true, false, any(vec2<bool>(true, false))))), !var_1.a.x);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_5, arg_2: vec4<u32>, arg_3: Struct_2) -> vec2<f32> {
    var var_0 = arg_3;
    var var_1 = vec2<i32>(arg_3.a.x, u_input.a.x);
    var var_2 = arg_3.a.x << (countOneBits(_wgslsmith_clamp_u32(_wgslsmith_div_u32(~arg_2.x, ~14175u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, 114539u), _wgslsmith_mult_vec2_u32(global1[_wgslsmith_index_u32(arg_2.x, 31u)], vec2<u32>(arg_2.x, 1u))), 64064u)) % 32u);
    let var_3 = arg_3;
    var_0 = var_3;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -563f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(707f, -310f) - vec2<f32>(668f, -620f)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1131f, -1257f), vec2<f32>(1000f, 1000f)))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(470f, -119f), vec2<f32>(-774f, -471f))), vec2<f32>(_wgslsmith_div_f32(574f, -242f), _wgslsmith_f_op_f32(select(-1512f, 992f, arg_0.a.x)))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-761f, _wgslsmith_f_op_f32(2648f - 201f)))), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(-2147483647i) >> (_wgslsmith_sub_u32(73567u, ~_wgslsmith_clamp_u32(4294967295u, ~4294967295u, 43316u)) % 32u);
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(722f, -3213f))))), _wgslsmith_f_op_vec2_f32(func_5(Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)), func_1(), vec4<u32>(16931u, ~1u, 0u, 0u), Struct_2(firstTrailingBit(u_input.a), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, true)))))))));
    global0 = ~(7446i << (_wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(4294967295u), ~16610u, 72134u), abs(vec3<u32>(1u, 66649u, 4294967295u))) % 32u));
    global1 = array<vec2<u32>, 31>();
    var var_1 = max(vec4<i32>(u_input.a.x, ~(-6300i), firstLeadingBit(1i), 1i), ~(-vec4<i32>(u_input.a.x, 2147483647i, 1i, 4381i)) | vec4<i32>(i32(-1i) * -1i, -2147483647i, u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x))) << (select(vec4<u32>(4294967295u, min(0u, 6750u), 17524u, _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(5514u, 31u)], global1[_wgslsmith_index_u32(27953u, 31u)])) & _wgslsmith_add_vec4_u32(vec4<u32>(953u, 19454u, 12820u, 1u), countOneBits(vec4<u32>(22901u, 1u, 1u, 1u))), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(23641u, 1u, 0u, 0u), vec4<u32>(34990u, 44859u, 0u, 90213u), true)), firstLeadingBit(~vec4<u32>(4294967295u, 56387u, 48274u, 5488u))), any(vec4<bool>(func_3(Struct_2(vec3<i32>(u_input.a.x, -1149i, -4882i), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, false, true))), -862f, Struct_5(vec2<bool>(false, false), false, vec2<i32>(u_input.a.x, 0i), vec4<bool>(false, false, false, true), u_input.a.x), true), true, true, func_4(var_0.x, u_input.a.x, vec4<bool>(false, true, true, false), false).a.x))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(var_0.x * var_0.x))), var_0.x, 1000f, var_0.x));
}

