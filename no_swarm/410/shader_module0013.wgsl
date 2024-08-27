struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec4<i32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_3,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(16442u, 35966u, 0u);

var<private> global1: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(1u, 0u, 37324u), vec3<u32>(57944u, 4294967295u, 55681u), vec3<u32>(1u, 0u, 36034u), vec3<u32>(139848u, 8589u, 1u), vec3<u32>(1u, 0u, 18416u), vec3<u32>(66082u, 4294967295u, 50369u), vec3<u32>(28979u, 0u, 4294967295u), vec3<u32>(0u, 24629u, 0u), vec3<u32>(46307u, 18632u, 28923u), vec3<u32>(0u, 0u, 10302u), vec3<u32>(1u, 33671u, 0u), vec3<u32>(68004u, 1u, 19875u), vec3<u32>(30653u, 1u, 40275u));

var<private> global2: array<bool, 8> = array<bool, 8>(false, true, false, true, false, false, true, false);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: f32) -> vec2<i32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1)) * _wgslsmith_f_op_f32(arg_1 - arg_1)))), arg_1, -115f);
    let var_1 = all(vec2<bool>(true, global2[_wgslsmith_index_u32(~(~global0.x) << (min(_wgslsmith_mod_u32(global0.x, global0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(85233u, global0.x, 33467u, 61851u), vec4<u32>(17262u, 77813u, 18908u, global0.x))) % 32u), 8u)]));
    let var_2 = var_1 || (_wgslsmith_add_u32(_wgslsmith_sub_u32(30565u, global0.x), global0.x) < 1u);
    return -_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(arg_0, -15205i)) >> (~vec2<u32>(42862u, 1u) % vec2<u32>(32u)), vec2<i32>(u_input.a, -54803i) & _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, arg_0), vec2<i32>(17312i, -3205i))), _wgslsmith_clamp_vec2_i32(-abs(vec2<i32>(1i, u_input.a)), min(-vec2<i32>(u_input.a, 18873i), select(vec2<i32>(22435i, arg_0), vec2<i32>(-2147483647i, u_input.a), global2[_wgslsmith_index_u32(global0.x, 8u)])), max(countOneBits(vec2<i32>(u_input.a, arg_0)), vec2<i32>(-2147483647i, arg_0))), ~vec2<i32>(max(arg_0, -2374i), arg_0));
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_3) -> f32 {
    global2 = array<bool, 8>();
    var var_0 = Struct_4(arg_2, false, arg_2, true);
    var var_1 = Struct_3(u_input.a, arg_2.b, select(var_0.a.c, vec4<i32>(-1i, 5892i, arg_2.a, ~_wgslsmith_mod_i32(var_0.c.a, 42164i)), !select(!vec4<bool>(true, var_0.c.b.d.b.x, true, arg_2.d), vec4<bool>(var_0.a.d, false, var_0.a.d, false), vec4<bool>(global2[_wgslsmith_index_u32(arg_0.x, 8u)], true, arg_2.b.d.b.x, false))), !(1i > (-2147483647i & var_0.a.a)) && true);
    global2 = array<bool, 8>();
    var var_2 = abs(arg_0.zy);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.b.a.x), arg_2.b.e.c));
}

fn func_2() -> vec3<f32> {
    let var_0 = vec2<i32>(24352i, _wgslsmith_div_i32(15595i, -399i));
    global1 = array<vec3<u32>, 13>();
    let var_1 = global0.xx;
    global2 = array<bool, 8>();
    var var_2 = var_0;
    return _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(ceil(-335f)), _wgslsmith_f_op_f32(func_4(~global1[_wgslsmith_index_u32(4294967295u, 13u)], _wgslsmith_dot_vec2_i32(vec2<i32>(692i, var_2.x), func_3(var_0.x, 623f)), Struct_3(var_0.x, Struct_2(vec3<f32>(-264f, 1053f, -287f), Struct_1(-3311f, vec2<bool>(true, global2[_wgslsmith_index_u32(var_1.x, 8u)]), -293f, vec4<f32>(1000f, 1406f, -367f, 1972f)), 1i, Struct_1(1000f, vec2<bool>(global2[_wgslsmith_index_u32(var_1.x, 8u)], true), -825f, vec4<f32>(-923f, -1000f, 190f, 1418f)), Struct_1(1060f, vec2<bool>(global2[_wgslsmith_index_u32(global0.x, 8u)], global2[_wgslsmith_index_u32(global0.x, 8u)]), 1038f, vec4<f32>(344f, -1657f, 2729f, -103f))), -vec4<i32>(-26529i, var_0.x, var_0.x, 15445i), true || global2[_wgslsmith_index_u32(30338u, 8u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2556f, 2645f)) - -1291f)))));
}

fn func_1() -> StorageBuffer {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) - vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(global1[_wgslsmith_index_u32(30145u, 13u)], 1i, Struct_3(-11427i, Struct_2(vec3<f32>(-1456f, -1000f, -329f), Struct_1(1481f, vec2<bool>(false, global2[_wgslsmith_index_u32(global0.x, 8u)]), 857f, vec4<f32>(1010f, -666f, -1291f, -800f)), 1i, Struct_1(-323f, vec2<bool>(global2[_wgslsmith_index_u32(global0.x, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)]), -489f, vec4<f32>(1802f, -1000f, 1000f, 1000f)), Struct_1(-1419f, vec2<bool>(true, true), -218f, vec4<f32>(691f, 333f, -275f, 1131f))), vec4<i32>(-22895i, u_input.a, u_input.a, -6974i), false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec3<u32>(global0.x, global0.x, global0.x), 0i, Struct_3(u_input.a, Struct_2(vec3<f32>(-800f, -390f, -665f), Struct_1(136f, vec2<bool>(global2[_wgslsmith_index_u32(global0.x, 8u)], false), -109f, vec4<f32>(-1913f, -1209f, -183f, 1724f)), -2147483647i, Struct_1(-131f, vec2<bool>(global2[_wgslsmith_index_u32(1u, 8u)], true), 777f, vec4<f32>(-1096f, 1617f, -282f, -721f)), Struct_1(-1675f, vec2<bool>(true, false), 335f, vec4<f32>(-191f, 274f, -841f, -853f))), vec4<i32>(u_input.a, u_input.a, -65194i, 1i), global2[_wgslsmith_index_u32(global0.x, 8u)]))) + _wgslsmith_f_op_f32(-343f - 2398f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1422f, _wgslsmith_f_op_f32(-111f * -247f), all(vec2<bool>(global2[_wgslsmith_index_u32(23439u, 8u)], true)))))), !(!vec2<bool>(global2[_wgslsmith_index_u32(global0.x, 8u)], global2[_wgslsmith_index_u32(global0.x, 8u)])), _wgslsmith_f_op_f32(373f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-129f * -126f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2079f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -699f))), -802f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-694f)) - -688f))), u_input.a, Struct_1(-1571f, vec2<bool>(!global2[_wgslsmith_index_u32(global0.x, 8u)], -933f > _wgslsmith_f_op_f32(step(302f, 1416f))), _wgslsmith_div_f32(950f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(979f, 1312f))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-336f)))), -876f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -193f)), 238f)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(111f)), _wgslsmith_f_op_f32(ceil(590f))))), !(!select(vec2<bool>(false, global2[_wgslsmith_index_u32(52676u, 8u)]), vec2<bool>(global2[_wgslsmith_index_u32(global0.x, 8u)], true), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-2778f, -109f, false))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -691f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1000f)), -1826f, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, 4294967295u), vec4<u32>(26623u, 32266u, global0.x, global0.x)), 8u)])), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1000f, -1513f, true)))), _wgslsmith_f_op_f32(abs(1f)))));
    global2 = array<bool, 8>();
    global0 = global1[_wgslsmith_index_u32(1u, 13u)] | global1[_wgslsmith_index_u32(~0u, 13u)];
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_0.d.d.zwy))), Struct_1(-399f, select(select(!var_0.b.b, select(vec2<bool>(var_0.e.b.x, true), var_0.b.b, false), !vec2<bool>(global2[_wgslsmith_index_u32(global0.x, 8u)], var_0.d.b.x)), !var_0.e.b, vec2<bool>(all(vec3<bool>(global2[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)], global2[_wgslsmith_index_u32(global0.x, 8u)])), true)), _wgslsmith_div_f32(-1689f, -489f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a.x, var_0.a.x, -380f, _wgslsmith_f_op_f32(var_0.d.c + var_0.e.d.x)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.d.x, var_0.e.d.x, -1136f, 1401f) + var_0.e.d)))))), ~_wgslsmith_dot_vec2_i32(-(~vec2<i32>(u_input.a, -1i)), ~(~vec2<i32>(1i, var_0.c))), var_0.e, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.d.a))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), !select(vec2<bool>(var_0.b.b.x, true), !var_0.e.b, true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -475f), 562f)))), vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.d.d.x)), -285f, -1979f, var_0.e.a)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.d.x) - 846f))) - var_0.d.c);
    return StorageBuffer(vec2<u32>(firstTrailingBit(4294967295u), 42388u), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(513f + var_1))), -990f))), 0i, firstTrailingBit(~firstLeadingBit(vec4<i32>(1i, -33774i, 37149i, u_input.a))), _wgslsmith_f_op_f32(-var_1));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

