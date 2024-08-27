struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30> = array<i32, 30>(i32(-2147483648), -63529i, -18058i, 2147483647i, 43729i, 2147483647i, 1i, 30061i, -47094i, -17617i, 0i, i32(-2147483648), -3454i, 2147483647i, i32(-2147483648), 0i, -54787i, -20415i, 20189i, -32531i, -71837i, 36802i, -25033i, -37037i, 0i, -1i, 14497i, 1i, -1i, -1i);

var<private> global1: array<Struct_1, 10>;

var<private> global2: array<vec2<i32>, 8> = array<vec2<i32>, 8>(vec2<i32>(0i, -1i), vec2<i32>(0i, 0i), vec2<i32>(-89678i, 25358i), vec2<i32>(22452i, 1270i), vec2<i32>(15577i, 2147483647i), vec2<i32>(1i, -39648i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-1i, 2147483647i));

var<private> global3: array<Struct_2, 3>;

var<private> global4: f32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<f32> {
    let var_0 = !select(vec3<bool>(true, !all(vec2<bool>(false, true)), any(select(vec2<bool>(false, false), vec2<bool>(false, true), false))), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), vec3<bool>(true, true, true), (58418i >> (u_input.a.x % 32u)) > -3634i), !all(vec3<bool>(true, true, true)));
    global1 = array<Struct_1, 10>();
    global1 = array<Struct_1, 10>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-554f, _wgslsmith_f_op_f32(f32(-1f) * -1969f)))))), -409f, 190f);
    global1 = array<Struct_1, 10>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1719f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -615f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.x, var_1.x)) - -408f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_1, vec3<f32>(637f, 463f, var_1.x), var_0))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1418f, var_1.x, var_1.x) * vec3<f32>(var_1.x, var_1.x, var_1.x)))));
}

fn func_2(arg_0: u32, arg_1: bool) -> vec2<bool> {
    var var_0 = global1[_wgslsmith_index_u32(~24253u | ~_wgslsmith_mult_u32(0u, arg_0), 10u)];
    var var_1 = 4294967295u;
    let var_2 = Struct_1(-u_input.b.yw, _wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -621f));
    let var_3 = (countOneBits(~_wgslsmith_mod_u32(u_input.a.x, 0u)) ^ 10535u) <= _wgslsmith_dot_vec3_u32(u_input.a.wyx, select(vec3<u32>(u_input.a.x, u_input.a.x, 0u), select(vec3<u32>(u_input.a.x, 4294967295u, arg_0), u_input.a.yyx, false), !vec3<bool>(arg_1, true, arg_1)) >> (_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a.zwy, vec3<u32>(arg_0, 40098u, arg_0)), vec3<u32>(0u, arg_0, arg_0)) % vec3<u32>(32u)));
    var var_4 = Struct_1(vec2<i32>(global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(u_input.a.x, 0u)), 30u)], firstTrailingBit(13072i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, 1898f, var_0.b.x)), vec3<f32>(_wgslsmith_f_op_f32(ceil(var_2.b.x)), _wgslsmith_f_op_f32(-var_0.b.x), var_0.b.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.b + var_0.b)))), -497f);
    return vec2<bool>(arg_0 == _wgslsmith_dot_vec2_u32(~abs(u_input.a.zx), firstTrailingBit(countOneBits(u_input.a.wy))), !(!arg_1));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: u32) -> Struct_1 {
    return Struct_1(_wgslsmith_mult_vec2_i32(-u_input.b.xw, vec2<i32>(51985i, -89848i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(838f, 717f, 450f)))) - vec3<f32>(_wgslsmith_f_op_f32(round(1440f)), _wgslsmith_f_op_f32(f32(-1f) * -863f), _wgslsmith_f_op_f32(step(1000f, 967f)))) + _wgslsmith_div_vec3_f32(vec3<f32>(-116f, -807f, _wgslsmith_div_f32(1232f, 241f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1597f, 645f, -1390f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(177f + 1000f), _wgslsmith_div_f32(274f, -711f)))))));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_2) -> bool {
    let var_0 = func_4(select(vec2<bool>(true, true), vec2<bool>(true, false), !select(vec2<bool>(true, true), vec2<bool>(true, false), all(vec3<bool>(true, false, false)))), !func_2(u_input.a.x, !all(vec3<bool>(false, true, true))), u_input.a.x << (_wgslsmith_dot_vec4_u32(u_input.a, abs(u_input.a)) % 32u));
    let var_1 = global3[_wgslsmith_index_u32(u_input.a.x, 3u)];
    return _wgslsmith_sub_u32(~(1u & u_input.a.x) >> (~(~u_input.a.x) % 32u), u_input.a.x) > u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<i32>, 8>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(114f, 1348f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(879f, 433f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -162f), _wgslsmith_f_op_f32(1023f - 436f))), select(vec2<bool>(true, func_1(vec4<f32>(1991f, 359f, 541f, 1337f), -43526i, Struct_2(-1000f, global1[_wgslsmith_index_u32(u_input.a.x, 10u)]))), vec2<bool>(true, true), !func_2(u_input.a.x, false)))));
    global4 = -1049f;
    var var_1 = global2[_wgslsmith_index_u32(~46950u, 8u)];
    let var_2 = _wgslsmith_mod_u32(~(~(1u & ~u_input.a.x)), ~29742u);
    let var_3 = -7841i;
    var var_4 = global3[_wgslsmith_index_u32(u_input.a.x, 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, u_input.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.x * -1311f), 443f, _wgslsmith_f_op_f32(step(884f, 490f)))) - var_4.b.b), vec4<f32>(func_4(func_2(~1u, false), vec2<bool>(any(vec3<bool>(false, false, false)), func_1(vec4<f32>(var_0.x, -127f, var_4.b.c, var_0.x), 44473i, Struct_2(-366f, global1[_wgslsmith_index_u32(4294967295u, 10u)]))), 37034u).c, var_0.x, 741f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(494f + var_0.x))) * 674f)), _wgslsmith_mod_u32(~_wgslsmith_add_u32(~u_input.a.x, _wgslsmith_div_u32(var_2, var_2)), ~0u));
}

