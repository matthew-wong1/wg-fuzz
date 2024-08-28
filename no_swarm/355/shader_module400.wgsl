struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(Struct_1(1326f, i32(-2147483648)), Struct_1(1152f, 0i)), Struct_3(Struct_1(1464f, 0i), Struct_1(621f, 0i)), Struct_3(Struct_1(2487f, 0i), Struct_1(293f, i32(-2147483648))), Struct_3(Struct_1(1390f, -50850i), Struct_1(-1675f, 2263i)), Struct_3(Struct_1(335f, 32915i), Struct_1(-685f, i32(-2147483648))), Struct_3(Struct_1(-560f, 0i), Struct_1(-1001f, i32(-2147483648))), Struct_3(Struct_1(943f, 0i), Struct_1(987f, i32(-2147483648))), Struct_3(Struct_1(1866f, 0i), Struct_1(-597f, 14289i)), Struct_3(Struct_1(-124f, -16089i), Struct_1(-766f, i32(-2147483648))), Struct_3(Struct_1(977f, -1i), Struct_1(-858f, 31039i)), Struct_3(Struct_1(-777f, 1i), Struct_1(232f, -20750i)), Struct_3(Struct_1(431f, 48095i), Struct_1(-451f, 2147483647i)), Struct_3(Struct_1(-1015f, i32(-2147483648)), Struct_1(-468f, i32(-2147483648))), Struct_3(Struct_1(178f, 5145i), Struct_1(-1279f, 0i)), Struct_3(Struct_1(-785f, -1i), Struct_1(-1143f, -13055i)), Struct_3(Struct_1(1200f, i32(-2147483648)), Struct_1(-871f, 34870i)), Struct_3(Struct_1(-310f, -6179i), Struct_1(-1086f, -1i)), Struct_3(Struct_1(-1173f, 2147483647i), Struct_1(-511f, 2147483647i)), Struct_3(Struct_1(926f, 19766i), Struct_1(1117f, 0i)), Struct_3(Struct_1(276f, -14576i), Struct_1(-1000f, i32(-2147483648))), Struct_3(Struct_1(511f, 1i), Struct_1(-715f, 0i)), Struct_3(Struct_1(770f, -24169i), Struct_1(629f, 1i)), Struct_3(Struct_1(1000f, 1i), Struct_1(1592f, 1i)), Struct_3(Struct_1(224f, 0i), Struct_1(-237f, -18138i)), Struct_3(Struct_1(1000f, i32(-2147483648)), Struct_1(-1463f, 2420i)));

var<private> global1: u32;

var<private> global2: array<Struct_2, 18>;

var<private> global3: Struct_3;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_3) -> vec4<f32> {
    var var_0 = vec2<bool>(all(vec2<bool>(true, true)), arg_1);
    var var_1 = !(!vec2<bool>(any(vec2<bool>(arg_1, var_0.x)), true));
    global2 = array<Struct_2, 18>();
    global0 = array<Struct_3, 25>();
    var var_2 = global3.a;
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-324f, 816f, -505f, arg_2.b.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1447f, arg_2.b.a, global3.b.a, global3.b.a)))), vec4<f32>(_wgslsmith_f_op_f32(round(var_2.a)), arg_2.b.a, _wgslsmith_f_op_f32(1000f + arg_2.b.a), _wgslsmith_f_op_f32(sign(arg_2.b.a))))))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.a, 486f, 913f, 105f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f - global3.b.a), _wgslsmith_f_op_f32(select(2732f, global3.a.a, arg_2)), _wgslsmith_f_op_f32(-1608f - global3.a.a), global3.b.a) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global3.b.a, -636f, 111f, -729f), vec4<f32>(global3.b.a, global3.b.a, 1150f, 943f)) - _wgslsmith_f_op_vec4_f32(func_3(vec2<u32>(arg_1.x, 121754u), false, global0[_wgslsmith_index_u32(4294967295u, 25u)])))) - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1509f, global3.b.a, -1594f, global3.a.a) + vec4<f32>(global3.a.a, 841f, global3.a.a, global3.b.a)), _wgslsmith_f_op_vec4_f32(func_3(vec2<u32>(arg_0.x, 1u), true, global0[_wgslsmith_index_u32(30941u, 25u)]))), vec4<f32>(_wgslsmith_f_op_f32(-global3.a.a), 675f, global3.b.a, _wgslsmith_f_op_f32(global3.b.a * -1753f))))));
    global3 = global0[_wgslsmith_index_u32(0u, 25u)];
    global0 = array<Struct_3, 25>();
    let var_1 = global3.b;
    let var_2 = select(select(!select(vec2<bool>(false, false), !vec2<bool>(arg_2, true), vec2<bool>(arg_2, false)), !(!vec2<bool>(false, arg_2)), !(!vec2<bool>(arg_2, false))), select(vec2<bool>(true, true), select(select(!vec2<bool>(false, arg_2), select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, arg_2), vec2<bool>(true, arg_2)), true), vec2<bool>(false, any(vec4<bool>(arg_2, arg_2, arg_2, arg_2))), any(!vec4<bool>(arg_2, false, true, true))), arg_2), vec2<bool>(true, any(select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(true, arg_2, arg_2), true)) && !all(vec2<bool>(true, false))));
    return global2[_wgslsmith_index_u32(arg_0.x, 18u)];
}

fn func_1() -> u32 {
    var var_0 = func_2(~(~vec2<u32>(u_input.c, _wgslsmith_mod_u32(u_input.c, u_input.c))), ~vec2<u32>(~(21741u << (1u % 32u)), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.c, 27915u, 1u), u_input.c & u_input.c, u_input.c ^ u_input.c)), false);
    var var_1 = 0u;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-134f, _wgslsmith_f_op_f32(var_0.c - var_0.c))))), var_0.b.x);
    return firstLeadingBit(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(u_input.c, u_input.c), func_1(), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, ~u_input.c), firstLeadingBit(vec2<u32>(u_input.c, 4294967295u)))), ~_wgslsmith_div_vec3_u32(firstLeadingBit(select(vec3<u32>(1u, u_input.c, 1u), vec3<u32>(u_input.c, 23538u, u_input.c), var_0)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, u_input.c, 80728u), vec3<u32>(u_input.c, u_input.c, u_input.c)) >> (firstTrailingBit(vec3<u32>(u_input.c, 1u, u_input.c)) % vec3<u32>(32u))));
    global2 = array<Struct_2, 18>();
    global1 = min(~_wgslsmith_div_u32(0u, u_input.c), _wgslsmith_clamp_u32(~0u, _wgslsmith_div_u32(4294967295u, 4069u), firstTrailingBit(u_input.c)) >> (_wgslsmith_add_u32(1u, u_input.c) % 32u)) | ~(~37351u);
    var var_2 = abs(_wgslsmith_sub_vec2_i32(firstLeadingBit(~vec2<i32>(0i, -44123i)), vec2<i32>(firstLeadingBit(global3.a.b << (1u % 32u)), global3.a.b)));
    var var_3 = vec2<f32>(1949f, 504f);
    let var_4 = global3.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(~(vec4<i32>(-1i, var_4.b, global3.b.b, -1i) >> (vec4<u32>(u_input.c, 44684u, 4294967295u, u_input.c) % vec4<u32>(32u))), reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-93i, -2880i, -1i, global3.a.b), vec4<i32>(-53972i, global3.a.b, var_2.x, 25536i)))) >> (vec4<u32>(0u, ~(u_input.c << (u_input.c % 32u)), _wgslsmith_add_u32(u_input.c >> (480u % 32u), ~u_input.c), ~(u_input.c ^ u_input.c)) % vec4<u32>(32u)), u_input.c);
}

