struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec2<u32>;

var<private> global2: array<Struct_1, 19>;

var<private> global3: vec3<i32> = vec3<i32>(-1i, 1i, -2430i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: f32, arg_3: u32) -> vec3<i32> {
    global3 = _wgslsmith_clamp_vec3_i32(~global0.xxw, _wgslsmith_sub_vec3_i32(min(vec3<i32>(-global3.x, abs(global3.x), min(global0.x, 37637i)), global0.xyx), reverseBits(global0.zxw)), abs(global0.zxz));
    global1 = firstTrailingBit(u_input.a.zz);
    global0 = ~(~abs(~countOneBits(vec4<i32>(global3.x, global3.x, 0i, global0.x))));
    global2 = array<Struct_1, 19>();
    let var_0 = _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 - arg_2), _wgslsmith_div_f32(-437f, arg_2))))));
    return vec3<i32>(global3.x, _wgslsmith_add_i32(-_wgslsmith_sub_i32(-1i, global3.x) << (~arg_3 % 32u), global3.x), countOneBits(global0.x));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: i32, arg_3: u32) -> vec3<i32> {
    let var_0 = select(select(!vec4<bool>(arg_1.x, true, !arg_1.x, false), !(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true)), false), !select(vec4<bool>(false, any(vec4<bool>(arg_1.x, false, arg_1.x, false)), all(vec4<bool>(arg_1.x, true, arg_1.x, true)), arg_1.x), select(!vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, false, arg_1.x, true), vec4<bool>(arg_1.x, true, false, true)), !vec4<bool>(true, arg_1.x, arg_1.x, false)), vec4<bool>(arg_1.x, !any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, arg_1.x), vec3<bool>(arg_1.x, false, arg_1.x))), false, arg_1.x));
    global2 = array<Struct_1, 19>();
    global0 = _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(-(~(-vec4<i32>(arg_0.b, arg_0.b, 2147483647i, -64963i))), vec4<i32>(arg_0.b, ~12403i, -2587i, -51146i)), vec4<i32>(-(~(~(-2147483647i))), -arg_2, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, -2147483647i), vec2<i32>(2670i, arg_2)), 2147483647i | arg_0.b), global3.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-694f, -705f, 1215f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(294f, 934f, -1299f), vec3<f32>(1000f, 137f, -364f), var_0.x))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1252f, -252f, -247f), vec3<f32>(1000f, -379f, 394f)))))));
    let var_2 = !any(!select(vec2<bool>(var_0.x, arg_1.x), arg_1.zx, vec2<bool>(true, var_0.x)));
    return reverseBits(-_wgslsmith_add_vec3_i32(vec3<i32>(reverseBits(global0.x), abs(5176i), _wgslsmith_sub_i32(-50881i, arg_0.b)), global0.zyx));
}

fn func_1() -> vec4<u32> {
    let var_0 = ~vec2<u32>(41243u, ~(u_input.a.x | u_input.a.x)) >> (~u_input.b.yx % vec2<u32>(32u));
    global3 = abs(vec3<i32>(global0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -1i, _wgslsmith_add_i32(global3.x, global3.x), ~global0.x), global0.wxz), max(_wgslsmith_dot_vec3_i32(global0.xwz, func_2(false, vec4<u32>(1u, 38311u, u_input.a.x, var_0.x), 141f, 4294967295u)), ~global3.x | (i32(-1i) * -2147483647i))));
    var var_1 = vec2<bool>(!(true || any(vec4<bool>(true, false, true, false))), any(vec2<bool>(!any(vec2<bool>(false, true)), true)));
    global3 = _wgslsmith_div_vec3_i32(vec3<i32>(39454i, -14817i, global0.x), firstTrailingBit(func_3(Struct_1(max(0u, global1.x), 1i, u_input.a & u_input.b), vec3<bool>(select(true, false, var_1.x), true, false), i32(-1i) * -58170i, _wgslsmith_mod_u32(u_input.b.x, ~u_input.b.x))));
    let var_2 = vec4<u32>(var_0.x << (30289u % 32u), ~var_0.x, u_input.a.x, 1003u);
    return vec4<u32>(10602u, var_0.x, _wgslsmith_mod_u32(var_2.x ^ var_2.x, u_input.b.x & global1.x), _wgslsmith_mod_u32(_wgslsmith_sub_u32(~28805u, var_2.x), ~u_input.a.x) << (u_input.a.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 19>();
    global1 = u_input.b.zz;
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1047f * -1059f))), -1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-250f + 188f), -378f)), -220f))), ~func_1(), ~(firstLeadingBit(-1i) << ((select(u_input.a.x, 53426u, true) & min(global1.x, 19970u)) % 32u)), all(vec3<bool>(true, all(vec3<bool>(false, false, false)), false)) | true);
    let var_1 = global2[_wgslsmith_index_u32(37238u, 19u)];
    global0 = firstLeadingBit(-(~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(var_1.b, 72349i)), -2147483647i << (0u % 32u), global3.x, -54909i)));
    var var_2 = var_0.a.yy;
    global3 = global0.xxx;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, var_2.x, var_0.b.x, _wgslsmith_add_u32(max(countOneBits(select(1u, 1u, var_0.d)), 23240u), abs(firstLeadingBit(select(14610u, u_input.b.x, var_0.d)))), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(firstLeadingBit(1u), ~var_0.b.x, ~1452u), ~var_0.b.xzy), ~vec3<u32>(u_input.a.x, abs(var_1.c.x), _wgslsmith_clamp_u32(global1.x, 4294967295u, 1u))));
}

