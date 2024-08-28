struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec4<bool>,
    d: vec4<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> vec4<i32> {
    global0 = array<f32, 13>();
    let var_0 = _wgslsmith_div_i32(_wgslsmith_div_i32(min(0i, -1343i), _wgslsmith_dot_vec2_i32(reverseBits(reverseBits(vec2<i32>(-17591i, u_input.d))), abs(~vec2<i32>(arg_1, 23123i)))), max(arg_1, ~(u_input.d | -1i)) & u_input.d);
    var var_1 = vec2<u32>(~u_input.a.x, ~_wgslsmith_mult_u32(firstLeadingBit(13924u), 22106u << (u_input.a.x % 32u))) << (u_input.b.wy % vec2<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -810f);
    global0 = array<f32, 13>();
    return reverseBits(~(-firstTrailingBit(~vec4<i32>(10678i, -28573i, 2147483647i, -852i))));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>) -> vec4<bool> {
    let var_0 = vec4<i32>(1i, arg_1.x & _wgslsmith_dot_vec4_i32(func_3(arg_0, u_input.d), vec4<i32>(select(arg_1.x, arg_1.x, false), -u_input.d, 34415i, -2147483647i)), u_input.d, 1i);
    global0 = array<f32, 13>();
    let var_1 = Struct_4(Struct_3(vec4<i32>(var_0.x, 78077i, 29013i, ~u_input.d) & _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 0i, arg_1.x, 34597i), arg_1, vec4<i32>(16580i, 2147483647i, arg_1.x, -1i)), reverseBits(var_0), vec4<i32>(u_input.d, arg_1.x, arg_1.x, 0i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(2387f, 123f, global0[_wgslsmith_index_u32(u_input.b.x, 13u)]))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)], -399f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(390f, global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(0u, 13u)])))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, 51566i >= var_0.x, !arg_0.a.x, true), select(select(vec4<bool>(true, arg_0.a.x, true, arg_0.a.x), vec4<bool>(true, arg_0.a.x, false, arg_0.a.x), vec4<bool>(true, arg_0.a.x, true, arg_0.a.x)), select(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec4<bool>(arg_0.a.x, arg_0.a.x, true, arg_0.a.x), false), true)), arg_0, firstTrailingBit(firstTrailingBit(99757u))), Struct_2(arg_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(572f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(978f + global0[_wgslsmith_index_u32(u_input.a.x, 13u)]))))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(659f * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 13u)]))))));
    var var_2 = var_1;
    var_2 = var_1;
    return vec4<bool>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 13u)]) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(685f, -127f)))), false, select(var_1.a.c.x, var_2.a.e <= 73335u, true), !all(select(vec3<bool>(true, arg_0.a.x, false), !var_1.a.c.xzy, vec3<bool>(var_1.a.d.a.x, true, var_1.a.c.x))));
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_1(max(u_input.d, -22566i), vec2<bool>(all(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), true)), !any(vec3<bool>(false, true, false))), select(vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(5844u, 13u)] >= _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.a.x, 13u)]))), select(select(func_2(Struct_2(vec2<bool>(true, false)), vec4<i32>(-12757i, 7713i, -10165i, 0i)), vec4<bool>(true, true, true, true), func_2(Struct_2(vec2<bool>(false, false)), vec4<i32>(u_input.d, u_input.d, 1i, u_input.d))), vec4<bool>(true, true, true, func_2(Struct_2(vec2<bool>(true, false)), vec4<i32>(-2147483647i, u_input.d, u_input.d, u_input.d)).x), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), true)), true), vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(max(max(u_input.b.x, 1u), ~u_input.c.x), 13u)] * -866f), -1000f, -533f, 1f), u_input.b.wwx);
    let var_1 = var_0.b;
    let var_2 = Struct_3(abs(min(select(vec4<i32>(1i, u_input.d, -1i, 56346i), vec4<i32>(u_input.d, 25591i, -16394i, 44960i), var_1.x), vec4<i32>(u_input.d, u_input.d, var_0.a, -753i)) & func_3(Struct_2(vec2<bool>(false, var_1.x)), 74432i)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -779f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 13u)] - var_0.d.x)))))), func_2(Struct_2(var_1), max(-vec4<i32>(23379i, -11575i, u_input.d, var_0.a), abs(~vec4<i32>(2147483647i, -11566i, 2147483647i, u_input.d)))), Struct_2(var_0.b), _wgslsmith_mod_u32(_wgslsmith_sub_u32(abs(_wgslsmith_clamp_u32(u_input.a.x, var_0.e.x, 1u)), countOneBits(33553u << (0u % 32u))), countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 63691u, 4294967295u), u_input.b) | _wgslsmith_add_u32(0u, 4294967295u))));
    var var_3 = Struct_2(vec2<bool>(all(!(!vec2<bool>(true, var_2.c.x))), false || all(vec4<bool>(var_2.d.a.x, var_2.c.x, true, var_1.x))));
    var var_4 = Struct_2(var_3.a);
    return Struct_3(_wgslsmith_div_vec4_i32(vec4<i32>(~(var_2.a.x >> (0u % 32u)), 0i, 2147483647i, u_input.d), -reverseBits(func_3(Struct_2(var_4.a), var_0.a))), var_2.b, func_2(Struct_2(var_2.c.ww), _wgslsmith_mod_vec4_i32(select(select(var_2.a, var_2.a, true), vec4<i32>(-1i, 2147483647i, u_input.d, var_0.a) << (vec4<u32>(0u, 27326u, 1u, var_2.e) % vec4<u32>(32u)), var_3.a.x), vec4<i32>(~(-24916i), 1i, abs(u_input.d), 2094i))), var_2.d, ~0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_1(), Struct_2(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true))), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(32485u, 13u)], 253f));
    var var_1 = vec4<bool>(true != any(var_0.a.c.zw), func_2(var_0.a.d, vec4<i32>(u_input.d ^ 0i, func_3(Struct_2(vec2<bool>(var_0.b.a.x, false)), 1i).x, func_1().a.x, -15663i) << (u_input.b % vec4<u32>(32u))).x, var_0.a.d.a.x, false);
    global0 = array<f32, 13>();
    global0 = array<f32, 13>();
    var var_2 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(32576u, 1u), u_input.b.yy);
    global0 = array<f32, 13>();
    let var_3 = max(vec4<i32>(_wgslsmith_add_i32(abs(33605i), 50992i), u_input.d, firstTrailingBit(i32(-1i) * -32578i), -var_0.a.a.x >> (~u_input.a.x % 32u)), vec4<i32>(u_input.d, -29813i, -u_input.d, 50047i) & var_0.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~var_0.a.e, 13u)] - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(308f + var_0.a.b.x) + var_0.a.b.x)))), abs(~firstLeadingBit(~vec2<u32>(var_0.a.e, var_0.a.e))), u_input.c.zz);
}

