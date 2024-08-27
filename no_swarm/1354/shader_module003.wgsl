struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<f32>,
    d: u32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 0u, 0u);

var<private> global1: array<vec2<f32>, 30> = array<vec2<f32>, 30>(vec2<f32>(-760f, -1121f), vec2<f32>(699f, 250f), vec2<f32>(-1146f, 1419f), vec2<f32>(788f, -731f), vec2<f32>(-609f, 756f), vec2<f32>(651f, 1768f), vec2<f32>(1000f, -102f), vec2<f32>(476f, -684f), vec2<f32>(-1000f, -2021f), vec2<f32>(1000f, 739f), vec2<f32>(-116f, -884f), vec2<f32>(362f, 1747f), vec2<f32>(-414f, -248f), vec2<f32>(707f, -700f), vec2<f32>(577f, -593f), vec2<f32>(598f, 665f), vec2<f32>(-1149f, 862f), vec2<f32>(1191f, 1566f), vec2<f32>(1000f, -992f), vec2<f32>(-710f, -1000f), vec2<f32>(-808f, 1077f), vec2<f32>(782f, 1494f), vec2<f32>(1303f, 727f), vec2<f32>(-184f, 924f), vec2<f32>(-279f, 977f), vec2<f32>(-2277f, 734f), vec2<f32>(-276f, -147f), vec2<f32>(1671f, 753f), vec2<f32>(-488f, 2890f), vec2<f32>(-835f, 1304f));

var<private> global2: i32;

var<private> global3: i32;

var<private> global4: i32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    global4 = ~(max(~u_input.c, u_input.b.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(max(4294967295u, global0.x), ~41692u, global0.x, global0.x & 23594u), max(vec4<u32>(0u, 1u, 4294967295u, 52678u), vec4<u32>(global0.x, global0.x, global0.x, global0.x) & vec4<u32>(59582u, global0.x, global0.x, 0u))) % 32u));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x))), 902f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))) >= arg_0.x;
    global4 = 33185i;
    global0 = _wgslsmith_add_vec3_u32(~vec3<u32>(1u, ~global0.x, 32641u), vec3<u32>(~0u, 4294967295u, global0.x));
    var var_1 = Struct_1(1u >> (~_wgslsmith_dot_vec4_u32(~vec4<u32>(8281u, 74692u, global0.x, global0.x), vec4<u32>(18604u, global0.x, 56873u, 1u)) % 32u));
    return Struct_1(_wgslsmith_add_u32(abs(_wgslsmith_add_u32(_wgslsmith_div_u32(var_1.a, 5842u), var_1.a)), 36998u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<f32>) -> i32 {
    global2 = max(~(~0i), ~u_input.d.x);
    global1 = array<vec2<f32>, 30>();
    global3 = _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_sub_i32(-42137i, _wgslsmith_clamp_i32(-(u_input.c << (1u % 32u)), ~(-23865i), u_input.d.x)));
    let var_0 = select(select(select(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), true), vec3<bool>(any(vec2<bool>(false, true)), true, select(true, all(vec3<bool>(true, false, true)), true)), false), !select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), false), select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)), true);
    return u_input.a.x;
}

fn func_1() -> i32 {
    global3 = u_input.a.x;
    var var_0 = Struct_1(firstLeadingBit(global0.x));
    var var_1 = Struct_1(global0.x);
    global3 = 1i;
    var var_2 = Struct_3(_wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.d.x, ~firstLeadingBit(u_input.b.x)), firstTrailingBit(-(~(-8411i))), _wgslsmith_div_i32(select(11108i, u_input.c, true), 6980i) >> (~45085u % 32u)));
    return _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, abs(var_2.a), ~var_2.a, _wgslsmith_dot_vec2_i32(u_input.d.zx, u_input.b)), vec4<i32>(firstTrailingBit(_wgslsmith_div_i32(0i, -var_2.a)), _wgslsmith_mult_i32(0i, func_3(func_2(global1[_wgslsmith_index_u32(1u, 30u)]), Struct_2(Struct_1(global0.x), vec4<f32>(-1000f, 1000f, 1864f, 937f), vec3<f32>(-905f, -113f, -718f), var_1.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(884f, -625f, -220f)))), _wgslsmith_sub_i32(7606i, _wgslsmith_div_i32(countOneBits(27852i), _wgslsmith_mod_i32(-1i, 18933i))), _wgslsmith_div_i32(u_input.b.x, min(var_2.a, var_2.a)) | abs(var_2.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 30>();
    global3 = -(_wgslsmith_sub_i32(2147483647i, max(func_1(), u_input.b.x ^ u_input.c)) | select(-_wgslsmith_sub_i32(2147483647i, u_input.c), ~(-2147483647i), all(vec4<bool>(true, true, true, false))));
    global1 = array<vec2<f32>, 30>();
    global2 = _wgslsmith_dot_vec3_i32(~(-vec3<i32>(abs(u_input.d.x), max(-1i, u_input.d.x), 0i & u_input.b.x)), vec3<i32>(-1i) * -u_input.a);
    var var_0 = -1710f;
    let x = u_input.a;
    s_output = StorageBuffer(~(~select(global0.x, 11121u, true)), countOneBits(_wgslsmith_mult_vec3_i32(u_input.a, ~(-vec3<i32>(64822i, 0i, u_input.a.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-538f, -395f, _wgslsmith_div_f32(-327f, -435f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-644f, -797f, 1000f), vec3<f32>(-1252f, -1000f, 1452f)))))));
}

