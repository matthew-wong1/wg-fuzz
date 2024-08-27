struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26>;

var<private> global1: array<i32, 9>;

var<private> global2: array<Struct_2, 20>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<f32>, arg_1: bool) -> u32 {
    let var_0 = u_input.c;
    global1 = array<i32, 9>();
    global1 = array<i32, 9>();
    global1 = array<i32, 9>();
    global0 = array<bool, 26>();
    return min(var_0, 0u);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: vec3<i32>) -> u32 {
    var var_0 = Struct_1(true, u_input.b, 3727u, arg_2.xz, arg_0.c);
    global0 = array<bool, 26>();
    global2 = array<Struct_2, 20>();
    let var_1 = Struct_1(true, ~reverseBits(vec4<i32>(_wgslsmith_dot_vec2_i32(arg_0.b.xz, vec2<i32>(27759i, u_input.d)), _wgslsmith_add_i32(48749i, arg_2.x), _wgslsmith_mult_i32(-1i, -32874i), arg_2.x)), ~(~abs(4294967295u) << (~(~0u) % 32u)), vec2<i32>(~u_input.a, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(var_0.c, 9u)], -21741i, 2147483647i), vec3<i32>(global1[_wgslsmith_index_u32(43624u, 9u)], u_input.b.x, var_0.d.x) | var_0.b.wxz))), !vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c, 12811u) & arg_1.x, 26u)], var_0.a, var_0.a, u_input.c == ~u_input.c));
    global0 = array<bool, 26>();
    return _wgslsmith_dot_vec4_u32(vec4<u32>(~100406u, u_input.c, countOneBits(firstLeadingBit(4294967295u >> (u_input.c % 32u))), ~var_0.c), vec4<u32>(var_1.c, firstLeadingBit(~(~4294967295u)), select(~1u, 26199u, any(!vec4<bool>(arg_0.c.x, global0[_wgslsmith_index_u32(0u, 26u)], false, var_1.e.x))), _wgslsmith_mult_u32(u_input.c, 28637u) ^ (_wgslsmith_dot_vec2_u32(arg_1.yx, vec2<u32>(var_0.c, 4294967295u)) | 1u)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1209f, _wgslsmith_div_f32(-1442f, -448f), 1f, -1922f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-755f, -1953f, 1000f, -729f)))), !global0[_wgslsmith_index_u32(~0u, 26u)])), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1259f, 451f, -582f, -811f)))))))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -116f), _wgslsmith_f_op_f32(f32(-1f) * -758f), -1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-315f * -556f) + _wgslsmith_f_op_f32(floor(615f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(244f)), _wgslsmith_f_op_f32(f32(-1f) * -1931f)), arg_1.x))));
    global2 = array<Struct_2, 20>();
    let var_1 = 18511i;
    var var_2 = Struct_1(true, vec4<i32>(1i >> (u_input.c % 32u), _wgslsmith_mod_i32(min(global1[_wgslsmith_index_u32(34946u, 9u)] >> (arg_0.x % 32u), 10778i), -firstTrailingBit(4581i)), 12936i, global1[_wgslsmith_index_u32(max(~firstLeadingBit(arg_0.x), arg_0.x), 9u)]), _wgslsmith_mod_u32(u_input.c, ~arg_0.x), vec2<i32>(-23295i, ~(-2147483647i)), !vec4<bool>(false, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(8921u, u_input.c) | _wgslsmith_mult_u32(u_input.c, 4294967295u), 26u)], global0[_wgslsmith_index_u32(0u, 26u)], all(!arg_1.zyx)));
    global1 = array<i32, 9>();
    return Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~26359u, ~reverseBits(arg_0.x)), min(firstTrailingBit(vec2<u32>(1u, u_input.c)) << (arg_0.zw % vec2<u32>(32u)), arg_0.wy | ~vec2<u32>(76881u, 0u))), 20u)], u_input.b.yyy ^ var_2.b.zyx, select(arg_1, !(!vec4<bool>(false, false, var_2.a, true)), arg_1));
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: bool) -> u32 {
    let var_0 = vec3<i32>(-1i) * -vec3<i32>(1i, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 101915u) | vec2<u32>(16670u, u_input.c), ~vec2<u32>(u_input.c, arg_0)), 9u)], countOneBits(min(global1[_wgslsmith_index_u32(30601u, 9u)], -7830i)));
    let var_1 = func_4(~vec4<u32>(_wgslsmith_add_u32(min(16160u, arg_0), arg_0), func_2(vec2<f32>(511f, -199f), global1[_wgslsmith_index_u32(1u, 9u)] != u_input.d), 4787u, func_3(Struct_3(global2[_wgslsmith_index_u32(36383u, 20u)], var_0, vec4<bool>(arg_1.x, true, global0[_wgslsmith_index_u32(u_input.c, 26u)], arg_1.x)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 1u, u_input.c), vec3<u32>(18059u, 4294967295u, 56361u)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, var_0.x, var_0.x), vec3<i32>(global1[_wgslsmith_index_u32(arg_0, 9u)], 0i, -3118i)))), vec4<bool>(true | select(false, arg_2 || arg_2, false), any(!select(arg_1.yxy, arg_1.xwy, vec3<bool>(arg_2, false, false))), arg_2, all(arg_1.zxw)));
    return ~_wgslsmith_dot_vec4_u32(~(~max(vec4<u32>(4294967295u, arg_0, arg_0, arg_0), vec4<u32>(63842u, arg_0, 39151u, arg_0))), firstTrailingBit(vec4<u32>(min(u_input.c, 6795u), ~22568u, 0u & u_input.c, u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_u32(min(10274u, _wgslsmith_div_u32(min(func_1(u_input.c, vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 26u)], global0[_wgslsmith_index_u32(19272u, 26u)], false), true), 47015u), u_input.c)), 0u);
    let var_1 = _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, _wgslsmith_dot_vec4_u32(~vec4<u32>(28618u, u_input.c, 58956u, 27033u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 0u, 26740u, 0u), vec4<u32>(4294967295u, u_input.c, 3657u, u_input.c))), 4294967295u, ~abs(u_input.c)), _wgslsmith_add_vec4_u32(~(~vec4<u32>(u_input.c, 50489u, 14653u, u_input.c)), vec4<u32>(u_input.c, ~(~46932u), u_input.c >> (_wgslsmith_div_u32(u_input.c, 0u) % 32u), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(274f, 263f)), !global0[_wgslsmith_index_u32(4294967295u, 26u)]))));
    var var_2 = _wgslsmith_sub_vec2_u32(~vec2<u32>(~u_input.c, func_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1416f, -1000f))), false)), firstLeadingBit(reverseBits(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.c), vec2<u32>(90275u, 31482u)), vec2<u32>(1u, 19735u) & vec2<u32>(u_input.c, var_1)))));
    let var_3 = min(u_input.b.x, abs(u_input.d));
    global2 = array<Struct_2, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-622f)) - _wgslsmith_f_op_f32(ceil(-132f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1499f))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -589f), -1264f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1442f - _wgslsmith_f_op_f32(811f * 179f)), 338f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(206f))))));
}

