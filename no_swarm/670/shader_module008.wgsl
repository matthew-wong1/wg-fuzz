struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<i32>, 22> = array<vec2<i32>, 22>(vec2<i32>(-7231i, -1i), vec2<i32>(36315i, 23451i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(2147483647i, 28042i), vec2<i32>(2147483647i, 24582i), vec2<i32>(2147483647i, 0i), vec2<i32>(2147483647i, 0i), vec2<i32>(-24i, 1i), vec2<i32>(i32(-2147483648), -23781i), vec2<i32>(30351i, 0i), vec2<i32>(1i, -37316i), vec2<i32>(-37602i, 2147483647i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(1i, -64112i), vec2<i32>(6001i, -31973i), vec2<i32>(0i, 73107i), vec2<i32>(2147483647i, -1i), vec2<i32>(-1i, 1369i), vec2<i32>(-1i, 8694i), vec2<i32>(-1i, 0i), vec2<i32>(-23734i, 0i), vec2<i32>(i32(-2147483648), 1i));

var<private> global2: array<u32, 28> = array<u32, 28>(31641u, 0u, 45403u, 23082u, 63475u, 0u, 1u, 1355u, 0u, 62545u, 11644u, 0u, 13755u, 1u, 51284u, 1u, 8017u, 4294967295u, 710u, 0u, 1u, 62954u, 41043u, 4294967295u, 39817u, 1u, 4294967295u, 36389u);

var<private> global3: array<u32, 11>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<bool> {
    global1 = array<vec2<i32>, 22>();
    let var_0 = Struct_2(!select(select(select(vec3<bool>(false, global0.a, global0.a), vec3<bool>(true, true, global0.a), true), !vec3<bool>(true, true, global0.a), !vec3<bool>(global0.a, false, global0.a)), select(vec3<bool>(global0.a, true, true), !vec3<bool>(global0.a, true, global0.a), vec3<bool>(false, false, global0.a)), !(!global0.a)), firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(~global3[_wgslsmith_index_u32(1u, 11u)], abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 11u)], 11u)]), global2[_wgslsmith_index_u32(~4294967295u, 28u)], 14723u ^ global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 11u)], 28u)]), ~(~vec4<u32>(0u, 51278u, 8124u, u_input.c)))), -1565f, Struct_1(global0.b < 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(12752u, _wgslsmith_clamp_u32(global0.b, 23859u, 1u)), max(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 11u)], 28u)], 28u)]) << (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 60995u), vec2<u32>(8924u, global2[_wgslsmith_index_u32(4294967295u, 28u)])))), global0.c));
    global2 = array<u32, 28>();
    var var_1 = -firstLeadingBit(~var_0.d.c.x);
    global1 = array<vec2<i32>, 22>();
    return vec3<bool>(var_0.a.x || any(vec4<bool>(true, !global0.a, true, true)), select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(976f, var_0.c)))) == 1938f, global0.a, true), var_0.a.x);
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: f32) -> vec4<i32> {
    global1 = array<vec2<i32>, 22>();
    global2 = array<u32, 28>();
    let var_0 = 270f;
    var var_1 = select(!(!func_3()), func_3(), select(!select(func_3(), vec3<bool>(true, global0.a, false), true), !(!func_3()), global0.c.x < 0i));
    var_1 = func_3();
    return _wgslsmith_div_vec4_i32(min(vec4<i32>(~_wgslsmith_mult_i32(12586i, global0.c.x), _wgslsmith_mult_i32(1i, -107169i), ~min(u_input.e.x, global0.c.x), -2147483647i), vec4<i32>(_wgslsmith_mult_i32(-1i, global0.c.x), _wgslsmith_mod_i32(global0.c.x, u_input.a.x) << (41001u % 32u), reverseBits(-u_input.e.x), -global0.c.x)), firstLeadingBit(_wgslsmith_div_vec4_i32(global0.c, ~vec4<i32>(global0.c.x, 2147483647i, u_input.e.x, global0.c.x))));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> bool {
    let var_0 = Struct_1(false, 27473u, _wgslsmith_div_vec4_i32(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-311f, -289f) * vec2<f32>(-713f, -135f)) * vec2<f32>(1f, 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(739f - -1189f) - _wgslsmith_f_op_f32(354f - 1159f)), _wgslsmith_f_op_f32(floor(-441f))), global0.c));
    global1 = array<vec2<i32>, 22>();
    let var_1 = Struct_2(vec3<bool>(true, any(select(!vec2<bool>(arg_2.a, false), func_3().yz, vec2<bool>(var_0.a, var_0.a))), 559f <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-980f * -569f)))), ~abs(_wgslsmith_sub_vec4_u32(min(vec4<u32>(global2[_wgslsmith_index_u32(var_0.b, 28u)], 1u, 1u, 0u), vec4<u32>(1u, 4294967295u, var_0.b, 10497u)), min(vec4<u32>(global3[_wgslsmith_index_u32(global0.b, 11u)], 4294967295u, global0.b, 0u), vec4<u32>(arg_2.b, arg_2.b, 1u, var_0.b)))), 347f, Struct_1(!(true & arg_2.a), 4294967295u, vec4<i32>(1i, 33713i, i32(-1i) * -1118i, i32(-1i) * -33189i)));
    var var_2 = -firstTrailingBit(vec2<i32>(firstLeadingBit(-111i), firstLeadingBit(arg_2.c.x))) | max(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c, -207f) - vec2<f32>(var_1.c, 951f))), _wgslsmith_f_op_f32(var_1.c * _wgslsmith_f_op_f32(abs(var_1.c))), 103f).ww, ~(-min(var_1.d.c.zw, global0.c.zw)));
    var var_3 = Struct_2(!func_3(), min(select(var_1.b >> (var_1.b % vec4<u32>(32u)), ~_wgslsmith_clamp_vec4_u32(var_1.b, var_1.b, vec4<u32>(global0.b, 0u, u_input.c, arg_2.b)), !(!vec4<bool>(true, false, arg_2.a, false))), vec4<u32>(~(~var_1.b.x), 1u, min(arg_2.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, var_0.b), vec3<u32>(arg_2.b, 0u, 12520u))), 29743u)), var_1.c, var_0);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 28>();
    var var_0 = true;
    let var_1 = 68534u;
    var var_2 = all(select(!(!select(vec3<bool>(global0.a, true, global0.a), vec3<bool>(global0.a, true, false), false)), vec3<bool>(global0.a, true, !func_1(global0.a, true, Struct_1(true, 1u, global0.c))), !(!vec3<bool>(global0.a, global0.a, true))));
    let var_3 = Struct_2(vec3<bool>(func_1(global0.a, true, Struct_1(any(vec3<bool>(false, true, false)), 9058u, reverseBits(vec4<i32>(-27858i, u_input.a.x, -15381i, u_input.a.x)))), global0.a, true), reverseBits(reverseBits(firstLeadingBit(vec4<u32>(1u, u_input.c, 4294967295u, u_input.c)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 1209f))))), Struct_1(_wgslsmith_add_u32(~global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(61635u, 28u)], 11u)], ~global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(32987u, 11u)], 28u)]) >= reverseBits(4294967295u), u_input.c, ~global0.c));
    let x = u_input.a;
    s_output = StorageBuffer(92027u, var_3.b.zyw, _wgslsmith_f_op_f32(step(var_3.c, _wgslsmith_f_op_f32(exp2(var_3.c)))));
}

