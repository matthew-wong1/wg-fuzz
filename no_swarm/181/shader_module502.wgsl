struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(1209f, -808f), 2147483647i);

var<private> global2: array<Struct_2, 28>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32) -> vec4<bool> {
    var var_0 = true;
    let var_1 = firstLeadingBit(-(~(~select(u_input.b, -39547i, false))));
    var_0 = !all(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))), vec2<bool>(true, true), vec2<bool>(true, true)));
    global0 = Struct_2(global0.a);
    var var_2 = Struct_1(global1.a, global0.a.b);
    return select(vec4<bool>(true, false, any(vec2<bool>(any(vec4<bool>(true, false, true, false)), any(vec3<bool>(false, false, true)))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)))), !vec4<bool>(select(any(vec4<bool>(true, false, true, false)), any(vec4<bool>(true, true, true, true)), select(true, false, false)), _wgslsmith_div_f32(global0.a.a.x, -235f) > -1522f, !any(vec3<bool>(false, false, true)), false), vec4<bool>(any(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), true, false, all(vec2<bool>(true, false))));
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = select(!vec4<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), all(vec4<bool>(true, true, true, false)), !all(vec3<bool>(true, true, true)), true), !select(vec4<bool>(true, true, true, global1.a.x >= 223f), func_3(_wgslsmith_f_op_f32(-global1.a.x)), all(func_3(global0.a.a.x).zyz)), true);
    let var_1 = arg_1.xwz;
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-549f, _wgslsmith_f_op_f32(step(1122f, global0.a.a.x)), _wgslsmith_div_f32(1521f, global1.a.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-411f, arg_3.a.x, global0.a.a.x)), vec3<f32>(global0.a.a.x, 852f, global1.a.x)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, global0.a.a.x, global1.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, arg_3.a.x, -569f) - vec3<f32>(arg_3.a.x, arg_3.a.x, global1.a.x)), !var_0.x)), vec3<f32>(_wgslsmith_f_op_f32(arg_3.a.x - 134f), _wgslsmith_f_op_f32(max(global1.a.x, global0.a.a.x)), _wgslsmith_f_op_f32(-181f - global1.a.x)), var_0.xxx)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global1.a.x, 387f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, global0.a.a.x, -128f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, -896f, -1582f)))), var_0.x))));
    global2 = array<Struct_2, 28>();
    var var_3 = true;
    return global2[_wgslsmith_index_u32(arg_2.x, 28u)];
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_2) -> u32 {
    global0 = Struct_2(func_2(firstTrailingBit(max(-u_input.b, 1i)), vec4<i32>(_wgslsmith_add_i32(-37574i, global0.a.b), arg_2.a.b, u_input.b, -18148i), reverseBits(_wgslsmith_sub_vec4_u32(~vec4<u32>(7698u, 31836u, u_input.a, 1u), select(vec4<u32>(1u, u_input.c.x, u_input.a, u_input.c.x), vec4<u32>(u_input.c.x, 62749u, u_input.c.x, 1u), arg_1.x))), func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(18978i, arg_2.a.b, u_input.b) >> (vec3<u32>(u_input.a, 0u, u_input.c.x) % vec3<u32>(32u)), vec3<i32>(2147483647i, 8150i, u_input.b) << (vec3<u32>(1u, u_input.c.x, u_input.a) % vec3<u32>(32u))), vec4<i32>(31030i, ~15467i, _wgslsmith_mult_i32(global0.a.b, -1i), _wgslsmith_mult_i32(global0.a.b, global0.a.b)), vec4<u32>(~u_input.c.x, 4294967295u, _wgslsmith_div_u32(2774u, u_input.c.x), _wgslsmith_add_u32(1u, 24293u)), arg_2.a).a).a);
    var var_0 = global2[_wgslsmith_index_u32(u_input.c.x, 28u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, -643f, arg_2.a.a.x))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-223f, 440f, -529f) + vec3<f32>(global0.a.a.x, var_0.a.a.x, 2544f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a.x, -1590f, var_0.a.a.x))), !select(vec3<bool>(true, false, false), vec3<bool>(false, arg_1.x, arg_1.x), vec3<bool>(true, arg_1.x, true))))));
    global0 = func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(52728i, firstLeadingBit(global1.b) & var_0.a.b, ~_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.b, -46343i, u_input.b, 2147483647i), vec4<i32>(8405i, -1235i, arg_2.a.b, global0.a.b))), vec3<i32>(~(-2147483647i), firstTrailingBit(u_input.b), _wgslsmith_add_i32(-1i, -1i)) ^ vec3<i32>(0i, -9150i, -arg_2.a.b)), vec4<i32>(12712i, global1.b, 21553i, countOneBits(firstLeadingBit(-14366i << (0u % 32u)))), ~(~(~(~vec4<u32>(u_input.a, 64008u, 42206u, u_input.c.x)))), func_2(~(countOneBits(1i) << (_wgslsmith_clamp_u32(0u, 1u, u_input.a) % 32u)), firstLeadingBit(vec4<i32>(-3866i, 1i, ~global0.a.b, global0.a.b)), vec4<u32>(u_input.a & u_input.a, abs(_wgslsmith_div_u32(u_input.c.x, 50185u)), _wgslsmith_dot_vec2_u32(~u_input.c, select(u_input.c, u_input.c, arg_1)), ~(~u_input.a)), global0.a).a);
    let var_2 = vec2<i32>(28620i, -29605i);
    return 48527u;
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    var var_0 = -min(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(global0.a.b, 236i, global0.a.b)), firstLeadingBit(vec3<i32>(1i, global0.a.b, u_input.b))), -6662i) << (func_4(_wgslsmith_f_op_f32(trunc(1207f)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), func_2(-select(7611i, global1.b, false), -firstTrailingBit(vec4<i32>(-1i, global0.a.b, u_input.b, 0i)), select(~vec4<u32>(0u, 31347u, 1u, 1u), ~vec4<u32>(u_input.a, u_input.c.x, 4294967295u, u_input.a), vec4<bool>(true, true, true, true)), global0.a)) % 32u);
    let var_1 = _wgslsmith_add_u32(21561u, _wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(~u_input.c, u_input.c), ~(~1u)));
    var var_2 = ~(0u ^ select(_wgslsmith_sub_u32(u_input.a, 37857u) & var_1, ~(~var_1), any(select(vec2<bool>(true, false), vec2<bool>(false, false), true))));
    let var_3 = vec4<f32>(-1250f, _wgslsmith_f_op_f32(min(global0.a.a.x, _wgslsmith_f_op_f32(165f + _wgslsmith_f_op_f32(-1254f * _wgslsmith_f_op_f32(-global1.a.x))))), -136f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.a.a.x - -981f)))) * global0.a.a.x));
    global2 = array<Struct_2, 28>();
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -185f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x + global0.a.a.x));
    global1 = global0.a;
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(global1.a.x)), global1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a.x)))), -34906i);
    var_1 = Struct_1(vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(abs(157f))), _wgslsmith_sub_i32(_wgslsmith_add_i32(0i, global1.b), reverseBits(1i)));
    var_0 = !(firstTrailingBit(~func_1(vec2<i32>(24598i, var_1.b))) >= u_input.a);
    let var_2 = ~select(vec4<u32>(0u, u_input.c.x, u_input.c.x, ~u_input.a), ~(vec4<u32>(12783u, u_input.a, 10844u, u_input.c.x) | vec4<u32>(0u, 14031u, 0u, 1u)) ^ firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 1u, u_input.a, u_input.a), vec4<u32>(32959u, u_input.a, 1061u, u_input.c.x))), vec4<bool>(true, true, true == any(vec2<bool>(false, false)), !all(vec4<bool>(true, true, false, true))));
    let var_3 = ~vec4<u32>(24276u, 0u, var_2.x, _wgslsmith_clamp_u32(var_2.x, 1u, _wgslsmith_div_u32(22659u, 1u)) ^ select(1u, ~u_input.a, all(vec3<bool>(false, false, true))));
    let var_4 = func_2(_wgslsmith_dot_vec4_i32(~select(vec4<i32>(global0.a.b, 82138i, u_input.b, 1049i), vec4<i32>(11349i, u_input.b, 921i, -1644i), vec4<bool>(false, true, true, false)), vec4<i32>(-1i) * -(vec4<i32>(u_input.b, -2147483647i, -1i, -34440i) ^ vec4<i32>(u_input.b, global0.a.b, var_1.b, global1.b))), max(reverseBits(-reverseBits(vec4<i32>(global1.b, global1.b, -2147483647i, 0i))), -(~vec4<i32>(-2147483647i, u_input.b, 0i, 1i))), max(vec4<u32>(countOneBits(var_3.x), var_2.x ^ 4294967295u, _wgslsmith_add_u32(42168u, 1u), select(func_1(vec2<i32>(-6824i, u_input.b)), 23956u, true)), select(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, u_input.a, var_3.x, var_3.x), vec4<u32>(var_2.x, 0u, var_2.x, 4294967295u)), var_2, false) ^ _wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.c.x, 4294967295u, 0u), var_3)), global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2574f, var_1.a.x)) + global1.a.x)))), global1.a.x, var_4.a.b, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(266f, _wgslsmith_f_op_f32(-global1.a.x)))))));
}

