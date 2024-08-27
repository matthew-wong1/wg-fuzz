struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec2<u32>(0u, 59522u)), Struct_1(vec2<u32>(22291u, 5776u)), Struct_1(vec2<u32>(40479u, 33057u)), Struct_1(vec2<u32>(41742u, 6861u)), Struct_1(vec2<u32>(47648u, 1u)), Struct_1(vec2<u32>(2308u, 1u)), Struct_1(vec2<u32>(92468u, 1u)), Struct_1(vec2<u32>(56864u, 19907u)), Struct_1(vec2<u32>(1u, 1u)), Struct_1(vec2<u32>(66970u, 4294967295u)), Struct_1(vec2<u32>(4294967295u, 1u)), Struct_1(vec2<u32>(6680u, 87423u)), Struct_1(vec2<u32>(1u, 0u)), Struct_1(vec2<u32>(6197u, 4294967295u)), Struct_1(vec2<u32>(4294967295u, 0u)), Struct_1(vec2<u32>(21107u, 23723u)), Struct_1(vec2<u32>(18029u, 44689u)), Struct_1(vec2<u32>(1u, 0u)), Struct_1(vec2<u32>(1u, 43780u)), Struct_1(vec2<u32>(1u, 1u)), Struct_1(vec2<u32>(4294967295u, 1u)), Struct_1(vec2<u32>(8419u, 20102u)), Struct_1(vec2<u32>(0u, 1u)));

var<private> global1: u32;

var<private> global2: Struct_1;

var<private> global3: array<vec4<bool>, 21>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> vec2<u32> {
    var var_0 = vec4<u32>(abs(~18436u), _wgslsmith_clamp_u32(4294967295u, 0u, u_input.b.x), _wgslsmith_clamp_u32(global2.a.x, ~_wgslsmith_clamp_u32(u_input.b.x, ~global2.a.x, _wgslsmith_clamp_u32(global2.a.x, 4294967295u, 32572u)), global2.a.x), 1u);
    var var_1 = Struct_1(~u_input.b.xx);
    global0 = array<Struct_1, 23>();
    let var_2 = global0[_wgslsmith_index_u32(global2.a.x, 23u)];
    let var_3 = reverseBits(u_input.d) << (global2.a.x % 32u);
    return var_1.a;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: i32) -> vec4<u32> {
    let var_0 = -reverseBits(vec4<i32>(abs(0i), u_input.e.x, ~_wgslsmith_mult_i32(arg_0, 15227i), ~(~u_input.d)));
    global3 = array<vec4<bool>, 21>();
    var var_1 = Struct_1(func_3());
    var_1 = global0[_wgslsmith_index_u32(u_input.a, 23u)];
    let var_2 = Struct_1(_wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(25202u, var_1.a.x)) & vec2<u32>(firstLeadingBit(0u), _wgslsmith_mult_u32(4294967295u, arg_1)), firstLeadingBit(u_input.b.zx)));
    return _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(countOneBits(arg_1), 926u >> (arg_1 % 32u)), 25202u, firstLeadingBit(var_2.a.x) >> (func_3().x % 32u), var_2.a.x), ~((vec4<u32>(u_input.c, 32173u, 1u, 34126u) << (vec4<u32>(46524u, var_2.a.x, var_2.a.x, var_2.a.x) % vec4<u32>(32u))) >> (vec4<u32>(arg_1, 4294967295u, global2.a.x, 58734u) % vec4<u32>(32u)))), vec4<u32>(~global2.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(var_2.a.x), abs(u_input.b.x), global2.a.x), vec3<u32>(arg_1, var_2.a.x, ~19603u)), ~(~abs(global2.a.x)), 68119u), firstLeadingBit(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, arg_1), 0u), _wgslsmith_mult_u32(var_1.a.x & 4294967295u, global2.a.x), ~(~34471u), var_1.a.x)));
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<f32>(1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-583f * -1282f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1054f, -220f)) * _wgslsmith_f_op_f32(f32(-1f) * -238f)), false)))));
    global3 = array<vec4<bool>, 21>();
    let var_1 = countOneBits(_wgslsmith_dot_vec4_u32(~abs(_wgslsmith_div_vec4_u32(vec4<u32>(global2.a.x, u_input.a, 4997u, global2.a.x), vec4<u32>(4294967295u, u_input.a, 35479u, global2.a.x))), ~func_2(u_input.e.x, _wgslsmith_sub_u32(0u, global2.a.x), -2147483647i)));
    let var_2 = firstLeadingBit(u_input.e);
    let var_3 = global0[_wgslsmith_index_u32(0u, 23u)];
    return global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(select(26965u, global2.a.x, all(vec2<bool>(true, true))), _wgslsmith_sub_u32(4294967295u, ~_wgslsmith_div_u32(u_input.a, var_3.a.x))), 23u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    let var_0 = func_1();
    var var_1 = select(global3[_wgslsmith_index_u32(~11797u, 21u)], global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(max(1u, u_input.b.x), countOneBits(6150u)) << (min(func_3().x, 22264u) % 32u), 21u)], any(!select(vec4<bool>(true, true, true, true), select(global3[_wgslsmith_index_u32(var_0.a.x, 21u)], vec4<bool>(false, true, true, false), false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false)))));
    var var_2 = Struct_1(~(~global2.a >> (_wgslsmith_mult_vec2_u32(var_0.a, global2.a) % vec2<u32>(32u))) << (_wgslsmith_clamp_vec2_u32(firstTrailingBit(u_input.b.zx), max(vec2<u32>(1u, global2.a.x) & u_input.b.yz, firstLeadingBit(var_0.a)), u_input.b.yy ^ _wgslsmith_div_vec2_u32(global2.a, var_0.a)) % vec2<u32>(32u)));
    var var_3 = vec3<i32>(2147483647i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.d, u_input.e.x), _wgslsmith_div_i32(-26938i, 9233i)), ~u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(var_3.yx, -_wgslsmith_clamp_vec2_i32(u_input.e.xw, abs(vec2<i32>(-2147483647i, 2147483647i)), ~vec2<i32>(u_input.e.x, u_input.d))), _wgslsmith_f_op_f32(2886f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(1486f - 441f)), 1133f))), _wgslsmith_mod_i32(55796i, min(~u_input.e.x, ~(1i << (global2.a.x % 32u)))), _wgslsmith_add_i32(_wgslsmith_sub_i32(var_3.x, u_input.e.x), _wgslsmith_mult_i32(u_input.e.x, max(1i, 12656i))));
}

