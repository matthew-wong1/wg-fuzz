struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<i32, 5> = array<i32, 5>(0i, -27967i, 46020i, -33689i, -41781i);

var<private> global2: u32 = 1u;

var<private> global3: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec3<u32>) -> i32 {
    var var_0 = Struct_2(Struct_1(true, countOneBits(4294967295u), ~firstTrailingBit(~vec3<i32>(global1[_wgslsmith_index_u32(arg_2.x, 5u)], global1[_wgslsmith_index_u32(arg_2.x, 5u)], 2147483647i)), abs(u_input.d), -firstLeadingBit(~(-2147483647i))));
    let var_1 = Struct_2(arg_0.a);
    let var_2 = arg_0;
    let var_3 = var_2.a;
    let var_4 = var_2.a.a;
    return _wgslsmith_add_i32(-_wgslsmith_clamp_i32(-17060i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.e, var_3.c.x, 0i, -19561i), u_input.b), global1[_wgslsmith_index_u32(abs(~0u), 5u)]), 0i);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> vec3<i32> {
    let var_0 = Struct_1(false, _wgslsmith_div_u32(abs(~arg_1.a.b & _wgslsmith_add_u32(1u, arg_0.a.b)), ~_wgslsmith_clamp_u32(arg_0.a.b, arg_0.a.b, arg_1.a.b)), select(arg_2.c, -arg_2.c << (abs(vec3<u32>(0u, arg_1.a.b, arg_2.b)) % vec3<u32>(32u)), !select(vec3<bool>(arg_2.a, false, false), vec3<bool>(arg_1.a.a, arg_2.a, false), vec3<bool>(arg_0.a.a, arg_2.a, true))) & firstLeadingBit(countOneBits(-vec3<i32>(35046i, -3119i, u_input.d))), global1[_wgslsmith_index_u32(~(~(~_wgslsmith_clamp_u32(arg_0.a.b, 4294967295u, arg_2.b))), 5u)], _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~arg_0.a.c, arg_0.a.c), arg_1.a.e));
    let var_1 = Struct_1(true, 1u, vec3<i32>(arg_3 << (arg_1.a.b % 32u), 0i, ~_wgslsmith_sub_i32(-u_input.a, u_input.d)), arg_3, reverseBits(global1[_wgslsmith_index_u32(arg_2.b, 5u)]));
    global1 = array<i32, 5>();
    let var_2 = Struct_2(arg_2);
    let var_3 = abs(~countOneBits(~firstLeadingBit(vec2<u32>(1u, var_0.b))));
    return -_wgslsmith_clamp_vec3_i32(var_0.c, countOneBits(vec3<i32>(-76083i, arg_1.a.d >> (arg_1.a.b % 32u), select(2147483647i, arg_3, global3.x))), -vec3<i32>(0i, 48798i, var_0.d));
}

fn func_2(arg_0: bool) -> f32 {
    global3 = vec3<bool>(arg_0, arg_0, !(197f <= _wgslsmith_f_op_f32(sign(-1505f))) && any(select(select(vec3<bool>(true, false, false), vec3<bool>(global3.x, global3.x, arg_0), vec3<bool>(true, true, true)), vec3<bool>(true, false, arg_0), true)));
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1148f)) + -821f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1050f * 204f)))));
    var var_2 = Struct_2(Struct_1(arg_0, max(~32392u, 29974u), -_wgslsmith_add_vec3_i32(select(vec3<i32>(global1[_wgslsmith_index_u32(27874u, 5u)], 0i, u_input.a), u_input.b.zzw, vec3<bool>(global3.x, arg_0, true)), ~vec3<i32>(-17546i, 8992i, 2147483647i)), -1i, global1[_wgslsmith_index_u32(~1u, 5u)]));
    let var_3 = Struct_1(var_2.a.a, 0u, firstLeadingBit(abs(func_4(Struct_2(Struct_1(true, 0u, vec3<i32>(u_input.b.x, -26252i, u_input.a), u_input.a, 2147483647i)), Struct_2(var_2.a), Struct_1(var_2.a.a, var_2.a.b, var_2.a.c, u_input.b.x, 0i), func_3(Struct_2(Struct_1(false, 43106u, u_input.b.xww, 0i, -38427i)), vec2<f32>(var_1, 903f), vec3<u32>(var_2.a.b, 34851u, 1u))))), global1[_wgslsmith_index_u32(countOneBits(13u), 5u)], _wgslsmith_add_i32(~1i, ~u_input.b.x));
    return 1302f;
}

fn func_1(arg_0: i32, arg_1: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(step(361f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2289f * 735f) * _wgslsmith_f_op_f32(func_2(global3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-264f)) - 1276f))));
    let var_1 = Struct_1(true, arg_1, vec3<i32>(1i, -2147483647i, _wgslsmith_add_i32(-1i, arg_0)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(63205i, u_input.c, u_input.a), ~vec3<i32>(-45279i, global1[_wgslsmith_index_u32(53673u, 5u)], -24703i) ^ vec3<i32>(-1i, global1[_wgslsmith_index_u32(arg_1, 5u)], u_input.a)), ~0i, i32(-1i) * -global1[_wgslsmith_index_u32(arg_1, 5u)]), _wgslsmith_mult_i32(arg_0, 1i));
    let var_2 = Struct_2(Struct_1(any(!select(vec3<bool>(false, global3.x, false), vec3<bool>(var_1.a, global3.x, false), var_1.a)), reverseBits(var_1.b), ~countOneBits(u_input.b.xwz), 4846i, countOneBits(global1[_wgslsmith_index_u32(7785u, 5u)] >> (_wgslsmith_clamp_u32(0u, var_1.b, var_1.b) % 32u))));
    let var_3 = 12972u;
    global1 = array<i32, 5>();
    return select(vec4<bool>(true, true, any(!vec2<bool>(global3.x, false)), 37503u >= _wgslsmith_mod_u32(var_3, 1u)), vec4<bool>(any(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, var_2.a.a), global3.x)), !any(!vec3<bool>(var_2.a.a, global3.x, true)), all(vec3<bool>(select(var_1.a, var_2.a.a, false), true, var_1.a | global3.x)), select(true, true, global3.x)), select(select(select(!vec4<bool>(global3.x, true, false, var_2.a.a), vec4<bool>(var_2.a.a, true, false, false), !vec4<bool>(var_1.a, true, var_2.a.a, var_1.a)), vec4<bool>(!var_2.a.a, !var_1.a, false, var_2.a.a), select(vec4<bool>(var_2.a.a, false, var_1.a, false), !vec4<bool>(global3.x, var_1.a, var_2.a.a, false), true)), select(!vec4<bool>(true, true, true, global3.x), vec4<bool>(all(global3.xy), false, var_2.a.a, select(global3.x, var_2.a.a, false)), select(vec4<bool>(var_2.a.a, false, var_2.a.a, var_1.a), !vec4<bool>(var_2.a.a, var_1.a, var_2.a.a, var_1.a), select(vec4<bool>(var_1.a, global3.x, global3.x, global3.x), vec4<bool>(true, var_1.a, var_1.a, global3.x), vec4<bool>(var_1.a, global3.x, global3.x, var_1.a)))), var_2.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_i32(-2147483647i, -_wgslsmith_sub_i32(~u_input.d, ~u_input.c) >> (1u % 32u));
    var var_0 = !select(!func_1(~(-1i), ~0u), vec4<bool>(true, global3.x, true, true), true);
    global3 = vec3<bool>(!all(!vec3<bool>(true, global3.x, false)), !select(any(select(vec4<bool>(global3.x, global3.x, false, global3.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.x)), func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(27234i, 8133i, global1[_wgslsmith_index_u32(0u, 5u)], 49898i), vec4<i32>(u_input.c, global1[_wgslsmith_index_u32(1u, 5u)], global1[_wgslsmith_index_u32(1u, 5u)], -37487i)), min(29429u, 11320u)).x, 1615f > _wgslsmith_f_op_f32(trunc(1371f))), global3.x);
    let var_1 = 1u;
    let var_2 = ~(~vec4<u32>(_wgslsmith_mult_u32(1u, 4294967295u), max(firstLeadingBit(var_1), _wgslsmith_mod_u32(var_1, 0u)), var_1, 4294967295u));
    let var_3 = vec3<i32>(abs(-832i), ~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.b.xx, min(vec2<i32>(u_input.d, global1[_wgslsmith_index_u32(1u, 5u)]), u_input.b.yz)), 1i), ~(~select(~(-15544i), u_input.a, !global3.x)));
    global1 = array<i32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(13991u, vec4<f32>(1f, 1f, 1f, 1f), 1i, vec3<i32>(-firstLeadingBit(global1[_wgslsmith_index_u32(1u, 5u)]) ^ u_input.b.x, -2147483647i, -3133i ^ var_3.x), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2016f))), _wgslsmith_f_op_f32(floor(-1949f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1148f, -579f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1284f, _wgslsmith_f_op_f32(1747f + 1000f), _wgslsmith_f_op_f32(1431f + 2473f)))));
}

