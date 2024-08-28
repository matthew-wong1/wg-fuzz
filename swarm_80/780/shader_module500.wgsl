struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<bool>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: vec4<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: vec2<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5>;

var<private> global1: array<vec4<u32>, 19>;

var<private> global2: array<vec2<i32>, 8> = array<vec2<i32>, 8>(vec2<i32>(-28119i, 0i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-5367i, 18153i), vec2<i32>(-13650i, -1355i), vec2<i32>(-45059i, -35681i), vec2<i32>(-860i, 7192i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(4993i, 0i));

var<private> global3: u32;

var<private> global4: array<i32, 25>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_2) -> bool {
    global0 = array<f32, 5>();
    var var_0 = arg_0.b.c.x;
    global1 = array<vec4<u32>, 19>();
    let var_1 = ~(~vec3<u32>(1u, abs(1u), 1u));
    let var_2 = Struct_2(arg_0.b, arg_0.b, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.b.x, _wgslsmith_f_op_f32(570f * global0[_wgslsmith_index_u32(var_1.x, 5u)]), 1f, _wgslsmith_f_op_f32(trunc(-878f)))))));
    return arg_0.b.c.x;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<f32>) -> bool {
    global3 = arg_0.x;
    global3 = arg_0.x;
    let var_0 = _wgslsmith_div_f32(global0[_wgslsmith_index_u32(arg_0.x, 5u)], 1096f);
    global1 = array<vec4<u32>, 19>();
    global3 = arg_0.x;
    return (all(vec2<bool>(true, true)) & !select(select(false, false, true), any(vec2<bool>(false, false)), true)) && any(vec3<bool>(false, select(any(vec4<bool>(false, true, false, true)), true, false), true));
}

fn func_1() -> StorageBuffer {
    var var_0 = global0[_wgslsmith_index_u32(select(_wgslsmith_add_u32(4294967295u, 0u), 1u, func_3(select(vec2<u32>(max(29804u, 13913u), _wgslsmith_add_u32(1u, 1u)), vec2<u32>(1u, 1u), func_2(Struct_2(Struct_1(vec2<bool>(false, true), vec4<f32>(global0[_wgslsmith_index_u32(0u, 5u)], 306f, -976f, global0[_wgslsmith_index_u32(14201u, 5u)]), vec3<bool>(false, false, false), true), Struct_1(vec2<bool>(false, false), vec4<f32>(-640f, global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], 805f), vec3<bool>(false, false, true), true), vec4<f32>(-687f, global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], 1943f)))), vec3<f32>(_wgslsmith_f_op_f32(select(1069f, 1041f, 14799i != u_input.a.x)), -160f, _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(1u, 5u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 5u)]), all(vec4<bool>(false, true, true, true))))))), 5u)];
    let var_1 = select(select(select(vec4<bool>(false, select(false, true, true), false, func_3(vec2<u32>(4294967295u, 4294967295u), vec3<f32>(-249f, global0[_wgslsmith_index_u32(1796u, 5u)], -366f))), vec4<bool>(func_2(Struct_2(Struct_1(vec2<bool>(false, true), vec4<f32>(global0[_wgslsmith_index_u32(1u, 5u)], 330f, -1315f, global0[_wgslsmith_index_u32(50353u, 5u)]), vec3<bool>(true, true, false), false), Struct_1(vec2<bool>(false, false), vec4<f32>(global0[_wgslsmith_index_u32(1u, 5u)], 1000f, 1468f, -506f), vec3<bool>(false, false, false), false), vec4<f32>(412f, 425f, global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(0u, 5u)]))), true, false, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), false), vec4<bool>(firstLeadingBit(firstLeadingBit(global4[_wgslsmith_index_u32(25363u, 25u)])) < u_input.a.x, true, false, !(!any(vec4<bool>(false, true, true, false)))), true);
    global3 = _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, 1u, 1u)), min(2861u, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), firstTrailingBit(vec2<u32>(4294967295u, 4294967295u))))));
    let var_2 = Struct_3(Struct_2(Struct_1(select(vec2<bool>(false, var_1.x), select(vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, var_1.x), false), vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(2045f, -1298f, global0[_wgslsmith_index_u32(39588u, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)]))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(69904u, 5u)], global0[_wgslsmith_index_u32(54061u, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(1235u, 5u)]))), select(!var_1.yyz, var_1.xyy, var_1.x & true), var_1.x), Struct_1(var_1.yw, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1433f, 532f, -1245f, -765f))), var_1.xyx, false), vec4<f32>(_wgslsmith_f_op_f32(trunc(1797f)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(2538u, 1u, 27007u), ~54602u), 5u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-434f - -638f))), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(~37326u, 5u)])))));
    var var_3 = ~min(1u, select(countOneBits(~26647u), abs(1u), var_2.a.a.d));
    return StorageBuffer(_wgslsmith_clamp_vec2_u32(vec2<u32>(abs(1u), 0u), vec2<u32>(75710u, 41622u), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.a.b.b.x), -1657f, false)))), i32(-1i) * -1i, _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a.zy, abs(firstTrailingBit(u_input.a.yx))), -_wgslsmith_sub_vec2_i32(~u_input.a.xx, ~u_input.a.zy)), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, ~u_input.a.x), -u_input.a.yx), firstTrailingBit(-u_input.a.xw)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(7784u, ~0u);
    let x = u_input.a;
    s_output = func_1();
}

