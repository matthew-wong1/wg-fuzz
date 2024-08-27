struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true);

var<private> global1: vec3<u32> = vec3<u32>(0u, 4294967295u, 10004u);

var<private> global2: Struct_1 = Struct_1(true);

var<private> global3: vec3<u32>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1) -> bool {
    let var_0 = ~_wgslsmith_clamp_u32(global3.x, ~global3.x, min(global1.x, min(67230u, global1.x) ^ ~global1.x));
    global1 = ((_wgslsmith_mult_vec3_u32(~vec3<u32>(var_0, 4294967295u, global1.x), ~vec3<u32>(4294967295u, global3.x, 1u)) << (_wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, 29561u, global3.x), vec3<u32>(global1.x, 0u, 12539u) << (vec3<u32>(16244u, 61380u, 26444u) % vec3<u32>(32u))) % vec3<u32>(32u))) | _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.x, 41703u, global1.x), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(global3.x, 0u, global3.x)), _wgslsmith_add_vec3_u32(vec3<u32>(global3.x, var_0, global3.x), vec3<u32>(0u, 1u, var_0)), vec3<u32>(global1.x, 7459u, 15807u)), select(vec3<u32>(global1.x, var_0, global1.x), vec3<u32>(global3.x, global1.x, global1.x), vec3<bool>(false, global2.a, arg_0.a)) | _wgslsmith_div_vec3_u32(vec3<u32>(var_0, 10618u, var_0), vec3<u32>(global1.x, global3.x, var_0)))) | vec3<u32>(1u, var_0, var_0);
    let var_1 = arg_0;
    global2 = Struct_1(all(select(vec2<bool>(false, true), select(!vec2<bool>(global2.a, global2.a), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true)), vec2<bool>(true, arg_2.a))));
    let var_2 = vec4<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(abs(367f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1643f, _wgslsmith_f_op_f32(-1248f - -1680f)) + _wgslsmith_f_op_f32(-1f)), 1874f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1173f, _wgslsmith_f_op_f32(max(-1665f, -1017f)))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1401f - 448f)))))));
    return _wgslsmith_sub_i32(firstTrailingBit(u_input.a) | _wgslsmith_sub_i32(~u_input.a, firstLeadingBit(1i)), u_input.a) == ~(~min(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(arg_1.x, 44802i)), 1i));
}

fn func_2() -> bool {
    var var_0 = 0i;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-119f, -736f, -1000f, -1181f), vec4<f32>(-685f, -313f, 223f, -412f), vec4<bool>(global2.a, true, global2.a, global0.a))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1466f, 139f, 1199f, 211f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(504f, -394f, false)), -969f, _wgslsmith_f_op_f32(ceil(-649f)), _wgslsmith_f_op_f32(round(260f))))));
    global2 = Struct_1(func_3(Struct_1(!(!global0.a)), ~_wgslsmith_div_vec2_i32(vec2<i32>(62767i, u_input.a), _wgslsmith_mod_vec2_i32(vec2<i32>(-19832i, u_input.a), vec2<i32>(u_input.a, u_input.a))), Struct_1(!(!global2.a))));
    let var_2 = Struct_1(true);
    var var_3 = countOneBits(max(2147483647i, -2147483647i));
    return true;
}

fn func_1() -> Struct_1 {
    var var_0 = all(vec3<bool>(false, true, func_2()));
    global0 = Struct_1(1465f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(301f)) * _wgslsmith_div_f32(-678f, -1199f)) + 276f));
    global3 = ~min(select(_wgslsmith_mult_vec3_u32(vec3<u32>(global3.x, 0u, global1.x), vec3<u32>(global1.x, 53074u, global1.x)), _wgslsmith_div_vec3_u32(vec3<u32>(27777u, 12224u, global3.x), vec3<u32>(0u, global3.x, global3.x)), select(vec3<bool>(false, false, global2.a), vec3<bool>(true, global2.a, true), global2.a)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, global3.x, global1.x), vec3<u32>(global1.x, global1.x, 63617u))) & countOneBits(vec3<u32>(~0u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(global3.x, 11549u)), select(global1.xx, vec2<u32>(global3.x, global1.x), vec2<bool>(false, global0.a))), ~_wgslsmith_clamp_u32(1u, global1.x, 0u)));
    global1 = firstTrailingBit(vec3<u32>(global3.x, _wgslsmith_add_u32(global1.x, 0u), ~_wgslsmith_add_u32(1u, 17284u) << (0u % 32u)));
    let var_1 = Struct_1(true);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~(~vec3<u32>(~(~0u), global3.x, global1.x));
    global0 = func_1();
    global2 = Struct_1(all(vec2<bool>(global2.a, global0.a)) || true);
    global2 = func_1();
    var var_0 = global1.x;
    var var_1 = func_1().a;
    let var_2 = func_1();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -159f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-936f)), 132f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(44205u, global1.x, 0u, global1.x), vec4<u32>(_wgslsmith_mult_u32(global1.x, 4294967295u), global1.x, _wgslsmith_div_u32(global1.x, 4294967295u), ~4294967295u)), global3.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(266f + 1f), 743f)));
}

