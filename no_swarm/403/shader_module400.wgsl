struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
    c: i32,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: vec3<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 5>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>) -> u32 {
    var var_0 = Struct_4(false, vec2<bool>(true, true), _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-1i, arg_0.b.c, 0i)), ~vec3<i32>(20208i, arg_0.b.c, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_0.b.b.x, -1301i, arg_0.b.b.x), vec4<i32>(1i, arg_0.b.b.x, arg_0.b.b.x, 38886i)))));
    var_0 = Struct_4(var_0.a, select(vec2<bool>(all(select(global0[_wgslsmith_index_u32(arg_1.x, 5u)], vec3<bool>(var_0.b.x, arg_0.c.x, arg_0.a), global0[_wgslsmith_index_u32(4294967295u, 5u)])), arg_0.b.a.x), !vec2<bool>(true, any(arg_0.c.zzw)), arg_0.b.a.xz), var_0.c);
    global0 = array<vec3<bool>, 5>();
    var_0 = Struct_4(!arg_0.c.x, !select(!var_0.b, vec2<bool>(true, all(vec3<bool>(true, false, var_0.a))), true | !var_0.b.x), 19026i);
    var var_1 = Struct_2(false, Struct_1(select(!(!vec3<bool>(arg_0.b.a.x, false, false)), !global0[_wgslsmith_index_u32(u_input.a.x, 5u)], select(select(arg_0.c.yxz, global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)]), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1.x, u_input.b), 5u)], arg_0.b.a)), arg_0.b.b, ~var_0.c), arg_0.c);
    return _wgslsmith_sub_u32(u_input.b, ~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a.x, 39771u, arg_1.x)), _wgslsmith_sub_vec3_u32(select(vec3<u32>(u_input.a.x, arg_1.x, arg_1.x), vec3<u32>(u_input.a.x, arg_1.x, 1u), vec3<bool>(var_1.b.a.x, false, var_0.a)), vec3<u32>(u_input.a.x, 63351u, 4335u))));
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: vec4<bool>, arg_3: u32) -> bool {
    let var_0 = Struct_5(arg_2.x & true, false, vec3<i32>(-_wgslsmith_dot_vec2_i32(arg_1.zw | arg_1.yz, select(vec2<i32>(-42516i, -56526i), arg_1.yz, arg_2.x)), ~(~arg_1.x) ^ 2147483647i, -2147483647i), arg_2.x);
    let var_1 = Struct_2(false, Struct_1(select(vec3<bool>(!var_0.d, arg_2.x, true), global0[_wgslsmith_index_u32(func_3(Struct_2(arg_2.x, Struct_1(arg_2.xxy, vec3<i32>(31189i, arg_1.x, 66064i), arg_1.x), vec4<bool>(false, false, var_0.b, arg_2.x)), vec4<u32>(u_input.b, u_input.b, arg_3, u_input.b) & vec4<u32>(41102u, u_input.a.x, 0u, u_input.b)), 5u)], vec3<bool>(true, arg_2.x, var_0.d)), vec3<i32>(-2147483647i, arg_1.x, firstTrailingBit(-943i)), -1i), vec4<bool>(true, false, arg_0, arg_0));
    var var_2 = Struct_3(true);
    var var_3 = Struct_4(var_0.d, !arg_2.yw, min(firstTrailingBit(var_0.c.x), var_0.c.x) | -41947i);
    var var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-517f, 644f, any(select(arg_2.xzw, arg_2.yzx, !arg_2.x))))));
    return var_3.b.x;
}

fn func_1() -> Struct_4 {
    global0 = array<vec3<bool>, 5>();
    global0 = array<vec3<bool>, 5>();
    global0 = array<vec3<bool>, 5>();
    var var_0 = ~(~(u_input.b << (firstTrailingBit(u_input.a.x) % 32u)));
    var var_1 = ~vec2<i32>(firstTrailingBit(-45297i) | ~firstLeadingBit(-2147483647i), _wgslsmith_sub_i32(_wgslsmith_add_i32(select(-25311i, -919i, true), 1i), 19343i));
    return Struct_4(0u != (u_input.a.x | _wgslsmith_mult_u32(4724u, ~4294967295u)), vec2<bool>(true, func_2(true, ~(-vec4<i32>(var_1.x, -2147483647i, -1189i, -15012i)), vec4<bool>(true, true, true, true), 13291u)), ~(-2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_3(true);
    var_1 = Struct_3(!(var_0.b.x != var_0.b.x));
    var var_2 = Struct_2(var_1.a, Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], vec3<i32>(1i, ~_wgslsmith_sub_i32(var_0.c, var_0.c), 0i), _wgslsmith_clamp_i32(~(-14480i) >> (abs(u_input.b) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c, 5509i), firstTrailingBit(vec2<i32>(-7692i, -14828i))), firstTrailingBit(i32(-1i) * -1i))), !vec4<bool>(!var_0.a, true, !var_0.b.x, any(!vec2<bool>(var_1.a, true))));
    var_2 = Struct_2(((76741u | u_input.b) | _wgslsmith_sub_u32(1u, 0u >> (0u % 32u))) <= ~(4294967295u | countOneBits(u_input.b)), var_2.b, var_2.c);
    let var_3 = u_input.a.x >> (countOneBits(8447u) % 32u);
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1000f)))), 272f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -155f), 1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_f_op_f32(round(-1681f)));
    global0 = array<vec3<bool>, 5>();
    let var_5 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_f32(f32(-1f) * -1078f), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_4.x), _wgslsmith_div_f32(507f, var_4.x))))), 1517f, -149f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_5)))))));
}

