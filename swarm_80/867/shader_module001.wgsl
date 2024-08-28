struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: u32,
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

var<private> global0: u32 = 4294967295u;

var<private> global1: array<vec4<u32>, 16>;

var<private> global2: vec3<u32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_1(all(vec2<bool>(false, true)), any(!vec3<bool>(false, u_input.d.x != 0i, true)), vec2<u32>(1u, _wgslsmith_mult_u32(~(~u_input.e), global2.x)), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global2.x, _wgslsmith_dot_vec3_u32(u_input.a.wwz, vec3<u32>(13540u, u_input.e, global2.x))), ~(~global2.yy)), vec2<u32>(1u, _wgslsmith_dot_vec2_u32(~u_input.a.xw, ~global2.zz))));
    let var_1 = vec3<i32>(max(_wgslsmith_dot_vec2_i32(firstLeadingBit(firstTrailingBit(u_input.c.yy)), reverseBits(~u_input.c.zx)), -1i >> (firstTrailingBit(select(0u, u_input.e, true)) % 32u)), ~(~(-8566i)), u_input.b.x >> (global2.x % 32u));
    let var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1186f, _wgslsmith_div_f32(-1582f, 904f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1251f))) - _wgslsmith_f_op_f32(1087f + 1f)), 801f), countOneBits(_wgslsmith_dot_vec2_i32(u_input.c.xy, reverseBits(u_input.d.yx))) | _wgslsmith_clamp_i32(2147483647i >> (var_0.d.x % 32u), var_1.x, u_input.d.x));
    global1 = array<vec4<u32>, 16>();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-321f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(var_2.a.x + var_2.a.x)), _wgslsmith_f_op_f32(-var_2.a.x)))));
    return vec4<u32>(_wgslsmith_add_u32(u_input.a.x, 1u), 108587u, countOneBits(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.c.x, var_0.d.x), global2.xz), 16u)], _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.c.x, var_0.c.x, u_input.a.x, u_input.e), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.e, global2.x), 16u)]))), _wgslsmith_dot_vec2_u32(u_input.a.yx, firstTrailingBit(select(vec2<u32>(global2.x, var_0.d.x), ~vec2<u32>(global2.x, global2.x), vec2<bool>(true, var_0.a)))));
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = _wgslsmith_div_vec4_u32(func_3() >> (vec4<u32>(arg_0.d.x, firstTrailingBit(~global2.x), firstLeadingBit(~u_input.a.x), ~(~14817u)) % vec4<u32>(32u)), max(_wgslsmith_add_vec4_u32(~func_3(), firstTrailingBit(vec4<u32>(0u, u_input.e, arg_0.c.x, global2.x))), global1[_wgslsmith_index_u32(4294967295u, 16u)]));
    let var_1 = ~_wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~global1[_wgslsmith_index_u32(u_input.e, 16u)], vec4<u32>(u_input.a.x, u_input.a.x, u_input.e, 1u)), ~28800u), ~u_input.e >> (u_input.a.x % 32u));
    let var_2 = i32(-1i) * -(i32(-1i) * -u_input.c.x);
    let var_3 = -41711i;
    var var_4 = select(select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(arg_0.b, arg_0.a, false, arg_0.b), vec4<bool>(false, arg_0.a, false, true), arg_0.b), true), vec4<bool>(arg_0.b, arg_0.a, true, any(vec4<bool>(false, arg_0.b, arg_0.b, false))), true), select(!(!(!vec4<bool>(false, false, false, arg_0.b))), select(select(select(vec4<bool>(false, true, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, true, arg_0.b), vec4<bool>(arg_0.a, arg_0.b, arg_0.a, false)), !vec4<bool>(true, arg_0.a, arg_0.b, true), vec4<bool>(arg_0.b, arg_0.a, false, true)), select(!vec4<bool>(arg_0.b, true, false, arg_0.a), select(vec4<bool>(true, arg_0.a, false, arg_0.b), vec4<bool>(true, arg_0.b, arg_0.a, arg_0.a), false), vec4<bool>(true, true, true, false)), select(select(vec4<bool>(arg_0.b, arg_0.b, true, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, arg_0.a, false), false), select(vec4<bool>(arg_0.b, false, arg_0.b, arg_0.b), vec4<bool>(true, arg_0.a, arg_0.a, true), vec4<bool>(false, arg_0.b, true, false)), vec4<bool>(true, arg_0.b, true, arg_0.a))), arg_0.b), true);
    return _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, ~reverseBits(~u_input.b.x), _wgslsmith_clamp_i32(-72243i, _wgslsmith_mult_i32(abs(var_2), u_input.d.x), var_2 << (global2.x % 32u))), ~vec3<i32>(1i, select(abs(-18693i), _wgslsmith_clamp_i32(var_2, 2147483647i, 8546i), !arg_0.b), 6091i));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: u32) -> f32 {
    let var_0 = vec3<i32>(~4355i, _wgslsmith_dot_vec3_i32(u_input.d.zxz, -vec3<i32>(u_input.c.x, -1i, -14255i) & (func_2(Struct_1(false, true, vec2<u32>(4294967295u, 1u), global2.yz)) << (reverseBits(vec3<u32>(22088u, u_input.e, global2.x)) % vec3<u32>(32u)))), u_input.b.x);
    global1 = array<vec4<u32>, 16>();
    global2 = u_input.a.wzw;
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.x * -454f), _wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(step(arg_0.x, 354f)), -1103f)) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.x))), arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2495f), _wgslsmith_f_op_f32(arg_0.x - 481f)), -1044f))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1624f - 374f), _wgslsmith_div_f32(var_1.x, -3160f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -289f;
    var var_1 = vec4<u32>(u_input.a.x, global2.x, ~(~17379u), firstTrailingBit(global2.x));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -845f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<f32>(915f, 1174f, -462f, 370f), u_input.d.x, global2.x)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-360f, 1211f, 1000f))))))), 1934i);
    var var_3 = _wgslsmith_f_op_f32(max(var_2.a.x, _wgslsmith_f_op_f32(-484f - var_2.a.x)));
    global0 = func_3().x;
    let x = u_input.a;
    s_output = StorageBuffer(815i, 1105f);
}

