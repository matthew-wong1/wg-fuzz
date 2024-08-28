struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(48835u, 4294967295u, 0u);

var<private> global1: array<Struct_1, 8>;

var<private> global2: array<f32, 13>;

var<private> global3: array<Struct_1, 2>;

var<private> global4: array<i32, 4>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec3<i32>, arg_3: bool) -> vec3<i32> {
    let var_0 = reverseBits(select(_wgslsmith_div_i32(4991i, arg_0.a), -global4[_wgslsmith_index_u32(global0.x, 4u)], any(select(select(vec3<bool>(arg_0.b, arg_0.b, arg_3), vec3<bool>(arg_3, false, arg_0.b), true), vec3<bool>(arg_0.b, arg_3, arg_3), any(vec4<bool>(arg_0.b, arg_3, arg_3, false))))));
    global0 = select(arg_0.d.xwx, u_input.b, arg_3);
    let var_1 = 59414u;
    global1 = array<Struct_1, 8>();
    let var_2 = firstLeadingBit(_wgslsmith_div_i32(i32(-1i) * -var_0, _wgslsmith_div_i32(~(-25517i), ~(-2147483647i)))) | ~_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-2147483647i, u_input.a.x), _wgslsmith_div_i32(-13014i, var_0)), arg_2.zy ^ u_input.a.zw);
    return vec3<i32>(1i, u_input.a.x, -(~56514i));
}

fn func_2() -> Struct_1 {
    var var_0 = true;
    global3 = array<Struct_1, 2>();
    global1 = array<Struct_1, 8>();
    global4 = array<i32, 4>();
    global2 = array<f32, 13>();
    return Struct_1(u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-669f + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global0.x, 13u)] - -397f)) - global2[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(global0.x), 1u), 13u)]) <= global2[_wgslsmith_index_u32(1u, 13u)], _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.d, 54080u), firstLeadingBit((vec2<u32>(1u, u_input.d) >> (vec2<u32>(u_input.d, u_input.b.x) % vec2<u32>(32u))) >> (global0.xx % vec2<u32>(32u)))), ~(~vec4<u32>(select(u_input.b.x, u_input.c.x, false), u_input.c.x, 1u, reverseBits(58855u))));
}

fn func_3() -> bool {
    global1 = array<Struct_1, 8>();
    global3 = array<Struct_1, 2>();
    var var_0 = func_2();
    var var_1 = Struct_1(firstTrailingBit(var_0.a), false, global0.xx, select(vec4<u32>(var_0.d.x, u_input.b.x, ~abs(39476u), _wgslsmith_add_u32(~1u, ~u_input.b.x)), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(17742u, 40438u, 13738u), vec3<u32>(var_0.c.x, 15044u, u_input.c.x)), select(10850u, global0.x, var_0.b)), ~u_input.b.x >> ((global0.x << (0u % 32u)) % 32u), countOneBits(4294967295u), global0.x), !var_0.b));
    global2 = array<f32, 13>();
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = u_input.a.ywy;
    global3 = array<Struct_1, 2>();
    var var_2 = _wgslsmith_clamp_vec3_i32(var_1 << (vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, global0.x, 82581u, 35233u), vec4<u32>(43442u, global0.x, 1u, global0.x) & vec4<u32>(4375u, 48423u, 3885u, 72203u)), abs(u_input.d), 1u) % vec3<u32>(32u)), func_1(Struct_1(~(~(-1i)), false, vec2<u32>(75560u, ~26780u), ~(vec4<u32>(u_input.b.x, 1u, 46288u, global0.x) >> (vec4<u32>(global0.x, u_input.d, global0.x, global0.x) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1130f))))), select(vec3<i32>(global4[_wgslsmith_index_u32(global0.x, 4u)], _wgslsmith_add_i32(-1i, 0i), _wgslsmith_mult_i32(var_1.x, 1i)), u_input.a.zxy, true), (any(vec2<bool>(true, true)) & all(vec3<bool>(false, true, true))) & true), _wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(global4[_wgslsmith_index_u32(42027u, 4u)] | u_input.a.x, ~0i, abs(global4[_wgslsmith_index_u32(global0.x, 4u)]))), _wgslsmith_div_vec3_i32(vec3<i32>(~(-1i), u_input.a.x & var_1.x, ~29857i), u_input.a.zwy)));
    let var_3 = false;
    global1 = array<Struct_1, 8>();
    var var_4 = ~global0.x << (global0.x % 32u);
    var var_5 = func_2();
    var_0 = func_3();
    let x = u_input.a;
    s_output = StorageBuffer(-542f, vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_5.c.x, 13u)] - -347f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(u_input.b.x, 13u)])) * _wgslsmith_f_op_f32(1978f + -2660f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-320f * -1298f) - _wgslsmith_div_f32(global2[_wgslsmith_index_u32(global0.x, 13u)], 1328f)))), 1995f, _wgslsmith_f_op_f32(trunc(-871f))), vec4<i32>(_wgslsmith_mod_i32(-(~u_input.a.x), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(2147483647i, var_1.x, var_1.x), -39377i)), select(var_2.x, ~var_1.x, true) & _wgslsmith_clamp_i32(global4[_wgslsmith_index_u32(81385u, 4u)] & 37573i, firstTrailingBit(-1i), var_2.x), -15366i, 1i), abs(var_2.yx << (vec2<u32>(var_5.c.x, var_5.c.x) % vec2<u32>(32u))) | vec2<i32>(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, global0.x, ~36770u), 4u)], ~2147483647i));
}

