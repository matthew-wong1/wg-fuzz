struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
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

var<private> global0: array<bool, 28> = array<bool, 28>(false, true, false, false, true, true, false, false, true, true, false, false, false, true, false, false, true, true, true, false, true, true, true, true, false, true, true, false);

var<private> global1: array<bool, 10>;

var<private> global2: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<i32>) -> vec4<i32> {
    global0 = array<bool, 28>();
    let var_0 = u_input.a.x;
    var var_1 = abs(601u) << ((1u | firstTrailingBit(4294967295u)) % 32u);
    global1 = array<bool, 10>();
    var var_2 = !select(vec4<bool>(any(global2[_wgslsmith_index_u32(4294967295u, 28u)]) && !global1[_wgslsmith_index_u32(14832u, 10u)], !any(vec3<bool>(global0[_wgslsmith_index_u32(1u, 28u)], true, global1[_wgslsmith_index_u32(4294967295u, 10u)])), any(!vec2<bool>(global0[_wgslsmith_index_u32(70341u, 28u)], true)), true), select(!global2[_wgslsmith_index_u32(~20094u, 28u)], vec4<bool>(all(vec2<bool>(global1[_wgslsmith_index_u32(0u, 10u)], false)), true, any(vec2<bool>(global1[_wgslsmith_index_u32(18178u, 10u)], false)), false), vec4<bool>(!global1[_wgslsmith_index_u32(1338u, 10u)], any(vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 10u)])), !global1[_wgslsmith_index_u32(120973u, 10u)], true)), select(vec4<bool>(all(vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(0u, 10u)])), global0[_wgslsmith_index_u32(0u, 28u)], any(vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 10u)])), true), select(!vec4<bool>(global1[_wgslsmith_index_u32(25948u, 10u)], global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(66778u, 10u)], global0[_wgslsmith_index_u32(66369u, 28u)]), vec4<bool>(false, true, global1[_wgslsmith_index_u32(32102u, 10u)], false), arg_0.x > -24770i), any(!vec3<bool>(global0[_wgslsmith_index_u32(13404u, 28u)], true, global1[_wgslsmith_index_u32(0u, 10u)]))));
    return -arg_0;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: Struct_3) -> Struct_1 {
    let var_0 = -(~vec4<i32>(arg_2.e.b.x, 2147483647i, arg_1.c.b.x, arg_2.e.b.x & -11540i));
    var var_1 = select(func_3(vec4<i32>(-arg_1.c.b.x, -2147483647i ^ arg_1.c.b.x, i32(-1i) * -1i, -6256i)), abs(-vec4<i32>(var_0.x, -3571i, u_input.a.x, -2147483647i)), arg_2.d) ^ countOneBits(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), max(vec2<i32>(19800i, -1i), u_input.a.zy)), arg_2.e.b.x, ~arg_1.c.b.x, 0i));
    let var_2 = -1000f;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) - _wgslsmith_f_op_f32(abs(-707f)))))) - arg_2.c.x);
    var var_4 = countOneBits(arg_0.wyw);
    return Struct_1(select(any(arg_2.d.zxw), all(!(!arg_2.d)), true), -arg_2.e.b);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: i32) -> bool {
    var var_0 = ~(~select(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(9855u, 1u, 53813u, 69484u)), vec4<u32>(63446u, 4294967295u, 0u, 0u)), reverseBits(_wgslsmith_mod_u32(0u, 32017u)), false));
    global0 = array<bool, 28>();
    let var_1 = Struct_4(-1207f, ~reverseBits((0u << (0u % 32u)) & firstTrailingBit(1u)), arg_1.b, !select(select(!arg_0.xx, !vec2<bool>(arg_1.a.a, arg_0.x), false), !select(arg_0.xz, arg_0.yw, true), !select(arg_0.yw, vec2<bool>(arg_0.x, global0[_wgslsmith_index_u32(4294967295u, 28u)]), vec2<bool>(true, arg_1.a.a))), select(vec2<bool>(false, true), vec2<bool>(!(!global1[_wgslsmith_index_u32(15071u, 10u)]), true), true & any(arg_0.xyy)));
    var_0 = countOneBits(countOneBits(~37271u));
    var_0 = reverseBits(min((firstTrailingBit(1519u) & ~var_1.b) >> (~(59089u & var_1.b) % 32u), _wgslsmith_mult_u32(var_1.b, var_1.b)));
    return all(arg_0.zxz);
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: i32, arg_3: vec3<u32>) -> Struct_3 {
    let var_0 = !select(global2[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(~32146u, firstTrailingBit(arg_3.x))), 28u)], !select(select(global2[_wgslsmith_index_u32(arg_3.x, 28u)], vec4<bool>(global0[_wgslsmith_index_u32(48389u, 28u)], false, arg_1, true), global2[_wgslsmith_index_u32(arg_3.x, 28u)]), vec4<bool>(false, true, true, true), vec4<bool>(false, global0[_wgslsmith_index_u32(arg_3.x, 28u)], global1[_wgslsmith_index_u32(4294967295u, 10u)], false)), func_4(global2[_wgslsmith_index_u32(~(~arg_3.x), 28u)], Struct_2(Struct_1(global0[_wgslsmith_index_u32(4294967295u, 28u)], vec2<i32>(-2147483647i, u_input.a.x)), func_2(vec4<u32>(arg_3.x, arg_3.x, 21633u, 4294967295u), Struct_4(-432f, 0u, Struct_1(true, vec2<i32>(-1i, arg_2)), vec2<bool>(arg_1, global1[_wgslsmith_index_u32(1u, 10u)]), vec2<bool>(global1[_wgslsmith_index_u32(74818u, 10u)], global0[_wgslsmith_index_u32(23619u, 28u)])), Struct_3(arg_0, vec2<u32>(arg_3.x, 7321u), vec2<f32>(arg_0.x, 2090f), global2[_wgslsmith_index_u32(arg_3.x, 28u)], Struct_1(true, vec2<i32>(0i, -45010i)))), vec3<i32>(0i, 1i, 13563i)), ~(-vec3<i32>(2147483647i, 17i, 0i)), 1i));
    var var_1 = vec4<u32>(~((arg_3.x >> (max(arg_3.x, arg_3.x) % 32u)) << (~arg_3.x % 32u)), ~(~110147u), firstTrailingBit(arg_3.x), abs(arg_3.x));
    let var_2 = Struct_3(vec3<f32>(-2457f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -249f)), arg_0.x), ~(~arg_3.yy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-364f, 1000f))) + vec2<f32>(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(-291f * 155f))) - arg_0.zx), vec4<bool>(!all(!vec4<bool>(global0[_wgslsmith_index_u32(arg_3.x, 28u)], true, true, global0[_wgslsmith_index_u32(1u, 28u)])), true, any(select(var_0.ywy, var_0.yzw, all(var_0.xz))), var_1.x > 4095u), Struct_1(all(vec4<bool>(!arg_1, any(vec3<bool>(var_0.x, false, arg_1)), arg_0.x <= -331f, true)), u_input.a.xy));
    global1 = array<bool, 10>();
    var_1 = max(((_wgslsmith_div_vec4_u32(vec4<u32>(33793u, var_1.x, 45550u, arg_3.x), vec4<u32>(var_1.x, 1u, var_2.b.x, var_2.b.x)) & firstTrailingBit(vec4<u32>(var_2.b.x, var_1.x, 3979u, 6499u))) >> (abs(~vec4<u32>(4294967295u, var_2.b.x, var_2.b.x, var_2.b.x)) % vec4<u32>(32u))) >> (max(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(var_2.b.x, arg_3.x, 1u, 4294967295u)), reverseBits(vec4<u32>(var_2.b.x, var_1.x, 43849u, var_1.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 5398u, var_2.b.x, 17340u), vec4<u32>(0u, 1u, 56972u, var_2.b.x), vec4<u32>(4294967295u, 52917u, 32362u, 1150u))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_3.x, arg_3.x, 0u, 1u), vec4<u32>(arg_3.x, 23817u, var_2.b.x, 2688u))) % vec4<u32>(32u)), ~_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(var_2.b.x, var_2.b.x, var_1.x, 12904u) & vec4<u32>(2645u, arg_3.x, arg_3.x, 47649u)), select(vec4<u32>(arg_3.x, arg_3.x, 25469u, 4294967295u), firstTrailingBit(vec4<u32>(var_1.x, 13671u, 71675u, var_1.x)), !global2[_wgslsmith_index_u32(24566u, 28u)])));
    return Struct_3(_wgslsmith_f_op_vec3_f32(max(var_2.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-530f, 1000f, var_2.a.x)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.a.x, arg_0.x, -496f), _wgslsmith_f_op_vec3_f32(-var_2.a), any(vec4<bool>(false, arg_1, true, false))))))), var_1.zy, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.x, _wgslsmith_f_op_f32(-arg_0.x)) + vec2<f32>(_wgslsmith_f_op_f32(step(var_2.c.x, var_2.c.x)), -577f)), vec4<bool>(global1[_wgslsmith_index_u32(countOneBits(countOneBits(arg_3.x)) >> (~57186u % 32u), 10u)], all(vec4<bool>(global0[_wgslsmith_index_u32(countOneBits(86802u), 28u)], true, global0[_wgslsmith_index_u32(54383u, 28u)], false)), true, var_0.x), Struct_1(global1[_wgslsmith_index_u32(1u, 10u)], -vec2<i32>(reverseBits(arg_2), ~u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 28>();
    let var_0 = any(!global2[_wgslsmith_index_u32(~8521u, 28u)]);
    let var_1 = func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(450f, 379f, -1126f)))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-294f, 172f, 113f) + vec3<f32>(-1375f, 1634f, -689f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-783f, -1000f, -467f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1551f, 206f, 211f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1241f, 264f, 1000f))))), !(!(!global1[_wgslsmith_index_u32(1u, 10u)]) && false), u_input.a.x, firstTrailingBit(~min(vec3<u32>(54343u, 5781u, 32913u), vec3<u32>(1u, 1u, 1u))) << (~abs(~vec3<u32>(1u, 39015u, 4294967295u)) % vec3<u32>(32u)));
    let var_2 = -7911i;
    global2 = array<vec4<bool>, 28>();
    var var_3 = var_1.a.x;
    var var_4 = all(select(!var_1.d.zx, !func_1(var_1.a, var_0, var_2, vec3<u32>(59253u, var_1.b.x, 1u)).d.xw, !select(var_1.d.yx, vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 10u)]), var_0))) || var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-2024f)), -1300f), var_1.a.yy));
}

