struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global1: f32 = -120f;

var<private> global2: array<u32, 16> = array<u32, 16>(44480u, 1u, 4294967295u, 31361u, 37888u, 0u, 28236u, 9571u, 0u, 1u, 4294967295u, 0u, 51901u, 4294967295u, 0u, 1u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> bool {
    global2 = array<u32, 16>();
    global0 = !select(vec4<bool>(all(!vec4<bool>(global0.x, false, global0.x, global0.x)), !global0.x, 1u > _wgslsmith_sub_u32(u_input.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 16u)], 16u)]), !any(vec2<bool>(global0.x, global0.x))), vec4<bool>(global0.x, global0.x, false, global0.x), select(vec4<bool>(false, true, all(global0.yx), true), vec4<bool>(true, false, global0.x, true), any(vec4<bool>(true, true, true, true))));
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -276f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1052f)) - _wgslsmith_f_op_f32(min(465f, 876f))))), -646f));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2233f, var_0, any(vec4<bool>(false, false, false, false))))))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_mod_vec2_i32(u_input.b.zz, u_input.b.zz | reverseBits(vec2<i32>(-2147483647i, u_input.b.x))), true), -2147483647i >= (~u_input.b.x >> (~(~global2[_wgslsmith_index_u32(u_input.a.x, 16u)]) % 32u)));
    return all(!(!(!(!vec4<bool>(true, true, var_1.a.b, global0.x)))));
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> f32 {
    let var_0 = vec3<bool>(true, !arg_0.a.b, true);
    global0 = vec4<bool>(!global0.x, false, all(vec2<bool>(global0.x, func_3())), !all(select(var_0.xy, vec2<bool>(global0.x, false), global0.zx)));
    var var_1 = Struct_2(arg_0.a, true);
    var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1774f));
    return -761f;
}

fn func_1() -> u32 {
    global0 = !select(select(!vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(true, all(vec4<bool>(false, global0.x, global0.x, false)), global0.x & global0.x, true), select(select(vec4<bool>(true, false, false, global0.x), vec4<bool>(global0.x, global0.x, global0.x, true), global0.x), vec4<bool>(global0.x, false, true, false), global0.x)), vec4<bool>(false, all(vec3<bool>(false, global0.x, true)), true, true), all(select(select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, false, false, false)), select(vec4<bool>(global0.x, true, false, true), vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, true, global0.x)), u_input.b.x <= u_input.b.x)));
    var var_0 = -1534f;
    let var_1 = 9896u;
    var var_2 = _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(vec2<i32>(u_input.b.x, -38555i), true), global0.x), 4068u)) > _wgslsmith_f_op_f32(2697f + _wgslsmith_div_f32(192f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1629f)) - -1000f)));
    var var_3 = false;
    return var_1;
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: vec3<u32>, arg_3: vec3<u32>) -> vec4<i32> {
    global1 = -1000f;
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1401f * arg_1.x)), 1426f)));
    let var_1 = ~1u;
    let var_2 = Struct_1(~abs(u_input.b.xy), false);
    global2 = array<u32, 16>();
    return _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(~var_2.a.x, 0i, ~var_2.a.x, abs(u_input.b.x)), _wgslsmith_sub_vec4_i32(countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(42644i, u_input.b.x, 2147483647i, 1i), vec4<i32>(-1i, u_input.b.x, -2147483647i, u_input.b.x), vec4<i32>(28623i, 13049i, var_2.a.x, var_2.a.x) >> (vec4<u32>(1u, arg_0, u_input.a.x, arg_2.x) % vec4<u32>(32u)))), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.b, ~vec3<i32>(var_2.a.x, 39672i, var_2.a.x)), -10196i, u_input.b.x, min(_wgslsmith_clamp_i32(15461i, 1i, var_2.a.x), -1i))), _wgslsmith_mult_vec4_i32((-vec4<i32>(u_input.b.x, var_2.a.x, -1i, -1i) >> (vec4<u32>(arg_2.x, arg_3.x, u_input.a.x, 56707u) % vec4<u32>(32u))) << (~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 44988u, 1u, arg_3.x), vec4<u32>(arg_2.x, var_1, 4294967295u, 41495u)) % vec4<u32>(32u)), ~abs(firstTrailingBit(vec4<i32>(u_input.b.x, -26004i, var_2.a.x, var_2.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(func_4(1u, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-941f, -152f)))))), _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 16u)], 4294967295u, u_input.a.x), ~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 16u)], 16u)], u_input.a.x, u_input.a.x)), vec3<u32>(~global2[_wgslsmith_index_u32(u_input.a.x, 16u)], 45041u, func_1())), ~reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(1u, 16u)], 28707u, 0u), vec3<u32>(1u, 4294967295u, global2[_wgslsmith_index_u32(55717u, 16u)])))), vec4<i32>(~u_input.b.x, _wgslsmith_div_i32(func_4(min(32563u, u_input.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(972f, -1020f) * vec2<f32>(747f, -667f)), ~vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<u32>(u_input.a.x, 4282u, 48695u)).x, 2147483647i), -1i, u_input.b.x), global0.x);
    var var_1 = Struct_1(vec2<i32>(~u_input.b.x, -firstTrailingBit(select(49517i, var_0.x, global0.x))), !any(!vec4<bool>(global0.x, global0.x, global0.x, true)));
    var var_2 = vec3<i32>(var_1.a.x, var_0.x, 8212i);
    var_1 = Struct_1(vec2<i32>(var_1.a.x, reverseBits(var_0.x)), !(17082i > var_0.x));
    var var_3 = (all(!global0.wzy) && select(!global0.x, func_3(), func_3())) || false;
    let var_4 = !(!(!select(select(vec4<bool>(var_1.b, true, var_1.b, var_1.b), vec4<bool>(var_1.b, var_1.b, false, global0.x), false), vec4<bool>(var_1.b, false, var_1.b, var_1.b), any(global0.wxx))));
    let var_5 = vec3<u32>(15916u ^ (firstTrailingBit(func_1()) << (reverseBits(~89902u) % 32u)), reverseBits(4294967295u), ~firstTrailingBit(global2[_wgslsmith_index_u32(45221u, 16u)] >> (1u % 32u)) >> (global2[_wgslsmith_index_u32(~(~1u), 16u)] % 32u));
    global2 = array<u32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, select(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 10715u, global2[_wgslsmith_index_u32(var_5.x, 16u)], 4294967295u ^ global2[_wgslsmith_index_u32(u_input.a.x, 16u)]), ~(vec4<u32>(4294967295u, 4294967295u, 45475u, var_5.x) & vec4<u32>(20313u, 56194u, global2[_wgslsmith_index_u32(759u, 16u)], 1u))), ~_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_5.x, u_input.a.x, 13466u, 4294967295u), vec4<u32>(var_5.x, u_input.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(68794u, 16u)], 16u)], 57005u), vec4<u32>(u_input.a.x, 1u, global2[_wgslsmith_index_u32(26403u, 16u)], var_5.x)), ~vec4<u32>(u_input.a.x, 56452u, var_5.x, var_5.x)), !any(var_4)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(384f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -3031f)))), 1000f)), _wgslsmith_div_vec4_u32((_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 17623u, 0u), vec4<u32>(4294967295u, 0u, u_input.a.x, 9764u)) & vec4<u32>(var_5.x, 1u, u_input.a.x, 4294967295u)) ^ firstTrailingBit(vec4<u32>(u_input.a.x, 29108u, var_5.x, var_5.x)), vec4<u32>(~var_5.x, u_input.a.x, _wgslsmith_add_u32(min(u_input.a.x, global2[_wgslsmith_index_u32(96175u, 16u)]), global2[_wgslsmith_index_u32(reverseBits(15574u), 16u)]), global2[_wgslsmith_index_u32(var_5.x, 16u)] >> ((global2[_wgslsmith_index_u32(1u, 16u)] >> (global2[_wgslsmith_index_u32(35387u, 16u)] % 32u)) % 32u))), ~(-select(var_0.x, var_0.x, true)) >> (~countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(var_5.x, global2[_wgslsmith_index_u32(36222u, 16u)], var_5.x), vec3<u32>(1u, u_input.a.x, 1u))) % 32u));
}

