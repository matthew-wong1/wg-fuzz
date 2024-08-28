struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 26>;

var<private> global1: vec3<i32> = vec3<i32>(-17250i, i32(-2147483648), 1i);

var<private> global2: array<vec2<i32>, 31>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_4, arg_3: bool) -> i32 {
    global1 = select(u_input.b.wwz, ~(~vec3<i32>(~(-1i), 72214i, -34606i)), !(!select(select(vec3<bool>(true, true, true), vec3<bool>(arg_2.b.b, arg_1.b, arg_3), arg_3), vec3<bool>(false, arg_3, arg_2.a.b), arg_2.a.b)));
    global1 = u_input.b.wwx;
    var var_0 = Struct_2(arg_1, _wgslsmith_dot_vec2_i32(firstTrailingBit(max(-global1.zz, vec2<i32>(-45910i, 53690i))), _wgslsmith_add_vec2_i32((vec2<i32>(global1.x, 28989i) >> (arg_2.c.b.c.xx % vec2<u32>(32u))) << (~vec2<u32>(arg_2.c.a.c.x, 4294967295u) % vec2<u32>(32u)), ~vec2<i32>(global1.x, 1i))), arg_2.c.a.c);
    let var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2384f, _wgslsmith_f_op_f32(-var_0.a.a.x)) * _wgslsmith_f_op_vec2_f32(-arg_2.b.a.yz)));
    global2 = array<vec2<i32>, 31>();
    return countOneBits(-21830i & (_wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, global1.x, u_input.a), u_input.b.yyw) ^ select(-1i, var_0.b, false)));
}

fn func_2() -> bool {
    global1 = vec3<i32>(-6998i, reverseBits(_wgslsmith_dot_vec2_i32(u_input.b.wy, vec2<i32>(global1.x, func_3(global1.x, Struct_1(vec4<f32>(409f, 1389f, -452f, 1048f), false, -731f), Struct_4(Struct_1(vec4<f32>(-1452f, 370f, -842f, 427f), false, -832f), Struct_1(vec4<f32>(193f, -471f, -389f, -555f), false, 734f), Struct_3(Struct_2(Struct_1(vec4<f32>(-746f, 111f, 260f, 362f), false, 1625f), global1.x, vec3<u32>(1u, 1u, 1u)), Struct_2(Struct_1(vec4<f32>(-286f, 645f, -512f, 877f), true, -360f), global1.x, vec3<u32>(1u, 17768u, 28796u)))), true)))), _wgslsmith_sub_i32(1i, global1.x << (_wgslsmith_add_u32(61517u, 1u) % 32u)) >> (~1u % 32u));
    var var_0 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(floor(-1906f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1465f, -647f)))) - -1000f)));
    let var_1 = reverseBits(_wgslsmith_clamp_vec2_u32(reverseBits(~(~global0[_wgslsmith_index_u32(0u, 26u)])), select(reverseBits(vec2<u32>(48193u, 75005u)) | global0[_wgslsmith_index_u32(1u, 26u)], vec2<u32>(1u, 0u), false || select(false, true, true)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 49691u) << (_wgslsmith_mod_vec2_u32(global0[_wgslsmith_index_u32(80823u, 26u)], global0[_wgslsmith_index_u32(55780u, 26u)]) % vec2<u32>(32u)), global0[_wgslsmith_index_u32(max(firstLeadingBit(4294967295u), abs(34811u)), 26u)]), 26u)]));
    return u_input.a < -12362i;
}

fn func_1() -> vec4<bool> {
    var var_0 = Struct_3(Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-251f + -609f), _wgslsmith_f_op_f32(1241f * 662f), -1544f, _wgslsmith_f_op_f32(sign(1000f))), func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-661f, 1157f)))), u_input.a, select(firstTrailingBit(vec3<u32>(1u, 1u, 1u)), vec3<u32>(_wgslsmith_mod_u32(1u, 7645u), 1u, ~4294967295u), all(vec4<bool>(false, true, false, true)))), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f))), false, 1284f), _wgslsmith_add_i32(1i, -1769i), _wgslsmith_mult_vec3_u32(~(~vec3<u32>(91953u, 1u, 0u)), vec3<u32>(abs(0u), abs(36364u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 62659u), vec2<u32>(44343u, 1u))))));
    let var_1 = vec3<u32>(var_0.b.c.x, 0u >> (~var_0.a.c.x % 32u), var_0.b.c.x);
    var var_2 = false;
    var var_3 = true;
    let var_4 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_0.a.a.a)) + _wgslsmith_div_vec4_f32(var_0.b.a.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(-439f, var_0.a.a.c, 299f, -1465f) + vec4<f32>(-1626f, var_0.b.a.a.x, var_0.b.a.a.x, 126f)))), var_0.b.a.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b.a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-263f)))))), var_0.b.a, Struct_3(Struct_2(var_0.a.a, -1i, ~vec3<u32>(var_0.a.c.x, 0u, var_1.x)), var_0.b));
    return select(select(!(!select(vec4<bool>(false, var_4.a.b, false, true), vec4<bool>(false, var_4.a.b, true, var_0.b.a.b), var_0.a.a.b)), select(!select(vec4<bool>(false, var_0.b.a.b, var_4.c.b.a.b, false), vec4<bool>(var_0.a.a.b, false, true, var_0.a.a.b), true), select(select(vec4<bool>(var_4.a.b, var_4.a.b, true, var_4.c.b.a.b), vec4<bool>(true, var_0.a.a.b, true, true), var_0.b.a.b), !vec4<bool>(var_0.b.a.b, var_4.c.a.a.b, true, var_0.a.a.b), !vec4<bool>(true, false, var_0.b.a.b, var_0.a.a.b)), true), select(!select(vec4<bool>(false, var_4.b.b, true, var_4.a.b), vec4<bool>(var_4.b.b, var_4.a.b, true, var_4.c.a.a.b), true), !vec4<bool>(false, var_0.a.a.b, false, false), !select(vec4<bool>(var_0.a.a.b, var_0.a.a.b, var_4.b.b, true), vec4<bool>(var_4.a.b, var_4.c.b.a.b, var_4.b.b, false), false))), !(!vec4<bool>(!var_0.a.a.b, !var_0.b.a.b, var_0.b.a.b && false, var_0.b.a.b)), false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 26>();
    var var_0 = all(func_1()) & !select(all(func_1().xyw), false, ~(-40551i) < firstLeadingBit(u_input.b.x));
    global1 = -select(_wgslsmith_mod_vec3_i32(vec3<i32>(i32(-1i) * -1004i, -55981i, u_input.b.x & global1.x), u_input.b.xzz), vec3<i32>(firstTrailingBit(-u_input.a), -42747i, i32(-1i) * -8275i), vec3<bool>(true, false, any(func_1().www)));
    let var_1 = firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(min(~62893u, firstTrailingBit(37961u)), 65237u >> ((0u << (1u % 32u)) % 32u), firstLeadingBit(reverseBits(4924u)), ~14809u), vec4<u32>(_wgslsmith_dot_vec2_u32(~global0[_wgslsmith_index_u32(1u, 26u)], vec2<u32>(1u, 0u)), 4294967295u, 1u, ~1u)));
    global2 = array<vec2<i32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 4294967295u, var_1.x), vec3<u32>(4294967295u, var_1.x, 1u))), ~reverseBits(~var_1.x)), var_1.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1111f, 536f)))) * _wgslsmith_f_op_f32(f32(-1f) * -1141f)), -381f, _wgslsmith_f_op_f32(f32(-1f) * -2099f)));
}

