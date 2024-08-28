struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: vec4<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 28> = array<vec3<f32>, 28>(vec3<f32>(-1584f, -284f, 2228f), vec3<f32>(-128f, -230f, 890f), vec3<f32>(-491f, 397f, 403f), vec3<f32>(1413f, 798f, 448f), vec3<f32>(-1086f, -754f, 320f), vec3<f32>(-288f, -261f, 624f), vec3<f32>(-590f, -1418f, 836f), vec3<f32>(1935f, 1039f, 868f), vec3<f32>(-537f, 272f, -1345f), vec3<f32>(103f, 401f, 106f), vec3<f32>(1496f, 1954f, 1669f), vec3<f32>(-379f, -796f, 781f), vec3<f32>(-633f, -112f, -502f), vec3<f32>(294f, -2121f, -262f), vec3<f32>(-482f, 237f, -462f), vec3<f32>(-1000f, -1000f, -419f), vec3<f32>(1373f, 684f, -153f), vec3<f32>(-1407f, 1159f, -133f), vec3<f32>(-1000f, -180f, -673f), vec3<f32>(-439f, -661f, -513f), vec3<f32>(275f, 680f, 211f), vec3<f32>(201f, -2186f, -716f), vec3<f32>(571f, -305f, -671f), vec3<f32>(106f, -2815f, -1158f), vec3<f32>(107f, -775f, 1323f), vec3<f32>(421f, 522f, 905f), vec3<f32>(122f, -312f, 173f), vec3<f32>(-198f, -471f, 363f));

var<private> global1: Struct_1 = Struct_1(2147483647i, 273f, 0i, vec4<i32>(25632i, 64241i, 0i, -18719i), 0i);

var<private> global2: Struct_3;

var<private> global3: array<Struct_3, 14>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> vec2<f32> {
    global3 = array<Struct_3, 14>();
    let var_0 = -38186i;
    var var_1 = ~arg_0.d;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global2.c))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(global2.c + global2.c)))), _wgslsmith_f_op_vec4_f32(select(global2.c, vec4<f32>(_wgslsmith_f_op_f32(min(arg_0.b, 341f)), _wgslsmith_div_f32(809f, global2.b), _wgslsmith_f_op_f32(f32(-1f) * -1646f), _wgslsmith_f_op_f32(-global2.b)), vec4<bool>(true, true, true, true))))));
    var var_3 = reverseBits(~select(_wgslsmith_add_vec4_i32(select(vec4<i32>(arg_1.x, 44003i, global1.e, -2147483647i), arg_0.d, false), abs(arg_0.d)), -vec4<i32>(-56570i, var_1.x, u_input.a.x, u_input.c.x), true));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-600f, 1553f)) * _wgslsmith_f_op_f32(-global1.b)), _wgslsmith_f_op_f32(ceil(global1.b)))));
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    global2 = Struct_3(-158f, global2.c.x, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(599f, 985f, 877f, global2.c.x) + global2.c)), vec4<f32>(global1.b, _wgslsmith_div_f32(-1141f, global2.b), _wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(round(global1.b))))))));
    let var_0 = -8004i;
    var var_1 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-28186i, -38489i, -40325i, 1i) << (((vec4<u32>(1u, 4294967295u, u_input.b.x, 1u) ^ vec4<u32>(27515u, u_input.b.x, u_input.b.x, u_input.b.x)) & vec4<u32>(0u, 3885u, 0u, 14675u)) % vec4<u32>(32u)), select(vec4<i32>(-1i) * -vec4<i32>(0i, var_0, u_input.a.x, var_0), vec4<i32>(u_input.a.x, arg_0.x, 6977i, 8533i), true)), global2.c.x, 1i, global1.d >> (~firstLeadingBit(~vec4<u32>(u_input.b.x, u_input.b.x, 0u, 63795u)) % vec4<u32>(32u)), 28691i);
    let var_2 = -479f;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(global2.c.zw, vec2<f32>(var_2, global1.b))), vec2<f32>(470f, global1.b))), _wgslsmith_f_op_vec2_f32(-global2.c.wx)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(var_0, global2.a, -4962i, var_1.d, 15606i), vec2<i32>(u_input.a.x, 2147483647i))))) * global2.c.zz);
    return abs(~u_input.b.x);
}

fn func_1(arg_0: f32) -> vec4<f32> {
    global3 = array<Struct_3, 14>();
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, _wgslsmith_dot_vec3_u32(select(vec3<u32>(630u, 0u, u_input.b.x), vec3<u32>(56397u, u_input.b.x, u_input.b.x), vec3<bool>(false, false, true)), vec3<u32>(u_input.b.x, 17421u, 75093u)), 1u) & vec4<u32>(u_input.b.x ^ _wgslsmith_mult_u32(u_input.b.x, 1u), 31011u, func_2(global1.d), _wgslsmith_sub_u32(u_input.b.x, 1u)), abs(vec4<u32>(firstLeadingBit(4294967295u), min(16813u, 75025u), u_input.b.x, u_input.b.x) & min(vec4<u32>(13941u, 38005u, u_input.b.x, 34245u), _wgslsmith_clamp_vec4_u32(vec4<u32>(10510u, u_input.b.x, u_input.b.x, 1580u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, 0u, 91134u))))), 14u)];
    var var_1 = Struct_2(Struct_1(i32(-1i) * -26864i, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -236f), _wgslsmith_f_op_f32(-global2.c.x)))), -_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(u_input.c.x, u_input.c.x, global1.e)), vec3<i32>(u_input.c.x, -21055i, u_input.c.x) & global1.d.zzz), _wgslsmith_mult_vec4_i32(vec4<i32>(-48439i, ~global1.d.x, -11573i, _wgslsmith_mod_i32(u_input.a.x, -20974i)), ~vec4<i32>(u_input.c.x, u_input.a.x, u_input.c.x, global1.a)), -39148i), Struct_1(_wgslsmith_div_i32(u_input.a.x, -26i), -137f, _wgslsmith_add_i32(-2147483647i, 2147483647i | (u_input.c.x << (113836u % 32u))), _wgslsmith_clamp_vec4_i32(reverseBits(-global1.d), global1.d, global1.d), global1.a), Struct_1(~51358i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -150f), 321f, select(false, true, false)))), min(34049i, -select(4759i, u_input.c.x, false)), firstLeadingBit(global1.d) & vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-35057i, 2147483647i, 64991i), u_input.a), countOneBits(global1.c), -25971i, -u_input.a.x), 0i));
    var var_2 = -347f;
    var var_3 = Struct_2(var_1.c, Struct_1(u_input.c.x, -680f, u_input.c.x, ~(max(vec4<i32>(36774i, global1.e, -1i, -1i), var_1.b.d) & ~var_1.b.d), max(max(global1.e, -1i) ^ (i32(-1i) * -58819i), (var_1.a.e | -1i) >> (u_input.b.x % 32u))), Struct_1(28300i, -464f, u_input.c.x, vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(2147483647i, global1.e), var_1.b.a), -_wgslsmith_div_i32(global1.d.x, 61929i), -9160i << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, 4294967295u, 1u), vec4<u32>(24527u, u_input.b.x, 71306u, u_input.b.x)) % 32u), 30957i), global1.d.x));
    return _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(481f, 364f, _wgslsmith_f_op_f32(912f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(var_1.c.b + arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_3(global2.c.x, global2.a, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_1(global2.b)), vec4<f32>(global2.b, global1.b, 913f, _wgslsmith_f_op_f32(-158f * _wgslsmith_f_op_f32(step(-712f, -2055f)))))));
    var var_0 = select(max(~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 4294967295u), vec3<u32>(4294967295u, u_input.b.x, 0u)), vec3<u32>(17971u, u_input.b.x, u_input.b.x)) | vec3<u32>(39707u, _wgslsmith_clamp_u32(~u_input.b.x, 1u, 25945u), 1u | u_input.b.x), select(~vec3<u32>(_wgslsmith_sub_u32(0u, u_input.b.x), 16339u, ~12899u), vec3<u32>(abs(9720u), u_input.b.x, _wgslsmith_clamp_u32(select(u_input.b.x, u_input.b.x, false), 1u, min(13472u, u_input.b.x))), vec3<bool>(true, true, true)), select(!vec3<bool>(any(vec2<bool>(true, true)), true, true), vec3<bool>(true, true, true), vec3<bool>(!(u_input.b.x != u_input.b.x), global2.a >= _wgslsmith_f_op_f32(sign(1244f)), select(u_input.b.x <= u_input.b.x, all(vec2<bool>(false, true)), any(vec2<bool>(true, true))))));
    global0 = array<vec3<f32>, 28>();
    var_0 = ~vec3<u32>(_wgslsmith_add_u32(~u_input.b.x ^ (u_input.b.x ^ var_0.x), ~u_input.b.x), ~var_0.x, ~u_input.b.x);
    let var_1 = -2147483647i;
    var_0 = countOneBits(~((abs(vec3<u32>(0u, 18635u, var_0.x)) | vec3<u32>(1u, 4294967295u, 1u)) >> (vec3<u32>(~14144u, ~var_0.x, min(u_input.b.x, 14522u)) % vec3<u32>(32u))));
    global3 = array<Struct_3, 14>();
    var_0 = _wgslsmith_div_vec3_u32(~firstLeadingBit(reverseBits(vec3<u32>(4294967295u, u_input.b.x, 59971u))) ^ vec3<u32>(u_input.b.x >> ((1u ^ u_input.b.x) % 32u), ~(~1u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.x, var_0.x), vec3<u32>(1u, var_0.x, 14552u))), ~_wgslsmith_add_vec3_u32(~vec3<u32>(23486u, var_0.x, 6409u) >> (countOneBits(vec3<u32>(u_input.b.x, u_input.b.x, var_0.x)) % vec3<u32>(32u)), ~vec3<u32>(u_input.b.x, 7451u, var_0.x) & ~vec3<u32>(4294967295u, 1u, 5739u)));
    global1 = Struct_1(select(u_input.c.x, ~(-(~(-10264i))), all(vec2<bool>(any(vec4<bool>(false, true, false, false)), select(true, false, true)))), global1.b, min(~_wgslsmith_sub_i32(_wgslsmith_mult_i32(0i, 1i), 11263i), reverseBits(abs(u_input.a.x << (var_0.x % 32u)))), _wgslsmith_add_vec4_i32(global1.d, ~(vec4<i32>(global1.c, var_1, u_input.a.x, 25752i) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, var_1, var_1, -27388i), vec4<i32>(0i, -1i, var_1, -31091i), vec4<i32>(global1.c, -10158i, global1.e, global1.e)))), _wgslsmith_dot_vec4_i32(abs(~(vec4<i32>(-1i, 0i, var_1, 1i) | global1.d)), global1.d));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(global1.b, _wgslsmith_f_op_f32(exp2(global2.c.x)), 948f, -154f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.b))) * global2.b), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(-2147483647i, global2.c.x, firstLeadingBit(u_input.c.x), ~vec4<i32>(15106i, global1.a, var_1, var_1), _wgslsmith_mod_i32(~34870i, u_input.c.x << (u_input.b.x % 32u))), countOneBits(max(-vec2<i32>(var_1, u_input.a.x), min(global1.d.yz, u_input.a.xy))))).x, vec4<u32>(~(~max(u_input.b.x, u_input.b.x)), countOneBits(8716u), ~1u, 15509u), firstTrailingBit(vec2<u32>(~(~var_0.x), u_input.b.x)));
}

