struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec2<i32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 25>;

var<private> global1: array<vec2<bool>, 27>;

var<private> global2: Struct_1;

var<private> global3: array<i32, 15>;

var<private> global4: u32 = 25320u;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = global2.e.x;
    global0 = array<vec3<f32>, 25>();
    let var_1 = 1590f;
    let var_2 = Struct_5(select(0i, min(_wgslsmith_add_i32(14957i, global2.a.x) >> (global2.d % 32u), -2147483647i), false && global2.e.x), Struct_2(Struct_1(firstTrailingBit(vec4<i32>(64830i, -9237i, global2.b, 81207i) >> (vec4<u32>(0u, 4294967295u, global2.d, 17217u) % vec4<u32>(32u))), i32(-1i) * -1i, vec4<i32>(u_input.b.x, 29811i, u_input.b.x, u_input.a.x) ^ (global2.c | global2.a), 0u, vec3<bool>(global2.e.x, true, !global2.e.x)), select(select(select(vec4<bool>(false, true, false, global2.e.x), vec4<bool>(global2.e.x, global2.e.x, global2.e.x, false), global2.e.x), !vec4<bool>(true, global2.e.x, global2.e.x, true), true), vec4<bool>(true, false && global2.e.x, false, true), !select(vec4<bool>(false, global2.e.x, global2.e.x, global2.e.x), vec4<bool>(true, global2.e.x, global2.e.x, false), global2.e.x)), vec3<f32>(-535f, _wgslsmith_f_op_f32(-904f + -1000f), var_1), _wgslsmith_f_op_f32(-var_1)), ~(~_wgslsmith_sub_vec2_u32(~vec2<u32>(31294u, global2.d), vec2<u32>(global2.d, 1u))), (select(~vec2<u32>(global2.d, global2.d), select(vec2<u32>(global2.d, global2.d), vec2<u32>(5864u, global2.d), false), true) >> (_wgslsmith_add_vec2_u32(~vec2<u32>(39923u, 4294967295u), ~vec2<u32>(18138u, global2.d)) % vec2<u32>(32u))) | ~(~max(vec2<u32>(59887u, global2.d), vec2<u32>(global2.d, 11579u))));
    global3 = array<i32, 15>();
    return (_wgslsmith_dot_vec2_u32(max(select(var_2.d, vec2<u32>(4294967295u, 34854u), vec2<bool>(global2.e.x, false)), var_2.d << (vec2<u32>(global2.d, 0u) % vec2<u32>(32u))), var_2.d) ^ 29470u) | _wgslsmith_sub_u32(~firstTrailingBit(var_2.b.a.d), ~(~1u));
}

fn func_2(arg_0: Struct_4) -> i32 {
    global1 = array<vec2<bool>, 27>();
    global1 = array<vec2<bool>, 27>();
    let var_0 = Struct_3(vec3<u32>(arg_0.a.x, _wgslsmith_add_u32(select(global2.d, ~0u, false), ~arg_0.b.a.d), reverseBits(56818u) << (~func_3() % 32u)), Struct_1(abs(global2.a), i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(global2.b, -1i, 0i), u_input.a), vec4<i32>(~28260i, -2147483647i, 10507i, -arg_0.b.a.c.x), _wgslsmith_div_u32(reverseBits(arg_0.b.a.d) ^ 1u, arg_0.b.a.d), !global2.e));
    let var_1 = Struct_3(_wgslsmith_sub_vec3_u32(min(_wgslsmith_add_vec3_u32(~vec3<u32>(1u, arg_0.b.a.d, 1u), ~vec3<u32>(global2.d, arg_0.b.a.d, 16924u)), _wgslsmith_mult_vec3_u32(~var_0.a, vec3<u32>(var_0.b.d, var_0.b.d, 19528u))), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.a, var_0.a), ~countOneBits(var_0.a))), var_0.b);
    global2 = var_1.b;
    return select(firstLeadingBit(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, 26450i, 43344i), -arg_0.b.a.c))), -5119i, all(vec2<bool>(!arg_0.b.b.x, !(!arg_0.b.b.x))));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_div_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(50523u, 7762u) | ~vec2<u32>(global2.d, arg_0.a.d), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, global2.d), vec2<u32>(39671u, global2.d)))), func_3());
    global0 = array<vec3<f32>, 25>();
    global1 = array<vec2<bool>, 27>();
    global1 = array<vec2<bool>, 27>();
    var var_1 = abs(~(-vec3<i32>(0i, global3[_wgslsmith_index_u32(var_0, 15u)], global2.a.x)) << (vec3<u32>(var_0, global2.d, _wgslsmith_mult_u32(countOneBits(85142u), ~var_0)) % vec3<u32>(32u)));
    return Struct_1(max(select(countOneBits(global2.a), reverseBits(~global2.a), !global2.e.x), vec4<i32>(0i, reverseBits(-2147483647i), -1i, max(13014i, 2147483647i)) & abs(firstLeadingBit(global2.a))), 1i, ~((global2.c ^ abs(global2.c)) ^ max(vec4<i32>(19841i, 2147483647i, -6190i, u_input.a.x) << (vec4<u32>(26809u, 4294967295u, global2.d, var_0) % vec4<u32>(32u)), arg_0.a.a)), 0u, select(global2.e, select(vec3<bool>(!arg_0.a.e.x, false & arg_0.a.e.x, true), !vec3<bool>(global2.e.x, global2.e.x, true), any(arg_0.b)), !any(select(arg_0.b.yxx, arg_0.a.e, arg_0.b.xyx))));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: vec4<f32>) -> f32 {
    let var_0 = func_4(Struct_2(Struct_1(global2.c, func_2(Struct_4(vec2<u32>(7914u, global2.d), Struct_2(Struct_1(global2.c, -2147483647i, global2.a, 86783u, vec3<bool>(true, true, arg_0)), vec4<bool>(true, true, true, false), global0[_wgslsmith_index_u32(global2.d, 25u)], 287f), u_input.a.yx)), vec4<i32>(firstLeadingBit(global3[_wgslsmith_index_u32(global2.d, 15u)]), firstLeadingBit(global3[_wgslsmith_index_u32(4294967295u, 15u)]), global3[_wgslsmith_index_u32(global2.d, 15u)], firstTrailingBit(45607i)), 59525u, select(select(vec3<bool>(global2.e.x, arg_0, global2.e.x), global2.e, global2.e), select(vec3<bool>(arg_0, true, global2.e.x), global2.e, vec3<bool>(true, false, true)), vec3<bool>(true, global2.e.x, arg_0))), select(select(select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(true, arg_0, global2.e.x, global2.e.x), vec4<bool>(false, arg_0, true, false)), !vec4<bool>(global2.e.x, arg_0, global2.e.x, false), vec4<bool>(true, global2.e.x, arg_0, false)), vec4<bool>(true, any(vec2<bool>(arg_0, global2.e.x)), true, global2.e.x), any(vec3<bool>(true, true, false))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(arg_1.yzw)), vec3<f32>(arg_2.x, -385f, _wgslsmith_f_op_f32(min(arg_2.x, arg_1.x)))), _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - -413f))));
    var var_1 = select(var_0.c.ww, var_0.a.zx, global2.e.x);
    let var_2 = arg_0;
    var_1 = vec2<i32>(-2147483647i, max(0i, 2147483647i));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_1.x, 2029f)), _wgslsmith_f_op_f32(arg_2.x - arg_1.x))) - arg_1.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x))))) - arg_1.x));
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> bool {
    var var_0 = arg_2.d;
    var_0 = reverseBits(_wgslsmith_sub_u32(abs(arg_2.d), _wgslsmith_sub_u32(~firstLeadingBit(4294967295u), _wgslsmith_div_u32(4294967295u, ~1u))));
    var var_1 = Struct_3(countOneBits(_wgslsmith_mult_vec3_u32(~(vec3<u32>(0u, 0u, 90273u) | vec3<u32>(31043u, 36752u, global2.d)), countOneBits(vec3<u32>(arg_2.d, arg_2.d, 0u)))), Struct_1(func_4(Struct_2(Struct_1(arg_2.a, u_input.b.x, arg_2.a, 76945u, vec3<bool>(true, true, arg_3)), vec4<bool>(arg_3, true, true, false), vec3<f32>(-1952f, arg_0, 1302f), -985f)).c, max(-arg_1, -1i), -_wgslsmith_mod_vec4_i32(global2.a, vec4<i32>(-1i, global2.b, arg_2.c.x, arg_2.b)), arg_2.d, vec3<bool>(true | all(arg_2.e.xx), true, arg_2.e.x)));
    global0 = array<vec3<f32>, 25>();
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -158f, arg_0, 776f)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, -1391f, 412f, arg_0))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1476f, 267f, arg_0, 171f), vec4<f32>(615f, arg_0, 1032f, arg_0), arg_3)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1073f, 1279f, -101f, arg_0)))), !(!vec4<bool>(arg_3, true, var_1.b.e.x, arg_2.e.x))))) - vec4<f32>(2072f, -231f, 899f, -1651f));
    return arg_3;
}

fn func_6(arg_0: i32, arg_1: vec4<bool>) -> StorageBuffer {
    return StorageBuffer(global2.d);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(_wgslsmith_add_i32(~(-15686i), reverseBits(u_input.a.x)) << (26874u % 32u), select(!(!(!vec4<bool>(global2.e.x, global2.e.x, false, global2.e.x))), vec4<bool>(func_5(_wgslsmith_f_op_f32(func_1(false, vec4<f32>(619f, -363f, -661f, 367f), vec4<f32>(860f, 1000f, -524f, -239f))), -72044i, func_4(Struct_2(Struct_1(vec4<i32>(global2.c.x, 0i, global3[_wgslsmith_index_u32(global2.d, 15u)], global3[_wgslsmith_index_u32(4294967295u, 15u)]), u_input.a.x, global2.c, 1u, vec3<bool>(global2.e.x, false, global2.e.x)), vec4<bool>(true, false, true, global2.e.x), vec3<f32>(826f, 364f, -519f), 1425f)), true), false, any(!vec4<bool>(global2.e.x, false, true, global2.e.x)), abs(global3[_wgslsmith_index_u32(4294967295u, 15u)]) == func_2(Struct_4(vec2<u32>(global2.d, global2.d), Struct_2(Struct_1(global2.a, global3[_wgslsmith_index_u32(global2.d, 15u)], vec4<i32>(u_input.a.x, global3[_wgslsmith_index_u32(85186u, 15u)], global3[_wgslsmith_index_u32(6633u, 15u)], 77294i), global2.d, global2.e), vec4<bool>(global2.e.x, true, global2.e.x, true), global0[_wgslsmith_index_u32(1u, 25u)], -295f), global2.c.ww))), global2.e.x));
}

