struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<bool>,
    d: i32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 14>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>) -> i32 {
    let var_0 = Struct_1(vec4<i32>(arg_1.x, 2147483647i, min(firstTrailingBit(2147483647i), arg_1.x), i32(-1i) * -30185i));
    var var_1 = Struct_2(arg_1, Struct_1(firstTrailingBit(var_0.a)), !vec3<bool>(false | any(vec2<bool>(false, false)), any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), any(vec3<bool>(true, true, true))), 22055i, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1205f) * -932f) + _wgslsmith_f_op_f32(-881f - _wgslsmith_f_op_f32(-1405f - -838f))), _wgslsmith_f_op_f32(722f - 1f), 1f));
    var_1 = Struct_2(~max(vec4<i32>(select(-27770i, var_1.d, var_1.c.x), var_1.a.x | var_1.a.x, i32(-1i) * -3669i, ~(-9959i)), vec4<i32>(~arg_1.x, 0i << (arg_0 % 32u), ~(-2147483647i), abs(2147483647i))), var_0, select(global0[_wgslsmith_index_u32(52570u, 14u)], select(!select(vec3<bool>(var_1.c.x, var_1.c.x, var_1.c.x), vec3<bool>(true, false, var_1.c.x), vec3<bool>(false, false, var_1.c.x)), select(var_1.c, !var_1.c, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, u_input.a.x), 14u)]), select(vec3<bool>(var_1.c.x, false, var_1.c.x), vec3<bool>(true, var_1.c.x, false), true)), select(select(!vec3<bool>(true, var_1.c.x, true), vec3<bool>(var_1.c.x, false, true), true), global0[_wgslsmith_index_u32(808u, 14u)], var_1.c.x)), var_0.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.e * var_1.e) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_1.e)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.e.x, -1429f, var_1.e.x))), _wgslsmith_f_op_vec3_f32(-var_1.e), false))));
    global0 = array<vec3<bool>, 14>();
    global0 = array<vec3<bool>, 14>();
    return abs(var_0.a.x);
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: vec2<u32>) -> vec4<u32> {
    global0 = array<vec3<bool>, 14>();
    global0 = array<vec3<bool>, 14>();
    var var_0 = false;
    let var_1 = Struct_2(vec4<i32>(u_input.b.x, -2147483647i, -func_3(4294967295u, _wgslsmith_mult_vec4_i32(vec4<i32>(-93875i, 1i, 1145i, u_input.b.x), vec4<i32>(u_input.b.x, -11369i, u_input.b.x, -100196i))), _wgslsmith_clamp_i32(2147483647i, ~(-u_input.b.x), _wgslsmith_mult_i32(2403i, -26279i))), Struct_1(select(abs(vec4<i32>(u_input.b.x, 0i, 1i, -1i)) >> (reverseBits(vec4<u32>(arg_2.x, 1u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), vec4<i32>(-3361i, 1i, ~2147483647i, -2147483647i), any(vec4<bool>(true, true, true, true)))), vec3<bool>(2086f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.x)) - -1000f), all(vec2<bool>(true, all(vec4<bool>(true, false, false, true)))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), select(false, true, false)))), u_input.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1465f, _wgslsmith_f_op_f32(-arg_0))) + _wgslsmith_div_vec3_f32(arg_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_0, arg_0)) + _wgslsmith_f_op_vec3_f32(arg_1 * vec3<f32>(767f, arg_0, arg_1.x))))));
    let var_2 = select(select(min(max(firstLeadingBit(1i), var_1.a.x), var_1.b.a.x), u_input.b.x & -u_input.b.x, var_1.c.x), 3739i, true);
    return ~abs(vec4<u32>(~u_input.a.x, 28307u, firstLeadingBit(arg_2.x), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, arg_2.x), vec2<u32>(arg_2.x, 39231u)))) ^ vec4<u32>(min(arg_2.x, countOneBits(~29211u)), ~(_wgslsmith_add_u32(arg_2.x, arg_2.x) & ~10193u), ~4294967295u, 4294967295u);
}

fn func_1() -> Struct_1 {
    global0 = array<vec3<bool>, 14>();
    let var_0 = Struct_2(min((-vec4<i32>(u_input.b.x, -20324i, u_input.b.x, -60133i) << (func_2(369f, vec3<f32>(-1655f, -1340f, 695f), vec2<u32>(1u, 0u)) % vec4<u32>(32u))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 58339u, 59001u) | vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(6606u, 7246u, 1u, u_input.a.x), vec4<u32>(3476u, u_input.a.x, u_input.a.x, u_input.a.x))) % vec4<u32>(32u)), vec4<i32>(17358i, -(~9084i), -firstTrailingBit(-2147483647i), u_input.b.x)), Struct_1((-vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) >> (vec4<u32>(u_input.a.x, 167708u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) ^ -vec4<i32>(19070i, 2457i, u_input.b.x, u_input.b.x)), global0[_wgslsmith_index_u32(~min(u_input.a.x, select(u_input.a.x, ~1u, false)), 14u)], u_input.b.x, vec3<f32>(708f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1130f)), _wgslsmith_f_op_f32(f32(-1f) * -904f)), 2461f)), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-432f)), -262f, false)))));
    global0 = array<vec3<bool>, 14>();
    let var_1 = _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(select(u_input.a.zz, vec2<u32>(23223u, ~0u), select(!var_0.c.yz, var_0.c.zy, var_0.c.x)), vec2<u32>(u_input.a.x, u_input.a.x)), vec2<u32>(1u, u_input.a.x));
    var var_2 = firstLeadingBit(vec3<u32>(0u, _wgslsmith_div_u32(u_input.a.x, u_input.a.x), u_input.a.x));
    return Struct_1(var_0.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 14>();
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -497f, 328f, -409f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 322f, -667f, 1067f))) + vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1213f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-622f)) - 1479f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(600f - 1063f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(686f)))))));
    var var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(~(~u_input.a.x), ~select(0u, 4176u, true), ~1u, reverseBits(firstTrailingBit(u_input.a.x))), u_input.a.x, u_input.b.x);
}

