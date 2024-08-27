struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-1i, 17184u);

var<private> global1: vec4<u32> = vec4<u32>(44456u, 26747u, 16613u, 4294967295u);

var<private> global2: array<Struct_1, 9>;

var<private> global3: bool;

var<private> global4: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec4<u32>(1u, 60390u, 59901u, 22489u), true), Struct_1(vec4<u32>(44020u, 1u, 14290u, 0u), false), Struct_1(vec4<u32>(5523u, 1u, 8381u, 4294967295u), true), Struct_1(vec4<u32>(18027u, 46691u, 0u, 4294967295u), true), Struct_1(vec4<u32>(11311u, 1u, 4294967295u, 31583u), false), Struct_1(vec4<u32>(1u, 1u, 113444u, 14506u), true), Struct_1(vec4<u32>(39615u, 0u, 20615u, 17661u), false), Struct_1(vec4<u32>(4294967295u, 38738u, 1u, 31317u), true), Struct_1(vec4<u32>(41878u, 1u, 4590u, 0u), false), Struct_1(vec4<u32>(41177u, 5531u, 26069u, 16073u), false));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    var var_0 = ~firstLeadingBit(u_input.c);
    let var_1 = global2[_wgslsmith_index_u32(global1.x, 9u)];
    let var_2 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c, ~2331u, 17691u), countOneBits(var_1.a)), ~arg_0.x, 4294967295u);
    let var_3 = ~(25367u & var_1.a.x);
    let var_4 = global4[_wgslsmith_index_u32(arg_0.x, 10u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-236f, -1771f)) - _wgslsmith_f_op_f32(trunc(-195f))))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: u32) -> u32 {
    let var_0 = !select(!(!select(vec2<bool>(arg_2.b, arg_2.b), vec2<bool>(arg_2.b, arg_2.b), vec2<bool>(arg_2.b, arg_2.b))), select(vec2<bool>(1026f >= arg_1.x, true), vec2<bool>(true, arg_2.b), _wgslsmith_f_op_f32(func_3(vec3<u32>(global0.b, global0.b, 37741u))) == -284f), vec2<bool>(true, true));
    global0 = Struct_2((_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, u_input.a.x, u_input.b, -1i), arg_0), select(global0.a, -32276i, arg_2.b)) & 0i) << (global1.x % 32u), 4294967295u);
    let var_1 = select(var_0.x, arg_2.b | (1u <= _wgslsmith_sub_u32(arg_2.a.x, 1u)), arg_1.x == arg_1.x) && (_wgslsmith_f_op_f32(-573f - arg_1.x) >= _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x + arg_1.x), -2096f)));
    let var_2 = Struct_1(arg_2.a, var_0.x);
    let var_3 = max(vec3<u32>(max(0u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(var_2.a, vec4<u32>(4294967295u, global0.b, u_input.c, 4294967295u)), vec4<u32>(u_input.c, 11318u, global1.x, 4294967295u))), arg_2.a.x, _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(arg_2.a.wxy, vec3<u32>(global1.x, global1.x, arg_3)), global1.yzz)), reverseBits(vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(var_2.a, vec4<u32>(4294967295u, arg_3, 20445u, 32615u) >> (vec4<u32>(27534u, 14819u, 4294967295u, global1.x) % vec4<u32>(32u))), _wgslsmith_clamp_u32(global1.x, 40009u, ~179344u))));
    return ~arg_3;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<u32>) -> u32 {
    global0 = Struct_2(-14007i, _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(87244u, 0u) & arg_2.x, global1.x), arg_1.b));
    let var_0 = 1000f;
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(f32(-1f) * -1242f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1681f, var_0)))), vec2<f32>(-2508f, _wgslsmith_f_op_f32(-var_0)))));
    global1 = arg_2 & arg_2;
    global4 = array<Struct_1, 10>();
    return ~(~(~arg_1.b));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> i32 {
    let var_0 = global2[_wgslsmith_index_u32(~func_4(Struct_2(~(~0i), ~_wgslsmith_mod_u32(5135u, global1.x)), Struct_2(_wgslsmith_clamp_i32(30628i, -1i, reverseBits(global0.a)), firstLeadingBit(func_2(vec4<i32>(-1i, u_input.a.x, -7077i, 37251i), vec3<f32>(arg_0.x, arg_0.x, arg_0.x), Struct_1(vec4<u32>(81974u, u_input.c, 39908u, arg_1.a.x), false), 53775u))), min(vec4<u32>(global1.x, u_input.c, global1.x, 4294967295u), arg_1.a) | vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, global0.b), global1.xx), ~arg_1.a.x, u_input.c, global1.x)), 9u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1676f, arg_0.x, arg_0.x, -2027f)))))));
    var var_2 = Struct_2(~(-2147483647i), u_input.c);
    var_2 = Struct_2(_wgslsmith_mod_i32(global0.a, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(1i, global0.a)), _wgslsmith_clamp_vec2_i32(u_input.a, reverseBits(u_input.a), _wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(global0.a, -24316i))))), firstLeadingBit(59922u));
    var var_3 = select(min(~(-vec4<i32>(global0.a, -23108i, u_input.b, 0i)), reverseBits(vec4<i32>(global0.a, u_input.a.x, u_input.a.x, -20634i))), vec4<i32>(~u_input.a.x, 0i, 4347i, select(u_input.a.x, var_2.a, false)) >> (abs(arg_1.a) % vec4<u32>(32u)), !select(!vec4<bool>(var_0.b, arg_1.b, true, true), vec4<bool>(arg_1.b, var_0.b, arg_1.b, true), select(vec4<bool>(var_0.b, false, true, true), vec4<bool>(false, arg_1.b, false, false), vec4<bool>(var_0.b, arg_1.b, var_0.b, arg_1.b)))) << (_wgslsmith_sub_vec4_u32(var_0.a, ~var_0.a) % vec4<u32>(32u));
    return ~u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 10>();
    var var_0 = _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, -12289i, 11214i) >> (vec3<u32>(global0.b, global0.b, 51824u) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(21338i, u_input.a.x, global0.a), vec3<i32>(global0.a, global0.a, -1i))), vec3<i32>(-32817i, func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-426f, -107f) * vec2<f32>(-376f, -528f)), Struct_1(vec4<u32>(1956u, 4401u, global0.b, global0.b), false)), 35826i)), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a, global0.a, 11436i, 0i), vec4<i32>(2147483647i, 2147483647i, -40653i, -21744i)), 1i), -21507i << (u_input.c % 32u), 0i), -vec3<i32>(~0i, ~2147483647i, u_input.a.x)), abs(min(vec3<i32>(~17860i, global0.a >> (5850u % 32u), _wgslsmith_mult_i32(global0.a, u_input.b)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, global0.a, global0.a), vec3<i32>(u_input.b, -1i, u_input.a.x), abs(vec3<i32>(2147483647i, 1i, u_input.b))))));
    var var_1 = any(!vec3<bool>(~u_input.c < 4294967295u, true, false));
    global1 = ~(~firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(49796u, global1.x, 1u, 17145u) | vec4<u32>(global1.x, 3294u, global0.b, 4294967295u), abs(vec4<u32>(287u, 68661u, global0.b, global1.x)))));
    var var_2 = global2[_wgslsmith_index_u32(44669u, 9u)];
    global3 = true;
    var_1 = any(select(vec2<bool>(true, false), !select(vec2<bool>(true, var_2.b), select(vec2<bool>(var_2.b, var_2.b), vec2<bool>(var_2.b, var_2.b), vec2<bool>(true, var_2.b)), !vec2<bool>(var_2.b, var_2.b)), !(countOneBits(-9982i) <= ~var_0.x)));
    global2 = array<Struct_1, 9>();
    global1 = vec4<u32>(1u, global1.x, var_2.a.x, _wgslsmith_div_u32(1u, 24335u) & abs(~(global1.x & var_2.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(2147483647i, _wgslsmith_add_i32(var_0.x >> (~47868u % 32u), 0i), -2147483647i), vec2<i32>(-19853i, 2147483647i & global0.a), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1038f * -902f), 282f), 1000f)), -1027f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(3025f, -1537f))))), vec4<u32>(4810u, 4294967295u, _wgslsmith_sub_u32(global1.x, _wgslsmith_mult_u32(global0.b >> (u_input.c % 32u), var_2.a.x)), 36444u), select(~1i, var_0.x, var_2.a.x >= ~global0.b));
}

