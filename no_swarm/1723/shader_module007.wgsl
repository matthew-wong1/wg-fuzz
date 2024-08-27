struct Struct_1 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(false, 0u), Struct_1(true, 22545u), Struct_1(true, 1u), Struct_1(false, 4294967295u), Struct_1(true, 1u), Struct_1(true, 49608u), Struct_1(false, 0u), Struct_1(true, 1u), Struct_1(false, 43729u), Struct_1(false, 0u), Struct_1(true, 0u), Struct_1(false, 0u), Struct_1(true, 1u), Struct_1(true, 0u), Struct_1(true, 1u), Struct_1(true, 4294967295u), Struct_1(true, 4294967295u));

var<private> global1: array<Struct_1, 29>;

var<private> global2: bool;

var<private> global3: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(true, 4294967295u), Struct_1(false, 4294967295u), Struct_1(false, 4294967295u), Struct_1(false, 11322u), Struct_1(false, 1u), Struct_1(false, 4294967295u), Struct_1(true, 4294967295u), Struct_1(false, 56736u), Struct_1(false, 4294967295u), Struct_1(true, 4294967295u), Struct_1(true, 24921u), Struct_1(true, 108813u), Struct_1(false, 10617u), Struct_1(true, 4294967295u), Struct_1(false, 4294967295u), Struct_1(false, 4294967295u), Struct_1(true, 35945u), Struct_1(false, 0u), Struct_1(false, 18999u), Struct_1(false, 4294967295u), Struct_1(false, 22505u), Struct_1(true, 4294967295u), Struct_1(false, 1u), Struct_1(false, 4294967295u), Struct_1(true, 86695u));

var<private> global4: vec2<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: vec2<bool>) -> u32 {
    let var_0 = _wgslsmith_mult_u32(abs(~(~0u)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, 20657u, 0u, 1u)), ~vec4<u32>(1u, 1u, 1u, 1u))) >> (max(1u, _wgslsmith_div_u32(~_wgslsmith_sub_u32(3184u, 1u), 1u)) % 32u);
    global0 = array<Struct_1, 17>();
    let var_1 = all(select(!vec4<bool>(arg_2.x, false, any(arg_2), !arg_2.x), vec4<bool>(arg_2.x, arg_2.x, true, true), arg_2.x));
    var var_2 = Struct_1(all(vec4<bool>(var_1, all(vec3<bool>(false, false, var_1)), arg_2.x | true, true)), 42319u);
    let var_3 = true;
    return var_2.b;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>) -> i32 {
    global1 = array<Struct_1, 29>();
    let var_0 = abs(_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.b.x, global4.x) & (2147483647i << (arg_0.b % 32u)), ~13147i & u_input.b.x));
    var var_1 = Struct_1(arg_0.a, ~67918u);
    global0 = array<Struct_1, 17>();
    var var_2 = Struct_1(true, (select(var_1.b >> (4294967295u % 32u), var_1.b, true) & ~(var_1.b | var_1.b)) >> (4294967295u % 32u));
    return -(~u_input.c.x);
}

fn func_2() -> f32 {
    let var_0 = func_4(Struct_1(func_3(u_input.b.x, u_input.b, vec2<bool>(true, true)) <= 1u, 1u), !vec3<bool>(true, true, all(vec3<bool>(true, true, false)))) & _wgslsmith_clamp_i32(-46646i, _wgslsmith_dot_vec3_i32(min(countOneBits(u_input.b), ~u_input.b), u_input.b), -global4.x & 2147483647i);
    global3 = array<Struct_1, 25>();
    global0 = array<Struct_1, 17>();
    let var_1 = !(!any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false))) & any(vec3<bool>(true, true, true));
    global4 = u_input.b.yy;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1196f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(732f - -150f)))), var_1 & all(!vec3<bool>(false, false, var_1)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1863f)))) * _wgslsmith_div_f32(415f, _wgslsmith_f_op_f32(floor(-1000f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(331f)) + _wgslsmith_f_op_f32(170f + -231f))))));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(func_2()));
    var var_1 = max(vec3<u32>(4294967295u | arg_2.x, _wgslsmith_mod_u32(~arg_1.b, 1u), func_3(arg_0.x, reverseBits(vec3<i32>(global4.x, 55637i, 2147483647i)), select(select(vec2<bool>(true, arg_1.a), vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(arg_1.a, false)), select(vec2<bool>(true, arg_1.a), vec2<bool>(false, arg_1.a), vec2<bool>(arg_1.a, true)), arg_1.a))), abs(arg_2));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0))) != 1025f;
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(144f, var_0)))));
    var var_4 = vec4<u32>(_wgslsmith_mod_u32(arg_1.b, var_1.x), var_1.x, ~var_1.x, 15140u);
    return ~0i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 29>();
    global0 = array<Struct_1, 17>();
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(firstLeadingBit(firstLeadingBit(_wgslsmith_mod_u32(0u, 8259u))), ~1u), 0u), 25u)];
    var var_1 = vec2<bool>(var_0.a && false, (global4.x < 2147483647i) || !(_wgslsmith_add_i32(u_input.c.x, u_input.c.x) != func_1(vec4<i32>(u_input.a, u_input.b.x, global4.x, -54688i), global3[_wgslsmith_index_u32(var_0.b, 25u)], vec3<u32>(34248u, 1u, var_0.b))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-114f * _wgslsmith_f_op_f32(f32(-1f) * -1972f)), _wgslsmith_f_op_f32(func_2()))), -204f));
    var var_3 = abs(global4.x);
    var var_4 = Struct_1(select(var_1.x, false | ((var_0.a && var_0.a) && any(vec4<bool>(var_0.a, var_0.a, var_0.a, false))), true), abs(_wgslsmith_sub_u32(_wgslsmith_mult_u32(~1u, 1u), var_0.b)));
    let var_5 = global0[_wgslsmith_index_u32(~(~((~85281u | var_4.b) & var_4.b)), 17u)];
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>(0u, var_5.b & 4998u), ~vec2<u32>(60879u, 4294967295u) >> (~vec2<u32>(13201u, var_5.b) % vec2<u32>(32u)), true) & abs(firstTrailingBit(~vec2<u32>(59796u, var_5.b))), _wgslsmith_mult_i32(u_input.b.x, _wgslsmith_dot_vec4_i32(firstLeadingBit(~vec4<i32>(0i, 19747i, global4.x, -1i)), vec4<i32>(20791i, _wgslsmith_mod_i32(-11401i, 1i), -global4.x, ~(-4445i)))), var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-242f * var_2.x) * -2105f) * -668f), _wgslsmith_f_op_f32(-var_2.x)), vec3<i32>(~(i32(-1i) * -u_input.c.x), -45715i, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, u_input.a), firstLeadingBit(u_input.b.yy))));
}

