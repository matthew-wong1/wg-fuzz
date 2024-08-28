struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: array<u32, 10>;

var<private> global2: array<bool, 25> = array<bool, 25>(false, false, false, true, true, false, false, true, true, true, true, true, true, false, true, false, false, false, false, false, false, true, true, true, true);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = arg_0.b.x;
    var var_1 = _wgslsmith_div_vec3_i32(select(~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, 42279i) >> (vec3<u32>(u_input.b.x, u_input.b.x, 59148u) % vec3<u32>(32u)), reverseBits(vec3<i32>(0i, u_input.a, u_input.a)), min(vec3<i32>(u_input.a, 0i, 2147483647i), vec3<i32>(u_input.a, u_input.a, u_input.a))), _wgslsmith_mod_vec3_i32(vec3<i32>(firstTrailingBit(u_input.a), _wgslsmith_mult_i32(u_input.a, 2147483647i), u_input.a), vec3<i32>(2147483647i, u_input.a, max(0i, 1i))), !vec3<bool>(arg_0.b.x < arg_0.c.x, any(vec2<bool>(global2[_wgslsmith_index_u32(35054u, 25u)], global2[_wgslsmith_index_u32(u_input.b.x, 25u)])), global2[_wgslsmith_index_u32(20685u, 25u)])), vec3<i32>(u_input.a, _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -2147483647i), arg_0.a.zw), ~vec2<i32>(-266i, u_input.a)), firstTrailingBit(u_input.a)) << (~(~vec3<u32>(19057u, global1[_wgslsmith_index_u32(u_input.b.x, 10u)], u_input.b.x)) % vec3<u32>(32u)));
    let var_2 = ~(vec4<u32>(global1[_wgslsmith_index_u32(reverseBits(4324u), 10u)], firstLeadingBit(u_input.b.x & u_input.b.x), abs(global1[_wgslsmith_index_u32(firstLeadingBit(71775u), 10u)]), ~u_input.b.x) & abs(vec4<u32>(~1u, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 10u)], 10u)], u_input.b.x), ~27516u, ~45683u)));
    global1 = array<u32, 10>();
    return global2[_wgslsmith_index_u32(1u, 25u)];
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec4<f32>, arg_3: u32) -> vec4<bool> {
    global2 = array<bool, 25>();
    global2 = array<bool, 25>();
    global0 = array<Struct_1, 9>();
    global2 = array<bool, 25>();
    global1 = array<u32, 10>();
    return vec4<bool>(true, func_3(Struct_1(!select(vec4<bool>(global2[_wgslsmith_index_u32(arg_0, 25u)], global2[_wgslsmith_index_u32(28969u, 25u)], true, false), vec4<bool>(global2[_wgslsmith_index_u32(arg_3, 25u)], arg_1, arg_1, false), true), arg_2.zx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, -224f, 910f, arg_2.x))))), true, true);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(select(select(func_2(4294967295u, global1[_wgslsmith_index_u32(43174u, 10u)] <= u_input.b.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(483f, -1000f, 363f, -1000f)), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5005u, 10u)], 10u)]), vec4<bool>(true, true, func_3(Struct_1(vec4<bool>(false, false, false, global2[_wgslsmith_index_u32(49225u, 25u)]), vec2<f32>(-236f, 247f), vec4<f32>(1658f, -908f, 174f, 185f))), !global2[_wgslsmith_index_u32(52465u, 25u)]), vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(10116u, 26627u, 1u), 25u)], !global2[_wgslsmith_index_u32(u_input.b.x, 25u)], true, any(vec2<bool>(true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 10u)], 25u)])))), vec4<bool>(select(global2[_wgslsmith_index_u32(0u, 25u)], true, false) || all(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 25u)], true)), true, all(vec2<bool>(false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 10u)], 10u)], 25u)])), false), func_3(global0[_wgslsmith_index_u32(u_input.b.x, 9u)])), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1597f, 306f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1293f, 2048f)) - _wgslsmith_f_op_f32(round(562f)))), 867f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1154f, 1536f, 187f, -516f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-674f, -282f, 297f, -971f))))));
    let var_1 = global0[_wgslsmith_index_u32(~1u, 9u)];
    let var_2 = _wgslsmith_clamp_u32(countOneBits(global1[_wgslsmith_index_u32(35473u, 10u)]), _wgslsmith_div_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), 10u)], u_input.b.x), 54720u) & _wgslsmith_div_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.b.x, ~global1[_wgslsmith_index_u32(u_input.b.x, 10u)]), 10u)], 10u)], u_input.b.x);
    let var_3 = Struct_1(vec4<bool>(false, ~(~(-2147483647i)) >= _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -16665i), vec3<i32>(-2509i, u_input.a, u_input.a)), true, true), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) + _wgslsmith_div_f32(1235f, -1099f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(min(var_1.b.x, var_1.b.x))))), var_1.c);
    let var_4 = !vec4<bool>(!var_3.a.x, true, any(var_3.a.zzy) && any(select(vec2<bool>(true, var_0.a.x), var_3.a.zz, vec2<bool>(true, true))), (_wgslsmith_f_op_f32(-var_0.b.x) != _wgslsmith_f_op_f32(-var_3.c.x)) && var_1.a.x);
    return Struct_1(!(!var_4), var_3.c.xw, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b.x, var_0.c.x, -393f, 1033f) - _wgslsmith_f_op_vec4_f32(-var_3.c)), var_1.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 10>();
    global0 = array<Struct_1, 9>();
    var var_0 = func_1();
    var var_1 = var_0.a;
    global0 = array<Struct_1, 9>();
    let var_2 = Struct_1(vec4<bool>(!(var_0.c.x <= var_0.b.x), global2[_wgslsmith_index_u32(38588u, 25u)], all(vec2<bool>(1u != u_input.b.x, false)), false), vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x - 227f)) + var_0.b.x)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(894f, var_0.c.x, var_0.b.x, var_0.b.x))))), vec4<f32>(-280f, var_0.c.x, _wgslsmith_f_op_f32(sign(var_0.b.x)), 382f)))));
    var_1 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(-min(vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a), -vec4<i32>(u_input.a, 1i, u_input.a, 14662i))));
}

