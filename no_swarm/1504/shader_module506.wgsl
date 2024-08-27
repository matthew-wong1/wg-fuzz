struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: vec3<bool>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: f32;

var<private> global2: array<Struct_3, 3>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1625f, 1596f) + vec2<f32>(653f, -728f)), vec2<f32>(1074f, 1296f)) + vec2<f32>(1361f, _wgslsmith_f_op_f32(ceil(2342f)))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1025f)), _wgslsmith_f_op_f32(f32(-1f) * -931f)))));
    global0 = -2147483647i;
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2374f * 404f), var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1935f * -788f), 954f));
    let var_1 = Struct_1(vec4<i32>(-20678i | (_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -1i), vec2<i32>(1i, 1i)) >> (0u % 32u)), -1i, u_input.c, u_input.c), -1i, ~0u);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -1608f)), 1251f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.x)), var_0.x));
    return reverseBits(vec4<i32>(1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(7072i, u_input.b.x)), var_1.b), i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_1.a.yw, vec2<i32>(u_input.c, -1i)), vec2<i32>(2147483647i, 100869i)))) | min(var_1.a, ~abs(var_1.a));
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: vec3<i32>) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1018f, 302f, arg_0.x, -837f))))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_1, 145f, arg_0.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_1, arg_0.x, arg_1) * vec4<f32>(arg_1, 182f, -240f, -492f))))), 1i, !vec3<bool>(!select(true, false, true), select(all(vec2<bool>(false, false)), any(vec4<bool>(false, false, true, false)), false), true), Struct_1(_wgslsmith_sub_vec4_i32(~(~vec4<i32>(-9509i, u_input.c, 17888i, 4769i)), ~func_3(vec4<bool>(false, true, true, false))), -countOneBits(-17117i), ~(~u_input.a)), u_input.d == abs(54171u));
    global1 = arg_0.x;
    let var_1 = global2[_wgslsmith_index_u32(0u, 3u)];
    let var_2 = global2[_wgslsmith_index_u32(~select(4294967295u, var_0.d.c, 1i < abs(var_1.a.a.x)) >> (58768u % 32u), 3u)];
    global0 = _wgslsmith_dot_vec4_i32(-(~var_2.d.a), reverseBits(var_1.d.a));
    return all(select(vec3<bool>(!(var_0.e && var_0.c.x), any(!vec4<bool>(false, var_0.c.x, false, false)), var_0.c.x), !(!vec3<bool>(var_0.e, false, var_0.c.x)), !(!(!vec3<bool>(var_0.e, var_0.c.x, false)))));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: Struct_3, arg_3: vec3<f32>) -> vec2<i32> {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) * arg_3.x);
    let var_0 = func_2(arg_3.zz, arg_3.x, ~arg_2.a.a.ywz);
    var var_1 = !(!vec2<bool>(any(!vec4<bool>(true, arg_1, var_0, var_0)), !arg_1 | any(vec3<bool>(true, false, var_0))));
    global0 = -2147483647i;
    global1 = _wgslsmith_f_op_f32(min(-2411f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(111f, _wgslsmith_f_op_f32(-arg_0)))));
    return vec2<i32>(57233i << (_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(arg_2.a.c, arg_2.a.c, 1u), 47444u, ~53562u), 34282u) % 32u), ~(~u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 26944i;
    var var_1 = _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, firstTrailingBit(0i)), _wgslsmith_div_vec2_i32(max(func_1(-877f, true, Struct_3(Struct_1(vec4<i32>(-2147483647i, -1i, u_input.b.x, u_input.c), u_input.b.x, u_input.e.x), 361f, 1000f, Struct_1(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), 1i, u_input.a)), vec3<f32>(170f, 470f, -294f)), countOneBits(u_input.b)), u_input.b)), -vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, -17592i, u_input.c), vec4<i32>(1i, 1i, u_input.c, -48708i)), u_input.b.x), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(u_input.b.x, 33910i, u_input.b.x, 2147483647i)), vec4<i32>(0i, -1i, u_input.c, u_input.c)) >> (countOneBits(~(vec4<u32>(u_input.a, 19944u, 0u, u_input.d) << (vec4<u32>(u_input.d, u_input.e.x, u_input.e.x, u_input.a) % vec4<u32>(32u)))) % vec4<u32>(32u)), 0i, _wgslsmith_add_vec3_i32(reverseBits(~(-vec3<i32>(-2147483647i, -55741i, var_1.x))), -firstTrailingBit(max(vec3<i32>(59190i, var_1.x, var_1.x), vec3<i32>(-2147483647i, 2147483647i, -25378i)))), -(~vec4<i32>(~var_1.x, _wgslsmith_dot_vec2_i32(u_input.b, u_input.b), -20385i, -27988i)), ~vec4<u32>(abs(_wgslsmith_mod_u32(47627u, u_input.d)), countOneBits(u_input.d), 0u, select(u_input.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(74772u, u_input.d, 1u), vec3<u32>(9107u, 4294967295u, 4294967295u)), true)));
}

