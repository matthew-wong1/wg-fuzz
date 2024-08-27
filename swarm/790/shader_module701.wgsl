struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: vec4<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7> = array<bool, 7>(true, false, false, false, false, true, true);

var<private> global1: vec2<i32> = vec2<i32>(-1i, 2147483647i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>) -> vec2<i32> {
    global0 = array<bool, 7>();
    let var_0 = min(-7478i | _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(39603i, -61068i), _wgslsmith_dot_vec2_i32(u_input.d.yx, u_input.d.xx)), 1i), -(~(i32(-1i) * -global1.x)));
    let var_1 = arg_0.a;
    global0 = array<bool, 7>();
    global1 = vec2<i32>(~(-1i), select(abs(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, var_0, -24084i, var_0), vec4<i32>(global1.x, 9577i, u_input.d.x, u_input.d.x))), var_0, !((true & global0[_wgslsmith_index_u32(arg_1.x, 7u)]) & false)));
    return vec2<i32>(reverseBits(-79842i), _wgslsmith_mult_i32(u_input.d.x, -2147483647i & global1.x));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: f32, arg_3: u32) -> i32 {
    global1 = _wgslsmith_sub_vec2_i32(-max(u_input.d.xx, max(select(u_input.d.yy, u_input.d.zy, vec2<bool>(global0[_wgslsmith_index_u32(arg_1, 7u)], global0[_wgslsmith_index_u32(u_input.b, 7u)])), u_input.d.xz & vec2<i32>(u_input.d.x, -2147483647i))), _wgslsmith_add_vec2_i32(u_input.d.xx, _wgslsmith_add_vec2_i32(u_input.d.xx, func_3(Struct_2(Struct_1(arg_2, vec3<bool>(global0[_wgslsmith_index_u32(1u, 7u)], true, global0[_wgslsmith_index_u32(1u, 7u)]), vec2<bool>(global0[_wgslsmith_index_u32(42428u, 7u)], true), arg_2), Struct_1(872f, vec3<bool>(true, global0[_wgslsmith_index_u32(arg_3, 7u)], false), vec2<bool>(false, global0[_wgslsmith_index_u32(74696u, 7u)]), arg_2), Struct_1(160f, vec3<bool>(global0[_wgslsmith_index_u32(8203u, 7u)], false, false), vec2<bool>(true, false), 648f), Struct_1(arg_2, vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(arg_0, 7u)]), vec2<bool>(true, false), arg_2)), u_input.a.wy))));
    global1 = u_input.d.xy;
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2 * 813f))), -271f)), vec4<f32>(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + arg_2) - -2052f)), -2000f, -260f), !all(vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 7u)] | global0[_wgslsmith_index_u32(arg_3, 7u)], true))));
    var var_1 = vec3<u32>(0u, ~arg_0, arg_3) ^ _wgslsmith_mult_vec3_u32(countOneBits(abs(u_input.a.wzx)), reverseBits(vec3<u32>(33182u, 4294967295u, arg_3)) >> (((vec3<u32>(0u, u_input.c, 0u) ^ u_input.a.xyz) & select(vec3<u32>(arg_1, 4078u, arg_3), vec3<u32>(arg_1, u_input.c, u_input.c), global0[_wgslsmith_index_u32(arg_3, 7u)])) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.wzz));
    return i32(-1i) * -firstTrailingBit(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.d.x, 1i, u_input.d.x, u_input.d.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -1i, 1i, u_input.d.x), vec4<i32>(17075i, global1.x, 2147483647i, u_input.d.x))));
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> vec2<u32> {
    var var_0 = min(_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.d.x, u_input.d.x), -22188i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, global1.x >> (125507u % 32u)), -u_input.d.xx));
    var var_1 = arg_1;
    var var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(~(-14000i), _wgslsmith_dot_vec2_i32(vec2<i32>(8321i, 52078i), u_input.d.zz), global1.x, -2147483647i)), vec4<i32>(countOneBits(~(-1i)), global1.x, -23234i, ~func_2(u_input.a.x, u_input.a.x, var_1.d.d, u_input.b))), abs(0i), select(30730i, _wgslsmith_dot_vec4_i32(select(firstLeadingBit(vec4<i32>(global1.x, 26434i, u_input.d.x, -11538i)), vec4<i32>(global1.x, 0i, -2147483647i, 1i) | vec4<i32>(2147483647i, -38886i, -15701i, 0i), global0[_wgslsmith_index_u32(21579u, 7u)] && false), vec4<i32>(-2147483647i, _wgslsmith_add_i32(-16358i, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, global1.x, u_input.d.x, u_input.d.x), vec4<i32>(-2147483647i, -2147483647i, global1.x, u_input.d.x)), _wgslsmith_sub_i32(1i, 1i))), global0[_wgslsmith_index_u32(u_input.c, 7u)]), ~u_input.d.x);
    var var_3 = select(!(!select(vec4<bool>(var_1.a.c.x, arg_1.d.c.x, true, true), select(vec4<bool>(true, true, var_1.a.b.x, arg_1.d.c.x), vec4<bool>(true, true, arg_0, arg_1.d.b.x), false), var_1.a.a != -1076f)), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 7u)], true, all(select(vec4<bool>(global0[_wgslsmith_index_u32(16388u, 7u)], true, arg_0, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 7u)], false, false, true), true)), false), vec4<bool>(select(~32450u >= u_input.c, true & arg_0, arg_1.c.c.x), false, !select(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], false, arg_0) && true, all(vec4<bool>(any(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 7u)], false, false)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 16718u), 7u)], var_1.c.c.x, false))));
    var var_4 = Struct_3(arg_1.d.a, u_input.d.xy, !(!vec4<bool>(all(var_3.yww), any(vec2<bool>(true, global0[_wgslsmith_index_u32(74402u, 7u)])), !var_3.x, false)), ~reverseBits(u_input.a.x));
    return vec2<u32>(max(_wgslsmith_sub_u32(reverseBits(min(0u, 18269u)), min(1u, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a))), ~(~(~u_input.a.x))), reverseBits(u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.yx >> ((~max(vec2<u32>(1u, 1u), func_1(false, Struct_2(Struct_1(-532f, vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.b, 7u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 7u)]), -725f), Struct_1(-535f, vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 7u)], global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(u_input.c, 7u)]), vec2<bool>(true, false), -2186f), Struct_1(1253f, vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(u_input.b, 7u)], global0[_wgslsmith_index_u32(9903u, 7u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 7u)], false), -641f), Struct_1(1000f, vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 7u)], false), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 7u)]), -210f)))) & vec2<u32>(1u, ~(~1u))) % vec2<u32>(32u));
    global0 = array<bool, 7>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-125f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-603f, -826f) - _wgslsmith_f_op_f32(select(231f, -1881f, global0[_wgslsmith_index_u32(8756u, 7u)]))), _wgslsmith_f_op_f32(446f - _wgslsmith_f_op_f32(round(601f))), all(!vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(0u, 7u)]))))), select(select(vec3<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(1u, 7u)], false, true, true)), true, true), vec3<bool>(global0[_wgslsmith_index_u32(reverseBits(u_input.a.x), 7u)], all(vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 7u)], false)), false), global0[_wgslsmith_index_u32(u_input.b, 7u)]), vec3<bool>(!any(vec2<bool>(global0[_wgslsmith_index_u32(14976u, 7u)], true)), true, global0[_wgslsmith_index_u32(~0u, 7u)]), select(!(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 7u)], global0[_wgslsmith_index_u32(14668u, 7u)], true)), vec3<bool>(!global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(func_1(false, Struct_2(Struct_1(-1061f, vec3<bool>(true, global0[_wgslsmith_index_u32(11039u, 7u)], false), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 7u)]), 580f), Struct_1(1910f, vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], true), vec2<bool>(false, false), -481f), Struct_1(1759f, vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(10348u, 7u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 7u)], false), -1920f), Struct_1(-289f, vec3<bool>(global0[_wgslsmith_index_u32(39594u, 7u)], false, true), vec2<bool>(true, false), 1755f))).x, 7u)], false), !global0[_wgslsmith_index_u32(u_input.a.x, 7u)])), !vec2<bool>(true, any(vec4<bool>(global0[_wgslsmith_index_u32(26657u, 7u)], global0[_wgslsmith_index_u32(11606u, 7u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 7u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(754f, 1000f))) * -661f));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-107f))) * 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-463f)))), var_1.a));
    global0 = array<bool, 7>();
    global1 = u_input.d.zz;
    var var_3 = Struct_3(_wgslsmith_f_op_f32(abs(var_2.x)), vec2<i32>(global1.x, _wgslsmith_sub_i32(u_input.d.x >> (u_input.b % 32u), ~var_0.x) | -1i), select(!select(!vec4<bool>(var_1.c.x, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 7u)], true, false, global0[_wgslsmith_index_u32(4294967295u, 7u)]), vec4<bool>(var_1.b.x, true, false, true), var_1.b.x)), vec4<bool>(true, var_1.c.x, var_1.b.x || all(vec2<bool>(var_1.b.x, global0[_wgslsmith_index_u32(u_input.a.x, 7u)])), any(!var_1.b)), true), abs(~4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 4294967295u, 1u), select(select(u_input.a.zzw, vec3<u32>(var_3.d, var_3.d, u_input.b), vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 7u)], true)), abs(u_input.a.xwz), select(var_3.c.x, false, global0[_wgslsmith_index_u32(5934u, 7u)]))), _wgslsmith_div_u32(~(~u_input.c), _wgslsmith_add_u32(0u, u_input.b))), var_3.a, vec3<i32>(~countOneBits(-1i), ~u_input.d.x, -5251i));
}

