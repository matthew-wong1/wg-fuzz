struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<f32>(1106f, -448f, 632f));

var<private> global1: array<f32, 7> = array<f32, 7>(-794f, -689f, 236f, -769f, 844f, 661f, -560f);

var<private> global2: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(Struct_2(vec3<f32>(-156f, 1261f, 996f)), 2147483647i, Struct_3(vec4<i32>(2147483647i, 0i, 1i, 9572i), 0u, Struct_2(vec3<f32>(-300f, -593f, -1346f)), false)), Struct_4(Struct_2(vec3<f32>(-162f, -763f, -165f)), -1i, Struct_3(vec4<i32>(-1i, -1i, 1i, 9742i), 62477u, Struct_2(vec3<f32>(-877f, -627f, -953f)), false)), Struct_4(Struct_2(vec3<f32>(-567f, -865f, 293f)), -16190i, Struct_3(vec4<i32>(-1i, -55659i, -22782i, 0i), 9072u, Struct_2(vec3<f32>(-461f, 263f, -1026f)), false)), Struct_4(Struct_2(vec3<f32>(383f, 2599f, 1128f)), 0i, Struct_3(vec4<i32>(-18017i, 2147483647i, 2147483647i, -1i), 1u, Struct_2(vec3<f32>(-399f, -1452f, -1523f)), false)), Struct_4(Struct_2(vec3<f32>(-832f, -911f, 1129f)), -54047i, Struct_3(vec4<i32>(2i, 18505i, 1705i, -1i), 45794u, Struct_2(vec3<f32>(-104f, 531f, -1000f)), false)), Struct_4(Struct_2(vec3<f32>(121f, 242f, 769f)), 0i, Struct_3(vec4<i32>(-39296i, -1i, 18471i, 34229i), 1u, Struct_2(vec3<f32>(153f, 2406f, -886f)), true)), Struct_4(Struct_2(vec3<f32>(798f, 1000f, -255f)), -1i, Struct_3(vec4<i32>(10812i, 0i, 20559i, 5215i), 0u, Struct_2(vec3<f32>(-594f, -171f, -109f)), false)), Struct_4(Struct_2(vec3<f32>(-1514f, 599f, 843f)), 36815i, Struct_3(vec4<i32>(51979i, -31267i, 1i, i32(-2147483648)), 20975u, Struct_2(vec3<f32>(-896f, -601f, 1456f)), true)), Struct_4(Struct_2(vec3<f32>(-426f, 611f, -123f)), -68922i, Struct_3(vec4<i32>(76698i, 1i, 2147483647i, -5649i), 29880u, Struct_2(vec3<f32>(-1152f, -527f, -499f)), false)), Struct_4(Struct_2(vec3<f32>(-231f, -1437f, 443f)), 1i, Struct_3(vec4<i32>(-35459i, 6948i, -1i, -32260i), 1u, Struct_2(vec3<f32>(-1696f, 1243f, -902f)), true)));

var<private> global3: bool;

var<private> global4: array<Struct_2, 18>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec4<bool> {
    var var_0 = vec2<i32>(u_input.a, u_input.e.x);
    var var_1 = u_input.a ^ firstLeadingBit(abs(countOneBits(max(24458i, 1i))));
    var var_2 = -u_input.e.xxz << (vec3<u32>(~abs(4609u), _wgslsmith_mult_u32(11657u, u_input.d), max(u_input.c.x, 21485u)) % vec3<u32>(32u));
    global2 = array<Struct_4, 10>();
    let var_3 = Struct_1(1u, 1361i, 20847u, select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(true, false)), any(vec2<bool>(true, true)), false, true), all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))));
    return var_3.d;
}

fn func_2(arg_0: u32, arg_1: Struct_4) -> vec4<bool> {
    global3 = arg_1.c.d;
    global4 = array<Struct_2, 18>();
    var var_0 = vec3<u32>(abs(~(arg_1.c.b << (countOneBits(22220u) % 32u))), 7861u >> (u_input.d % 32u), 1u);
    global2 = array<Struct_4, 10>();
    var var_1 = u_input.c.zzz;
    return func_3();
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec3<u32>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, 40021u), _wgslsmith_sub_u32(abs(u_input.c.x) | arg_2.x, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.c.x, 0u), 0u, 34828u))), _wgslsmith_add_i32(u_input.b.x, -39084i) << (u_input.c.x % 32u), ~4294967295u, select(select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), true), true), select(func_2(u_input.c.x, Struct_4(arg_0, arg_1.x, Struct_3(vec4<i32>(-2579i, arg_1.x, u_input.a, arg_1.x), arg_2.x, arg_0, false))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), func_2(16890u, Struct_4(global4[_wgslsmith_index_u32(4294967295u, 18u)], u_input.b.x, Struct_3(u_input.e, 71459u, global4[_wgslsmith_index_u32(50690u, 18u)], true)))), vec4<bool>(false, true, _wgslsmith_f_op_f32(-200f * arg_0.a.x) != global0.a.x, -64175i <= arg_1.x), !func_3()));
    var var_1 = Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(ceil(1777f)), -1016f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1[_wgslsmith_index_u32(u_input.d, 7u)], -294f, global0.a.x)))))), _wgslsmith_sub_i32(select(-2147483647i, -56536i, var_0.d.x), u_input.b.x), Struct_3(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -40266i, var_0.b, -24394i), u_input.e), -u_input.e), _wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(u_input.c.x, var_0.c, 1u)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, arg_2.x, 4294967295u), vec3<u32>(1u, arg_2.x, 10955u)) >> (select(arg_2, vec3<u32>(arg_2.x, 1u, 34162u), vec3<bool>(true, var_0.d.x, true)) % vec3<u32>(32u))), Struct_2(global0.a), func_3().x));
    global0 = global4[_wgslsmith_index_u32(4294967295u, 18u)];
    var_1 = global2[_wgslsmith_index_u32(u_input.d, 10u)];
    var var_2 = firstLeadingBit(~countOneBits((vec4<i32>(16010i, u_input.e.x, var_0.b, var_1.b) | vec4<i32>(u_input.e.x, arg_1.x, var_1.c.a.x, var_1.b)) ^ _wgslsmith_mod_vec4_i32(var_1.c.a, u_input.e)));
    return abs(1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(true, false), vec2<bool>(select(func_1(Struct_2(vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 7u)], -1501f, global1[_wgslsmith_index_u32(u_input.c.x, 7u)])), u_input.e.yxz, u_input.c.zxz), 57461u, any(vec4<bool>(true, true, false, true))) < (max(0u, u_input.d) | u_input.d), false), vec2<bool>(all(func_2(~42653u, Struct_4(Struct_2(vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 7u)], global0.a.x, global1[_wgslsmith_index_u32(1u, 7u)])), 0i, Struct_3(u_input.e, 1u, global4[_wgslsmith_index_u32(7671u, 18u)], true))).zxz), any(vec3<bool>(true, true, true))));
    var var_1 = !(!(var_0.x | select(var_0.x, var_0.x, all(vec4<bool>(false, true, var_0.x, var_0.x)))));
    global3 = !(!(!(!(!var_0.x))));
    global2 = array<Struct_4, 10>();
    var var_2 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(3642u, vec4<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-484f + 701f)), _wgslsmith_f_op_f32(f32(-1f) * -2475f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d, 7u)])), 568f), ~u_input.c.zyz);
}

