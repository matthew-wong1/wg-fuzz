struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 13>;

var<private> global1: Struct_1;

var<private> global2: array<f32, 21> = array<f32, 21>(-1000f, -389f, -1000f, -601f, -914f, 415f, 1000f, 433f, -1106f, -104f, 845f, 119f, 523f, 730f, -422f, 1000f, 736f, -1330f, -1382f, -1571f, -865f);

var<private> global3: bool;

var<private> global4: vec2<u32>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(vec3<bool>(all(select(global1.a.xx, vec2<bool>(false, false), true)) && all(vec3<bool>(true, false, true)), all(vec3<bool>(true, true, true)), false), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b, global1.b) + _wgslsmith_f_op_f32(global1.b - global2[_wgslsmith_index_u32(u_input.b, 21u)]))) * global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b), reverseBits(vec4<u32>(0u, 1u, u_input.b, 21545u))), 1u), 21u)]));
    var var_1 = Struct_1(vec3<bool>(global1.a.x, any(vec4<bool>(true, u_input.a != u_input.a, u_input.a <= -50829i, false)), global1.a.x), 385f);
    global2 = array<f32, 21>();
    var var_2 = Struct_1(var_1.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global4.x >> (0u % 32u), 21u)])))));
    let var_3 = Struct_1(!global1.a, 873f);
    return Struct_1(select(!(!vec3<bool>(true, var_2.a.x, var_2.a.x)), var_1.a, !var_2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1835f - global1.b)) * _wgslsmith_f_op_f32(max(-257f, _wgslsmith_div_f32(var_1.b, -357f))))));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = Struct_1(vec3<bool>(arg_0.a.x, all(select(vec2<bool>(arg_0.a.x, false), vec2<bool>(true, global1.a.x), vec2<bool>(false, arg_0.a.x))), global1.a.x), 1728f);
    var var_1 = func_2();
    let var_2 = func_2();
    let var_3 = !(!vec2<bool>(func_2().a.x, true));
    global1 = Struct_1(select(select(global1.a, select(var_1.a, vec3<bool>(global1.a.x, var_3.x, true), any(vec4<bool>(true, true, var_3.x, true))), select(vec3<bool>(false, true, var_0.a.x), var_2.a, vec3<bool>(global1.a.x, var_1.a.x, var_1.a.x))), vec3<bool>(all(!vec4<bool>(var_0.a.x, var_0.a.x, false, true)), true, true || !global1.a.x), vec3<bool>(arg_0.a.x, _wgslsmith_div_f32(var_1.b, 1786f) < -314f, true)), var_0.b);
    return false;
}

fn func_1() -> i32 {
    global3 = func_3(func_2());
    global0 = array<vec2<f32>, 13>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-460f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -117f))) - _wgslsmith_f_op_f32(178f + -936f)), 951f, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~max(vec2<u32>(44163u, u_input.b), vec2<u32>(47187u, 7288u)), ~(~vec2<u32>(4294967295u, 24010u))), 21u)]));
    global3 = global1.a.x;
    var var_1 = Struct_1(select(!global1.a, global1.a, vec3<bool>(any(vec4<bool>(true, global1.a.x, true, true)), all(!vec4<bool>(global1.a.x, false, false, global1.a.x)), true & any(vec4<bool>(global1.a.x, false, global1.a.x, global1.a.x)))), 341f);
    return 0i;
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_1();
    var var_1 = global1.a.xx;
    let var_2 = reverseBits(-(_wgslsmith_sub_vec2_i32(vec2<i32>(-19571i, u_input.a) | vec2<i32>(arg_0, u_input.a), min(vec2<i32>(1i, 30972i), vec2<i32>(0i, -12986i))) << (firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(13458u, 3985u), vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.b, 0u))) % vec2<u32>(32u))));
    global4 = countOneBits(abs(vec2<u32>(~26557u, 4294967295u) | (_wgslsmith_clamp_vec2_u32(vec2<u32>(23715u, global4.x), vec2<u32>(u_input.b, 7110u), vec2<u32>(global4.x, global4.x)) | vec2<u32>(49099u, 31250u))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-397f, global2[_wgslsmith_index_u32(u_input.b, 21u)], arg_1.b, arg_1.b), vec4<f32>(global2[_wgslsmith_index_u32(global4.x, 21u)], 603f, arg_1.b, 646f), vec4<bool>(true, arg_1.a.x, true, arg_1.a.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1227f, 745f, -1000f, arg_1.b), vec4<f32>(130f, 224f, global1.b, -1225f)))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1550f, -1626f, global1.b, arg_1.b) + vec4<f32>(global1.b, arg_1.b, global2[_wgslsmith_index_u32(global4.x, 21u)], global1.b)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(690f, arg_1.b, global2[_wgslsmith_index_u32(global4.x, 21u)], -384f), vec4<f32>(global1.b, global1.b, -1368f, 2382f), arg_1.a.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1229f, -834f, -1243f, 134f), vec4<f32>(-1091f, 106f, global2[_wgslsmith_index_u32(4294967295u, 21u)], 1405f))))))));
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: bool) -> Struct_1 {
    global1 = func_2();
    let var_0 = Struct_1(select(vec3<bool>(arg_2, arg_1.x, arg_0.a.x), select(vec3<bool>(true | arg_0.a.x, true, false), select(!vec3<bool>(arg_2, arg_2, arg_0.a.x), arg_0.a, false), any(!arg_0.a)), true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1561f)), arg_0.b)));
    var var_1 = vec2<bool>(!(!arg_2), func_3(arg_0));
    var var_2 = func_2();
    let var_3 = abs(-1i);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 13>();
    let var_0 = u_input.a ^ 2055i;
    global3 = true;
    var var_1 = func_5(func_4(-func_1(), func_2()), !(!vec4<bool>(global1.a.x, global1.a.x, true, global1.a.x)), (_wgslsmith_f_op_f32(-global1.b) > global1.b) | true);
    let var_2 = Struct_1(global1.a, 484f);
    let x = u_input.a;
    s_output = StorageBuffer((~firstTrailingBit(vec4<i32>(22000i, u_input.a, -1i, u_input.a)) & vec4<i32>(~(-48759i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0, u_input.a, var_0, var_0), vec4<i32>(u_input.a, 33833i, var_0, u_input.a)), ~u_input.a, ~var_0)) & _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(29032i, u_input.a, u_input.a, var_0), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.a, var_0, var_0), vec4<i32>(u_input.a, u_input.a, 4035i, 17048i))), vec4<i32>(abs(-55203i), -1i, 1i, _wgslsmith_mod_i32(u_input.a, u_input.a))), abs(vec2<i32>(abs(~(-1i)), 2012i)), vec4<i32>(65385i, max(var_0, 34529i), _wgslsmith_sub_i32(~(u_input.a ^ u_input.a), -firstLeadingBit(var_0)), -_wgslsmith_add_i32(var_0, 20319i) >> (reverseBits(global4.x) % 32u)), vec2<i32>(-u_input.a, -18553i));
}

