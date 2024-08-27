struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31>;

var<private> global1: array<Struct_3, 32>;

var<private> global2: array<u32, 21>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1515f * 1000f) - _wgslsmith_f_op_f32(f32(-1f) * -537f)), 1f)) - -828f)));
    let var_1 = u_input.b;
    global1 = array<Struct_3, 32>();
    var var_2 = -54500i;
    let var_3 = u_input.a;
    return vec3<i32>(_wgslsmith_dot_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, -2147483647i, -30837i), ~vec3<i32>(5139i, 1i, 94653i)), -(vec3<i32>(u_input.b.x, 21014i, var_1.x) << (vec3<u32>(var_3, 27391u, 0u) % vec3<u32>(32u))) >> (firstLeadingBit(vec3<u32>(u_input.a, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17328u, 21u)], 21u)])) % vec3<u32>(32u))), ~max(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, var_1.x, u_input.b.x), vec3<i32>(0i, 48520i, u_input.b.x) >> (vec3<u32>(12487u, global2[_wgslsmith_index_u32(18548u, 21u)], 1u) % vec3<u32>(32u))), -824i), -_wgslsmith_clamp_i32(3630i, abs(reverseBits(var_1.x)), var_1.x));
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec3_i32(func_3(), ~countOneBits(-vec3<i32>(0i, arg_0.x, 35904i)));
    var var_1 = vec2<bool>((~(~var_0.x) < (_wgslsmith_dot_vec2_i32(u_input.b, var_0.yx) | _wgslsmith_div_i32(var_0.x, -1i))) || !(!(83417i >= u_input.b.x)), any(vec2<bool>(true, true)) & true);
    global0 = array<Struct_3, 31>();
    global1 = array<Struct_3, 32>();
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1153f, 1581f, false)), _wgslsmith_f_op_f32(f32(-1f) * -570f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1453f, -427f) * -1492f), _wgslsmith_f_op_f32(f32(-1f) * -343f)))));
    return Struct_1(47497u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -581f), 1f), -1717f)) - _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))))));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    global2 = array<u32, 21>();
    let var_0 = Struct_4(u_input.b.x | _wgslsmith_mod_i32(0i, (u_input.b.x & u_input.b.x) | ~u_input.b.x), global0[_wgslsmith_index_u32(~1u, 31u)]);
    global0 = array<Struct_3, 31>();
    let var_1 = _wgslsmith_dot_vec3_i32(-vec3<i32>(~abs(var_0.a), min(u_input.b.x, -36104i), _wgslsmith_sub_i32(var_0.a, _wgslsmith_mod_i32(24697i, 2147483647i))), vec3<i32>(-2147483647i, -26789i, ~(-_wgslsmith_add_i32(-25i, var_0.a))));
    var var_2 = !(!(!select(select(vec3<bool>(true, true, var_0.b.b), vec3<bool>(true, false, var_0.b.b), vec3<bool>(var_0.b.b, var_0.b.b, var_0.b.b)), vec3<bool>(true, true, true), u_input.a >= 4294967295u)));
    return Struct_2(func_2(u_input.b), _wgslsmith_f_op_vec4_f32(-var_0.b.a.b));
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = func_4(func_2(-vec2<i32>(abs(u_input.b.x), u_input.b.x)));
    let var_1 = ~(vec3<u32>(u_input.a, global2[_wgslsmith_index_u32(9976u, 21u)], _wgslsmith_add_u32(global2[_wgslsmith_index_u32(4294967295u, 21u)], var_0.a.a)) << (min(vec3<u32>(46532u, 103992u, 0u), firstLeadingBit(vec3<u32>(4294967295u, u_input.a, 38133u))) % vec3<u32>(32u))) ^ ~_wgslsmith_mod_vec3_u32(vec3<u32>(~global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(1u, 21u)], var_0.a.a), ~select(vec3<u32>(0u, 99514u, 1u), vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 21u)], 16804u, global2[_wgslsmith_index_u32(0u, 21u)]), vec3<bool>(true, true, true)));
    let var_2 = vec2<u32>(_wgslsmith_add_u32((0u << (var_0.a.a % 32u)) >> (firstTrailingBit(var_0.a.a) % 32u), _wgslsmith_dot_vec3_u32(var_1, _wgslsmith_clamp_vec3_u32(var_1, vec3<u32>(9778u, 49344u, 23396u), vec3<u32>(4294967295u, 4294967295u, var_0.a.a)))) ^ _wgslsmith_sub_u32(~(u_input.a << (43830u % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(var_1.x, 21u)], var_0.a.a), var_1.yz >> (var_1.xy % vec2<u32>(32u)))), ~0u);
    let var_3 = arg_0 & true;
    return var_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(15179u, ~(~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, 28866u), vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(33230u, 58738u, u_input.a)), firstLeadingBit(vec3<u32>(13049u, global2[_wgslsmith_index_u32(u_input.a, 21u)], u_input.a)))));
    let var_1 = 257f == _wgslsmith_f_op_f32(func_1(true));
    global0 = array<Struct_3, 31>();
    global1 = array<Struct_3, 32>();
    let var_2 = Struct_4(u_input.b.x, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, _wgslsmith_div_u32(u_input.a, u_input.a)), 32u)]);
    let var_3 = func_4(Struct_1(57069u, _wgslsmith_f_op_f32(f32(-1f) * -160f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.wwz, 1u, ~(~(~(vec4<i32>(u_input.b.x, u_input.b.x, 16068i, var_2.a) | vec4<i32>(var_2.a, -1i, -1i, u_input.b.x)))));
}

