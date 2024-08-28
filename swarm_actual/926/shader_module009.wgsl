struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 19>;

var<private> global1: f32 = 2039f;

var<private> global2: vec2<f32>;

var<private> global3: Struct_3;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = global3.c.a.x;
    global2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(937f, global3.c.c), _wgslsmith_f_op_f32(global2.x - -1107f)), global2.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.x), global2.x))))), vec2<f32>(273f, _wgslsmith_f_op_f32(global3.b.b.c + _wgslsmith_f_op_f32(-global2.x))));
    var var_1 = Struct_2(Struct_1(global3.c.a, vec2<u32>(u_input.c.x & abs(42895u), ~(u_input.d | 1u)), _wgslsmith_f_op_f32(f32(-1f) * -533f)), Struct_1(vec4<bool>(any(!global3.b.a.a), false, !any(global3.c.a.zzw), global3.b.b.a.x), select(global3.b.b.b, abs(vec2<u32>(13492u, 0u)), global3.b.b.a.ww), _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.x, -1342f, true))))));
    var var_2 = u_input.d ^ _wgslsmith_mod_u32(min(max(1u, u_input.c.x), 0u), u_input.d);
    let var_3 = global2.x;
    return -1047f;
}

fn func_2(arg_0: f32) -> vec4<i32> {
    global2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(global2.x - -674f), all(vec2<bool>(global3.b.b.a.x, global3.c.a.x)))) - 571f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0 * arg_0), -889f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(215f, arg_0), vec2<f32>(global3.c.c, global3.b.a.c)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-686f, arg_0)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-490f, global2.x)), vec2<f32>(-1281f, -1255f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-161f, arg_0)) + _wgslsmith_f_op_f32(f32(-1f) * -175f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1347f + -117f)))), false));
    let var_0 = global3.b;
    var var_1 = Struct_2(Struct_1(vec4<bool>(var_0.a.a.x, true && select(false, var_0.a.a.x, global3.c.a.x), select(!var_0.b.a.x, !var_0.a.a.x, false), var_0.a.a.x), vec2<u32>(var_0.a.b.x, 1u << (var_0.b.b.x % 32u)) & _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(global0[_wgslsmith_index_u32(var_0.a.b.x, 19u)], vec2<u32>(var_0.b.b.x, global3.b.a.b.x)), ~vec2<u32>(u_input.d, 0u)), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(func_3()))), var_0.a);
    var var_2 = select(select(select(vec2<bool>(true, !var_0.a.a.x), !select(var_0.a.a.ww, var_1.b.a.wx, vec2<bool>(true, global3.b.a.a.x)), !global3.b.a.a.x), vec2<bool>(global3.c.a.x, var_0.a.c <= -1831f), !vec2<bool>(false, true | global3.b.a.a.x)), var_0.b.a.yz, false);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(528f)), -1013f, global3.c.c, _wgslsmith_f_op_f32(-global2.x))))));
    return ~_wgslsmith_mult_vec4_i32(firstLeadingBit(u_input.e), min(u_input.e, min(select(vec4<i32>(0i, u_input.b, global3.a.x, u_input.a), vec4<i32>(2147483647i, -2147483647i, -1i, -11867i), global3.b.a.a.x), global3.a)));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: bool, arg_3: bool) -> f32 {
    global2 = vec2<f32>(arg_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.x)) * _wgslsmith_f_op_f32(abs(arg_0.b.c)))));
    global3 = Struct_3(func_2(arg_0.b.c), global3.b, Struct_1(select(global3.c.a, global3.c.a, true), vec2<u32>(~(~u_input.c.x), ~_wgslsmith_mod_u32(arg_0.a.b.x, arg_0.b.b.x)), global3.c.c));
    global2 = arg_1;
    global1 = _wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(215f, global3.c.c)) * _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(-global2.x), any(!vec3<bool>(arg_2, global3.c.a.x, true)))), _wgslsmith_f_op_f32(min(-853f, -2130f))));
    var var_0 = -435f;
    return -765f;
}

fn func_4(arg_0: vec3<f32>) -> Struct_2 {
    global0 = array<vec2<u32>, 19>();
    global0 = array<vec2<u32>, 19>();
    var var_0 = ~(~abs(u_input.c));
    var_0 = ~reverseBits(u_input.c);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(arg_0.x - -1000f)));
    return Struct_2(global3.c, Struct_1(select(!(!vec4<bool>(false, global3.b.a.a.x, global3.c.a.x, false)), vec4<bool>(true, true, false, select(true, global3.c.a.x, global3.c.a.x)), global3.b.b.a), vec2<u32>(var_0.x, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-135f - 287f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(279f - global2.x), _wgslsmith_f_op_f32(func_1(global3.b, vec2<f32>(509f, -1000f), true, global3.c.a.x)), global2.x)))));
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-865f, -917f, global3.c.c), vec3<f32>(-422f, 372f, 519f), global3.b.b.a.ywz)) * _wgslsmith_div_vec3_f32(vec3<f32>(2042f, var_0.a.c, -708f), vec3<f32>(318f, -371f, -907f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -335f), _wgslsmith_f_op_f32(1186f * global3.c.c), _wgslsmith_f_op_f32(f32(-1f) * -1245f)) - vec3<f32>(_wgslsmith_f_op_f32(-global2.x), var_0.a.c, _wgslsmith_f_op_f32(-global3.c.c))))));
    global1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(374f, var_1.a.c, global2.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1063f, var_1.b.c, var_0.b.c)))).a.c));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(global3.a.x));
}

