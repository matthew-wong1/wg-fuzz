struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<Struct_4, 8>;

var<private> global2: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(1u, 25586u), vec2<u32>(0u, 36518u), vec2<u32>(0u, 1313u), vec2<u32>(4294967295u, 66613u), vec2<u32>(22147u, 51060u));

var<private> global3: bool = false;

var<private> global4: array<vec3<i32>, 20>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1369f, 1312f))), 1820f, 180f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(544f, -111f, -1450f), vec3<f32>(447f, -1000f, 1314f))))))));
    let var_1 = vec4<bool>(select(arg_2.c.x, select(arg_2.a.b, arg_2.a.b && arg_2.a.b, true), true) & any(select(select(vec4<bool>(arg_0.c.x, arg_2.b.x, arg_0.b.x, true), vec4<bool>(false, arg_2.a.b, true, true), vec4<bool>(true, true, arg_2.c.x, true)), vec4<bool>(arg_2.a.b, arg_0.c.x, arg_0.c.x, arg_2.a.b), vec4<bool>(arg_0.c.x, arg_0.b.x, arg_0.b.x, arg_2.c.x))), true, !any(vec4<bool>(any(vec4<bool>(arg_2.a.b, arg_0.a.b, true, true)), arg_1 != arg_1, !arg_2.c.x, true)), !arg_2.c.x);
    var var_2 = vec3<i32>(-2147483647i | _wgslsmith_dot_vec2_i32(vec2<i32>(-17839i, -8691i), firstLeadingBit(vec2<i32>(global0.x, global0.x))), ~arg_1, firstTrailingBit(global0.x)) & vec3<i32>(u_input.b, u_input.b, select(-1i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_1, global0.x, 2703i), global4[_wgslsmith_index_u32(4294967295u, 20u)]), -vec3<i32>(arg_1, arg_1, u_input.b)), u_input.b >= arg_1));
    var var_3 = Struct_5(Struct_3(abs(_wgslsmith_add_u32(reverseBits(33817u), 50922u)), ~(vec3<i32>(var_2.x, u_input.b, 42497i) >> (countOneBits(vec3<u32>(u_input.c, arg_2.a.a.x, arg_0.a.a.x)) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, var_0.x, -180f, var_0.x), vec4<f32>(1703f, 288f, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-573f, var_0.x, var_0.x, var_0.x)))))), arg_2.a, var_0.x));
    var var_4 = arg_2.a;
    return vec4<i32>(-global0.x, 1i, _wgslsmith_mult_i32(global0.x, _wgslsmith_add_i32(-40910i, -var_3.a.b.x) | ~12159i), global0.x);
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: vec3<i32>) -> u32 {
    var var_0 = arg_0.x;
    global0 = -_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(func_3(Struct_2(Struct_1(arg_0, true), vec3<bool>(true, true, true), vec2<bool>(false, false)), _wgslsmith_sub_i32(2147483647i, global0.x), Struct_2(Struct_1(arg_0, true), vec3<bool>(false, false, true), vec2<bool>(true, true))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, 18212i, -20273i, arg_2.x), vec4<i32>(u_input.b, 19071i, 21763i, arg_2.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.b, 1i, -1i), vec4<i32>(u_input.b, 55507i, global0.x, u_input.b)) >> (vec4<u32>(21606u, u_input.a.x, arg_1, 0u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(~vec4<i32>(-330i, arg_2.x, arg_2.x, 62913i), vec4<i32>(34059i, select(u_input.b, -2147483647i, true), arg_2.x | 0i, -u_input.b)));
    global2 = array<vec2<u32>, 5>();
    global2 = array<vec2<u32>, 5>();
    return abs(max(_wgslsmith_div_u32(arg_0.x, _wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_0.x, u_input.c), arg_0.x)), firstLeadingBit(_wgslsmith_dot_vec3_u32(max(arg_0.zxw, u_input.a), u_input.a))));
}

fn func_1(arg_0: vec3<i32>) -> Struct_5 {
    let var_0 = false;
    let var_1 = ~33990u;
    global3 = var_0;
    let var_2 = vec4<u32>(~((u_input.c << (~14215u % 32u)) & 17195u), _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(0u, var_1), firstLeadingBit(var_1)), u_input.c), select(_wgslsmith_sub_u32(var_1 ^ var_1, u_input.a.x), 17598u, false)), _wgslsmith_mod_u32(func_2(vec4<u32>(1u, ~u_input.a.x, u_input.c, ~u_input.a.x), 51555u, vec3<i32>(-1i) * -global0.wxx), abs(~0u)), 49996u);
    var var_3 = Struct_2(Struct_1(_wgslsmith_add_vec4_u32(var_2, select(vec4<u32>(1u, var_2.x, var_2.x, u_input.a.x) ^ vec4<u32>(var_1, u_input.c, var_1, var_1), var_2 >> (var_2 % vec4<u32>(32u)), true)), var_0 & any(select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(false, false, var_0, true), false))), select(select(vec3<bool>(all(vec4<bool>(var_0, false, false, false)), var_0, !var_0), !vec3<bool>(var_0, var_0, true), !select(vec3<bool>(var_0, false, false), vec3<bool>(false, true, var_0), vec3<bool>(false, true, true))), !vec3<bool>(any(vec3<bool>(false, var_0, var_0)), true, var_0 || false), select(select(vec3<bool>(var_0, true, var_0), select(vec3<bool>(true, var_0, var_0), vec3<bool>(var_0, var_0, true), false), select(vec3<bool>(true, var_0, var_0), vec3<bool>(var_0, false, var_0), true)), !select(vec3<bool>(false, var_0, var_0), vec3<bool>(true, false, var_0), true), select(!vec3<bool>(false, false, var_0), select(vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, false, var_0), vec3<bool>(true, var_0, true)), any(vec3<bool>(var_0, false, true))))), !vec2<bool>(var_0, true));
    return Struct_5(Struct_3(u_input.a.x, firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-65179i, global0.x, global0.x), vec3<i32>(888i, 13157i, 1i))) & _wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(-1i, arg_0.x, global0.x)), _wgslsmith_clamp_vec3_i32(global0.xwy, global0.zzz, global4[_wgslsmith_index_u32(var_2.x, 20u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-541f * 249f), _wgslsmith_f_op_f32(910f - -756f), _wgslsmith_f_op_f32(min(-495f, 590f)), 143f) + vec4<f32>(745f, -220f, _wgslsmith_f_op_f32(select(201f, -1000f, false)), _wgslsmith_f_op_f32(f32(-1f) * -123f))), Struct_1(var_3.a.a, var_3.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-492f)) + _wgslsmith_f_op_f32(select(-393f, -341f, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = !(!select(true, true, any(vec4<bool>(false, true, true, true)) | true));
    var var_0 = ~u_input.a;
    let var_1 = func_1(-(global0.ywx >> (vec3<u32>(min(7921u, var_0.x), u_input.a.x, 0u) % vec3<u32>(32u))));
    global2 = array<vec2<u32>, 5>();
    var var_2 = func_1(max(global0.zwx, global0.wxz)).a.b.x;
    global2 = array<vec2<u32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_u32(var_0.x, 23248u), ~_wgslsmith_add_vec4_u32(countOneBits(var_1.a.d.a), vec4<u32>(0u, max(var_0.x, 17622u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.x, 18177u, 1625u), var_1.a.d.a), min(0u, var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.e - -223f) * _wgslsmith_f_op_f32(-var_1.a.c.x)), 426f)) - -943f), select(~vec2<i32>(~global0.x, global0.x), firstTrailingBit(global0.zy), select(vec2<bool>(true, true), select(vec2<bool>(var_1.a.d.b, var_1.a.d.b), !vec2<bool>(var_1.a.d.b, false), !vec2<bool>(var_1.a.d.b, var_1.a.d.b)), select(vec2<bool>(true, var_1.a.d.b), select(vec2<bool>(var_1.a.d.b, var_1.a.d.b), vec2<bool>(var_1.a.d.b, true), var_1.a.d.b), all(vec4<bool>(var_1.a.d.b, true, true, var_1.a.d.b))))), 8173i);
}

