struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_2 = Struct_2(-51516i, Struct_1(-21323i, vec3<f32>(510f, -1314f, -488f), vec4<f32>(-1000f, 628f, -1000f, 1016f)), vec4<i32>(1i, 16514i, i32(-2147483648), -23397i));

var<private> global2: array<Struct_2, 6>;

var<private> global3: i32;

var<private> global4: vec2<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: vec4<f32>, arg_3: Struct_1) -> i32 {
    var var_0 = ~(_wgslsmith_add_i32(~(-4924i), _wgslsmith_mult_i32(1i, u_input.e)) | global1.c.x);
    global0 = global1.b.c.x;
    var_0 = -1i;
    let var_1 = !select(select(vec2<bool>(true, true), vec2<bool>(true, true), global4.x), select(vec2<bool>(any(vec4<bool>(global4.x, arg_1, true, global4.x)), global4.x), select(select(vec2<bool>(true, global4.x), vec2<bool>(true, global4.x), false), select(vec2<bool>(arg_1, global4.x), vec2<bool>(true, arg_1), vec2<bool>(global4.x, arg_1)), true), _wgslsmith_add_i32(global1.c.x, u_input.e) < 15799i), select(!vec2<bool>(false, global4.x), vec2<bool>(false, false), global4.x));
    var var_2 = vec3<u32>(arg_0.x, _wgslsmith_sub_u32(countOneBits(countOneBits(~37008u)), u_input.d.x), 1u);
    return ~(~arg_3.a);
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global3 = arg_0.b.a;
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(floor(1353f)), arg_0.b.c.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-748f, -798f)), vec2<f32>(_wgslsmith_f_op_f32(global1.b.c.x * arg_0.b.c.x), global1.b.c.x)))));
    let var_1 = Struct_2(arg_0.c.x, Struct_1(firstTrailingBit(func_3(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.c, u_input.d.x, u_input.a), vec4<u32>(u_input.d.x, u_input.b.x, u_input.a, 50801u)), !global4.x, _wgslsmith_f_op_vec4_f32(-arg_0.b.c), Struct_1(arg_0.c.x, vec3<f32>(arg_0.b.c.x, global1.b.c.x, arg_0.b.c.x), arg_0.b.c))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.b.b.x * -906f))), _wgslsmith_f_op_f32(f32(-1f) * -1519f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(arg_0.b.c.x)), _wgslsmith_div_f32(arg_0.b.b.x, 741f)))), arg_0.b.c), vec4<i32>(0i, arg_0.a, abs(global1.c.x), _wgslsmith_mult_i32(arg_0.c.x, -arg_0.c.x << ((u_input.d.x << (u_input.d.x % 32u)) % 32u))));
    var var_2 = var_1.c;
    let var_3 = var_1;
    return arg_0.b;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec4<i32>) -> vec4<i32> {
    global1 = Struct_2(firstLeadingBit(arg_3.x ^ 2147483647i), func_2(Struct_2(1i, Struct_1(1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-269f, global1.b.c.x, 372f)), _wgslsmith_f_op_vec4_f32(-arg_0.b.c)), vec4<i32>(-15021i, -arg_3.x, firstTrailingBit(2147483647i), arg_1.a))), -vec4<i32>(_wgslsmith_dot_vec4_i32(-global1.c, countOneBits(arg_0.c)), -1997i, -1i, 1i));
    var var_0 = global1.b.b.xy;
    var var_1 = vec2<f32>(-359f, -1195f);
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(829f, arg_1.c.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-101f, arg_1.c.x)), false))), vec2<f32>(-1620f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-260f * 703f))), select(!select(vec2<bool>(false, global4.x), vec2<bool>(global4.x, global4.x), vec2<bool>(false, global4.x)), vec2<bool>(global4.x, true), select(true, !global4.x, true)))) - _wgslsmith_f_op_vec2_f32(max(arg_0.b.b.yx, vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_1.b.x)), 459f)), _wgslsmith_f_op_f32(select(492f, _wgslsmith_f_op_f32(max(var_1.x, 1012f)), true))))));
    var var_2 = _wgslsmith_div_vec2_f32(global1.b.b.xy, arg_1.b.yz);
    return _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, i32(-1i) * -global1.c.x, ~arg_3.x >> (~11296u % 32u), u_input.e), select(arg_0.c, _wgslsmith_mod_vec4_i32(-arg_0.c, vec4<i32>(-776i, arg_1.a, arg_0.c.x, -15661i)), !select(vec4<bool>(false, global4.x, true, global4.x), vec4<bool>(global4.x, global4.x, false, false), global4.x)), abs(global1.c) << (countOneBits(vec4<u32>(u_input.c, u_input.d.x, u_input.c, 10316u)) % vec4<u32>(32u))) ^ select(_wgslsmith_sub_vec4_i32(vec4<i32>(-global1.b.a, _wgslsmith_dot_vec4_i32(global1.c, arg_3), ~1i, global1.b.a), vec4<i32>(func_2(Struct_2(global1.b.a, Struct_1(-2147483647i, vec3<f32>(561f, arg_1.b.x, -481f), vec4<f32>(var_2.x, var_2.x, -1010f, -1135f)), arg_0.c)).a, u_input.e, u_input.e, -66202i)), arg_0.c, true);
}

fn func_1(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: i32) -> vec2<i32> {
    var var_0 = arg_0.b;
    let var_1 = Struct_2(i32(-1i) * -50435i, Struct_1(_wgslsmith_add_i32(~var_0.a & 45491i, -1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, 730f, var_0.c.x))), vec4<f32>(696f, global1.b.c.x, 935f, _wgslsmith_f_op_f32(-153f + _wgslsmith_div_f32(1951f, 266f)))), func_4(Struct_2(2147483647i, func_2(Struct_2(arg_0.a, arg_0.b, vec4<i32>(65142i, 1i, 0i, -1i))), ~(vec4<i32>(global1.c.x, global1.a, 4240i, 0i) << (vec4<u32>(u_input.a, 0u, 4294967295u, u_input.c) % vec4<u32>(32u)))), global1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1))), countOneBits((vec4<i32>(29857i, 41082i, arg_2, -9763i) & arg_0.c) << (vec4<u32>(u_input.b.x, u_input.b.x, u_input.c, 44752u) % vec4<u32>(32u)))));
    global3 = -12807i;
    global1 = Struct_2(global1.b.a, global1.b, global1.c);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return -_wgslsmith_clamp_vec2_i32(select(vec2<i32>(u_input.e, arg_2 | 2147483647i), global1.c.wz >> (abs(u_input.d) % vec2<u32>(32u)), !select(vec2<bool>(global4.x, global4.x), vec2<bool>(global4.x, global4.x), vec2<bool>(true, true))), _wgslsmith_add_vec2_i32(vec2<i32>(var_0.a, arg_2), vec2<i32>(-15401i, 2147483647i)) >> (u_input.b.xx % vec2<u32>(32u)), ~vec2<i32>(global1.b.a, 35549i) & vec2<i32>(~0i, 28336i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global2[_wgslsmith_index_u32(u_input.c, 6u)];
    var var_0 = select(~func_1(Struct_2(firstLeadingBit(1i), Struct_1(global1.c.x, global1.b.c.xxz, global1.b.c), -vec4<i32>(-1i, 3942i, global1.b.a, global1.a)), _wgslsmith_f_op_vec3_f32(-global1.b.b), 7134i), vec2<i32>(0i, -global1.b.a), vec2<bool>(!any(!vec3<bool>(true, global4.x, global4.x)), global4.x));
    let var_1 = ~37934u;
    var var_2 = false;
    var var_3 = select(vec4<bool>(select(global4.x == false, !global4.x, false), any(select(select(vec4<bool>(false, global4.x, global4.x, global4.x), vec4<bool>(false, true, global4.x, global4.x), vec4<bool>(global4.x, global4.x, global4.x, global4.x)), !vec4<bool>(global4.x, global4.x, true, true), select(vec4<bool>(global4.x, false, true, global4.x), vec4<bool>(global4.x, global4.x, true, global4.x), global4.x))), false, !global4.x), !vec4<bool>(any(vec2<bool>(global4.x, false)) == true, global4.x, true, global4.x), global4.x);
    let var_4 = _wgslsmith_f_op_f32(select(-2204f, -1607f, any(!select(!vec4<bool>(true, global4.x, var_3.x, var_3.x), select(vec4<bool>(true, false, global4.x, global4.x), vec4<bool>(false, global4.x, true, true), var_3.x), true))));
    var var_5 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(global1.b.b.x)), 1000f, var_4, global1.b.c.x) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.b.c))), _wgslsmith_f_op_vec4_f32(global1.b.c + global1.b.c)));
    let var_6 = vec3<u32>(_wgslsmith_div_u32(firstTrailingBit(0u), ~0u), 12505u, 101537u);
    var var_7 = ~abs(4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_1, ~3778u));
}

