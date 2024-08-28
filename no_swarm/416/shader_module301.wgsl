struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec2<f32>, 15>;

var<private> global2: array<vec4<i32>, 4>;

var<private> global3: Struct_2 = Struct_2(vec2<u32>(44188u, 68399u), vec4<bool>(false, false, false, false));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> i32 {
    var var_0 = !select(vec3<bool>(true, global0.x, arg_1.a), global3.b.xyx, global3.b.x | global0.x);
    return 2147483647i;
}

fn func_2(arg_0: vec2<bool>) -> vec3<i32> {
    global0 = select(vec2<bool>(true, true), select(select(vec2<bool>(false, any(global3.b)), select(select(global3.b.zy, arg_0, false), !arg_0, true), !vec2<bool>(global0.x, true)), vec2<bool>(!any(global3.b.yzz), reverseBits(27702i) > func_3(-1433f, Struct_1(true, 185f, -286f, vec2<i32>(u_input.c, u_input.c), -724f))), false), true);
    global0 = vec2<bool>(false, global3.b.x);
    var var_0 = Struct_2(vec2<u32>(~(~(~1u)), _wgslsmith_add_u32(_wgslsmith_div_u32(~10604u, ~global3.a.x), ~global3.a.x)), !(!select(!vec4<bool>(false, global3.b.x, global0.x, arg_0.x), global3.b, u_input.a.x != 11569u)));
    global3 = Struct_2(var_0.a, vec4<bool>(!var_0.b.x, any(!global3.b.wy), false, true));
    global1 = array<vec2<f32>, 15>();
    return vec3<i32>(_wgslsmith_sub_i32(u_input.c, u_input.c), u_input.c, -2147483647i);
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_mod_vec3_i32(~(-vec3<i32>(~68979i, u_input.c, countOneBits(u_input.c))), _wgslsmith_add_vec3_i32(countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, u_input.c, 6845i), vec3<i32>(u_input.c, u_input.c, 2147483647i))), func_2(global3.b.zw) | ~vec3<i32>(u_input.c, -49784i, -2147483647i)) << (firstTrailingBit(~vec3<u32>(27432u, global3.a.x, 46603u)) % vec3<u32>(32u)));
    var_0 = vec3<i32>(10078i, _wgslsmith_add_i32(u_input.c, func_3(_wgslsmith_f_op_f32(-1f), Struct_1(global0.x, 1122f, _wgslsmith_f_op_f32(1443f + -219f), ~vec2<i32>(-15747i, var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -973f)))), _wgslsmith_sub_i32(select(-8779i, -2147483647i, !(!global0.x)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(var_0.x & 30602i, _wgslsmith_mod_i32(var_0.x, var_0.x)), u_input.c)));
    let var_1 = Struct_1(global3.b.x, -890f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-369f + _wgslsmith_f_op_f32(1756f + 1058f))))), var_0.xy, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1052f * -1244f)))));
    var var_2 = var_1.e;
    let var_3 = _wgslsmith_sub_vec3_i32(-vec3<i32>(17837i, -u_input.c, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(58117i, -25012i, u_input.c, -44836i), global2[_wgslsmith_index_u32(1u, 4u)]), _wgslsmith_div_i32(var_1.d.x, 0i))), ~(-vec3<i32>(-u_input.c, select(60818i, 0i, false), 1i)));
    return Struct_2(firstTrailingBit(_wgslsmith_clamp_vec2_u32(~u_input.a.yx ^ ~vec2<u32>(56639u, 32195u), vec2<u32>(83153u, global3.a.x >> (u_input.a.x % 32u)), ~global3.a)), select(select(!(!vec4<bool>(global0.x, var_1.a, var_1.a, false)), global3.b, true), vec4<bool>(true, var_1.a, global3.b.x, global0.x), !global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = 215f;
    global2 = array<vec4<i32>, 4>();
    global2 = array<vec4<i32>, 4>();
    var var_2 = vec3<f32>(1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -859f) + 402f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_3 = Struct_2(u_input.a.yz, select(!(!(!global3.b)), vec4<bool>(all(select(var_0.b.yxy, vec3<bool>(global0.x, global0.x, var_0.b.x), global3.b.zxw)), var_2.x <= _wgslsmith_f_op_f32(var_2.x * var_2.x), _wgslsmith_dot_vec3_u32(vec3<u32>(33637u, 37892u, global3.a.x), vec3<u32>(u_input.a.x, var_0.a.x, global3.a.x)) < ~global3.a.x, any(global3.b.zy)), !(!(!var_0.b.x))));
    var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.x - -498f)));
    let var_4 = _wgslsmith_f_op_f32(min(345f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.x - -877f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1040f))))));
    let var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-773f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -929f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), 537f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4, _wgslsmith_f_op_f32(-var_5.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_5.yy, var_5.xx, true))), global1[_wgslsmith_index_u32(0u, 15u)])), global1[_wgslsmith_index_u32(~0u, 15u)]), countOneBits(3421u), 0u << (~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, u_input.d, 57755u, u_input.a.x), abs(vec4<u32>(global3.a.x, global3.a.x, 1u, var_3.a.x))) % 32u));
}

