struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
    c: f32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5> = array<u32, 5>(21612u, 46225u, 0u, 2722u, 56024u);

var<private> global1: Struct_2;

var<private> global2: Struct_1;

var<private> global3: array<vec3<bool>, 11>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>) -> bool {
    var var_0 = vec4<u32>(_wgslsmith_mod_u32(~(~u_input.a.x), abs(~u_input.a.x) | _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a.x, 1u, 12952u, 0u)), ~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1942u, 5u)], 5u)], 0u, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], u_input.a.x))), ~(u_input.a.x ^ ~firstLeadingBit(u_input.a.x)), u_input.a.x, 0u);
    global0 = array<u32, 5>();
    var var_1 = 4294967295u;
    global3 = array<vec3<bool>, 11>();
    var var_2 = all(global3[_wgslsmith_index_u32(firstTrailingBit(~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, global0[_wgslsmith_index_u32(64214u, 5u)], 1u), vec4<u32>(4294967295u, 1u, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 0u)))), 11u)]);
    return any(vec4<bool>(true, arg_0.a.d, global2.c.x, global2.d));
}

fn func_2(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_add_i32(arg_0, ~(-firstLeadingBit(arg_0) & 1i));
    let var_1 = arg_3.c.a.yyy;
    var var_2 = arg_2.a.x;
    var var_3 = arg_3.c.a.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + -250f);
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(-global1.c.a), ~vec4<i32>(max(firstLeadingBit(-1i), i32(-1i) * -4679i), -arg_3.c.b.x, ~(~arg_2.b.x), global1.c.b.x), !(!(!select(arg_1.xwx, vec3<bool>(false, false, true), vec3<bool>(false, false, arg_3.a.x)))), true);
    return Struct_2(select(arg_2.c, arg_1.wyw, true | func_3(Struct_3(arg_3.c), vec2<f32>(var_1.x, global1.c.a.x))), func_3(Struct_3(arg_2), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.a.x, global2.a.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 906f))) * vec2<f32>(_wgslsmith_f_op_f32(floor(global2.a.x)), _wgslsmith_div_f32(-1492f, 1055f)))), Struct_1(vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(-arg_2.a.x), arg_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - arg_3.c.a.x)), var_4.b, !(!(!arg_1.xzw)), any(arg_1)));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = func_2(arg_1.b.x, select(vec4<bool>(-9461i < _wgslsmith_dot_vec3_i32(vec3<i32>(global2.b.x, 28795i, 0i), vec3<i32>(2147483647i, global1.c.b.x, 2147483647i)), false, global1.a.x | true, false), vec4<bool>(false, (arg_2.x < 0u) && !global1.b, global2.c.x, all(select(vec4<bool>(arg_1.c.x, false, global1.b, false), vec4<bool>(arg_1.d, global2.c.x, false, arg_1.c.x), false))), any(select(global1.c.c.xy, vec2<bool>(false, true), true))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global2.a)) + _wgslsmith_f_op_vec4_f32(global1.c.a * vec4<f32>(-573f, arg_1.a.x, 186f, global1.c.a.x))) * arg_1.a), vec4<i32>(-9034i, ~global2.b.x & 0i, global1.c.b.x >> (1u % 32u), 2147483647i), global2.c, select(arg_1.c.x, arg_1.c.x, false)), Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(21217u, ~(~1u)), 11u)], !(!(arg_0 > 0u)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.a)), ~(~arg_1.b), vec3<bool>(false, false, true), false)));
    global0 = array<u32, 5>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(global1.c.a.x, global1.c.a.x, true)), -1475f, _wgslsmith_f_op_f32(var_0.c.a.x + arg_1.a.x), global2.a.x) + arg_1.a) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(global2.a, _wgslsmith_div_vec4_f32(arg_1.a, vec4<f32>(arg_1.a.x, 1150f, arg_1.a.x, arg_1.a.x))))))), -_wgslsmith_add_vec4_i32(vec4<i32>(var_0.c.b.x, firstLeadingBit(global2.b.x), 1i, -17162i), global2.b), vec3<bool>(var_0.a.x && (false || var_0.c.c.x), false, global2.d), false);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_5) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.a.x) + func_1(1u, func_2(_wgslsmith_mod_i32(global1.c.b.x, 0i), select(select(arg_1, arg_1, arg_1), vec4<bool>(false, global2.d, true, arg_0.d), arg_0.b.x > -1i), func_2(arg_0.b.x, select(vec4<bool>(global1.c.d, arg_1.x, true, false), arg_1, false), arg_0, func_2(global1.c.b.x, arg_1, Struct_1(global1.c.a, arg_2.a, vec3<bool>(false, true, global1.b), global1.b), Struct_2(vec3<bool>(global1.a.x, global1.a.x, arg_0.c.x), false, arg_0))).c, func_2(19858i, !vec4<bool>(true, false, arg_1.x, global2.d), Struct_1(vec4<f32>(global2.a.x, -686f, arg_2.c, arg_0.a.x), arg_2.a, arg_1.wwz, global2.d), Struct_2(vec3<bool>(false, true, arg_1.x), arg_1.x, global1.c))).c, vec2<u32>(reverseBits(u_input.a.x), 1u | _wgslsmith_mod_u32(u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 5u)]))).a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(493f, _wgslsmith_f_op_f32(-global2.a.x), 678f, _wgslsmith_f_op_f32(max(346f, _wgslsmith_f_op_f32(func_4(func_1(4294967295u, Struct_1(global1.c.a, vec4<i32>(55646i, global2.b.x, -27612i, 30009i), global1.a, global2.c.x), vec2<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 0u)), select(vec4<bool>(global1.b, false, global2.d, false), vec4<bool>(global1.b, global2.c.x, global2.d, global1.a.x), global2.c.x && true), Struct_5(vec4<i32>(global1.c.b.x, global2.b.x, global1.c.b.x, 1i) >> (vec4<u32>(0u, 44752u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), ~vec2<u32>(4294967295u, 0u), -768f))))));
    var var_1 = _wgslsmith_add_vec4_i32(-(reverseBits(vec4<i32>(30103i, global2.b.x, global2.b.x, 1i)) >> (vec4<u32>(76287u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)] << (15335u % 32u), 69571u, global0[_wgslsmith_index_u32(~0u, 5u)]) % vec4<u32>(32u))), reverseBits(_wgslsmith_add_vec4_i32(abs(-global1.c.b), ~global1.c.b & -vec4<i32>(global2.b.x, -98544i, 1i, global1.c.b.x))));
    global1 = Struct_2(!select(!global2.c, func_2(_wgslsmith_dot_vec4_i32(global2.b, global2.b), !vec4<bool>(true, false, global2.d, global1.b), global1.c, Struct_2(vec3<bool>(global1.a.x, global2.d, false), global2.d, Struct_1(vec4<f32>(401f, 521f, -3619f, -1515f), vec4<i32>(global1.c.b.x, -22341i, global2.b.x, -31078i), vec3<bool>(true, global1.a.x, global1.c.c.x), true))).a, _wgslsmith_div_f32(var_0.x, 1254f) < var_0.x), false, func_2(-2147483647i, !vec4<bool>(true, !global1.a.x, true, global2.d), func_2(-10017i, !vec4<bool>(global1.c.d, true, false, global1.c.c.x), func_1(max(4294967295u, global0[_wgslsmith_index_u32(1u, 5u)]), func_2(-2147483647i, vec4<bool>(false, true, true, true), global1.c, Struct_2(vec3<bool>(global1.b, true, global1.b), true, global1.c)).c, u_input.a.yy), Struct_2(global1.a, true, Struct_1(global1.c.a, global2.b, vec3<bool>(false, global2.d, global1.a.x), global2.c.x))).c, Struct_2(select(func_1(1u, Struct_1(vec4<f32>(global2.a.x, -320f, global2.a.x, var_0.x), global1.c.b, vec3<bool>(false, global1.c.d, global1.b), true), vec2<u32>(4294967295u, 0u)).c, !vec3<bool>(global1.a.x, false, true), true), true, func_1(reverseBits(u_input.a.x), Struct_1(global1.c.a, global2.b, vec3<bool>(global1.c.d, global2.c.x, global2.c.x), false), abs(vec2<u32>(26520u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 5u)]))))).c);
    var var_2 = abs(select(firstTrailingBit(global2.b.x), func_2(_wgslsmith_dot_vec3_i32(max(var_1.yzw, vec3<i32>(0i, var_1.x, global2.b.x)), global2.b.yyx), vec4<bool>(!global2.c.x, global1.a.x, all(vec2<bool>(global2.d, global1.c.c.x)), true), global1.c, Struct_2(global3[_wgslsmith_index_u32(~4294967295u, 11u)], true, func_1(4294967295u, Struct_1(global2.a, vec4<i32>(25792i, -47267i, global1.c.b.x, -17320i), global2.c, true), u_input.a.yz))).c.b.x, !global1.a.x));
    global3 = array<vec3<bool>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-788f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.c.a.x + global1.c.a.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1515f), -1000f) - var_0.zw), vec2<bool>(false, false))), global1.c.b.x, ~0u, _wgslsmith_add_vec2_u32(vec2<u32>(~global0[_wgslsmith_index_u32(u_input.a.x, 5u)] >> (abs(9109u) % 32u), _wgslsmith_mult_u32(firstTrailingBit(u_input.a.x), firstTrailingBit(u_input.a.x))), vec2<u32>(~reverseBits(u_input.a.x), ~(60912u >> (u_input.a.x % 32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(1f))))));
}

