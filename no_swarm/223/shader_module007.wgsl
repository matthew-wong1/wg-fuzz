struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9> = array<bool, 9>(false, true, true, false, false, true, false, true, false);

var<private> global1: array<vec2<u32>, 8>;

var<private> global2: array<Struct_2, 11>;

var<private> global3: vec2<bool> = vec2<bool>(true, false);

var<private> global4: array<f32, 1>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: bool) -> vec2<u32> {
    var var_0 = 224f;
    var var_1 = _wgslsmith_f_op_f32(step(-1081f, _wgslsmith_div_f32(global4[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(u_input.a >> (u_input.a % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(65852u, 4294967295u, u_input.a, u_input.a), vec4<u32>(59903u, 1u, 90148u, u_input.a)))), 1u)], -678f)));
    global1 = array<vec2<u32>, 8>();
    var_1 = global4[_wgslsmith_index_u32(10563u, 1u)];
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1625f)), -578f));
    return max(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(reverseBits(u_input.a), u_input.a) ^ _wgslsmith_sub_u32(max(0u, 22406u), 1u), 8u)], vec2<u32>(u_input.a, ~u_input.a));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec4<i32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, global4[_wgslsmith_index_u32(arg_2.a.b.x, 1u)])), -2048f)));
    global1 = array<vec2<u32>, 8>();
    return !select(!select(select(vec4<bool>(arg_1.a, arg_1.a, false, global3.x), vec4<bool>(false, global0[_wgslsmith_index_u32(arg_2.a.b.x, 9u)], false, global3.x), arg_1.a), select(vec4<bool>(arg_1.a, global3.x, false, true), vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(36158u, 9u)]), arg_1.a), select(vec4<bool>(true, true, arg_1.a, true), vec4<bool>(true, arg_1.a, global3.x, arg_1.a), true)), select(vec4<bool>(-1i == arg_3.x, true, false, global0[_wgslsmith_index_u32(arg_0.c.b.x, 9u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0.a.b.x, 9u)], arg_1.a | false, global0[_wgslsmith_index_u32(arg_0.a.b.x, 9u)]), all(select(vec3<bool>(global0[_wgslsmith_index_u32(16098u, 9u)], global3.x, global3.x), vec3<bool>(false, arg_1.a, false), true))), false);
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = select(func_4(Struct_3(Struct_1(-u_input.b.x, global1[_wgslsmith_index_u32(0u, 8u)]), func_3(vec4<f32>(1000f, 728f, -866f, -951f), global3.x, all(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 9u)], false, false))), Struct_1(u_input.b.x, vec2<u32>(u_input.a, 0u)), vec4<f32>(1f, 1f, 1f, 1f), Struct_1(abs(u_input.b.x), ~vec2<u32>(4294967295u, 1u))), Struct_4(!(!global0[_wgslsmith_index_u32(38001u, 9u)])), Struct_3(Struct_1(u_input.b.x, func_3(vec4<f32>(global4[_wgslsmith_index_u32(u_input.a, 1u)], 1945f, arg_0.x, global4[_wgslsmith_index_u32(u_input.a, 1u)]), global3.x, global3.x)), vec2<u32>(u_input.a, u_input.a), Struct_1(0i, global1[_wgslsmith_index_u32(max(6109u, 0u), 8u)]), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(507f, -715f, global4[_wgslsmith_index_u32(u_input.a, 1u)], global4[_wgslsmith_index_u32(u_input.a, 1u)]) - vec4<f32>(-211f, arg_0.x, 598f, global4[_wgslsmith_index_u32(u_input.a, 1u)])), vec4<f32>(arg_0.x, -496f, global4[_wgslsmith_index_u32(24961u, 1u)], 488f), select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 9u)], global3.x, false), vec4<bool>(global3.x, global3.x, global3.x, global0[_wgslsmith_index_u32(u_input.a, 9u)]), vec4<bool>(global0[_wgslsmith_index_u32(93224u, 9u)], false, false, global3.x)))), Struct_1(-25536i, ~vec2<u32>(u_input.a, 4294967295u))), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-1i, 0i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -22440i, 2147483647i, 6681i), vec4<i32>(-11770i, 2147483647i, u_input.b.x, -1i)), ~u_input.b.x, -u_input.b.x), max(vec4<i32>(u_input.b.x, u_input.b.x, 1i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) << (~vec4<u32>(u_input.a, 4019u, 1u, 21835u) % vec4<u32>(32u)))), !vec4<bool>(any(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 9u)])), global3.x, true, any(vec3<bool>(global0[_wgslsmith_index_u32(55602u, 9u)], false, true))), vec4<bool>(5829u != ~u_input.a, !global0[_wgslsmith_index_u32(u_input.a, 9u)], !(!func_4(Struct_3(Struct_1(u_input.b.x, vec2<u32>(u_input.a, u_input.a)), global1[_wgslsmith_index_u32(2812u, 8u)], Struct_1(12166i, vec2<u32>(1u, u_input.a)), vec4<f32>(1497f, 370f, global4[_wgslsmith_index_u32(u_input.a, 1u)], global4[_wgslsmith_index_u32(36178u, 1u)]), Struct_1(u_input.b.x, vec2<u32>(u_input.a, u_input.a))), Struct_4(global3.x), Struct_3(Struct_1(0i, vec2<u32>(u_input.a, 26461u)), global1[_wgslsmith_index_u32(u_input.a, 8u)], Struct_1(u_input.b.x, vec2<u32>(4294967295u, u_input.a)), vec4<f32>(610f, -410f, global4[_wgslsmith_index_u32(u_input.a, 1u)], global4[_wgslsmith_index_u32(u_input.a, 1u)]), Struct_1(u_input.b.x, vec2<u32>(60202u, u_input.a))), vec4<i32>(-41185i, -25621i, u_input.b.x, u_input.b.x)).x), !(!global3.x)));
    global3 = vec2<bool>(func_4(Struct_3(Struct_1(-u_input.b.x, ~global1[_wgslsmith_index_u32(u_input.a, 8u)]), ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(10667u, 1u)), Struct_1(_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.b.x), _wgslsmith_add_vec2_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(u_input.a, 8u)])), vec4<f32>(global4[_wgslsmith_index_u32(1u, 1u)], arg_0.x, _wgslsmith_f_op_f32(round(-1000f)), -1118f), Struct_1(u_input.b.x ^ u_input.b.x, ~vec2<u32>(u_input.a, u_input.a))), Struct_4(!(!global3.x)), Struct_3(Struct_1(2147483647i, firstLeadingBit(global1[_wgslsmith_index_u32(u_input.a, 8u)])), ~(~global1[_wgslsmith_index_u32(u_input.a, 8u)]), Struct_1(abs(-6487i), vec2<u32>(0u, u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(round(503f)), arg_0.x, global4[_wgslsmith_index_u32(4294967295u, 1u)], 902f), Struct_1(1i, global1[_wgslsmith_index_u32(u_input.a ^ u_input.a, 8u)])), select(vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, -u_input.b.x), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, 1i, 47595i, -71326i), vec4<i32>(u_input.b.x, u_input.b.x, 4761i, u_input.b.x)) | _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.b.x, -1006i, -10838i), vec4<i32>(0i, u_input.b.x, 72843i, 9853i)), func_4(Struct_3(Struct_1(8994i, vec2<u32>(0u, 8594u)), global1[_wgslsmith_index_u32(u_input.a, 8u)], Struct_1(0i, vec2<u32>(u_input.a, 4294967295u)), vec4<f32>(global4[_wgslsmith_index_u32(0u, 1u)], global4[_wgslsmith_index_u32(u_input.a, 1u)], arg_0.x, -1859f), Struct_1(u_input.b.x, vec2<u32>(u_input.a, u_input.a))), Struct_4(var_0.x), Struct_3(Struct_1(-13662i, global1[_wgslsmith_index_u32(1u, 8u)]), vec2<u32>(4294967295u, 68543u), Struct_1(u_input.b.x, vec2<u32>(0u, 36970u)), vec4<f32>(arg_0.x, 1386f, arg_0.x, arg_0.x), Struct_1(35500i, global1[_wgslsmith_index_u32(56641u, 8u)])), _wgslsmith_mult_vec4_i32(vec4<i32>(-38099i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(-31895i, u_input.b.x, 2147483647i, u_input.b.x))))).x, false);
    global4 = array<f32, 1>();
    var var_1 = 471f;
    var var_2 = global4[_wgslsmith_index_u32(~max(u_input.a, abs(_wgslsmith_add_u32(u_input.a, u_input.a))) & u_input.a, 1u)];
    return Struct_1(firstTrailingBit(~(-11130i)), vec2<u32>(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(u_input.a, 78772u, u_input.a))), ~u_input.a));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<i32>) -> Struct_4 {
    var var_0 = abs(_wgslsmith_dot_vec4_u32(vec4<u32>(35771u, 1u, u_input.a >> (u_input.a % 32u), 10947u), ~vec4<u32>(0u, u_input.a, 0u, u_input.a))) & (~(~u_input.a) ^ u_input.a);
    let var_1 = func_2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(abs(24376u), 1u)], _wgslsmith_f_op_f32(exp2(global4[_wgslsmith_index_u32(u_input.a, 1u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.a, 1u)] * global4[_wgslsmith_index_u32(10360u, 1u)]))))));
    global4 = array<f32, 1>();
    global0 = array<bool, 9>();
    var var_2 = Struct_3(var_1, _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 10263u), (_wgslsmith_div_vec2_u32(var_1.b, var_1.b) | select(global1[_wgslsmith_index_u32(var_1.b.x, 8u)], vec2<u32>(1u, u_input.a), vec2<bool>(arg_0.x, false))) | ~(vec2<u32>(var_1.b.x, var_1.b.x) << (global1[_wgslsmith_index_u32(70919u, 8u)] % vec2<u32>(32u)))), func_2(vec2<f32>(global4[_wgslsmith_index_u32(~abs(u_input.a), 1u)], -1038f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global4[_wgslsmith_index_u32(var_1.b.x, 1u)], global4[_wgslsmith_index_u32(83516u, 1u)], global4[_wgslsmith_index_u32(14149u, 1u)], -447f), vec4<f32>(653f, global4[_wgslsmith_index_u32(10333u, 1u)], global4[_wgslsmith_index_u32(14505u, 1u)], global4[_wgslsmith_index_u32(var_1.b.x, 1u)]))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -854f, 473f, 998f), vec4<f32>(global4[_wgslsmith_index_u32(u_input.a, 1u)], 989f, global4[_wgslsmith_index_u32(var_1.b.x, 1u)], -1292f), vec4<bool>(true, global3.x, arg_0.x, true)))))), func_2(vec2<f32>(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, abs(var_1.b.x)), 1u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.a, 1u)] - global4[_wgslsmith_index_u32(var_1.b.x, 1u)])))));
    return Struct_4(true);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1) -> Struct_2 {
    global2 = array<Struct_2, 11>();
    var var_0 = false;
    var var_1 = Struct_3(arg_1, (vec2<u32>(max(98003u, 29329u), func_2(vec2<f32>(global4[_wgslsmith_index_u32(1u, 1u)], global4[_wgslsmith_index_u32(1u, 1u)])).b.x) | (reverseBits(vec2<u32>(88736u, 24416u)) << (~arg_1.b % vec2<u32>(32u)))) << (vec2<u32>(_wgslsmith_add_u32(arg_1.b.x, arg_1.b.x & arg_1.b.x), firstLeadingBit(79819u)) % vec2<u32>(32u)), arg_1, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(exp2(global4[_wgslsmith_index_u32(u_input.a, 1u)])), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(4294967295u, 1u)]), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.a, 1u)] - -456f), _wgslsmith_f_op_f32(-2031f + -1249f)), vec4<f32>(173f, -1000f, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1u, 1u)]), -1001f))))), Struct_1(abs(u_input.b.x), reverseBits(~(~arg_1.b))));
    let var_2 = !arg_0.a;
    global2 = array<Struct_2, 11>();
    return global2[_wgslsmith_index_u32(var_1.e.b.x, 11u)];
}

fn func_6(arg_0: Struct_4, arg_1: Struct_2) -> StorageBuffer {
    var var_0 = arg_1.a.wzy;
    global1 = array<vec2<u32>, 8>();
    global0 = array<bool, 9>();
    global1 = array<vec2<u32>, 8>();
    var var_1 = _wgslsmith_mod_vec2_i32(abs(~abs(u_input.b)) | u_input.b, vec2<i32>(u_input.b.x, 0i));
    return StorageBuffer(_wgslsmith_div_vec3_i32(vec3<i32>(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.c.a, arg_1.c.a, u_input.b.x), vec3<i32>(0i, 2147483647i, 14834i))), -1i, reverseBits(37139i)), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -28674i, 22898i) >> (vec3<u32>(u_input.a, 4294967295u, 31463u) % vec3<u32>(32u)), vec3<i32>(2147483647i, -1i, 2147483647i)), -select(vec3<i32>(var_1.x, 1i, -6645i), vec3<i32>(var_1.x, var_1.x, u_input.b.x), true))), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 10820u, 42270u), arg_1.a.ywy), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(40611u, 18118u, arg_1.a.x), 1u)], _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(0u, 1u)] - 261f), _wgslsmith_f_op_f32(f32(-1f) * -695f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(u_input.a, 1u)], 891f, -474f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1u, 1u)]), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(4294967295u, 1u)] - -491f), _wgslsmith_f_op_f32(step(-503f, global4[_wgslsmith_index_u32(98542u, 1u)]))) - vec3<f32>(_wgslsmith_f_op_f32(1102f + global4[_wgslsmith_index_u32(arg_1.a.x, 1u)]), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(arg_1.c.b.x, 1u)]), _wgslsmith_f_op_f32(trunc(939f)))))), ~(vec4<i32>(4638i, ~var_1.x, ~0i, _wgslsmith_clamp_i32(-8163i, -5080i, 2147483647i)) >> (_wgslsmith_div_vec4_u32(firstTrailingBit(arg_1.a), arg_1.a) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(Struct_4(global3.x), func_5(func_1(vec2<bool>(true, true), ~(vec4<i32>(u_input.b.x, -2147483647i, 1i, u_input.b.x) & vec4<i32>(1i, u_input.b.x, -4113i, u_input.b.x))), Struct_1(_wgslsmith_sub_i32(-13728i, u_input.b.x), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(3680u, ~u_input.a), 8u)])));
}

