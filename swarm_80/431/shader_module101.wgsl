struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, true), -271f, -653f);

var<private> global1: array<i32, 28>;

var<private> global2: array<i32, 3> = array<i32, 3>(-1i, i32(-2147483648), 2147483647i);

var<private> global3: array<bool, 7> = array<bool, 7>(false, false, true, true, true, false, false);

var<private> global4: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec2<bool>(true, false), 2324f, -2619f), Struct_1(vec2<bool>(true, false), -1466f, 1000f), Struct_1(vec2<bool>(false, true), -2358f, 187f), Struct_1(vec2<bool>(false, true), -284f, 1469f), Struct_1(vec2<bool>(true, true), 650f, -111f), Struct_1(vec2<bool>(true, false), 1000f, 798f), Struct_1(vec2<bool>(false, false), -207f, -1627f), Struct_1(vec2<bool>(false, true), 741f, 1000f), Struct_1(vec2<bool>(false, false), 1000f, 1000f), Struct_1(vec2<bool>(false, true), -520f, 814f), Struct_1(vec2<bool>(false, false), -2093f, 916f), Struct_1(vec2<bool>(false, false), -729f, -2367f), Struct_1(vec2<bool>(false, false), 602f, -271f), Struct_1(vec2<bool>(true, false), -529f, 1255f), Struct_1(vec2<bool>(false, false), 599f, 468f), Struct_1(vec2<bool>(false, true), 457f, -489f), Struct_1(vec2<bool>(false, true), 662f, -1000f), Struct_1(vec2<bool>(false, false), -1215f, 166f), Struct_1(vec2<bool>(false, true), 125f, 586f), Struct_1(vec2<bool>(true, true), -664f, 256f), Struct_1(vec2<bool>(true, false), -1079f, -1361f));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_2) -> f32 {
    global0 = arg_0.c;
    global4 = array<Struct_1, 21>();
    global3 = array<bool, 7>();
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(2097f, 726f), vec2<f32>(882f, -689f)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(204f, global0.b), vec2<f32>(-760f, 1587f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(594f, arg_0.c.b))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(min(global0.b, 404f))), _wgslsmith_div_f32(global0.c, arg_0.c.b)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-673f, arg_0.c.b), vec2<f32>(arg_0.d, global0.c), !vec2<bool>(global3[_wgslsmith_index_u32(u_input.e.x, 7u)], global0.a.x)))))));
    return _wgslsmith_f_op_f32(f32(-1f) * -146f);
}

fn func_3(arg_0: i32, arg_1: i32) -> u32 {
    var var_0 = Struct_2(vec2<u32>(1u & _wgslsmith_add_u32(~u_input.b, ~1u), countOneBits(1u) << (0u % 32u)), ~111741u, global4[_wgslsmith_index_u32(select(1u & firstLeadingBit(4294967295u >> (u_input.b % 32u)), 4294967295u, !global0.a.x), 21u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(global0.b)))));
    let var_1 = Struct_2(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(var_0.b), 1u), var_0.a), countOneBits(u_input.d.x)), ~var_0.b, Struct_1(vec2<bool>(any(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 7u)], global3[_wgslsmith_index_u32(0u, 7u)], global0.a.x, true)), true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d, _wgslsmith_f_op_f32(-global0.c))), 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.d, -634f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1034f + var_0.c.c)))));
    var var_2 = var_1.c;
    let var_3 = _wgslsmith_clamp_vec4_u32(~_wgslsmith_sub_vec4_u32(~select(u_input.e, vec4<u32>(12112u, var_1.b, 18108u, 4294967295u), vec4<bool>(false, false, global0.a.x, var_1.c.a.x)), max(u_input.e, ~vec4<u32>(var_0.b, u_input.d.x, 90127u, 43315u))), vec4<u32>(52363u, var_1.b, ~(~110549u), u_input.b) << (~_wgslsmith_mod_vec4_u32(~u_input.e, _wgslsmith_add_vec4_u32(u_input.e, vec4<u32>(var_1.b, 24299u, 0u, 4294967295u))) % vec4<u32>(32u)), ~u_input.e);
    global2 = array<i32, 3>();
    return abs(~(~abs(1u)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1 * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) * global0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(u_input.d, u_input.e.x, global4[_wgslsmith_index_u32(1u, 21u)], 1000f)))))) - _wgslsmith_f_op_vec2_f32(-arg_1));
    let var_1 = -vec4<i32>(u_input.c, ~global2[_wgslsmith_index_u32(min(~4391u, _wgslsmith_div_u32(4229u, 1u)), 3u)], -(firstLeadingBit(u_input.c) ^ _wgslsmith_add_i32(u_input.a, 2796i)), 19914i);
    let var_2 = select(max(~_wgslsmith_mod_vec3_u32(u_input.e.yzx, vec3<u32>(10592u, u_input.b, 77726u)), vec3<u32>(10998u, ~4294967295u, 0u)), ~(vec3<u32>(u_input.b, u_input.b, 51108u) ^ _wgslsmith_mult_vec3_u32(u_input.e.xyw ^ vec3<u32>(u_input.e.x, u_input.b, 57565u), ~vec3<u32>(u_input.e.x, 10642u, 37930u))), !select(vec3<bool>(!global3[_wgslsmith_index_u32(20999u, 7u)], true, true), !vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 7u)], global3[_wgslsmith_index_u32(u_input.e.x, 7u)], true), !select(vec3<bool>(global3[_wgslsmith_index_u32(0u, 7u)], false, true), vec3<bool>(false, false, global0.a.x), vec3<bool>(global0.a.x, global3[_wgslsmith_index_u32(39775u, 7u)], true))));
    global4 = array<Struct_1, 21>();
    global0 = arg_0;
    return _wgslsmith_div_vec2_u32(firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(func_3(global1[_wgslsmith_index_u32(var_2.x, 28u)], var_1.x), var_2.x ^ 1174u), var_2.zz)), ~(~(u_input.d ^ _wgslsmith_clamp_vec2_u32(u_input.d, var_2.yx, vec2<u32>(var_2.x, var_2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(global4[_wgslsmith_index_u32(u_input.b, 21u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.b, 1445f), vec2<f32>(-1000f, global0.b)) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.b, -1126f), vec2<f32>(global0.b, -348f), global0.a)))))), ~_wgslsmith_mod_u32(_wgslsmith_div_u32(0u, _wgslsmith_mod_u32(u_input.b, u_input.e.x)), u_input.d.x), global4[_wgslsmith_index_u32(~u_input.e.x | (_wgslsmith_dot_vec2_u32(vec2<u32>(12598u, u_input.d.x), vec2<u32>(u_input.d.x, u_input.e.x) ^ vec2<u32>(u_input.d.x, u_input.e.x)) >> (1u % 32u)), 21u)], 441f);
    global3 = array<bool, 7>();
    var var_1 = global1[_wgslsmith_index_u32(var_0.b, 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.c, vec4<i32>(global1[_wgslsmith_index_u32(reverseBits(abs(u_input.b)), 28u)], _wgslsmith_dot_vec2_i32(vec2<i32>(-3824i, 2222i), -(~vec2<i32>(1i, 1i))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4353u, 15435u >> (u_input.e.x % 32u)) >> (var_0.a.x % 32u), 28u)], abs(1i)));
}

