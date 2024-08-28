struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: array<vec2<u32>, 3>;

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec4<i32>(47061i, i32(-2147483648), 6883i, -22455i), false, vec4<u32>(65973u, 12942u, 29770u, 4294967295u)), Struct_1(vec4<i32>(33193i, 14533i, -1i, 22519i), false, vec4<u32>(38653u, 0u, 29007u, 27965u)), Struct_1(vec4<i32>(14174i, 34421i, 498i, -1i), false, vec4<u32>(4294967295u, 30885u, 16573u, 102017u)));

var<private> global3: Struct_1;

var<private> global4: array<Struct_1, 23>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    global2 = array<Struct_1, 3>();
    var var_0 = false;
    let var_1 = global2[_wgslsmith_index_u32(31191u, 3u)];
    let var_2 = vec4<f32>(398f, _wgslsmith_f_op_f32(max(arg_1, 362f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + 141f)), -1524f);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-292f - _wgslsmith_f_op_f32(-var_2.x)));
    return Struct_1(-(_wgslsmith_add_vec4_i32(global3.a << (var_1.c % vec4<u32>(32u)), abs(global3.a)) ^ vec4<i32>(_wgslsmith_add_i32(-2147483647i, 1i), ~var_1.a.x, global3.a.x, _wgslsmith_clamp_i32(var_1.a.x, 0i, 34590i))), !var_1.b, vec4<u32>(reverseBits(~(21702u >> (var_1.c.x % 32u))), u_input.c, 11030u, ~0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> u32 {
    return u_input.c;
}

fn func_2() -> f32 {
    global2 = array<Struct_1, 3>();
    let var_0 = abs(_wgslsmith_mult_i32(1i, -2147483647i));
    var var_1 = abs(_wgslsmith_mult_u32(~(~u_input.c), _wgslsmith_mod_u32(func_3(Struct_1(global3.a, global3.b, global3.c), vec4<bool>(global3.b, true, global3.b, true)), global3.c.x)) ^ ((~global3.c.x & func_3(Struct_1(global3.a, true, global3.c), vec4<bool>(true, true, global3.b, global3.b))) | 1u));
    global3 = global0[_wgslsmith_index_u32(1u, 18u)];
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-104f + _wgslsmith_f_op_f32(-263f - -488f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(781f, 360f)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(805f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-718f * _wgslsmith_div_f32(1096f, var_2))))), _wgslsmith_f_op_f32(min(var_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-244f)))), _wgslsmith_f_op_f32(f32(-1f) * -373f)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: f32) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(arg_0.c.x, 3u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(793f))), arg_2, _wgslsmith_f_op_f32(f32(-1f) * -1152f), arg_2)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(712f, -371f) * arg_2), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(438f + -778f), _wgslsmith_f_op_f32(exp2(arg_2)))), -1573f, 1000f) * vec4<f32>(_wgslsmith_f_op_f32(1045f * _wgslsmith_f_op_f32(max(-273f, 210f))), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(f32(-1f) * -3585f), 1352f)));
    var var_2 = var_1.x;
    var var_3 = global1[_wgslsmith_index_u32(global3.c.x, 3u)];
    global3 = func_1(func_1(arg_0, var_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-665f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(108f, -1013f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-369f, -800f))) * _wgslsmith_f_op_f32(func_2()))));
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1(Struct_1(~(-(~global3.a)), global3.b && all(vec3<bool>(true, global3.b, false)), _wgslsmith_mult_vec4_u32(~vec4<u32>(global3.c.x, u_input.c, u_input.c, 1u), global3.c ^ global3.c) & vec4<u32>(abs(global3.c.x), global3.c.x << (41323u % 32u), 0u, 0u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-689f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(305f * -265f))) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-700f, _wgslsmith_f_op_f32(2626f - -2163f)), -473f))));
    let x = u_input.a;
    s_output = StorageBuffer(global3.c.x, func_4(Struct_1(global3.a, func_1(global2[_wgslsmith_index_u32(select(u_input.c, u_input.c, global3.b), 3u)], -371f).b, _wgslsmith_mod_vec4_u32(global3.c, vec4<u32>(1u, global3.c.x, u_input.c, 0u))), vec4<i32>(-65643i, _wgslsmith_add_i32(global3.a.x, 11038i), global3.a.x, global3.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))), _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(reverseBits(global1[_wgslsmith_index_u32(u_input.c, 3u)]), vec2<u32>(~global3.c.x, 43051u)), select(~vec2<u32>(global3.c.x, global3.c.x), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, u_input.c), global3.c.yw), global3.c.xw, func_1(global0[_wgslsmith_index_u32(u_input.c, 18u)], -2656f).c.yz), select(vec2<bool>(global3.b, true), vec2<bool>(global3.b, false), vec2<bool>(false, true)))));
}

