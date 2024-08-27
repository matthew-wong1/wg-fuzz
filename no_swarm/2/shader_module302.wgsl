struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 8>;

var<private> global2: array<vec4<i32>, 20>;

var<private> global3: Struct_1 = Struct_1(vec2<u32>(81226u, 91420u), 492f, vec4<bool>(false, true, false, false));

var<private> global4: vec3<bool>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global0 = ~global1[_wgslsmith_index_u32(u_input.b, 8u)] ^ ((global1[_wgslsmith_index_u32(8644u, 8u)] ^ ~_wgslsmith_div_u32(8359u, global1[_wgslsmith_index_u32(4294967295u, 8u)])) >> (u_input.b % 32u));
    var var_0 = -_wgslsmith_sub_vec2_i32(~vec2<i32>(-u_input.c, u_input.c), vec2<i32>(u_input.c, ~u_input.c));
    global3 = Struct_1(vec2<u32>(0u << (0u % 32u), select(~_wgslsmith_dot_vec4_u32(vec4<u32>(global3.a.x, 61175u, 26591u, global3.a.x), vec4<u32>(9823u, u_input.a.x, 1u, 28430u)), ~global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, global1[_wgslsmith_index_u32(0u, 8u)]), 8u)], global3.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.b, global3.b))), vec4<bool>(any(select(vec2<bool>(true, true), global3.c.yx, global4.x)) || true, true, true, !all(global3.c.wzx)));
    var var_1 = Struct_2(_wgslsmith_add_vec3_u32(reverseBits(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(60949u, global1[_wgslsmith_index_u32(6516u, 8u)], global3.a.x), vec3<u32>(global3.a.x, global3.a.x, global3.a.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, 3951u, 0u), vec3<u32>(0u, u_input.a.x, u_input.d)))), _wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(select(u_input.b, u_input.b, false), 0u, _wgslsmith_mod_u32(1u, 1u)), firstLeadingBit(abs(u_input.a)))), Struct_1(global3.a, _wgslsmith_f_op_f32(f32(-1f) * -248f), select(select(vec4<bool>(true, global4.x, false, true), !vec4<bool>(true, true, global4.x, true), any(global3.c.yy)), vec4<bool>(all(global3.c.wz), false, -40752i != u_input.c, global4.x), select(select(vec4<bool>(global4.x, true, false, false), vec4<bool>(global4.x, global3.c.x, false, global3.c.x), global4.x), global3.c, vec4<bool>(true, false, global4.x, global3.c.x)))));
    var var_2 = vec4<bool>(true, !(var_0.x < _wgslsmith_mod_i32(var_0.x, 41433i)), all(select(vec2<bool>(!global4.x, false), var_1.b.c.zz, var_1.b.c.yx)), global4.x);
    return _wgslsmith_f_op_f32(-global3.b);
}

fn func_4(arg_0: vec4<i32>, arg_1: f32) -> u32 {
    var var_0 = Struct_2(u_input.a, Struct_1(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], global1[_wgslsmith_index_u32(0u, 8u)], 19988u, 4294967295u), vec4<u32>(u_input.d, 70758u, 1u, 26612u)), u_input.b), 1u), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(global3.b * global3.b), any(vec2<bool>(false, global4.x))))), select(select(vec4<bool>(global3.c.x, global3.c.x, false, true), !vec4<bool>(global3.c.x, global3.c.x, global4.x, global3.c.x), vec4<bool>(global3.c.x, global4.x, global3.c.x, global4.x)), global3.c, select(!vec4<bool>(true, global3.c.x, true, global4.x), !vec4<bool>(global3.c.x, global4.x, false, true), global3.c))));
    global3 = Struct_1(~(~firstTrailingBit(~vec2<u32>(global1[_wgslsmith_index_u32(u_input.b, 8u)], 4294967295u))), _wgslsmith_f_op_f32(-691f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1)))), global3.c);
    var_0 = Struct_2(select(firstTrailingBit(~_wgslsmith_sub_vec3_u32(vec3<u32>(88714u, 4294967295u, 7563u), vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(47039u, 8u)], global3.a.x))), var_0.a, !(!select(vec3<bool>(var_0.b.c.x, var_0.b.c.x, var_0.b.c.x), var_0.b.c.xzx, vec3<bool>(false, true, global4.x)))), var_0.b);
    var var_1 = u_input.b;
    global3 = Struct_1(vec2<u32>(((global1[_wgslsmith_index_u32(global3.a.x, 8u)] ^ 1u) >> (var_0.b.a.x % 32u)) >> (var_0.b.a.x % 32u), global3.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(993f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(269f + -202f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b.b))))), global3.c);
    return global1[_wgslsmith_index_u32(countOneBits(select(1u, global3.a.x, !(true | var_0.b.c.x))), 8u)];
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32) -> vec2<u32> {
    let var_0 = abs(func_4(_wgslsmith_mult_vec4_i32(~global2[_wgslsmith_index_u32(~26219u, 20u)], vec4<i32>(_wgslsmith_mult_i32(u_input.c, 41205i), u_input.c, 17967i, u_input.c)), _wgslsmith_div_f32(882f, _wgslsmith_f_op_f32(func_3()))));
    global2 = array<vec4<i32>, 20>();
    var var_1 = arg_0;
    global2 = array<vec4<i32>, 20>();
    let var_2 = max(_wgslsmith_div_i32(~(-u_input.c), -firstTrailingBit(~arg_2)), reverseBits(reverseBits(-21430i)));
    return ~(~(~max(vec2<u32>(9225u, 4294967295u), global3.a)));
}

fn func_5(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    let var_0 = vec2<i32>(u_input.c, u_input.c) << (vec2<u32>(~(1u | global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, u_input.b), 8u)]), ~(~(arg_1.x ^ global1[_wgslsmith_index_u32(arg_1.x, 8u)]))) % vec2<u32>(32u));
    global3 = Struct_1(~_wgslsmith_div_vec2_u32(vec2<u32>(53543u, 4294967295u) >> (arg_2.a.zx % vec2<u32>(32u)), u_input.a.yx), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.b) - _wgslsmith_f_op_f32(exp2(global3.b)))) + -997f), vec4<bool>(true, !(!global4.x), any(select(vec2<bool>(false, arg_2.b.c.x), global3.c.wy, vec2<bool>(false, false))) & (u_input.c < var_0.x), true));
    var var_1 = Struct_2(u_input.a, arg_2.b);
    let var_2 = arg_2;
    let var_3 = vec2<bool>(!(_wgslsmith_div_u32(var_1.b.a.x, abs(arg_2.a.x)) == _wgslsmith_add_u32(arg_2.a.x, global1[_wgslsmith_index_u32(1u, 8u)] & 90469u)), false);
    return _wgslsmith_f_op_f32(186f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_1.b.b)))));
}

fn func_1(arg_0: vec2<f32>) -> f32 {
    global0 = u_input.d;
    global3 = Struct_1(vec2<u32>(60292u, 4294967295u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_5(global4.x, ~_wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(0u, global1[_wgslsmith_index_u32(global3.a.x, 8u)], 0u)), Struct_2(vec3<u32>(14555u, global3.a.x, 34708u), Struct_1(vec2<u32>(global3.a.x, 1u), -279f, global3.c)), Struct_1(func_2(Struct_1(vec2<u32>(global1[_wgslsmith_index_u32(0u, 8u)], 4294967295u), 212f, global3.c), vec4<f32>(-1559f, 404f, 1142f, arg_0.x), u_input.c), _wgslsmith_div_f32(arg_0.x, global3.b), select(global3.c, global3.c, vec4<bool>(false, global3.c.x, global3.c.x, global3.c.x))))))), global3.c);
    let var_0 = global3.c.x;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(929f, -756f) * 1044f) + global3.b)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3()))));
    global3 = Struct_1(select(vec2<u32>(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16031u, 8u)], 8u)], global1[_wgslsmith_index_u32(28114u, 8u)]), 1u), firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(global3.a.x, u_input.d), vec2<u32>(144u, global3.a.x))), true) >> (min(global3.a, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, global3.a.x), u_input.a.xy, vec2<u32>(global1[_wgslsmith_index_u32(u_input.d, 8u)], 1u))) % vec2<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -324f), select(!(!select(global3.c, vec4<bool>(false, false, global4.x, true), global4.x)), !global3.c, all(global4.xz)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1)) + _wgslsmith_f_op_f32(var_1 * var_1)))) * _wgslsmith_f_op_f32(step(-462f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_1)), _wgslsmith_f_op_f32(-var_1), false))))) - _wgslsmith_f_op_f32(-global3.b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 8>();
    let var_0 = vec3<u32>(~global1[_wgslsmith_index_u32(u_input.d, 8u)], countOneBits(1u), ~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(6278u, 0u, 1u), vec3<u32>(40041u, global3.a.x, 22245u)), u_input.a));
    global0 = ~_wgslsmith_add_u32(u_input.a.x, 7309u);
    global4 = vec3<bool>(_wgslsmith_f_op_f32(func_1(vec2<f32>(-1000f, -1496f))) <= global3.b, select(false, _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(867f, -434f))))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -387f)), !global3.c.x), !any(select(!global3.c.wx, select(vec2<bool>(true, true), vec2<bool>(global3.c.x, true), vec2<bool>(true, true)), global3.c.x)));
    let var_1 = select(select(select(select(global3.c, vec4<bool>(true, global3.c.x, false, false), !vec4<bool>(global3.c.x, true, false, false)), global3.c, global3.c), !vec4<bool>(global4.x && global4.x, global4.x, true, any(vec4<bool>(global3.c.x, true, true, true))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1177f * -1000f))) > global3.b), !select(select(!global3.c, vec4<bool>(global3.c.x, global3.c.x, true, true), !vec4<bool>(global4.x, false, global4.x, global3.c.x)), !select(global3.c, vec4<bool>(false, false, false, false), vec4<bool>(false, global4.x, global4.x, true)), any(!global3.c.yzy)), select(vec4<bool>(global3.c.x, true, global3.c.x, true), select(select(global3.c, !global3.c, global3.c), select(global3.c, !vec4<bool>(true, false, false, global3.c.x), false), !select(vec4<bool>(global4.x, false, global4.x, false), vec4<bool>(global4.x, true, global4.x, true), global3.c)), select(global3.c, !select(vec4<bool>(true, true, global3.c.x, global3.c.x), global3.c, global4.x), vec4<bool>(global3.c.x & false, all(vec4<bool>(false, true, global3.c.x, global4.x)), true, true && global4.x))));
    var var_2 = global3.b;
    global1 = array<u32, 8>();
    global4 = !select(var_1.ywz, vec3<bool>(any(!var_1.ywz), global4.x, false), !select(!vec3<bool>(global3.c.x, global3.c.x, global3.c.x), var_1.yww, all(global3.c)));
    var var_3 = _wgslsmith_add_vec2_i32(select(-vec2<i32>(u_input.c ^ -1i, u_input.c ^ u_input.c), -vec2<i32>(~u_input.c, u_input.c), !(!select(global3.c.xy, vec2<bool>(global4.x, true), true))), -(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, u_input.c), -vec2<i32>(-2147483647i, u_input.c), _wgslsmith_div_vec2_i32(vec2<i32>(-21906i, 0i), vec2<i32>(u_input.c, 32171i))) & _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, -2147483647i), ~vec2<i32>(-2147483647i, u_input.c))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~(u_input.a ^ var_0)), min(abs(i32(-1i) * -1i), 2147483647i), vec4<i32>(~var_3.x, var_3.x, max(-2147483647i, 12343i), min(~firstTrailingBit(u_input.c), _wgslsmith_mod_i32(-2147483647i, i32(-1i) * -35429i))), vec2<u32>(_wgslsmith_clamp_u32(14927u, ~abs(global1[_wgslsmith_index_u32(0u, 8u)]), _wgslsmith_clamp_u32(_wgslsmith_div_u32(48827u, var_0.x), var_0.x, 0u)), 36144u));
}

