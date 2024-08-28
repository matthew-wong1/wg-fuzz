struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: bool,
    d: vec3<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<Struct_2, 13>;

var<private> global2: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec4<u32>(4294967295u, 4294967295u, 1u, 92176u), vec3<bool>(false, false, true)), Struct_2(vec4<u32>(52717u, 1u, 64643u, 0u), vec3<bool>(false, true, true)), Struct_2(vec4<u32>(38256u, 12939u, 0u, 0u), vec3<bool>(true, false, false)), Struct_2(vec4<u32>(17636u, 29845u, 4294967295u, 1u), vec3<bool>(true, true, false)), Struct_2(vec4<u32>(4294967295u, 81007u, 22068u, 68519u), vec3<bool>(false, false, false)), Struct_2(vec4<u32>(58840u, 4294967295u, 8755u, 69580u), vec3<bool>(true, false, false)), Struct_2(vec4<u32>(35255u, 50441u, 1u, 22137u), vec3<bool>(true, false, false)), Struct_2(vec4<u32>(96508u, 98077u, 17644u, 4160u), vec3<bool>(false, false, true)), Struct_2(vec4<u32>(1u, 57932u, 28188u, 0u), vec3<bool>(false, true, true)), Struct_2(vec4<u32>(0u, 1u, 32249u, 34656u), vec3<bool>(true, false, true)), Struct_2(vec4<u32>(0u, 1u, 4294967295u, 12286u), vec3<bool>(false, true, true)), Struct_2(vec4<u32>(23804u, 11697u, 87096u, 128482u), vec3<bool>(false, false, true)), Struct_2(vec4<u32>(4294967295u, 1u, 4294967295u, 62872u), vec3<bool>(false, false, true)), Struct_2(vec4<u32>(41723u, 38900u, 64482u, 18356u), vec3<bool>(false, false, true)), Struct_2(vec4<u32>(0u, 44439u, 1u, 52577u), vec3<bool>(false, true, true)), Struct_2(vec4<u32>(1u, 1u, 16408u, 52189u), vec3<bool>(false, false, false)), Struct_2(vec4<u32>(0u, 36894u, 12594u, 8353u), vec3<bool>(true, true, true)), Struct_2(vec4<u32>(556u, 40397u, 4294967295u, 52729u), vec3<bool>(true, true, false)), Struct_2(vec4<u32>(22935u, 36260u, 30984u, 1u), vec3<bool>(true, true, false)), Struct_2(vec4<u32>(87588u, 0u, 77661u, 1u), vec3<bool>(false, false, true)), Struct_2(vec4<u32>(45773u, 31242u, 23180u, 68114u), vec3<bool>(true, false, false)), Struct_2(vec4<u32>(43046u, 4294967295u, 1u, 1u), vec3<bool>(true, true, true)));

var<private> global3: vec4<bool>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec4<bool> {
    let var_0 = global2[_wgslsmith_index_u32(~0u, 22u)];
    global2 = array<Struct_2, 22>();
    global0 = _wgslsmith_div_vec4_i32(u_input.d, _wgslsmith_mod_vec4_i32(u_input.d, ~u_input.d));
    global2 = array<Struct_2, 22>();
    let var_1 = vec4<bool>(global3.x, false, var_0.b.x, true);
    return var_1;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>) -> vec4<i32> {
    global1 = array<Struct_2, 13>();
    var var_0 = Struct_1(select(!func_3(), vec4<bool>(global3.x, !any(global3.yzz), true, true), vec4<bool>(true, abs(arg_0.a.x) >= u_input.a.x, global3.x, false)), ~_wgslsmith_div_i32(1i, _wgslsmith_mult_i32(arg_1.x >> (0u % 32u), 25807i)), max(~max(27267u, u_input.e.x), ~arg_0.a.x | u_input.c.x) == ~0u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-248f, 526f), 1142f, _wgslsmith_f_op_f32(f32(-1f) * -1602f)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(264f, -931f, 1593f), _wgslsmith_div_vec3_f32(vec3<f32>(1563f, 1000f, -1031f), vec3<f32>(-1000f, 1342f, -994f)))))), _wgslsmith_mult_vec4_u32(countOneBits(abs(arg_0.a)), ~vec4<u32>(_wgslsmith_add_u32(arg_0.a.x, 4116u), ~6087u, min(arg_0.a.x, arg_0.a.x), u_input.c.x)));
    let var_1 = 0i;
    global2 = array<Struct_2, 22>();
    let var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.d.x))), 518f)), var_0.d.x, var_0.d.x, 1255f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, -121f, var_0.d.x, 717f) + vec4<f32>(-1018f, var_0.d.x, var_0.d.x, -1970f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.d.x, 601f, var_0.d.x, var_0.d.x))), !var_0.a)))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.d.x), var_0.d.x, var_0.d.x, var_0.d.x)), var_0.c));
    return u_input.d << (countOneBits(var_0.e) % vec4<u32>(32u));
}

fn func_1(arg_0: u32) -> u32 {
    let var_0 = !global3.xz;
    global1 = array<Struct_2, 13>();
    let var_1 = vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(func_2(Struct_2(vec4<u32>(u_input.c.x, arg_0, 49130u, u_input.a.x), global3.yxx), u_input.d) >> (vec4<u32>(46936u, 0u, arg_0, 26179u) % vec4<u32>(32u)), vec4<i32>(0i, ~u_input.d.x, global0.x, u_input.b));
    var var_2 = Struct_1(vec4<bool>(var_0.x, all(vec2<bool>(false, true)), true, all(var_0)), -408i & global0.x, false && (1f != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1360f))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(795f, -583f, -1180f)) + _wgslsmith_div_vec3_f32(vec3<f32>(-919f, -588f, 1000f), vec3<f32>(785f, 631f, 2969f)))))), u_input.a);
    var var_3 = Struct_1(func_3(), 1i, all(!vec2<bool>(false, var_0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.d.x, var_2.d.x, _wgslsmith_f_op_f32(max(var_2.d.x, 687f))) - var_2.d) - _wgslsmith_f_op_vec3_f32(-var_2.d)), min(vec4<u32>(1u, 1u >> (abs(var_2.e.x) % 32u), var_2.e.x, 0u), u_input.a));
    return 48753u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = !(!(!(!(!vec4<bool>(true, false, global3.x, false)))));
    var var_0 = Struct_1(vec4<bool>(any(select(select(vec4<bool>(false, false, global3.x, global3.x), vec4<bool>(false, global3.x, true, global3.x), vec4<bool>(false, false, true, false)), select(vec4<bool>(global3.x, global3.x, global3.x, global3.x), vec4<bool>(global3.x, true, global3.x, global3.x), vec4<bool>(global3.x, global3.x, global3.x, false)), vec4<bool>(global3.x, global3.x, global3.x, true))), any(global3.wy), true, true), ~(-42647i), false & global3.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-491f, 664f, -361f)), _wgslsmith_div_vec3_f32(vec3<f32>(1978f, -810f, -414f), vec3<f32>(1063f, 1397f, -486f))))), ~vec4<u32>(37871u, max(_wgslsmith_sub_u32(u_input.e.x, u_input.e.x), func_1(31180u)), firstLeadingBit(_wgslsmith_sub_u32(4294967295u, u_input.a.x)), _wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 8708u), vec2<u32>(1u, 41534u)))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.d.x)))))), _wgslsmith_f_op_f32(min(982f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -569f), var_0.d.x))));
    global0 = u_input.d;
    var var_2 = var_0.d;
    let var_3 = ~firstTrailingBit(6185u);
    let var_4 = -var_0.b;
    let var_5 = countOneBits(~vec4<i32>(max(~global0.x, firstLeadingBit(var_0.b)), 0i, min(global0.x, abs(global0.x)), _wgslsmith_clamp_i32(global0.x, var_0.b, 2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(min(func_2(global2[_wgslsmith_index_u32(u_input.e.x, 22u)], _wgslsmith_mod_vec4_i32(u_input.d & u_input.d, u_input.d | vec4<i32>(var_4, 10579i, 22530i, 47350i))).ww, countOneBits(_wgslsmith_sub_vec2_i32(~global0.xz, -var_5.yz))));
}

