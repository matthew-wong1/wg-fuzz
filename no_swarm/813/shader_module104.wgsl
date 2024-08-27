struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

var<private> global1: bool;

var<private> global2: array<vec4<i32>, 8> = array<vec4<i32>, 8>(vec4<i32>(1738i, -34430i, 1i, 4479i), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), 10866i), vec4<i32>(2147483647i, 63951i, 2147483647i, -32314i), vec4<i32>(0i, 60053i, 2147483647i, -65109i), vec4<i32>(-28250i, 20671i, i32(-2147483648), 2147483647i), vec4<i32>(-19596i, -6092i, -21714i, -61200i), vec4<i32>(1i, 102045i, -6090i, 2147483647i), vec4<i32>(-106796i, 22216i, -1i, -1i));

var<private> global3: Struct_1 = Struct_1(true, false, vec3<f32>(-1670f, 1517f, 392f), i32(-2147483648));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: Struct_3) -> u32 {
    global2 = array<vec4<i32>, 8>();
    var var_0 = 68272u & arg_0.b.b.a;
    let var_1 = arg_0.a;
    global1 = false;
    let var_2 = arg_1.yy;
    return _wgslsmith_div_u32(countOneBits(~arg_2.b.a), var_1.x);
}

fn func_3(arg_0: f32) -> i32 {
    global2 = array<vec4<i32>, 8>();
    let var_0 = Struct_4(Struct_2(~_wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<bool>(global3.a, false)), vec2<u32>(40757u, 1u)), Struct_1(select(any(vec2<bool>(false, global3.a)), !global3.b, !global3.a), !global3.b & false, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.c.x, 1769f, arg_0), vec3<f32>(arg_0, arg_0, arg_0), global3.d == 21507i)), _wgslsmith_clamp_i32(-5711i, global3.d, i32(-1i) * -52248i)), global3.c.xx), !(!all(vec3<bool>(global3.b, true, global3.a))), -min(_wgslsmith_clamp_vec4_i32(vec4<i32>(global3.d, -952i, 53525i, u_input.a), select(vec4<i32>(u_input.a, -17134i, -52652i, 2147483647i), global2[_wgslsmith_index_u32(4294967295u, 8u)], vec4<bool>(global3.a, true, global3.a, true)), max(vec4<i32>(2147483647i, global3.d, 2147483647i, -4829i), vec4<i32>(44678i, 2147483647i, 2147483647i, 2147483647i))), firstTrailingBit(-global2[_wgslsmith_index_u32(13605u, 8u)])), u_input.a, min(-18799i, global3.d));
    global3 = var_0.a.b;
    var var_1 = abs(select(-48545i, global3.d, !global3.a) & -2147483647i);
    let var_2 = Struct_3(_wgslsmith_div_vec2_f32(var_0.a.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(min(574f, var_0.a.b.c.x))))), var_0.a);
    return -1i;
}

fn func_2() -> u32 {
    let var_0 = all(select(vec4<bool>(!all(vec2<bool>(global3.b, global3.a)), global3.b, global3.b, global3.a), select(!(!vec4<bool>(false, false, global3.b, global3.b)), !select(vec4<bool>(global3.a, false, global3.a, true), vec4<bool>(true, global3.b, true, true), vec4<bool>(global3.a, true, global3.b, false)), select(global3.b, true, !global3.b)), vec4<bool>(true, false, any(!vec3<bool>(global3.b, global3.a, global3.a)), !global3.a)));
    var var_1 = var_0;
    var var_2 = ~(u_input.a | _wgslsmith_add_i32(-global3.d, func_3(_wgslsmith_f_op_f32(-183f - global3.c.x))));
    var var_3 = global3.c;
    var_2 = u_input.a;
    return _wgslsmith_dot_vec4_u32(~vec4<u32>(~18894u, 1u, 0u, ~0u), ~(~max(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(0u, 4294967295u, 10644u, 20124u), vec4<u32>(5597u, 3560u, 4294967295u, 0u), vec4<bool>(global3.b, false, true, var_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true, !(-72381i >= global3.d) & false, global3.c, -38696i);
    var var_1 = global2[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(~reverseBits(6486u), _wgslsmith_mult_u32(func_1(Struct_5(vec2<u32>(0u, 14301u), Struct_3(global3.c.zz, Struct_2(4294967295u, var_0, global3.c.yy))), vec4<bool>(var_0.b, var_0.b, global3.b, false), Struct_3(global3.c.xz, Struct_2(59294u, Struct_1(var_0.b, var_0.b, global3.c, global3.d), var_0.c.zz))), ~4294967295u), ~max(0u, 0u)) << (~func_2() % 32u)), 8u)];
    let var_2 = Struct_2(abs(firstLeadingBit(~42813u) | ~func_2()), var_0, vec2<f32>(global3.c.x, 402f));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, var_2.c.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.c.x))), -403f)));
    let var_4 = 2345f;
    var_1 = firstTrailingBit(-(vec4<i32>(var_2.b.d, countOneBits(global3.d), ~global3.d, _wgslsmith_mod_i32(u_input.a, u_input.a)) << ((~vec4<u32>(4294967295u, 10800u, 28867u, 1u) ^ _wgslsmith_add_vec4_u32(vec4<u32>(var_2.a, var_2.a, var_2.a, var_2.a), vec4<u32>(1u, var_2.a, var_2.a, 480u))) % vec4<u32>(32u))));
    var_1 = vec4<i32>(abs(_wgslsmith_mod_i32(_wgslsmith_div_i32(var_2.b.d, -1i), var_1.x)), u_input.a << (abs(~abs(var_2.a)) % 32u), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(-1i, var_1.x) ^ var_1.zy), vec2<i32>(global3.d, 1i), vec2<i32>(firstLeadingBit(-1i), -1i)), countOneBits(abs(-vec2<i32>(var_0.d, -4882i)))), global3.d);
    var var_5 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(var_2.a, var_2.a), vec2<u32>(var_2.a, var_2.a), vec3<u32>(4294967295u, _wgslsmith_div_u32(~max(var_2.a, 4294967295u), ~(~var_2.a)), reverseBits(_wgslsmith_sub_u32(52033u, min(4294967295u, 1u)))), _wgslsmith_f_op_vec4_f32(-var_3), ~var_1.yxw);
}

