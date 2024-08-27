struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

var<private> global1: Struct_3;

var<private> global2: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(vec2<u32>(60254u, 1u)), Struct_4(vec2<u32>(4294967295u, 4294967295u)), Struct_4(vec2<u32>(4294967295u, 1867u)), Struct_4(vec2<u32>(14022u, 77050u)), Struct_4(vec2<u32>(1u, 4294967295u)), Struct_4(vec2<u32>(51759u, 1u)), Struct_4(vec2<u32>(88265u, 0u)), Struct_4(vec2<u32>(0u, 880u)), Struct_4(vec2<u32>(0u, 0u)), Struct_4(vec2<u32>(18277u, 0u)), Struct_4(vec2<u32>(1u, 32683u)), Struct_4(vec2<u32>(4294967295u, 0u)), Struct_4(vec2<u32>(1u, 0u)), Struct_4(vec2<u32>(16369u, 4294967295u)), Struct_4(vec2<u32>(27463u, 0u)), Struct_4(vec2<u32>(49190u, 43027u)), Struct_4(vec2<u32>(1u, 1161u)));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: i32) -> vec3<i32> {
    let var_0 = firstLeadingBit(u_input.b.zyw);
    let var_1 = !(!(!(!global1.e)));
    let var_2 = reverseBits(abs(~(~global1.c))) << (global1.c % vec3<u32>(32u));
    global2 = array<Struct_4, 17>();
    let var_3 = Struct_3(-644f, global1.b, var_2, Struct_1(-1i, vec3<i32>(-14880i, -u_input.b.x ^ ~(-42393i), -48789i)), 1296f < _wgslsmith_f_op_f32(min(global1.a, _wgslsmith_div_f32(939f, _wgslsmith_div_f32(global1.a, -861f)))));
    return u_input.b.www;
}

fn func_3(arg_0: vec2<u32>) -> i32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(global1.a, global1.a)))) * _wgslsmith_f_op_f32(select(-280f, _wgslsmith_f_op_f32(-347f * 419f), global1.e))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.a))) * global1.a)), Struct_1(u_input.d.x, _wgslsmith_mod_vec3_i32(-global1.d.b, global1.b.b)), global1.c, global1.b, all(select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 5u)], global0[_wgslsmith_index_u32(u_input.a, 5u)], global0[_wgslsmith_index_u32(u_input.a, 5u)]), vec3<bool>(false | global1.e, true, false), global0[_wgslsmith_index_u32(4294967295u, 5u)] & any(vec4<bool>(true, false, true, true)))));
    var var_1 = Struct_4(~(~vec2<u32>(43963u, 39938u)) | vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(9818u, arg_0.x, 1u, 1u), max(vec4<u32>(global1.c.x, var_0.c.x, 4294967295u, 4294967295u), vec4<u32>(61109u, 0u, 5846u, 35335u))), u_input.a));
    let var_2 = Struct_4(global1.c.yx);
    global2 = array<Struct_4, 17>();
    global0 = array<bool, 5>();
    return -global1.b.b.x;
}

fn func_1() -> Struct_3 {
    var var_0 = vec2<f32>(229f, 507f);
    global0 = array<bool, 5>();
    let var_1 = ~(~11371u);
    var var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-10769i, u_input.b.x, 2147483647i), func_2(global1.c.x, u_input.a, u_input.d.x)), abs(u_input.b.xwz)), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2101i, global1.b.b.x, global1.d.b.x), vec3<i32>(global1.b.a, u_input.d.x, -2147483647i)), ~global1.b.b) ^ -global1.b.b), -abs(firstTrailingBit(global1.d.b)));
    let var_3 = Struct_2(Struct_1(_wgslsmith_add_i32(func_3(~vec2<u32>(var_1, 48827u)), _wgslsmith_div_i32(global1.d.a >> (54611u % 32u), 25806i)), vec3<i32>(abs(1i), u_input.b.x, global1.b.b.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))));
    return Struct_3(-596f, var_3.a, vec3<u32>(10034u, 4294967295u, 23931u), global1.d, !any(vec2<bool>(global1.e, !global0[_wgslsmith_index_u32(global1.c.x, 5u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.zz;
    global1 = func_1();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1390f)) * -126f));
    let var_2 = global1.a;
    global2 = array<Struct_4, 17>();
    var var_3 = Struct_1(2147483647i, global1.d.b);
    var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(-1223i | func_3(global1.c.yy), ~0i), select(var_3.b.yz, var_3.b.yy, vec2<bool>(true, true)));
    var var_4 = var_3.b.x | func_3(countOneBits(~global1.c.yy));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(134f, var_1, global1.a, var_1)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(115f, -1234f, global1.a, global1.a), vec4<f32>(-343f, global1.a, -1657f, -588f), global0[_wgslsmith_index_u32(0u, 5u)]))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(589f, global1.a), _wgslsmith_f_op_f32(-1050f - global1.a)), var_1) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1591f, -1000f))), vec2<f32>(-1000f, 556f)))));
}

