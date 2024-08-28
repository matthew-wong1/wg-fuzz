struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4>;

var<private> global1: Struct_1 = Struct_1(1i);

var<private> global2: array<Struct_2, 8>;

var<private> global3: Struct_1;

var<private> global4: Struct_1;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32) -> i32 {
    global2 = array<Struct_2, 8>();
    let var_0 = vec2<bool>(true, true);
    var var_1 = Struct_1(_wgslsmith_add_i32(((arg_0.x & -12120i) << (~u_input.a.x % 32u)) & 1i, global3.a));
    let var_2 = arg_0;
    var var_3 = global2[_wgslsmith_index_u32(~select(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.wz, u_input.a.wy), true), 8u)];
    return var_2.x;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(func_2(abs(~vec4<i32>(global3.a, global3.a, global4.a, global3.a)), 3410i) >> (_wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)]) % 32u));
    var var_1 = _wgslsmith_f_op_f32(step(-150f, _wgslsmith_f_op_f32(-690f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1433f, 2067f))))));
    let var_2 = func_2(vec4<i32>(~global3.a, ~global3.a, _wgslsmith_dot_vec3_i32(-vec3<i32>(0i, -22363i, global1.a), vec3<i32>(-56396i, -14529i, global1.a)), _wgslsmith_clamp_i32(~global3.a, 1i, max(-299i, var_0.a))), -2147483647i) < -2147483647i;
    let var_3 = global0[_wgslsmith_index_u32(u_input.a.x, 4u)];
    var var_4 = Struct_1(global4.a & abs(global3.a));
    return Struct_1(~2147483647i);
}

fn func_3() -> vec2<bool> {
    let var_0 = ~countOneBits(select(vec3<u32>(global0[_wgslsmith_index_u32(max(8669u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(119918u, 4u)], 4u)], 4u)], 4u)], 4u)]), 4u)], 0u, countOneBits(u_input.a.x)), ~select(u_input.a.wxw, u_input.a.wzw, false), vec3<bool>(global3.a == -42964i, any(vec4<bool>(true, true, false, true)), true)));
    global1 = func_1();
    global1 = Struct_1((global3.a >> (0u % 32u)) | 1i);
    global2 = array<Struct_2, 8>();
    let var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(min(1u, 0u), 4u)], global0[_wgslsmith_index_u32(~(~u_input.a.x), 4u)]) << (reverseBits(countOneBits(var_0.x)) % 32u), 8u)];
    return !(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(-51377i, -35977i), vec2<i32>(global3.a, 2147483647i)), firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(-30769i, global1.a), vec2<i32>(10218i, global4.a)))), ~(vec2<i32>(-1i) * -vec2<i32>(global4.a, 2147483647i))));
    var var_0 = Struct_1(24820i);
    var_0 = func_1();
    var var_1 = func_1();
    var var_2 = func_3();
    let var_3 = u_input.a.x;
    var var_4 = Struct_2(-_wgslsmith_mod_vec3_i32((vec3<i32>(var_1.a, global1.a, 2147483647i) & vec3<i32>(global1.a, 1i, -2147483647i)) << (vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(1u, 4u)], 41939u) % vec3<u32>(32u)), abs(vec3<i32>(0i, global1.a, 1i))), vec3<i32>(-1i) * -min(vec3<i32>(-2147483647i, var_0.a, var_0.a), reverseBits(vec3<i32>(global1.a, var_1.a, var_0.a))));
    var var_5 = Struct_1(max(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -29429i, -2147483647i), var_4.b), -global4.a, var_1.a), 21345i) | ~var_4.a.x);
    var var_6 = global2[_wgslsmith_index_u32(countOneBits(select(21312u, _wgslsmith_clamp_u32(~u_input.a.x, firstTrailingBit(var_3), ~var_3) << (1u % 32u), true)), 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(365f, 12566i, _wgslsmith_clamp_vec3_i32(vec3<i32>(global4.a, -41i, 0i & ~var_6.a.x), -_wgslsmith_mod_vec3_i32(var_4.b, var_4.b), -(~vec3<i32>(-2147483647i, 2084i, 1i) ^ reverseBits(vec3<i32>(var_5.a, global1.a, 40i)))), var_6.b);
}

