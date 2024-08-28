struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_5 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 12>;

var<private> global1: array<vec4<bool>, 23>;

var<private> global2: array<Struct_3, 5>;

var<private> global3: array<bool, 13> = array<bool, 13>(false, false, true, true, true, false, false, true, false, true, true, true, true);

var<private> global4: vec3<i32> = vec3<i32>(2147483647i, 0i, 39767i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> u32 {
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_5, arg_2: bool, arg_3: u32) -> u32 {
    global2 = array<Struct_3, 5>();
    global1 = array<vec4<bool>, 23>();
    var var_0 = vec3<i32>(arg_1.c.c.x, ~reverseBits(arg_0.b.x) ^ countOneBits(_wgslsmith_div_i32(~global4.x, u_input.a)), u_input.a);
    let var_1 = Struct_2(Struct_1(!(any(vec3<bool>(arg_1.c.a, arg_2, false)) && any(global1[_wgslsmith_index_u32(arg_3, 23u)])), arg_0.b, ~(arg_1.c.c ^ (arg_0.c >> (vec2<u32>(arg_1.a.x, 2176u) % vec2<u32>(32u)))), arg_0.e, abs(~(~global0[_wgslsmith_index_u32(arg_0.d.x, 12u)]))));
    var var_2 = Struct_3(381f, var_1, Struct_2(arg_0), global0[_wgslsmith_index_u32(~44021u, 12u)] | ~var_1.a.e);
    return 1u;
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_1(global3[_wgslsmith_index_u32(select(firstLeadingBit(arg_1), ~_wgslsmith_add_u32(arg_1, 45647u) >> (~(~arg_1) % 32u), any(!select(vec2<bool>(true, global3[_wgslsmith_index_u32(29493u, 13u)]), vec2<bool>(global3[_wgslsmith_index_u32(0u, 13u)], true), vec2<bool>(true, global3[_wgslsmith_index_u32(arg_1, 13u)])))), 13u)], ~(-vec3<i32>(-12503i, ~(-40080i), arg_2.x)), global4.xy, vec3<u32>(~32392u, func_3(Struct_1(false, arg_2, arg_2.yy, vec3<u32>(1u, 1u, arg_1), vec3<u32>(arg_1, arg_1, arg_1)), Struct_5(global0[_wgslsmith_index_u32(arg_1, 12u)], global3[_wgslsmith_index_u32(arg_1, 13u)], Struct_1(false, vec3<i32>(arg_2.x, -9716i, 1i), arg_0, vec3<u32>(arg_1, 42617u, arg_1), global0[_wgslsmith_index_u32(1u, 12u)])), global3[_wgslsmith_index_u32(arg_1 ^ arg_1, 13u)], arg_1), firstTrailingBit(~54350u)) | vec3<u32>(arg_1, 10936u, 0u), global0[_wgslsmith_index_u32(0u, 12u)]);
    global0 = array<vec3<u32>, 12>();
    global3 = array<bool, 13>();
    let var_1 = Struct_5(var_0.d, true, Struct_1(var_0.a, _wgslsmith_sub_vec3_i32(arg_2, -(arg_2 & var_0.b)), abs(arg_2.xy & -vec2<i32>(u_input.a, arg_0.x)), vec3<u32>(~(~var_0.d.x), arg_1, arg_1), global0[_wgslsmith_index_u32(44439u, 12u)] & ~(vec3<u32>(1u, 19101u, 4294967295u) | vec3<u32>(arg_1, arg_1, arg_1))));
    global2 = array<Struct_3, 5>();
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 83314u, 4294967295u, 0u), vec4<u32>(60631u, 4294967295u, 4294967295u, 10124u)), _wgslsmith_add_u32(16354u, 0u)), 0u) & (_wgslsmith_div_u32(1u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(30468u, 1u), vec2<u32>(37170u, 16017u)))) << (_wgslsmith_clamp_u32(25834u, ~4294967295u | func_1(0u, Struct_1(true, vec3<i32>(u_input.a, -49537i, -66503i), global4.yz, vec3<u32>(32042u, 4294967295u, 15812u), vec3<u32>(4294967295u, 4294967295u, 4294967295u))), ~(~27522u)) % 32u)), 12u)];
    let var_1 = Struct_4(Struct_2(func_2(vec2<i32>(max(u_input.a, 0i), -8489i), abs(12999u), reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(global4.x, 0i, -4023i), vec3<i32>(-48714i, 22837i, -54551i))))), Struct_2(func_2(global4.xx, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(var_0.x, 12u)], global0[_wgslsmith_index_u32(var_0.x, 12u)]), var_0.x, ~1u), -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 0i, -1i), vec3<i32>(10505i, u_input.a, -1i)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-596f, 511f, 1452f, -258f)) + vec4<f32>(_wgslsmith_f_op_f32(1528f - 686f), -1525f, -1920f, _wgslsmith_f_op_f32(ceil(342f))))));
    let var_3 = global2[_wgslsmith_index_u32(~abs(1248u), 5u)];
    global0 = array<vec3<u32>, 12>();
    global0 = array<vec3<u32>, 12>();
    let var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -291f), var_2.x));
    var var_5 = _wgslsmith_f_op_vec2_f32(exp2(var_2.xw));
    var var_6 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(378f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(622f * var_5.x), global3[_wgslsmith_index_u32(min(1u, var_0.x), 13u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(21324i, u_input.a | var_1.a.a.b.x, _wgslsmith_mod_vec3_i32(vec3<i32>(var_1.b.a.b.x, var_3.b.a.b.x, -(~(-39731i))), _wgslsmith_mult_vec3_i32(reverseBits(abs(var_1.b.a.b)), _wgslsmith_add_vec3_i32(var_3.c.a.b & vec3<i32>(-9991i, -1i, 17337i), vec3<i32>(-2147483647i, u_input.a, -1i)))), _wgslsmith_clamp_u32(~4294967295u, ~(~1u), _wgslsmith_div_u32(_wgslsmith_clamp_u32(var_3.b.a.e.x, var_1.a.a.e.x, 34293u), var_1.a.a.d.x) | _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_1.a.a.d.x, var_1.a.a.d.x), var_1.b.a.e.x)), var_3.c.a.c.x);
}

