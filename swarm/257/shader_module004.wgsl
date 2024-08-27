struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<Struct_1, 27>;

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(265f, 757f), Struct_1(334f, 1470f), Struct_1(909f, 262f), Struct_1(-570f, 182f), Struct_1(-1259f, 1041f), Struct_1(-811f, 1173f), Struct_1(446f, 1169f), Struct_1(1239f, 508f), Struct_1(-855f, 2133f), Struct_1(-702f, 676f), Struct_1(-361f, -304f), Struct_1(-777f, 742f), Struct_1(-382f, 1135f), Struct_1(-1054f, 873f));

var<private> global3: array<vec2<i32>, 13>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> u32 {
    let var_0 = -1383f;
    global0 = vec4<i32>(~2147483647i, firstTrailingBit(~18484i), global0.x, u_input.a);
    let var_1 = 1i;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), var_0);
    var var_3 = true;
    return ~1u;
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = arg_2;
    var var_1 = _wgslsmith_add_i32(~(-1i), _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, arg_1, u_input.a) | _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 48223i, global0.x), global0.zwy), vec3<i32>(firstTrailingBit(arg_1), -global0.x, select(11054i, 2147483647i, true))) & arg_1);
    var var_2 = global1[_wgslsmith_index_u32(10330u, 27u)];
    global2 = array<Struct_1, 14>();
    global3 = array<vec2<i32>, 13>();
    return select(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), any(vec2<bool>(false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), true), !select(vec2<bool>(false, false), vec2<bool>(true, true), true)), !select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true), true), !select(vec2<bool>(true, false), vec2<bool>(true, false), true), arg_2.a >= var_0.a), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), true || (var_0.b <= var_0.b)), select(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(true, true)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>) -> vec4<i32> {
    global2 = array<Struct_1, 14>();
    let var_0 = global1[_wgslsmith_index_u32(abs(~4294967295u), 27u)];
    let var_1 = any(func_4(vec4<u32>(u_input.b.x, _wgslsmith_sub_u32(countOneBits(u_input.b.x), 17677u), func_3(), min(4294967295u, 4294967295u)), _wgslsmith_clamp_i32(-select(-65171i, global0.x, false), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-14230i, global0.x, u_input.a)), vec3<i32>(1428i, global0.x, u_input.a)), global0.x), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b), arg_0.b, false)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.a)))), arg_0));
    global2 = array<Struct_1, 14>();
    global3 = array<vec2<i32>, 13>();
    return ~vec4<i32>(_wgslsmith_sub_i32(-(~global0.x), reverseBits(-global0.x)), global0.x, -select(i32(-1i) * -30204i, firstLeadingBit(54549i), true), _wgslsmith_add_i32(u_input.a, -7594i));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> u32 {
    global0 = -vec4<i32>(-2147483647i, 2147483647i, 2147483647i, firstLeadingBit(_wgslsmith_dot_vec4_i32(func_2(Struct_1(363f, 603f), vec3<u32>(arg_2, arg_2, arg_2)), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, global0.x, 1129i, arg_0), vec4<i32>(global0.x, global0.x, global0.x, global0.x)))));
    global3 = array<vec2<i32>, 13>();
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(-36514i, arg_0, arg_0), global0.wxz), firstLeadingBit(~u_input.a)) ^ select(vec2<i32>(_wgslsmith_sub_i32(global0.x, 31113i), u_input.a | u_input.a), -select(global0.zx, vec2<i32>(19124i, arg_0), true), !select(vec2<bool>(false, false), vec2<bool>(false, false), true)), _wgslsmith_sub_vec2_i32(firstLeadingBit(max(~vec2<i32>(u_input.a, -2147483647i), global0.yy ^ global3[_wgslsmith_index_u32(49269u, 13u)])), _wgslsmith_add_vec2_i32(-vec2<i32>(u_input.a, -2147483647i) >> (firstTrailingBit(vec2<u32>(arg_2, u_input.b.x)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(-global0.zy, countOneBits(global3[_wgslsmith_index_u32(u_input.b.x, 13u)])))));
    global2 = array<Struct_1, 14>();
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 27>();
    var var_0 = vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.b.x, ~u_input.b.x, ~0u) << (select(vec3<u32>(u_input.b.x, u_input.b.x, 50414u) ^ vec3<u32>(u_input.b.x, 86373u, u_input.b.x), vec3<u32>(6112u, u_input.b.x, 3730u), vec3<bool>(true, false, false)) % vec3<u32>(32u)), vec3<u32>(~min(u_input.b.x, 4294967295u), max(u_input.b.x, 0u >> (u_input.b.x % 32u)), 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, ~u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(_wgslsmith_clamp_u32(~u_input.b.x, ~0u, 8251u), u_input.b.x, 77151u, u_input.b.x)), _wgslsmith_mod_u32(~func_1(global0.x, Struct_1(-1764f, -703f), 12590u), u_input.b.x), ~((u_input.b.x | u_input.b.x) << (firstLeadingBit(u_input.b.x) % 32u)) ^ (u_input.b.x ^ firstTrailingBit(54226u)));
    let var_1 = !(!any(vec2<bool>(true, false)));
    global0 = _wgslsmith_clamp_vec4_i32(max(countOneBits(-vec4<i32>(u_input.a, 1i, global0.x, global0.x)), firstLeadingBit(vec4<i32>(1i, global0.x, u_input.a, u_input.a) ^ vec4<i32>(-1i, 2147483647i, global0.x, -2147483647i))), ~vec4<i32>(u_input.a >> (1u % 32u), -u_input.a, 1i, -1i), _wgslsmith_add_vec4_i32(vec4<i32>(19384i, u_input.a, u_input.a, 22260i), select(vec4<i32>(global0.x, global0.x, -14543i, 0i), vec4<i32>(global0.x, global0.x, -2147483647i, u_input.a), var_1)) | max(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -2147483647i, global0.x, 0i), vec4<i32>(u_input.a, global0.x, -2147483647i, global0.x), vec4<i32>(global0.x, 1i, u_input.a, global0.x)), firstTrailingBit(vec4<i32>(-12353i, -2147483647i, u_input.a, 2147483647i)))) ^ ~_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(6764i, 20322i, 11099i), 39905i << (u_input.b.x % 32u), 1i, _wgslsmith_sub_i32(-2147483647i, -2147483647i)), -vec4<i32>(48121i, -45314i, u_input.a, -14025i) ^ -vec4<i32>(-2147483647i, -5385i, u_input.a, global0.x));
    let var_2 = _wgslsmith_mult_u32(~(~func_1(global0.x, Struct_1(600f, -289f), firstTrailingBit(u_input.b.x))), (var_0.x >> (_wgslsmith_dot_vec2_u32(select(u_input.b, var_0.wz, var_1), u_input.b) % 32u)) & 17095u);
    let var_3 = global2[_wgslsmith_index_u32(~(~var_0.x), 14u)];
    let var_4 = !any(vec4<bool>(true, var_1, true, any(vec3<bool>(true, var_1, var_1))));
    var var_5 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_3.a, _wgslsmith_f_op_f32(314f - -1894f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_3.a)), var_3.b))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a))), _wgslsmith_f_op_f32(-var_3.b));
    let x = u_input.a;
    s_output = StorageBuffer(-27592i, var_2, global0.x, vec2<i32>(global0.x, reverseBits(global0.x)));
}

