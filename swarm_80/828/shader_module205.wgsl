struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: bool,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18> = array<u32, 18>(35240u, 13312u, 52534u, 7595u, 32723u, 21786u, 43048u, 0u, 4294967295u, 1u, 64099u, 81098u, 13369u, 1u, 4294967295u, 18138u, 63007u, 23953u);

var<private> global1: vec4<u32> = vec4<u32>(5560u, 1u, 4294967295u, 62447u);

var<private> global2: i32 = 16504i;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: i32) -> vec3<i32> {
    let var_0 = Struct_1(_wgslsmith_div_vec4_u32(~(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, u_input.a, 77883u, global0[_wgslsmith_index_u32(0u, 18u)]), vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(0u, 18u)], global1.x, u_input.a), vec4<u32>(global1.x, 1u, global1.x, 14843u)) << (_wgslsmith_add_vec4_u32(vec4<u32>(11224u, global1.x, global0[_wgslsmith_index_u32(u_input.a, 18u)], 125995u), vec4<u32>(53021u, 1u, u_input.a, 36659u)) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_div_u32(4294967295u, firstLeadingBit(1u)), 4294967295u, 0u, u_input.a)), select(vec3<i32>(firstLeadingBit(-105i | u_input.b), min(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 32924i, 11865i), vec3<i32>(23061i, 53406i, -1i)), -18684i << (u_input.a % 32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, -2147483647i, 0i), vec3<i32>(arg_2, 1i, 0i))), vec3<i32>(_wgslsmith_sub_i32(~u_input.c.x, _wgslsmith_mod_i32(-2147483647i, 2147483647i)), arg_2 << (max(u_input.a, global1.x) % 32u), -2147483647i), vec3<bool>(true, arg_0.x, (arg_2 != 1442i) || any(arg_0.wxx))));
    let var_1 = arg_0.xy;
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(28065u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~1u, var_0.a.x | global1.x, var_0.a.x, ~global1.x), vec4<u32>(~0u, max(5191u, 1u), 64156u | var_0.a.x, ~1u)), _wgslsmith_sub_u32(~7542u, firstLeadingBit(1u) >> ((u_input.a << (4294967295u % 32u)) % 32u))), ~reverseBits(~0u | global1.x)), 18u)];
    var var_3 = abs(global1.x);
    return ~var_0.b;
}

fn func_2(arg_0: vec4<f32>) -> vec3<bool> {
    let var_0 = Struct_1(~(~(~(~vec4<u32>(u_input.a, global1.x, global0[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(55686u, 18u)])))), ~func_3(vec4<bool>(true, true, true, true), arg_0.x, min(45180i, u_input.c.x)));
    global1 = ~min(min(firstTrailingBit(vec4<u32>(var_0.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], var_0.a.x, 18539u)), var_0.a ^ ~vec4<u32>(31469u, global1.x, 1u, 4294967295u)), var_0.a);
    global2 = u_input.c.x;
    var var_1 = Struct_1(vec4<u32>(4294967295u, var_0.a.x, _wgslsmith_mod_u32(_wgslsmith_mod_u32(~40626u, 1u), var_0.a.x), (51547u | _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(33845u, 18u)], 54232u, 0u), vec3<u32>(13773u, 37342u, var_0.a.x))) >> (~3229u % 32u)), ~(-vec3<i32>(countOneBits(-16626i), 1i, -24251i)));
    let var_2 = _wgslsmith_div_vec4_i32(firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(u_input.c.x, var_1.b.x, var_1.b.x), 35962i, -1i, ~u_input.b), reverseBits(~vec4<i32>(94323i, 2147483647i, 2147483647i, 2147483647i)))), -abs(vec4<i32>(-25714i, var_0.b.x, 1i, -43548i)));
    return vec3<bool>(true, !(_wgslsmith_f_op_f32(sign(-1737f)) > _wgslsmith_div_f32(-313f, 755f)), false);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2) -> f32 {
    var var_0 = select(arg_0.www, func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(289f, -870f, 1015f, -1233f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1078f, 212f, -1000f, -317f) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2432f, -435f, -468f, 715f), vec4<f32>(1058f, -150f, -147f, 693f)))))), !arg_0.wzx);
    let var_1 = vec2<i32>((arg_1.a.b.x | -2147483647i) << (abs(~(global0[_wgslsmith_index_u32(25344u, 18u)] << (u_input.a % 32u))) % 32u), 2147483647i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~abs(abs(_wgslsmith_div_i32(32383i, u_input.c.x) << (min(0u, global0[_wgslsmith_index_u32(u_input.a, 18u)]) % 32u)));
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-390f, -569f, 1000f)) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -631f), 528f, _wgslsmith_f_op_f32(f32(-1f) * -322f)))), -985f, any(vec2<bool>(true, true)), vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-278f * _wgslsmith_f_op_f32(select(709f, -679f, false))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-162f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec4<bool>(true, false, false, false), Struct_2(Struct_1(vec4<u32>(global0[_wgslsmith_index_u32(global1.x, 18u)], 27158u, 47330u, 0u), vec3<i32>(u_input.b, 19757i, u_input.b))))), _wgslsmith_f_op_f32(772f - -810f))), _wgslsmith_f_op_f32(trunc(-1524f))));
    let var_2 = -1000f;
    var var_3 = 1u;
    var var_4 = !select((u_input.a >= global0[_wgslsmith_index_u32(u_input.a << (global0[_wgslsmith_index_u32(76281u, 18u)] % 32u), 18u)]) && (u_input.b < u_input.c.x), var_1.c, select(!var_1.c, false, !var_1.c));
    var var_5 = _wgslsmith_f_op_vec4_f32(-var_1.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(0i, -1756i, ~58341i), ~(1u ^ (global0[_wgslsmith_index_u32(u_input.a, 18u)] | u_input.a)) ^ 68204u, vec4<u32>(~1u, firstLeadingBit(~4294967295u ^ u_input.a), 35492u, 4027u), ~(-2147483647i), 509f);
}

