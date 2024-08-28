struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(-8928i, -72312i, -1i, i32(-2147483648));

var<private> global1: u32 = 25685u;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: bool) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1426f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(184f)), _wgslsmith_f_op_f32(round(124f))), _wgslsmith_f_op_f32(f32(-1f) * -363f))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -772f), _wgslsmith_f_op_f32(ceil(-910f)))), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1550f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(1733f, 1363f, 1893f), vec3<f32>(-144f, 1333f, -673f))))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: bool, arg_3: u32) -> vec3<f32> {
    global0 = array<i32, 4>();
    global1 = countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(~abs(arg_0.c), ~select(arg_0.c, 15813u, arg_2), countOneBits(abs(arg_3))), _wgslsmith_div_vec3_u32(firstLeadingBit(~vec3<u32>(48160u, arg_3, 9370u)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 26348u, 20419u), vec3<u32>(89841u, arg_3, 0u)) << (vec3<u32>(arg_3, u_input.c, 44163u) % vec3<u32>(32u)))));
    let var_0 = arg_0.b.yz;
    global0 = array<i32, 4>();
    global0 = array<i32, 4>();
    return _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1165f, _wgslsmith_f_op_f32(sign(-455f)), arg_1.x)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec3<f32>) -> Struct_1 {
    global1 = 1u;
    global1 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~min(vec3<u32>(arg_0.c, 15470u, 4294967295u), vec3<u32>(u_input.d.x, arg_0.c, arg_0.c)), u_input.d, _wgslsmith_mult_vec3_u32(select(u_input.e, u_input.e, arg_0.a), ~vec3<u32>(u_input.d.x, 4294967295u, u_input.d.x))), vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.c, arg_0.c, 1u, u_input.a), firstTrailingBit(vec4<u32>(0u, u_input.a, u_input.b, 72373u))), arg_0.c, min(arg_0.c, ~arg_0.c))), 4294967295u << (0u % 32u));
    var var_0 = Struct_2(arg_0, arg_0, Struct_1(!vec3<bool>(true, true, any(vec3<bool>(arg_0.a.x, arg_0.a.x, false))), arg_0.b, arg_0.c), Struct_1(vec3<bool>(true, all(!vec4<bool>(arg_0.a.x, false, arg_0.a.x, true)), true), _wgslsmith_clamp_vec4_i32(~arg_0.b, _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.b.x, -1i, 13624i, -2147483647i), arg_0.b), arg_0.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(24552i, 20526i, 2147483647i, -26380i), ~vec4<i32>(arg_0.b.x, arg_0.b.x, global0[_wgslsmith_index_u32(0u, 4u)], 2147483647i), _wgslsmith_add_vec4_i32(arg_0.b, vec4<i32>(arg_0.b.x, -42398i, arg_0.b.x, arg_0.b.x)))), ~u_input.e.x), u_input.d.yz);
    var var_1 = Struct_2(Struct_1(vec3<bool>(all(arg_0.a), !all(vec4<bool>(false, var_0.b.a.x, var_0.b.a.x, false)), all(vec4<bool>(arg_0.a.x, arg_0.a.x, var_0.c.a.x, var_0.b.a.x)) | !var_0.d.a.x), arg_0.b, 4294967295u), arg_0, var_0.d, arg_0, ~(~vec2<u32>(var_0.b.c, _wgslsmith_dot_vec4_u32(vec4<u32>(21046u, u_input.a, 4294967295u, u_input.c), vec4<u32>(var_0.a.c, u_input.e.x, 16025u, arg_0.c)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, 729f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.x - arg_2.x), _wgslsmith_f_op_f32(1607f - _wgslsmith_f_op_f32(-arg_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(439f - arg_2.x), arg_1.x)) + arg_1.x)));
    return Struct_1(var_0.b.a, vec4<i32>(1i, 24666i, -arg_0.b.x, -1i), _wgslsmith_dot_vec3_u32(~(~(~u_input.d)), vec3<u32>(firstLeadingBit(3883u) << (abs(0u) % 32u), ~_wgslsmith_clamp_u32(var_0.d.c, 66539u, 4294967295u), _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(u_input.b, 1u, 27040u)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec3<bool>) -> u32 {
    global0 = array<i32, 4>();
    var var_0 = func_4(arg_1.c, arg_2, _wgslsmith_f_op_vec3_f32(func_3(arg_0, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-297f, arg_2.x, arg_2.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, 1276f, arg_2.x)) * _wgslsmith_f_op_vec3_f32(func_2(0i, arg_0, vec4<u32>(arg_1.d.c, arg_1.d.c, arg_0.c, 35096u), false))))), false, u_input.c)));
    let var_1 = vec2<u32>(_wgslsmith_div_u32(var_0.c, arg_1.a.c), ~13044u);
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(130f, arg_2.x) + _wgslsmith_f_op_f32(f32(-1f) * -813f))), -426f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1383f)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-arg_2);
    return _wgslsmith_add_u32(~79061u, arg_0.c & ~u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global0 = array<i32, 4>();
    var var_1 = vec4<u32>(u_input.c, u_input.d.x, 4294967295u, reverseBits(abs(~u_input.e.x))) << (~firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(16996u, u_input.a, 17273u, 10902u) & vec4<u32>(71787u, 96508u, 7841u, u_input.d.x), ~vec4<u32>(4294967295u, 66974u, u_input.e.x, 64585u))) % vec4<u32>(32u));
    var var_2 = select(~vec3<i32>(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(3104u, 4u)], ~global0[_wgslsmith_index_u32(var_1.x, 4u)]), min(~(-13841i), global0[_wgslsmith_index_u32(func_1(Struct_1(vec3<bool>(var_0, var_0, true), vec4<i32>(8379i, global0[_wgslsmith_index_u32(var_1.x, 4u)], -16051i, global0[_wgslsmith_index_u32(4294967295u, 4u)]), 68776u), Struct_2(Struct_1(vec3<bool>(var_0, var_0, var_0), vec4<i32>(global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(49841u, 4u)], 1i, 0i), var_1.x), Struct_1(vec3<bool>(var_0, true, true), vec4<i32>(global0[_wgslsmith_index_u32(18959u, 4u)], 13200i, 0i, -19512i), var_1.x), Struct_1(vec3<bool>(var_0, var_0, false), vec4<i32>(global0[_wgslsmith_index_u32(29455u, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)], -1i, global0[_wgslsmith_index_u32(var_1.x, 4u)]), 4294967295u), Struct_1(vec3<bool>(var_0, var_0, var_0), vec4<i32>(-20367i, global0[_wgslsmith_index_u32(u_input.b, 4u)], global0[_wgslsmith_index_u32(14575u, 4u)], global0[_wgslsmith_index_u32(u_input.e.x, 4u)]), var_1.x), vec2<u32>(var_1.x, 3033u)), vec2<f32>(-554f, 1154f), vec3<bool>(false, true, var_0)), 4u)]), ~reverseBits(global0[_wgslsmith_index_u32(u_input.c, 4u)])), ~vec3<i32>(~global0[_wgslsmith_index_u32(u_input.c, 4u)] ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-19500i, global0[_wgslsmith_index_u32(21749u, 4u)], 2147483647i), vec3<i32>(global0[_wgslsmith_index_u32(var_1.x, 4u)], 91056i, global0[_wgslsmith_index_u32(0u, 4u)])), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~1u, _wgslsmith_clamp_u32(4294967295u, var_1.x, 0u)), 4u)], 2147483647i), vec3<bool>(true, any(!(!vec3<bool>(var_0, var_0, true))), !(var_0 || true)));
    var var_3 = !func_4(Struct_1(vec3<bool>(!var_0, false, var_1.x > var_1.x), vec4<i32>(abs(var_2.x), -11245i, var_2.x, ~global0[_wgslsmith_index_u32(64667u, 4u)]), abs(var_1.x | 1u)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(419f, 1339f), vec2<f32>(858f, -821f)), vec2<f32>(1f, 1f), false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(475f, 1129f, -533f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1015f, 447f, 850f))) * _wgslsmith_div_vec3_f32(vec3<f32>(309f, -435f, 666f), vec3<f32>(-373f, 294f, -1898f)))).a.xx;
    let var_4 = func_4(Struct_1(!select(!vec3<bool>(true, false, var_3.x), !vec3<bool>(var_3.x, false, var_3.x), all(vec2<bool>(var_0, var_3.x))), -vec4<i32>(global0[_wgslsmith_index_u32(abs(u_input.b), 4u)], max(global0[_wgslsmith_index_u32(4294967295u, 4u)], -2147483647i), max(-24032i, -2147483647i), global0[_wgslsmith_index_u32(155620u, 4u)]), firstLeadingBit(~u_input.c)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(2151f, 629f))) * vec2<f32>(-246f, _wgslsmith_f_op_f32(f32(-1f) * -812f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(441f, -1655f), vec2<f32>(736f, 696f)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1399f, -1727f, 1032f)) + _wgslsmith_f_op_vec3_f32(func_3(func_4(Struct_1(vec3<bool>(false, false, false), vec4<i32>(68198i, global0[_wgslsmith_index_u32(45527u, 4u)], 10090i, -2147483647i), 46273u), vec2<f32>(804f, -2010f), vec3<f32>(302f, -1092f, 243f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1454f, 583f, -375f)), true, 1u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(848f, -2924f, 818f) - vec3<f32>(-683f, -909f, 1348f)))), select(!vec3<bool>(var_0, var_3.x, var_0), func_4(Struct_1(vec3<bool>(var_3.x, false, var_0), vec4<i32>(13791i, -23920i, -63646i, -25314i), 2311u), vec2<f32>(-1229f, 1860f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1029f, -1059f, 2756f) - vec3<f32>(2674f, 1851f, -747f))).a, var_0)))).b.wyy;
    var_2 = vec3<i32>(var_4.x, select(~(-var_4.x), 7259i, var_0), 2147483647i);
    global0 = array<i32, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(4754u, 4u)], ~_wgslsmith_mult_vec3_i32(max(_wgslsmith_add_vec3_i32(vec3<i32>(-1244i, 0i, var_2.x), var_4), vec3<i32>(21649i, var_4.x, 0i)), abs(-vec3<i32>(-36629i, 78908i, var_4.x))), var_2.x);
}

