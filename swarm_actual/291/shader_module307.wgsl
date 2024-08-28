struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec2<bool>,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 20> = array<bool, 20>(false, false, true, false, false, false, true, false, true, true, false, false, false, true, true, true, true, false, true, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<u32> {
    var var_0 = false;
    var var_1 = vec2<f32>(-1379f, -1939f);
    var var_2 = _wgslsmith_sub_i32(firstLeadingBit(u_input.a), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-22574i, -1i), vec2<i32>(-7639i, u_input.a)), vec2<i32>(0i, 0i)), (vec2<i32>(-2147483647i, -28223i) << (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u))) >> (firstTrailingBit(u_input.b) % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(~max(vec2<i32>(1i, -2147483647i), vec2<i32>(0i, u_input.e)), ~vec2<i32>(-2147483647i, 0i))));
    var_1 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(485f, var_1.x, false))))))));
    var_0 = false;
    return _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.c, firstLeadingBit(~u_input.d)), 55642u, u_input.b.x), ~vec3<u32>(~u_input.b.x, ~_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), u_input.b.x));
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-257f + -1318f))))));
    global0 = _wgslsmith_div_f32(1116f, 1000f);
    let var_0 = Struct_4(countOneBits(func_3() << (select(firstLeadingBit(vec3<u32>(u_input.d, 4294967295u, u_input.d)), ~vec3<u32>(53334u, 4294967295u, u_input.d), any(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 20u)], false, global1[_wgslsmith_index_u32(u_input.c, 20u)], true))) % vec3<u32>(32u))), Struct_3(Struct_1(~(~u_input.c), ~(vec3<u32>(12076u, 19292u, u_input.d) >> (vec3<u32>(u_input.d, u_input.c, 23760u) % vec3<u32>(32u))))));
    let var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(17160i, u_input.a) | vec2<i32>(-2147483647i, u_input.e)), ~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.e, -48487i), vec2<i32>(u_input.a, -2147483647i)) & -select(vec2<i32>(1i, -21195i), vec2<i32>(u_input.a, u_input.e), true)), vec2<i32>(-_wgslsmith_mult_i32(_wgslsmith_mod_i32(-2147483647i, 2147483647i), u_input.e), u_input.a));
    let var_2 = var_0.b.a;
    return Struct_1(var_0.a.x, var_0.b.a.b);
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_div_f32(1487f, -346f);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(266f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1596f, -148f)))));
    var var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(348f + 1189f);
    global1 = array<bool, 20>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = array<bool, 20>();
    let var_1 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(~u_input.d | ~u_input.b.x, 43417u));
}

