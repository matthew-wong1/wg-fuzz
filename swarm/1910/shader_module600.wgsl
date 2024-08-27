struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 112969u;

var<private> global1: array<vec3<f32>, 11> = array<vec3<f32>, 11>(vec3<f32>(2350f, -183f, -455f), vec3<f32>(1771f, 317f, 948f), vec3<f32>(-111f, 1000f, -629f), vec3<f32>(-309f, 703f, -157f), vec3<f32>(1000f, 2095f, -1013f), vec3<f32>(-230f, 1160f, 1404f), vec3<f32>(2326f, -1000f, -1002f), vec3<f32>(-2340f, -1028f, 109f), vec3<f32>(884f, -506f, -1000f), vec3<f32>(-930f, -419f, 147f), vec3<f32>(-935f, -935f, -1489f));

var<private> global2: f32 = 1000f;

var<private> global3: i32;

var<private> global4: u32 = 4294967295u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    let var_0 = Struct_3(Struct_2(Struct_1(vec4<bool>(true, true, true, true), 56308i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.d.x) << (vec2<u32>(u_input.b, u_input.e.x) % vec2<u32>(32u)), -u_input.d.xy)), u_input.e.x, select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), vec3<bool>(any(vec4<bool>(false, false, true, true)), false, true)), select(u_input.b, _wgslsmith_sub_u32(1u, u_input.b) << (_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.e.x, u_input.b, u_input.e.x)) % 32u), !all(vec4<bool>(true, true, false, true)))), 1u, Struct_1(vec4<bool>(true, false, true, true), -_wgslsmith_mod_i32(~u_input.a, 41614i), -_wgslsmith_div_i32(1i, firstTrailingBit(2147483647i))));
    global4 = _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.e.x, 4294967295u << (reverseBits(u_input.b << (var_0.a.b % 32u)) % 32u)), ~var_0.a.b);
    global2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1177f))));
    var var_1 = var_0.a.a.a;
    var var_2 = var_0.a;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(831f * -1389f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-302f, -145f))))))));
}

fn func_2() -> Struct_1 {
    var var_0 = 2147483647i;
    let var_1 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1054f - 1401f))) != _wgslsmith_f_op_f32(func_3()), 257f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(762f + -466f)))), all(!select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true))));
    let var_2 = Struct_3(Struct_2(Struct_1(vec4<bool>(false, var_1.x, true, select(false, var_1.x, true)), reverseBits(firstTrailingBit(-2147483647i)), firstTrailingBit(max(1i, 8024i))), 0u & firstLeadingBit(u_input.e.x), var_1, 8790u), _wgslsmith_mult_u32(u_input.b, _wgslsmith_clamp_u32(13314u, u_input.b, ~_wgslsmith_mult_u32(u_input.b, u_input.e.x))), Struct_1(vec4<bool>(false, any(vec2<bool>(false, true)), var_1.x, !var_1.x), 0i, firstLeadingBit(-38874i)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(822f, _wgslsmith_div_f32(-1241f, 337f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 399f) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(517f, 534f))))))));
    let var_4 = var_2;
    return var_2.a.a;
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = true;
    var var_1 = func_2();
    let var_2 = select(var_1.a.x, var_1.a.x, true);
    let var_3 = ~vec4<i32>(u_input.d.x, u_input.d.x ^ -54186i, reverseBits(_wgslsmith_div_i32(-408i, _wgslsmith_add_i32(u_input.a, 23777i))), var_1.c << ((~79379u << (_wgslsmith_clamp_u32(0u, arg_0.x, 86541u) % 32u)) % 32u));
    var var_4 = Struct_3(Struct_2(func_2(), (u_input.e.x & u_input.e.x) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b) << (vec2<u32>(arg_0.x, 24097u) % vec2<u32>(32u)), ~vec2<u32>(u_input.c.x, 59651u)), var_1.a.xxz, max(4294967295u, ~u_input.c.x)), _wgslsmith_div_u32(u_input.e.x, min(u_input.c.x, 1u)), Struct_1(vec4<bool>(true, true && (false & var_1.a.x), !(!var_1.a.x), any(select(vec2<bool>(var_2, var_2), var_1.a.zx, var_1.a.xw))), var_1.b, ~_wgslsmith_sub_i32(~(-14987i), _wgslsmith_add_i32(var_3.x, u_input.a))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = min(58943u, 1u);
    var var_0 = false;
    global1 = array<vec3<f32>, 11>();
    global3 = -27384i;
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1417f))))));
    let var_2 = Struct_2(func_1(~vec3<u32>(_wgslsmith_add_u32(u_input.e.x, u_input.e.x), 1u, u_input.b)), max(select(0u, 62775u >> (countOneBits(u_input.b) % 32u), true), ~(u_input.e.x ^ ~u_input.b)), vec3<bool>(2147483647i == u_input.d.x, false, true | any(func_1(vec3<u32>(u_input.c.x, 75410u, u_input.b)).a.xxy)), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(959f, 663f), u_input.d.x);
}

