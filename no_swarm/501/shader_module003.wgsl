struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_3, 28>;

var<private> global2: array<bool, 32> = array<bool, 32>(true, true, false, true, true, false, true, true, false, false, false, false, false, false, true, false, true, true, false, false, true, true, true, true, false, false, true, true, false, false, true, false);

var<private> global3: vec3<bool> = vec3<bool>(false, true, false);

var<private> global4: Struct_3;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> f32 {
    var var_0 = arg_1.a;
    let var_1 = vec3<i32>(firstLeadingBit(18219i), _wgslsmith_add_i32((u_input.a.x ^ u_input.a.x) | ~arg_3, firstTrailingBit(u_input.d)), 1i);
    global3 = select(select(select(vec3<bool>(all(global4.a.ww), !var_0.a, global2[_wgslsmith_index_u32(37540u, 32u)]), select(select(vec3<bool>(true, true, global2[_wgslsmith_index_u32(23483u, 32u)]), vec3<bool>(global2[_wgslsmith_index_u32(arg_2.b, 32u)], var_0.a, true), arg_2.a), !global0.a.xxw, all(vec2<bool>(global2[_wgslsmith_index_u32(arg_2.b, 32u)], false))), (true | global0.a.x) && all(vec4<bool>(true, true, true, true))), global4.a.xxy, global0.a.ywz), select(select(select(vec3<bool>(true, arg_2.a, false), arg_0.a.zxw, !var_0.a), vec3<bool>(19081i <= u_input.d, true, global4.a.x), vec3<bool>(true, any(vec2<bool>(false, true)), var_0.a)), select(global0.a.xyz, select(select(global0.a.yxz, global4.a.zwz, false), vec3<bool>(true, true, true), !global4.a.x), !select(global4.a.xzw, vec3<bool>(false, false, global0.a.x), arg_1.a.a)), any(select(arg_0.a, vec4<bool>(global0.a.x, true, global2[_wgslsmith_index_u32(u_input.c, 32u)], global4.a.x), vec4<bool>(true, true, arg_1.a.a, arg_0.a.x))) && global3.x), global4.a.x);
    let var_2 = arg_2.b;
    global1 = array<Struct_3, 28>();
    return _wgslsmith_f_op_f32(floor(-420f));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> vec2<f32> {
    global1 = array<Struct_3, 28>();
    var var_0 = _wgslsmith_div_u32(1u, 23875u);
    global0 = Struct_3(!vec4<bool>(true, false, true && select(true, global0.a.x, true), select(true, true, all(vec4<bool>(false, arg_0.a.a, false, true)))));
    let var_1 = arg_2;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-121f, -645f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1756f + 579f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-939f * -169f), _wgslsmith_f_op_f32(990f * 798f), select(arg_0.a.a, global0.a.x, global3.x))))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(vec4<bool>(true, global3.x, true, arg_0.a.a)), Struct_2(arg_1.a, u_input.c), arg_1.a, var_1)))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-162f, -267f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-335f, -959f))))))) + vec2<f32>(_wgslsmith_f_op_f32(min(-281f, 575f)), var_2));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    let var_0 = select(global0.a, arg_0, false);
    global2 = array<bool, 32>();
    var var_1 = !(!select(vec3<bool>(arg_3.a, 43772u == arg_2.a.b, !global2[_wgslsmith_index_u32(arg_3.b, 32u)]), vec3<bool>(true, u_input.e == u_input.a.x, false), u_input.d < _wgslsmith_dot_vec2_i32(u_input.a.xz, u_input.b)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(arg_1.x)), _wgslsmith_f_op_f32(max(769f, 1323f)), -915f))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-101f + -1353f))), -578f, 1000f))));
    return var_2.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = max(vec2<i32>(-u_input.e, countOneBits(-40586i >> (arg_1.b % 32u))), u_input.a.zz & ~_wgslsmith_mult_vec2_i32(u_input.a.xx, u_input.b)) >> (vec2<u32>(firstTrailingBit(1u >> (arg_1.b % 32u)), ~1886u) % vec2<u32>(32u));
    var_0 = u_input.a.zz;
    let var_1 = vec2<bool>(false, any(vec4<bool>(arg_0.a, false, arg_1.a, -var_0.x <= u_input.b.x)));
    var var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1068f)) + -970f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(233f, -1000f)), -236f)), _wgslsmith_f_op_f32(func_4(global4.a, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-842f, 790f), _wgslsmith_f_op_vec2_f32(func_2(Struct_2(Struct_1(false, 4294967295u), 35289u), Struct_2(Struct_1(var_1.x, arg_1.b), u_input.c), 2147483647i)), false)), Struct_2(arg_0, 1u), Struct_1(false | global4.a.x, ~arg_1.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(692f, -667f))))));
    var var_3 = Struct_3(vec4<bool>(true, select(select(2147483647i, 1i, var_1.x), var_0.x, false) < _wgslsmith_div_i32(322i, ~(-53316i)), all(vec3<bool>(false, true, any(vec3<bool>(global4.a.x, var_1.x, false)))), !var_1.x));
    return Struct_1(true, max(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(arg_1.b, u_input.c)), vec2<u32>(25935u, u_input.c)), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.b, arg_0.b, 35358u, 58099u), vec4<u32>(22337u, 9908u, 983u, 0u))) | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, min(arg_1.b, 43041u), max(0u, arg_0.b)), reverseBits(vec3<u32>(arg_0.b, 1u, arg_1.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(-247f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1401f) - -1938f))), -1269f);
    var_0 = vec3<f32>(-902f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, -657f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_0.x, -679f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -420f))))));
    let var_1 = func_1(Struct_1(any(!global4.a.yw), 1u), Struct_1(false, 68149u));
    let var_2 = u_input.a;
    global1 = array<Struct_3, 28>();
    global4 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.b, 1u), 28u)];
    var var_3 = -441f;
    var var_4 = select(~vec4<u32>(~u_input.c & select(8661u, 13897u, false), firstTrailingBit(select(43622u, 0u, true)), u_input.c, ~1u), abs(firstTrailingBit(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.c, 0u, u_input.c, 63901u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.b, u_input.c, 0u, u_input.c), vec4<u32>(4294967295u, var_1.b, u_input.c, u_input.c), vec4<u32>(0u, 51982u, var_1.b, 9121u)), firstTrailingBit(vec4<u32>(4294967295u, 43210u, var_1.b, u_input.c))))), select(select(select(global0.a, !vec4<bool>(false, true, false, global4.a.x), vec4<bool>(global0.a.x, global3.x, true, true)), vec4<bool>(global0.a.x, select(true, global2[_wgslsmith_index_u32(4294967295u, 32u)], false), all(global0.a), true), !vec4<bool>(true, true, var_1.a, global2[_wgslsmith_index_u32(u_input.c, 32u)])), global4.a, true));
    global3 = global4.a.yyy;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, abs(vec4<u32>(~0u, 14427u, ~var_4.x, 1u)), vec4<i32>(~u_input.b.x, _wgslsmith_div_i32(firstTrailingBit(var_2.x) >> (39948u % 32u), ~var_2.x), 0i, -2147483647i), ~(~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.b, 4294967295u, u_input.c), var_4.zwy), _wgslsmith_mod_vec3_u32(var_4.zyz, var_4.yyy))));
}

