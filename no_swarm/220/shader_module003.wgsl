struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 1u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec3<i32>, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = vec4<f32>(909f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-1175f, -376f), _wgslsmith_f_op_f32(599f * arg_3.x)))), _wgslsmith_f_op_f32(f32(-1f) * -2503f), _wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1083f * 471f)) - -1836f)));
    var var_1 = 1i;
    var_1 = ~(-2147483647i);
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(657f + arg_3.x), _wgslsmith_f_op_f32(step(arg_3.x, 818f)), _wgslsmith_f_op_f32(-var_0.x), arg_3.x);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return Struct_1(4294967295u);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_1(~_wgslsmith_mod_u32(_wgslsmith_add_u32(arg_3.a, u_input.b.x), _wgslsmith_div_u32(countOneBits(arg_3.a), abs(arg_1.a))));
    var_0 = arg_1;
    global0 = countOneBits((u_input.a.xz & countOneBits(countOneBits(vec2<u32>(4294967295u, 1u)))) ^ u_input.b.zy);
    var var_1 = Struct_1(countOneBits(~_wgslsmith_div_u32(75411u, 1u)) >> (u_input.a.x % 32u));
    var_0 = func_1(-1i, 4294967295u, vec3<i32>(-1i << ((1u & _wgslsmith_mod_u32(var_0.a, 4294967295u)) % 32u), firstLeadingBit(countOneBits(arg_2)), arg_2), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-417f * 991f), _wgslsmith_f_op_f32(-1333f - -918f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -396f) + _wgslsmith_f_op_f32(floor(-361f)))), -506f));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-500f, -174f) * _wgslsmith_f_op_f32(567f - -1855f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-224f - -1000f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(-439f, -318f)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(149f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-398f)), 674f))));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> vec4<u32> {
    global0 = u_input.b.ww;
    global0 = u_input.b.yz;
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -537f), _wgslsmith_f_op_f32(floor(249f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<bool>(false, true, true, true), Struct_1(4294967295u), 16449i, arg_0)) * -859f)))));
    var var_1 = u_input.a.yzx;
    global0 = _wgslsmith_add_vec2_u32(~u_input.a.xz, ~((var_1.yx ^ firstLeadingBit(vec2<u32>(33360u, 4294967295u))) >> ((u_input.a.yy >> ((vec2<u32>(1u, u_input.b.x) ^ u_input.b.yx) % vec2<u32>(32u))) % vec2<u32>(32u))));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_u32(~func_2(func_1(1i, 4294967295u, vec3<i32>(2147483647i, 14570i, -4212i), vec3<f32>(1970f, 2297f, -566f)), global0.x) << (vec4<u32>(_wgslsmith_mult_u32(reverseBits(u_input.a.x), reverseBits(global0.x)), min(1u, global0.x >> (global0.x % 32u)), global0.x, 1u) % vec4<u32>(32u)), ~abs(firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 0u, 4294967295u, global0.x), vec4<u32>(global0.x, u_input.a.x, 59042u, 0u)))));
    global0 = min(firstTrailingBit(u_input.a.zw), ~_wgslsmith_add_vec2_u32(firstTrailingBit(u_input.a.ww), u_input.b.zx) | abs(_wgslsmith_mod_vec2_u32(func_2(Struct_1(4294967295u), var_0.x).zy, reverseBits(u_input.b.ww))));
    var var_1 = Struct_1(global0.x);
    let var_2 = vec3<i32>(_wgslsmith_add_i32(~_wgslsmith_sub_i32(-1i, -22635i), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, -1i, -28985i), vec3<i32>(-1i, 1i, 10914i), vec3<i32>(24985i, 21186i, 1i)), vec3<i32>(-4431i, 9599i, -1i)) << (_wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(u_input.b.x, var_0.x)) % 32u)), _wgslsmith_add_i32(~(~(~1i)), abs(abs(_wgslsmith_div_i32(2147483647i, -2147483647i)))), -abs(~(-2147483647i)));
    let var_3 = Struct_1(firstLeadingBit(func_2(Struct_1(1774u >> (var_1.a % 32u)), u_input.a.x).x));
    var_0 = min(u_input.a, ~u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.yz, vec2<u32>(var_0.x, firstLeadingBit(27027u)));
}

