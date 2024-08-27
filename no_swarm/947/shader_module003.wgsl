struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global1: array<f32, 17>;

var<private> global2: array<vec3<f32>, 13>;

var<private> global3: i32 = 94145i;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = Struct_2(global0.www, 1i >> (u_input.c.x % 32u));
    global2 = array<vec3<f32>, 13>();
    var var_1 = _wgslsmith_mod_i32(-1i, 9698i);
    var var_2 = var_0;
    global1 = array<f32, 17>();
    return arg_1.a;
}

fn func_3(arg_0: vec4<bool>, arg_1: u32) -> u32 {
    let var_0 = -vec4<i32>(_wgslsmith_div_i32(13803i, firstTrailingBit(-18626i) >> (~0u % 32u)), min(u_input.d.x, -(-20548i >> (0u % 32u))), u_input.d.x, 2147483647i);
    global0 = select(vec4<bool>(global0.x, var_0.x > -(~(-1i)), global0.x, global0.x & global0.x), !select(select(arg_0, arg_0, !arg_0), !arg_0, arg_0), !arg_0);
    let var_1 = -999f;
    var var_2 = var_0.x;
    let var_3 = ~(~(~vec3<u32>(abs(u_input.c.x), 56720u, 7665u & u_input.c.x)));
    return u_input.c.x;
}

fn func_1(arg_0: u32) -> Struct_1 {
    global2 = array<vec3<f32>, 13>();
    let var_0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(675f, global1[_wgslsmith_index_u32(4294967295u, 17u)]) - vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 17u)], global1[_wgslsmith_index_u32(arg_0, 17u)]))), _wgslsmith_f_op_vec2_f32(func_2(global0.ww, Struct_1(vec2<f32>(global1[_wgslsmith_index_u32(80942u, 17u)], -207f), global0.zx, vec3<u32>(19350u, u_input.c.x, arg_0))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(1u, 17u)], 351f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-281f, -184f) - vec2<f32>(global1[_wgslsmith_index_u32(arg_0, 17u)], global1[_wgslsmith_index_u32(u_input.c.x, 17u)])), global0.x || global0.x)))), !vec2<bool>(global0.x, global0.x), ~_wgslsmith_div_vec3_u32(vec3<u32>(func_3(vec4<bool>(false, global0.x, global0.x, true), 47719u), arg_0, select(67127u, u_input.c.x, global0.x)), ~select(vec3<u32>(u_input.c.x, arg_0, u_input.c.x), vec3<u32>(arg_0, 4294967295u, 26080u), true)));
    let var_1 = _wgslsmith_mult_vec2_i32(reverseBits(reverseBits(vec2<i32>(19287i ^ u_input.d.x, -2888i))), vec2<i32>(min(_wgslsmith_clamp_i32(reverseBits(0i), u_input.b.x, 0i), _wgslsmith_mod_i32(1i, u_input.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, u_input.b.x, u_input.d.x) & _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -30787i, 53784i, u_input.a), vec4<i32>(7830i, -334i, -1i, u_input.d.x)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, u_input.d.x, 25000i), vec4<i32>(-2147483647i, u_input.d.x, u_input.d.x, u_input.d.x)))));
    var var_2 = countOneBits(~select(~vec4<i32>(var_1.x, u_input.a, u_input.b.x, u_input.a) >> (vec4<u32>(arg_0, 7573u, arg_0, var_0.c.x) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(var_1.x, -34951i, 16621i, -13627i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, -2147483647i, var_1.x, -5572i), vec4<i32>(var_1.x, u_input.b.x, -12657i, u_input.d.x))), global0.x));
    global3 = -u_input.b.x;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(firstLeadingBit(((u_input.c.x << (u_input.c.x % 32u)) | _wgslsmith_mod_u32(u_input.c.x, u_input.c.x)) >> (~1u % 32u)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1028f, _wgslsmith_f_op_f32(f32(-1f) * -684f)) * _wgslsmith_f_op_f32(-1352f * global1[_wgslsmith_index_u32(~u_input.c.x, 17u)])) + global1[_wgslsmith_index_u32(~u_input.c.x, 17u)]) + _wgslsmith_f_op_f32(-311f + -1439f));
    var var_2 = u_input.b.zx;
    let var_3 = !all(!global0.yxw);
    let var_4 = _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(firstTrailingBit(u_input.c.x), ~var_0.c.x, _wgslsmith_clamp_u32(71005u, 4294967295u, 21678u))) & max(var_0.c, vec3<u32>(0u, 0u, ~63847u)), var_0.c, var_0.c & firstTrailingBit(_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(0u, 47483u, 4294967295u)), vec3<u32>(0u, var_0.c.x, 0u))));
    var var_5 = vec3<bool>(select(var_0.b.x, any(select(vec3<bool>(global0.x, true, true), select(global0.ywx, global0.xyw, global0.yzx), global0.x && var_3)), false), false, false);
    global2 = array<vec3<f32>, 13>();
    let var_6 = Struct_2(vec3<bool>(var_0.b.x, all(vec4<bool>(true, !var_0.b.x, false, true)), ((i32(-1i) * -25529i) << (var_4.x % 32u)) <= u_input.a), ~var_2.x);
    let var_7 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(var_0.a.x, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 17u)]), var_5.x)), func_1(firstTrailingBit(_wgslsmith_div_u32(688u, 4294967295u))).a.x), select(vec2<bool>(true, true), global0.yx, func_1(var_0.c.x >> (func_1(80312u).c.x % 32u)).b), vec3<u32>(u_input.c.x, min(1u, _wgslsmith_add_u32(85442u, func_3(vec4<bool>(var_6.a.x, var_0.b.x, true, true), 4294967295u))), _wgslsmith_sub_u32(82619u, func_3(vec4<bool>(false, global0.x, var_6.a.x, var_5.x), 1u)) << (_wgslsmith_add_u32(_wgslsmith_clamp_u32(4294967295u, 69603u, var_0.c.x), _wgslsmith_sub_u32(4294967295u, 4294967295u)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit((firstTrailingBit(vec4<i32>(u_input.b.x, u_input.d.x, var_6.b, var_6.b)) >> (vec4<u32>(1u, 13245u, 0u, var_0.c.x) % vec4<u32>(32u))) ^ vec4<i32>(1i, -var_2.x, 1i, -u_input.d.x)), var_0.a.x, vec4<i32>(-var_2.x, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(77852i, var_2.x, -46299i, var_6.b)), ~vec4<i32>(-2147483647i, 2147483647i, var_6.b, -12477i) >> (~vec4<u32>(var_4.x, var_7.c.x, var_0.c.x, 0u) % vec4<u32>(32u))), _wgslsmith_clamp_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i), u_input.b.yz), _wgslsmith_mod_i32(firstLeadingBit(var_2.x), abs(var_6.b)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_6.b, 2147483647i, -2147483647i), reverseBits(vec4<i32>(var_6.b, var_6.b, u_input.d.x, 91004i)))), 36494i), ~max(vec3<u32>(var_0.c.x << (1405u % 32u), firstTrailingBit(1u), 33787u), ~var_4));
}

