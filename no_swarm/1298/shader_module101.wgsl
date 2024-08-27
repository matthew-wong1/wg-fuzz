struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec4<bool>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_2,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 4>;

var<private> global1: vec2<bool> = vec2<bool>(false, false);

var<private> global2: array<f32, 18>;

var<private> global3: f32 = -481f;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec3<bool>, arg_3: bool) -> vec2<f32> {
    global0 = array<vec4<bool>, 4>();
    let var_0 = Struct_2(4294967295u, 1f, vec4<bool>(any(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(arg_3, false))), false, all(vec2<bool>(true, true)), arg_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -355f))), Struct_1(~(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 32271i, arg_0), vec3<i32>(0i, -2436i, -61237i)) | -10154i), ~vec2<u32>(u_input.d.x & 0u, u_input.b.x), any(arg_2)));
    let var_1 = _wgslsmith_mod_vec4_u32(~vec4<u32>(10471u, 17439u, var_0.a, var_0.e.b.x), vec4<u32>(~var_0.e.b.x, u_input.c.x, ~(~43269u), var_0.a));
    let var_2 = 50373u;
    let var_3 = ~abs(0u);
    return vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -697f), 1490f);
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: vec2<u32>, arg_3: u32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_mult_i32(~(i32(-1i) * -u_input.a), u_input.a), u_input.a, vec3<bool>(false, false, any(global0[_wgslsmith_index_u32(countOneBits(23319u), 4u)])), true));
    let var_1 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1, 4294967295u), 18u)] * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(7329u, 18u)] * -657f)) + 582f) < 577f, _wgslsmith_f_op_f32(step(-1654f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-479f, 184f)))) >= _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(40355u, arg_1), 18u)], _wgslsmith_f_op_f32(step(var_0.x, global2[_wgslsmith_index_u32(1u, 18u)]))))));
    let var_2 = arg_0.x;
    global1 = select(vec2<bool>(true, true), select(!vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.c.x, 18u)] <= 1000f), select(vec2<bool>(false, any(vec3<bool>(var_2, var_1.x, var_1.x))), arg_0, false), vec2<bool>(select(global2[_wgslsmith_index_u32(4294967295u, 18u)] < 549f, !var_1.x, 4294967295u >= u_input.d.x), arg_0.x)), var_1.x);
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(732f, var_0.x)) - 668f);
    return select(select(vec2<bool>(-9090i == _wgslsmith_mod_i32(-5260i, u_input.a), var_1.x), vec2<bool>(var_2, any(vec2<bool>(true, var_1.x))), arg_0), var_1, !(!vec2<bool>(arg_0.x != true, global1.x)));
}

fn func_1(arg_0: vec3<bool>) -> Struct_3 {
    let var_0 = any(func_2(!select(!vec2<bool>(false, arg_0.x), vec2<bool>(arg_0.x, arg_0.x), global1.x), ~_wgslsmith_sub_u32(56842u & u_input.b.x, 4294967295u), vec2<u32>(1u, 73335u), countOneBits(~u_input.b.x)));
    var var_1 = u_input.b.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_div_i32(u_input.e, -7869i), u_input.e, vec3<bool>(global1.x, global1.x, true), true)).x, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(firstLeadingBit(0u), 18u)] * _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(u_input.c.x, 18u)], -1350f)))))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(9835u & firstLeadingBit(u_input.d.x), 18u)]) * var_2) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2, _wgslsmith_f_op_f32(max(-1361f, 385f)), select(true, var_0, var_0)))));
    var_1 = u_input.c.x;
    return Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(2311u, u_input.c.x), 4u)]);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_4) -> vec2<u32> {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(arg_1.yy, arg_1.yy, true)), _wgslsmith_div_vec2_f32(arg_1.zz, vec2<f32>(arg_1.x, 396f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.zy * arg_1.yx)))))));
    global1 = !select(select(vec2<bool>(any(arg_0.a.zx), true), !(!vec2<bool>(true, arg_0.a.x)), global1.x), func_2(vec2<bool>(arg_3.c.c.x, true && arg_3.c.e.c), firstTrailingBit(u_input.c.x >> (34052u % 32u)), max(arg_3.c.e.b, ~vec2<u32>(4294967295u, u_input.b.x)), arg_3.c.e.b.x), vec2<bool>(true, all(select(arg_0.a.wy, arg_3.c.c.zw, true))));
    var_0 = global1.x;
    let var_2 = countOneBits(-2147483647i);
    return _wgslsmith_add_vec2_u32(~u_input.b.xz, abs(vec2<u32>(51312u, u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.e, _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(func_4(func_1(vec3<bool>(true, global1.x, global1.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2[_wgslsmith_index_u32(54539u, 18u)], global2[_wgslsmith_index_u32(u_input.d.x, 18u)], global2[_wgslsmith_index_u32(u_input.b.x, 18u)]), vec3<f32>(-453f, 137f, 879f))), _wgslsmith_f_op_f32(680f + 307f), Struct_4(Struct_3(vec4<bool>(global1.x, global1.x, false, false)), -1i, Struct_2(u_input.b.x, global2[_wgslsmith_index_u32(u_input.b.x, 18u)], global0[_wgslsmith_index_u32(u_input.c.x, 4u)], global2[_wgslsmith_index_u32(u_input.c.x, 18u)], Struct_1(2147483647i, u_input.c, global1.x)), vec2<bool>(global1.x, true))), _wgslsmith_div_vec2_u32(~u_input.d, u_input.b.zz)), ~vec2<u32>(u_input.b.x, 4294967295u) ^ u_input.b.yx), all(select(!func_1(vec3<bool>(false, global1.x, global1.x)).a.zw, select(vec2<bool>(global1.x, true), vec2<bool>(true, true), global1.x), true)));
    var var_1 = ~(abs(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.e) | vec2<i32>(var_0.a, 0i), _wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.e), vec2<i32>(-2147483647i, var_0.a)))) ^ abs(countOneBits(vec2<i32>(u_input.e, u_input.a)) << (u_input.b.yz % vec2<u32>(32u))));
    let var_2 = Struct_1(-18361i, vec2<u32>(_wgslsmith_clamp_u32(~17297u, ~0u, firstTrailingBit(~var_0.b.x)), ~4294967295u), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x | var_0.b.x, 1u), 18u)]) < _wgslsmith_f_op_f32(-500f * global2[_wgslsmith_index_u32(countOneBits(var_0.b.x), 18u)]));
    let var_3 = var_0.b.x;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.b.x, 0u, var_2.b.x), 18u)], -1029f)), vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3(0i, reverseBits(u_input.a), vec3<bool>(var_0.c, var_0.c, var_0.c), true)).x, _wgslsmith_f_op_f32(267f - 1249f)), global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i) * -(vec2<i32>(var_1.x, var_1.x) >> (var_0.b % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(17167u, 18u)], var_4.x)), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(select(var_4.x, -711f, global1.x)))), _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(~u_input.c.x, 18u)]))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1314f, global2[_wgslsmith_index_u32(var_2.b.x, 18u)], var_4.x)))))), var_0.a, 2147483647i, ~(~var_0.a));
}

