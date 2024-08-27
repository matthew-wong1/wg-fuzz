struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_1 = Struct_1(2147483647i, -1i, vec2<i32>(-45248i, 1i));

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(1i, 18668i, vec2<i32>(-12896i, 45713i)), Struct_1(0i, 0i, vec2<i32>(16960i, 1i)), Struct_1(16004i, 35767i, vec2<i32>(i32(-2147483648), -40712i)), Struct_1(-25949i, 2147483647i, vec2<i32>(34141i, 0i)), Struct_1(0i, -7997i, vec2<i32>(31364i, 27967i)), Struct_1(26631i, 19690i, vec2<i32>(1i, 0i)), Struct_1(1i, -25596i, vec2<i32>(2147483647i, 1i)), Struct_1(-11545i, -16407i, vec2<i32>(-20293i, 5559i)), Struct_1(48953i, 37962i, vec2<i32>(64669i, 2147483647i)), Struct_1(0i, i32(-2147483648), vec2<i32>(11203i, 1i)), Struct_1(0i, 1i, vec2<i32>(2147483647i, 1i)), Struct_1(1i, 9891i, vec2<i32>(1i, 2147483647i)), Struct_1(0i, 30087i, vec2<i32>(19766i, -1i)), Struct_1(1i, -21954i, vec2<i32>(6276i, -80939i)), Struct_1(i32(-2147483648), -9824i, vec2<i32>(19649i, 1i)), Struct_1(0i, -1i, vec2<i32>(i32(-2147483648), 37248i)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_1) -> f32 {
    global1 = Struct_1(-global2.a, 1i, global2.c);
    var var_0 = vec2<u32>(_wgslsmith_dot_vec3_u32((firstLeadingBit(u_input.a.wzx) | _wgslsmith_div_vec3_u32(vec3<u32>(arg_2, arg_2, 36721u), u_input.a.yyx)) ^ (firstTrailingBit(vec3<u32>(1u, 19411u, u_input.b.x)) & countOneBits(u_input.a.zzz)), vec3<u32>(abs(u_input.a.x), _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_mult_u32(0u, arg_2)), ~25298u)), u_input.b.x);
    global2 = arg_3;
    global0 = !(_wgslsmith_mult_u32(~var_0.x, 24087u) >= ~46319u);
    var var_1 = arg_3;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1168f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -919f) - _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-1730f - arg_0.x))), (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 8544u), u_input.b.yw) ^ ~arg_2) > ~4294967295u))));
}

fn func_2() -> i32 {
    global1 = global3[_wgslsmith_index_u32(u_input.b.x, 16u)];
    let var_0 = -u_input.c.x;
    global2 = global3[_wgslsmith_index_u32(firstTrailingBit(455u), 16u)];
    global1 = Struct_1(0i, global1.b, _wgslsmith_mod_vec2_i32(~min(u_input.c.wy, global1.c) | min(_wgslsmith_add_vec2_i32(u_input.c.zx, global2.c), min(vec2<i32>(global2.c.x, -14022i), vec2<i32>(-14122i, -33065i))), global2.c));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -662f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_div_f32(464f, 829f)) + _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1735f, -1679f)), vec3<bool>(true, true, true), 4294967295u, Struct_1(1i, -2147483647i, global2.c))))), 515f);
    return var_0;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global1 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-16059i, global1.b) | -38588i, func_2()), ~6247i), u_input.c.x, vec2<i32>(-1i) * -global2.c);
    let var_0 = Struct_1(2664i, ~global1.c.x, abs(reverseBits(_wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.c.x, -22444i), vec2<i32>(u_input.c.x, -24115i)))));
    global1 = global3[_wgslsmith_index_u32(u_input.b.x, 16u)];
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-379f, 153f, 1829f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-646f, 298f, 818f) - vec3<f32>(-272f, -922f, -934f)))))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 16>();
    global1 = global3[_wgslsmith_index_u32(4294967295u, 16u)];
    let var_0 = func_1(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), 16u)]);
    global2 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(13242u, 72665u, firstTrailingBit(~firstTrailingBit(u_input.a.x) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.a.x), select(u_input.b, u_input.a, vec4<bool>(true, true, true, true))))), 16u)];
    global0 = any(vec4<bool>(!all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false)), !any(vec4<bool>(true, false, false, false)) & any(vec2<bool>(true, true)), u_input.a.x < _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.b.x, 0u), vec4<u32>(u_input.a.x, u_input.b.x, 4294967295u, u_input.b.x)), abs(4294967295u)), firstLeadingBit(65994u >> (u_input.a.x % 32u)) > _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.b.xzw, u_input.a.xwy), u_input.b.xzz)));
    global3 = array<Struct_1, 16>();
    global1 = Struct_1(func_2(), -2147483647i, vec2<i32>(u_input.c.x, abs(-u_input.c.x)));
    var var_1 = vec3<u32>(~max(34296u, firstLeadingBit(4294967295u ^ u_input.b.x)), ~(~u_input.b.x), abs(~(~(~u_input.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(280f)) - _wgslsmith_f_op_f32(trunc(-524f))) - -1100f)));
}

