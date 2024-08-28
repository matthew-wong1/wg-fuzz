struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9> = array<i32, 9>(23123i, -1i, i32(-2147483648), 0i, 15848i, 772i, 16911i, 0i, 2147483647i);

var<private> global1: array<vec4<f32>, 12>;

var<private> global2: array<i32, 20> = array<i32, 20>(i32(-2147483648), -24705i, -56151i, i32(-2147483648), -832i, 2147483647i, 8777i, i32(-2147483648), 27820i, i32(-2147483648), 1i, -19016i, 1i, 0i, 1i, -4786i, -1872i, -34262i, 0i, 2147483647i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec2<i32> {
    global2 = array<i32, 20>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -352f)))), i32(-1i) * -10618i);
    var var_1 = var_0.b;
    var var_2 = _wgslsmith_div_u32(5033u, 63749u);
    var var_3 = var_0;
    return vec2<i32>(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~1u), 20u)], global0[_wgslsmith_index_u32(1u, 9u)] ^ _wgslsmith_sub_i32(var_3.b | -2147483647i, u_input.a.x)), global2[_wgslsmith_index_u32(36315u, 20u)]);
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = Struct_1(arg_0, _wgslsmith_div_i32(11134i, _wgslsmith_mod_i32(0i, global0[_wgslsmith_index_u32(20384u, 9u)])) ^ _wgslsmith_dot_vec2_i32(u_input.a.yy, func_3() | vec2<i32>(global2[_wgslsmith_index_u32(56127u, 20u)], -1i)));
    global1 = array<vec4<f32>, 12>();
    var var_1 = vec3<u32>(_wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, 1u), vec2<u32>(1u, 1u)), vec2<u32>(~_wgslsmith_mult_u32(34088u, 38255u), 1u)), _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(min(2429u, 1u), abs(1u)), ~1u), 53179u), _wgslsmith_sub_u32(select(~0u, 1u, true) >> (1u % 32u), 6289u));
    var var_2 = _wgslsmith_div_u32(_wgslsmith_div_u32(min(max(4294967295u, var_1.x), 1u ^ var_1.x), 4294967295u) & ~_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(var_1.x, 1u, var_1.x)), ~vec3<u32>(1u, var_1.x, 0u)), reverseBits(reverseBits(1u)));
    let var_3 = select(var_0.b, _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], _wgslsmith_add_i32(-1i, global2[_wgslsmith_index_u32(1u, 20u)])) ^ firstLeadingBit(u_input.b.zz), countOneBits(u_input.a.xy)), true);
    return -1660f;
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: vec3<u32>, arg_3: u32) -> f32 {
    global0 = array<i32, 9>();
    global2 = array<i32, 20>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -146f)) + _wgslsmith_f_op_f32(func_2(_wgslsmith_div_f32(-1126f, -505f)))), _wgslsmith_clamp_i32(-global2[_wgslsmith_index_u32(arg_2.x, 20u)], arg_1, min(-_wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(4100u, 20u)], -2147483647i, -1i, 24646i), vec4<i32>(global2[_wgslsmith_index_u32(arg_2.x, 20u)], 9643i, global0[_wgslsmith_index_u32(arg_2.x, 9u)], -32420i)), _wgslsmith_div_i32(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(arg_2.x, 9u)], global0[_wgslsmith_index_u32(arg_3, 9u)], arg_1), vec4<i32>(global2[_wgslsmith_index_u32(arg_3, 20u)], 28959i, -30174i, global2[_wgslsmith_index_u32(arg_2.x, 20u)]))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-197f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-950f)), _wgslsmith_f_op_f32(-var_0.a))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-814f, var_0.a), vec2<f32>(-592f, var_0.a)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(215f, 1894f) * vec2<f32>(1000f, -2010f)) + vec2<f32>(1086f, 884f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(417f, 639f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.a, 1000f))))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-972f))))))) * _wgslsmith_div_f32(1000f, _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(314f, 1627f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 20>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -424f), -355f, _wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, true), global2[_wgslsmith_index_u32(~4294967295u, 20u)], vec3<u32>(52819u, 4294967295u, 1u), 39759u >> (1u % 32u)))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.x, 383f))), max(~(-1i), _wgslsmith_mult_i32(~global0[_wgslsmith_index_u32(29086u, 9u)], -24991i)) >> (4294967295u % 32u));
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), u_input.b.x, vec3<u32>(1u, 1u, 1u), ~20777u))), ~abs(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(4294967295u, 11140u), 9u)]));
    let var_2 = firstLeadingBit(_wgslsmith_add_vec4_i32(~(-vec4<i32>(u_input.b.x, -1i, global0[_wgslsmith_index_u32(0u, 9u)], 35179i)), firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(0i, global2[_wgslsmith_index_u32(75727u, 20u)], global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(12834u, 9u)]), vec4<i32>(20999i, u_input.a.x, -10184i, global2[_wgslsmith_index_u32(123794u, 20u)]))))) >> (~vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u));
    var_1 = Struct_1(var_1.a, 1i);
    let var_3 = ~max(_wgslsmith_sub_vec4_u32(select(vec4<u32>(4294967295u, 52617u, 4294967295u, 62255u), vec4<u32>(4294967295u, 0u, 4294967295u, 0u), vec4<bool>(true, true, true, false)), vec4<u32>(1u, 1u, 1u, 1u)) >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(21797u, 123589u, 7153u, 0u), ~vec4<u32>(23945u, 4294967295u, 14203u, 58155u)) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(1u, 25015u, 0u, 117534u), max(vec4<u32>(4294967295u, 0u, 1u, 5656u), vec4<u32>(15379u, 1u, 0u, 71478u))), vec4<u32>(1u, 1u, 1u, 1u)));
    global0 = array<i32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.yyz, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -380f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -1783f)), var_0.x, var_0.x, _wgslsmith_f_op_f32(626f * var_1.a)));
}

