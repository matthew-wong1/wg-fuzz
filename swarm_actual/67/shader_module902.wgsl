struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec2<bool>(true, false), vec4<f32>(864f, 795f, 1125f, 1179f), vec2<i32>(30973i, -1i), 2212i), Struct_1(vec2<bool>(true, true), vec4<f32>(1000f, -1288f, -1725f, 3075f), vec2<i32>(6191i, 1i), 18642i), Struct_1(vec2<bool>(false, true), vec4<f32>(722f, 1792f, 378f, -409f), vec2<i32>(1i, -5476i), -10315i), Struct_1(vec2<bool>(false, true), vec4<f32>(346f, 1237f, 786f, 711f), vec2<i32>(1i, -13839i), 1i), Struct_1(vec2<bool>(false, true), vec4<f32>(-574f, 604f, -1040f, -728f), vec2<i32>(-1i, 2147483647i), -1i), Struct_1(vec2<bool>(true, true), vec4<f32>(313f, 701f, -299f, -169f), vec2<i32>(2147483647i, 1i), 12883i), Struct_1(vec2<bool>(false, true), vec4<f32>(227f, -536f, -380f, 2067f), vec2<i32>(28782i, -24893i), -948i), Struct_1(vec2<bool>(true, true), vec4<f32>(1252f, -151f, -413f, 1725f), vec2<i32>(53636i, 2147483647i), -33757i));

var<private> global1: f32 = 534f;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    let var_0 = (vec4<i32>(select(_wgslsmith_div_i32(2147483647i, -19697i), _wgslsmith_mod_i32(u_input.a, u_input.a), arg_0.b.a.x == arg_0.a), ~firstLeadingBit(u_input.a), u_input.a, reverseBits(i32(-1i) * -2147483647i)) >> (select(vec4<u32>(_wgslsmith_div_u32(arg_0.c, arg_0.c), ~56790u, 4633u, 4294967295u), vec4<u32>(u_input.b.x, 1u, u_input.b.x, arg_0.c), all(select(vec3<bool>(arg_0.b.a.x, false, true), vec3<bool>(arg_0.a, arg_0.b.a.x, arg_0.b.a.x), vec3<bool>(arg_0.a, arg_0.a, true)))) % vec4<u32>(32u))) << ((_wgslsmith_div_vec4_u32(select(vec4<u32>(2945u, 136138u, 1u, u_input.b.x) ^ vec4<u32>(arg_0.c, 4294967295u, u_input.b.x, 4294967295u), vec4<u32>(1u, arg_0.c, u_input.b.x, 0u) >> (vec4<u32>(16948u, arg_0.c, 4294967295u, u_input.b.x) % vec4<u32>(32u)), !vec4<bool>(arg_0.a, true, false, false)), (vec4<u32>(77876u, arg_0.c, u_input.b.x, u_input.b.x) ^ vec4<u32>(arg_0.c, arg_0.c, 22437u, u_input.b.x)) & ~vec4<u32>(0u, u_input.b.x, 26918u, 4294967295u)) | abs(~_wgslsmith_add_vec4_u32(vec4<u32>(81461u, 1u, arg_0.c, 4294967295u), vec4<u32>(u_input.b.x, 5096u, 46360u, u_input.b.x)))) % vec4<u32>(32u));
    let var_1 = vec3<u32>(u_input.b.x, (_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(79586u, 28151u, 17529u), vec3<u32>(4294967295u, arg_0.c, 17748u)), vec3<u32>(4294967295u, 4294967295u, u_input.b.x) >> (vec3<u32>(4294967295u, u_input.b.x, 69973u) % vec3<u32>(32u))) & firstLeadingBit(~u_input.b.x)) >> (~(~(~0u)) % 32u), 37235u);
    let var_2 = Struct_1(vec2<bool>(true && !all(arg_0.b.a), true), arg_0.b.b, vec2<i32>(-(~u_input.a) | _wgslsmith_add_i32(_wgslsmith_add_i32(-7293i, 1i), _wgslsmith_sub_i32(0i, arg_0.b.c.x)), var_0.x), ~(~abs(_wgslsmith_sub_i32(u_input.a, u_input.a))));
    let var_3 = vec4<f32>(1236f, var_2.b.x, arg_0.b.b.x, _wgslsmith_f_op_f32(floor(-1000f)));
    global0 = array<Struct_1, 8>();
    return _wgslsmith_f_op_vec4_f32(-var_2.b);
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = Struct_2(false, Struct_1(!vec2<bool>(true, u_input.b.x >= u_input.b.x), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, -845f, arg_0, arg_0), _wgslsmith_f_op_vec4_f32(func_3(Struct_2(false, Struct_1(vec2<bool>(true, false), vec4<f32>(arg_0, arg_0, -540f, arg_0), vec2<i32>(u_input.a, 9084i), u_input.a), 60079u)))))), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, -13608i), firstLeadingBit(vec2<i32>(1861i, 40552i))), max(u_input.a, -14816i)), 4294967295u);
    let var_1 = !(_wgslsmith_div_i32(0i, 2147483647i) >= u_input.a) & any(select(!var_0.b.a, !vec2<bool>(var_0.b.a.x, var_0.a), !(0u != u_input.b.x)));
    var var_2 = Struct_3(-1000f);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -798f), var_2.a);
    let var_4 = _wgslsmith_dot_vec4_u32(~(~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.c, 99290u, 24471u, 1u), vec4<u32>(6704u, u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.c, 4294967295u, 20554u, var_0.c), vec4<u32>(45188u, var_0.c, 4294967295u, var_0.c)))), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(countOneBits(min(vec4<u32>(43610u, 1u, 26640u, 0u), vec4<u32>(4294967295u, 0u, var_0.c, u_input.b.x))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(47062u, u_input.b.x, var_0.c, 35379u), ~vec4<u32>(5291u, 0u, 38259u, var_0.c), ~vec4<u32>(4294967295u, 32134u, var_0.c, u_input.b.x))), ~(~abs(vec4<u32>(u_input.b.x, 11171u, u_input.b.x, u_input.b.x)))));
    return _wgslsmith_f_op_f32(-275f + _wgslsmith_div_f32(var_2.a, var_0.b.b.x));
}

fn func_1(arg_0: u32, arg_1: i32) -> u32 {
    global1 = 1047f;
    var var_0 = Struct_4(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -184f), _wgslsmith_f_op_f32(799f - 202f)))))));
    var_0 = Struct_4(-1000f);
    let var_1 = u_input.a;
    var var_2 = Struct_1(select(select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), true), arg_0 >= _wgslsmith_mult_u32(0u, u_input.b.x)), !vec2<bool>(true, any(vec3<bool>(true, true, true))), select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(false, false)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-712f, -1000f)) - _wgslsmith_f_op_f32(abs(879f))), var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), 498f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(var_0.a - var_0.a), _wgslsmith_f_op_f32(sign(var_0.a)), -834f) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a, var_0.a, var_0.a, 615f))), _wgslsmith_div_vec4_f32(vec4<f32>(1804f, var_0.a, -479f, 636f), vec4<f32>(-1000f, var_0.a, 759f, var_0.a)), vec4<bool>(true, false, true, true))))), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(19000i, arg_1), vec2<i32>(u_input.a, arg_1)), -2147483647i), vec2<i32>(1i, u_input.a) & ~vec2<i32>(arg_1, 2147483647i)) | _wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(0i, u_input.a)) | _wgslsmith_mod_vec2_i32(vec2<i32>(arg_1, var_1), vec2<i32>(u_input.a, var_1)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(16680i, var_1, -39705i, var_1), vec4<i32>(arg_1, u_input.a, var_1, u_input.a)), -var_1)), u_input.a);
    return _wgslsmith_div_u32(1u, 25345u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1161f, -142f), 562f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-576f + 1330f) * _wgslsmith_f_op_f32(f32(-1f) * -721f)), _wgslsmith_f_op_f32(f32(-1f) * -807f))), -906f)));
    global0 = array<Struct_1, 8>();
    let var_0 = global0[_wgslsmith_index_u32(func_1(_wgslsmith_mult_u32(~_wgslsmith_clamp_u32(countOneBits(u_input.b.x), 74942u, 52758u), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 44066u), vec4<u32>(u_input.b.x, 0u, u_input.b.x, 43211u)), ~vec4<u32>(13624u, u_input.b.x, u_input.b.x, u_input.b.x)) | ~14263u), 8823i), 8u)];
    let var_1 = 793f;
    var var_2 = Struct_2(var_0.a.x, Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b) * vec4<f32>(909f, var_1, -1434f, var_0.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1153f, 1153f, var_1, 926f)))), ~countOneBits(_wgslsmith_mod_vec2_i32(var_0.c, var_0.c)), _wgslsmith_dot_vec2_i32(-vec2<i32>(15742i, 1i), ~var_0.c) & 1i), abs(~31226u));
    let var_3 = ~min(var_2.c | ~countOneBits(u_input.b.x), 1u);
    let var_4 = vec4<bool>(false, true, var_0.a.x, !(!any(var_2.b.a)));
    var_2 = Struct_2(var_4.x == all(!select(vec3<bool>(var_4.x, false, var_2.b.a.x), var_4.wyz, var_0.a.x)), Struct_1(!vec2<bool>(true, false || var_4.x), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.b.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.b.b.x, -1458f, var_2.b.b.x, var_0.b.x)))))), _wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(-2147483647i, var_2.b.c.x)), ~(-var_2.b.c)), u_input.a), _wgslsmith_add_u32(~reverseBits(~1u), _wgslsmith_div_u32(1u, ~reverseBits(var_3))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(131f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_0.b.x)), var_1)) - _wgslsmith_f_op_f32(-var_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-680f + -194f), -991f)));
}

