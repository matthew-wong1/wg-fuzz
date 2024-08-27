struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 6>;

var<private> global1: array<i32, 15> = array<i32, 15>(i32(-2147483648), i32(-2147483648), 49542i, 9783i, 0i, -78750i, -1i, -54100i, 0i, 4257i, -4745i, 2147483647i, 1i, i32(-2147483648), 0i);

var<private> global2: u32;

var<private> global3: array<u32, 17>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: i32, arg_1: vec4<bool>, arg_2: i32, arg_3: i32) -> Struct_1 {
    let var_0 = vec2<bool>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(391f * _wgslsmith_f_op_f32(select(-697f, 552f, false)))) <= 205f);
    var var_1 = Struct_1(arg_1.x);
    var var_2 = Struct_1(true);
    return Struct_1(var_0.x);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = arg_0;
    let var_1 = Struct_1(!var_0.a);
    let var_2 = Struct_1(arg_0.a);
    var var_3 = func_2(-10626i, select(!select(vec4<bool>(var_2.a, var_0.a, var_2.a, var_0.a), vec4<bool>(true, arg_1.a, false, var_1.a), arg_0.a || arg_0.a), !vec4<bool>(true, var_2.a && arg_0.a, var_2.a, true), (u_input.a.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 27710u, 4294967295u, 1u), vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 17u)], 32019u, global3[_wgslsmith_index_u32(8856u, 17u)])) % 32u)) <= 63347i), min(-2147483647i, _wgslsmith_dot_vec2_i32(-_wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x)), reverseBits(u_input.a))), _wgslsmith_add_i32(~(-u_input.a.x), global1[_wgslsmith_index_u32(~93247u, 15u)]));
    let var_4 = global3[_wgslsmith_index_u32(38071u, 17u)];
    return vec2<bool>(select(-_wgslsmith_mod_i32(-1i, global1[_wgslsmith_index_u32(51483u, 15u)]), ~_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(39848u, 15u)], u_input.a.x), arg_1.a) > -(~(-11873i)), var_3.a);
}

fn func_1() -> vec3<bool> {
    global1 = array<i32, 15>();
    let var_0 = Struct_1(all(select(func_3(func_2(9060i, vec4<bool>(false, true, true, true), u_input.a.x, -2241i), func_2(-1i, vec4<bool>(true, false, false, true), 2147483647i, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(968u, 17u)], 15u)]), true, Struct_1(true)), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, all(vec3<bool>(true, false, false))))));
    global2 = firstTrailingBit(4074u);
    let var_1 = -374f;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -199f, 703f) * vec3<f32>(-485f, var_1, -697f)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-283f, -1130f, var_1), vec3<f32>(-178f, -144f, var_1)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 743f, -804f)))));
    return !vec3<bool>(select(var_1 <= _wgslsmith_f_op_f32(f32(-1f) * -321f), var_0.a, var_0.a), var_0.a, any(select(!vec3<bool>(false, false, var_0.a), vec3<bool>(true, true, var_0.a), var_0.a != var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, false, true);
    var var_1 = Struct_1(any(func_1()));
    let var_2 = Struct_1(!(countOneBits(~(-1i)) <= (firstTrailingBit(u_input.a.x) & min(u_input.a.x, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 17u)], 15u)]))));
    global2 = ~global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~global3[_wgslsmith_index_u32(abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(63228u, 17u)], 17u)], 17u)]), 17u)], ~1u), 17u)], firstLeadingBit(~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(56337u, 17u)], 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 17u)], 17u)]), vec3<u32>(0u, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(9177u, 17u)], 17u)], 17u)])), 17u)])), 17u)];
    var var_3 = !func_1();
    var_3 = func_1();
    var var_4 = vec4<bool>(true, true, false, all(!select(!vec2<bool>(true, var_2.a), var_0.yx, select(vec2<bool>(var_1.a, var_3.x), vec2<bool>(var_2.a, var_2.a), var_0.xy))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.a.x, _wgslsmith_div_i32(-1i, _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(-65038i, -1i)) >> (firstTrailingBit(global3[_wgslsmith_index_u32(75927u, 17u)]) % 32u)), global1[_wgslsmith_index_u32(24278u, 15u)]), global3[_wgslsmith_index_u32(firstTrailingBit(~(~(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 17u)], 17u)], 17u)]))), 17u)], _wgslsmith_div_f32(-883f, 404f));
}

