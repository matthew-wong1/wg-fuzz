struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<bool, 25>;

var<private> global2: Struct_2 = Struct_2(0u);

var<private> global3: f32 = 865f;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32) -> i32 {
    global0 = global2.a;
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(117f, -547f));
    var var_1 = vec4<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, -309f))))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(var_0.x))))), var_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_0.x, 1000f))))), -192f)));
    global1 = array<bool, 25>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_0.x, var_1.x)))) - var_0.x);
    return ~2147483647i;
}

fn func_2(arg_0: Struct_2) -> vec3<bool> {
    var var_0 = func_3(min(u_input.c.x, 1i));
    global1 = array<bool, 25>();
    return !select(select(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 25u)], global1[_wgslsmith_index_u32(0u, 25u)], false), select(select(vec3<bool>(global1[_wgslsmith_index_u32(arg_0.a, 25u)], global1[_wgslsmith_index_u32(arg_0.a, 25u)], global1[_wgslsmith_index_u32(u_input.b, 25u)]), vec3<bool>(global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(u_input.a, 25u)], global1[_wgslsmith_index_u32(global2.a, 25u)]), global1[_wgslsmith_index_u32(arg_0.a, 25u)]), vec3<bool>(true, false, true), vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 25u)], true)), select(!vec3<bool>(false, true, global1[_wgslsmith_index_u32(global2.a, 25u)]), vec3<bool>(false, true, global1[_wgslsmith_index_u32(global2.a, 25u)]), select(vec3<bool>(true, global1[_wgslsmith_index_u32(23193u, 25u)], true), vec3<bool>(true, false, true), true))), select(vec3<bool>(!global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, 4294967295u), 25u)], !global1[_wgslsmith_index_u32(global2.a, 25u)]), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 25u)], global1[_wgslsmith_index_u32(u_input.b, 25u)], global1[_wgslsmith_index_u32(1u, 25u)]), !select(vec3<bool>(false, false, global1[_wgslsmith_index_u32(global2.a, 25u)]), vec3<bool>(global1[_wgslsmith_index_u32(arg_0.a, 25u)], global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(global2.a, 25u)]), global1[_wgslsmith_index_u32(arg_0.a, 25u)])), global1[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_clamp_u32(64117u, 52127u, 8305u)), 25u)]);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    global0 = 4294967295u;
    var var_0 = select(abs(firstLeadingBit(~arg_2.d) >> (vec3<u32>(_wgslsmith_sub_u32(9913u, arg_2.d.x), ~57074u, global2.a) % vec3<u32>(32u))), firstTrailingBit(~_wgslsmith_sub_vec3_u32(arg_0.b.d, vec3<u32>(0u, global2.a, 4294967295u)) >> (~_wgslsmith_mult_vec3_u32(arg_0.b.d, arg_0.b.a) % vec3<u32>(32u))), !select(!(!vec3<bool>(true, arg_0.b.b.x, global1[_wgslsmith_index_u32(u_input.a, 25u)])), select(func_2(arg_1), select(arg_0.b.b.wyy, vec3<bool>(arg_0.b.b.x, true, global1[_wgslsmith_index_u32(32940u, 25u)]), global1[_wgslsmith_index_u32(4294967295u, 25u)]), !vec3<bool>(true, true, arg_2.b.x)), false));
    let var_1 = true;
    global3 = _wgslsmith_f_op_f32(round(911f));
    var var_2 = u_input.d.x;
    return Struct_2(~countOneBits(arg_0.b.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d.x;
    let var_1 = func_1(Struct_3(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, _wgslsmith_add_i32(8839i, -2147483647i), _wgslsmith_div_i32(-57443i, u_input.d.x)), abs(u_input.d), u_input.c), Struct_1(~(~vec3<u32>(60863u, 4294967295u, u_input.a)), !vec4<bool>(global1[_wgslsmith_index_u32(1u, 25u)], true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -1626f), _wgslsmith_div_vec3_u32(~vec3<u32>(1u, 0u, global2.a), ~vec3<u32>(4294967295u, 46920u, u_input.b)))), Struct_2(68151u & _wgslsmith_div_u32(min(4294967295u, 4294967295u), _wgslsmith_div_u32(global2.a, 38280u))), Struct_1(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, global2.a, 4294967295u), vec3<u32>(u_input.a, 1u, u_input.b))), vec4<bool>(true, any(!vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 25u)], false)), !(!global1[_wgslsmith_index_u32(4294967295u, 25u)]), !(global2.a < global2.a)), _wgslsmith_f_op_f32(sign(315f)), firstTrailingBit(min(vec3<u32>(24655u, global2.a, 41498u), vec3<u32>(1u, global2.a, 52420u)) ^ ~vec3<u32>(21306u, global2.a, 4294967295u))));
    var var_2 = _wgslsmith_mult_u32(~(~abs(global2.a)) >> (u_input.a % 32u), 1u);
    var_0 = ~firstTrailingBit(u_input.c.x);
    var_0 = -_wgslsmith_div_i32(~_wgslsmith_add_i32(27983i, func_3(u_input.d.x)), i32(-1i) * -1i);
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(358f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-174f + -468f))));
    var var_4 = u_input.c.yz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-296f, -1944f, _wgslsmith_f_op_f32(f32(-1f) * -1830f), var_3.x) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(423f, var_3.x, var_3.x, 1000f))))), 1i);
}

