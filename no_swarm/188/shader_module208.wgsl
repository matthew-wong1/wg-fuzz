struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 956u;

var<private> global1: array<Struct_3, 11>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3) -> bool {
    let var_0 = Struct_4(any(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false)), select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, false)))));
    var var_1 = !select(!select(vec3<bool>(var_0.a, var_0.a, var_0.a), select(vec3<bool>(false, var_0.a, false), vec3<bool>(true, var_0.a, false), vec3<bool>(var_0.a, var_0.a, var_0.a)), select(vec3<bool>(var_0.a, true, true), vec3<bool>(false, true, true), true)), vec3<bool>(var_0.a, true, true), true);
    let var_2 = ~(~46921u);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(897f, 1954f), -1000f, _wgslsmith_div_f32(587f, 332f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-565f, 2391f, 118f)))))) + vec3<f32>(-545f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-204f, -801f)) * _wgslsmith_f_op_f32(f32(-1f) * -1470f)) + _wgslsmith_f_op_f32(abs(376f))), -1000f));
    var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1066f, 294f, var_3.x))));
    return !(!any(vec4<bool>(any(vec4<bool>(true, var_1.x, true, true)), var_1.x, var_1.x, false || var_1.x)));
}

fn func_2(arg_0: i32) -> Struct_4 {
    let var_0 = vec4<bool>(select(true, !all(select(vec2<bool>(true, false), vec2<bool>(false, false), false)), !select(true, true, func_3(Struct_2(21791u), Struct_3(Struct_1(1i, vec3<u32>(4294967295u, 4294967295u, 1u))), global1[_wgslsmith_index_u32(4294967295u, 11u)]))), select(all(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, false), false), true)), !(any(vec4<bool>(false, false, true, false)) && false), all(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))))), any(vec3<bool>(true, true, true)), all(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)))));
    global0 = 7544u;
    let var_1 = _wgslsmith_dot_vec2_u32((vec2<u32>(1u, 1u) & vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(8919u, 24857u), vec2<u32>(1u, 64319u)), ~42784u)) >> (firstTrailingBit(vec2<u32>(1u, 1u)) % vec2<u32>(32u)), reverseBits(vec2<u32>(1u, 1u)));
    let var_2 = Struct_4(var_0.x);
    let var_3 = Struct_2(~(~1u));
    return Struct_4(select(any(!vec3<bool>(var_0.x, false, var_2.a)), !var_2.a, any(select(var_0.wy, vec2<bool>(false, false), select(vec2<bool>(var_0.x, false), var_0.yz, var_0.ww)))));
}

fn func_4(arg_0: Struct_4) -> Struct_1 {
    global0 = ~(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(26563u, 4294967295u, 1u, 48808u), vec4<u32>(22716u, 0u, 0u, 1u))), vec2<u32>(473u, abs(6994u))) ^ 42208u);
    global0 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(reverseBits(~min(4294967295u, 4294967295u)), ~(1u << (_wgslsmith_dot_vec3_u32(vec3<u32>(70620u, 40758u, 3143u), vec3<u32>(9090u, 4294967295u, 57380u)) % 32u))), ~(_wgslsmith_clamp_u32(52665u, abs(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(58638u, 1596u), vec2<u32>(0u, 22498u))) & ~48549u), 6272u);
    var var_0 = Struct_2(_wgslsmith_mult_u32(firstTrailingBit(1u), abs(1u)) & reverseBits(1u));
    global0 = var_0.a;
    let var_1 = Struct_3(Struct_1(~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(26705i, u_input.a.x, u_input.a.x)), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) & vec3<i32>(-26981i, -1i, u_input.a.x)), reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a, var_0.a, 0u), abs(vec3<u32>(var_0.a, var_0.a, 0u))))));
    return Struct_1(i32(-1i) * -var_1.a.a, select(var_1.a.b, var_1.a.b, true));
}

fn func_1() -> Struct_2 {
    let var_0 = ~vec4<i32>(_wgslsmith_div_i32(~abs(0i), _wgslsmith_sub_i32(3814i, _wgslsmith_div_i32(26212i, u_input.a.x))), u_input.a.x, u_input.a.x, -1i);
    let var_1 = func_4(func_2(78223i));
    let var_2 = 16137i;
    global1 = array<Struct_3, 11>();
    global1 = array<Struct_3, 11>();
    return Struct_2(~26451u);
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2) -> bool {
    global1 = array<Struct_3, 11>();
    var var_0 = arg_2;
    let var_1 = Struct_4(!any(vec3<bool>(arg_1.a.a <= u_input.a.x, true, true)));
    var var_2 = var_0.a;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(832f)) + 1497f)) - 221f));
    return all(select(!select(vec4<bool>(true, true, var_1.a, var_1.a), !vec4<bool>(var_1.a, false, var_1.a, false), vec4<bool>(var_1.a, var_1.a, false, var_1.a)), vec4<bool>(var_1.a, select(false, true, true), var_1.a, func_2(0i).a), false && var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 11>();
    global1 = array<Struct_3, 11>();
    var var_0 = 178f;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, -294f, -758f, -1000f), vec4<f32>(-121f, 931f, 442f, 385f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-810f, 944f, -2071f, -624f), vec4<f32>(-1583f, -2035f, 1000f, -1858f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1997f, 945f, -460f, -360f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-749f, -1504f, 548f, -1858f))))), vec4<bool>(func_5(_wgslsmith_f_op_f32(-1251f + -1556f), global1[_wgslsmith_index_u32(1u, 11u)], func_1()), all(vec4<bool>(true, false, false, true)) != true, true, true))));
    var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2153f, var_1.x, 1035f, var_1.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-186f, var_1.x, 225f, -429f), vec4<f32>(var_1.x, -2104f, var_1.x, var_1.x)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, 703f, -971f, 230f))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-1000f)), var_1.x, -516f, _wgslsmith_f_op_f32(var_1.x + -1678f)), vec4<f32>(_wgslsmith_f_op_f32(1748f - -872f), var_1.x, -431f, -1539f))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(max(~46953u, func_4(Struct_4(false)).b.x), 4294967295u, 5836u, 1u), vec4<bool>(true, all(vec4<bool>(true, true, true, true)), true, true)));
}

