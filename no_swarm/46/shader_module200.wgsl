struct Struct_1 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18> = array<u32, 18>(1u, 108490u, 15154u, 7185u, 4294967295u, 67338u, 1u, 75590u, 0u, 3227u, 0u, 39576u, 0u, 17483u, 22439u, 16964u, 1u, 1u);

var<private> global1: f32;

var<private> global2: u32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = firstLeadingBit(~abs(5709u)) << (_wgslsmith_div_u32(0u, 55322u) % 32u);
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-833f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1156f, 940f) + arg_0.b)), arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b, -748f)) + _wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(ceil(arg_0.b))))) * vec4<f32>(arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(230f)) * -1312f) - 337f)));
    var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(429f + var_1.x) + 948f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(564f + 539f) + _wgslsmith_f_op_f32(step(var_1.x, var_1.x)))))), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -301f), 586f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1876f)))))), 928f, -1630f);
    let var_2 = _wgslsmith_sub_i32(25696i ^ min(2147483647i, _wgslsmith_dot_vec2_i32(~vec2<i32>(-5185i, 0i), ~vec2<i32>(-1i, 0i))), ~(~0i));
    var var_3 = ~(vec4<i32>(var_2, var_2, ~countOneBits(2147483647i), 1i) >> (vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(arg_0.a, 18u)], ~(~arg_0.a), min(~38148u, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(0u, 18u)], u_input.a))) % vec4<u32>(32u)));
    return u_input.a;
}

fn func_2(arg_0: bool) -> vec4<i32> {
    global1 = _wgslsmith_div_f32(-178f, -463f);
    var var_0 = _wgslsmith_div_i32(-11196i, 2147483647i);
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-723f)), _wgslsmith_f_op_f32(-1259f - 421f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -404f), -1000f), arg_0));
    var var_1 = Struct_1(global0[_wgslsmith_index_u32(~(~u_input.a), 18u)] | _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a | global0[_wgslsmith_index_u32(1u, 18u)], func_3(Struct_1(global0[_wgslsmith_index_u32(u_input.a, 18u)], -952f))), 3176u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1057f), -480f)), -960f, true)));
    var var_2 = select(vec2<bool>(true, (_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, 55604u), vec2<u32>(u_input.a, 72968u)) <= _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, global0[_wgslsmith_index_u32(var_1.a, 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)]), vec4<u32>(4294967295u, 29828u, 49175u, 0u))) || false), select(vec2<bool>(false, !arg_0), select(vec2<bool>(-555f <= var_1.b, true), vec2<bool>(any(vec2<bool>(false, true)), all(vec4<bool>(false, true, arg_0, arg_0))), select(true, arg_0, true)), select(select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0), vec2<bool>(true, false)), select(vec2<bool>(arg_0, false), vec2<bool>(false, arg_0), vec2<bool>(false, arg_0)), select(vec2<bool>(false, arg_0), vec2<bool>(false, arg_0), true)), select(!vec2<bool>(arg_0, false), vec2<bool>(arg_0, false), true), vec2<bool>(arg_0, false == arg_0))), !vec2<bool>(!arg_0, true));
    return vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(~1i, i32(-1i) * -2147483647i, select(-20271i, 1i, true), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, 25023i), vec3<i32>(0i, 0i, 1i))), vec4<i32>(firstTrailingBit(-2147483647i), -9854i, ~7741i, ~_wgslsmith_mod_i32(-1i, -1i))), _wgslsmith_add_i32(-31293i, countOneBits(~_wgslsmith_add_i32(1i, -2147483647i))), -abs(~22283i) >> (_wgslsmith_sub_u32(0u, 0u) % 32u), _wgslsmith_add_i32(-34064i, abs(-(~(-2147483647i)))));
}

fn func_1() -> vec4<i32> {
    return _wgslsmith_mult_vec4_i32(max(func_2(true), -_wgslsmith_add_vec4_i32(abs(vec4<i32>(-1i, -2590i, 0i, 6376i)), -vec4<i32>(0i, -12233i, -9314i, 49467i))), _wgslsmith_div_vec4_i32(-func_2(5788u >= global0[_wgslsmith_index_u32(141243u, 18u)]), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(-777i, -2147483647i, 9296i, -11749i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-312f, _wgslsmith_f_op_f32(653f + 716f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(307f * 134f), 1f))), -1838f, 1000f);
    var var_1 = Struct_1(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_mult_u32(~global0[_wgslsmith_index_u32(u_input.a, 18u)], firstTrailingBit(u_input.a)), global0[_wgslsmith_index_u32(116403u, 18u)]), 18u)], var_0.x);
    var var_2 = select(func_1(), vec4<i32>(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-1i, 2147483647i, 7787i, -9890i) >> (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 18u)], 1u, u_input.a), vec4<u32>(u_input.a, 17028u, 9556u, 1u)) % vec4<u32>(32u))), -(1i >> (firstLeadingBit(u_input.a) % 32u)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(-1i, 52106i, -2147483647i)), ~vec3<i32>(-17699i, 2147483647i, -8497i)), ~countOneBits(vec3<i32>(-13018i, -2147483647i, -2056i)))), false);
    let var_3 = ~max(countOneBits(vec4<u32>(max(78266u, var_1.a), _wgslsmith_mod_u32(1u, 1u), abs(var_1.a), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, var_1.a, global0[_wgslsmith_index_u32(u_input.a, 18u)]), vec3<u32>(u_input.a, 0u, 54821u)))), max(reverseBits(vec4<u32>(0u, var_1.a, var_1.a, global0[_wgslsmith_index_u32(u_input.a, 18u)])), ~vec4<u32>(u_input.a, u_input.a, var_1.a, 89954u) & (vec4<u32>(1u, global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(991u, 18u)], 4294967295u) << (vec4<u32>(1u, 45813u, 4294967295u, 0u) % vec4<u32>(32u)))));
    var var_4 = Struct_1(max(~_wgslsmith_div_u32(var_1.a, global0[_wgslsmith_index_u32(1u, 18u)]), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(var_3.yx, var_3.wz), ~2595u), 18u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(select(~var_3.yw, var_3.yw >> (vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], 40907u) % vec2<u32>(32u)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))) & ~var_3.ww, ~(~vec2<u32>(4294967295u, var_1.a))), var_1.b, countOneBits(vec3<u32>(~1u, 53488u, ~var_4.a)));
}

