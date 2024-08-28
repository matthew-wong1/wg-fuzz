struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_3,
    d: Struct_1,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32;

var<private> global2: Struct_3;

var<private> global3: array<vec2<f32>, 27> = array<vec2<f32>, 27>(vec2<f32>(1025f, 120f), vec2<f32>(4322f, -533f), vec2<f32>(154f, -724f), vec2<f32>(-1339f, 560f), vec2<f32>(334f, 433f), vec2<f32>(543f, 1406f), vec2<f32>(1352f, -537f), vec2<f32>(-814f, -538f), vec2<f32>(670f, -3447f), vec2<f32>(-1207f, -257f), vec2<f32>(-157f, -791f), vec2<f32>(-1378f, 641f), vec2<f32>(1479f, -477f), vec2<f32>(293f, -739f), vec2<f32>(-700f, 2389f), vec2<f32>(-549f, 387f), vec2<f32>(-1000f, 1554f), vec2<f32>(-995f, -281f), vec2<f32>(-819f, -1000f), vec2<f32>(-154f, -902f), vec2<f32>(956f, 1787f), vec2<f32>(-558f, -795f), vec2<f32>(1000f, 207f), vec2<f32>(-676f, -857f), vec2<f32>(-1096f, -183f), vec2<f32>(-1287f, -1104f), vec2<f32>(1000f, 714f));

var<private> global4: array<Struct_1, 23>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: bool) -> i32 {
    let var_0 = global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(global2.a.b.a.x) >> (~firstLeadingBit(58790u) % 32u), u_input.c.x), 23u)];
    let var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(~(~(47556i >> (u_input.c.x % 32u))), -2100i), vec2<i32>(-2147483647i, ~firstLeadingBit(0i)));
    global4 = array<Struct_1, 23>();
    var var_2 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-287f + _wgslsmith_f_op_f32(f32(-1f) * -836f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1014f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-182f)) + -309f) * -200f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1389f)))))), Struct_1(var_0.a, _wgslsmith_mult_vec3_u32(abs(vec3<u32>(var_0.b.x, var_0.b.x, var_0.b.x)), ~(global2.a.b.a << (vec3<u32>(var_0.b.x, var_0.a.x, global2.a.a.b.x) % vec3<u32>(32u)))), max(_wgslsmith_dot_vec2_i32(vec2<i32>(-11909i, -2866i), vec2<i32>(var_1, -1i)), abs(global2.a.b.c)) | (~var_0.c ^ _wgslsmith_sub_i32(-1i, -1i)), !vec3<bool>(true, !arg_1, arg_1)), vec3<u32>(_wgslsmith_mod_u32(var_0.b.x | 10204u, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.a.c.b.x, var_0.b.x, 1u), vec3<u32>(29673u, u_input.c.x, var_0.a.x))) & u_input.a, countOneBits(1u), u_input.b));
    var var_3 = Struct_5(vec4<f32>(-179f, var_2.a.x, var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1067f - var_2.a.x))), Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(var_2.c.x, 71303u), 27596u, var_0.b.x >> (var_0.b.x % 32u)), ~vec3<u32>(global2.a.c.a.x, 0u, global2.a.c.b.x) >> (global2.a.c.b % vec3<u32>(32u))), vec3<u32>(var_0.a.x, _wgslsmith_mod_u32(u_input.c.x, 1u), ~(~18263u)), _wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_0, 34067i), -7842i), !(!select(var_0.d, global2.a.b.d, vec3<bool>(true, var_0.d.x, global2.a.c.d.x)))), ~global2.a.c.a);
    return min(_wgslsmith_div_i32(var_0.c, min(2147483647i & (var_1 << (0u % 32u)), ~select(63905i, var_1, true))), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(firstTrailingBit(-vec3<i32>(-26571i, -2147483647i, 27737i)), vec3<i32>(_wgslsmith_clamp_i32(global2.a.a.c, arg_0, var_0.c), arg_0 >> (1u % 32u), _wgslsmith_mod_i32(var_1, arg_0))), vec3<i32>(-(~0i), 1i, global2.a.c.c)));
}

fn func_2(arg_0: Struct_4) -> bool {
    let var_0 = arg_0;
    var var_1 = vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(~(~vec2<i32>(-2147483647i, -2147483647i)), select(abs(vec2<i32>(arg_0.c.a.c.c, -59327i)), -vec2<i32>(arg_0.b.c.c, 4072i), vec2<bool>(false, arg_0.d.d.x)));
    var var_2 = Struct_4(i32(-1i) * -2147483647i, Struct_2(Struct_1(~abs(vec3<u32>(55826u, u_input.b, global2.a.a.a.x)), abs(global2.a.c.b) ^ arg_0.c.a.a.b, global2.a.a.c, select(global2.a.b.d, global2.a.b.d, global2.a.a.d)), Struct_1(min(vec3<u32>(arg_0.b.a.a.x, global2.a.b.a.x, u_input.b), vec3<u32>(0u, 1u, global2.a.a.b.x)), arg_0.b.c.b, func_3(var_1.x, true), vec3<bool>(select(true, false, arg_0.d.d.x), true, !global2.a.c.d.x)), arg_0.b.a), Struct_3(var_0.b), var_0.b.b);
    var_1 = abs(~vec2<i32>(_wgslsmith_mult_i32(5037i, ~global2.a.b.c), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.a.a.c, 47379i, var_0.b.b.c), -vec3<i32>(var_1.x, -2147483647i, var_0.d.c))));
    let var_3 = var_0;
    return !(var_2.b.c.d.x == var_2.c.a.a.d.x) && (var_3.d.d.x && all(!vec2<bool>(var_0.d.d.x, false)));
}

fn func_1(arg_0: i32, arg_1: u32) -> Struct_1 {
    var var_0 = vec4<bool>(!(!func_2(Struct_4(-1i, Struct_2(Struct_1(global2.a.c.b, vec3<u32>(0u, 6191u, global2.a.c.b.x), arg_0, global2.a.b.d), Struct_1(global2.a.c.b, global2.a.a.b, arg_0, global2.a.a.d), global4[_wgslsmith_index_u32(1u, 23u)]), Struct_3(Struct_2(Struct_1(vec3<u32>(73177u, 25875u, 0u), vec3<u32>(arg_1, 26344u, u_input.c.x), global2.a.b.c, global2.a.c.d), global4[_wgslsmith_index_u32(global2.a.a.b.x, 23u)], global2.a.a)), Struct_1(global2.a.c.a, vec3<u32>(u_input.a, arg_1, 0u), 1i, vec3<bool>(global2.a.a.d.x, true, true))))), global2.a.c.d.x, true && global2.a.a.d.x, true);
    let var_1 = vec3<u32>(u_input.b, ~786u, abs(firstTrailingBit(global2.a.b.a.x) << (u_input.b % 32u)));
    var_0 = select(!(!(!vec4<bool>(true, var_0.x, true, var_0.x))), vec4<bool>(any(select(!vec4<bool>(global2.a.b.d.x, false, true, var_0.x), !vec4<bool>(var_0.x, var_0.x, false, global2.a.a.d.x), !var_0.x)), !(!(!global2.a.a.d.x)), (firstLeadingBit(global2.a.c.c) < ~25856i) || all(!vec2<bool>(global2.a.a.d.x, true)), true), false);
    let var_2 = Struct_3(Struct_2(Struct_1(vec3<u32>(4294967295u, 2795u, countOneBits(4294967295u)), global2.a.c.b, reverseBits(global2.a.b.c), select(!var_0.xxx, !vec3<bool>(false, var_0.x, true), !global2.a.c.d.x)), global2.a.c, global2.a.b));
    let var_3 = 52751i;
    return var_2.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -_wgslsmith_mult_i32(~(~(-29857i)), -56083i);
    var var_0 = func_1(2147483647i, 25960u);
    let var_1 = _wgslsmith_sub_vec4_i32(-select(-vec4<i32>(-38859i, global2.a.b.c, 1i, var_0.c), firstLeadingBit(vec4<i32>(global2.a.c.c, 0i, 1i, var_0.c)), !vec4<bool>(true, true, var_0.d.x, false)) & (select(reverseBits(vec4<i32>(global2.a.c.c, var_0.c, 0i, global2.a.a.c)), -vec4<i32>(global2.a.c.c, 1i, var_0.c, -5178i), vec4<bool>(global2.a.b.d.x, false, true, var_0.d.x)) | countOneBits(vec4<i32>(10242i, 34821i, 2147483647i, 47808i) ^ vec4<i32>(var_0.c, global2.a.b.c, -1578i, global2.a.b.c))), ~countOneBits((vec4<i32>(-13345i, -1i, var_0.c, -38073i) & vec4<i32>(-63873i, var_0.c, var_0.c, -2147483647i)) | max(vec4<i32>(global2.a.a.c, var_0.c, var_0.c, var_0.c), vec4<i32>(0i, global2.a.a.c, 0i, var_0.c))));
    global0 = _wgslsmith_div_i32(var_0.c, -_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(var_1.wyw, var_1.zzx, vec3<i32>(-13608i, -18749i, global2.a.a.c)), ~var_1.yzz), var_0.c));
    let var_2 = Struct_3(Struct_2(func_1(7799i, ~_wgslsmith_mult_u32(1u, var_0.b.x)), func_1(41813i, ~u_input.b), func_1(var_1.x, func_1(_wgslsmith_div_i32(var_1.x, 0i), _wgslsmith_add_u32(global2.a.c.b.x, var_0.a.x)).b.x)));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2078f, 243f))), 811f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -541f) - _wgslsmith_f_op_f32(109f + -723f))))));
    global0 = var_0.c;
    var_0 = Struct_1(~vec3<u32>(4294967295u, abs(0u), var_0.b.x >> (u_input.a % 32u)), vec3<u32>(~select(34785u >> (var_0.b.x % 32u), 18697u, var_2.a.a.d.x), countOneBits(1u), ~(u_input.c.x >> (firstLeadingBit(63007u) % 32u))), -_wgslsmith_add_i32(var_0.c, 18904i) | ~firstTrailingBit(_wgslsmith_mod_i32(0i, 5874i)), select(var_2.a.c.d, var_2.a.a.d, global2.a.a.d));
    let var_4 = vec4<u32>(_wgslsmith_mult_u32(var_0.b.x, ~var_2.a.a.b.x) | 26721u, ~_wgslsmith_mult_u32(1u, 30213u), ~(u_input.a << (firstLeadingBit(abs(69939u)) % 32u)), var_0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~14311u, var_0.b.x, abs(~var_0.b.x)));
}

