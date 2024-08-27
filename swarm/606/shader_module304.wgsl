struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 24>;

var<private> global1: u32;

var<private> global2: vec2<bool>;

var<private> global3: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(25566u, 96301u, 22463u), vec3<u32>(1u, 20695u, 18634u), vec3<u32>(83168u, 329u, 48864u), vec3<u32>(0u, 45576u, 428u), vec3<u32>(0u, 1u, 42239u), vec3<u32>(52143u, 89942u, 4294967295u), vec3<u32>(28873u, 66209u, 53359u), vec3<u32>(4294967295u, 1u, 2977u), vec3<u32>(1u, 5163u, 1u), vec3<u32>(4294967295u, 1u, 42516u), vec3<u32>(4294967295u, 0u, 55742u), vec3<u32>(40335u, 4294967295u, 1u), vec3<u32>(4294967295u, 11975u, 64767u));

var<private> global4: f32;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_4) -> f32 {
    return arg_3.b.d.x;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    let var_0 = Struct_4(arg_0.a.x, Struct_1(vec2<bool>(global2.x, global2.x), true, -2081f, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -939f), 664f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-806f - -3656f)))), arg_0);
    var var_1 = abs(~(~abs(~arg_1.a.x)));
    let var_2 = vec2<i32>(-1i) * -vec2<i32>(u_input.a, u_input.a & 0i);
    let var_3 = reverseBits(-_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(u_input.c, -19853i), _wgslsmith_clamp_i32(var_2.x, -1i, -13517i), _wgslsmith_div_i32(20997i, 1i)), reverseBits(vec3<i32>(var_2.x, var_2.x, u_input.c)) & _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -1i, u_input.c), vec3<i32>(u_input.c, -29981i, -16390i))));
    global4 = var_0.b.d.x;
    return -744f;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec4<f32>) -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(~(~(_wgslsmith_mod_u32(u_input.b.x, ~7275u) >> (~u_input.d % 32u))), 24u)];
    global2 = !(!var_0.b.a);
    var var_1 = global2.x;
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(412f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_3(-39941i, vec3<u32>(u_input.d, 0u, 4294967295u)), vec4<i32>(u_input.a, 1i, 9311i, u_input.c), 20060i, global0[_wgslsmith_index_u32(0u, 24u)])) - _wgslsmith_f_op_f32(-481f * 462f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(vec3<u32>(var_0.a, 4294967295u, u_input.b.x)), Struct_2(var_0.c.a)))))) * _wgslsmith_f_op_f32(1836f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, arg_2.x, true))), _wgslsmith_f_op_f32(round(-1000f))))));
    let var_2 = all(select(vec3<bool>(true, global2.x, true), !vec3<bool>(true, any(vec3<bool>(var_0.b.a.x, true, var_0.b.a.x)), arg_1), select(vec3<bool>(2092f != var_0.b.d.x, all(vec3<bool>(global2.x, false, var_0.b.b)), any(vec2<bool>(true, arg_1))), !vec3<bool>(true, global2.x, false), global2.x)));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<i32>(-_wgslsmith_mod_i32(u_input.a, func_1(global2.x, false, vec4<f32>(1950f, -517f, 473f, -1000f))), u_input.c, -496i, firstLeadingBit(~u_input.c)), _wgslsmith_sub_vec4_i32(-_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.a, 17513i, u_input.c), vec4<i32>(-6158i, -2147483647i, u_input.c, u_input.c)), -vec4<i32>(-6457i, u_input.c, u_input.a, u_input.c)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.a, 0i, u_input.c), vec4<i32>(u_input.c, u_input.a, u_input.c, u_input.a)) | select(abs(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.a)), reverseBits(vec4<i32>(-34655i, 0i, -2147483647i, 1964i)), false)), select(!select(select(vec4<bool>(true, global2.x, global2.x, global2.x), vec4<bool>(true, true, false, false), vec4<bool>(global2.x, true, global2.x, global2.x)), select(vec4<bool>(false, false, global2.x, false), vec4<bool>(false, false, global2.x, true), vec4<bool>(true, true, global2.x, global2.x)), true), select(!vec4<bool>(false, global2.x, true, global2.x), select(vec4<bool>(false, global2.x, global2.x, true), vec4<bool>(true, false, true, false), vec4<bool>(true, global2.x, false, global2.x)), 1i < abs(u_input.c)), !vec4<bool>(global2.x, true, global2.x, global2.x)));
    global0 = array<Struct_4, 24>();
    let var_1 = ~(~(~1015u));
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - 170f);
    var_0 = vec4<i32>(abs(-u_input.a ^ -1i) | ((-63248i ^ -var_0.x) >> (_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.d, 124811u, 1u), u_input.b.x) % 32u)), -9376i, 71887i, ~u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(~select(~var_0.x, firstTrailingBit(var_0.x), any(!vec2<bool>(global2.x, true))), _wgslsmith_f_op_f32(func_3(Struct_2(global3[_wgslsmith_index_u32(u_input.b.x, 13u)]), Struct_2(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.d, 29741u), vec3<u32>(var_1, 147840u, 137655u) & vec3<u32>(u_input.b.x, 0u, var_1), vec3<u32>(4808u, 93134u, 4294967295u))))), 1u, ~firstTrailingBit(_wgslsmith_clamp_i32(-50217i, abs(0i), var_0.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, 199f, -207f, 1276f))))))));
}

