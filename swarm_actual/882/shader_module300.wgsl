struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27>;

var<private> global1: u32 = 4294967295u;

var<private> global2: vec3<bool>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: i32) -> vec2<f32> {
    var var_0 = max(~(max(vec2<i32>(arg_1.b.x, 21927i), arg_1.b.xz) << (vec2<u32>(arg_2.x, arg_0.d) % vec2<u32>(32u))), ~vec2<i32>(_wgslsmith_add_i32(arg_1.b.x, arg_0.b.x), _wgslsmith_div_i32(-24798i, 54354i))) << (arg_2 % vec2<u32>(32u));
    let var_1 = arg_1;
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_1.a.x)))), _wgslsmith_f_op_f32(trunc(-124f)), _wgslsmith_f_op_f32(f32(-1f) * -2336f)), ~var_1.b, any(global2.zx), u_input.b);
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_1.a.xz)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_0.a.zy))));
}

fn func_2() -> f32 {
    let var_0 = Struct_2(72671i);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(0u, 27u)], -968f, global0[_wgslsmith_index_u32(74634u, 27u)]), vec3<i32>(var_0.a, -53567i, -1i), global2.x, u_input.b), Struct_1(vec3<f32>(2301f, global0[_wgslsmith_index_u32(u_input.b, 27u)], 470f), u_input.a, global2.x, u_input.b), ~vec2<u32>(0u, 41165u), -33541i)))));
    global2 = !vec3<bool>(true, !global2.x, false);
    let var_2 = -309f;
    return _wgslsmith_div_f32(global0[_wgslsmith_index_u32(select(111431u, ~u_input.b | 1u, global2.x), 27u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2300f))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(1f * 1153f);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1173f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())));
    let var_2 = Struct_2(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(max(-vec4<i32>(arg_0.x, -35503i, -10494i, -2147483647i), vec4<i32>(arg_0.x, arg_0.x, arg_1.x, arg_1.x)), ~(vec4<i32>(arg_0.x, arg_1.x, -1i, -34025i) >> (vec4<u32>(u_input.b, 57162u, 21334u, 34486u) % vec4<u32>(32u)))), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(24336i, arg_1.x, -2147483647i, 1i), -vec4<i32>(-2147483647i, arg_0.x, arg_0.x, -1i))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 27u)], var_1, 1167f), vec3<f32>(487f, var_1, global0[_wgslsmith_index_u32(1u, 27u)])))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, 695f, -381f) - vec3<f32>(var_1, 220f, 288f)))))), vec3<i32>(2147483647i & _wgslsmith_add_i32(0i, _wgslsmith_clamp_i32(-2147483647i, -17474i, 887i)), _wgslsmith_sub_i32(~u_input.a.x, 0i), ~var_2.a), true, _wgslsmith_mult_u32(u_input.b, _wgslsmith_sub_u32(u_input.b, u_input.b)));
    var var_4 = var_3;
    return var_3.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 27>();
    global1 = 0u;
    let var_0 = select(_wgslsmith_clamp_vec4_i32(-(~(vec4<i32>(-77021i, u_input.a.x, u_input.a.x, 0i) | vec4<i32>(33038i, u_input.a.x, 0i, u_input.a.x))), -_wgslsmith_mult_vec4_i32(vec4<i32>(19647i, 54264i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 54791i)) & vec4<i32>(_wgslsmith_mod_i32(1i, u_input.a.x), -2147483647i, 1i, ~(-2147483647i)), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, -14187i, -1i, 41389i), vec4<i32>(-35197i, u_input.a.x, u_input.a.x, 2147483647i)) | _wgslsmith_add_vec4_i32(vec4<i32>(-13823i, 9524i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), -_wgslsmith_div_vec4_i32(vec4<i32>(2098i, 2147483647i, 2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, -16539i, u_input.a.x)))), vec4<i32>(-1i, ~(-1i), -(abs(-25703i) >> (u_input.b % 32u)), ~(-func_1(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.xz))), select(vec4<bool>(any(vec3<bool>(true, false, global2.x)) || true, true, global2.x, true), vec4<bool>(true, all(select(global2.xy, global2.yx, global2.yz)), global2.x, true), vec4<bool>(!any(vec3<bool>(false, global2.x, true)), true, true, true)));
    global0 = array<f32, 27>();
    global1 = 44868u;
    global1 = _wgslsmith_dot_vec2_u32(countOneBits(~vec2<u32>(~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, 40009u), vec3<u32>(u_input.b, 0u, 4294967295u)))), countOneBits(max(_wgslsmith_div_vec2_u32(~vec2<u32>(34411u, u_input.b), vec2<u32>(14108u, u_input.b) << (vec2<u32>(u_input.b, 0u) % vec2<u32>(32u))), ~vec2<u32>(u_input.b, u_input.b))));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -314f), _wgslsmith_f_op_f32(f32(-1f) * -1898f))))), global0[_wgslsmith_index_u32(~1u, 27u)], 980f), firstTrailingBit(vec3<i32>(~_wgslsmith_dot_vec2_i32(var_0.yw, u_input.a.zz), 2147483647i, ~(-u_input.a.x))), global2.x, _wgslsmith_mod_u32(u_input.b, ~u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.a.x, u_input.a.x, var_0.x), var_1.b, countOneBits(var_1.b)), reverseBits(select(vec3<i32>(var_1.b.x, -8533i, -2147483647i), vec3<i32>(u_input.a.x, 1i, var_1.b.x), vec3<bool>(false, global2.x, false))))));
}

