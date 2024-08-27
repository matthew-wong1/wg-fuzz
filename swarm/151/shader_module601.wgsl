struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: bool,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 13>;

var<private> global1: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec3<u32>(1u, 21101u, 50158u), vec4<i32>(1i, 1i, -2741i, 2147483647i), false, vec2<u32>(4294967295u, 0u)), Struct_1(vec3<u32>(0u, 20692u, 30601u), vec4<i32>(2147483647i, i32(-2147483648), 9749i, 0i), false, vec2<u32>(51579u, 1u)), Struct_1(vec3<u32>(0u, 0u, 12307u), vec4<i32>(-44167i, i32(-2147483648), -72480i, -1i), true, vec2<u32>(1u, 1u)), Struct_1(vec3<u32>(2284u, 4294967295u, 0u), vec4<i32>(22433i, -50589i, -1i, 0i), false, vec2<u32>(4294967295u, 3342u)), Struct_1(vec3<u32>(0u, 0u, 4294967295u), vec4<i32>(12501i, -1i, -19540i, 2147483647i), false, vec2<u32>(37814u, 1u)), Struct_1(vec3<u32>(1u, 32684u, 3153u), vec4<i32>(70378i, -1761i, 44022i, -15722i), false, vec2<u32>(24643u, 0u)), Struct_1(vec3<u32>(0u, 1818u, 1u), vec4<i32>(-1878i, -10667i, 1i, 33271i), false, vec2<u32>(102975u, 4294967295u)));

var<private> global2: array<Struct_1, 14>;

var<private> global3: array<bool, 5> = array<bool, 5>(true, true, true, true, false);

var<private> global4: Struct_1 = Struct_1(vec3<u32>(0u, 1u, 1u), vec4<i32>(-1i, 2147483647i, 25707i, 2147483647i), false, vec2<u32>(4294967295u, 77126u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = select(select(select(!(!vec2<bool>(global3[_wgslsmith_index_u32(3754u, 5u)], global4.c)), vec2<bool>(true, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(global4.d.x, 13u)], global0[_wgslsmith_index_u32(global4.d.x, 13u)]), 5u)]), vec2<bool>(true, false)), select(select(select(vec2<bool>(false, true), vec2<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 5u)]), false), !vec2<bool>(global4.c, global3[_wgslsmith_index_u32(global4.a.x, 5u)]), !vec2<bool>(global3[_wgslsmith_index_u32(1u, 5u)], global4.c)), vec2<bool>(global4.d.x >= global4.d.x, any(vec4<bool>(true, false, global3[_wgslsmith_index_u32(global4.a.x, 5u)], global4.c))), all(!vec4<bool>(global3[_wgslsmith_index_u32(33335u, 5u)], false, global4.c, global4.c))), true), vec2<bool>(all(vec2<bool>(false, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(798f + -1101f)) != _wgslsmith_f_op_f32(trunc(-445f))), !(!vec2<bool>(false, any(vec4<bool>(true, global3[_wgslsmith_index_u32(49413u, 5u)], global4.c, true)))));
    global1 = array<Struct_1, 7>();
    let var_1 = global4.a.zz;
    global4 = global1[_wgslsmith_index_u32(abs(~var_1.x), 7u)];
    var var_2 = global4.b.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(789f, 1216f))))) + _wgslsmith_f_op_f32(-978f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(122f)) - _wgslsmith_f_op_f32(round(1623f))))));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1760f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1533f, _wgslsmith_f_op_f32(-256f - -609f), select(false, arg_0.x, global4.c))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-438f)) * -1788f)), -1444f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1796f, -2746f, 1058f, 1318f), vec4<f32>(-645f, 501f, -639f, 1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1127f, -728f, -662f, -1198f) - vec4<f32>(436f, -2243f, -434f, -277f))))) - vec4<f32>(-1335f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2090f, -885f)) * _wgslsmith_f_op_f32(abs(1402f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-524f - -587f)), -1033f))));
    var var_1 = all(select(!(!vec2<bool>(arg_0.x, global4.c)), arg_0.xw, !vec2<bool>(true, arg_1.c))) || select(true, all(arg_0.yzy), arg_1.c);
    global0 = array<vec4<u32>, 13>();
    global0 = array<vec4<u32>, 13>();
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~abs(_wgslsmith_sub_u32(countOneBits(global4.a.x), arg_1.a.x)), reverseBits(_wgslsmith_dot_vec2_u32((vec2<u32>(1u, global4.a.x) ^ global4.d) | ~vec2<u32>(49839u, 0u), ~global4.d)), ~arg_1.d.x), 7u)];
    return Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_add_u32(global4.d.x, 64687u) >> (var_2.a.x % 32u), _wgslsmith_mult_u32(15612u, var_2.d.x & 4294967295u), ~4294967295u), global4.a), global4.b, 1307f <= var_0.x, _wgslsmith_add_vec2_u32(vec2<u32>(var_2.a.x, var_2.d.x), vec2<u32>(4294967295u, arg_1.a.x)));
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: vec2<i32>) -> i32 {
    global2 = array<Struct_1, 14>();
    var var_0 = vec4<f32>(231f, _wgslsmith_f_op_f32(f32(-1f) * -2328f), 1242f, 840f);
    var var_1 = func_2(vec4<bool>(true, true, (~global4.a.x | 0u) >= 1u, true), global1[_wgslsmith_index_u32(global4.d.x, 7u)]);
    var var_2 = !vec2<bool>(true, func_2(select(vec4<bool>(global3[_wgslsmith_index_u32(var_1.a.x, 5u)], false, global4.c, true), vec4<bool>(true, false, global3[_wgslsmith_index_u32(30698u, 5u)], true), global4.c), func_2(vec4<bool>(global4.c, false, var_1.c, true), Struct_1(var_1.a, vec4<i32>(u_input.b.x, -11117i, var_1.b.x, -2966i), global3[_wgslsmith_index_u32(global4.d.x, 5u)], global4.d))).c && any(vec2<bool>(false, false)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 7>();
    let var_0 = global4.b;
    global1 = array<Struct_1, 7>();
    let var_1 = Struct_1(firstTrailingBit(vec3<u32>(firstLeadingBit(global4.a.x), 34538u, global4.d.x)), vec4<i32>(global4.b.x, countOneBits((var_0.x << (global4.a.x % 32u)) ^ _wgslsmith_clamp_i32(1i, u_input.b.x, u_input.a.x)), ~abs(_wgslsmith_div_i32(20227i, 36606i)), func_1(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, -46i, u_input.b.x, -60440i) & global4.b, global4.b), global4.b.x, var_0.ww)), !all(select(select(vec2<bool>(global4.c, global4.c), vec2<bool>(false, global3[_wgslsmith_index_u32(global4.a.x, 5u)]), vec2<bool>(true, false)), !vec2<bool>(true, global3[_wgslsmith_index_u32(10842u, 5u)]), all(vec4<bool>(false, true, global3[_wgslsmith_index_u32(127914u, 5u)], global3[_wgslsmith_index_u32(global4.a.x, 5u)])))), vec2<u32>(global4.a.x, global4.d.x) >> (~global4.d % vec2<u32>(32u)));
    global3 = array<bool, 5>();
    var var_2 = _wgslsmith_f_op_f32(1930f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-659f - 981f))) * _wgslsmith_f_op_f32(-247f - _wgslsmith_f_op_f32(f32(-1f) * -131f))) + _wgslsmith_f_op_f32(func_3())));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x);
}

