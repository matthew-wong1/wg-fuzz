struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 5> = array<vec4<i32>, 5>(vec4<i32>(1i, 316i, 2953i, 0i), vec4<i32>(0i, 15023i, 2147483647i, -31728i), vec4<i32>(-1i, -48823i, -35384i, -1i), vec4<i32>(1i, -6974i, -16244i, -15428i), vec4<i32>(1i, -1i, 25654i, 0i));

var<private> global1: vec4<i32> = vec4<i32>(22785i, 2147483647i, -19563i, 47060i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: i32) -> i32 {
    var var_0 = !(max(u_input.d, arg_0) > 1i);
    global1 = _wgslsmith_div_vec4_i32(vec4<i32>(0i >> (~(~u_input.b.x) % 32u), select(~(-42123i), _wgslsmith_div_i32(arg_0, global1.x), true), _wgslsmith_add_i32(_wgslsmith_sub_i32(arg_0, _wgslsmith_mod_i32(arg_0, -1i)), ~(~global1.x)), arg_0), -global0[_wgslsmith_index_u32(u_input.b.x, 5u)]);
    global0 = array<vec4<i32>, 5>();
    let var_1 = -arg_0;
    let var_2 = _wgslsmith_f_op_f32(-399f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(384f)) + _wgslsmith_f_op_f32(abs(136f))))));
    return u_input.d;
}

fn func_3(arg_0: bool, arg_1: vec3<u32>) -> f32 {
    global0 = array<vec4<i32>, 5>();
    let var_0 = u_input.c;
    global0 = array<vec4<i32>, 5>();
    global1 = -vec4<i32>(u_input.d, _wgslsmith_div_i32(abs(-29881i), _wgslsmith_dot_vec3_i32(abs(global1.wyx), firstTrailingBit(vec3<i32>(0i, u_input.d, 1i)))), i32(-1i) * -u_input.d, -13659i);
    let var_1 = Struct_2(Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 87990u, 13274u) & _wgslsmith_mult_vec4_u32(vec4<u32>(116450u, 0u, 1u, 4294967295u), vec4<u32>(u_input.a, arg_1.x, u_input.b.x, 1u)), abs(firstLeadingBit(vec4<u32>(arg_1.x, 4294967295u, arg_1.x, 1u)))), 5u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-481f, _wgslsmith_f_op_f32(select(-1040f, 1423f, arg_0))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-400f, -160f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(767f, 155f)), vec2<bool>(true, true))))), Struct_1(~vec4<i32>(-45096i, u_input.d, reverseBits(var_0), var_0 & -40325i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-110f)))) + 513f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(526f, 865f)))))), select(vec4<u32>(max(arg_1.x, 0u >> (arg_1.x % 32u)), arg_1.x, 18370u, _wgslsmith_sub_u32(~1u, arg_1.x)), vec4<u32>(4294967295u, 1u, 4294967295u, _wgslsmith_mod_u32(u_input.b.x, 0u)) & _wgslsmith_sub_vec4_u32(~vec4<u32>(40977u, u_input.b.x, arg_1.x, u_input.b.x), vec4<u32>(1u, 1u, u_input.a, 40058u)), vec4<bool>((arg_0 || arg_0) & true, _wgslsmith_f_op_f32(trunc(-1000f)) != _wgslsmith_f_op_f32(step(1117f, -1004f)), any(vec4<bool>(arg_0, false, arg_0, false)), arg_0)));
    return 984f;
}

fn func_1() -> vec4<f32> {
    let var_0 = true;
    global1 = vec4<i32>(-2147483647i, 8255i, func_2(-1i), -u_input.c);
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(316f, 724f), _wgslsmith_f_op_f32(sign(901f)), 1f, -1039f))) * vec4<f32>(_wgslsmith_f_op_f32(func_3(!var_0, ~vec3<u32>(4294967295u, u_input.b.x, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -1000f))), 1000f, _wgslsmith_f_op_f32(min(613f, _wgslsmith_f_op_f32(step(402f, -400f)))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.a.zwx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.a.x, 535f, -291f))) + _wgslsmith_f_op_vec3_f32(min(var_1.a.ywz, _wgslsmith_f_op_vec3_f32(-var_1.a.yxz))))));
    var var_3 = Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.a, 5u)], -820f, vec2<f32>(_wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(-1624f - var_2.x)), _wgslsmith_f_op_f32(-102f + _wgslsmith_f_op_f32(floor(266f))))), Struct_1(vec4<i32>(max(firstLeadingBit(u_input.d), ~(-9732i)), reverseBits(_wgslsmith_div_i32(-1i, -1i)), 2147483647i, ~global1.x), _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_vec2_f32(step(var_2.zx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.zy))))), vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), select(u_input.b.xy, u_input.b.xy, false)), 0u, ~select(u_input.b.x, ~4959u, all(vec4<bool>(var_0, var_0, false, false))), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, 4294967295u), u_input.b))));
    return _wgslsmith_f_op_vec4_f32(var_1.a - _wgslsmith_f_op_vec4_f32(var_1.a - var_1.a));
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    let var_0 = arg_0.a.x;
    global1 = vec4<i32>(-(47473i << (u_input.b.x % 32u)), min(_wgslsmith_clamp_i32(global1.x, ~u_input.c, firstLeadingBit(18812i)), -u_input.d | u_input.c), global1.x, ~global1.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0));
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, _wgslsmith_f_op_f32(step(1534f, var_1)), 589f)) + _wgslsmith_f_op_vec4_f32(func_1()).zzz));
    return Struct_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(699f, var_1, -218f, -464f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(453f, 1000f, 1180f, -1240f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-349f, _wgslsmith_f_op_f32(sign(1780f)), var_1, 1450f) - arg_0.a))));
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: Struct_4, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_add_i32(-8773i, i32(-1i) * -global1.x);
    global1 = -(select(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, 0i, global1.x, arg_2.b.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(21483i, u_input.d, -1i, -13505i), vec4<i32>(2147483647i, arg_2.b.a.x, -34396i, 2147483647i))), reverseBits(firstTrailingBit(global0[_wgslsmith_index_u32(61100u, 5u)])), !(!vec4<bool>(arg_2.a, true, arg_2.a, true))) >> (~((vec4<u32>(4294967295u, u_input.b.x, u_input.a, 0u) >> (vec4<u32>(u_input.a, 0u, u_input.a, 18963u) % vec4<u32>(32u))) << (vec4<u32>(25809u, u_input.b.x, 4294967295u, u_input.b.x) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var_0 = _wgslsmith_clamp_i32(11977i, func_2(28929i), u_input.d) ^ 2147483647i;
    let var_1 = func_4(arg_1);
    return Struct_1(~vec4<i32>(arg_2.b.a.x, _wgslsmith_dot_vec4_i32(arg_2.b.a, vec4<i32>(u_input.c, arg_2.b.a.x, 1i, 1i)) & ~global1.x, _wgslsmith_mult_i32(-32285i, i32(-1i) * -18001i), global1.x), func_4(func_4(func_4(func_4(Struct_3(var_1.a))))).a.x, arg_2.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(i32(-1i) * -25964i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-58077i, -60196i, select(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2441i, -48192i, -38043i), vec4<i32>(40340i, -9651i, u_input.d, global1.x)), min(-2147483647i, -2147483647i), true)), -global1.x), firstLeadingBit(global1.x), global1.x);
    let var_1 = false;
    let var_2 = 210f;
    let var_3 = u_input.a;
    let var_4 = func_5(_wgslsmith_f_op_f32(-1026f + -350f), func_4(Struct_3(_wgslsmith_f_op_vec4_f32(func_1()))), Struct_4(!any(vec4<bool>(false, false, var_1, var_1)), Struct_1(global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(u_input.b.yz, vec2<u32>(0u, 4294967295u))), 5u)], var_2, vec2<f32>(_wgslsmith_f_op_f32(trunc(-733f)), var_2))), select(!(!select(vec2<bool>(var_1, true), vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1))), vec2<bool>(true, !var_1), !var_1));
    var var_5 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2, 747f, var_4.b), vec3<f32>(190f, 297f, var_4.b))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2, 1268f, var_4.c.x), vec3<f32>(var_2, -617f, var_4.b), vec3<bool>(var_1, true, var_1))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_4.b, var_4.b) * vec3<f32>(var_2, 144f, var_2)))) + vec3<f32>(_wgslsmith_f_op_vec4_f32(func_1()).x, _wgslsmith_f_op_f32(round(1425f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2, 1898f)))))));
    let var_6 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_add_u32(0u, reverseBits(u_input.b.x)), max(15206u, 64907u)), 5u)], var_4.c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_5.zy + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1083f, var_4.b) * vec2<f32>(var_4.b, var_5.x)))) - var_5.xx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_6.c.x)) + var_4.b));
}

