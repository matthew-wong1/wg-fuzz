struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_2) -> vec4<i32> {
    global0 = array<i32, 9>();
    var var_0 = -vec3<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(-vec3<i32>(global0[_wgslsmith_index_u32(arg_0.b.x, 9u)], u_input.b.x, global0[_wgslsmith_index_u32(41091u, 9u)])), -(~u_input.b.zzz)), u_input.c >> (u_input.a.x % 32u), ~u_input.e.x);
    let var_1 = vec2<i32>(9991i, u_input.b.x);
    var var_2 = arg_0.a;
    var var_3 = ~min(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.x & arg_0.b.x, 4294967295u), ~u_input.d.zz), 0u);
    return vec4<i32>(2147483647i, 47351i, abs(~(-9882i)), -2147483647i);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec2_i32((u_input.b.wx >> (abs(arg_0.b.yw) % vec2<u32>(32u))) | _wgslsmith_add_vec2_i32(~vec2<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 9u)], global0[_wgslsmith_index_u32(arg_0.b.x, 9u)]), u_input.b.ww), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(u_input.e, ~u_input.e), u_input.e)), _wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(min(17933i, -59404i)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 11344i), ~vec2<i32>(-6112i, -29516i))), _wgslsmith_clamp_vec2_i32(u_input.b.zz, select(vec2<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 9u)], global0[_wgslsmith_index_u32(arg_1.b.x, 9u)]), _wgslsmith_mod_vec2_i32(vec2<i32>(32329i, 0i), u_input.b.ww), true), ~u_input.e)), -39021i);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(1889f, arg_0.c.x), _wgslsmith_f_op_f32(trunc(-407f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(182f + arg_0.c.x))), _wgslsmith_f_op_f32(ceil(arg_0.c.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(241f, -126f, arg_0.c.x) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1705f, arg_0.c.x, -1226f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.x, arg_1.c.x, arg_0.c.x)))));
    var var_2 = Struct_1(firstTrailingBit(-_wgslsmith_mult_i32(0i, -1i)), vec2<u32>(u_input.d.x, arg_0.b.x | 1u), -_wgslsmith_div_vec4_i32(vec4<i32>(firstLeadingBit(var_0.x), -global0[_wgslsmith_index_u32(arg_0.b.x, 9u)], var_0.x, i32(-1i) * -48178i), func_3(arg_0)), 1u);
    let var_3 = Struct_1(var_0.x, ~countOneBits(_wgslsmith_sub_vec2_u32(u_input.a, arg_1.b.yw)), u_input.b, arg_0.b.x);
    var_2 = Struct_1(6341i, vec2<u32>(_wgslsmith_mod_u32(countOneBits(var_3.b.x), ~(~arg_1.b.x)), arg_1.b.x), _wgslsmith_clamp_vec4_i32(-_wgslsmith_sub_vec4_i32(-vec4<i32>(var_3.c.x, var_2.a, -5037i, u_input.c), _wgslsmith_mult_vec4_i32(vec4<i32>(-45539i, 1i, u_input.c, var_0.x), vec4<i32>(u_input.c, 9910i, u_input.c, -26793i))), countOneBits(-vec4<i32>(28138i, -7653i, 25785i, var_3.a)), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(var_3.c, vec4<i32>(u_input.e.x, 2147483647i, var_3.c.x, -8841i)), var_3.c)), countOneBits(_wgslsmith_add_u32(~39738u, ~_wgslsmith_mod_u32(0u, var_3.b.x))));
    return _wgslsmith_f_op_f32(1314f + _wgslsmith_f_op_f32(f32(-1f) * -558f));
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_0.c.x, -987f), arg_0.c.x, _wgslsmith_f_op_f32(func_2(arg_0, Struct_2(vec4<bool>(arg_0.a.x, true, false, false), arg_0.b, vec2<f32>(1076f, 866f), arg_1)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, 1000f, arg_0.c.x))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-2430f, _wgslsmith_f_op_f32(arg_0.c.x * -363f), _wgslsmith_f_op_f32(select(arg_0.c.x, 678f, arg_1))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1194f, 1063f, -145f))))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1463f, arg_0.c.x, -161f), vec3<f32>(396f, arg_0.c.x, arg_0.c.x))) - _wgslsmith_div_vec3_f32(vec3<f32>(-1537f, 777f, -302f), vec3<f32>(arg_0.c.x, -1354f, 991f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(min(arg_0.c.x, arg_0.c.x)), _wgslsmith_f_op_f32(-arg_0.c.x))), false)));
    let var_1 = Struct_2(!vec4<bool>(select(arg_0.a.x, u_input.a.x != arg_0.b.x, any(vec2<bool>(arg_1, true))), arg_1, all(arg_0.a.ywy), false), vec4<u32>(abs(firstTrailingBit(~u_input.d.x)), reverseBits(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(arg_0.b.wy, arg_0.b.zx), _wgslsmith_add_vec2_u32(vec2<u32>(arg_0.b.x, 23728u), vec2<u32>(4294967295u, 0u)))), arg_0.b.x | _wgslsmith_div_u32(abs(0u), firstLeadingBit(u_input.d.x)), _wgslsmith_dot_vec3_u32(arg_0.b.zxy, u_input.d)), vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), -1138f), select(any(arg_0.a.yy), !all(arg_0.a.xyx), true) || (_wgslsmith_f_op_f32(func_2(Struct_2(vec4<bool>(true, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec4<u32>(30739u, arg_0.b.x, arg_0.b.x, 1u), var_0.zz, arg_1), arg_0)) > var_0.x));
    var var_2 = arg_0;
    let var_3 = false;
    var var_4 = !var_1.a.ww;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~select(vec2<u32>(0u, _wgslsmith_add_u32(_wgslsmith_mult_u32(12233u, u_input.a.x), ~u_input.a.x)), vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.d, ~u_input.d), ~u_input.a.x | ~21780u), false);
    var var_1 = Struct_2(vec4<bool>(true, !func_1(Struct_2(vec4<bool>(true, false, true, true), vec4<u32>(u_input.d.x, var_0.x, var_0.x, 37259u), vec2<f32>(-604f, 783f), false), true) & true, true, true), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(u_input.d.x, _wgslsmith_dot_vec3_u32(u_input.d, u_input.d), 19126u), 11271u, ~firstLeadingBit(u_input.a.x), 0u), select(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 27284u, var_0.x), vec4<u32>(3827u, 1u, var_0.x, u_input.d.x) | vec4<u32>(16897u, var_0.x, 1u, 4294967295u)), abs(vec4<u32>(0u, u_input.a.x, u_input.d.x, var_0.x) & vec4<u32>(var_0.x, 1u, u_input.a.x, var_0.x)), vec4<bool>(true, true, true, true)), _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(u_input.a.x, var_0.x, 12942u, 0u)), ~vec4<u32>(4294967295u, u_input.d.x, 28774u, 4294967295u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-516f, _wgslsmith_f_op_f32(f32(-1f) * -243f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-716f, -548f)))) + vec2<f32>(_wgslsmith_f_op_f32(-1f), 1f)), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1620f, 1710f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.c.x))), var_1.c.x) * vec3<f32>(var_1.c.x, var_1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -408f))), vec4<i32>(-29767i | global0[_wgslsmith_index_u32(0u, 9u)], u_input.e.x, global0[_wgslsmith_index_u32(var_0.x, 9u)], -2147483647i), _wgslsmith_div_vec3_i32(~u_input.b.wxy, u_input.b.yxy), ~u_input.e | _wgslsmith_mult_vec2_i32(~(u_input.b.wz | u_input.e), (u_input.e ^ u_input.e) & ~u_input.b.xz), vec3<f32>(-1171f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(942f))), -1217f));
}

