struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(57318u, 27697u);

var<private> global1: u32 = 55270u;

var<private> global2: array<bool, 1>;

var<private> global3: array<bool, 11> = array<bool, 11>(true, false, true, true, true, true, false, false, false, false, true);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_3) -> f32 {
    let var_0 = -arg_1.a.x;
    var var_1 = arg_0.x > ~(~(~0u));
    var_1 = false;
    global0 = arg_3;
    let var_2 = ~_wgslsmith_add_i32(var_0, ~(-(~(-2147483647i))));
    return 604f;
}

fn func_2() -> Struct_3 {
    var var_0 = vec2<i32>(_wgslsmith_sub_i32(firstTrailingBit(u_input.a), ~firstLeadingBit(19277i)), (_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(u_input.a, 45049i)) << (global0.b % 32u)) | -(1i ^ firstTrailingBit(-33002i)));
    var var_1 = Struct_1(-(~(~vec2<i32>(28465i, var_0.x))) & -(~vec2<i32>(-1i, var_0.x)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(~vec3<u32>(u_input.b, 0u, u_input.b), Struct_2(vec3<i32>(var_0.x, -17893i, 0i)), u_input.a, Struct_3(7596u, global0.b))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1181f + -806f), _wgslsmith_f_op_f32(trunc(-1015f)), false))), _wgslsmith_f_op_f32(f32(-1f) * -1456f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1377f)))));
    var_0 = var_1.a;
    var var_2 = Struct_3(~45922u, 12036u);
    global0 = Struct_3(u_input.b, firstLeadingBit(global0.b));
    return Struct_3(~_wgslsmith_add_u32(var_2.a, ~u_input.b), 3848u);
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    var var_0 = Struct_2(vec3<i32>(u_input.a, -12725i, ~u_input.a));
    var var_1 = ~(~abs(vec3<u32>(4294967295u, arg_0.a, 4294967295u)));
    let var_2 = select(!(!vec4<bool>(any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 1u)], true)), true, all(vec3<bool>(false, global3[_wgslsmith_index_u32(arg_0.a, 11u)], global2[_wgslsmith_index_u32(1u, 1u)])), true)), select(select(select(vec4<bool>(true, false, global3[_wgslsmith_index_u32(4294967295u, 11u)], false), !vec4<bool>(global3[_wgslsmith_index_u32(24769u, 11u)], true, true, global2[_wgslsmith_index_u32(arg_0.b, 1u)]), !global3[_wgslsmith_index_u32(89795u, 11u)]), !vec4<bool>(global3[_wgslsmith_index_u32(var_1.x, 11u)], true, false, false), all(vec3<bool>(global3[_wgslsmith_index_u32(4742u, 11u)], false, false)) | !global2[_wgslsmith_index_u32(arg_0.a, 1u)]), select(vec4<bool>(false, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b, arg_0.a, arg_0.a, var_1.x), vec4<u32>(u_input.b, u_input.b, 4294967295u, 10640u)), 11u)], !global3[_wgslsmith_index_u32(40193u, 11u)], global2[_wgslsmith_index_u32(4294967295u & u_input.b, 1u)]), vec4<bool>(global2[_wgslsmith_index_u32(57070u, 1u)], true | global3[_wgslsmith_index_u32(53927u, 11u)], all(vec4<bool>(global2[_wgslsmith_index_u32(37832u, 1u)], global3[_wgslsmith_index_u32(global0.b, 11u)], false, global2[_wgslsmith_index_u32(79911u, 1u)])), !global3[_wgslsmith_index_u32(arg_0.a, 11u)]), !vec4<bool>(global2[_wgslsmith_index_u32(global0.a, 1u)], global2[_wgslsmith_index_u32(var_1.x, 1u)], global3[_wgslsmith_index_u32(9072u, 11u)], global2[_wgslsmith_index_u32(51616u, 1u)])), vec4<bool>(global3[_wgslsmith_index_u32(func_2().b, 11u)], select(true | global2[_wgslsmith_index_u32(62442u, 1u)], !global2[_wgslsmith_index_u32(arg_0.b, 1u)], all(vec3<bool>(global2[_wgslsmith_index_u32(global0.a, 1u)], true, global3[_wgslsmith_index_u32(13149u, 11u)]))), true, any(vec3<bool>(global2[_wgslsmith_index_u32(97065u, 1u)], global3[_wgslsmith_index_u32(var_1.x, 11u)], true)))), global3[_wgslsmith_index_u32(0u, 11u)]);
    var var_3 = arg_0;
    let var_4 = arg_0;
    return func_2();
}

fn func_1() -> Struct_3 {
    global1 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(104235u ^ u_input.b, global0.b, global0.a) ^ 1u, 1u), _wgslsmith_mod_u32(~1u, 1u));
    let var_0 = func_4(func_2());
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(753f, -836f, true))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1633f * 770f) + _wgslsmith_f_op_f32(f32(-1f) * -229f))) + _wgslsmith_f_op_f32(-1124f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2238f * -271f))))), -2450f);
    let var_2 = Struct_2(-vec3<i32>(firstTrailingBit(_wgslsmith_mod_i32(1i, -13747i)), 57999i, u_input.a));
    global3 = array<bool, 11>();
    return Struct_3(u_input.b, u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = Struct_1(vec2<i32>(-60328i, _wgslsmith_sub_i32(u_input.a, i32(-1i) * -u_input.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1580f, -584f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1306f), _wgslsmith_f_op_f32(floor(-749f)), false)), 1f) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-273f - 276f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<u32>(global0.a, 0u, 4294967295u), Struct_2(vec3<i32>(-46706i, u_input.a, u_input.a)), u_input.a, Struct_3(1u, global0.a)))), _wgslsmith_f_op_f32(-192f * -2586f))));
    let var_1 = _wgslsmith_dot_vec4_i32(select(vec4<i32>(~_wgslsmith_sub_i32(-2147483647i, u_input.a), var_0.a.x, reverseBits(u_input.a), min(_wgslsmith_div_i32(u_input.a, 0i), var_0.a.x)), vec4<i32>(0i, firstTrailingBit(var_0.a.x), ~0i, u_input.a >> (global0.a % 32u)) >> (vec4<u32>(~119573u, global0.a ^ u_input.b, 1u, global0.a) % vec4<u32>(32u)), true || global3[_wgslsmith_index_u32(0u, 11u)]), select(vec4<i32>(u_input.a, (2147483647i | u_input.a) | _wgslsmith_sub_i32(u_input.a, u_input.a), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 2147483647i, u_input.a, var_0.a.x), vec4<i32>(1i, -1i, 15878i, var_0.a.x)), 0i), _wgslsmith_mult_i32(-var_0.a.x, -1i)), abs(_wgslsmith_add_vec4_i32(-vec4<i32>(1i, u_input.a, u_input.a, 2147483647i), abs(vec4<i32>(u_input.a, u_input.a, -4163i, 2147483647i)))), any(!select(vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(u_input.b, 1u)]), vec4<bool>(false, global3[_wgslsmith_index_u32(4952u, 11u)], true, false), global3[_wgslsmith_index_u32(6906u, 11u)]))));
    var var_2 = _wgslsmith_add_vec4_u32(min(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.b, global0.b) | vec4<u32>(52345u, u_input.b, 42629u, 0u), firstLeadingBit(vec4<u32>(71318u, 38733u, 12352u, 0u))), ~vec4<u32>(u_input.b, 54898u, u_input.b, u_input.b) ^ reverseBits(vec4<u32>(4294967295u, 25954u, global0.a, u_input.b))), ~select(vec4<u32>(u_input.b, u_input.b, 8874u, 4294967295u), vec4<u32>(53690u, 1u, 1u, global0.a) | vec4<u32>(global0.a, 32947u, global0.a, u_input.b), !global3[_wgslsmith_index_u32(u_input.b, 11u)])), vec4<u32>(~u_input.b | u_input.b, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(min(vec2<u32>(u_input.b, u_input.b), vec2<u32>(global0.a, global0.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 14118u), vec2<u32>(u_input.b, global0.a)), vec2<u32>(global0.b, global0.a) & vec2<u32>(1u, global0.a)), ~vec2<u32>(global0.a, u_input.b)), select(~8634u, ~u_input.b, var_0.a.x < 0i) & ~13803u, ~select(_wgslsmith_clamp_u32(u_input.b, 1u, u_input.b), firstLeadingBit(u_input.b), true)));
    var var_3 = func_4(func_1());
    global1 = ~_wgslsmith_sub_u32(~(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.b, global0.b, var_3.b), var_2.xwy) ^ ~var_3.b), 58021u);
    let var_4 = -1424f;
    let x = u_input.a;
    s_output = StorageBuffer(80467u);
}

