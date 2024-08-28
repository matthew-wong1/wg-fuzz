struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: array<vec2<f32>, 14>;

var<private> global2: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(arg_0.a.x, 14u)] - global1[_wgslsmith_index_u32(0u, 14u)]), global1[_wgslsmith_index_u32(14511u, 14u)])) + _wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(~arg_1, 14u)] * global1[_wgslsmith_index_u32(6981u, 14u)]))), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(4556u, 69090u), 14u)]);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-910f)), global2.b.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1852f, var_0.x)) * _wgslsmith_f_op_f32(var_0.x * global2.b.a)))), -425f, -937f);
    global0 = array<Struct_1, 15>();
    var var_2 = Struct_2(~countOneBits(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(global2.a, global2.a), vec3<u32>(0u, arg_2.b.x, u_input.a))), arg_2);
    var_2 = Struct_2(reverseBits(vec3<u32>(25985u, arg_2.b.x, ~1u)), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_2.b.a, -158f))), arg_2.b));
    return arg_0.a.x;
}

fn func_2() -> vec2<bool> {
    global0 = array<Struct_1, 15>();
    var var_0 = countOneBits(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(15222u, global2.b.b.x, 4294967295u), global2.a), 4027u, ~_wgslsmith_add_u32(global2.a.x, global2.a.x), _wgslsmith_mod_u32(global2.a.x, _wgslsmith_clamp_u32(4294967295u, global2.a.x, 43502u))) << ((vec4<u32>(func_3(Struct_2(global2.a, Struct_1(646f, global2.b.b)), 0u, Struct_1(global2.b.a, vec2<u32>(global2.b.b.x, 7279u))), u_input.a, 0u, u_input.a) | (~vec4<u32>(80954u, u_input.a, u_input.a, global2.b.b.x) ^ vec4<u32>(global2.b.b.x, global2.a.x, u_input.a, 14373u))) % vec4<u32>(32u)));
    global1 = array<vec2<f32>, 14>();
    var var_1 = select(vec3<bool>(true, !(!all(vec2<bool>(false, false))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))), vec3<bool>(select(global2.a.x < 0u, select(true, true, true), all(vec3<bool>(false, true, false))), global2.b.a != _wgslsmith_div_f32(global2.b.a, _wgslsmith_div_f32(232f, global2.b.a)), true), true);
    let var_2 = ~(~(~(~select(u_input.a, u_input.a, var_1.x))));
    return !select(var_1.yy, select(vec2<bool>(0i != u_input.b.x, var_1.x || false), select(select(var_1.xy, vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, var_1.x)), select(vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, true)), vec2<bool>(var_1.x, true)), vec2<bool>(true, var_1.x)), var_1.zx);
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> u32 {
    global0 = array<Struct_1, 15>();
    let var_0 = select(select(vec2<bool>(false, select(true, all(vec4<bool>(false, false, true, false)), all(vec3<bool>(false, false, false)))), select(vec2<bool>(false, true), select(func_2(), func_2(), vec2<bool>(true, true)), true), _wgslsmith_f_op_f32(-global2.b.a) == arg_1.a), !vec2<bool>(select(true, false, true), true), any(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, any(vec2<bool>(true, true))), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(false, false, true, true), all(vec2<bool>(true, false))))));
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(~global2.a.x), 1u, u_input.a), vec3<u32>(arg_1.b.x, ~4294967295u << (u_input.a % 32u), firstTrailingBit(u_input.a)));
    var var_2 = global2.b;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.a)) + arg_1.a), 596f, global2.b.a, var_2.a);
    return arg_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2.b.a), global2.b.a))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-global2.b.a), _wgslsmith_sub_vec2_u32(max(~select(vec2<u32>(u_input.a, 9717u), vec2<u32>(8112u, u_input.a), vec2<bool>(true, true)), vec2<u32>(_wgslsmith_sub_u32(u_input.a, 0u), countOneBits(44860u))), max(_wgslsmith_div_vec2_u32(global2.b.b, vec2<u32>(u_input.a, 4294967295u)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, global2.b.b.x), vec2<u32>(u_input.a, global2.b.b.x)))));
    global0 = array<Struct_1, 15>();
    let var_2 = func_1(-1426i, Struct_1(var_1.a, ~vec2<u32>(u_input.a, global2.b.b.x) | ~vec2<u32>(global2.b.b.x, global2.a.x))) & 30604u;
    let var_3 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(var_1.b.x, 1u), 60896u) << (firstLeadingBit(~global2.b.b.x) % 32u), _wgslsmith_add_u32(0u, global2.b.b.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 68812u), ~vec4<u32>(u_input.a, u_input.a, 1u, 1u), vec4<u32>(u_input.a, 8941u, var_2, 8199u) & vec4<u32>(4294967295u, 28944u, 1u, 4294967295u)), vec4<u32>(16283u, 48374u, u_input.a, global2.a.x) ^ ~vec4<u32>(0u, 0u, var_1.b.x, var_1.b.x)), countOneBits(max(vec4<u32>(21169u, global2.b.b.x, 21499u, 0u), ~vec4<u32>(var_2, u_input.a, global2.b.b.x, global2.b.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1904f, 361f, 665f, -911f) * vec4<f32>(331f, -325f, var_1.a, -1570f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global2.b.a, 230f, 1092f) * vec4<f32>(var_1.a, var_0.x, -1000f, global2.b.a)))) * vec4<f32>(_wgslsmith_f_op_f32(ceil(1117f)), -403f, var_1.a, var_0.x)))), _wgslsmith_f_op_f32(max(var_1.a, global2.b.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(1022f + global2.b.a)))) * var_0.x), global2.b.a, (firstLeadingBit(vec2<i32>(1i, 1i)) & _wgslsmith_clamp_vec2_i32(firstTrailingBit(u_input.b.yw), -vec2<i32>(-11427i, u_input.c.x), u_input.b.xw)) << (min(global2.a.xy, vec2<u32>(_wgslsmith_mult_u32(var_2, var_3), 52138u)) % vec2<u32>(32u)));
}

