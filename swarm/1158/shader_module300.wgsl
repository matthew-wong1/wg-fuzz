struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<bool>,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20> = array<i32, 20>(-1i, -1i, i32(-2147483648), i32(-2147483648), i32(-2147483648), -1i, -1i, -1i, -16521i, -1i, -16506i, 2147483647i, 17444i, 1i, -21087i, 1i, -26644i, 2147483647i, -1i, i32(-2147483648));

var<private> global1: array<Struct_2, 16>;

var<private> global2: array<Struct_3, 23>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec3<bool>, arg_3: i32) -> f32 {
    global2 = array<Struct_3, 23>();
    global2 = array<Struct_3, 23>();
    var var_0 = vec2<i32>(_wgslsmith_add_i32(countOneBits(-reverseBits(-1i)), max(_wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, 12742i, -6209i, u_input.a.x), vec4<i32>(arg_3, u_input.a.x, arg_3, 0i)), 1i)), arg_3);
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1226f, -1297f, 962f) + vec3<f32>(931f, -270f, -1463f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(250f, -1358f, -1000f) + vec3<f32>(-1488f, 259f, -1000f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -611f), _wgslsmith_f_op_f32(min(-2252f, 835f)), 894f))), -abs(_wgslsmith_clamp_i32(-34585i, _wgslsmith_sub_i32(53716i, 28349i), _wgslsmith_mod_i32(var_0.x, -15765i))), var_0.x, reverseBits(_wgslsmith_sub_u32(48443u, u_input.b)), abs(~71788u));
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, var_1.a.x, -448f)) - vec3<f32>(442f, 185f, 3260f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_1.a * var_1.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, var_1.a.x, -1789f) * var_1.a), arg_1))))), _wgslsmith_add_i32(var_1.c, _wgslsmith_div_i32(23710i, var_0.x)) ^ global0[_wgslsmith_index_u32(arg_0, 20u)], -global0[_wgslsmith_index_u32(~94331u, 20u)], ~select((u_input.b ^ 94680u) << (arg_0 % 32u), _wgslsmith_add_u32(arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(53949u, u_input.b, arg_0), vec3<u32>(0u, 108505u, var_1.e))), arg_2.x), 4294967295u);
    return -703f;
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-454f + _wgslsmith_f_op_f32(ceil(151f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-313f + 1043f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(491f)), _wgslsmith_f_op_f32(f32(-1f) * -1522f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-478f)))) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(func_3(u_input.b, false, vec3<bool>(false, false, true), -1i)), any(vec2<bool>(true, false)))))));
    let var_1 = u_input.a;
    global0 = array<i32, 20>();
    var var_2 = _wgslsmith_dot_vec2_i32(~vec2<i32>(max(u_input.a.x, i32(-1i) * -33788i), u_input.a.x), u_input.a);
    global1 = array<Struct_2, 16>();
    return Struct_1(select(vec3<bool>(false, true && select(false, true, false), true), !vec3<bool>(all(vec3<bool>(true, true, false)), u_input.b >= 1u, true), select(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), true)), 9221u, vec2<bool>(true, true), global0[_wgslsmith_index_u32(0u, 20u)], select(!vec3<bool>(all(vec2<bool>(false, true)), all(vec2<bool>(true, false)), select(true, true, false)), select(vec3<bool>(true, u_input.b != 1u, true), vec3<bool>(true, true, 4294967295u >= u_input.b), true), vec3<bool>(any(vec2<bool>(true, true)), any(vec2<bool>(true, true)), all(vec2<bool>(false, false)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> f32 {
    global1 = array<Struct_2, 16>();
    global2 = array<Struct_3, 23>();
    global0 = array<i32, 20>();
    let var_0 = func_2();
    global2 = array<Struct_3, 23>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1095f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -779f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-752f, -313f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<i32>(0i, -32140i, 2147483647i, 2147483647i), 4294967295u))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-624f)) + 254f))), _wgslsmith_clamp_i32(10457i, min(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 20u)], -4754i, u_input.a.x, 7923i) >> (vec4<u32>(u_input.b, u_input.b, 0u, u_input.b) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, u_input.a.x, -36581i, -1i)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 21966u, u_input.b), firstTrailingBit(vec3<u32>(17997u, u_input.b, u_input.b))), 20u)]), global0[_wgslsmith_index_u32(~u_input.b, 20u)]), ~((1i | -global0[_wgslsmith_index_u32(u_input.b, 20u)]) << (~33021u % 32u)), _wgslsmith_div_u32(firstTrailingBit(0u), 2569u), u_input.b);
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-304f, _wgslsmith_f_op_f32(1199f * var_0.a.x)) + _wgslsmith_f_op_f32(f32(-1f) * -699f)) - var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1583f) * var_0.a.x) - _wgslsmith_f_op_f32(step(1789f, _wgslsmith_f_op_f32(-var_0.a.x))))), !(1i == _wgslsmith_add_i32(var_0.c, global0[_wgslsmith_index_u32(0u, 20u)] & var_0.c))));
    var var_2 = -2667f;
    global2 = array<Struct_3, 23>();
    let var_3 = vec4<u32>(~var_0.e, ~(~var_0.d), 0u, reverseBits(21450u)) >> (vec4<u32>(max(4294967295u, u_input.b), 1u, ~(~var_0.e), var_0.e) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(2479i, 1055i, 43092i, global0[_wgslsmith_index_u32(29433u, 20u)]), vec4<i32>(1i, -20668i, 29575i, -2147483647i), vec4<i32>(global0[_wgslsmith_index_u32(93987u, 20u)], u_input.a.x, -14738i, var_0.b)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, 38780u, var_3.x), vec4<u32>(u_input.b, var_3.x, 20888u, u_input.b), vec4<u32>(103705u, 1u, 0u, 0u)) % vec4<u32>(32u))), reverseBits(~(-vec4<i32>(global0[_wgslsmith_index_u32(30546u, 20u)], -2147483647i, var_0.b, var_0.b)))));
}

