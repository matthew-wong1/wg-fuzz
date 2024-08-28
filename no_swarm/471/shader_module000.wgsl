struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: Struct_2;

var<private> global2: i32 = i32(-2147483648);

var<private> global3: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(-1445f, -691f), Struct_2(-499f, 1097f), Struct_2(1551f, -759f), Struct_2(401f, -1815f), Struct_2(237f, 809f), Struct_2(-342f, 379f), Struct_2(1000f, -214f), Struct_2(-625f, -2031f), Struct_2(1296f, -340f), Struct_2(-1866f, 701f), Struct_2(1155f, 418f), Struct_2(-428f, 340f), Struct_2(-290f, -267f), Struct_2(-818f, -1232f), Struct_2(870f, 997f), Struct_2(504f, -164f), Struct_2(686f, -1847f), Struct_2(1822f, -1000f));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<u32>) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x);
    let var_1 = global0[_wgslsmith_index_u32(0u, 29u)];
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1643f, -462f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1567f)) - _wgslsmith_f_op_f32(f32(-1f) * -1392f))) + var_0.b));
    var var_3 = Struct_2(global1.a, _wgslsmith_div_f32(-343f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(207f))))));
    let var_4 = 14400i;
    return max(min(arg_2.x, _wgslsmith_mult_u32(~_wgslsmith_div_u32(var_1.b, var_1.b), var_1.b)), _wgslsmith_mod_u32(20736u, ~1u));
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = func_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, 869f, 394f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, global1.a, global1.b))))))), global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(abs(arg_0), _wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_0, arg_0), ~4294967295u)), 18u)], ~reverseBits(vec4<u32>(1u, arg_0, arg_0, arg_0)) << (~_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 20316u, arg_0), ~vec4<u32>(56215u, arg_0, 778u, 1u), vec4<u32>(8991u, 31676u, arg_0, 25238u) << (vec4<u32>(arg_0, 15805u, 4294967295u, arg_0) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_1 = global0[_wgslsmith_index_u32(51513u, 29u)];
    let var_2 = max(~_wgslsmith_div_vec4_u32(vec4<u32>(4869u, 59978u, select(arg_0, var_1.b, false), 24072u), firstTrailingBit(max(vec4<u32>(4294967295u, arg_0, var_1.b, var_1.b), vec4<u32>(9181u, 4294967295u, arg_0, 8017u)))), ~vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(20135u, var_1.b), arg_0), 40812u, arg_0, var_1.b));
    var var_3 = global3[_wgslsmith_index_u32(39394u, 18u)];
    let var_4 = Struct_2(-2270f, _wgslsmith_f_op_f32(-2640f - 1000f));
    return var_4.b;
}

fn func_1(arg_0: vec3<u32>, arg_1: i32) -> u32 {
    global3 = array<Struct_2, 18>();
    var var_0 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(arg_0.x))))) < _wgslsmith_f_op_f32(-global1.a));
    let var_1 = global1.b;
    return 41005u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(func_1(~vec3<u32>(_wgslsmith_clamp_u32(~16029u, _wgslsmith_mod_u32(15337u, 7244u), 1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1792u, 5451u, 1u, 36486u), vec4<u32>(0u, 1u, 0u, 47390u)), ~(~1u)), ~u_input.a.x), 29u)];
    let var_1 = vec2<bool>(true, true);
    var var_2 = ~(~min(_wgslsmith_clamp_u32(var_0.b, var_0.b, 4294967295u), 0u));
    global1 = Struct_2(_wgslsmith_f_op_f32(trunc(-1000f)), 1f);
    var var_3 = Struct_1(_wgslsmith_dot_vec4_i32(firstTrailingBit(var_0.c), _wgslsmith_clamp_vec4_i32((u_input.a | vec4<i32>(2147483647i, u_input.a.x, -17718i, var_0.a)) & u_input.a, -vec4<i32>(var_0.d, -41711i, u_input.a.x, 7910i) & ~vec4<i32>(var_0.a, var_0.a, u_input.a.x, var_0.a), -vec4<i32>(u_input.a.x, u_input.a.x, 24219i, u_input.a.x) >> (firstLeadingBit(vec4<u32>(1u, 0u, var_0.b, var_0.b)) % vec4<u32>(32u)))), countOneBits(4294967295u), abs(-u_input.a), _wgslsmith_dot_vec2_i32(select(_wgslsmith_clamp_vec2_i32(-var_0.c.zy, _wgslsmith_add_vec2_i32(vec2<i32>(1i, u_input.a.x), u_input.a.wz), u_input.a.wy & var_0.c.xw), u_input.a.yy, var_1.x), ~_wgslsmith_div_vec2_i32(max(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.wz), var_0.c.zy)));
    let var_4 = any(vec2<bool>(false, true));
    var var_5 = global3[_wgslsmith_index_u32(~2787u, 18u)];
    let var_6 = max(-10792i | _wgslsmith_sub_i32(~(u_input.a.x | 47232i), u_input.a.x), var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_5.b, 554f), abs(4294967295u));
}

