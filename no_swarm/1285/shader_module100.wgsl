struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 32>;

var<private> global1: Struct_1 = Struct_1(29107u, vec2<f32>(-497f, -1426f), vec4<u32>(63134u, 4294967295u, 9078u, 15388u));

var<private> global2: Struct_1 = Struct_1(1u, vec2<f32>(444f, -177f), vec4<u32>(14559u, 40228u, 93620u, 4294967295u));

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec3<u32>) -> vec2<bool> {
    let var_0 = _wgslsmith_clamp_vec2_u32(arg_0.c.wx, vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(arg_2, arg_0.c.wwx), ~_wgslsmith_clamp_u32(global2.c.x, 25953u, 17954u)), ~u_input.c), select(global3.c.yz & ~arg_0.c.zz, global2.c.wy, select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(false, false, true, true)))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(global3.b.x)), arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(297f, global3.b.x));
    global3 = Struct_1(global1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global3.b))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(var_1.x * -1462f), -2372f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, global1.b.x)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), true))))), ~vec4<u32>(~70888u, global2.c.x, 73441u, global3.c.x));
    let var_2 = -1730f;
    global1 = arg_0;
    return vec2<bool>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(864f, var_1.x, false)), global1.b.x), global3.b.x) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.b.x)))), true);
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(max(global1.c.x, global3.a), _wgslsmith_mult_u32(13351u, 4716u), 1u, max(29621u, u_input.b.x)), vec4<u32>(80253u >> (~global1.a % 32u), firstTrailingBit(u_input.c) | 24645u, _wgslsmith_div_u32(70176u, _wgslsmith_mult_u32(75488u, global2.c.x)), global3.a)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2711f, 214f), vec2<f32>(1215f, -1274f), false)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.x, global1.b.x) - global3.b))), _wgslsmith_f_op_vec2_f32(round(global1.b))), _wgslsmith_mod_vec4_u32(global2.c, vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(global2.c.wyy, global1.c.yyy), u_input.b), global1.c.x, 1u, ~_wgslsmith_div_u32(0u, global2.c.x))));
    var var_1 = vec3<i32>(abs(u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.a.x, -2147483647i), ~(-11799i)), (u_input.a.x ^ -26651i) >> (~global1.a % 32u), _wgslsmith_mod_i32(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -82737i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))), u_input.a), u_input.a.x);
    let var_2 = select(!(!select(vec2<bool>(true, true), func_3(Struct_1(u_input.b.x, vec2<f32>(167f, -2144f), vec4<u32>(var_0.a, var_0.a, 0u, 97514u)), -1000f, vec3<u32>(u_input.b.x, u_input.b.x, 31586u)), true)), !(!(!func_3(Struct_1(u_input.b.x, vec2<f32>(2421f, 176f), vec4<u32>(26032u, 35941u, global3.a, u_input.b.x)), 1000f, vec3<u32>(var_0.c.x, 16853u, global3.c.x)))), true);
    let var_3 = vec2<u32>(1u, 0u);
    var_0 = Struct_1(4294967295u, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b.x, var_0.b.x) + _wgslsmith_f_op_vec2_f32(floor(global1.b))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-304f, global2.b.x))))), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 4294967295u, ~0u, ~var_0.a), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(global1.c, global2.c), countOneBits(vec4<u32>(global1.a, 0u, 4294967295u, global3.c.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(global2.a, 18486u, 14784u, 4294967295u), vec4<u32>(var_0.c.x, var_3.x, 0u, 4294967295u)))) >> (firstLeadingBit(countOneBits(~vec4<u32>(23559u, 1u, global3.c.x, global1.a))) % vec4<u32>(32u)));
    return select(select(vec3<bool>(true, var_2.x, true & all(vec4<bool>(var_2.x, true, var_2.x, var_2.x))), select(vec3<bool>(all(vec2<bool>(false, false)), var_2.x, var_2.x | var_2.x), !vec3<bool>(var_2.x, false, var_2.x), true), var_2.x), vec3<bool>(any(!select(vec2<bool>(false, false), vec2<bool>(true, var_2.x), false)), var_2.x, any(vec4<bool>(!var_2.x, var_2.x, var_2.x, !var_2.x))), vec3<bool>(true, global3.c.x <= _wgslsmith_mult_u32(~104766u, var_0.c.x), var_2.x));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: u32) -> Struct_1 {
    let var_0 = max(vec4<u32>(max(min(0u, 0u), 57458u), ~1u, 1u, global2.a), global3.c) | _wgslsmith_add_vec4_u32(global2.c, global3.c);
    var var_1 = Struct_1(13252u, global3.b, _wgslsmith_div_vec4_u32(abs(var_0), ~select(vec4<u32>(global3.a, var_0.x, 4294967295u, u_input.b.x), min(vec4<u32>(32750u, 4294967295u, u_input.b.x, 1u), var_0), !arg_1.x)));
    var var_2 = !vec3<bool>(arg_0.x, arg_1.x, any(!func_3(Struct_1(global2.a, global1.b, var_1.c), 153f, global2.c.yww)));
    return Struct_1(0u, _wgslsmith_f_op_vec2_f32(vec2<f32>(-925f, 1000f) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(global3.b))))), ~var_0);
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.a.x;
    var var_1 = func_4(!select(!func_2(), func_2(), func_2()), !(!vec2<bool>(any(vec3<bool>(true, false, false)), global1.c.x == global3.a)), ~global3.a);
    var var_2 = !(firstLeadingBit(reverseBits(-10461i)) < var_0);
    var var_3 = all(func_2());
    var var_4 = countOneBits(firstLeadingBit(countOneBits(vec4<u32>(global3.a, global2.a, global1.c.x, global2.c.x))) & ~(~global1.c));
    return func_4(vec3<bool>(func_2().x, !(_wgslsmith_dot_vec4_u32(vec4<u32>(11296u, global1.c.x, 0u, u_input.c), global1.c) != global2.a), true), vec2<bool>(false, any(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), true))), ~(~global2.a));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global2 = arg_3;
    global0 = array<vec3<i32>, 32>();
    let var_0 = func_4(func_2(), vec2<bool>(true, true), ~_wgslsmith_clamp_u32(0u, 1u, arg_2.c.x | 4294967295u) & ~1u);
    global3 = arg_2;
    let var_1 = func_4(vec3<bool>(true, true, true), !(!(!func_2().xz)), ~min(1u, 0u));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<u32>(4294967295u, firstTrailingBit(~global1.a) ^ ~_wgslsmith_sub_u32(global2.c.x, global3.c.x));
    global3 = func_5(vec4<i32>(~(~firstLeadingBit(u_input.a.x)), _wgslsmith_dot_vec3_i32(-countOneBits(vec3<i32>(0i, u_input.a.x, u_input.a.x)), ~u_input.a), -1i, _wgslsmith_add_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x) >> (global2.c.zw % vec2<u32>(32u)), u_input.a.xz))), abs(firstLeadingBit(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 1u, 109818u), vec3<u32>(global2.a, 30470u, 0u)))), func_1(), func_1());
    global0 = array<vec3<i32>, 32>();
    var var_1 = func_1();
    var var_2 = vec2<u32>(firstLeadingBit(var_1.a) | _wgslsmith_dot_vec2_u32(firstTrailingBit(global2.c.zx), abs(vec2<u32>(27215u, var_0.x))), ~global3.c.x);
    var var_3 = func_5(select(vec4<i32>(-1i, u_input.a.x, u_input.a.x, -31927i), _wgslsmith_div_vec4_i32(~(vec4<i32>(u_input.a.x, 0i, -24051i, 0i) >> (vec4<u32>(24046u, 1u, global3.c.x, var_0.x) % vec4<u32>(32u))), abs(~vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x))), true), vec3<u32>(~global2.a, 1u, ~((var_0.x << (30877u % 32u)) | ~4294967295u)), Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(69736u, 73098u, global2.c.x, var_1.a), vec4<u32>(var_1.a, global3.c.x, 1u, 57805u)), ~abs(vec4<u32>(4294967295u, var_1.c.x, 4294967295u, 1u))), global1.b, ~(~firstLeadingBit(global1.c))), func_1()).c.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-1000f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1.b.x, -539f), _wgslsmith_f_op_f32(204f - _wgslsmith_f_op_f32(-var_1.b.x))))), -(-29296i >> (_wgslsmith_add_u32(var_1.a, var_0.x) % 32u)), 1u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(global3.c.x, 1u), 54714u, global3.c.x), 10715i);
}

