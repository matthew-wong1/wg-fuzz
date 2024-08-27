struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(true, vec3<i32>(22056i, 0i, 2147483647i)), Struct_1(true, vec3<i32>(-1362i, 5104i, 2147483647i)), Struct_1(false, vec3<i32>(-20230i, -1i, 1i)), Struct_1(false, vec3<i32>(28556i, 2147483647i, 1i)), Struct_1(false, vec3<i32>(i32(-2147483648), 0i, -1i)), Struct_1(true, vec3<i32>(1i, i32(-2147483648), 50189i)), Struct_1(false, vec3<i32>(-1i, 1i, 0i)), Struct_1(true, vec3<i32>(57379i, 22839i, -33501i)), Struct_1(false, vec3<i32>(-9744i, 0i, -1i)), Struct_1(false, vec3<i32>(7918i, -1i, 12378i)), Struct_1(false, vec3<i32>(44220i, 1i, 2147483647i)), Struct_1(true, vec3<i32>(-1i, -1i, 1i)), Struct_1(true, vec3<i32>(-1i, 2147483647i, -1i)), Struct_1(false, vec3<i32>(1i, -1i, -1i)), Struct_1(false, vec3<i32>(-1i, 30242i, 17459i)), Struct_1(true, vec3<i32>(2147483647i, 0i, i32(-2147483648))), Struct_1(true, vec3<i32>(29900i, -16951i, -19410i)), Struct_1(false, vec3<i32>(0i, -35559i, i32(-2147483648))), Struct_1(true, vec3<i32>(28921i, -1i, 14055i)), Struct_1(true, vec3<i32>(10637i, -42666i, 46809i)), Struct_1(false, vec3<i32>(-1i, i32(-2147483648), 1i)), Struct_1(true, vec3<i32>(-60409i, 2147483647i, 0i)), Struct_1(true, vec3<i32>(-5889i, 0i, 1i)), Struct_1(false, vec3<i32>(-14727i, 3236i, 24957i)), Struct_1(false, vec3<i32>(-33771i, i32(-2147483648), 27535i)), Struct_1(true, vec3<i32>(2147483647i, 1i, i32(-2147483648))), Struct_1(true, vec3<i32>(1i, -3425i, -10037i)), Struct_1(false, vec3<i32>(12085i, -1i, 1i)), Struct_1(true, vec3<i32>(1i, 10082i, 7096i)), Struct_1(true, vec3<i32>(2147483647i, -1i, i32(-2147483648))), Struct_1(false, vec3<i32>(37517i, -1i, 40365i)), Struct_1(false, vec3<i32>(2147483647i, 1i, 2147483647i)));

var<private> global1: Struct_1;

var<private> global2: vec4<i32> = vec4<i32>(0i, 2147483647i, -7290i, i32(-2147483648));

var<private> global3: array<vec4<bool>, 7>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec3<bool>, arg_1: i32) -> f32 {
    let var_0 = true;
    let var_1 = ~max(1i, _wgslsmith_dot_vec2_i32(global2.yz, vec2<i32>(~arg_1, ~19432i)));
    global0 = array<Struct_1, 32>();
    var var_2 = _wgslsmith_sub_i32(abs(-abs(global1.b.x)), 1i);
    let var_3 = abs(-countOneBits(~(global1.b.yy << (vec2<u32>(17450u, 1u) % vec2<u32>(32u)))));
    return -945f;
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> f32 {
    return -1175f;
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1) -> u32 {
    global1 = Struct_1(true, vec3<i32>(_wgslsmith_div_i32(i32(-1i) * -5333i, ~1i), 1i, _wgslsmith_mod_i32(~_wgslsmith_sub_i32(-2147483647i, arg_1), _wgslsmith_div_i32(u_input.b, -26383i))));
    let var_0 = global0[_wgslsmith_index_u32(~u_input.a.x, 32u)];
    let var_1 = Struct_1(global1.a, ~_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(var_0.b.x, global2.x, 1i)), vec3<i32>(u_input.b, global2.x, 1i)) >> (vec3<u32>(u_input.a.x, abs(u_input.a.x), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x)), vec3<u32>(807u, 21435u, u_input.c.x))) % vec3<u32>(32u)));
    var var_2 = min(vec2<u32>(u_input.a.x, 1u), vec2<u32>(u_input.c.x, _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.c.x, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(37133u, u_input.a.x, 65357u, 0u), vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 1u))))));
    let var_3 = !vec3<bool>(global1.a, !var_0.a, var_1.a);
    return abs(u_input.a.x | _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(1u, u_input.a.x), var_2.x, var_2.x), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 74904u, 56995u), vec3<u32>(u_input.c.x, 4294967295u, var_2.x) | vec3<u32>(89463u, 43068u, u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-1049f * -813f), 1f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-392f, -212f) * vec2<f32>(1848f, -1307f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1046f, 294f)))), !select(vec2<bool>(false, global1.a), vec2<bool>(true, global1.a), global1.a))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1726f, -345f)) - vec2<f32>(594f, -1004f))));
    var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_div_f32(836f, _wgslsmith_f_op_f32(-var_0.x))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec3<bool>(false, false, global1.a), global2.x)), _wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(~u_input.c.x, 32u)], true))), var_0.x)));
    var var_1 = global0[_wgslsmith_index_u32((_wgslsmith_sub_u32(1u, firstTrailingBit(u_input.c.x)) | _wgslsmith_sub_u32(~(~u_input.a.x), u_input.a.x)) ^ u_input.a.x, 32u)];
    var var_2 = false;
    var var_3 = global0[_wgslsmith_index_u32(u_input.a.x, 32u)];
    global2 = (firstTrailingBit(~_wgslsmith_div_vec4_i32(vec4<i32>(var_1.b.x, var_1.b.x, global2.x, 17385i), vec4<i32>(-34670i, 2147483647i, var_1.b.x, u_input.b))) >> (vec4<u32>(~16623u, u_input.a.x, 14549u, u_input.c.x) % vec4<u32>(32u))) << (vec4<u32>(func_3(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, var_0.x))), _wgslsmith_mult_i32(-1i, -4905i), global0[_wgslsmith_index_u32(~u_input.c.x, 32u)]) >> (u_input.a.x % 32u), ~u_input.c.x, _wgslsmith_div_u32(_wgslsmith_sub_u32(max(u_input.a.x, 2923u), 4294967295u), _wgslsmith_mult_u32(u_input.c.x, func_3(vec2<f32>(var_0.x, var_0.x), 25981i, global0[_wgslsmith_index_u32(60678u, 32u)]))), u_input.a.x) % vec4<u32>(32u));
    global3 = array<vec4<bool>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c << (u_input.a % vec3<u32>(32u)), abs(~(~(~53662u))), global2.x, _wgslsmith_mod_u32(62774u, 23864u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -211f) - -1007f))));
}

