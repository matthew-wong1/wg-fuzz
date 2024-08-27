struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_2, 19>;

var<private> global2: Struct_1;

var<private> global3: vec2<u32>;

var<private> global4: vec3<i32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: i32) -> vec3<bool> {
    let var_0 = true;
    var var_1 = global1[_wgslsmith_index_u32(u_input.e, 19u)];
    let var_2 = Struct_1(-abs(-vec4<i32>(2147483647i, u_input.b, -1i, global4.x)));
    global3 = ~u_input.d.wx;
    global2 = var_2;
    return vec3<bool>(false, all(select(vec2<bool>(var_1.b == true, 11495u > u_input.d.x), vec2<bool>(true, true), true)), all(vec3<bool>(var_0, all(select(vec2<bool>(false, true), vec2<bool>(true, var_0), vec2<bool>(var_1.b, false))), true)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<i32>) -> i32 {
    let var_0 = Struct_1(global2.a);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-775f, 410f))) * _wgslsmith_f_op_f32(-745f + _wgslsmith_f_op_f32(ceil(333f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -519f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -955f)))), _wgslsmith_f_op_f32(round(global0.x)), global0.x), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global0.x)))), -484f), global0.x, _wgslsmith_div_f32(global0.x, -195f), global0.x), true));
    let var_2 = vec2<bool>(true, true);
    var var_3 = global1[_wgslsmith_index_u32(~(~firstTrailingBit(abs(arg_0.x))), 19u)];
    global1 = array<Struct_2, 19>();
    return 1i;
}

fn func_1() -> f32 {
    let var_0 = Struct_2(global2.a.wx ^ -(global4.yz ^ select(global2.a.yy, global2.a.xw, vec2<bool>(false, false))), all(select(func_2(_wgslsmith_mult_i32(global4.x, global4.x)), vec3<bool>(true, true, true), all(vec2<bool>(true, true)))), Struct_1(vec4<i32>(_wgslsmith_mod_i32(abs(global2.a.x), global4.x | u_input.b), func_3(~u_input.a, global2.a.xzz), 1i & max(global4.x, global2.a.x), 1i)), ~(global4.xz >> (u_input.d.wx % vec2<u32>(32u))));
    let var_1 = _wgslsmith_mult_u32(u_input.d.x, u_input.c);
    var var_2 = Struct_1(countOneBits(-vec4<i32>(-16492i, reverseBits(8663i), 41320i, _wgslsmith_div_i32(-107661i, 1i))));
    let var_3 = any(vec3<bool>(true, global0.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -541f) * global0.x), var_0.b || func_2(abs(-1i)).x));
    var var_4 = abs(u_input.d.x << (firstLeadingBit(20532u) % 32u));
    return -648f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1474f, global0.x, global0.x, global0.x) - vec4<f32>(1201f, -1000f, global0.x, global0.x)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 285f, 926f, 208f) - vec4<f32>(354f, global0.x, -1000f, 1346f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, global0.x, 854f, -784f))) - vec4<f32>(_wgslsmith_f_op_f32(337f + global0.x), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(620f + global0.x), global0.x))), vec4<f32>(-295f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.x)) + global0.x))));
    let var_1 = vec4<f32>(-453f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), 914f, _wgslsmith_mult_u32(reverseBits(global3.x), _wgslsmith_mod_u32(u_input.c, u_input.a.x)) > countOneBits(min(global3.x, u_input.a.x)))), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -856f));
    global4 = min(vec3<i32>(-(_wgslsmith_clamp_i32(-23481i, global4.x, 14541i) & 0i), global2.a.x, u_input.b), abs(~_wgslsmith_clamp_vec3_i32(global2.a.wxw, global2.a.wwx, global2.a.yxy)));
    let var_2 = Struct_1(_wgslsmith_mod_vec4_i32(global2.a << (u_input.d % vec4<u32>(32u)), vec4<i32>(-5005i, global2.a.x << (1u % 32u), u_input.b, -1i)) ^ (vec4<i32>(select(global2.a.x, 2147483647i, true), global2.a.x, _wgslsmith_mult_i32(31244i, -1i), ~global4.x) | _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, -9248i, -1001i), vec4<i32>(-4281i, -2147483647i, global4.x, 20089i) ^ global2.a)));
    var var_3 = Struct_2(firstLeadingBit(vec2<i32>(~global2.a.x & var_2.a.x, global2.a.x)), _wgslsmith_div_i32(countOneBits(global2.a.x), -45713i) > global2.a.x, var_2, -global4.yz);
    global3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, var_2.a.x, _wgslsmith_sub_vec3_u32(~reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(global3.x, u_input.c, u_input.e), vec3<u32>(global3.x, 1u, 0u), vec3<u32>(u_input.d.x, u_input.a.x, global3.x))), vec3<u32>(21066u, global3.x, 93041u)));
}

