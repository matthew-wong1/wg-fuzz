struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12> = array<f32, 12>(111f, 1099f, -596f, -920f, -829f, -985f, 737f, 185f, 859f, 861f, -878f, -950f);

var<private> global1: array<u32, 7>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: bool) -> vec4<bool> {
    global1 = array<u32, 7>();
    global0 = array<f32, 12>();
    let var_0 = ~vec4<u32>(~(global1[_wgslsmith_index_u32(u_input.a.x, 7u)] ^ 37611u), _wgslsmith_div_u32(_wgslsmith_mult_u32(1u, _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], u_input.a.x)), 0u), u_input.a.x, (99033u << (u_input.a.x % 32u)) | 0u);
    var var_1 = Struct_3(abs(vec3<i32>(u_input.b, -38857i, countOneBits(arg_1.b.x >> (4294967295u % 32u)))), Struct_2(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(1i, 1i, 1i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, -1i, arg_1.b.x), vec3<i32>(u_input.b, u_input.b, u_input.b)), select(vec3<bool>(false, arg_2, arg_2), vec3<bool>(false, arg_2, true), vec3<bool>(true, arg_2, arg_2))), abs(-vec3<i32>(u_input.b, arg_1.b.x, arg_1.b.x)), -vec3<i32>(u_input.b, 11784i, u_input.b)), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_1.a, global0[_wgslsmith_index_u32(4294967295u, 12u)]))), vec2<i32>(_wgslsmith_add_i32(59215i, arg_1.b.x), arg_1.b.x)), !(!select(vec4<bool>(arg_2, arg_2, arg_2, true), vec4<bool>(false, arg_2, arg_2, arg_2), vec4<bool>(true, arg_2, true, arg_2)))), u_input.b);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -559f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.b.a + var_1.b.b.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * global0[_wgslsmith_index_u32(1u, 12u)]))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(976f)), 257f)) * 191f)));
    return select(var_1.b.c, vec4<bool>(arg_2, (_wgslsmith_dot_vec3_u32(var_0.wwx, vec3<u32>(0u, 22536u, 1u)) | 9538u) <= ~(~0u), select(false, !arg_2, !(!arg_2)), !(!var_1.b.c.x)), false);
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: vec4<i32>, arg_3: f32) -> Struct_2 {
    global0 = array<f32, 12>();
    var var_0 = true;
    let var_1 = 588f;
    let var_2 = true;
    let var_3 = -156f;
    return Struct_2(abs(max(-arg_2.xwx, arg_0.wwz)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1053f)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_3 + var_1)))), arg_2.xz), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(1248f, global0[_wgslsmith_index_u32(arg_1, 12u)], false)), _wgslsmith_div_f32(-487f, var_3), _wgslsmith_f_op_f32(-2328f * -2233f), _wgslsmith_f_op_f32(f32(-1f) * -1468f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1008f, -1111f, arg_3, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], 12u)]), vec4<f32>(-207f, -1000f, var_3, arg_3))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(63501u, 12u)], arg_3, 1000f, -1000f), vec4<f32>(arg_3, 1000f, 632f, global0[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec4<bool>(true, var_2, var_2, true))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3)) + _wgslsmith_f_op_f32(f32(-1f) * -484f)), arg_2.yw), u_input.b > u_input.b));
}

fn func_3(arg_0: f32) -> vec2<i32> {
    var var_0 = reverseBits(vec3<u32>(~(~global1[_wgslsmith_index_u32(u_input.a.x, 7u)]) >> (~1u % 32u), u_input.a.x, u_input.a.x));
    global0 = array<f32, 12>();
    return ~(~func_1(~vec4<i32>(21167i, u_input.b, u_input.b, u_input.b), ~global1[_wgslsmith_index_u32(var_0.x, 7u)], vec4<i32>(u_input.b, u_input.b, -2147483647i, 0i) | vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), 1026f).b.b << (_wgslsmith_add_vec2_u32(u_input.a.zy, vec2<u32>(var_0.x, 47052u)) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 7>();
    var var_0 = func_1(~vec4<i32>(-25132i >> (global1[_wgslsmith_index_u32(~4294967295u, 7u)] % 32u), max(_wgslsmith_div_i32(1792i, -1i), i32(-1i) * -18513i), min(~u_input.b, firstTrailingBit(-2147483647i)), ~42086i), 83845u, -(select(vec4<i32>(u_input.b, u_input.b, 2147483647i, 24750i), select(vec4<i32>(17395i, u_input.b, -1i, 7637i), vec4<i32>(-43099i, u_input.b, u_input.b, -76i), true), true) << (_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(global1[_wgslsmith_index_u32(5043u, 7u)], 16762u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)])), ~vec4<u32>(14183u, 0u, 14843u, 31405u)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1021f * global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], 1u), 12u)]))));
    let var_1 = Struct_2(~firstLeadingBit(var_0.a), Struct_1(global0[_wgslsmith_index_u32((global1[_wgslsmith_index_u32(select(global1[_wgslsmith_index_u32(74363u, 7u)], 29020u, true), 7u)] ^ _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 36932u)) | u_input.a.x, 12u)], func_3(-1816f)), !func_1(-reverseBits(vec4<i32>(50194i, u_input.b, var_0.b.b.x, 6896i)), 1u, vec4<i32>(2147483647i, ~var_0.a.x, firstLeadingBit(u_input.b), u_input.b), _wgslsmith_f_op_f32(-1988f + _wgslsmith_f_op_f32(floor(-1842f)))).c);
    var var_2 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(~1u, 7u)], u_input.b);
}

