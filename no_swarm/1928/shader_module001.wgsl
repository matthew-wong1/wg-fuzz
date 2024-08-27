struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<bool>(false, true));

var<private> global1: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(-1487i), Struct_3(i32(-2147483648)), Struct_3(i32(-2147483648)), Struct_3(-25448i), Struct_3(1i), Struct_3(2147483647i), Struct_3(6843i), Struct_3(-1i), Struct_3(2147483647i), Struct_3(-9726i), Struct_3(26635i), Struct_3(0i), Struct_3(1i), Struct_3(2147483647i), Struct_3(2147483647i), Struct_3(491i), Struct_3(1i), Struct_3(i32(-2147483648)), Struct_3(-37388i), Struct_3(0i), Struct_3(-1i), Struct_3(-33097i), Struct_3(0i), Struct_3(0i), Struct_3(2147483647i));

var<private> global2: array<i32, 19>;

var<private> global3: Struct_1 = Struct_1(4294967295u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: vec2<bool>) -> vec4<u32> {
    let var_0 = firstTrailingBit(u_input.d);
    global3 = Struct_1(1u);
    var var_1 = select(max(_wgslsmith_div_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, -27105i, -88839i, u_input.c), vec4<i32>(25688i, u_input.d.x, 5024i, -1i)), ~(-vec4<i32>(-26178i, global2[_wgslsmith_index_u32(48675u, 19u)], -1i, -1i))), vec4<i32>(-(~(-1i)), -2147483647i, _wgslsmith_dot_vec4_i32(~vec4<i32>(-12437i, u_input.c, -1i, u_input.d.x), ~vec4<i32>(2147483647i, u_input.d.x, u_input.d.x, -17322i)), _wgslsmith_add_i32(i32(-1i) * -2147483647i, var_0.x >> (1u % 32u)))), abs(min(vec4<i32>(-u_input.d.x, 19925i, _wgslsmith_dot_vec4_i32(vec4<i32>(-34211i, 0i, -2147483647i, 37964i), vec4<i32>(-35225i, var_0.x, -35003i, -26552i)), _wgslsmith_add_i32(u_input.c, -2147483647i)), -_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 32238i, u_input.d.x, global2[_wgslsmith_index_u32(global3.a, 19u)]), vec4<i32>(global2[_wgslsmith_index_u32(0u, 19u)], 11162i, global2[_wgslsmith_index_u32(40773u, 19u)], u_input.d.x)))), select(select(select(select(vec4<bool>(arg_0.a.x, true, arg_0.a.x, arg_0.a.x), vec4<bool>(true, true, true, arg_3.x), vec4<bool>(arg_0.a.x, arg_0.a.x, arg_3.x, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(arg_0.a.x, false, global0.a.x, global0.a.x), arg_3.x), vec4<bool>(global0.a.x, global0.a.x, false, arg_3.x)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, global0.a.x), false), !vec4<bool>(global0.a.x, false, global0.a.x, false), arg_0.a.x), all(!arg_0.a)), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(arg_0.a.x, global0.a.x, false, true), false), vec4<bool>(global0.a.x, global0.a.x, false, false), true), select(!vec4<bool>(false, true, true, global0.a.x), !(!vec4<bool>(true, global0.a.x, true, arg_3.x)), global0.a.x)));
    var var_2 = !vec4<bool>(false, any(vec4<bool>(arg_0.a.x, arg_0.a.x, !arg_3.x, true)), arg_3.x, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-arg_2.x)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1204f * arg_1.x) - _wgslsmith_f_op_f32(trunc(arg_2.x))));
    let var_3 = Struct_2(!(!select(select(arg_0.a, arg_0.a, arg_0.a), global0.a, vec2<bool>(false, false))));
    return select(~vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, global3.a, 0u, 0u), ~vec4<u32>(global3.a, 19596u, u_input.a.x, u_input.a.x)), _wgslsmith_div_u32(16023u, u_input.b), ~(~1u), countOneBits(global3.a) & 3475u), ~(~(~(~vec4<u32>(37344u, u_input.e, u_input.a.x, global3.a)))), any(select(vec3<bool>(global0.a.x, all(vec4<bool>(false, global0.a.x, var_3.a.x, false)), true & var_2.x), var_2.zyy, false)));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = func_3(Struct_2(global0.a), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(abs(101f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1407f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1751f, 672f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1102f, _wgslsmith_f_op_f32(-1000f + -599f), _wgslsmith_f_op_f32(sign(-527f)))))), !global0.a);
    global0 = Struct_2(vec2<bool>(all(!vec3<bool>(global0.a.x, false, true)), false));
    let var_1 = 1u;
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-688f)), _wgslsmith_f_op_f32(step(210f, 282f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - 722f), _wgslsmith_f_op_f32(trunc(-3230f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + 1294f), any(select(select(vec4<bool>(true, false, true, global0.a.x), vec4<bool>(arg_2.x, true, false, arg_2.x), false), vec4<bool>(global0.a.x, arg_2.x, global0.a.x, true), arg_0.a <= 1i))))));
    global1 = array<Struct_3, 25>();
    return Struct_2(select(!arg_2.zz, vec2<bool>(arg_2.x, !global0.a.x), global0.a));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec3<f32>) -> bool {
    global1 = array<Struct_3, 25>();
    global2 = array<i32, 19>();
    global1 = array<Struct_3, 25>();
    let var_0 = vec3<u32>(42387u, ~4294967295u, u_input.b);
    global3 = Struct_1(countOneBits(~4294967295u));
    return any(select(arg_1.a, vec2<bool>(false, false), select(vec2<bool>(false, false), global0.a, false))) & !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x * 1000f)) <= arg_3.x);
}

fn func_1(arg_0: u32, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = func_4(_wgslsmith_clamp_i32(select(u_input.d.x, 9693i, any(vec3<bool>(global0.a.x, global0.a.x, global0.a.x))), -13685i, 1i), func_2(global1[_wgslsmith_index_u32((arg_0 >> (4294967295u % 32u)) | 30985u, 25u)], arg_1.zx, !(!vec3<bool>(global0.a.x, false, global0.a.x))), global1[_wgslsmith_index_u32(4949u, 25u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1610f, -279f), -180f, _wgslsmith_f_op_f32(trunc(1612f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1470f, -574f, 1032f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(911f, -824f, 962f))))) & !(any(select(vec4<bool>(false, false, global0.a.x, global0.a.x), vec4<bool>(false, global0.a.x, global0.a.x, global0.a.x), false)) || all(!vec3<bool>(true, global0.a.x, global0.a.x)));
    global2 = array<i32, 19>();
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(132f, 911f, -1020f, 680f))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-548f, 947f, -1541f, -509f), vec4<f32>(-1365f, -773f, 1000f, -105f))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(594f, var_1.x, 1000f, var_1.x));
    global0 = Struct_2(func_2(Struct_3(-u_input.d.x), arg_1.yx, !select(!vec3<bool>(false, global0.a.x, global0.a.x), vec3<bool>(global0.a.x, true, global0.a.x), select(vec3<bool>(true, global0.a.x, true), vec3<bool>(global0.a.x, global0.a.x, true), global0.a.x))).a);
    return func_2(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0, ~(~arg_1.x), global3.a) >> (arg_1.x % 32u), 25u)], arg_1.yy, select(!select(select(vec3<bool>(false, false, global0.a.x), vec3<bool>(global0.a.x, true, false), vec3<bool>(global0.a.x, global0.a.x, global0.a.x)), vec3<bool>(global0.a.x, false, true), vec3<bool>(global0.a.x, true, global0.a.x)), !select(select(vec3<bool>(global0.a.x, false, true), vec3<bool>(global0.a.x, false, global0.a.x), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(global0.a.x, false, true), vec3<bool>(global0.a.x, false, global0.a.x)), select(vec3<bool>(global0.a.x, false, global0.a.x), vec3<bool>(global0.a.x, global0.a.x, global0.a.x), true)), !select(vec3<bool>(global0.a.x, global0.a.x, global0.a.x), vec3<bool>(global0.a.x, global0.a.x, global0.a.x), !vec3<bool>(global0.a.x, global0.a.x, true))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<bool>) -> Struct_2 {
    var var_0 = func_2(global1[_wgslsmith_index_u32(global3.a, 25u)], countOneBits(u_input.a), vec3<bool>(arg_2.x, func_4(-1i, Struct_2(arg_2), Struct_3(0i), vec3<f32>(624f, -894f, -513f)) | select(all(vec4<bool>(false, arg_0.a.x, arg_0.a.x, true)), global0.a.x, func_1(global3.a, vec3<u32>(global3.a, u_input.b, 50673u)).a.x), true & arg_2.x));
    var var_1 = 2655f;
    return func_1(u_input.e << (_wgslsmith_add_u32(global3.a, _wgslsmith_mod_u32(~0u, 101200u & global3.a)) % 32u), firstTrailingBit(vec3<u32>(_wgslsmith_mod_u32(~u_input.a.x, u_input.e), _wgslsmith_dot_vec4_u32(~vec4<u32>(82677u, 59279u, u_input.e, 4294967295u), select(vec4<u32>(30025u, 0u, global3.a, 1u), vec4<u32>(1u, u_input.a.x, 4294967295u, u_input.a.x), vec4<bool>(arg_0.a.x, false, true, arg_0.a.x))), global3.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 19>();
    let var_0 = -1112f;
    global1 = array<Struct_3, 25>();
    var var_1 = vec2<u32>(4294967295u, global3.a);
    global2 = array<i32, 19>();
    global0 = func_5(func_1(u_input.b, _wgslsmith_sub_vec3_u32(vec3<u32>(global3.a, 0u, 4294967295u), vec3<u32>(27341u, 7081u, 84922u)) & _wgslsmith_add_vec3_u32(~vec3<u32>(var_1.x, global3.a, var_1.x), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, 62244u), vec3<u32>(1u, u_input.e, 1u)))), Struct_3(countOneBits(1i & global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(65834u, u_input.b), 19u)])), select(global0.a, select(vec2<bool>(u_input.a.x != 1u, false), !(!global0.a), select(global0.a, vec2<bool>(true, true), true)), !select(vec2<bool>(global0.a.x, true), !global0.a, select(false, global0.a.x, global0.a.x))));
    var var_2 = func_2(global1[_wgslsmith_index_u32(~(~(~_wgslsmith_div_u32(global3.a, 20857u))), 25u)], ~_wgslsmith_add_vec2_u32(~(u_input.a >> (u_input.a % vec2<u32>(32u))), vec2<u32>(firstLeadingBit(global3.a), ~30016u)), select(vec3<bool>(true, global0.a.x, !func_2(global1[_wgslsmith_index_u32(48901u, 25u)], u_input.a, vec3<bool>(false, global0.a.x, global0.a.x)).a.x), vec3<bool>(global0.a.x, global0.a.x, global0.a.x), true));
    let var_3 = select(!select(!(!vec3<bool>(global0.a.x, false, true)), vec3<bool>(true, false, any(vec4<bool>(var_2.a.x, global0.a.x, false, true))), var_2.a.x), !vec3<bool>(~u_input.b < ~global3.a, !global0.a.x, all(vec3<bool>(true, true, true))), vec3<bool>(global0.a.x, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.c, ~(global2[_wgslsmith_index_u32(countOneBits(34980u), 19u)] & ~(-2147483647i)), -_wgslsmith_dot_vec2_i32(~u_input.d, _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d.x, global2[_wgslsmith_index_u32(0u, 19u)]), vec2<i32>(1i, -5706i)))), ~1i, abs(u_input.a << (firstLeadingBit(~u_input.a) % vec2<u32>(32u))), -651f, -23933i);
}

