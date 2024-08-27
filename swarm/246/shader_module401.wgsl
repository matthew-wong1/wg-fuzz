struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: vec4<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-23647i, 0i, 9739i, 2147483647i);

var<private> global1: vec2<f32>;

var<private> global2: vec2<f32> = vec2<f32>(-844f, 142f);

var<private> global3: vec3<u32> = vec3<u32>(69658u, 1u, 1u);

var<private> global4: array<i32, 23> = array<i32, 23>(0i, 17982i, i32(-2147483648), 0i, 50510i, 14285i, 0i, 2147483647i, 9669i, 2147483647i, 38973i, 0i, -34393i, -10744i, 32643i, 0i, -19507i, -37648i, -1i, i32(-2147483648), i32(-2147483648), i32(-2147483648), -1071i);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>) -> vec2<i32> {
    var var_0 = 1i;
    let var_1 = Struct_1(vec3<bool>(all(select(select(vec3<bool>(true, false, true), vec3<bool>(false, arg_0, true), vec3<bool>(arg_0, false, arg_0)), select(vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, true, false), false), arg_0)), arg_0, arg_0), abs(u_input.a.xx));
    var_0 = u_input.a.x | (global0.x ^ min(u_input.b, u_input.b));
    global4 = array<i32, 23>();
    let var_2 = 957f;
    return vec2<i32>(var_1.b.x & var_1.b.x, global0.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = Struct_1(arg_2.a, arg_0.b);
    global3 = ~_wgslsmith_add_vec3_u32(u_input.c, vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 0u, 4294967295u, u_input.d), ~vec4<u32>(4294967295u, 36603u, 8937u, global3.x)), 4294967295u, _wgslsmith_add_u32(_wgslsmith_mult_u32(global3.x, u_input.c.x), _wgslsmith_add_u32(u_input.d, u_input.c.x))));
    let var_1 = var_0.a.x;
    var_0 = Struct_1(!arg_0.a, -arg_2.b);
    var_0 = Struct_1(vec3<bool>(all(!(!vec4<bool>(arg_1.a.x, false, false, false))), 0u < max(select(u_input.d, 1u, arg_0.a.x), 31582u), false), arg_2.b);
    return vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(global4[_wgslsmith_index_u32(50098u, 23u)], var_0.b.x, var_0.b.x, arg_0.b.x)) ^ ~vec4<i32>(global0.x, arg_0.b.x, 0i, 1196i), (vec4<i32>(52272i, global0.x, -4832i, 4495i) >> (vec4<u32>(1u, 1u, 50752u, 0u) % vec4<u32>(32u))) << (_wgslsmith_mult_vec4_u32(vec4<u32>(global3.x, 1u, 0u, u_input.c.x), vec4<u32>(10557u, 65246u, 2494u, global3.x)) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(-94156i, var_0.b.x, -2147483647i, var_0.b.x) ^ vec4<i32>(arg_1.b.x, arg_1.b.x, u_input.b, 0i), -vec4<i32>(u_input.b, -1672i, -30108i, global4[_wgslsmith_index_u32(global3.x, 23u)]))), min(vec4<i32>(u_input.b, 2147483647i, 1i, var_0.b.x), vec4<i32>(-2147483647i, -32920i, 0i, 2147483647i)) | vec4<i32>(-global0.x, -29533i, var_0.b.x ^ arg_2.b.x, -40635i)), -2147483647i, -35564i, global0.x);
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(-23958i, _wgslsmith_dot_vec4_i32(~vec4<i32>(global4[_wgslsmith_index_u32(global3.x, 23u)], -2147483647i, global0.x, u_input.b), vec4<i32>(0i, 48369i, global4[_wgslsmith_index_u32(21268u, 23u)], global4[_wgslsmith_index_u32(u_input.d, 23u)]))), 10403i, ~(~(~global4[_wgslsmith_index_u32(0u, 23u)])), -22680i), func_4(Struct_1(vec3<bool>(any(vec4<bool>(false, true, false, true)), true, any(vec2<bool>(false, false))), vec2<i32>(0i, global0.x)), Struct_1(vec3<bool>(true, true, true), func_3(true, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1418f, -1000f, 105f), vec3<f32>(global2.x, -471f, global2.x), true)))), Struct_1(vec3<bool>(all(vec4<bool>(false, true, true, false)), true, false), u_input.a.zx)));
    global3 = vec3<u32>(u_input.c.x, 1u, abs(global3.x));
    global0 = _wgslsmith_add_vec4_i32(vec4<i32>(-(global4[_wgslsmith_index_u32(select(global3.x, u_input.d, false), 23u)] | global4[_wgslsmith_index_u32(global3.x, 23u)]), global0.x, -(-62482i << (_wgslsmith_dot_vec2_u32(u_input.c.yz, u_input.c.xy) % 32u)), _wgslsmith_mod_i32(var_0.x, global4[_wgslsmith_index_u32(max(4262u, u_input.c.x), 23u)] | func_4(Struct_1(vec3<bool>(false, true, true), vec2<i32>(1761i, u_input.a.x)), Struct_1(vec3<bool>(true, false, false), var_0.wx), Struct_1(vec3<bool>(false, false, true), vec2<i32>(u_input.a.x, u_input.a.x))).x)), -(vec4<i32>(0i, u_input.a.x, var_0.x, var_0.x) >> (~vec4<u32>(77120u, 9197u, 43950u, u_input.c.x) % vec4<u32>(32u))) << (vec4<u32>(u_input.d, ~0u, reverseBits(1u), 1u) % vec4<u32>(32u)));
    var var_1 = firstTrailingBit(select(-vec3<i32>(_wgslsmith_mod_i32(global0.x, u_input.e.x), 11174i, -81412i & global4[_wgslsmith_index_u32(u_input.c.x, 23u)]), _wgslsmith_sub_vec3_i32(u_input.a, ~vec3<i32>(-1i, 2147483647i, 9362i)) & global0.xyw, true && (true & any(vec2<bool>(true, true)))));
    global0 = _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(~var_0, min(var_0, var_0)), countOneBits(-(min(vec4<i32>(u_input.e.x, 0i, global0.x, var_0.x), var_0) & _wgslsmith_clamp_vec4_i32(vec4<i32>(851i, var_1.x, var_0.x, -29873i), vec4<i32>(global0.x, -1i, 0i, global4[_wgslsmith_index_u32(4294967295u, 23u)]), var_0))));
    return Struct_1(!(!vec3<bool>(true, true, all(vec3<bool>(true, true, false)))), -_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(var_0.xx, var_1.xz), u_input.e), _wgslsmith_div_vec2_i32(func_3(true, vec3<f32>(global1.x, 571f, global1.x)), -var_0.zw)));
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    global2 = vec2<f32>(-714f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global2.x * -1784f)));
    let var_0 = func_2();
    global4 = array<i32, 23>();
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.x - -690f))), 1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global1.x)), 122f, all(vec4<bool>(arg_0.a.x, true, arg_0.a.x, false)))), _wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(-448f - arg_1), var_0.a.x))))));
    return var_1;
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-633f + _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(step(global1.x, 1054f)))) - 185f));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2.x, -402f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x))))));
    let var_1 = func_5(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * 504f)));
    var var_2 = !(~11517i < select(func_3(var_1.a.x, vec3<f32>(var_0, global1.x, -1525f)).x, func_3(true, vec3<f32>(-680f, global1.x, global2.x)).x, true)) && (9243u > ~(_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, 83793u) & 109987u));
    global4 = array<i32, 23>();
    return Struct_1(select(!(!(!var_1.a)), vec3<bool>(func_5(func_5(Struct_1(arg_1.a, vec2<i32>(var_1.b.x, arg_0)), 211f), global1.x).a.x, !(false != var_1.a.x), any(!var_1.a.yx)), false), _wgslsmith_add_vec2_i32(u_input.a.zy, countOneBits(select(global0.xw, u_input.a.zy, vec2<bool>(false, false)))) ^ vec2<i32>(28856i, -53342i));
}

fn func_7(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 222f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(630f, global1.x)))))));
    var var_0 = 1u;
    let var_1 = false;
    let var_2 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, u_input.d), global3.zx | _wgslsmith_add_vec2_u32(vec2<u32>(global3.x, 44422u) << (u_input.c.zz % vec2<u32>(32u)), vec2<u32>(1u, 1u))), firstTrailingBit(select(~(~1562u), _wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, 0u, 75035u, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(global3.x, 43201u, 34682u, 0u), vec4<u32>(u_input.c.x, u_input.c.x, 764u, global3.x), vec4<u32>(global3.x, u_input.c.x, 4294967295u, global3.x))), select(true, !arg_0.a.x, !var_1))));
    let var_3 = arg_0;
    return func_6(select(func_3(arg_1.x, vec3<f32>(_wgslsmith_div_f32(1000f, -1441f), _wgslsmith_f_op_f32(-global1.x), global1.x)).x, max(select(-1i, u_input.a.x, true), 1i) << (_wgslsmith_mod_u32(_wgslsmith_add_u32(global3.x, 1u), 1u) % 32u), true), func_6(1i, Struct_1(vec3<bool>(true, any(vec4<bool>(true, true, false, var_3.a.x)), func_5(Struct_1(arg_1, vec2<i32>(global4[_wgslsmith_index_u32(0u, 23u)], 38420i)), -695f).a.x), vec2<i32>(-u_input.e.x, -arg_0.b.x)), global4[_wgslsmith_index_u32(9656u, 23u)]), arg_0.b.x);
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = _wgslsmith_mult_u32(~u_input.c.x, ~arg_0);
    var var_1 = func_7(func_6(-2745i, func_5(func_2(), global2.x), abs(-(~global0.x))), vec3<bool>(_wgslsmith_f_op_f32(select(384f, _wgslsmith_f_op_f32(round(-1145f)), true)) < global2.x, true, false));
    let var_2 = global0.x;
    let var_3 = func_4(Struct_1(var_1.a, vec2<i32>(var_1.b.x, -1i)), func_7(func_2(), select(vec3<bool>(false, all(var_1.a), true), vec3<bool>(var_1.a.x, false, true), vec3<bool>(true, all(var_1.a.xz), var_1.a.x))), Struct_1(select(vec3<bool>(true, var_1.a.x, !var_1.a.x), var_1.a, true), abs(-_wgslsmith_mult_vec2_i32(vec2<i32>(global0.x, global4[_wgslsmith_index_u32(var_0, 23u)]), vec2<i32>(var_1.b.x, 2147483647i)))));
    global3 = ~(~u_input.c);
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, -333f, global2.x, global1.x), vec4<f32>(457f, global1.x, global1.x, 605f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global1.x, global1.x, global1.x))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.x, global1.x, 386f, -132f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global2.x, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(trunc(-583f)))))));
    global0 = select(countOneBits(~vec4<i32>(u_input.e.x, firstTrailingBit(-24915i), global4[_wgslsmith_index_u32(0u, 23u)], -global0.x)), vec4<i32>(global0.x, u_input.e.x, global0.x, -35188i), vec4<bool>(!((26098u | u_input.d) > u_input.c.x), all(vec2<bool>(true, true)), true, true));
    global0 = reverseBits(~(~(-vec4<i32>(global4[_wgslsmith_index_u32(u_input.c.x, 23u)], -42422i, -26456i, 8301i))));
    let var_1 = firstTrailingBit(u_input.d) ^ _wgslsmith_div_u32(select(firstTrailingBit(_wgslsmith_div_u32(1u, global3.x)), _wgslsmith_sub_u32(9105u, _wgslsmith_sub_u32(u_input.c.x, 1u)), true), 4294967295u);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(func_1(~0u)), var_0.x);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(392f))), -2058f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1345f, global2.x)) - _wgslsmith_f_op_f32(ceil(-887f))), var_2.x), _wgslsmith_f_op_f32(1330f - -1137f), any(vec3<bool>(true, true, true)))), _wgslsmith_div_f32(var_0.x, var_0.x));
    var var_4 = abs(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(reverseBits(53314u), u_input.c.x, global3.x, u_input.c.x)), abs(vec4<u32>(global3.x, _wgslsmith_add_u32(u_input.d, u_input.d), _wgslsmith_dot_vec2_u32(u_input.c.yx, vec2<u32>(var_1, 114729u)), var_1))));
    var var_5 = func_2();
    var var_6 = func_5(func_5(Struct_1(select(vec3<bool>(var_5.a.x, var_5.a.x, true), !var_5.a, !var_5.a.x), global0.zx), 1733f), 316f).b.x;
    let x = u_input.a;
    s_output = StorageBuffer(-635f, vec4<i32>(-(~global0.x) << (28948u % 32u), 1i, -countOneBits(u_input.a.x), -var_5.b.x), i32(-1i) * -62702i, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0, vec4<f32>(_wgslsmith_f_op_f32(var_2.x * global2.x), _wgslsmith_div_f32(global1.x, global2.x), _wgslsmith_f_op_f32(379f + 188f), -1667f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0 * var_0) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global1.x, 213f, 749f))))), u_input.a);
}

