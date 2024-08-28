struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32 = -1i;

var<private> global2: array<u32, 13>;

var<private> global3: bool = false;

var<private> global4: Struct_1 = Struct_1(vec4<bool>(true, true, true, false));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    return Struct_1(!vec4<bool>(true, global4.a.x, true, true));
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = vec3<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(4294967295u, global2[_wgslsmith_index_u32(u_input.a.x, 13u)]) | 1u, 23114u), u_input.a.wx), 1u);
    global2 = array<u32, 13>();
    let var_1 = func_2(arg_0, Struct_1(!global4.a), abs(_wgslsmith_add_u32(u_input.a.x, global2[_wgslsmith_index_u32(43035u, 13u)])) << (52188u % 32u));
    global3 = false;
    var var_2 = ~vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(0i, 1i, u_input.b), (vec3<i32>(u_input.b, -1i, -1i) | vec3<i32>(44270i, u_input.b, 16219i)) >> (~var_0 % vec3<u32>(32u))), 0i);
    return -23549i;
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(_wgslsmith_mult_i32(u_input.b, -u_input.b), -38613i, -1i));
    let var_1 = func_2(arg_2, Struct_1(vec4<bool>((arg_0.x > -327f) & (arg_0.x > 1272f), arg_3.a.x, false, any(select(arg_2.a.zzw, arg_2.a.yxx, false)))), 0u);
    let var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 10925i, u_input.b), -vec3<i32>(15681i, 33129i, u_input.b)) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(33248i, u_input.b, -2147483647i) << (vec3<u32>(14705u, arg_1.x, 1u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b))), ~18973i, u_input.b), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(min(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, -33783i, -1i), vec4<i32>(u_input.b, -2147483647i, 2147483647i, u_input.b)), vec4<i32>(u_input.b, u_input.b, u_input.b, 20126i)), vec4<i32>(1i, u_input.b ^ 33575i, ~2147483647i, _wgslsmith_mult_i32(u_input.b, u_input.b))), countOneBits(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.b, 3614i, u_input.b), vec4<i32>(u_input.b, 2147483647i, 2147483647i, u_input.b)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 0i, u_input.b, u_input.b), vec4<i32>(u_input.b, -33954i, 2147483647i, u_input.b))))));
    global1 = abs(43380i);
    let var_3 = var_2.wx & abs(countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, -2147483647i) | vec2<i32>(var_2.x, -4393i), vec2<i32>(var_2.x, 11478i))));
    return ~u_input.a.ww;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.b;
    global4 = Struct_1(global4.a);
    var var_0 = min(reverseBits(vec3<i32>(func_1(Struct_1(global4.a)) ^ ~u_input.b, u_input.b & 1i, -2147483647i)), vec3<i32>(-2147483647i, -u_input.b, -(_wgslsmith_mult_i32(u_input.b, 48330i) & -2147483647i)));
    var var_1 = Struct_1(select(!global4.a, vec4<bool>(global4.a.x && all(vec4<bool>(true, true, global4.a.x, global4.a.x)), false, true, false), vec4<bool>(!any(vec3<bool>(global4.a.x, true, false)), any(vec2<bool>(true, global4.a.x)) & all(global4.a.wzy), true, global4.a.x)));
    var var_2 = max(~(~1u), _wgslsmith_add_u32(~(16303u << (0u % 32u)), ~firstTrailingBit(~global2[_wgslsmith_index_u32(u_input.a.x, 13u)])));
    global3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(reverseBits(_wgslsmith_dot_vec2_u32(~u_input.a.wy, ~vec2<u32>(u_input.a.x, 4294967295u))), 4294967295u, ~u_input.a.x | ~max(4294967295u, u_input.a.x), 1u), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1193f, 693f) - -635f)), global2[_wgslsmith_index_u32(abs(min(_wgslsmith_mult_u32(4294967295u, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(63647u, 62436u), func_3(vec4<f32>(379f, 201f, -882f, -1000f), vec3<u32>(global2[_wgslsmith_index_u32(15249u, 13u)], 4294967295u, global2[_wgslsmith_index_u32(19214u, 13u)]), Struct_1(vec4<bool>(true, false, global4.a.x, true)), Struct_1(vec4<bool>(var_1.a.x, true, var_1.a.x, true)))))), 13u)], _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1382f, -404f))));
}

