struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<i32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16> = array<bool, 16>(true, false, true, false, false, false, true, false, true, true, false, true, true, true, false, false);

var<private> global1: array<bool, 25> = array<bool, 25>(false, true, true, true, false, false, false, false, true, false, true, true, false, false, true, true, true, false, false, true, false, true, false, false, true);

var<private> global2: i32 = 1i;

var<private> global3: bool;

var<private> global4: Struct_3;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-442f, _wgslsmith_f_op_f32(-1640f * global4.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -674f), global4.a.x), 610f) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global4.a)))));
    var var_1 = Struct_2(!vec4<bool>(countOneBits(u_input.e) < select(-1454i, -1i, arg_1), any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 25u)], false, arg_1, false)), _wgslsmith_f_op_f32(step(global4.a.x, 1621f)) > _wgslsmith_f_op_f32(trunc(714f)), false), Struct_1(_wgslsmith_mult_vec3_i32(select(firstTrailingBit(vec3<i32>(u_input.e, -2147483647i, -36943i)), abs(vec3<i32>(u_input.e, 49945i, 2147483647i)), arg_1), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 0i, 33472i), vec3<i32>(-20350i, u_input.e, -31680i)), vec3<i32>(1i, 1i, 1i)))), firstTrailingBit(vec2<i32>(_wgslsmith_mod_i32(-1i, -2683i), _wgslsmith_clamp_i32(u_input.e, u_input.e, -2147483647i))) & _wgslsmith_mult_vec2_i32(abs(vec2<i32>(u_input.e, -13105i) << (u_input.c.yx % vec2<u32>(32u))), ~vec2<i32>(u_input.b, -1i)), true, Struct_1(abs(vec3<i32>(u_input.b, -5303i, 94884i << (u_input.d.x % 32u)))));
    return arg_1 == false;
}

fn func_2(arg_0: vec4<bool>, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_3(global4.a);
    let var_1 = 0u;
    global4 = var_0;
    let var_2 = Struct_2(!vec4<bool>(any(select(arg_0.wxx, vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 16u)], global0[_wgslsmith_index_u32(var_1, 16u)], global1[_wgslsmith_index_u32(1u, 25u)]), vec3<bool>(true, true, false))), all(!arg_0.zz), false, all(select(vec3<bool>(false, global1[_wgslsmith_index_u32(var_1, 25u)], global1[_wgslsmith_index_u32(u_input.d.x, 25u)]), vec3<bool>(false, true, true), vec3<bool>(global1[_wgslsmith_index_u32(var_1, 25u)], arg_0.x, global0[_wgslsmith_index_u32(0u, 16u)])))), Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-57641i, u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(-5437i, u_input.e, u_input.b, u_input.b), vec4<i32>(67146i, 2147483647i, u_input.b, 2147483647i)), ~u_input.b), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e, -51573i, u_input.e), vec3<i32>(u_input.b, -2147483647i, 2147483647i) << (u_input.a.zyy % vec3<u32>(32u))))), ~firstLeadingBit(firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.e, -7653i), vec2<i32>(u_input.e, -43645i)))), true, Struct_1(~(-vec3<i32>(u_input.b, -48992i, u_input.b))));
    let var_3 = !select(func_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-993f, 862f, var_0.a.x, -313f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a.x, var_0.a.x, -722f, 524f) - vec4<f32>(arg_1, global4.a.x, 1891f, 638f)))), global0[_wgslsmith_index_u32(countOneBits(47756u), 16u)]), global0[_wgslsmith_index_u32(45898u, 16u)], (any(var_2.a) & global1[_wgslsmith_index_u32(~1u, 25u)]) & false);
    return Struct_1(vec3<i32>(-1i) * -firstLeadingBit(firstLeadingBit(var_2.b.a)));
}

fn func_1(arg_0: Struct_3) -> u32 {
    global4 = Struct_3(_wgslsmith_div_vec3_f32(arg_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global4.a - vec3<f32>(global4.a.x, 1000f, 657f)), _wgslsmith_f_op_vec3_f32(-global4.a)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, -2426f, -228f))))));
    global1 = array<bool, 25>();
    var var_0 = Struct_2(!(!select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 16u)], global1[_wgslsmith_index_u32(u_input.a.x, 25u)], global1[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(u_input.a.x, 16u)]), vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.c.x, 16u)], global0[_wgslsmith_index_u32(1u, 16u)]), false)), func_2(!(!vec4<bool>(global1[_wgslsmith_index_u32(56756u, 25u)], global1[_wgslsmith_index_u32(u_input.c.x, 25u)], false, true)), arg_0.a.x), vec2<i32>(-_wgslsmith_mod_i32(~u_input.b, u_input.b), u_input.b), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(69753u), max(u_input.a.x, 4294967295u), u_input.a.x, u_input.d.x), _wgslsmith_add_vec4_u32(u_input.a, ~vec4<u32>(31470u, 57400u, u_input.a.x, u_input.c.x))), 25u)] || global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 25u)], Struct_1(-abs(func_2(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 16u)], true, global0[_wgslsmith_index_u32(20164u, 16u)], false), -443f).a)));
    global1 = array<bool, 25>();
    let var_1 = Struct_1(vec3<i32>(-(~1i), var_0.b.a.x, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-53381i, -1i, u_input.b, var_0.c.x), vec4<i32>(22304i, var_0.b.a.x, u_input.e, 0i)), ~(-1i)), 1i, _wgslsmith_mod_i32(2147483647i, var_0.e.a.x))));
    return abs(_wgslsmith_clamp_u32(u_input.a.x, abs(u_input.d.x), ~_wgslsmith_mod_u32(0u, u_input.d.x) ^ u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!((u_input.d.x ^ 19924u) < func_1(Struct_3(vec3<f32>(-380f, 853f, -210f)))) & global1[_wgslsmith_index_u32(firstTrailingBit(countOneBits(1u) & u_input.c.x), 25u)]);
    var var_1 = min(_wgslsmith_mult_u32(0u, 48656u), firstTrailingBit(51294u));
    var var_2 = vec2<i32>(-(u_input.b ^ _wgslsmith_mult_i32(u_input.e, -34032i)), u_input.b) >> (vec2<u32>(func_1(Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.a.x, global4.a.x, -397f)))), u_input.a.x) % vec2<u32>(32u));
    var var_3 = u_input.d;
    var var_4 = Struct_4(max(_wgslsmith_mod_i32(_wgslsmith_div_i32(-10785i, -1i), u_input.e), min(1i, ~1i)) != -48640i);
    global0 = array<bool, 16>();
    var var_5 = Struct_1(select(_wgslsmith_clamp_vec3_i32(abs(-vec3<i32>(1i, 2147483647i, var_2.x)), abs(vec3<i32>(2147483647i, u_input.e, 0i)), (vec3<i32>(u_input.b, -10846i, 0i) & vec3<i32>(u_input.b, u_input.e, -26365i)) << (u_input.a.xxx % vec3<u32>(32u))), ~vec3<i32>(u_input.e, reverseBits(-1i), u_input.b), !vec3<bool>(global0[_wgslsmith_index_u32(abs(49169u), 16u)], false, all(vec2<bool>(global0[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(var_3.x, 25u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(-13228i, u_input.e, var_3.xx, _wgslsmith_f_op_vec2_f32(-global4.a.zz));
}

