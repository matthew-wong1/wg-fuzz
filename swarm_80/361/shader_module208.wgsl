struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: u32,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 14>;

var<private> global1: array<Struct_1, 2>;

var<private> global2: Struct_1;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>) -> vec2<bool> {
    global1 = array<Struct_1, 2>();
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(22186u, 10754u), 2u)];
    var var_1 = global1[_wgslsmith_index_u32(u_input.a, 2u)];
    var var_2 = var_1.a.x;
    let var_3 = ~5218i;
    return var_0.d.yx;
}

fn func_2() -> vec2<u32> {
    let var_0 = -firstTrailingBit(~_wgslsmith_sub_i32(min(u_input.b, global2.e.x), global2.e.x));
    var var_1 = any(select(select(!global2.a, !func_3(global2.b), !(!vec2<bool>(global2.d.x, true))), vec2<bool>(any(vec3<bool>(global2.a.x, false, false)), false), !global2.d.yx));
    global1 = array<Struct_1, 2>();
    var var_2 = vec2<u32>(firstTrailingBit(u_input.a | 51386u), u_input.a);
    global2 = global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(reverseBits(26661u), countOneBits(~0u)), 2u)];
    return _wgslsmith_add_vec2_u32(~(firstTrailingBit(vec2<u32>(var_2.x, 49152u) >> (vec2<u32>(0u, 62695u) % vec2<u32>(32u))) ^ _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, 0u), ~vec2<u32>(78132u, 1u))), ~(vec2<u32>(u_input.a, var_2.x) ^ ~vec2<u32>(global2.c, 36209u)));
}

fn func_1() -> Struct_1 {
    global1 = array<Struct_1, 2>();
    global0 = array<vec3<u32>, 14>();
    let var_0 = -max(1i, global2.e.x);
    var var_1 = func_2();
    var_1 = ~max(countOneBits(abs(vec2<u32>(4294967295u, u_input.a))) ^ _wgslsmith_mod_vec2_u32(select(vec2<u32>(global2.c, 32683u), vec2<u32>(var_1.x, 23984u), true), ~vec2<u32>(var_1.x, u_input.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(var_1.x, ~global2.c), firstLeadingBit(~vec2<u32>(1u, u_input.a))));
    return Struct_1(select(!func_3(_wgslsmith_clamp_vec3_i32(global2.b, global2.b, vec3<i32>(2147483647i, -52468i, global2.e.x))), global2.d.zz, u_input.b > (-30646i | _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, global2.b.x), global2.b.yz))), ~countOneBits(-(vec3<i32>(global2.b.x, global2.e.x, 17652i) ^ global2.b)), abs(~u_input.a), global2.d, vec2<i32>(u_input.b, var_0));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    global0 = array<vec3<u32>, 14>();
    var var_0 = -vec4<i32>(select(1i, 7447i, true), _wgslsmith_mult_i32(~arg_0.b.x, arg_3.b.x), arg_0.e.x, 0i | _wgslsmith_mod_i32(arg_2.x, 2147483647i)) ^ vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(1i << (1u % 32u), _wgslsmith_mod_i32(u_input.b, global2.b.x)), arg_3.e.x), 29903i, _wgslsmith_dot_vec3_i32(-firstTrailingBit(vec3<i32>(-32120i, 44381i, arg_0.e.x)), _wgslsmith_sub_vec3_i32(-arg_0.b, arg_0.b >> (vec3<u32>(u_input.a, u_input.a, arg_0.c) % vec3<u32>(32u)))), ~abs(u_input.b) ^ (arg_3.b.x | -14354i));
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(875f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-350f, -252f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), arg_1)), -1007f, arg_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, -110f, -441f)))));
    var var_2 = u_input.a & 25109u;
    var_0 = ~(-vec4<i32>(-13125i, -2147483647i, func_1().e.x, arg_2.x));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-629f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1747f, 1000f)))))), countOneBits(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(global2.b, vec3<i32>(-2147483647i, -2147483647i, -26514i), global2.b >> (global0[_wgslsmith_index_u32(0u, 14u)] % vec3<u32>(32u))), -firstLeadingBit(vec3<i32>(u_input.b, u_input.b, global2.b.x)))), func_1());
    var var_0 = vec2<f32>(1093f, _wgslsmith_f_op_f32(f32(-1f) * -1599f));
    let var_1 = 0i;
    let var_2 = func_4(func_1(), var_0.x, _wgslsmith_add_vec3_i32(vec3<i32>(abs(func_4(global1[_wgslsmith_index_u32(u_input.a, 2u)], var_0.x, vec3<i32>(u_input.b, 2147483647i, -39199i), Struct_1(vec2<bool>(true, global2.d.x), vec3<i32>(-1i, global2.b.x, 2147483647i), global2.c, vec3<bool>(global2.a.x, global2.a.x, true), global2.b.xy)).b.x), global2.e.x, 2458i), min(_wgslsmith_mod_vec3_i32(global2.b << (global0[_wgslsmith_index_u32(global2.c, 14u)] % vec3<u32>(32u)), vec3<i32>(-2147483647i, -2595i, 2147483647i)), abs(firstTrailingBit(vec3<i32>(u_input.b, 21521i, global2.e.x))))), func_1());
    var var_3 = vec2<i32>(_wgslsmith_mult_i32(max(global2.e.x >> (0u % 32u), -1i) & -64714i, global2.e.x), abs(-firstTrailingBit(~68294i)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec2<f32>(2230f, _wgslsmith_f_op_f32(-var_0.x)));
}

