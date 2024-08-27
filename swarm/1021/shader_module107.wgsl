struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<bool>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31>;

var<private> global1: vec4<u32>;

var<private> global2: vec4<u32> = vec4<u32>(1u, 1u, 1u, 73024u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = ~_wgslsmith_mult_i32(~(-28421i), -(~_wgslsmith_dot_vec3_i32(vec3<i32>(47304i, 0i, 1i), vec3<i32>(0i, -8383i, -1i))));
    let var_1 = min(vec4<i32>(abs(_wgslsmith_div_i32(min(45253i, -36205i), i32(-1i) * -24864i)), -firstLeadingBit(-1i), -countOneBits(_wgslsmith_sub_i32(4399i, 1i)), ~countOneBits(~(-2825i))), vec4<i32>(-2190i, ~1i, ~firstTrailingBit(abs(-24346i)), 2147483647i));
    global2 = ~(~(~min(vec4<u32>(25154u, arg_0, global1.x, 1u) & vec4<u32>(u_input.a, global1.x, u_input.a, u_input.a), ~vec4<u32>(81744u, 1u, global2.x, u_input.a))));
    var_0 = _wgslsmith_clamp_i32(reverseBits(abs(var_1.x)), _wgslsmith_mod_i32(~2147483647i >> (_wgslsmith_div_u32(~41135u, 4294967295u >> (0u % 32u)) % 32u), -17565i), i32(-1i) * -1i);
    var_0 = ~_wgslsmith_sub_i32(firstLeadingBit(-6373i), var_1.x);
    return _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~global1.yy, ~vec2<u32>(firstLeadingBit(9735u), select(82383u, 105269u, false))), 31u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(396f + _wgslsmith_f_op_f32(420f - global0[_wgslsmith_index_u32(65309u, 31u)])))));
}

fn func_2(arg_0: vec2<u32>, arg_1: i32) -> vec3<u32> {
    var var_0 = 421f;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_sub_u32(67477u, arg_0.x))), global0[_wgslsmith_index_u32(~(45723u << (global1.x % 32u)), 31u)])));
    var var_2 = Struct_3(Struct_1(vec3<i32>(_wgslsmith_clamp_i32(~1i, max(-4062i, -18661i), arg_1), firstTrailingBit(arg_1 << (4294967295u % 32u)), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, arg_1), vec2<i32>(28071i, arg_1)))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~abs(62603u), _wgslsmith_div_u32(arg_0.x, min(global2.x, 5712u))), 31u)]));
    global1 = vec4<u32>(firstTrailingBit(4294967295u), abs(~4294967295u) & ~u_input.a, _wgslsmith_add_u32(9675u, firstTrailingBit(97920u)), 57183u);
    let var_3 = !(!(all(vec4<bool>(false, true, false, false)) || true) && all(vec4<bool>(true, true, any(vec4<bool>(false, false, true, true)), any(vec3<bool>(false, false, true)))));
    return reverseBits(_wgslsmith_mult_vec3_u32(global1.wwy, (vec3<u32>(0u, 58378u, arg_0.x) | vec3<u32>(0u, global1.x, u_input.a)) << (countOneBits(vec3<u32>(1u, 73261u, 50197u)) % vec3<u32>(32u)))) ^ ~(global1.xzx << (~(vec3<u32>(global2.x, arg_0.x, 25683u) >> (global1.xyz % vec3<u32>(32u))) % vec3<u32>(32u)));
}

fn func_1() -> Struct_1 {
    var var_0 = select(firstTrailingBit(u_input.a), _wgslsmith_dot_vec3_u32(func_2(~global2.yx, i32(-1i) * -13714i), vec3<u32>(global1.x, global2.x >> (u_input.a % 32u), u_input.a)), false) & 1u;
    var_0 = ~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(global1.x, 5301u, ~12125u)), reverseBits(~(global1.yzx | vec3<u32>(0u, 102622u, 79672u))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(global2.x, 31u)], global0[_wgslsmith_index_u32(global1.x, 31u)])), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-785f, 225f, global0[_wgslsmith_index_u32(17160u, 31u)])))))))));
    let var_2 = Struct_1(-(vec3<i32>(-96022i >> (0u % 32u), 0i, ~(-35566i)) >> (~(~vec3<u32>(87130u, global2.x, global1.x)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(ceil(-1666f)));
    let var_3 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-526f * -210f), _wgslsmith_f_op_f32(-197f + -708f), _wgslsmith_f_op_f32(func_3(40248u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-1110f - global0[_wgslsmith_index_u32(22297u, 31u)])), _wgslsmith_f_op_f32(max(-1263f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_2(reverseBits(~vec4<u32>(9963u, _wgslsmith_mult_u32(global1.x, u_input.a), _wgslsmith_mult_u32(u_input.a, 18729u), global1.x)), vec4<u32>(_wgslsmith_div_u32(abs(84494u), u_input.a), ~19751u, global2.x, 1u), select(vec3<bool>(true, true, true), vec3<bool>(true, false, 984f < _wgslsmith_f_op_f32(var_0.b * -669f)), vec3<bool>(true, true, true)), _wgslsmith_div_f32(1546f, _wgslsmith_f_op_f32(abs(var_0.b))), var_0);
    var var_2 = ~(~(~var_1.a));
    let var_3 = Struct_2(var_1.a, vec4<u32>(57005u, 46637u, 0u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, u_input.a, var_2.x, 84351u), _wgslsmith_add_vec4_u32(vec4<u32>(global2.x, 76765u, global2.x, 14516u), var_1.a), vec4<u32>(10940u, global2.x, var_1.a.x, global2.x) << (var_1.b % vec4<u32>(32u))), var_1.b)), vec3<bool>(var_1.c.x, select(all(var_1.c), var_1.c.x, true), var_1.c.x), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global2.x, 31u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e.b - _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(0u, 31u)]))))), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.e.b, _wgslsmith_f_op_f32(887f * 155f), 736f, var_3.e.b))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.e.b, 2036f)))), firstTrailingBit(-1i));
}

