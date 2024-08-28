struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: f32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
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

var<private> global0: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(Struct_2(-5742i, false, 4442i)));

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global2: u32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: u32) -> vec2<i32> {
    var var_0 = _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(~min(2147483647i, -1i), 1i, i32(-1i) * -2147483647i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(-26065i, 36901i)))), firstTrailingBit(vec4<i32>(abs(_wgslsmith_mod_i32(-9494i, 33484i)), 48439i, ~(-14253i), 14026i)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 821f, _wgslsmith_f_op_f32(select(arg_0, -655f, global1.x)), _wgslsmith_f_op_f32(438f - 935f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-501f, arg_0, arg_0, arg_0), vec4<f32>(-1395f, -1486f, arg_0, 897f))) - vec4<f32>(arg_0, arg_0, 205f, -1000f))) * vec4<f32>(1f, 266f, arg_0, _wgslsmith_f_op_f32(-475f - _wgslsmith_f_op_f32(ceil(-595f))))));
    var_0 = vec4<i32>(_wgslsmith_mod_i32(var_0.x, abs(-var_0.x)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -var_0.xw, vec2<i32>(_wgslsmith_mod_i32(-14718i, var_0.x), var_0.x)), ~_wgslsmith_add_i32(_wgslsmith_mult_i32(var_0.x, var_0.x) << (~arg_1 % 32u), -1i), var_0.x);
    let var_2 = Struct_1((~(arg_1 << (37537u % 32u)) << ((~17740u >> (select(0u, arg_1, false) % 32u)) % 32u)) & countOneBits(1u), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + -1320f), arg_0), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -945f)))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(var_1.x - -566f), arg_0, var_1.x, _wgslsmith_f_op_f32(abs(arg_0)))))), ~(0i << (max(_wgslsmith_div_u32(u_input.b, 35617u), firstLeadingBit(u_input.b)) % 32u)));
    let var_3 = select(1i, select(~var_0.x, abs(~select(var_0.x, var_0.x, false)), true & select(true, any(vec4<bool>(false, global1.x, global1.x, false)), true)), any(!(!(!global1.yz))));
    return vec2<i32>(~(-var_3), 4670i);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<u32>) -> bool {
    let var_0 = func_3(_wgslsmith_f_op_f32(1750f + -160f), _wgslsmith_clamp_u32(27722u, ~1u, _wgslsmith_clamp_u32(u_input.d.x & 1u, 2068u, u_input.c)));
    let var_1 = firstLeadingBit(1i);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1572f, 1003f), _wgslsmith_f_op_f32(f32(-1f) * -462f), _wgslsmith_f_op_f32(f32(-1f) * -225f), _wgslsmith_f_op_f32(max(-288f, -1000f)))))));
    var var_3 = global0[_wgslsmith_index_u32(firstLeadingBit((u_input.a.x >> (min(_wgslsmith_add_u32(1u, 0u), 7391u) % 32u)) | _wgslsmith_mult_u32(~(901u | u_input.c), _wgslsmith_add_u32(arg_2.x & 4294967295u, arg_2.x))), 1u)];
    global0 = array<Struct_3, 1>();
    return (~51218u < select(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a.ywy, vec3<u32>(arg_2.x, arg_2.x, arg_2.x)), abs(u_input.a.xzy)), max(_wgslsmith_add_u32(0u, arg_2.x), _wgslsmith_add_u32(18281u, 0u)), true)) & all(vec3<bool>(global1.x, (arg_1.b || var_3.a.b) == select(false, global1.x, true), all(vec3<bool>(true, true, true))));
}

fn func_1() -> bool {
    global1 = select(vec4<bool>(true, true, true, false || any(!global1.zy)), select(vec4<bool>(any(!vec4<bool>(false, false, global1.x, global1.x)), global1.x, false, !global1.x), vec4<bool>(func_2(Struct_3(Struct_2(5612i, true, -1i)), Struct_2(645i, true, 42654i), u_input.d) | global1.x, any(vec4<bool>(true, global1.x, global1.x, false)), true, !(global1.x == global1.x)), false), vec4<bool>(true, true, true | global1.x, false));
    global2 = 28208u << (firstTrailingBit(~u_input.b) % 32u);
    global0 = array<Struct_3, 1>();
    global1 = select(vec4<bool>(true | !global1.x, !all(vec4<bool>(false, global1.x, global1.x, global1.x)), any(!(!vec4<bool>(true, false, global1.x, true))), !any(global1.xx) & all(vec3<bool>(global1.x, global1.x, global1.x))), select(select(!(!vec4<bool>(global1.x, false, true, true)), select(vec4<bool>(global1.x, true, true, false), select(vec4<bool>(true, global1.x, false, global1.x), vec4<bool>(global1.x, true, false, false), global1.x), !vec4<bool>(true, global1.x, true, false)), vec4<bool>(true, all(vec4<bool>(true, true, false, false)), false | global1.x, global1.x)), vec4<bool>(global1.x, !global1.x, true, all(vec4<bool>(true, global1.x, true, true))), _wgslsmith_f_op_f32(round(-1365f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1530f * 1734f))), !(!(!(!vec4<bool>(global1.x, global1.x, true, global1.x)))));
    global0 = array<Struct_3, 1>();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(!func_1(), u_input.d.x, -765f, vec2<f32>(1f, 1f));
    global2 = ~_wgslsmith_clamp_u32(~abs(select(1u, u_input.d.x, global1.x)), _wgslsmith_dot_vec4_u32(select(max(vec4<u32>(1u, 11238u, 10981u, var_0.b), vec4<u32>(var_0.b, var_0.b, 1u, 19519u)), u_input.a << (vec4<u32>(u_input.a.x, var_0.b, u_input.d.x, u_input.b) % vec4<u32>(32u)), !vec4<bool>(true, global1.x, var_0.a, false)), ~(~u_input.a)), _wgslsmith_div_u32(_wgslsmith_sub_u32(~u_input.c, _wgslsmith_mult_u32(1u, var_0.b)), 19437u));
    let var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.b, u_input.d.x), ~vec2<u32>(~reverseBits(var_0.b), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 15568u, 46944u, 64851u), vec4<u32>(var_0.b, var_0.b, 50969u, u_input.b)), 29873u, 0u)));
    var var_2 = u_input.a.yzz;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(select(0u, 3351u, !global1.x), ~27458u));
}

