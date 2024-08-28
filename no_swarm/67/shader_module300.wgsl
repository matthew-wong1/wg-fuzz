struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: array<Struct_1, 29>;

var<private> global2: array<f32, 9>;

var<private> global3: array<vec2<f32>, 23>;

var<private> global4: vec2<f32> = vec2<f32>(-2478f, -793f);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    return Struct_1(arg_0.a, arg_0.b);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<i32>) -> vec3<bool> {
    let var_0 = ~(~(~(~arg_1.b.x)) ^ ~(~arg_1.b.x));
    var var_1 = arg_1.b;
    var var_2 = -arg_1.a.x;
    let var_3 = Struct_1(-arg_2, ~(~vec4<u32>(_wgslsmith_clamp_u32(0u, arg_1.b.x, u_input.a.x), var_0, reverseBits(arg_1.b.x), 38467u | var_0)));
    var_2 = firstTrailingBit(_wgslsmith_mult_i32(~(~20514i), -var_3.a.x & -38228i)) ^ 1i;
    return vec3<bool>(arg_0.x, false, any(select(vec4<bool>(any(vec2<bool>(global0.x, arg_0.x)), true, arg_0.x, any(vec3<bool>(false, true, arg_0.x))), !select(vec4<bool>(arg_0.x, global0.x, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, global0.x, arg_0.x)), false)));
}

fn func_2() -> u32 {
    var var_0 = func_1(global1[_wgslsmith_index_u32(u_input.a.x, 29u)]);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1167f, 1f) * -1924f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global4.x, global4.x)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 9u)])))));
    var var_2 = vec2<bool>(!all(func_3(!vec2<bool>(global0.x, global0.x), func_1(global1[_wgslsmith_index_u32(u_input.a.x, 29u)]), -vec4<i32>(1i, var_0.a.x, 0i, var_0.a.x))), any(!vec3<bool>(false, global0.x, true)) & false);
    let var_3 = firstLeadingBit(_wgslsmith_div_vec3_i32(max(firstTrailingBit(-var_0.a.yyw), ~_wgslsmith_add_vec3_i32(vec3<i32>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<i32>(var_0.a.x, var_0.a.x, var_0.a.x))), ~(~var_0.a.yzy)));
    global1 = array<Struct_1, 29>();
    return ~u_input.a.x;
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: u32, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = false;
    var var_1 = func_1(func_1(func_1(arg_3)));
    let var_2 = select(vec3<bool>(select(any(func_3(vec2<bool>(false, global0.x), arg_3, vec4<i32>(0i, arg_1.x, arg_1.x, var_1.a.x)).yz), global0.x & true, arg_0), arg_0, false), !select(select(vec3<bool>(arg_0, global0.x, arg_0), !vec3<bool>(global0.x, true, false), vec3<bool>(true, arg_0, global0.x)), select(!vec3<bool>(true, false, arg_0), !vec3<bool>(global0.x, true, false), 45909u <= arg_3.b.x), vec3<bool>(true, arg_3.b.x >= 4294967295u, any(vec3<bool>(arg_0, false, false)))), vec3<bool>(true == global0.x, global0.x, all(!select(vec3<bool>(arg_0, true, true), vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, arg_0, true)))));
    global4 = global3[_wgslsmith_index_u32(arg_2, 23u)];
    var var_3 = global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~_wgslsmith_div_u32(0u, var_1.b.x), 0u), 29u)];
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(arg_3.b.x, 9u)], global2[_wgslsmith_index_u32(4294967295u, 9u)], global2[_wgslsmith_index_u32(1u, 9u)], 223f) * vec4<f32>(1230f, 987f, -404f, 880f))) * vec4<f32>(global4.x, _wgslsmith_f_op_f32(f32(-1f) * -2116f), global4.x, global2[_wgslsmith_index_u32(arg_3.b.x, 9u)]))), var_1.b.x, ~var_1.b.ww, -802f, reverseBits(~abs(arg_3.a.zx)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, abs(u_input.a.x)), 29u)]);
    global1 = array<Struct_1, 29>();
    let var_1 = vec3<bool>(false, true, true);
    let var_2 = select(select(var_1.xz, select(vec2<bool>(var_1.x, true), var_1.zy, var_1.xy), var_1.zz), vec2<bool>(any(var_1.xx), var_1.x), !(!select(!var_1.zx, select(vec2<bool>(true, var_1.x), vec2<bool>(true, global0.x), vec2<bool>(global0.x, false)), any(vec3<bool>(false, var_1.x, var_1.x)))));
    let var_3 = func_1(Struct_1(vec4<i32>(~firstTrailingBit(var_0.a.x), var_0.a.x, firstTrailingBit(var_0.a.x), _wgslsmith_div_i32(-1i, var_0.a.x ^ 11379i)), ~vec4<u32>(u_input.a.x, 47961u, 0u, firstLeadingBit(var_0.b.x))));
    var var_4 = select(!(!vec3<bool>(true, var_1.x, var_2.x)), vec3<bool>(true, var_1.x, var_2.x), var_1);
    var_0 = Struct_1(countOneBits(vec4<i32>(-2147483647i, ~min(var_3.a.x, var_0.a.x), var_3.a.x, 1i)), firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_0.b.x, 4944u, u_input.a.x), vec4<u32>(29762u, 0u, var_0.b.x, u_input.a.x)) ^ var_3.b));
    global1 = array<Struct_1, 29>();
    let x = u_input.a;
    s_output = func_4(true, _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(-14496i, var_0.a.x), func_1(global1[_wgslsmith_index_u32(func_2(), 29u)]).a.zx), abs(var_0.a.wy)), var_3.b.x, Struct_1(vec4<i32>(var_0.a.x, (var_0.a.x << (6841u % 32u)) & var_3.a.x, select(var_3.a.x, 3727i, true), var_3.a.x), var_0.b));
}

