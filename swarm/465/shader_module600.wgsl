struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: array<vec2<bool>, 26> = array<vec2<bool>, 26>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global2: array<vec4<i32>, 27>;

var<private> global3: array<vec2<u32>, 8> = array<vec2<u32>, 8>(vec2<u32>(0u, 1u), vec2<u32>(0u, 7564u), vec2<u32>(51584u, 21595u), vec2<u32>(33740u, 0u), vec2<u32>(48146u, 4294967295u), vec2<u32>(0u, 12927u), vec2<u32>(13593u, 0u), vec2<u32>(5137u, 97809u));

var<private> global4: vec3<i32> = vec3<i32>(-1i, i32(-2147483648), -12478i);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4) -> vec3<u32> {
    let var_0 = arg_0;
    var var_1 = ~(44321u ^ (~4294967295u ^ ~arg_0.a));
    global1 = array<vec2<bool>, 26>();
    var var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 1i, 0i, _wgslsmith_div_i32(~global4.x, u_input.a.x)), global2[_wgslsmith_index_u32(0u, 27u)] & -vec4<i32>(global4.x, global4.x, u_input.d.x, global4.x)), abs(select(u_input.a, vec4<i32>(_wgslsmith_div_i32(20553i, -23786i), -53739i, ~45795i, 2147483647i), select(true, true, true))));
    let var_3 = Struct_3(true != !all(vec4<bool>(true, true, true, true)), all(vec3<bool>(false, false, false)), global0[_wgslsmith_index_u32(0u, 17u)], vec3<bool>(true, any(vec3<bool>(true, true, true)), all(select(vec2<bool>(true, false), vec2<bool>(true, true), global1[_wgslsmith_index_u32(4294967295u, 26u)])) || true));
    return _wgslsmith_mod_vec3_u32(vec3<u32>(~(~var_3.c.a), ~select(1u, ~85826u, !var_3.d.x), select(~u_input.c, 33969u, all(vec2<bool>(false, var_3.a)))), min(select(firstTrailingBit(vec3<u32>(0u, 40889u, var_3.c.a)), vec3<u32>(1u, 1u, 1u) & firstLeadingBit(vec3<u32>(var_3.c.a, var_0.b, 149804u)), true), vec3<u32>(var_3.c.a, ~u_input.c, var_0.a)));
}

fn func_4(arg_0: vec3<u32>, arg_1: bool) -> bool {
    var var_0 = u_input.a.yyx;
    let var_1 = 803f;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-160f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-683f + 1000f) + _wgslsmith_f_op_f32(-var_1)))) * _wgslsmith_f_op_f32(f32(-1f) * -286f));
    var var_3 = 57775u;
    global3 = array<vec2<u32>, 8>();
    return true;
}

fn func_2(arg_0: vec3<bool>) -> bool {
    var var_0 = vec3<bool>(arg_0.x, arg_0.x, false);
    global2 = array<vec4<i32>, 27>();
    global2 = array<vec4<i32>, 27>();
    var var_1 = false;
    let var_2 = Struct_3(arg_0.x & func_4(func_3(Struct_4(u_input.b, u_input.b)), arg_0.x), true, global0[_wgslsmith_index_u32(func_3(Struct_4(u_input.c, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(global3[_wgslsmith_index_u32(4294967295u, 8u)], vec2<u32>(90334u, 87373u)), abs(global3[_wgslsmith_index_u32(u_input.c, 8u)])))).x, 17u)], !vec3<bool>(var_0.x, true, !select(false, false, var_0.x)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(round(-155f)))), _wgslsmith_f_op_f32(-1209f - _wgslsmith_f_op_f32(f32(-1f) * -811f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-659f, _wgslsmith_f_op_f32(floor(-658f))))));
}

fn func_1() -> u32 {
    var var_0 = vec3<bool>(func_2(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(select(vec2<bool>(false, true), vec2<bool>(false, false), global1[_wgslsmith_index_u32(11038u, 26u)])))), true, any(vec4<bool>(true, true, true, true)) & true);
    let var_1 = Struct_3(var_0.x, !any(!(!vec3<bool>(var_0.x, var_0.x, true))), Struct_1(reverseBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 1u, u_input.b), ~vec3<u32>(u_input.b, 0u, 26418u)))), vec3<bool>(true, any(!vec2<bool>(true, var_0.x)), var_0.x));
    let var_2 = vec2<f32>(374f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1442f - _wgslsmith_div_f32(875f, 687f)))));
    let var_3 = u_input.d.x;
    var var_4 = Struct_2(Struct_1(0u), Struct_1(13555u), global0[_wgslsmith_index_u32(abs(var_1.c.a), 17u)]);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    global3 = array<vec2<u32>, 8>();
    var var_1 = ~0u;
    var_1 = firstLeadingBit(~u_input.b);
    let var_2 = firstTrailingBit(vec4<u32>(~44784u, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(19398u, 4294967295u, 1u)), vec3<u32>(abs(u_input.b), ~u_input.b, _wgslsmith_add_u32(u_input.b, 31065u))), countOneBits(~12217u), _wgslsmith_mod_u32(abs(22184u), _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b, 0u), func_1()))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(~u_input.a, ~vec4<i32>(u_input.d.x, u_input.d.x, 0i, -1i), vec4<i32>(u_input.d.x, global4.x, 2424i, global4.x) | vec4<i32>(u_input.a.x, -2147483647i, global4.x, 82268i)), abs(var_2));
}

