struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-415f, -736f);

var<private> global1: Struct_1 = Struct_1(false);

var<private> global2: vec4<u32>;

var<private> global3: array<u32, 17> = array<u32, 17>(125946u, 4294967295u, 75180u, 86507u, 44521u, 1u, 1u, 31407u, 24859u, 0u, 0u, 57326u, 105293u, 45455u, 0u, 4294967295u, 7543u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: vec2<bool>, arg_3: f32) -> vec4<u32> {
    global3 = array<u32, 17>();
    var var_0 = vec4<i32>(_wgslsmith_mod_i32(u_input.c, u_input.d), max(-10995i, -1i), -(select(u_input.b.x & 29194i, 1i, arg_2.x) & 2147483647i), ~(~(-8056i)));
    let var_1 = Struct_1(global1.a);
    var var_2 = arg_0.x;
    var var_3 = 9959i;
    return vec4<u32>(abs(global3[_wgslsmith_index_u32(~(~84069u) << (_wgslsmith_dot_vec2_u32(reverseBits(global2.zw), ~vec2<u32>(0u, 4294967295u)) % 32u), 17u)]), min(arg_0.x, ~1u), reverseBits(35630u), u_input.a);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec2_i32(countOneBits(arg_1.yy), firstLeadingBit(arg_1.xz));
    var var_1 = countOneBits(vec2<u32>(global2.x, ~_wgslsmith_dot_vec3_u32(global2.yzx << (vec3<u32>(global2.x, 53808u, u_input.a) % vec3<u32>(32u)), ~vec3<u32>(1u, 20524u, global2.x))));
    let var_2 = func_3(~vec2<u32>(~global3[_wgslsmith_index_u32(29350u, 17u)], ~4294967295u), 0u, !select(!vec2<bool>(global1.a, global1.a), vec2<bool>(true, false), global1.a), _wgslsmith_f_op_f32(-605f * global0.x)) << (vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.e, ~global3[_wgslsmith_index_u32(global2.x, 17u)]), global2.x | ~u_input.a, var_1.x & 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(~14436u, 1u), _wgslsmith_mod_vec2_u32(global2.yy, global2.zz)), _wgslsmith_mod_u32(firstLeadingBit(global2.x), 4294967295u), 4294967295u) % vec4<u32>(32u));
    var var_3 = arg_3;
    var var_4 = arg_2.x;
    return arg_3;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = func_2(arg_0, vec3<i32>(-_wgslsmith_div_i32(abs(u_input.d), reverseBits(arg_0.x)), -309i, -select(2147483647i, 1i, global1.a)), u_input.b.xzw, arg_1);
    global3 = array<u32, 17>();
    let var_1 = countOneBits(1i);
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(253f, -1000f), vec2<f32>(226f, global0.x)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.xw) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(752f, 1293f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(439f, -425f), vec2<f32>(arg_3.x, arg_3.x))))));
    var var_2 = ~(~0u);
    return var_0;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = select(!select(vec3<bool>(arg_0.x <= arg_0.x, func_1(u_input.b, arg_1, vec2<u32>(global2.x, 65853u), vec4<f32>(1000f, global0.x, global0.x, global0.x)).a, global1.a), !vec3<bool>(global1.a, true, true), vec3<bool>(true, !arg_1.a, all(vec3<bool>(arg_1.a, arg_1.a, arg_1.a)))), select(vec3<bool>(true, arg_1.a, true), select(!vec3<bool>(false, global1.a, arg_1.a), !select(vec3<bool>(false, false, false), vec3<bool>(arg_1.a, arg_1.a, true), true), vec3<bool>(true, true, true)), select(select(select(vec3<bool>(arg_1.a, arg_1.a, global1.a), vec3<bool>(global1.a, global1.a, global1.a), vec3<bool>(false, global1.a, true)), !vec3<bool>(global1.a, global1.a, false), vec3<bool>(arg_1.a, global1.a, true)), select(!vec3<bool>(true, true, global1.a), !vec3<bool>(arg_1.a, true, arg_1.a), vec3<bool>(true, global1.a, false)), !any(vec3<bool>(true, true, true)))), global0.x <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1093f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x))), true)));
    let var_1 = -802f;
    var var_2 = global1.a;
    var var_3 = !select(select(select(vec2<bool>(false, var_0.x), var_0.zy, any(var_0.xz)), var_0.xx, arg_1.a), var_0.zy, true);
    let var_4 = max(_wgslsmith_div_u32(global2.x >> (2523u % 32u), ~52399u << (~u_input.e % 32u)), _wgslsmith_mod_u32(global2.x, 11900u));
    return func_2(reverseBits(vec4<i32>(arg_0.x & _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, 46580i, -8091i, 9012i), u_input.b), u_input.c, 0i, ~firstLeadingBit(u_input.c))), vec3<i32>(-16922i, -(~u_input.c), 0i) << (global2.zwz % vec3<u32>(32u)), u_input.b.xww & u_input.b.xzy, arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(global1.a);
    var var_0 = vec4<bool>(u_input.b.x >= 20748i, false, all(vec3<bool>(all(vec4<bool>(false, true, global1.a, global1.a)), global1.a, true)) || any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(global1.a, true), global1.a), !vec2<bool>(global1.a, global1.a))), global3[_wgslsmith_index_u32(~(~(~u_input.e)), 17u)] >= ~_wgslsmith_mult_u32(47548u, 33057u));
    global1 = func_4(u_input.b.wy, func_1(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.c, 2147483647i, -30046i, -1i)), u_input.b | u_input.b) ^ min(~u_input.b, u_input.b & u_input.b), Struct_1(var_0.x), (vec2<u32>(53431u, 1u) & global2.zw) ^ (global2.xz ^ global2.yy), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-214f + global0.x), -156f, _wgslsmith_f_op_f32(global0.x + -1091f), _wgslsmith_f_op_f32(f32(-1f) * -574f)))));
    global0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), -716f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-global0.x)), -533f))), true));
    let var_1 = var_0.yx;
    var var_2 = vec4<f32>(-622f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), -956f)), global0.x, global0.x);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1024f, 1000f) + _wgslsmith_f_op_f32(-var_2.x)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x)))) != _wgslsmith_f_op_f32(1613f - _wgslsmith_f_op_f32(f32(-1f) * -306f)));
    var var_4 = Struct_1(true);
    let var_5 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.e, -432f, max(vec4<i32>(0i, _wgslsmith_add_i32(firstLeadingBit(-32616i), u_input.c), -1i, ~u_input.d), vec4<i32>(u_input.c << (4294967295u % 32u), -2147483647i, 15650i, 44234i) & (min(u_input.b, u_input.b) | vec4<i32>(u_input.b.x, u_input.d, u_input.d, 67352i))), global2.x, u_input.d);
}

