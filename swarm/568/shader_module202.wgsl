struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_2, 22>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32) -> vec4<bool> {
    let var_0 = u_input.a.x;
    let var_1 = u_input.b.x << (4294967295u % 32u);
    global1 = array<Struct_2, 22>();
    global0 = vec4<bool>(false, global0.x, global0.x, true);
    global1 = array<Struct_2, 22>();
    return select(vec4<bool>(true, true, true, (_wgslsmith_add_u32(u_input.a.x, u_input.d.x) <= firstTrailingBit(arg_0)) == !global0.x), vec4<bool>(true, any(vec4<bool>(!global0.x, all(vec3<bool>(true, global0.x, global0.x)), global0.x & global0.x, true)), false, all(vec4<bool>(true, !global0.x, !global0.x, !global0.x))), !(!vec4<bool>(all(vec4<bool>(true, global0.x, global0.x, global0.x)), global0.x, true && global0.x, !global0.x)));
}

fn func_2() -> Struct_1 {
    global0 = select(vec4<bool>(true, true, all(!(!vec3<bool>(true, true, global0.x))), global0.x), select(vec4<bool>(false, true, global0.x, all(vec2<bool>(global0.x, true))), select(vec4<bool>(global0.x && false, global0.x, -25487i < u_input.e.x, true), func_3(u_input.d.x), select(!global0.x, -1i >= u_input.c.x, all(global0.xyz))), select(!(!vec4<bool>(false, global0.x, global0.x, global0.x)), func_3(1u), any(vec2<bool>(global0.x, global0.x)) || true)), any(global0.xxz));
    let var_0 = 4294967295u <= _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(535f)), -1172f, _wgslsmith_f_op_f32(ceil(-817f)), 1000f)), vec2<bool>(false, true)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-219f, -860f, -1000f, 867f)))), select(!vec2<bool>(false, var_0), select(vec2<bool>(true, true), func_3(u_input.a.x).yx, true), global0.ww)), max(-21121i, ~select(u_input.e.x, u_input.c.x, u_input.c.x >= u_input.b.x)));
    var_1 = Struct_2(Struct_1(var_1.b.a, var_1.b.b), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_1.b.a, var_1.a.a, var_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_1.a.a)))), var_1.b.b), abs((abs(var_1.c) ^ ~2147483647i) & ~897i));
    let var_2 = ~4294967295u;
    return var_1.a;
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    global1 = array<Struct_2, 22>();
    var var_0 = global1[_wgslsmith_index_u32(u_input.d.x, 22u)];
    let var_1 = var_0.a.a.wy;
    var var_2 = var_0.b;
    var_2 = func_2();
    return Struct_1(vec4<f32>(-630f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), 576f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.a.x)))))), select(global0.xx, func_3(1u << (~u_input.a.x % 32u)).yw, !(!vec2<bool>(var_0.b.b.x, var_2.b.x))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: vec4<bool>) -> u32 {
    global1 = array<Struct_2, 22>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.a.x)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.a.x, _wgslsmith_f_op_f32(-arg_2.a)) - _wgslsmith_f_op_f32(max(arg_0.b.a.x, arg_2.a)))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(-850f, _wgslsmith_f_op_f32(min(arg_2.a, _wgslsmith_f_op_f32(floor(arg_0.b.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1305f + 1075f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2133f - arg_0.a.a.x)))) - var_0.a));
    global0 = select(arg_3, arg_3, arg_3);
    let var_2 = func_1(Struct_3(1000f));
    return firstTrailingBit(u_input.a.x | (~u_input.a.x >> (_wgslsmith_mod_u32(41572u, 3824u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~(~4294967295u), ~u_input.d.x, func_4(Struct_2(func_1(Struct_3(240f)), Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-769f, 1910f, -1409f, -460f))), func_2().b), reverseBits(29371i)), global0.yzw, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -415f))), !vec4<bool>(0u <= u_input.a.x, all(global0.zw), any(global0.zw), u_input.a.x != 0u)));
    var_0 = vec3<u32>(var_0.x, max(~(firstLeadingBit(13380u) | _wgslsmith_dot_vec2_u32(u_input.a.yz, vec2<u32>(var_0.x, var_0.x))), _wgslsmith_mult_u32(var_0.x, 43699u)), u_input.a.x);
    global1 = array<Struct_2, 22>();
    var var_1 = u_input.a.x;
    var_0 = ~u_input.d >> (vec3<u32>(10126u, ((u_input.a.x | var_0.x) >> (min(45904u, 21562u) % 32u)) & _wgslsmith_div_u32(u_input.d.x, var_0.x), var_0.x & firstTrailingBit(~var_0.x)) % vec3<u32>(32u));
    var var_2 = select(vec3<i32>(24252i ^ (2147483647i ^ _wgslsmith_dot_vec2_i32(u_input.e, vec2<i32>(1i, u_input.b.x))), u_input.c.x, _wgslsmith_div_i32(45782i, _wgslsmith_mod_i32(-26429i, 51220i))), select(abs(_wgslsmith_add_vec3_i32(select(u_input.c, u_input.c, vec3<bool>(global0.x, false, false)), vec3<i32>(u_input.b.x, u_input.e.x, u_input.b.x))), u_input.b.yyz, !func_1(Struct_3(131f)).b.x), any(!select(vec3<bool>(true, true, global0.x), !global0.wyx, global0.wzw)));
    global1 = array<Struct_2, 22>();
    let var_3 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1548f), 279f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1123f + _wgslsmith_f_op_f32(-863f * -1843f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -397f))), !all(global0.zx))));
    let var_4 = global1[_wgslsmith_index_u32(~u_input.d.x, 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.d), vec3<u32>(firstTrailingBit(firstLeadingBit(var_0.x)) >> (~var_0.x % 32u), select(~reverseBits(var_0.x), u_input.a.x, any(global0.yw)), 45246u), vec4<i32>(countOneBits(firstLeadingBit(~u_input.c.x)), countOneBits(_wgslsmith_mod_i32(~(-463i), countOneBits(-1i))), ~25390i, var_4.c), var_0.x, var_2.x);
}

