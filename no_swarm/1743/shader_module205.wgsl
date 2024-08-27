struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: u32;

var<private> global2: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(-264f, -227f, 920f), vec3<f32>(379f, -1832f, -764f), vec3<f32>(-716f, -2821f, -522f), vec3<f32>(-356f, 361f, 700f), vec3<f32>(-1000f, -354f, -1000f), vec3<f32>(840f, 800f, 465f), vec3<f32>(1000f, -1000f, -2133f), vec3<f32>(1489f, -539f, -2037f), vec3<f32>(2358f, 291f, 199f), vec3<f32>(900f, 618f, 2591f), vec3<f32>(586f, 387f, -962f), vec3<f32>(-2214f, -987f, 473f), vec3<f32>(-1355f, -1000f, -574f), vec3<f32>(1271f, 795f, -1462f), vec3<f32>(-1592f, -907f, 243f), vec3<f32>(736f, -2549f, -389f), vec3<f32>(1033f, -219f, 523f), vec3<f32>(570f, 1000f, -1455f), vec3<f32>(1833f, 315f, -731f), vec3<f32>(-911f, -675f, -1000f), vec3<f32>(1001f, 1604f, 571f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> f32 {
    global2 = array<vec3<f32>, 21>();
    global2 = array<vec3<f32>, 21>();
    let var_0 = u_input.a.yx;
    let var_1 = 52292i;
    let var_2 = ~20603u == (34968u << ((4294967295u & _wgslsmith_mult_u32(abs(u_input.c.x), 1u)) % 32u));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1142f, _wgslsmith_f_op_f32(min(-1440f, 411f)))) * _wgslsmith_f_op_f32(ceil(-1603f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-380f * _wgslsmith_f_op_f32(f32(-1f) * -402f)) - 318f))));
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -532f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-633f * 172f) + _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(max(-1304f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(209f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(571f * _wgslsmith_f_op_f32(func_3())) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1572f) - _wgslsmith_f_op_f32(f32(-1f) * -140f)))) * vec4<f32>(_wgslsmith_div_f32(-457f, 102f), -1898f, _wgslsmith_div_f32(-460f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-116f, 177f, true)) - -757f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -225f) + -1835f)));
    global1 = countOneBits(_wgslsmith_mult_u32(1u & _wgslsmith_add_u32(4294967295u, u_input.c.x), u_input.c.x));
    let var_1 = Struct_2(~firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.c.x), vec4<u32>(u_input.c.x, 77456u, 78989u, 14669u) & vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 46610u))));
    global1 = ~11086u;
    global0 = select(!(!(!vec3<bool>(global0.x, false, global0.x))), select(vec3<bool>(false, global0.x, true), vec3<bool>(true, true, true), vec3<bool>(any(global0.zx), global0.x, global0.x)), u_input.a.x <= reverseBits(-(~1i)));
    return 1i;
}

fn func_1(arg_0: Struct_2) -> vec3<f32> {
    var var_0 = Struct_1(_wgslsmith_dot_vec2_i32(select(u_input.a.xz & vec2<i32>(u_input.d, u_input.a.x), u_input.a.yz, !global0.x) | vec2<i32>(1i, -1i), u_input.a.xy), _wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_0.a.x, ~354u, arg_0.a.x & u_input.b.x) & _wgslsmith_mod_u32(u_input.c.x, u_input.c.x), _wgslsmith_dot_vec4_u32(arg_0.a, vec4<u32>(1u, _wgslsmith_sub_u32(arg_0.a.x, u_input.b.x), ~u_input.b.x, ~1u))), global0.x, -vec3<i32>(u_input.d, func_2(), u_input.a.x) >> (select(arg_0.a.xyy, firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(60022u, 1u, arg_0.a.x), arg_0.a.xxx)), vec3<bool>(true, !global0.x, true)) % vec3<u32>(32u)), !select(global0.x, true, false || global0.x));
    let var_1 = Struct_2(arg_0.a);
    let var_2 = global0.x;
    let var_3 = Struct_2(~arg_0.a);
    global2 = array<vec3<f32>, 21>();
    return _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-364f + -502f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1000f)))))), -891f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1089f, -1812f, -1560f) + global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(15160u, 1u), 21u)]), global2[_wgslsmith_index_u32(0u, 21u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 1u, u_input.b.x, u_input.b.x) ^ ~vec4<u32>(1u, u_input.b.x, 0u, 24020u), vec4<u32>(~4084u, ~u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 3183u, 34288u, u_input.b.x), vec4<u32>(u_input.b.x, 31294u, 54620u, u_input.c.x)), _wgslsmith_mult_u32(u_input.c.x, u_input.c.x))));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(640f + -782f))))), -437f, 983f) * _wgslsmith_f_op_vec3_f32(func_1(Struct_2(var_0.a))));
    let var_2 = abs(u_input.c.x);
    let var_3 = ~(~vec3<u32>(max(2446u, var_0.a.x), var_2, _wgslsmith_sub_u32(_wgslsmith_div_u32(var_2, u_input.c.x), 58119u)));
    global2 = array<vec3<f32>, 21>();
    var var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_div_f32(929f, 1454f), var_1.x)));
    var var_5 = all(!vec3<bool>(global0.x, true || all(global0.yx), global0.x));
    let var_6 = any(!select(vec4<bool>(true, all(vec4<bool>(global0.x, true, global0.x, false)), any(vec4<bool>(true, true, true, false)), any(vec4<bool>(true, false, true, false))), select(vec4<bool>(global0.x, false, true, false), !vec4<bool>(global0.x, false, true, global0.x), select(vec4<bool>(false, true, false, true), vec4<bool>(false, global0.x, true, true), false)), any(!vec4<bool>(global0.x, global0.x, false, global0.x))));
    let var_7 = select(!(!(!(!vec4<bool>(global0.x, true, true, false)))), vec4<bool>(any(select(!vec4<bool>(true, var_6, var_6, true), vec4<bool>(false, var_6, true, global0.x), vec4<bool>(var_6, false, var_6, var_6))), false, !(all(vec3<bool>(true, var_6, global0.x)) || true), any(!(!vec4<bool>(var_6, global0.x, var_6, false)))), vec4<bool>(!var_6, true, true, !all(!vec4<bool>(true, global0.x, false, global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_clamp_u32(~u_input.c.x >> (1u % 32u), u_input.b.x, u_input.b.x), ~(~0u)), select(~(firstTrailingBit(vec4<i32>(0i, -37143i, 1i, u_input.a.x)) ^ (vec4<i32>(u_input.a.x, u_input.a.x, -58173i, 1i) >> (vec4<u32>(24131u, 0u, 39279u, 4294967295u) % vec4<u32>(32u)))), ~vec4<i32>(~u_input.a.x, u_input.d, u_input.a.x, func_2()), !((1147f > var_1.x) & true)), -(~(-49265i)), var_1.x);
}

