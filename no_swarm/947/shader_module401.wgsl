struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: i32;

var<private> global2: Struct_1;

var<private> global3: array<bool, 5> = array<bool, 5>(false, true, true, true, false);

var<private> global4: bool;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec4<bool> {
    global0 = ~select(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, global0.x, 59143u, 44018u), ~_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, 1u), vec4<u32>(global0.x, global0.x, 7915u, 2755u))), min(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, 4294967295u), vec4<u32>(0u, global0.x, global0.x, 1u), min(vec4<u32>(global0.x, global0.x, 1u, 0u), vec4<u32>(19421u, global0.x, global0.x, global0.x))), countOneBits(vec4<u32>(global0.x, global0.x, 20816u, global0.x)) | vec4<u32>(global0.x, global0.x, global0.x, 1u)), !(!(!vec4<bool>(global3[_wgslsmith_index_u32(global0.x, 5u)], true, global3[_wgslsmith_index_u32(global0.x, 5u)], true))));
    return !(!select(vec4<bool>(false, !global3[_wgslsmith_index_u32(global0.x, 5u)], !global3[_wgslsmith_index_u32(1905u, 5u)], true), !select(vec4<bool>(false, false, false, global3[_wgslsmith_index_u32(global0.x, 5u)]), vec4<bool>(true, true, false, false), global3[_wgslsmith_index_u32(0u, 5u)]), !vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 5u)], global3[_wgslsmith_index_u32(11795u, 5u)], global3[_wgslsmith_index_u32(global0.x, 5u)], true)));
}

fn func_2(arg_0: vec4<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1209f))))), 831f));
    global3 = array<bool, 5>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1650f, -696f, -1271f))), vec4<bool>(select(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global0.x, 4294967295u), 5u)], any(vec3<bool>(true, true, global3[_wgslsmith_index_u32(21490u, 5u)])), global3[_wgslsmith_index_u32(1u, 5u)]), any(vec4<bool>(!global3[_wgslsmith_index_u32(27042u, 5u)], 0u < global0.x, false, global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0.x, global0.x, global0.x), 5u)])), global3[_wgslsmith_index_u32(4294967295u, 5u)], global3[_wgslsmith_index_u32(global0.x, 5u)]));
    var_1 = Struct_2(var_1.a, select(!func_3(), var_1.b, global3[_wgslsmith_index_u32(10538u, 5u)]));
    global4 = false;
    return true;
}

fn func_1() -> vec2<u32> {
    global4 = func_2(max(_wgslsmith_sub_vec4_i32(vec4<i32>(41597i, u_input.a, 0i, u_input.a), vec4<i32>(2147483647i, 19680i, 41869i, 28495i)) >> (countOneBits(vec4<u32>(global0.x, global0.x, global0.x, 0u)) % vec4<u32>(32u)), ~min(vec4<i32>(-93341i, 1i, u_input.a, -1i), vec4<i32>(0i, u_input.a, u_input.a, u_input.a))) | vec4<i32>(max(~32002i, countOneBits(-2147483647i)), 4324i << (~global0.x % 32u), ~u_input.a, -11482i));
    var var_0 = Struct_1(vec3<f32>(669f, 157f, _wgslsmith_f_op_f32(trunc(-1082f))));
    let var_1 = vec4<bool>(!global3[_wgslsmith_index_u32(global0.x, 5u)], !(!(!(-162f != var_0.a.x))), global3[_wgslsmith_index_u32(global0.x, 5u)], true);
    global3 = array<bool, 5>();
    global4 = global3[_wgslsmith_index_u32(global0.x, 5u)];
    return abs(vec2<u32>(_wgslsmith_add_u32(reverseBits(global0.x), _wgslsmith_dot_vec3_u32(global0.yww, global0.yyx)), global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(~(~vec2<i32>(~(-6462i), 1i)), _wgslsmith_mod_vec2_i32(reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(0i, u_input.a))) << (func_1() % vec2<u32>(32u)), countOneBits(vec2<i32>(-1i) * -vec2<i32>(u_input.a, u_input.a))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global2.a)) + global2.a)), !(!select(vec4<bool>(false, global3[_wgslsmith_index_u32(143715u, 5u)], false, global3[_wgslsmith_index_u32(global0.x, 5u)]), !vec4<bool>(global3[_wgslsmith_index_u32(15211u, 5u)], false, global3[_wgslsmith_index_u32(35031u, 5u)], true), vec4<bool>(false, global3[_wgslsmith_index_u32(global0.x, 5u)], true, true))));
    var var_2 = func_3().x;
    global0 = _wgslsmith_mult_vec4_u32(~vec4<u32>(global0.x, reverseBits(~28522u), ~global0.x, 27213u), vec4<u32>(min(47664u, _wgslsmith_add_u32(1u, min(global0.x, global0.x))), ~2271u, 4294967295u, global0.x));
    let var_3 = 1279u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global2.a.x), global0.x, firstTrailingBit(4294967295u));
}

