struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: f32,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 39081i;

var<private> global1: array<Struct_3, 4>;

var<private> global2: vec2<f32>;

var<private> global3: vec4<f32> = vec4<f32>(1000f, -537f, 780f, 915f);

var<private> global4: array<bool, 31>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: f32) -> bool {
    return global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(11175u, ~(~4294967295u), 4294967295u), ~(_wgslsmith_div_vec3_u32(~vec3<u32>(0u, u_input.e, u_input.e), ~vec3<u32>(u_input.d, u_input.d, 0u)) >> (~(~vec3<u32>(u_input.d, u_input.e, 21545u)) % vec3<u32>(32u)))), 31u)];
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: bool, arg_3: vec3<u32>) -> u32 {
    let var_0 = !(all(!(!vec3<bool>(arg_0, arg_0, false))) & any(vec3<bool>(true, true, true)));
    let var_1 = global2.x;
    let var_2 = ~(-34286i) << ((firstLeadingBit(0u) << (arg_1.b.x % 32u)) % 32u);
    var var_3 = u_input.b.x | min(-4353i, u_input.c.x);
    var var_4 = Struct_3(any(select(select(!vec4<bool>(true, arg_1.a, true, arg_2), select(vec4<bool>(arg_1.a, false, false, true), vec4<bool>(arg_1.a, true, true, false), arg_2), !vec4<bool>(var_0, var_0, false, arg_2)), vec4<bool>(global2.x <= 937f, any(vec3<bool>(arg_0, false, false)), any(vec4<bool>(arg_0, false, true, false)), func_2(global3.x)), !select(vec4<bool>(false, arg_1.a, arg_2, arg_2), vec4<bool>(true, true, true, false), true))), arg_3);
    return 15275u;
}

fn func_3(arg_0: Struct_5, arg_1: i32) -> vec3<i32> {
    return ~(vec3<i32>(-1i) * -(~(~vec3<i32>(arg_1, 2147483647i, -18424i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 3969u;
    var var_1 = ~1u;
    let var_2 = _wgslsmith_mod_vec3_i32(func_3(Struct_5(vec3<u32>(u_input.d, 4294967295u, 34089u), func_1(global4[_wgslsmith_index_u32(u_input.d, 31u)], Struct_3(true, vec3<u32>(55023u, 50204u, u_input.e)), true, vec3<u32>(u_input.e, 0u, u_input.d)), _wgslsmith_add_vec2_i32(u_input.c, u_input.c), _wgslsmith_f_op_f32(sign(global2.x)), global1[_wgslsmith_index_u32(1u, 4u)]), u_input.b.x), _wgslsmith_div_vec3_i32(reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, -1i, 2147483647i), vec3<i32>(-44330i, 29262i, u_input.a))), select(vec3<i32>(2147483647i, u_input.c.x, u_input.b.x), vec3<i32>(u_input.c.x, u_input.b.x, 2147483647i), !global4[_wgslsmith_index_u32(40401u, 31u)]))) << (((vec3<u32>(_wgslsmith_clamp_u32(0u, 1u, u_input.e), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.e, 4294967295u), vec4<u32>(u_input.d, 9207u, 5538u, u_input.d)), _wgslsmith_mod_u32(29280u, u_input.d)) >> (~(vec3<u32>(34102u, u_input.d, u_input.d) << (vec3<u32>(0u, 1u, u_input.d) % vec3<u32>(32u))) % vec3<u32>(32u))) >> (~countOneBits(abs(vec3<u32>(0u, 4294967295u, 66430u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_3 = var_2.x;
    var var_4 = global3.x;
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global3.wy, global3.xx)));
    var var_5 = Struct_5(max(min(vec3<u32>(max(u_input.d, 41089u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 0u, u_input.e), vec3<u32>(u_input.e, 2777u, u_input.e)), abs(u_input.e)), (vec3<u32>(u_input.e, 0u, u_input.d) | vec3<u32>(4294967295u, u_input.e, u_input.d)) << (vec3<u32>(1u, u_input.d, 4294967295u) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.e, u_input.d, 0u), ~vec3<u32>(0u, u_input.e, u_input.d), ~vec3<u32>(0u, u_input.e, u_input.e)) << (vec3<u32>(u_input.e, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 9266u, u_input.d, 65373u), vec4<u32>(1u, u_input.e, u_input.d, 4294967295u))) % vec3<u32>(32u))), 32034u, func_3(Struct_5(vec3<u32>(~20622u, ~u_input.d, 13968u), ~57836u, select(vec2<i32>(u_input.b.x, u_input.b.x), _wgslsmith_add_vec2_i32(u_input.c, var_2.xz), select(vec2<bool>(global4[_wgslsmith_index_u32(u_input.d, 31u)], false), vec2<bool>(global4[_wgslsmith_index_u32(53289u, 31u)], false), vec2<bool>(global4[_wgslsmith_index_u32(u_input.e, 31u)], global4[_wgslsmith_index_u32(u_input.e, 31u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.x)) + -396f), global1[_wgslsmith_index_u32(u_input.d, 4u)]), -(var_3 ^ var_2.x)).zz, -372f, global1[_wgslsmith_index_u32(countOneBits(min(_wgslsmith_mult_u32(u_input.e, u_input.d), 0u)), 4u)]);
    var var_6 = vec3<u32>(u_input.d, 1u, 103475u) & _wgslsmith_sub_vec3_u32(~(~vec3<u32>(u_input.d, u_input.d, var_5.b)), ~var_5.e.b);
    var var_7 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-741f, global2.x, 1938f, -465f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global2.x, global2.x, -709f)) + vec4<f32>(var_5.d, global3.x, -1254f, 183f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~(_wgslsmith_mult_u32(4294967295u, 0u) ^ var_5.e.b.x)), ~vec4<u32>(u_input.d, 25763u, reverseBits(max(var_5.a.x, 4294967295u)), u_input.d), var_6.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * -587f) * -889f) - _wgslsmith_f_op_f32(var_5.d - _wgslsmith_f_op_f32(floor(-103f))))));
}

