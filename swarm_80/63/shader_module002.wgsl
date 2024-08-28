struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: u32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 15>;

var<private> global1: array<Struct_2, 15>;

var<private> global2: array<vec4<bool>, 15>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> Struct_1 {
    global0 = array<vec4<u32>, 15>();
    var var_0 = -1194f;
    let var_1 = Struct_1(vec2<bool>(true, true), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-916f * 538f)))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f - -1000f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 405f))))), !select(select(vec4<bool>(true, true, true, true), global2[_wgslsmith_index_u32(~u_input.c.x, 15u)], select(global2[_wgslsmith_index_u32(u_input.c.x, 15u)], global2[_wgslsmith_index_u32(5781u, 15u)], global2[_wgslsmith_index_u32(u_input.c.x, 15u)])), select(global2[_wgslsmith_index_u32(1u, 15u)], vec4<bool>(true, true, false, true), true), vec4<bool>(true, false, true, true)), firstTrailingBit(abs(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))) ^ ~(-select(vec4<i32>(0i, u_input.b.x, u_input.b.x, 39875i), vec4<i32>(0i, 1i, u_input.b.x, -1i), false)), -(u_input.b & _wgslsmith_clamp_vec2_i32(u_input.b, u_input.b, u_input.b)) ^ ~u_input.b);
    return var_1;
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    global1 = array<Struct_2, 15>();
    global0 = array<vec4<u32>, 15>();
    var var_0 = func_1().c.xxy;
    let var_1 = Struct_2(u_input.c.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, -587f, arg_0.b.x, arg_0.b.x)))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.b.x, arg_0.b.x, _wgslsmith_f_op_f32(-arg_0.b.x), -3030f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.b.x, arg_0.b.x, 1000f, 100f)))))))), u_input.a);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x + _wgslsmith_f_op_f32(round(1587f))) * _wgslsmith_f_op_f32(-func_1().b.x))));
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_1.b + vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1983f) * -2246f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(547f + var_1.b.x) + -852f), -618f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(var_1.b))))) - var_1.b), global2[_wgslsmith_index_u32(u_input.c.x ^ ~_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(u_input.c.x, 15u)] >> (vec4<u32>(52075u, 4294967295u, var_1.a, u_input.c.x) % vec4<u32>(32u)), global0[_wgslsmith_index_u32(var_1.a, 15u)]), 15u)]));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: u32, arg_3: f32) -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-1796f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-425f)))), _wgslsmith_f_op_f32(-arg_3), -728f);
    let var_1 = arg_2;
    global0 = array<vec4<u32>, 15>();
    var var_2 = -35876i;
    let var_3 = Struct_1(select(!vec2<bool>(any(global2[_wgslsmith_index_u32(32519u, 15u)]), any(vec4<bool>(true, true, true, false))), !func_1().c.xx, !any(vec3<bool>(false, false, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.b.x, arg_3, _wgslsmith_f_op_f32(-arg_1.b.x)), var_0)), !vec4<bool>(false, true, var_1 != u_input.c.x, func_1().c.x), ~abs(vec4<i32>(-36508i, u_input.b.x, -48901i, u_input.a.x) & vec4<i32>(u_input.a.x, u_input.b.x, arg_1.c.x, u_input.a.x)) | select(select(vec4<i32>(u_input.b.x, arg_1.c.x, arg_1.c.x, arg_1.c.x) << (vec4<u32>(1u, 38411u, u_input.c.x, 54281u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.c.x, arg_1.c.x, arg_1.c.x, 0i), vec4<i32>(39931i, arg_1.c.x, -2147483647i, -2147483647i)), true), vec4<i32>(arg_1.c.x, -37492i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, -1i, 0i), vec4<i32>(-1i, arg_1.c.x, arg_1.c.x, arg_1.c.x)), func_1().d.x), true), vec2<i32>(_wgslsmith_clamp_i32(abs(-79496i), arg_1.c.x, _wgslsmith_mod_i32(-33305i, arg_1.c.x)), arg_1.c.x));
    return var_0.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec2<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(firstTrailingBit(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 416u, 26215u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, 8712u, arg_1.a)), ~123756u, _wgslsmith_sub_u32(4294967295u, arg_1.a))), Struct_2(~(~4294967295u), _wgslsmith_f_op_vec4_f32(func_3(func_1())), _wgslsmith_mult_vec3_i32(arg_1.c, abs(vec3<i32>(arg_1.c.x, u_input.b.x, -6933i)))), u_input.c.x, arg_1.b.x)));
    var var_1 = arg_1.b.yx;
    global1 = array<Struct_2, 15>();
    var var_2 = global0[_wgslsmith_index_u32(u_input.c.x, 15u)];
    let var_3 = 2495f;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = vec4<i32>(select(1i, var_0.e.x, (true & any(vec4<bool>(var_0.a.x, var_0.a.x, true, false))) && !any(vec3<bool>(var_0.a.x, var_0.c.x, var_0.a.x))), var_0.e.x << (_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(0u, ~1u)) % 32u), var_0.e.x, -1i);
    var_1 = countOneBits(_wgslsmith_add_vec4_i32(select(var_0.d, (var_0.d | vec4<i32>(var_1.x, u_input.b.x, -1i, 56648i)) & var_0.d, global2[_wgslsmith_index_u32(1u, 15u)]), var_0.d));
    global0 = array<vec4<u32>, 15>();
    let var_2 = any(select(var_0.c.yxy, !(!var_0.c.wwz), (17491u <= u_input.c.x) & !var_0.c.x)) || !select(func_2(vec2<i32>(u_input.a.x, var_0.d.x), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x), 15u)], firstLeadingBit(var_0.d), vec2<bool>(false, var_0.c.x)), all(!vec4<bool>(var_0.c.x, true, false, var_0.c.x)), var_0.a.x);
    var var_3 = _wgslsmith_dot_vec3_i32(max(vec3<i32>(firstTrailingBit(var_1.x), 38476i, var_1.x & u_input.b.x), vec3<i32>(_wgslsmith_clamp_i32(u_input.a.x, var_1.x, -1i), u_input.a.x, var_1.x)), vec3<i32>(25646i, -2147483647i, var_0.d.x)) & ~(-2147483647i);
    var var_4 = Struct_1(vec2<bool>(func_2(vec2<i32>(-19467i, 6933i) | _wgslsmith_sub_vec2_i32(var_1.yz, var_0.e), global1[_wgslsmith_index_u32(~13206u, 15u)], var_0.d << (~global0[_wgslsmith_index_u32(0u, 15u)] % vec4<u32>(32u)), !(!vec2<bool>(true, var_0.a.x))), true), var_0.b, !var_0.c, _wgslsmith_clamp_vec4_i32(min(abs(-var_0.d), var_0.d ^ vec4<i32>(var_0.d.x, u_input.b.x, var_1.x, 2147483647i)), vec4<i32>(func_1().e.x, var_1.x, _wgslsmith_dot_vec3_i32(var_1.zxw, ~vec3<i32>(var_1.x, var_1.x, 0i)), ~(var_0.e.x | -4404i)), -abs(vec4<i32>(var_0.e.x, var_0.d.x, 9167i, u_input.a.x) & vec4<i32>(var_0.e.x, -2299i, -2147483647i, 29028i))), firstTrailingBit(var_1.zy >> (u_input.c.yz % vec2<u32>(32u))));
    global1 = array<Struct_2, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(func_4(vec3<u32>(0u, 0u, u_input.c.x), global1[_wgslsmith_index_u32(u_input.c.x, 15u)], ~10405u, var_4.b.x)), var_4.b.x)), var_4.b.yy, ~u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(func_1().b.x))), firstLeadingBit(~vec3<u32>(_wgslsmith_mult_u32(70255u, 1u), _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(19745u, 15u)], global0[_wgslsmith_index_u32(u_input.c.x, 15u)]), u_input.c.x)));
}

