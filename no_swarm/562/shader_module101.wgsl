struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<f32>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec4<u32>,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 25> = array<vec4<bool>, 25>(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true));

var<private> global1: u32 = 1u;

var<private> global2: array<u32, 23> = array<u32, 23>(1u, 8571u, 4294967295u, 0u, 8023u, 32202u, 1u, 0u, 1u, 30465u, 23303u, 58016u, 17103u, 57250u, 40023u, 28401u, 63656u, 1u, 4294967295u, 48292u, 10199u, 0u, 7120u);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>) -> vec3<f32> {
    global1 = firstLeadingBit(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_0, _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(arg_0, vec3<u32>(arg_0.x, global2[_wgslsmith_index_u32(10271u, 23u)], u_input.a)), ~(~vec3<u32>(3941u, global2[_wgslsmith_index_u32(0u, 23u)], arg_0.x)))), 23u)]);
    global1 = _wgslsmith_add_u32(arg_0.x, ~_wgslsmith_sub_u32(~_wgslsmith_div_u32(73614u, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, global2[_wgslsmith_index_u32(4294967295u, 23u)]), firstLeadingBit(arg_0.xx))));
    var var_0 = Struct_5(max(vec3<u32>(~(global2[_wgslsmith_index_u32(59501u, 23u)] ^ 6299u), _wgslsmith_dot_vec2_u32(arg_0.xx, arg_0.yx), u_input.a), arg_0));
    var var_1 = -countOneBits(-u_input.b.x);
    var var_2 = true;
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -262f, 795f))))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(635f, 395f, -275f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<f32>) -> Struct_4 {
    global2 = array<u32, 23>();
    global1 = u_input.a;
    let var_0 = select(arg_0, arg_0, !(!((arg_0.x > global2[_wgslsmith_index_u32(u_input.a, 23u)]) | true)));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -391f);
    let var_2 = 1f;
    return Struct_4(Struct_2(u_input.b.x, Struct_1(select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)))), _wgslsmith_f_op_vec3_f32(func_3(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, arg_0.x), vec2<u32>(1u, var_0.x)), countOneBits(43874u), 0u))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x + var_1), _wgslsmith_f_op_f32(var_2 + var_1)))), select(vec4<bool>(false, false, true, true), global0[_wgslsmith_index_u32(~(~92591u), 25u)], vec4<bool>(false, all(vec3<bool>(false, true, false)), true, true))), select(!vec3<bool>(all(vec3<bool>(true, false, true)), u_input.c != 2147483647i, true), select(vec3<bool>(true, var_2 != var_1, true), select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false)), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, var_1 < 1579f), vec3<bool>(true, select(true, false, true), true), true)), ~(~(~vec4<u32>(u_input.a, arg_0.x, var_0.x, u_input.a))) & var_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(922f, arg_1.x, -277f, var_1), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, var_2, -158f, arg_1.x) + vec4<f32>(-765f, var_2, var_1, -1000f))), vec4<f32>(_wgslsmith_f_op_f32(sign(var_2)), -244f, _wgslsmith_f_op_f32(-804f * 772f), _wgslsmith_f_op_f32(f32(-1f) * -2038f))))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1, 645f))));
}

fn func_1(arg_0: f32) -> vec2<bool> {
    global0 = array<vec4<bool>, 25>();
    let var_0 = func_2(~vec4<u32>(~_wgslsmith_mod_u32(10679u, 4294967295u), ~(~u_input.a), (global2[_wgslsmith_index_u32(0u, 23u)] | 1u) >> (u_input.a % 32u), 40150u), vec3<f32>(770f, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1373f)))));
    var var_1 = reverseBits(~_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(abs(var_0.c.xw), ~var_0.c.xz), vec2<u32>(~7591u, ~1u)));
    var_1 = func_2(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(firstTrailingBit(countOneBits(var_0.c)), _wgslsmith_mult_vec4_u32(~var_0.c, select(var_0.c, vec4<u32>(var_0.c.x, global2[_wgslsmith_index_u32(0u, 23u)], 21032u, 1199u), vec4<bool>(true, true, true, var_0.a.b.a.x)))), vec4<u32>(_wgslsmith_sub_u32(~var_1.x, _wgslsmith_add_u32(var_0.c.x, u_input.a)), 1u, 1u, 1u)), vec3<f32>(arg_0, _wgslsmith_f_op_f32(abs(func_2(var_0.c, var_0.a.c).d.x)), arg_0)).c.yw;
    global1 = 10996u;
    return var_0.a.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(vec2<bool>(true, any(vec4<bool>(true, false, true, true))), !vec2<bool>(u_input.a >= 19234u, false), func_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1000f, -301f)))))));
    var var_1 = reverseBits(56661i);
    var var_2 = select(firstTrailingBit(max(u_input.b.zx, vec2<i32>(u_input.c, u_input.b.x)) ^ _wgslsmith_clamp_vec2_i32(u_input.b.xy, vec2<i32>(2147483647i, -54094i), u_input.b.xz)), -(~u_input.b.yx), !func_1(2241f).x | false) & u_input.b.zy;
    global1 = _wgslsmith_dot_vec3_u32(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, global2[_wgslsmith_index_u32(26996u, 23u)], 31469u), vec3<u32>(u_input.a, 0u, u_input.a))) >> (~reverseBits(vec3<u32>(u_input.a, 1u, u_input.a)) % vec3<u32>(32u)), ~_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(0u, 23u)], global2[_wgslsmith_index_u32(16230u, 23u)], 0u), ~vec3<u32>(54164u, 75515u, u_input.a)), (vec3<u32>(40463u, u_input.a, global2[_wgslsmith_index_u32(u_input.a, 23u)]) & vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(33095u, 23u)], 23u)], 23u)], 6909u, global2[_wgslsmith_index_u32(114u, 23u)])) >> ((vec3<u32>(1u, 50922u, 9707u) << (vec3<u32>(48461u, 64942u, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u))));
    var var_3 = vec2<u32>(~min(1u, ~global2[_wgslsmith_index_u32(14119u, 23u)]), _wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(20706u, u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22450u, 23u)], 23u)], u_input.a)), vec4<u32>(1u, ~54314u, ~78099u, reverseBits(global2[_wgslsmith_index_u32(u_input.a, 23u)])))) >> (abs(~_wgslsmith_mult_vec2_u32(~vec2<u32>(global2[_wgslsmith_index_u32(u_input.a, 23u)], u_input.a), abs(vec2<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 23u)], 23u)], 23u)])))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(reverseBits(~global2[_wgslsmith_index_u32(4294967295u, 23u)]), firstTrailingBit(0u >> (var_3.x % 32u))), _wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, var_3.x, u_input.a) & vec3<u32>(~var_3.x, ~u_input.a, 36491u), vec3<u32>(var_3.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(48892u, 23u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_3.x, 23u)], 23u)], 23u)], var_3.x), vec3<u32>(40677u, u_input.a, 48419u)), 35524u)), ~(~vec4<u32>(4294967295u, u_input.a, global2[_wgslsmith_index_u32(46942u, 23u)], 0u) | vec4<u32>(u_input.a, global2[_wgslsmith_index_u32(u_input.a, 23u)], 20038u, 26239u)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(42021u, var_3.x, u_input.a, var_3.x & 1u), ~abs(vec4<u32>(global2[_wgslsmith_index_u32(1u, 23u)], u_input.a, 0u, var_3.x))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1000f, 824f)))))));
}

