struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11> = array<u32, 11>(1u, 11978u, 4294967295u, 33993u, 49764u, 4294967295u, 10653u, 1u, 0u, 0u, 0u);

var<private> global1: array<u32, 25> = array<u32, 25>(4294967295u, 32380u, 54176u, 4930u, 41912u, 11521u, 0u, 1u, 57786u, 110310u, 4294967295u, 1u, 51656u, 6494u, 64402u, 0u, 53623u, 89708u, 1u, 26554u, 1u, 17224u, 13985u, 1u, 1838u);

var<private> global2: Struct_2 = Struct_2(false, 2147483647i);

var<private> global3: Struct_2 = Struct_2(false, 0i);

var<private> global4: Struct_1 = Struct_1(vec4<u32>(61193u, 0u, 93762u, 1u), 1000f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
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

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<f32>) -> bool {
    global0 = array<u32, 11>();
    global3 = Struct_2(global2.a, -15862i);
    let var_0 = Struct_1(~_wgslsmith_clamp_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(76273u, 50303u, 63187u, global0[_wgslsmith_index_u32(0u, 11u)]), global4.a), countOneBits(global4.a), ~min(global4.a, global4.a)), 1996f);
    global1 = array<u32, 25>();
    return true;
}

fn func_2() -> vec2<i32> {
    global2 = Struct_2(all(vec3<bool>(func_3(vec3<f32>(-266f, -2052f, -1575f)), true, global3.a)), firstTrailingBit(reverseBits(43806i)));
    var var_0 = reverseBits(max(select(~(~vec2<u32>(42401u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4.a.x, 25u)], 25u)], 11u)], 11u)])), select(~global4.a.yy, vec2<u32>(0u, global4.a.x), global2.a), vec2<bool>(false, false)), ~global4.a.zx));
    global0 = array<u32, 11>();
    let var_1 = Struct_1(reverseBits(global4.a & global4.a) | vec4<u32>(1u, global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(var_0.x, 11u)], 11u)], firstLeadingBit(~4294967295u), ~0u), _wgslsmith_f_op_f32(max(global4.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global4.b - global4.b))))))));
    let var_2 = var_1;
    return _wgslsmith_add_vec2_i32(vec2<i32>(global2.b, -7286i), vec2<i32>(_wgslsmith_sub_i32(u_input.a, abs(1009i)), 45286i));
}

fn func_1() -> Struct_1 {
    global3 = Struct_2(global2.a, 66722i);
    global4 = Struct_1(~firstTrailingBit(vec4<u32>(~0u, ~global4.a.x, ~global0[_wgslsmith_index_u32(20649u, 11u)], 50800u >> (global1[_wgslsmith_index_u32(global4.a.x, 25u)] % 32u))), -300f);
    var var_0 = _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -(vec2<i32>(global2.b, u_input.a) | vec2<i32>(7342i, 16674i)), -func_2()), ~vec2<i32>(~(~1i), global3.b));
    let var_1 = Struct_2(global3.a, _wgslsmith_mult_i32(~_wgslsmith_dot_vec3_i32(-vec3<i32>(global2.b, -1i, 0i), vec3<i32>(32677i, -2147483647i, u_input.a)), -_wgslsmith_dot_vec3_i32(~vec3<i32>(global2.b, global3.b, global3.b), -vec3<i32>(var_0.x, -48414i, global3.b))));
    let var_2 = abs(~(global4.a.xz ^ select(global4.a.xx, _wgslsmith_clamp_vec2_u32(global4.a.wy, global4.a.wy, vec2<u32>(0u, 4797u)), true)));
    return Struct_1(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10905u, 11u)], 11u)], 25u)] >> (77791u % 32u), firstLeadingBit(global0[_wgslsmith_index_u32(22366u, 11u)]), var_2.x | 0u, ~9496u), firstLeadingBit(global4.a))), global4.b);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> i32 {
    var var_0 = Struct_1(func_1().a, _wgslsmith_div_f32(382f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1000f, 593f), _wgslsmith_f_op_f32(global4.b * arg_2.b))) + -913f)));
    global3 = arg_1;
    global2 = Struct_2(func_3(vec3<f32>(1534f, 521f, _wgslsmith_f_op_f32(arg_2.b + global4.b))) && true, abs(global2.b));
    let var_1 = ~arg_2.a.zy;
    global4 = arg_2;
    return ~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(~(-11254i), 1i, _wgslsmith_clamp_i32(reverseBits(34605i), -12704i, 11734i)), 93186i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(true, 17718i);
    var var_1 = vec2<bool>(-15937i >= _wgslsmith_dot_vec3_i32(countOneBits(~vec3<i32>(2147483647i, global2.b, 93191i)), firstTrailingBit(~vec3<i32>(var_0.b, 13404i, var_0.b))), !global3.a);
    let var_2 = global4.b;
    var var_3 = -func_4(abs(~3855i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 54516u, 32434u), vec3<u32>(3141u, global4.a.x, global0[_wgslsmith_index_u32(1u, 11u)])) % 32u)), var_0, func_1(), global2.b);
    let var_4 = func_1();
    let var_5 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global4.b, global4.b, _wgslsmith_f_op_f32(-global4.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1025f)), -164f))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, global4.b, var_0.b);
}

