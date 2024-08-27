struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec2<f32>,
    d: Struct_3,
    e: i32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(Struct_1(2699i, vec3<u32>(0u, 0u, 0u), 3475u)), Struct_3(Struct_1(17031i, vec3<u32>(0u, 71402u, 1u), 0u)), Struct_3(Struct_1(1i, vec3<u32>(1u, 9080u, 0u), 78467u)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: i32, arg_3: Struct_2) -> u32 {
    global1 = array<Struct_3, 3>();
    let var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(~(-vec4<i32>(0i, arg_1, -1i, 51791i)), vec4<i32>(i32(-1i) * -28642i, firstLeadingBit(u_input.b.x), 321i, arg_2 & -28750i)) ^ -(~(-2147483647i)), min(_wgslsmith_mult_i32(u_input.b.x, -2088i), 0i));
    global1 = array<Struct_3, 3>();
    global0 = abs(arg_1);
    var var_1 = Struct_3(Struct_1(1i, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c ^ arg_0.x, 25099u, ~arg_0.x), vec3<u32>(4294967295u ^ arg_3.a.x, 29424u, u_input.c), select(~vec3<u32>(0u, arg_0.x, 4294967295u), firstLeadingBit(u_input.a.zxx), true)), 1u));
    return 14037u;
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_1, arg_3: vec2<f32>) -> i32 {
    let var_0 = Struct_4(Struct_2(~vec2<u32>(~arg_2.b.x, abs(46451u))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32((arg_2.b.x << (func_3(vec2<u32>(u_input.c, 24531u), 50535i, u_input.b.x, Struct_2(vec2<u32>(u_input.c, arg_2.b.x))) % 32u)) & 1u, arg_2.b.x), 3u)], arg_3, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(0u, ~u_input.c, ~abs(u_input.a.x), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(4294967295u, 0u, 32806u, arg_2.b.x) | vec4<u32>(u_input.a.x, u_input.a.x, 0u, 4294967295u)))), 3u)], arg_2.a);
    let var_1 = var_0.e;
    var var_2 = arg_3.x;
    let var_3 = select(select(!vec3<bool>(all(vec3<bool>(true, true, true)), true, true), !select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), select(vec3<bool>(false, arg_1 != _wgslsmith_f_op_f32(arg_1 + arg_1), _wgslsmith_div_i32(arg_2.a, var_0.e) < _wgslsmith_add_i32(-11949i, var_0.d.a.a)), vec3<bool>(-1228f < _wgslsmith_f_op_f32(-arg_3.x), any(vec4<bool>(true, true, false, false)), false), any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))), !vec3<bool>(var_0.c.x < 1118f, var_0.c.x > _wgslsmith_f_op_f32(-arg_3.x), false));
    global0 = 12546i;
    return 1i;
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: vec4<f32>) -> vec3<u32> {
    global0 = abs(abs(max(firstLeadingBit(38122i), arg_0)));
    let var_0 = Struct_2(_wgslsmith_sub_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec2_u32(arg_2.a.b.zz, vec2<u32>(107378u, 412u)), ~(~arg_2.a.c)), ~arg_2.a.b.yx | ~(~u_input.a.wy)));
    return vec3<u32>(arg_2.a.b.x, _wgslsmith_clamp_u32(~(~0u), ~(~arg_2.a.c) << ((_wgslsmith_dot_vec2_u32(var_0.a, vec2<u32>(var_0.a.x, u_input.c)) << (~u_input.c % 32u)) % 32u), ~((u_input.a.x & u_input.c) >> (max(var_0.a.x, 4294967295u) % 32u))), var_0.a.x);
}

fn func_1(arg_0: u32) -> vec2<u32> {
    var var_0 = Struct_1(u_input.b.x, u_input.a.yzy, _wgslsmith_div_u32(u_input.c, 106453u));
    var_0 = Struct_1(8256i, select(func_4(func_2(vec2<i32>(-48123i, 2147483647i), 2320f, Struct_1(18691i, u_input.a.xww, var_0.b.x), vec2<f32>(-197f, 1000f)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), Struct_3(Struct_1(u_input.b.x, vec3<u32>(var_0.c, var_0.c, 113406u), u_input.a.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2447f, -698f, 123f, -1297f), vec4<f32>(-470f, -2037f, 393f, -2107f)))) & (select(vec3<u32>(u_input.c, u_input.a.x, 0u), u_input.a.zxz, vec3<bool>(false, false, true)) >> (vec3<u32>(arg_0, 5044u, var_0.b.x) % vec3<u32>(32u))), var_0.b, !(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)))), 21177u);
    let var_1 = true;
    var var_2 = Struct_4(Struct_2(abs(func_4(~var_0.a, select(vec3<bool>(var_1, true, false), vec3<bool>(true, true, true), vec3<bool>(var_1, true, var_1)), Struct_3(Struct_1(0i, vec3<u32>(4294967295u, arg_0, 0u), arg_0)), _wgslsmith_div_vec4_f32(vec4<f32>(-1928f, 1290f, -234f, 1010f), vec4<f32>(-563f, 145f, 962f, 613f))).yz)), Struct_3(Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, var_0.a), u_input.b | vec2<i32>(-15996i, var_0.a)), var_0.b, ~arg_0)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-570f, -200f), vec2<f32>(208f, 821f), var_1))))))), Struct_3(Struct_1(u_input.b.x, abs(_wgslsmith_add_vec3_u32(u_input.a.wyz, u_input.a.yzy)), _wgslsmith_clamp_u32(53238u, min(var_0.b.x, arg_0), var_0.c))), -(~_wgslsmith_div_i32(-var_0.a, min(var_0.a, 3870i))));
    var_0 = Struct_1(~(~(-var_0.a)), vec3<u32>(~27048u, 24711u, 9360u), ~(4294967295u | u_input.a.x));
    return vec2<u32>(~u_input.a.x ^ abs(abs(11718u)), 4294967295u);
}

fn func_5(arg_0: vec4<i32>, arg_1: f32, arg_2: vec2<u32>, arg_3: u32) -> Struct_4 {
    let var_0 = ~(~80985u);
    global1 = array<Struct_3, 3>();
    var var_1 = ~abs(u_input.c);
    var_1 = ~45909u;
    var var_2 = vec4<u32>(u_input.a.x, ~u_input.c, 59809u, 48911u);
    return Struct_4(Struct_2(vec2<u32>(u_input.c, abs(~u_input.c))), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), 64299u), 1u), arg_2.x, var_2.x), 3u)], vec2<f32>(_wgslsmith_f_op_f32(trunc(1073f)), arg_1), global1[_wgslsmith_index_u32(max(arg_3, 1u), 3u)], -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a.zzy;
    let var_1 = select(_wgslsmith_sub_vec3_u32(~vec3<u32>(~4294967295u, ~4294967295u, var_0.x), var_0 >> (max(~var_0, vec3<u32>(u_input.c, var_0.x, 0u)) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(select(vec3<u32>(var_0.x, ~52747u, var_0.x << (var_0.x % 32u)), firstTrailingBit(_wgslsmith_div_vec3_u32(u_input.a.yyw, vec3<u32>(u_input.c, 21486u, u_input.c))), vec3<bool>(true, true, false)), countOneBits(min(~var_0, _wgslsmith_mod_vec3_u32(var_0, vec3<u32>(var_0.x, 57204u, var_0.x))))), all(vec2<bool>(true, false | all(vec3<bool>(false, false, true)))));
    var var_2 = func_5(vec4<i32>(u_input.b.x, _wgslsmith_add_i32(-588i, u_input.b.x), u_input.b.x, 1i) & ~(-firstTrailingBit(vec4<i32>(-1i, -2147483647i, 17316i, 2147483647i))), _wgslsmith_f_op_f32(select(913f, 687f, true)), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(func_1(u_input.a.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, var_0.x), var_1.yy, abs(vec2<u32>(93984u, 66981u)))), abs(~(~var_1.xz))), var_0.x);
    var var_3 = !(!select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(true, false, false)), true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-334f, var_2.c.x, var_2.c.x, 1182f) + vec4<f32>(var_2.c.x, 638f, 219f, -1792f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1746f, var_2.c.x, var_2.c.x, -213f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, var_2.c.x, var_2.c.x, var_2.c.x)), select(vec4<bool>(false, var_3.x, false, var_3.x), vec4<bool>(var_3.x, false, var_3.x, false), var_3.x))), select(!vec4<bool>(var_3.x, true, var_3.x, false), select(vec4<bool>(false, var_3.x, false, false), vec4<bool>(var_3.x, true, true, false), false), false || var_3.x))))), -1279f, vec2<i32>(var_2.e, _wgslsmith_clamp_i32(-(~var_2.e), -(~(-5117i)), var_2.d.a.a)), abs(-vec3<i32>(func_2(u_input.b, var_2.c.x, var_2.d.a, vec2<f32>(var_2.c.x, var_2.c.x)), var_2.d.a.a, -u_input.b.x)));
}

