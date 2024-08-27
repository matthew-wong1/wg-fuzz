struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: Struct_1,
    d: vec3<i32>,
    e: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec3<f32>, 6>;

var<private> global2: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> u32 {
    global1 = array<vec3<f32>, 6>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(arg_0.c.yy * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.xy) + arg_0.c.yx))), -1015f, arg_0, ~(firstTrailingBit(vec3<i32>(u_input.a, u_input.d.x, 33558i)) ^ (vec3<i32>(u_input.d.x, 1i, u_input.d.x) & vec3<i32>(1i, 0i, u_input.d.x))) ^ -(~(~vec3<i32>(u_input.a, u_input.a, u_input.a))), 0u);
    let var_1 = vec3<bool>(all(!vec3<bool>(true, var_0.c.b, arg_0.b)) & var_0.c.b, all(select(select(vec4<bool>(true, var_0.c.b, global0.x, false), vec4<bool>(global0.x, true, true, var_0.c.b), global0.x), vec4<bool>(false, var_0.c.b, true, false), !vec4<bool>(true, global0.x, true, global0.x))) | false, !(true | !arg_0.b));
    global2 = var_1;
    var var_2 = Struct_3(reverseBits(_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 4294967295u, u_input.b.x, 1u), ~vec4<u32>(u_input.b.x, var_0.e, 1u, 45556u) ^ min(vec4<u32>(u_input.b.x, var_0.e, 1u, 1u), vec4<u32>(u_input.b.x, 1u, 1u, 0u)), ~(~vec4<u32>(u_input.c, 45378u, 12355u, 16402u)))), var_0.c, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, 208f, arg_0.c.x, -553f)))), all(var_1.yx), var_0.c.c), arg_0);
    return ~0u;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_3) -> vec4<f32> {
    var var_0 = Struct_1(vec4<f32>(arg_2.c.c.x, arg_2.c.a.x, _wgslsmith_f_op_f32(select(909f, 681f, !all(vec2<bool>(false, false)))), arg_2.b.c.x), global2.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c.c.x, _wgslsmith_f_op_f32(-457f * -417f), -809f)));
    global0 = global2.xx;
    return vec4<f32>(-351f, 1024f, _wgslsmith_f_op_f32(f32(-1f) * -1074f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(arg_2.d.c.x, var_0.a.x)), _wgslsmith_f_op_f32(floor(arg_1.b.a.x)))));
}

fn func_2() -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_4(u_input.b, Struct_3(~(~vec4<u32>(37402u, u_input.b.x, 13701u, 37001u)), Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-523f, -262f, -2397f, 1000f))), true, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1830f, -918f, 175f)))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-681f, 1244f, -204f, -717f) + vec4<f32>(-1000f, 1165f, 1987f, -343f)), true || global0.x, _wgslsmith_f_op_vec3_f32(select(global1[_wgslsmith_index_u32(u_input.b.x, 6u)], vec3<f32>(1490f, -562f, -664f), global0.x))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 224f, -564f, 387f)), false, vec3<f32>(-314f, -268f, 855f))), Struct_3(select(vec4<u32>(1u, 4702u, 0u, 53220u), vec4<u32>(u_input.c, 65963u, 0u, u_input.c), vec4<bool>(false, global0.x, true, true)), Struct_1(vec4<f32>(-1313f, 1045f, -274f, -2454f), !global2.x, global1[_wgslsmith_index_u32(func_3(Struct_1(vec4<f32>(1000f, -1461f, 1059f, 161f), false, vec3<f32>(433f, -519f, -1057f))), 6u)]), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(774f, -615f, -1187f, 1566f) + vec4<f32>(568f, -949f, 634f, -1062f)), all(vec2<bool>(global2.x, true)), vec3<f32>(1456f, -1858f, 2588f)), Struct_1(vec4<f32>(-1787f, -1030f, -238f, 739f), true, _wgslsmith_f_op_vec3_f32(vec3<f32>(193f, -1420f, -1000f) - vec3<f32>(-2441f, -1330f, -750f)))))), global2.x, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, abs(u_input.c >> (u_input.c % 32u)), ~4294967295u), 6u)]);
    return global0.x & any(!(!(!vec4<bool>(global0.x, true, true, true))));
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: vec4<u32>) -> f32 {
    var var_0 = Struct_1(arg_1.d.a, u_input.a >= -47219i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(111f, _wgslsmith_f_op_f32(round(761f))), _wgslsmith_f_op_f32(-arg_1.c.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1657f, -376f), _wgslsmith_f_op_f32(arg_1.b.c.x - 803f), func_2())))));
    global1 = array<vec3<f32>, 6>();
    return arg_1.b.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, u_input.a), u_input.d);
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(1000f - -1000f), Struct_3(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), Struct_1(vec4<f32>(1139f, -343f, 1000f, -1226f), true, vec3<f32>(1267f, -931f, -134f)), Struct_1(vec4<f32>(-638f, -1088f, -1699f, 1353f), false, vec3<f32>(-715f, 948f, 304f)), Struct_1(vec4<f32>(-110f, -520f, 1066f, 720f), true, global1[_wgslsmith_index_u32(1u, 6u)])), countOneBits(vec4<u32>(u_input.b.x, 12342u, u_input.b.x, 95684u)))))), 229f))));
    var var_2 = -222f;
    let var_3 = Struct_3(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.b.x | u_input.b.x, 1u), ~22450u, u_input.b.x, u_input.b.x), ~vec4<u32>(u_input.b.x, ~u_input.c, ~u_input.c, max(u_input.c, 0u))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(440f * 1049f), -2763f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(732f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-865f, 197f))) > 1f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, -631f, -394f))) + _wgslsmith_f_op_vec3_f32(trunc(global1[_wgslsmith_index_u32(0u, 6u)]))))), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(665f, -1132f, 514f, 584f))), global2.x || true)), select(global2.x, 13824i == (2147483647i << (u_input.c % 32u)), true), _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(abs(~1u), 6u)] - global1[_wgslsmith_index_u32(1u, 6u)])), Struct_1(_wgslsmith_f_op_vec4_f32(func_4(reverseBits(vec2<u32>(105900u, u_input.b.x)), Struct_3(~vec4<u32>(3897u, u_input.c, 19238u, u_input.b.x), Struct_1(vec4<f32>(1510f, -1000f, -955f, -1075f), global2.x, vec3<f32>(1000f, -962f, 521f)), Struct_1(vec4<f32>(-1529f, 1091f, -1406f, -306f), global0.x, global1[_wgslsmith_index_u32(79791u, 6u)]), Struct_1(vec4<f32>(331f, -636f, 1690f, -1689f), false, vec3<f32>(-154f, -468f, 736f))), Struct_3(vec4<u32>(15475u, 13768u, u_input.c, 1057u) ^ vec4<u32>(u_input.c, u_input.b.x, u_input.b.x, 4294967295u), Struct_1(vec4<f32>(-136f, 128f, 1068f, 282f), true, vec3<f32>(-646f, -345f, -2494f)), Struct_1(vec4<f32>(1000f, -505f, -1325f, 1416f), false, vec3<f32>(-861f, 826f, 544f)), Struct_1(vec4<f32>(-414f, 1000f, -612f, 1399f), global2.x, vec3<f32>(-127f, 1000f, -762f))))), true, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(142f, -1000f, global2.x)), _wgslsmith_f_op_f32(abs(158f)), -1000f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, 607f, 141f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-379f, -695f, 709f) + global1[_wgslsmith_index_u32(13187u, 6u)])))));
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3.d.a), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(793f, 465f, -858f, -339f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c.a.x, 1000f, 118f, var_3.d.a.x)) * var_3.b.a), !select(!vec4<bool>(false, false, false, global2.x), vec4<bool>(true, global2.x, global0.x, true), global0.x))), global0.x, vec3<f32>(var_3.c.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.d.a.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-308f, var_3.b.c.x)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_3.d.a.x, var_3.c.a.x), 112f))))));
    var_1 = 1124f;
    let var_5 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(1u, select(79110u, _wgslsmith_add_u32(var_3.a.x, u_input.b.x) << (_wgslsmith_clamp_u32(32504u, 30585u, u_input.c) % 32u), select(true, any(vec3<bool>(global0.x, true, false)), false))), -max(select(-36629i, var_5, all(vec4<bool>(global0.x, true, var_4.b, var_3.c.b))), var_0), countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.d.x) >> (u_input.b % vec2<u32>(32u)), ~u_input.d)), var_3.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.b.a.x, -1951f, 536f), _wgslsmith_f_op_vec3_f32(sign(global1[_wgslsmith_index_u32(var_3.a.x, 6u)])), !global0.x)))));
}

