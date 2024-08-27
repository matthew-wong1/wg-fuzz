struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9>;

var<private> global1: array<vec4<u32>, 8>;

var<private> global2: vec3<u32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>) -> vec2<i32> {
    global1 = array<vec4<u32>, 8>();
    return arg_0.b;
}

fn func_2() -> Struct_1 {
    return Struct_1(u_input.c, _wgslsmith_mod_vec2_i32(max(u_input.d, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, -1i), u_input.b.xw)) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(27606i, -26178i) >> (global2.zz % vec2<u32>(32u)), vec2<i32>(-19461i, 1i)), min(firstTrailingBit(func_3(Struct_1(-56865i, u_input.d, vec3<u32>(global2.x, 4294967295u, global2.x), vec3<i32>(u_input.c, -1i, -1i)), false, vec4<f32>(global0[_wgslsmith_index_u32(global2.x, 9u)], 1311f, global0[_wgslsmith_index_u32(global2.x, 9u)], global0[_wgslsmith_index_u32(global2.x, 9u)]))), max(u_input.b.xw << (global2.yz % vec2<u32>(32u)), vec2<i32>(u_input.c, u_input.b.x)))), vec3<u32>(global2.x, _wgslsmith_mult_u32(1u, ~_wgslsmith_mod_u32(global2.x, 77140u)), reverseBits(global2.x ^ global2.x)), select(vec3<i32>(_wgslsmith_add_i32(8530i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, 1i, u_input.b.x), vec3<i32>(1i, 20749i, 2147483647i))), abs(u_input.b.x ^ -19005i), func_3(Struct_1(u_input.b.x, vec2<i32>(33703i, -2147483647i), vec3<u32>(85270u, 4294967295u, global2.x), u_input.b.zzx), false, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0[_wgslsmith_index_u32(1u, 9u)], 1735f, -384f, global0[_wgslsmith_index_u32(global2.x, 9u)])))).x), _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.b.x, -18033i, -1i) | ~u_input.b.zxx, ~(u_input.b.wyw & u_input.b.yyx)), !(true || select(true, true, true))));
}

fn func_1(arg_0: vec4<u32>) -> vec3<bool> {
    global1 = array<vec4<u32>, 8>();
    var var_0 = func_2();
    var_0 = Struct_1(-1i, vec2<i32>(-var_0.d.x, u_input.d.x), ~vec3<u32>(~abs(arg_0.x), ~(~global2.x), var_0.c.x), min(-countOneBits(var_0.d & vec3<i32>(u_input.a.x, var_0.a, var_0.a)), _wgslsmith_mod_vec3_i32(var_0.d, _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a, var_0.d.x, 11133i), u_input.b.wyw), var_0.d | var_0.d))));
    var_0 = Struct_1(_wgslsmith_sub_i32(reverseBits(var_0.d.x), var_0.d.x), u_input.b.zw, vec3<u32>(global2.x, 16212u, global2.x) << (~_wgslsmith_sub_vec3_u32(var_0.c, vec3<u32>(arg_0.x, 1u, var_0.c.x)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(var_0.d, ~u_input.b.xyz));
    let var_1 = u_input.b.xw;
    return select(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), global2.x >= var_0.c.x), true), select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(any(vec3<bool>(true, true, true)), any(vec4<bool>(true, false, false, true)), true)), !(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(true, true)))), select(vec3<bool>(true, any(vec3<bool>(true, true, false)), any(vec2<bool>(true, false))), select(vec3<bool>(7671i <= var_1.x, false, 4294967295u > arg_0.x), vec3<bool>(true, true, true), 1342f > global0[_wgslsmith_index_u32(arg_0.x << (arg_0.x % 32u), 9u)]), true));
}

fn func_4(arg_0: bool, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = !arg_1.yz;
    let var_1 = func_2();
    let var_2 = var_1;
    global1 = array<vec4<u32>, 8>();
    let var_3 = func_2();
    return Struct_1(-7258i, var_2.b, vec3<u32>(max(var_1.c.x, 4294967295u), 25942u, ~var_3.c.x >> (~9357u % 32u)), vec3<i32>(var_3.b.x, abs(29645i), _wgslsmith_mult_i32(max(-2236i, ~u_input.e), _wgslsmith_mod_i32(var_2.b.x, 9961i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(true, select(func_1(~global1[_wgslsmith_index_u32(abs(0u), 8u)]), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(false, false, true)), !vec3<bool>(true, true, all(vec2<bool>(false, true)))));
    let var_1 = _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(var_0.d.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-46017i, -1i), u_input.a))), countOneBits(~firstTrailingBit(_wgslsmith_div_vec2_i32(var_0.b, u_input.d))));
    var var_2 = 24496i;
    var var_3 = func_4(true, vec3<bool>(true, true, true));
    var var_4 = true;
    global0 = array<f32, 9>();
    var var_5 = var_0.c.x;
    let var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2248f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(22937u, 9u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-553f - var_6) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(32911u, 9u)])), global0[_wgslsmith_index_u32(~0u, 9u)]))), var_3.c.x);
}

