struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(47347u, vec2<f32>(496f, 765f), vec3<bool>(false, true, true));

var<private> global1: array<bool, 32> = array<bool, 32>(true, true, true, false, false, true, false, false, false, false, true, true, false, false, false, false, false, true, true, false, true, false, false, true, true, false, false, true, true, true, true, true);

var<private> global2: array<i32, 8>;

var<private> global3: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(1u, vec2<f32>(-1000f, 643f), vec3<bool>(false, false, true)), Struct_1(21666u, vec2<f32>(888f, 678f), vec3<bool>(false, true, true)), Struct_1(12114u, vec2<f32>(351f, -802f), vec3<bool>(false, false, false)), Struct_1(0u, vec2<f32>(-185f, -1480f), vec3<bool>(true, true, false)), Struct_1(1u, vec2<f32>(920f, -1088f), vec3<bool>(false, true, false)), Struct_1(29128u, vec2<f32>(-349f, -928f), vec3<bool>(true, false, true)), Struct_1(1u, vec2<f32>(-1072f, 557f), vec3<bool>(false, true, true)), Struct_1(4294967295u, vec2<f32>(926f, -1000f), vec3<bool>(false, false, true)), Struct_1(8591u, vec2<f32>(1240f, 1040f), vec3<bool>(false, true, true)), Struct_1(49395u, vec2<f32>(857f, 762f), vec3<bool>(true, false, true)), Struct_1(6673u, vec2<f32>(-1000f, 971f), vec3<bool>(false, true, false)), Struct_1(4294967295u, vec2<f32>(858f, 1343f), vec3<bool>(true, true, true)), Struct_1(20162u, vec2<f32>(1211f, 159f), vec3<bool>(true, false, true)), Struct_1(1u, vec2<f32>(1000f, -1000f), vec3<bool>(true, true, false)), Struct_1(0u, vec2<f32>(-116f, 790f), vec3<bool>(true, true, true)), Struct_1(4294967295u, vec2<f32>(-829f, -634f), vec3<bool>(false, true, false)), Struct_1(4294967295u, vec2<f32>(382f, -330f), vec3<bool>(false, true, false)), Struct_1(27347u, vec2<f32>(225f, 1166f), vec3<bool>(true, true, false)), Struct_1(12768u, vec2<f32>(-218f, -189f), vec3<bool>(false, false, false)), Struct_1(4294967295u, vec2<f32>(-1000f, -840f), vec3<bool>(true, true, false)), Struct_1(127567u, vec2<f32>(-734f, -1000f), vec3<bool>(false, true, false)), Struct_1(1u, vec2<f32>(947f, -599f), vec3<bool>(false, false, true)), Struct_1(64952u, vec2<f32>(-789f, 817f), vec3<bool>(true, false, false)), Struct_1(0u, vec2<f32>(-400f, -1006f), vec3<bool>(true, false, false)), Struct_1(44035u, vec2<f32>(-1000f, 122f), vec3<bool>(true, false, true)), Struct_1(0u, vec2<f32>(650f, 690f), vec3<bool>(false, false, false)), Struct_1(4294967295u, vec2<f32>(225f, 1038f), vec3<bool>(true, true, false)), Struct_1(132235u, vec2<f32>(138f, -1033f), vec3<bool>(false, false, true)), Struct_1(61878u, vec2<f32>(1033f, 107f), vec3<bool>(false, true, false)));

var<private> global4: array<Struct_1, 12>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = global0.c.x;
    global1 = array<bool, 32>();
    global4 = array<Struct_1, 12>();
    var var_1 = -firstLeadingBit(vec3<i32>(u_input.d, -2147483647i, u_input.d) & -vec3<i32>(global2[_wgslsmith_index_u32(11487u, 8u)], global2[_wgslsmith_index_u32(u_input.b, 8u)], -6637i));
    let var_2 = 8135i;
    return _wgslsmith_clamp_u32(4294967295u, ~(~u_input.a), 40775u);
}

fn func_3() -> vec2<f32> {
    global0 = global4[_wgslsmith_index_u32(reverseBits(global0.a) ^ select(1u, _wgslsmith_div_u32(abs(4294967295u), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, global0.a, 0u), vec3<u32>(4294967295u, global0.a, global0.a)))), !((global2[_wgslsmith_index_u32(0u, 8u)] | -2147483647i) <= 37623i)), 12u)];
    let var_0 = _wgslsmith_mult_u32((global0.a >> (10965u % 32u)) << (min(countOneBits(u_input.a & 3467u), u_input.c << (~15397u % 32u)) % 32u), abs(firstLeadingBit(_wgslsmith_mod_u32(global0.a, 24276u) | global0.a)));
    global3 = array<Struct_1, 29>();
    let var_1 = -vec4<i32>(global2[_wgslsmith_index_u32(reverseBits(~var_0) >> (~78179u % 32u), 8u)], u_input.d, _wgslsmith_dot_vec4_i32(~vec4<i32>(global2[_wgslsmith_index_u32(var_0, 8u)], 15106i, global2[_wgslsmith_index_u32(u_input.c, 8u)], -100655i), -vec4<i32>(u_input.d, u_input.d, -3203i, u_input.d)), u_input.d);
    global3 = array<Struct_1, 29>();
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_f32(trunc(-1278f))), -803f));
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    global4 = array<Struct_1, 12>();
    global3 = array<Struct_1, 29>();
    global4 = array<Struct_1, 12>();
    let var_0 = Struct_1(4294967295u, _wgslsmith_f_op_vec2_f32(func_3()), select(vec3<bool>(true, any(select(vec2<bool>(false, true), arg_0.c.zx, vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 32u)], global1[_wgslsmith_index_u32(76907u, 32u)]))), !global1[_wgslsmith_index_u32(func_1(global3[_wgslsmith_index_u32(arg_0.a, 29u)]), 32u)]), !vec3<bool>(all(vec2<bool>(true, arg_0.c.x)), !global0.c.x, !global1[_wgslsmith_index_u32(global0.a, 32u)]), arg_0.c));
    var var_1 = !(!select(!select(vec4<bool>(global0.c.x, arg_0.c.x, true, arg_0.c.x), vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(4294967295u, 32u)]), vec4<bool>(var_0.c.x, false, var_0.c.x, global0.c.x)), vec4<bool>(false, !arg_0.c.x, select(true, true, global0.c.x), !arg_0.c.x), true));
    return -vec3<i32>(select(27349i, -18149i, true), -2147483647i, firstTrailingBit(-u_input.d)) >> (~vec3<u32>(var_0.a, _wgslsmith_div_u32(var_0.a, arg_0.a), _wgslsmith_mod_u32(~global0.a, 38877u & var_0.a)) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.c.x;
    var var_1 = global4[_wgslsmith_index_u32(~min(~((global0.a >> (u_input.b % 32u)) ^ global0.a), func_1(Struct_1(u_input.a << (global0.a % 32u), global0.b, !global0.c))), 12u)];
    let var_2 = (~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, global2[_wgslsmith_index_u32(45320u, 8u)], -23497i) | vec3<i32>(1i, u_input.d, u_input.d), _wgslsmith_mod_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(0u, 8u)], -1i, 0i), vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 8u)], -1i, 0i))) >> (~(~(vec3<u32>(11624u, var_1.a, 19812u) ^ vec3<u32>(var_1.a, 53380u, global0.a))) % vec3<u32>(32u))) & func_2(Struct_1(39187u, global0.b, !vec3<bool>(global1[_wgslsmith_index_u32(var_1.a, 32u)], global1[_wgslsmith_index_u32(16140u, 32u)], global1[_wgslsmith_index_u32(u_input.a, 32u)])));
    let var_3 = _wgslsmith_add_u32(2160u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 48372u, global0.a) << (vec3<u32>(u_input.b, var_1.a, 0u) % vec3<u32>(32u)), vec3<u32>(19170u, 1u, 33380u)) >> (~global0.a % 32u));
    var var_4 = _wgslsmith_f_op_f32(max(global0.b.x, global0.b.x));
    global0 = Struct_1(1u, vec2<f32>(_wgslsmith_f_op_f32(sign(global0.b.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.b.x)))), global0.c);
    var_1 = global3[_wgslsmith_index_u32(global0.a, 29u)];
    let var_5 = ~(~vec3<u32>(1u, ~(~2958u), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.b.x, global0.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(295f, var_1.b.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, 1669f))))));
}

