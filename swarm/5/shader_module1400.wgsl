struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11> = array<bool, 11>(true, false, true, false, false, false, true, true, false, true, false);

var<private> global1: Struct_2 = Struct_2(vec2<i32>(-16838i, 1i), vec3<u32>(4294967295u, 90876u, 72124u), Struct_1(vec3<i32>(161i, 0i, 46190i), 33343i, 20275u, vec4<i32>(-32028i, -59878i, 1i, -11110i), vec3<u32>(4294967295u, 1u, 14030u)), vec4<i32>(-1424i, i32(-2147483648), -29598i, -57075i), vec4<u32>(0u, 1u, 64904u, 56392u));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_4) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(floor(-461f)), arg_0.c, _wgslsmith_f_op_f32(sign(-371f)), -1183f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_0.c, 2024f, arg_0.b.x))))))));
    return _wgslsmith_mod_u32(18231u, ~u_input.b.x);
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_4, arg_3: Struct_3) -> Struct_2 {
    let var_0 = ~firstLeadingBit(global1.b.x);
    let var_1 = vec2<u32>(_wgslsmith_dot_vec3_u32(min(~vec3<u32>(var_0, 61152u, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(70322u, arg_0.x, arg_0.x), arg_2.a.a.yyx)) ^ select(~vec3<u32>(global1.c.e.x, 0u, 45807u), vec3<u32>(12302u, arg_3.a.x, 21960u) | vec3<u32>(u_input.c.x, global1.e.x, 0u), all(vec2<bool>(global0[_wgslsmith_index_u32(global1.c.e.x, 11u)], false))), max(arg_0, arg_2.a.a.xyw)), _wgslsmith_sub_u32(abs(var_0), 0u ^ arg_0.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1120f, -2011f, arg_2.c, arg_2.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.x, -2300f, arg_2.b.x, -1996f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2273f, arg_2.c, arg_2.c, 1000f) * vec4<f32>(-620f, -964f, arg_2.b.x, arg_2.c)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(335f, 273f, arg_2.b.x, -1000f) + vec4<f32>(760f, arg_2.b.x, 718f, arg_2.b.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(152f, 869f, 505f, 435f) + vec4<f32>(arg_2.b.x, arg_2.b.x, -1128f, arg_2.c)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(2095f, arg_2.b.x, arg_2.c, 805f) + vec4<f32>(arg_2.b.x, -1149f, -521f, arg_2.c))))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1077f, arg_2.c, -420f, -208f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.x, arg_2.c, 453f, 1309f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.b.x, -458f, 870f, arg_2.b.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(766f, arg_2.b.x, arg_2.b.x, -1121f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c, arg_2.c, -384f, -187f) - vec4<f32>(-905f, arg_2.c, arg_2.b.x, arg_2.b.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.c, arg_2.b.x, arg_2.c, arg_2.b.x), vec4<f32>(arg_2.b.x, -216f, arg_2.b.x, arg_2.b.x), vec4<bool>(global0[_wgslsmith_index_u32(arg_3.a.x, 11u)], arg_3.d, global0[_wgslsmith_index_u32(120276u, 11u)], false)))))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(abs(var_2.wy));
    var var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_3.x))));
    return Struct_2(_wgslsmith_sub_vec2_i32(-reverseBits(-global1.c.d.zz), reverseBits(_wgslsmith_sub_vec2_i32(min(global1.d.ww, vec2<i32>(arg_1, arg_1)), vec2<i32>(-2147483647i, arg_3.b)))), ~abs(~u_input.a.yyx), Struct_1(global1.c.a, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, arg_1, arg_2.a.c, arg_2.a.c), global1.d), abs(vec4<i32>(global1.a.x, 3412i, arg_2.a.c, global1.a.x))) >> (u_input.a.x % 32u), 13266u, vec4<i32>(countOneBits(1i), -2147483647i, 1i, _wgslsmith_dot_vec2_i32(global1.a | global1.c.a.xy, firstLeadingBit(vec2<i32>(-46274i, 4209i)))), vec3<u32>(6753u, global1.b.x, 65069u)), -global1.d, max(vec4<u32>(~(~global1.e.x), ~_wgslsmith_sub_u32(0u, arg_2.a.a.x), ~4294967295u ^ var_1.x, ~(~arg_3.a.x)), arg_2.a.a >> (~max(vec4<u32>(arg_3.a.x, arg_3.a.x, global1.c.c, 0u), arg_2.a.a) % vec4<u32>(32u))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>) -> Struct_2 {
    var var_0 = func_3(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.a.x, 0u << (0u % 32u), _wgslsmith_dot_vec4_u32(arg_0.e, vec4<u32>(4294967295u, global1.b.x, u_input.b.x, arg_0.b.x)))), vec3<u32>(~0u, u_input.c.x, ~4294967295u) << ((vec3<u32>(u_input.b.x, 51732u, global1.e.x) >> ((vec3<u32>(u_input.a.x, global1.b.x, u_input.d) | global1.b) % vec3<u32>(32u))) % vec3<u32>(32u))), abs(global1.d.x), Struct_4(Struct_3((u_input.b ^ vec4<u32>(112854u, arg_0.b.x, u_input.a.x, 29974u)) | select(vec4<u32>(arg_0.b.x, 53729u, u_input.a.x, u_input.c.x), vec4<u32>(16663u, 4294967295u, 11365u, u_input.d), false), 0i, -29334i, !all(arg_1.zz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-913f, -1193f), vec2<f32>(-729f, -1773f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(512f + -1095f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1361f * -1000f)))), Struct_3(vec4<u32>(~reverseBits(global1.b.x), _wgslsmith_mod_u32(arg_0.b.x | arg_0.b.x, 15011u), ~_wgslsmith_sub_u32(global1.c.e.x, 4294967295u), _wgslsmith_div_u32(global1.c.c, select(u_input.a.x, 4437u, arg_1.x))), global1.a.x, arg_0.d.x, select((arg_0.a.x >= -1i) & !global0[_wgslsmith_index_u32(4294967295u, 11u)], any(!vec4<bool>(global0[_wgslsmith_index_u32(global1.b.x, 11u)], global0[_wgslsmith_index_u32(76999u, 11u)], arg_1.x, arg_1.x)), any(!vec4<bool>(false, arg_1.x, false, arg_1.x))))).c;
    var var_1 = Struct_1(vec3<i32>(arg_0.d.x, var_0.b, abs(3131i)), ~min(_wgslsmith_div_i32(-4624i, -arg_0.c.a.x), ~0i), u_input.d, ~(~vec4<i32>(countOneBits(global1.d.x), reverseBits(arg_0.c.b), 1i, var_0.d.x)), vec3<u32>(1u, _wgslsmith_mult_u32(global1.e.x, 6605u), ~(abs(var_0.e.x) ^ _wgslsmith_mult_u32(1u, 51908u))));
    global1 = Struct_2(-_wgslsmith_sub_vec2_i32(vec2<i32>(-41454i, arg_0.a.x) ^ vec2<i32>(global1.d.x, 2147483647i), vec2<i32>(-1i) * -arg_0.c.a.xz), vec3<u32>(5942u, ~var_0.e.x, _wgslsmith_add_u32(arg_0.b.x, 4294967295u | _wgslsmith_mult_u32(var_0.e.x, global1.c.e.x))), arg_0.c, -_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.d.x, -var_1.a.x, var_0.d.x, arg_0.c.d.x << (var_0.e.x % 32u)), arg_0.c.d), ~abs(_wgslsmith_mod_vec4_u32(firstTrailingBit(arg_0.e), _wgslsmith_mod_vec4_u32(arg_0.e, global1.e))));
    var_0 = global1.c;
    global1 = Struct_2(var_1.a.xz, _wgslsmith_div_vec3_u32(~vec3<u32>(arg_0.c.e.x, var_1.c, 0u), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a.zzw, arg_0.b, vec3<u32>(var_1.e.x, 4294967295u, 1u)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 1u, global1.e.x), var_1.e))) & vec3<u32>(max(_wgslsmith_mod_u32(4294967295u, 34136u), ~var_1.e.x), arg_0.c.e.x, ~(0u ^ arg_0.b.x)), func_3(~select(var_1.e, vec3<u32>(var_0.c, arg_0.c.e.x, u_input.d), false) ^ vec3<u32>(41126u, 1u | var_0.e.x, _wgslsmith_div_u32(15965u, 4294967295u)), var_0.d.x, Struct_4(Struct_3(~u_input.b, 1i, var_1.a.x >> (4294967295u % 32u), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1158f, 1448f))) - vec2<f32>(-1633f, -1653f)), _wgslsmith_f_op_f32(f32(-1f) * -1433f)), Struct_3(~_wgslsmith_add_vec4_u32(vec4<u32>(global1.e.x, 47575u, var_1.e.x, 30252u), arg_0.e), _wgslsmith_div_i32(firstLeadingBit(-1i), ~25538i), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-18874i, 0i), vec2<i32>(-1i, 2147483647i))), select(false, true, false))).c, vec4<i32>(~_wgslsmith_mult_i32(func_3(vec3<u32>(var_1.e.x, 0u, 4294967295u), 21261i, Struct_4(Struct_3(vec4<u32>(var_0.e.x, arg_0.c.c, 16300u, 1u), -2147483647i, -2147483647i, true), vec2<f32>(571f, -2979f), -482f), Struct_3(arg_0.e, var_1.b, -38344i, true)).a.x, ~(-27183i)), abs(_wgslsmith_dot_vec2_i32(var_0.d.zw, vec2<i32>(var_0.a.x, -16425i) >> (vec2<u32>(45800u, 1u) % vec2<u32>(32u)))), 1i, _wgslsmith_div_i32(-2147483647i, i32(-1i) * -1i)), countOneBits(vec4<u32>(27621u, firstTrailingBit(var_1.c >> (8500u % 32u)), global1.c.c, ~u_input.d)));
    return arg_0;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = func_4(Struct_2(vec2<i32>(~(-2147483647i), arg_3.a.x), global1.c.e, func_4(arg_3, vec3<bool>(true, true, true)).c, arg_0.d, ~(~abs(vec4<u32>(4294967295u, arg_1.a.x, arg_2, arg_0.e.x)))), vec3<bool>(any(vec3<bool>(all(vec2<bool>(arg_1.d, false)), true, false)), arg_3.e.x < ~(~4294967295u), true)).c;
    global0 = array<bool, 11>();
    global0 = array<bool, 11>();
    var var_1 = arg_1;
    let var_2 = Struct_1(vec3<i32>(func_3(func_3(func_3(arg_0.e.yxw, arg_3.c.a.x, Struct_4(arg_1, vec2<f32>(919f, 1263f), -613f), arg_1).e.wzy, 1i, Struct_4(arg_1, vec2<f32>(685f, 840f), 438f), arg_1).b, min(32184i, 0i), Struct_4(Struct_3(vec4<u32>(arg_0.c.c, 4294967295u, 0u, 27399u), arg_3.a.x, global1.c.d.x, var_1.d), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-912f, 276f), vec2<f32>(1060f, -1402f))), _wgslsmith_f_op_f32(f32(-1f) * -258f)), Struct_3(arg_1.a, -2147483647i, _wgslsmith_add_i32(var_1.b, -1i), true)).a.x, ~_wgslsmith_add_i32(-2147483647i, 0i), -(~var_1.c)), ~(-1i), ~var_1.a.x, -vec4<i32>(-1i, firstLeadingBit(firstTrailingBit(22721i)), max(0i, -1i) | global1.c.d.x, 13803i), vec3<u32>(~(~(~var_1.a.x)), arg_1.a.x, global1.e.x));
    return arg_0;
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: Struct_2, arg_3: vec4<f32>) -> Struct_3 {
    global1 = func_5(Struct_2(vec2<i32>(46553i, arg_2.c.a.x), ~reverseBits(vec3<u32>(47477u, 0u, u_input.c.x)), arg_2.c, arg_2.c.d, ~arg_2.e), Struct_3(reverseBits(vec4<u32>(1u, u_input.c.x, _wgslsmith_div_u32(u_input.d, 15381u), arg_2.e.x)), 16833i, 2147483647i, !(!all(vec2<bool>(false, false)))), _wgslsmith_mult_u32(~(~_wgslsmith_clamp_u32(81634u, 23035u, arg_0)), arg_0), func_4(func_3(vec3<u32>(_wgslsmith_mod_u32(arg_2.e.x, 1u), arg_2.b.x, func_2(Struct_4(Struct_3(vec4<u32>(69878u, arg_0, 4294967295u, arg_2.c.c), -34925i, global1.a.x, false), arg_3.yx, arg_3.x))), firstTrailingBit(arg_2.a.x), Struct_4(Struct_3(vec4<u32>(4835u, arg_2.e.x, 52270u, arg_2.b.x), arg_2.a.x, arg_2.a.x, true), _wgslsmith_div_vec2_f32(arg_3.xy, vec2<f32>(arg_3.x, arg_3.x)), _wgslsmith_f_op_f32(-arg_3.x)), Struct_3(~global1.e, global1.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_2.a.x), global1.d.xx), !arg_1)), !vec3<bool>(all(vec2<bool>(arg_1, false)), global0[_wgslsmith_index_u32(0u, 11u)] & arg_1, any(vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(30071u, 11u)])))));
    let var_0 = Struct_4(Struct_3(~u_input.a, arg_2.d.x, ~_wgslsmith_add_i32(func_3(global1.c.e, global1.c.b, Struct_4(Struct_3(arg_2.e, global1.c.d.x, 15149i, true), vec2<f32>(arg_3.x, arg_3.x), 1052f), Struct_3(arg_2.e, arg_2.a.x, arg_2.a.x, false)).c.a.x, ~global1.c.b), ~(arg_2.b.x ^ global1.e.x) > _wgslsmith_sub_u32(~1u, arg_2.b.x)), arg_3.zw, _wgslsmith_f_op_f32(sign(-507f)));
    global1 = Struct_2(_wgslsmith_mult_vec2_i32(vec2<i32>(-(~(-3351i)), 22454i), func_5(arg_2, var_0.a, ~4294967295u, func_4(func_3(u_input.a.yxw, -5502i, Struct_4(Struct_3(global1.e, global1.c.a.x, arg_2.d.x, var_0.a.d), vec2<f32>(var_0.b.x, -103f), -747f), var_0.a), !vec3<bool>(true, arg_1, arg_1))).a), vec3<u32>(var_0.a.a.x, ~(~u_input.a.x), _wgslsmith_mult_u32(31050u >> (_wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(7132u, arg_2.e.x)) % 32u), ~func_2(Struct_4(var_0.a, arg_3.wz, -1418f)))), Struct_1(global1.c.a, -(~(~global1.c.a.x)), _wgslsmith_add_u32(func_3(func_4(arg_2, vec3<bool>(arg_1, false, true)).e.wxx, arg_2.d.x, var_0, Struct_3(vec4<u32>(u_input.a.x, 1u, 4294967295u, 42052u), 9071i, global1.a.x, true)).b.x, func_5(arg_2, var_0.a, var_0.a.a.x << (global1.b.x % 32u), arg_2).e.x), global1.d, reverseBits(select(vec3<u32>(global1.c.e.x, var_0.a.a.x, arg_2.e.x), u_input.b.wwz, var_0.a.d) & var_0.a.a.yyx)), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(global1.d.x, 2147483647i, global1.c.a.x, 1i), arg_2.c.d), -vec4<i32>(2147483647i, -2147483647i, select(2147483647i, arg_2.d.x, true), -arg_2.d.x)), ~vec4<u32>(41865u, ~firstTrailingBit(3132u), ~func_2(var_0), arg_0));
    var var_1 = Struct_3(abs(~abs(~var_0.a.a)), global1.a.x, firstTrailingBit(~1i), any(select(select(!vec4<bool>(false, arg_1, false, global0[_wgslsmith_index_u32(arg_2.c.e.x, 11u)]), select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.c.x, 11u)], var_0.a.d), vec4<bool>(false, false, arg_1, true), true), global1.c.c <= 8212u), vec4<bool>(true, false, any(vec2<bool>(arg_1, true)), false), !select(vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(1u, 11u)]), vec4<bool>(arg_1, true, true, true), vec4<bool>(global0[_wgslsmith_index_u32(1u, 11u)], true, false, true)))));
    var var_2 = Struct_3(~(~(~vec4<u32>(var_0.a.a.x, 14925u, 4294967295u, 79239u))), var_1.c, ~func_3(~_wgslsmith_mod_vec3_u32(vec3<u32>(23194u, var_1.a.x, arg_2.e.x), vec3<u32>(0u, 4294967295u, u_input.d)), abs(~0i), var_0, var_0.a).a.x, false);
    return var_0.a;
}

fn func_6(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_3) -> f32 {
    global1 = func_4(Struct_2(vec2<i32>(arg_2.c, 1i) | abs(_wgslsmith_mod_vec2_i32(arg_0.d.xy, arg_0.d.yz)), ~(~(~vec3<u32>(arg_2.a.x, 4294967295u, 2800u))), Struct_1(~abs(arg_0.a), -14233i, ~1u, arg_0.d, firstTrailingBit(~arg_0.e)), select(arg_0.d, vec4<i32>(0i, ~arg_0.b, ~(-2147483647i), func_5(Struct_2(global1.c.d.xy, vec3<u32>(13729u, 1u, 37299u), global1.c, global1.c.d, u_input.b), arg_2, 55732u, Struct_2(vec2<i32>(2147483647i, 0i), vec3<u32>(arg_2.a.x, global1.b.x, 0u), arg_0, arg_0.d, vec4<u32>(35295u, arg_0.e.x, 85193u, u_input.d))).d.x), !vec4<bool>(global0[_wgslsmith_index_u32(global1.c.c, 11u)], arg_1.x, arg_2.d, true)), ~(abs(arg_2.a) << (_wgslsmith_mod_vec4_u32(global1.e, vec4<u32>(global1.e.x, 0u, arg_2.a.x, 4294967295u)) % vec4<u32>(32u)))), select(select(arg_1.zyz, !select(arg_1.ywx, vec3<bool>(arg_2.d, arg_1.x, true), arg_1.x), !global0[_wgslsmith_index_u32(global1.e.x & global1.e.x, 11u)]), select(select(arg_1.wzw, select(vec3<bool>(true, arg_2.d, true), vec3<bool>(arg_2.d, true, false), vec3<bool>(false, global0[_wgslsmith_index_u32(41056u, 11u)], true)), true & arg_1.x), select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 11u)], false), vec3<bool>(arg_1.x, global0[_wgslsmith_index_u32(1u, 11u)], false), arg_2.d), select(vec3<bool>(global0[_wgslsmith_index_u32(40068u, 11u)], false, true), arg_1.zwx, arg_2.d), arg_1.xzz), _wgslsmith_f_op_f32(sign(613f)) <= _wgslsmith_f_op_f32(round(-625f))), vec3<bool>(any(vec2<bool>(false, false)), false, arg_2.d)));
    var var_0 = global1.a | func_4(func_4(func_3(u_input.b.zzw | arg_0.e, 43840i, Struct_4(Struct_3(vec4<u32>(27295u, 0u, arg_2.a.x, global1.c.e.x), 1i, arg_0.d.x, arg_2.d), vec2<f32>(-1291f, 833f), -536f), arg_2), !select(vec3<bool>(arg_1.x, true, true), arg_1.ywz, arg_1.x)), !(!arg_1.wwx)).d.xy;
    var var_1 = abs(firstLeadingBit(u_input.c));
    var var_2 = _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(78106u, 4294967295u, 23175u)), ~vec3<u32>(1u, var_1.x, global1.e.x) << (abs(global1.e.zyx) % vec3<u32>(32u))), vec3<u32>(arg_2.a.x | ~u_input.b.x, global1.c.c, 8060u)) << ((~vec3<u32>(var_1.x, arg_2.a.x, min(17606u, 4294967295u)) ^ vec3<u32>(u_input.b.x, 73484u, 15461u)) % vec3<u32>(32u));
    var var_3 = ~(~countOneBits(arg_2.a.wyw)) & func_1(1u << (min(~global1.b.x, ~var_2.x) % 32u), false, func_5(Struct_2(global1.c.a.xz, ~vec3<u32>(arg_0.e.x, 0u, global1.c.e.x), global1.c, _wgslsmith_add_vec4_i32(vec4<i32>(7800i, -13476i, -1i, var_0.x), vec4<i32>(1i, 10856i, arg_2.b, arg_2.c)), ~global1.e), arg_2, firstLeadingBit(8353u), Struct_2(firstLeadingBit(vec2<i32>(arg_0.b, -25427i)), ~u_input.a.yyx, Struct_1(arg_0.a, global1.a.x, 89540u, vec4<i32>(1i, -2147483647i, 2147483647i, var_0.x), vec3<u32>(arg_2.a.x, u_input.c.x, var_2.x)), vec4<i32>(global1.d.x, arg_0.b, 717i, 0i), arg_2.a)), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1062f - 774f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1046f)), _wgslsmith_f_op_f32(f32(-1f) * -352f))), _wgslsmith_f_op_f32(f32(-1f) * -656f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1015f * 668f))))).a.wzz;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(939f)) * _wgslsmith_f_op_f32(max(-434f, 1033f)))), _wgslsmith_div_f32(-1641f, -1000f))) - -159f);
}

fn func_7(arg_0: i32, arg_1: f32) -> Struct_4 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, arg_1) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -1274f, arg_1) + vec3<f32>(-847f, -337f, arg_1)))), vec3<f32>(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -351f), _wgslsmith_div_f32(655f, _wgslsmith_div_f32(-1171f, 1221f))), !(!(!vec3<bool>(global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(11394u, 11u)], true))))));
    let var_2 = global0[_wgslsmith_index_u32(select(global1.b.x, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.c.e.x, u_input.a.x, 38637u), func_3(u_input.a.zwx, -2147483647i, Struct_4(Struct_3(vec4<u32>(4294967295u, 19281u, 67638u, u_input.d), -1i, -1i, global0[_wgslsmith_index_u32(20135u, 11u)]), var_1.zz, 160f), Struct_3(global1.e, global1.c.a.x, global1.a.x, false)).b) | 0u, func_3(u_input.b.wwz ^ firstTrailingBit(u_input.a.wwz), -2147483647i, Struct_4(func_1(0u, global0[_wgslsmith_index_u32(u_input.d, 11u)], Struct_2(vec2<i32>(var_0, -11905i), u_input.b.zyx, global1.c, global1.d, vec4<u32>(u_input.c.x, 4294967295u, u_input.d, 0u)), vec4<f32>(-125f, arg_1, 311f, var_1.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, arg_1) - vec2<f32>(arg_1, 879f)), _wgslsmith_f_op_f32(var_1.x + var_1.x)), Struct_3(func_5(Struct_2(vec2<i32>(0i, global1.d.x), vec3<u32>(4294967295u, 25773u, 1u), global1.c, global1.c.d, u_input.b), Struct_3(vec4<u32>(u_input.c.x, global1.c.c, global1.c.e.x, 0u), global1.a.x, var_0, false), 0u, Struct_2(global1.d.ww, vec3<u32>(20033u, global1.e.x, 7508u), Struct_1(global1.c.d.wyx, -55546i, u_input.c.x, vec4<i32>(global1.d.x, arg_0, 1i, var_0), u_input.a.zxy), global1.d, vec4<u32>(24771u, 65708u, 1u, 35699u))).e, _wgslsmith_mod_i32(25429i, -2147483647i), 58503i, false)).e.x), !func_1(func_2(Struct_4(Struct_3(u_input.b, var_0, 2147483647i, false), var_1.zz, 320f)), true, func_5(Struct_2(vec2<i32>(-1i, 2147483647i), vec3<u32>(4294967295u, 61706u, 17595u), global1.c, vec4<i32>(global1.a.x, var_0, arg_0, global1.d.x), u_input.a), Struct_3(vec4<u32>(global1.e.x, u_input.c.x, 4294967295u, 4294967295u), 10247i, arg_0, true), global1.e.x, Struct_2(global1.d.wy, vec3<u32>(72466u, u_input.b.x, global1.b.x), Struct_1(vec3<i32>(arg_0, -1079i, -43301i), var_0, u_input.d, vec4<i32>(var_0, global1.d.x, -2147483647i, global1.d.x), vec3<u32>(global1.b.x, u_input.b.x, global1.c.e.x)), global1.d, vec4<u32>(global1.b.x, 69909u, u_input.a.x, global1.c.c))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1766f, arg_1, -1125f, 442f) * vec4<f32>(arg_1, 1000f, 1736f, arg_1))).d == (func_1(_wgslsmith_div_u32(58777u, 44602u), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global1.e.xx, vec2<u32>(global1.b.x, 5044u)), 11u)], Struct_2(vec2<i32>(-1i, global1.c.b), global1.b, Struct_1(global1.d.xzx, 17362i, 25103u, global1.d, global1.c.e), vec4<i32>(2147483647i, 1i, global1.a.x, var_0), vec4<u32>(u_input.a.x, u_input.b.x, 8996u, global1.c.c)), vec4<f32>(arg_1, -1078f, -1166f, 386f)).d | (max(u_input.c.x, 0u) >= func_4(Struct_2(vec2<i32>(1i, arg_0), vec3<u32>(43188u, 1u, global1.b.x), global1.c, global1.c.d, global1.e), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], true, false)).c.e.x))), 11u)];
    var var_3 = arg_0 << (_wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(~1u, abs(global1.c.c) & firstTrailingBit(0u))) % 32u);
    var var_4 = Struct_2(vec2<i32>(0i, ~_wgslsmith_clamp_i32(var_0, global1.d.x >> (81339u % 32u), func_5(Struct_2(global1.c.a.xy, vec3<u32>(global1.b.x, u_input.a.x, global1.e.x), Struct_1(vec3<i32>(2147483647i, global1.a.x, arg_0), arg_0, 1u, global1.c.d, vec3<u32>(u_input.a.x, global1.e.x, u_input.b.x)), vec4<i32>(arg_0, var_0, arg_0, -1i), vec4<u32>(12893u, 25517u, global1.e.x, 4294967295u)), Struct_3(vec4<u32>(u_input.d, 55178u, 1u, 93801u), 0i, 1i, global0[_wgslsmith_index_u32(u_input.b.x, 11u)]), 0u, Struct_2(vec2<i32>(global1.d.x, 25864i), vec3<u32>(u_input.a.x, global1.b.x, 1u), global1.c, global1.d, vec4<u32>(1u, global1.c.e.x, u_input.b.x, 37706u))).a.x)), ~func_3(func_3(func_4(Struct_2(vec2<i32>(-8843i, -1i), global1.b, Struct_1(vec3<i32>(27983i, 0i, 58142i), global1.d.x, global1.b.x, vec4<i32>(var_0, arg_0, -50653i, arg_0), u_input.b.xyx), global1.c.d, vec4<u32>(64257u, 1u, 118976u, u_input.b.x)), vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)])).e.yyy, -21843i ^ arg_0, Struct_4(Struct_3(u_input.a, var_0, global1.c.d.x, global0[_wgslsmith_index_u32(global1.c.e.x, 11u)]), var_1.zx, 1160f), Struct_3(global1.e, 0i, -16221i, true)).b, -arg_0, Struct_4(Struct_3(vec4<u32>(u_input.c.x, global1.c.c, u_input.c.x, 122327u), 0i, 0i, false), _wgslsmith_f_op_vec2_f32(floor(var_1.xz)), -1000f), Struct_3(vec4<u32>(global1.c.c, 57445u, 1u, 1u) | u_input.a, countOneBits(24918i), i32(-1i) * -1i, all(vec4<bool>(false, true, false, true)))).e.zxw, Struct_1(vec3<i32>(~abs(global1.a.x), ~global1.d.x, arg_0), _wgslsmith_sub_i32(-1i, -19826i), ~(~38049u), global1.d, _wgslsmith_sub_vec3_u32(~global1.e.xxy, vec3<u32>(global1.c.e.x, global1.b.x, u_input.c.x) | _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 13912u, global1.b.x), vec3<u32>(u_input.c.x, global1.c.c, 1u), u_input.b.xww))), _wgslsmith_mod_vec4_i32(global1.d, firstLeadingBit(~global1.c.d)), global1.e);
    return Struct_4(func_1(((0u << (var_4.b.x % 32u)) | 1u) | ~_wgslsmith_mult_u32(u_input.d, 1u), true, func_5(func_4(func_5(Struct_2(vec2<i32>(var_0, 0i), u_input.a.wwz, Struct_1(vec3<i32>(48774i, 2147483647i, var_4.c.a.x), arg_0, u_input.b.x, global1.c.d, vec3<u32>(var_4.c.e.x, 51259u, var_4.c.e.x)), vec4<i32>(18659i, -2147483647i, -2147483647i, var_4.d.x), vec4<u32>(0u, var_4.e.x, var_4.b.x, 48828u)), Struct_3(global1.e, -28324i, arg_0, false), var_4.e.x, Struct_2(vec2<i32>(-2147483647i, var_0), var_4.c.e, Struct_1(vec3<i32>(-1i, 0i, 0i), global1.a.x, 1u, global1.d, global1.c.e), var_4.c.d, global1.e)), vec3<bool>(true, true, true)), Struct_3(abs(vec4<u32>(global1.c.e.x, u_input.c.x, var_4.b.x, global1.c.e.x)), 2147483647i, var_4.d.x & var_0, global0[_wgslsmith_index_u32(~u_input.d, 11u)]), func_5(func_5(Struct_2(vec2<i32>(-1i, -1i), var_4.c.e, var_4.c, global1.c.d, global1.e), Struct_3(vec4<u32>(global1.c.e.x, 0u, var_4.e.x, u_input.c.x), -2147483647i, var_4.c.d.x, false), var_4.c.c, Struct_2(vec2<i32>(var_4.c.b, 0i), u_input.b.yzx, global1.c, var_4.c.d, vec4<u32>(var_4.c.c, 2751u, 4294967295u, 21346u))), Struct_3(u_input.b, arg_0, global1.d.x, true), var_4.b.x, Struct_2(vec2<i32>(-1i, global1.d.x), vec3<u32>(var_4.c.c, u_input.a.x, 0u), Struct_1(vec3<i32>(38986i, arg_0, 41867i), -11340i, 0u, var_4.c.d, vec3<u32>(global1.b.x, global1.c.e.x, u_input.d)), vec4<i32>(global1.c.b, global1.d.x, -1i, arg_0), vec4<u32>(51664u, 0u, 53229u, var_4.b.x))).b.x, func_5(func_4(Struct_2(vec2<i32>(var_0, global1.d.x), var_4.e.wxy, var_4.c, global1.c.d, global1.e), vec3<bool>(global0[_wgslsmith_index_u32(0u, 11u)], true, global0[_wgslsmith_index_u32(var_4.c.e.x, 11u)])), Struct_3(vec4<u32>(1u, global1.b.x, var_4.c.e.x, u_input.c.x), -19236i, 16822i, false), 64727u, Struct_2(vec2<i32>(20246i, global1.d.x), vec3<u32>(global1.b.x, var_4.c.e.x, 55438u), Struct_1(vec3<i32>(global1.c.d.x, -2147483647i, var_0), var_4.a.x, 19224u, var_4.c.d, vec3<u32>(52416u, global1.e.x, var_4.e.x)), vec4<i32>(var_4.d.x, 31414i, -59132i, -1i), global1.e))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 1122f, 502f, var_1.x) - vec4<f32>(var_1.x, 670f, 1369f, arg_1)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.yz)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2746f * _wgslsmith_f_op_f32(406f - -1094f))), -562f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 11>();
    let var_0 = -countOneBits(countOneBits(-1i));
    let var_1 = func_7(_wgslsmith_clamp_i32(-1i, max(i32(-1i) * -2331i, global1.d.x), -2147483647i), _wgslsmith_f_op_f32(func_6(global1.c, !(!(!vec4<bool>(global0[_wgslsmith_index_u32(30383u, 11u)], global0[_wgslsmith_index_u32(global1.b.x, 11u)], true, global0[_wgslsmith_index_u32(global1.e.x, 11u)]))), func_1(~_wgslsmith_dot_vec2_u32(global1.b.zy, vec2<u32>(global1.b.x, global1.b.x)), global1.c.b <= (2147483647i ^ global1.c.b), Struct_2(abs(global1.c.d.ww), global1.c.e, Struct_1(global1.d.wzy, var_0, u_input.d, vec4<i32>(40407i, 99390i, 0i, var_0), global1.b), vec4<i32>(var_0, 43922i, global1.a.x, global1.c.b), ~u_input.a), vec4<f32>(_wgslsmith_f_op_f32(-1200f - -1106f), _wgslsmith_f_op_f32(round(-712f)), _wgslsmith_f_op_f32(max(292f, 155f)), 388f)))));
    global0 = array<bool, 11>();
    let var_2 = true;
    global1 = func_4(Struct_2(vec2<i32>(global1.a.x, 0i), reverseBits(~vec3<u32>(0u, 0u, 17189u) & ~vec3<u32>(35852u, u_input.b.x, global1.b.x)), func_3(min(vec3<u32>(global1.e.x, var_1.a.a.x, 0u), func_4(Struct_2(global1.a, var_1.a.a.wxy, global1.c, vec4<i32>(var_1.a.c, 2147483647i, -24911i, 2147483647i), u_input.a), vec3<bool>(true, var_1.a.d, global0[_wgslsmith_index_u32(var_1.a.a.x, 11u)])).b), firstTrailingBit(-1i), Struct_4(Struct_3(var_1.a.a, 24064i, -1i, var_2), _wgslsmith_f_op_vec2_f32(-var_1.b), _wgslsmith_f_op_f32(abs(var_1.b.x))), var_1.a).c, vec4<i32>(~var_1.a.b & _wgslsmith_sub_i32(var_1.a.b, -12056i), _wgslsmith_clamp_i32(-28357i, ~(-1i), func_1(global1.e.x, var_2, Struct_2(global1.c.a.yx, u_input.a.yzx, global1.c, vec4<i32>(34201i, var_0, var_0, 1i), var_1.a.a), vec4<f32>(-1175f, var_1.b.x, 605f, -865f)).b), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(global1.c.d.x, var_1.a.b), -global1.d.x, i32(-1i) * -21509i), -var_1.a.c), u_input.b), !select(select(!vec3<bool>(var_2, global0[_wgslsmith_index_u32(u_input.b.x, 11u)], global0[_wgslsmith_index_u32(78267u, 11u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], false, global0[_wgslsmith_index_u32(u_input.d, 11u)]), vec3<bool>(global0[_wgslsmith_index_u32(23916u, 11u)], true, var_2), vec3<bool>(true, false, true)), vec3<bool>(var_1.a.d, global0[_wgslsmith_index_u32(1u, 11u)], var_2)), !vec3<bool>(var_2, true, global0[_wgslsmith_index_u32(0u, 11u)]), true));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.b, -_wgslsmith_mod_vec4_i32(global1.d, global1.d), var_0 << ((36228u << (func_4(Struct_2(global1.a, u_input.a.yzz, global1.c, global1.c.d, global1.e), vec3<bool>(var_2, true, true)).e.x % 32u)) % 32u), _wgslsmith_mult_i32(func_1(_wgslsmith_dot_vec2_u32(u_input.b.xz << (var_1.a.a.wx % vec2<u32>(32u)), u_input.b.xz << (vec2<u32>(15403u, 62056u) % vec2<u32>(32u))), true, Struct_2(-vec2<i32>(var_0, global1.a.x), vec3<u32>(4294967295u, 69468u, 15189u) << (var_1.a.a.xxy % vec3<u32>(32u)), func_3(global1.e.www, 2147483647i, var_1, var_1.a).c, global1.c.d, vec4<u32>(1u, 4294967295u, 10968u, 43671u)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.b.x, var_1.c, 1430f, var_1.b.x)))).b, -1i));
}

