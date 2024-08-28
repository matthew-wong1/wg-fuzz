struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1829f))), _wgslsmith_f_op_f32(step(-342f, _wgslsmith_f_op_f32(1000f - -674f)))))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, abs(~u_input.a.x)) << (46496u % 32u), 29u)]);
    var var_1 = global0[_wgslsmith_index_u32(~(~16518u), 29u)];
    let var_2 = _wgslsmith_f_op_vec2_f32(select(var_0.a, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a.x))) * -1000f), var_0.a.x), !select(vec2<bool>(any(vec2<bool>(false, true)), select(false, false, false)), vec2<bool>(select(false, false, false), true), false)));
    var var_3 = !select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false)), vec2<bool>(true, true), !all(vec4<bool>(false, true, false, false))), select(vec2<bool>(any(vec2<bool>(false, false)), any(vec3<bool>(true, true, true))), vec2<bool>(all(vec2<bool>(true, false)), any(vec3<bool>(false, true, false))), !any(vec2<bool>(false, true))), vec2<bool>(_wgslsmith_f_op_f32(abs(var_2.x)) < _wgslsmith_f_op_f32(1000f + 105f), select(all(vec4<bool>(false, false, false, true)), false, false)));
    var var_4 = _wgslsmith_sub_vec3_u32(~(~max(~var_1.b.zyx, _wgslsmith_div_vec3_u32(var_1.c, vec3<u32>(0u, 0u, u_input.a.x)))), ~((vec3<u32>(1u, 4294967295u, 79933u) & vec3<u32>(38168u, var_1.c.x, var_0.b.c.x)) & vec3<u32>(var_0.b.b.x, u_input.a.x, 22677u)));
    return vec2<u32>(var_0.b.b.x, ~var_0.b.a.x);
}

fn func_2() -> vec2<i32> {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(-1000f + -1240f), Struct_2(global0[_wgslsmith_index_u32(~(~u_input.a.x), 29u)], true), Struct_2(Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 1u) ^ u_input.a.yy, func_3()), vec4<u32>(~u_input.a.x, u_input.a.x, 28157u, _wgslsmith_div_u32(u_input.a.x, 4787u)), reverseBits(max(u_input.a, vec3<u32>(56834u, 0u, u_input.a.x)))), all(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true))), -1i, vec4<i32>(-1i) * -select(select(vec4<i32>(13060i, -1i, 1i, 2147483647i), vec4<i32>(-2147483647i, 68863i, 1i, 2154i), vec4<bool>(true, true, true, false)), vec4<i32>(1i, 1i, 5747i, 15043i) >> (vec4<u32>(1u, u_input.b, u_input.b, u_input.a.x) % vec4<u32>(32u)), vec4<bool>(false, true, false, true)));
    var_0 = Struct_5(-881f, var_0.c, var_0.b, _wgslsmith_mult_i32(var_0.d, i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(-47873i, var_0.e.x, var_0.d, -1202i), var_0.e)), min(-_wgslsmith_div_vec4_i32(vec4<i32>(var_0.e.x, var_0.d, 1i, -14707i), var_0.e), var_0.e));
    let var_1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - -1000f)), var_0.c, var_0.c, _wgslsmith_mult_i32(var_0.e.x >> (_wgslsmith_sub_u32(11684u, u_input.b >> (var_0.c.a.c.x % 32u)) % 32u), -abs(6520i >> (var_0.b.a.c.x % 32u))), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.d, 0i, countOneBits(var_0.d), var_0.e.x), var_0.e), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, -1i, 16231i & var_0.e.x, -41180i), ~min(vec4<i32>(-38911i, var_0.d, 1i, var_0.d), var_0.e))));
    let var_2 = 124244u;
    global0 = array<Struct_1, 29>();
    return vec2<i32>(1i, var_1.d);
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> Struct_4 {
    let var_0 = any(select(vec2<bool>(any(vec4<bool>(true, true, true, true)), 1i <= _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, 1i, 1i), vec4<i32>(-5541i, -2147483647i, -3697i, 2147483647i))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)))), true));
    let var_1 = Struct_4(_wgslsmith_mod_u32(39006u, u_input.b), countOneBits(func_2()));
    global0 = array<Struct_1, 29>();
    let var_2 = vec4<i32>(var_1.b.x, i32(-1i) * -1i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.x, var_1.b.x, -1i, -1i) | vec4<i32>(var_1.b.x, 0i, 54549i, var_1.b.x), abs(vec4<i32>(var_1.b.x, 30441i, -1i, -1i))), var_1.b.x) >> ((arg_1 & _wgslsmith_div_u32(~1u, ~var_1.a)) % 32u), 10198i);
    global0 = array<Struct_1, 29>();
    return Struct_4(~(u_input.b | arg_1), _wgslsmith_sub_vec2_i32(vec2<i32>(~var_2.x, _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(var_2.x, -2147483647i, var_2.x)), vec3<i32>(-9927i, var_2.x, var_2.x))), ~var_1.b >> (min(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, arg_1), arg_0.zx), u_input.a.zy) % vec2<u32>(32u))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5, arg_2: bool, arg_3: Struct_3) -> StorageBuffer {
    var var_0 = vec4<bool>(false | arg_1.b.b, !any(vec3<bool>(true, !arg_2, arg_2)), any(select(vec2<bool>(any(vec2<bool>(false, true)), arg_2), !(!vec2<bool>(arg_2, arg_1.c.b)), arg_1.d >= arg_0.b.x)), arg_1.b.b);
    global0 = array<Struct_1, 29>();
    var var_1 = Struct_1(_wgslsmith_sub_vec2_u32((u_input.a.xy << (~arg_1.b.a.a % vec2<u32>(32u))) ^ vec2<u32>(1u, _wgslsmith_div_u32(51076u, 77032u)), ~(~(vec2<u32>(arg_0.a, 4294967295u) & vec2<u32>(arg_1.b.a.b.x, arg_3.b.a.x)))), min(~(~(vec4<u32>(u_input.b, arg_0.a, arg_3.b.b.x, arg_0.a) >> (vec4<u32>(75699u, 26016u, 22892u, 19347u) % vec4<u32>(32u)))), arg_3.b.b), arg_3.b.c);
    var_1 = Struct_1(~firstLeadingBit(~var_1.c.yx), vec4<u32>(~arg_0.a, 4294967295u, func_3().x, func_3().x), _wgslsmith_mult_vec3_u32(~firstTrailingBit(vec3<u32>(4294967295u, 1u, arg_1.c.a.c.x)), ~var_1.c) & ~(~(~vec3<u32>(0u, u_input.b, 4294967295u))));
    var_0 = !(!select(select(select(vec4<bool>(arg_1.c.b, false, false, false), vec4<bool>(true, false, var_0.x, arg_1.c.b), arg_1.c.b), !vec4<bool>(arg_1.b.b, true, false, false), true), vec4<bool>(false, !arg_2, arg_1.b.b, true), false));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.a.x, 122f, 703f, arg_3.a.x) - vec4<f32>(arg_3.a.x, arg_3.a.x, arg_3.a.x, arg_1.a)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-496f, 2071f, 1079f, arg_3.a.x), vec4<f32>(-1000f, arg_1.a, arg_1.a, arg_3.a.x)))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.a.x, arg_1.a, arg_3.a.x, arg_1.a) * vec4<f32>(-623f, arg_1.a, -681f, 275f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -815f), arg_3.a.x, arg_3.a.x, arg_3.a.x), vec4<bool>(true, true, true, true)))), ~(~(~vec2<u32>(arg_0.a, var_1.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2603f))));
    let var_1 = ~u_input.a.x;
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    var var_2 = 37805u;
    let var_3 = u_input.a.x;
    let x = u_input.a;
    s_output = func_4(func_1(u_input.a, ~u_input.a.x | max(122666u, 0u)), Struct_5(_wgslsmith_f_op_f32(-var_0), Struct_2(Struct_1(u_input.a.zz << (vec2<u32>(33449u, 0u) % vec2<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(var_3, 1u, var_3, 36072u), vec4<u32>(var_3, var_1, 4294967295u, u_input.b)), select(u_input.a, u_input.a, vec3<bool>(false, true, false))), false), Struct_2(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(u_input.a.zz, u_input.a.zz), 29u)], select(false, true, true)), i32(-1i) * -(62748i << (0u % 32u)), vec4<i32>(countOneBits(max(-48783i, -26018i)), -_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -6665i), vec2<i32>(-2147483647i, 6884i)), i32(-1i) * -2147483647i, 17557i)), ~var_1 < reverseBits(var_1), Struct_3(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0, _wgslsmith_f_op_f32(trunc(649f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0, var_0))))), global0[_wgslsmith_index_u32(var_3, 29u)]));
}

