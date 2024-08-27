struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: i32,
    e: u32,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: f32,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 15> = array<vec3<bool>, 15>(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false));

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(i32(-2147483648), vec2<u32>(0u, 4294967295u)), Struct_1(11679i, vec2<u32>(25471u, 4294967295u)), Struct_1(2147483647i, vec2<u32>(0u, 0u)), Struct_1(i32(-2147483648), vec2<u32>(54190u, 14414u)));

var<private> global2: i32 = i32(-2147483648);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_5, arg_1: Struct_1, arg_2: Struct_5) -> i32 {
    let var_0 = arg_0.a;
    var var_1 = arg_2.c;
    global1 = array<Struct_1, 4>();
    global1 = array<Struct_1, 4>();
    var var_2 = arg_0.c.b.x;
    return firstLeadingBit(-_wgslsmith_dot_vec3_i32(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(-29351i, arg_0.c.b.x, 14772i), vec3<i32>(arg_2.c.b.x, -2147483647i, -2147483647i), vec3<i32>(1i, arg_1.a, arg_2.c.b.x))), vec3<i32>(~arg_1.a, u_input.c.x, -arg_2.c.b.x)));
}

fn func_3() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-634f * -1782f)));
    var var_1 = -283f;
    global1 = array<Struct_1, 4>();
    var var_2 = firstLeadingBit(_wgslsmith_add_u32(1u | ~firstLeadingBit(u_input.d), u_input.d));
    var_2 = _wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(40407u, 1u, u_input.d, u_input.d), vec4<u32>(14989u, u_input.d, 1u, 1u), vec4<u32>(u_input.d, 53369u, 4294967295u, 1u)), ~vec4<u32>(u_input.d, 21566u, u_input.d, u_input.d))), abs(vec4<u32>(~(~u_input.d), u_input.d >> (4294967295u % 32u), ~(~0u), u_input.d)));
    return firstLeadingBit(firstTrailingBit(_wgslsmith_div_vec3_u32(select(vec3<u32>(u_input.d, 85451u, u_input.d), vec3<u32>(u_input.d, 1u, u_input.d), vec3<bool>(true, true, true)) << (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, 22104u, u_input.d), vec3<u32>(u_input.d, u_input.d, 4294967295u)) % vec3<u32>(32u)), (vec3<u32>(u_input.d, 48692u, u_input.d) | vec3<u32>(6093u, u_input.d, 74858u)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, 1u, 4294967295u), vec3<u32>(u_input.d, u_input.d, 69852u)) % vec3<u32>(32u)))));
}

fn func_1(arg_0: bool, arg_1: Struct_4, arg_2: vec2<bool>) -> u32 {
    global2 = 47978i | _wgslsmith_sub_i32(min(arg_1.b.x, ~func_2(Struct_5(vec4<u32>(u_input.d, 1u, u_input.d, u_input.d), arg_1.a, Struct_4(arg_1.a, vec3<i32>(-15380i, 0i, 2147483647i), arg_1.d.x, arg_1.d)), Struct_1(u_input.b, vec2<u32>(u_input.d, 19091u)), Struct_5(vec4<u32>(0u, 5572u, 1u, u_input.d), -614f, Struct_4(arg_1.a, vec3<i32>(-46773i, -30739i, arg_1.b.x), true, vec3<bool>(true, arg_1.d.x, false))))), arg_1.b.x);
    var var_0 = true;
    var var_1 = func_3();
    global1 = array<Struct_1, 4>();
    global2 = 2147483647i;
    return _wgslsmith_dot_vec3_u32(abs(~(~(vec3<u32>(32113u, 4294967295u, 11848u) >> (vec3<u32>(u_input.d, 2549u, var_1.x) % vec3<u32>(32u))))), vec3<u32>(u_input.d, _wgslsmith_mult_u32(70610u, 1u), abs(_wgslsmith_mult_u32(u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 86652u, var_1.x, 9908u), vec4<u32>(var_1.x, u_input.d, 1u, var_1.x))))));
}

fn func_4(arg_0: u32, arg_1: vec2<u32>) -> Struct_4 {
    let var_0 = select(select(vec4<bool>(select(true, true, true), true, true, any(vec4<bool>(false, false, true, false))), vec4<bool>(~(-1i) <= u_input.a, true, true || all(vec4<bool>(false, true, true, false)), !any(global0[_wgslsmith_index_u32(arg_0, 15u)])), (u_input.d > 1u) & all(vec2<bool>(true, true))), !select(vec4<bool>(all(vec4<bool>(true, false, false, true)), all(vec2<bool>(true, true)), true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(u_input.a == u_input.b, true, true, any(global0[_wgslsmith_index_u32(~(~arg_1.x), 15u)])));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2075f, _wgslsmith_f_op_f32(-1000f + 2708f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(201f * -1000f)))));
    global2 = firstLeadingBit(u_input.c.x);
    var var_2 = global1[_wgslsmith_index_u32(0u | u_input.d, 4u)];
    var var_3 = var_1;
    return Struct_4(var_1, u_input.c, var_0.x, vec3<bool>(true, var_0.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(~abs(~49140u), firstTrailingBit(vec2<u32>(func_1(false, Struct_4(590f, vec3<i32>(u_input.b, u_input.a, u_input.a), true, vec3<bool>(false, true, true)), vec2<bool>(true, true)), abs(0u))));
    let var_1 = -25882i;
    let var_2 = Struct_3(Struct_2(u_input.d, max(var_0.b.xx, u_input.c.yy), Struct_1(var_0.b.x, vec2<u32>(u_input.d, 58253u))), func_1(any(!select(vec3<bool>(var_0.c, var_0.c, true), vec3<bool>(false, false, true), var_0.d.x)), var_0, vec2<bool>(_wgslsmith_f_op_f32(max(var_0.a, var_0.a)) > 844f, !var_0.c && all(global0[_wgslsmith_index_u32(0u, 15u)]))), Struct_2(u_input.d, countOneBits(vec2<i32>(var_0.b.x, -34613i << (u_input.d % 32u))), global1[_wgslsmith_index_u32(9100u, 4u)]), ~(~43806i), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.d, func_1(true, Struct_4(-449f, u_input.c, var_0.d.x, vec3<bool>(var_0.d.x, var_0.d.x, var_0.c)), select(var_0.d.xz, vec2<bool>(true, true), var_0.d.xx))), select(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.d, u_input.d), vec3<u32>(29813u, 4294967295u, 0u)) | _wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.d, 4294967295u), vec3<u32>(0u, u_input.d, u_input.d)), _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(0u, u_input.d, 0u)), vec3<u32>(u_input.d, u_input.d, 3510u), vec3<u32>(24923u, 0u, u_input.d)), any(var_0.d.yy))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-338f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2063f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-1456f, -1000f), _wgslsmith_f_op_f32(min(var_0.a, var_0.a)))) + 1000f));
    var var_4 = ~(-1i);
    let var_5 = all(!select(vec4<bool>(var_0.d.x, false, false, true), select(vec4<bool>(false, false, var_0.d.x, true), vec4<bool>(false, var_0.d.x, var_0.d.x, var_0.d.x), vec4<bool>(true, var_0.c, var_0.c, var_0.c)), select(vec4<bool>(var_0.d.x, var_0.d.x, false, true), vec4<bool>(false, var_0.c, false, var_0.d.x), vec4<bool>(var_0.d.x, false, var_0.d.x, false)))) && true;
    let var_6 = !(!global0[_wgslsmith_index_u32(15542u, 15u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, 0u, 65046u, 22593u) >> (vec4<u32>(u_input.d, 45649u, var_2.a.c.b.x, 1u) % vec4<u32>(32u)), select(vec4<u32>(23638u, 4618u, 1u, 0u), vec4<u32>(var_2.e, var_2.b, u_input.d, 4294967295u), true), select(vec4<u32>(u_input.d, var_2.e, 0u, 0u), vec4<u32>(1u, var_2.a.a, u_input.d, var_2.a.a), vec4<bool>(true, true, var_5, false))), (vec4<u32>(u_input.d, 63893u, u_input.d, 66293u) ^ vec4<u32>(var_2.c.a, u_input.d, u_input.d, var_2.e)) | vec4<u32>(15121u, 0u, var_2.a.c.b.x, u_input.d)) & ~reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_2.b, 0u, u_input.d), vec4<u32>(u_input.d, var_2.a.a, u_input.d, 4294967295u))));
}

