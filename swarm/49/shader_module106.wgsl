struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: bool,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(-19886i, -15403i, 47228i), 0u, false, 4294967295u, -31578i);

var<private> global1: array<Struct_1, 26>;

var<private> global2: u32 = 31657u;

var<private> global3: u32 = 1u;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> vec3<f32> {
    return vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(1f)))), -760f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -183f))));
}

fn func_2() -> Struct_1 {
    global2 = global0.b;
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_mult_u32(8623u, 40403u), global0.c, global1[_wgslsmith_index_u32(~global0.b, 26u)])))))));
    global1 = array<Struct_1, 26>();
    global3 = select(_wgslsmith_mult_u32(global0.b, global0.b), select(65850u, ~1u, any(vec4<bool>(global0.c || global0.c, true, global0.c && global0.c, false))), !(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1000f, 480f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x))));
    let var_1 = Struct_3(Struct_1(-select(vec3<i32>(global0.a.x, -1i, -25185i), _wgslsmith_div_vec3_i32(global0.a, u_input.a), 119f == var_0.x), _wgslsmith_div_u32(~62905u, 1u) >> (_wgslsmith_sub_u32(~global0.b, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.d, global0.b, 1u, 4294967295u), vec4<u32>(global0.d, global0.b, 59073u, 1u))) % 32u), true, _wgslsmith_clamp_u32(~global0.b, ~(~1u), 1u), -_wgslsmith_mod_i32(abs(global0.e), _wgslsmith_add_i32(1i, global0.a.x))), global1[_wgslsmith_index_u32(~((global0.b << (global0.d % 32u)) << (76552u % 32u)) & ~(~global0.d ^ countOneBits(global0.d)), 26u)]);
    return Struct_1(_wgslsmith_add_vec3_i32(var_1.b.a, select(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.e, var_1.a.e), vec2<i32>(0i, var_1.a.a.x)), ~103240i, _wgslsmith_add_i32(-11582i, var_1.b.a.x)), vec3<i32>(~global0.a.x, ~u_input.a.x, global0.e), ~26257u > select(global0.b, global0.b, var_1.a.c))), var_1.b.b | (~_wgslsmith_add_u32(var_1.b.b, 0u) | (3132u << (_wgslsmith_add_u32(global0.d, global0.b) % 32u))), false, 49681u, countOneBits(max(-firstLeadingBit(var_1.a.e), -(global0.e ^ global0.a.x))));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: bool) -> vec4<i32> {
    var var_0 = false;
    global1 = array<Struct_1, 26>();
    global0 = func_2();
    var_0 = arg_2;
    let var_1 = Struct_3(Struct_1(global0.a, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(arg_1, 4294967295u)), ~vec2<u32>(arg_1, 4294967295u) << (~vec2<u32>(global0.b, global0.b) % vec2<u32>(32u))), true, _wgslsmith_mod_u32(~(~84489u), _wgslsmith_add_u32(1u, arg_1)), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-27072i, 1i, u_input.a.x, global0.e)), select(vec4<i32>(-22864i, 17890i, u_input.a.x, u_input.a.x), ~vec4<i32>(global0.a.x, -1i, global0.a.x, u_input.a.x), select(vec4<bool>(false, global0.c, arg_2, true), vec4<bool>(global0.c, global0.c, false, global0.c), vec4<bool>(global0.c, false, arg_2, arg_2))))), Struct_1(_wgslsmith_mult_vec3_i32(min(u_input.a, global0.a), vec3<i32>(-u_input.a.x, _wgslsmith_sub_i32(-23651i, -1i), countOneBits(-2147483647i))), 1u, -1i <= global0.a.x, 4294967295u, _wgslsmith_mod_i32(~(global0.e << (38983u % 32u)), ~(-u_input.a.x))));
    return vec4<i32>(i32(-1i) * -_wgslsmith_mod_i32(global0.a.x >> (4294967295u % 32u), select(global0.e, -1i, false)), ~2147483647i, _wgslsmith_mod_i32(i32(-1i) * -1i, abs(-33618i)), max(~_wgslsmith_div_i32(reverseBits(var_1.b.a.x), firstLeadingBit(-2147483647i)), global0.a.x >> (~firstLeadingBit(global0.d) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = 98579u;
    let var_0 = Struct_2(~firstLeadingBit(firstLeadingBit(14719i)) > _wgslsmith_mod_i32(-_wgslsmith_div_i32(global0.a.x, u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(22335i, u_input.a.x, -1i, global0.a.x), abs(vec4<i32>(26213i, 20197i, 1i, 2147483647i)))), _wgslsmith_div_f32(-133f, _wgslsmith_f_op_f32(round(-1000f))), vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.a.x, -82983i, -1i, 1i), vec4<i32>(global0.a.x, u_input.a.x, global0.e, 1i)), func_1(vec2<f32>(1748f, -1134f), 32330u, global0.c)), -(~vec4<i32>(-1i, global0.a.x, 1i, global0.a.x))), -1i, global0.e | _wgslsmith_sub_i32(global0.e, 1i), _wgslsmith_sub_i32(2147483647i, 0i)));
    var var_1 = var_0.b;
    global3 = 58365u;
    global3 = ~abs(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(1u, 1u)), select(vec2<u32>(0u, global0.b), vec2<u32>(1u, 1u), vec2<bool>(global0.c, var_0.a))), _wgslsmith_mod_u32(firstTrailingBit(4294967295u), ~1u)));
    let x = u_input.a;
    s_output = StorageBuffer(global0.b << ((93981u >> (1u % 32u)) % 32u), _wgslsmith_mod_u32(global0.b, global0.b), 38207i, vec3<u32>(43962u, ~39242u << (countOneBits(firstLeadingBit(global0.b)) % 32u), ~_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(global0.b, global0.d)), ~vec2<u32>(1u, global0.d))));
}

