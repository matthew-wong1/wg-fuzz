struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 21> = array<vec4<bool>, 21>(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false));

var<private> global1: Struct_2 = Struct_2(Struct_1(1u, true, 1i), 0u, -56638i, Struct_1(5078u, true, -13471i));

var<private> global2: vec4<bool>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec2<u32>, arg_3: i32) -> i32 {
    global0 = array<vec4<bool>, 21>();
    return _wgslsmith_add_i32(-(u_input.b & _wgslsmith_mult_i32(i32(-1i) * -31304i, -1i)), global1.c);
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(0u, any(select(vec2<bool>(true, global2.x), vec2<bool>(false, global2.x), vec2<bool>(global1.d.b, global2.x))) | (~global1.d.a == _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(4294967295u, u_input.a, u_input.a))), ~1i), _wgslsmith_div_u32(4294967295u, ~0u) | global1.b, -614i, global1.a);
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1507f, _wgslsmith_f_op_f32(abs(arg_0.x)), arg_0.x, _wgslsmith_f_op_f32(522f + _wgslsmith_f_op_f32(max(896f, 582f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -234f), arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), -398f) - vec4<f32>(303f, -766f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(1566f * arg_0.x))))));
    var var_2 = var_1;
    var_2 = var_1;
    var var_3 = ~u_input.b;
    return Struct_2(global1.a, min(_wgslsmith_div_u32(0u, ~var_0.d.a), reverseBits(u_input.a)), -((-40016i & global1.c) | -1i), global1.a);
}

fn func_3() -> vec3<u32> {
    var var_0 = vec2<i32>(~(-global1.a.c), i32(-1i) * -1i);
    var_0 = _wgslsmith_mult_vec2_i32(max(vec2<i32>(26525i, _wgslsmith_clamp_i32(1i, var_0.x, 19094i)), select(vec2<i32>(global1.a.c, u_input.c) & vec2<i32>(u_input.b, -1i), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, -40732i), vec2<i32>(-65473i, -13096i)), false)), -reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, var_0.x), vec2<i32>(1i, u_input.c)))) << (vec2<u32>(~0u, ~u_input.a) % vec2<u32>(32u));
    var_0 = _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(-_wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.b, var_0.x), ~vec2<i32>(u_input.b, -1i)), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_add_i32(global1.a.c, -29363i), -1i ^ var_0.x), vec2<i32>(var_0.x, var_0.x))), _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-global1.a.c, u_input.b), var_0.x), _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(-1i, -46503i)), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, var_0.x), vec2<i32>(global1.c, u_input.c))) >> (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)), select(vec2<i32>(_wgslsmith_add_i32(-1i, -2147483647i), 1i), abs(select(vec2<i32>(u_input.c, global1.a.c), vec2<i32>(global1.a.c, global1.a.c), vec2<bool>(global2.x, true))), true)));
    var var_1 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(251f, -191f) - vec2<f32>(-711f, -2171f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(762f, 184f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1518f, -242f)))), !vec2<bool>(global2.x, false))))).d;
    var var_2 = ~(~(~_wgslsmith_clamp_vec3_i32(vec3<i32>(5440i, var_0.x, -1i), vec3<i32>(2147483647i, global1.d.c, 49505i), vec3<i32>(-2147483647i, var_1.c, u_input.b)) | _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, -13735i, u_input.b) ^ vec3<i32>(global1.d.c, var_0.x, var_1.c), vec3<i32>(2147483647i, var_1.c, global1.d.c))));
    return _wgslsmith_add_vec3_u32(reverseBits(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global1.d.a, 27257u, global1.b), abs(vec3<u32>(var_1.a, 81035u, global1.b))), ~vec3<u32>(4294967295u, var_1.a, 34820u) | vec3<u32>(0u, 20825u, var_1.a))), vec3<u32>(abs(min(_wgslsmith_div_u32(51163u, 4294967295u), global1.a.a)), _wgslsmith_clamp_u32(global1.b, select(32436u, 30639u, any(vec4<bool>(true, global2.x, true, false))), 1u), reverseBits(firstTrailingBit(_wgslsmith_sub_u32(1u, 0u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.d;
    let var_1 = _wgslsmith_mult_i32(-1i >> ((_wgslsmith_add_u32(23227u, var_0.a) << (~33512u % 32u)) % 32u), _wgslsmith_dot_vec2_i32(min(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, var_0.c), vec2<i32>(-2694i, -1i)), min(vec2<i32>(2147483647i, -2042i), vec2<i32>(43383i, 16858i))), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, u_input.c), firstLeadingBit(vec2<i32>(global1.d.c, var_0.c))))) ^ func_1(_wgslsmith_f_op_f32(123f * 1083f), ~60505u, vec2<u32>(global1.a.a, countOneBits(global1.b)) ^ max(vec2<u32>(u_input.a, global1.b) << (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)), vec2<u32>(var_0.a, u_input.a) >> (vec2<u32>(u_input.a, var_0.a) % vec2<u32>(32u))), -firstLeadingBit(4405i));
    global1 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), vec2<f32>(-136f, -1000f))), vec2<f32>(_wgslsmith_f_op_f32(round(-509f)), _wgslsmith_div_f32(1041f, 1937f))))));
    var var_2 = global0[_wgslsmith_index_u32(0u, 21u)];
    var_2 = !select(global0[_wgslsmith_index_u32(global1.d.a, 21u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, 1u << (global1.b % 32u)), 21u)], true);
    var var_3 = vec2<i32>(max(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1648f, 245f) * vec2<f32>(-1000f, 838f)))).c, 0i), -var_0.c);
    var_3 = vec2<i32>(u_input.c, func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-638f, 512f) - vec2<f32>(449f, 1287f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1204f) - vec2<f32>(385f, 1831f)))).c) | -vec2<i32>(_wgslsmith_mod_i32(~global1.a.c, ~global1.a.c), ~(~var_1));
    var var_4 = vec3<u32>(global1.a.a, u_input.a, 34354u) << (func_3() % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -(~_wgslsmith_div_i32(-23131i, -35654i)), _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, ~60320i, _wgslsmith_mult_i32(32731i, u_input.c)), ~_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global1.c, global1.d.c, var_1), vec3<i32>(global1.c, var_0.c, var_1)), min(vec3<i32>(-25353i, global1.a.c, global1.a.c), vec3<i32>(var_0.c, var_1, global1.a.c)))), countOneBits(vec2<i32>(firstLeadingBit(-1328i), countOneBits(u_input.b))) ^ vec2<i32>(-47385i, -1i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-531f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1910f + 374f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2997f)) - _wgslsmith_f_op_f32(-150f - -1184f)))));
}

