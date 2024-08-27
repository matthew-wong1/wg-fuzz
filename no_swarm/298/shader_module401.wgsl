struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: f32;

var<private> global2: array<Struct_1, 13>;

var<private> global3: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec2<u32>(13115u, 1u), vec3<i32>(28191i, -1i, -1i), false), Struct_1(vec2<u32>(38591u, 4294967295u), vec3<i32>(0i, -6860i, 1i), true), Struct_1(vec2<u32>(1u, 1u), vec3<i32>(i32(-2147483648), 21974i, 2147483647i), false), Struct_1(vec2<u32>(36633u, 4294967295u), vec3<i32>(13715i, 0i, i32(-2147483648)), false), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec3<i32>(20602i, -60941i, 2147483647i), true), Struct_1(vec2<u32>(0u, 1u), vec3<i32>(-97318i, 5982i, 30030i), false), Struct_1(vec2<u32>(26964u, 974u), vec3<i32>(-38465i, 0i, 19112i), true), Struct_1(vec2<u32>(1u, 1u), vec3<i32>(0i, i32(-2147483648), 97351i), true), Struct_1(vec2<u32>(5696u, 12260u), vec3<i32>(0i, 0i, 2147483647i), false), Struct_1(vec2<u32>(44280u, 2614u), vec3<i32>(2861i, i32(-2147483648), 18100i), true), Struct_1(vec2<u32>(1u, 70144u), vec3<i32>(-68801i, 40090i, 2147483647i), false), Struct_1(vec2<u32>(25584u, 1u), vec3<i32>(1i, 0i, 0i), true), Struct_1(vec2<u32>(27919u, 20470u), vec3<i32>(i32(-2147483648), 0i, -1i), false));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * 709f) + -296f));
    var var_1 = max(countOneBits(~(-(vec3<i32>(15326i, 1i, u_input.a) >> (vec3<u32>(28790u, 4294967295u, 1u) % vec3<u32>(32u))))), vec3<i32>(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -1i), vec3<i32>(-1i, u_input.a, -1i))) & ~u_input.a, u_input.a, ~(~(-2147483647i)) | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -1i, global0.x) << (vec3<u32>(56825u, u_input.b, 66457u) % vec3<u32>(32u)), countOneBits(vec3<i32>(u_input.a, u_input.a, global0.x)))));
    let var_2 = vec3<bool>(!(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-697f)) - _wgslsmith_f_op_f32(-var_0))), false, !(!any(vec4<bool>(false, false, true, false))) || (var_0 < var_0));
    var var_3 = Struct_1(vec2<u32>(firstLeadingBit(~u_input.c), _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.d, 0u), abs(u_input.d))) ^ _wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, 70603u) >> (~vec2<u32>(u_input.c, 52393u) % vec2<u32>(32u)), ~_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(38066u, 4294967295u))), vec3<i32>(-global0.x & 0i, -select(0i, select(-2147483647i, global0.x, var_2.x), all(vec2<bool>(true, true))), 1i), false);
    let var_4 = Struct_1(max(var_3.a, var_3.a), -(~min(firstLeadingBit(var_3.b), _wgslsmith_mult_vec3_i32(vec3<i32>(global0.x, -3293i, 67474i), vec3<i32>(global0.x, var_1.x, 51113i)))), !var_2.x);
    return var_0;
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-353f)))), true));
    global2 = array<Struct_1, 13>();
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1005f, var_0))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 404f) * vec2<f32>(var_0, 349f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(442f, -1191f)))))))), vec2<f32>(_wgslsmith_f_op_f32(trunc(353f)), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_0, 1088f, true)))))));
    let var_2 = -148f;
    let var_3 = global2[_wgslsmith_index_u32(abs(0u), 13u)];
    return 41723u;
}

fn func_1(arg_0: Struct_1) -> u32 {
    global2 = array<Struct_1, 13>();
    let var_0 = global2[_wgslsmith_index_u32(0u, 13u)];
    global2 = array<Struct_1, 13>();
    let var_1 = Struct_1(~vec2<u32>(func_2(), u_input.d), firstLeadingBit(var_0.b | select(arg_0.b, vec3<i32>(global0.x, -17880i, arg_0.b.x), select(vec3<bool>(arg_0.c, false, arg_0.c), vec3<bool>(var_0.c, var_0.c, var_0.c), vec3<bool>(var_0.c, arg_0.c, arg_0.c)))), var_0.c);
    var var_2 = var_0.a.x;
    return (arg_0.a.x | _wgslsmith_add_u32(4294967295u << (firstLeadingBit(4294967295u) % 32u), ~countOneBits(u_input.d))) >> (arg_0.a.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(-18992i, global0.x), vec2<i32>(1i, 1i)), i32(-1i) * -1i, global0.x), -11008i);
    let var_1 = Struct_1(firstTrailingBit(~vec2<u32>(1u, 1u)), ~reverseBits(abs(vec3<i32>(var_0, u_input.a, 2147483647i))) | -reverseBits(-vec3<i32>(-1i, -29052i, -21821i)), false);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1175f)));
    var var_2 = -32621i;
    var var_3 = Struct_1(var_1.a, select(vec3<i32>(abs(_wgslsmith_mod_i32(var_0, 1i)), ~(-var_1.b.x), abs(9006i)), max(max(var_1.b, var_1.b) >> (countOneBits(vec3<u32>(u_input.c, 27388u, u_input.c)) % vec3<u32>(32u)), ~max(var_1.b, vec3<i32>(-1i, -2147483647i, 1i))), true), true);
    var var_4 = global3[_wgslsmith_index_u32(~(~(~_wgslsmith_sub_u32(4294967295u >> (var_3.a.x % 32u), u_input.c))), 13u)];
    let var_5 = var_4.a.x & _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(countOneBits(max(vec3<u32>(1u, 4294967295u, 61688u), vec3<u32>(25728u, 102958u, 3177u))), ~min(vec3<u32>(63514u, 33086u, u_input.d), vec3<u32>(var_3.a.x, u_input.c, 4294967295u))), firstTrailingBit(func_1(Struct_1(var_3.a, vec3<i32>(var_1.b.x, var_0, 5411i), false)) >> (var_1.a.x % 32u)));
    global1 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1932f)) - _wgslsmith_f_op_f32(f32(-1f) * -898f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1992f, 129f, 179f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1650f, 1304f, -289f), vec3<f32>(-799f, 1126f, 533f), vec3<bool>(false, true, false)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1318f, -151f, 1732f)))))));
}

