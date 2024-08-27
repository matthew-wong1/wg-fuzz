struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec4<bool>,
    d: vec4<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5> = array<i32, 5>(2147483647i, -42092i, 1i, 0i, -10454i);

var<private> global1: array<u32, 21> = array<u32, 21>(16515u, 4294967295u, 1u, 42739u, 1u, 4294967295u, 85842u, 107562u, 25706u, 48020u, 4294967295u, 15954u, 4294967295u, 63258u, 44179u, 81474u, 1u, 7813u, 0u, 1u, 51917u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: bool, arg_3: vec3<i32>) -> bool {
    var var_0 = ~(~(~abs(vec2<u32>(arg_0.x, u_input.a.x))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -208f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1371f))), _wgslsmith_f_op_f32(sign(1310f))));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) * 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_1.x)), 947f))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + 1630f))), _wgslsmith_f_op_f32(-var_1.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -820f, var_1.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, var_1.x, var_1.x, 641f), vec4<f32>(var_1.x, -1000f, var_1.x, var_1.x)))))));
    var var_3 = ~vec2<i32>(2147483647i, arg_1.x);
    global1 = array<u32, 21>();
    return arg_2;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>) -> bool {
    let var_0 = 10857i;
    global1 = array<u32, 21>();
    global0 = array<i32, 5>();
    var var_1 = arg_0.b.b;
    return arg_0.b.b;
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec2<bool>) -> Struct_4 {
    global0 = array<i32, 5>();
    let var_0 = Struct_2(_wgslsmith_add_vec2_i32(reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 0i)) << (firstLeadingBit(u_input.a.yw) % vec2<u32>(32u))), vec2<i32>(global0[_wgslsmith_index_u32(abs(abs(global1[_wgslsmith_index_u32(53385u, 21u)])), 5u)], ~global0[_wgslsmith_index_u32(1u, 5u)])), Struct_1(reverseBits(-firstTrailingBit(vec4<i32>(-19228i, 11680i, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 5u)]))), !arg_0));
    var var_1 = 9145i;
    var_1 = -8906i;
    var var_2 = 1623f;
    return Struct_4(31581i, Struct_3(false, Struct_2(vec2<i32>(var_0.b.a.x, 17974i | global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 21u)], 5u)]), var_0.b)), vec4<bool>(arg_0, all(select(vec4<bool>(arg_2.x, arg_2.x, false, arg_0), vec4<bool>(true, arg_0, false, false), vec4<bool>(arg_0, arg_1, arg_1, arg_0))) | any(!vec4<bool>(false, arg_1, true, false)), arg_0, func_2(var_0, var_0.b.a.zw >> (u_input.a.zw % vec2<u32>(32u))) != ((23137u == global1[_wgslsmith_index_u32(u_input.a.x, 21u)]) & true)), u_input.a, any(select(vec2<bool>(true, all(vec4<bool>(arg_1, true, var_0.b.b, var_0.b.b))), arg_2, arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    let var_1 = true;
    global1 = array<u32, 21>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -838f));
    let var_3 = func_3(!all(!(!vec4<bool>(var_1, var_1, true, false))), !func_1(u_input.a, firstLeadingBit(-vec4<i32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], -1i, var_0)), all(!vec4<bool>(var_1, var_1, false, false)), ~_wgslsmith_add_vec3_i32(vec3<i32>(var_0, -1i, -43521i), vec3<i32>(-50382i, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(34701u, 21u)], 5u)], var_0))), vec2<bool>(0i >= (-2147483647i | (var_0 << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)] % 32u))), func_2(Struct_2(vec2<i32>(var_0, 6961i), Struct_1(vec4<i32>(var_0, global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)], -2147483647i), false)), abs(-vec2<i32>(var_0, global0[_wgslsmith_index_u32(58542u, 5u)])))));
    global1 = array<u32, 21>();
    let var_4 = -_wgslsmith_div_i32(((var_3.a >> (0u % 32u)) ^ -var_0) >> (1u % 32u), 27837i);
    global1 = array<u32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d.x);
}

