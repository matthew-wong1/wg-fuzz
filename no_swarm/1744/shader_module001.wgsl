struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(true, false, false, true, true, false, true, true);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>) -> f32 {
    global0 = array<bool, 8>();
    var var_0 = _wgslsmith_f_op_f32(-arg_0.c);
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_0.c))));
    let var_1 = Struct_2(min(0i, ~(-75669i)) > ((4943i & (arg_1.x ^ u_input.b)) >> (1u % 32u)), _wgslsmith_f_op_f32(-arg_0.c), u_input.a, u_input.a);
    let var_2 = vec2<u32>(~u_input.c, ~min(68082u, 1u));
    return -402f;
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_3, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_sub_vec4_u32(u_input.d, (~vec4<u32>(arg_0.x, arg_0.x, u_input.c, u_input.c) >> (u_input.d % vec4<u32>(32u))) ^ vec4<u32>(~_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, arg_0.x, arg_0.x, u_input.c)), ~u_input.d.x ^ (arg_0.x | 1u), u_input.c, ~4294967295u));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_3.c, arg_3.c), _wgslsmith_f_op_f32(f32(-1f) * -398f))))), _wgslsmith_f_op_f32(select(arg_3.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.c * _wgslsmith_f_op_f32(min(-1433f, arg_3.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_3.c)))), !(arg_1 && arg_3.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d.b)), arg_2.a.c));
    let var_2 = Struct_2(u_input.c != arg_0.x, -771f, vec4<i32>(u_input.e, -u_input.b, -(-16267i >> (_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, 0u, 0u, var_0.x)) % 32u)), ~u_input.a.x), firstLeadingBit(u_input.a));
    let var_3 = ~arg_0.x;
    global0 = array<bool, 8>();
    return !(!(!(!select(vec2<bool>(false, arg_2.b.a), vec2<bool>(true, true), true))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = array<bool, 8>();
    global0 = array<bool, 8>();
    let var_0 = select(max(~((u_input.a.xxw << (u_input.d.ywx % vec3<u32>(32u))) & u_input.a.yxw), vec3<i32>(-1i) * -vec3<i32>(6414i, u_input.e, -5123i)), _wgslsmith_mult_vec3_i32(reverseBits(~vec3<i32>(u_input.a.x, -2147483647i, u_input.e) >> (vec3<u32>(u_input.d.x, 1u, u_input.c) % vec3<u32>(32u))), u_input.a.yww), true | global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(0u, 60201u), countOneBits(u_input.c)) << (0u % 32u), 8u)]);
    var var_1 = !(!select(select(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.d.x, 8u)]), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 8u)], false, true), any(vec3<bool>(true, arg_0, global0[_wgslsmith_index_u32(0u, 8u)]))), !select(vec3<bool>(false, arg_0, global0[_wgslsmith_index_u32(30472u, 8u)]), vec3<bool>(false, arg_0, global0[_wgslsmith_index_u32(u_input.d.x, 8u)]), false), any(vec4<bool>(arg_0, false, true, false))));
    let var_2 = Struct_1(select(var_1.xy, vec2<bool>(select(arg_0, var_1.x, all(vec3<bool>(false, var_1.x, false))), !(14838u < u_input.d.x)), var_1.xx), !(!select(vec3<bool>(arg_0, global0[_wgslsmith_index_u32(u_input.c, 8u)], arg_0), select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.d.x, 8u)]), vec3<bool>(var_1.x, true, true), vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 8u)], arg_0)), select(vec3<bool>(var_1.x, false, arg_0), vec3<bool>(false, arg_0, var_1.x), var_1.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(vec2<bool>(arg_0, true), vec3<bool>(arg_0, false, var_1.x), 1000f), u_input.a.zyx))) - 949f))));
    return Struct_1(select(!(!func_3(vec3<u32>(4294967295u, u_input.d.x, 1u), false, Struct_3(Struct_1(var_1.xx, vec3<bool>(false, false, var_2.b.x), -564f), Struct_2(arg_0, 670f, vec4<i32>(1i, -7704i, u_input.b, u_input.a.x), u_input.a), var_2, Struct_2(arg_0, var_2.c, u_input.a, u_input.a)), Struct_1(vec2<bool>(false, false), vec3<bool>(true, var_1.x, false), 552f))), select(!(!var_2.a), vec2<bool>(var_2.b.x, arg_0), select(select(vec2<bool>(var_2.b.x, true), vec2<bool>(true, var_1.x), var_2.b.zx), !var_2.b.zx, false)), !(!any(var_2.b))), var_2.b, -156f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 8>();
    global0 = array<bool, 8>();
    let var_0 = func_1(any(vec3<bool>(false, abs(0i) < -u_input.e, !(!global0[_wgslsmith_index_u32(u_input.c, 8u)]))));
    let var_1 = 1i;
    global0 = array<bool, 8>();
    let var_2 = 10444i;
    let var_3 = func_1(global0[_wgslsmith_index_u32(1u, 8u)]).a.x;
    var var_4 = Struct_3(func_1(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~u_input.c), abs(u_input.d.x)), 8u)]), Struct_2(global0[_wgslsmith_index_u32(127801u >> (u_input.d.x % 32u), 8u)], -377f, u_input.a ^ reverseBits(~u_input.a), _wgslsmith_mod_vec4_i32(select(-u_input.a, min(u_input.a, u_input.a), var_3), countOneBits(~vec4<i32>(var_2, var_2, -47958i, var_1)))), var_0, Struct_2(any(var_0.a) && true, _wgslsmith_f_op_f32(-964f * var_0.c), -countOneBits(~u_input.a), vec4<i32>(~_wgslsmith_add_i32(-31603i, 198i), _wgslsmith_mult_i32(-2147483647i & var_1, ~var_1), -_wgslsmith_dot_vec3_i32(u_input.a.xww, u_input.a.zxw), var_2)));
    var_4 = Struct_3(var_4.a, Struct_2(false, _wgslsmith_f_op_f32(ceil(var_0.c)), vec4<i32>(var_4.b.d.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(var_1, 1i), u_input.a.wx), reverseBits(_wgslsmith_dot_vec2_i32(u_input.a.yx, var_4.d.d.xy)), var_1), -_wgslsmith_add_vec4_i32(u_input.a, -vec4<i32>(-1i, u_input.e, 0i, u_input.b))), var_4.c, Struct_2(false, -1380f, ~(-_wgslsmith_clamp_vec4_i32(var_4.d.c, var_4.d.c, var_4.b.c)), vec4<i32>(var_2, _wgslsmith_sub_i32(53027i, var_4.b.c.x), _wgslsmith_mult_i32(1i, var_2), ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_2, u_input.b, -1i), u_input.a.yww))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(step(138f, 317f)), var_0.c), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-448f, var_0.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.d.b, 1000f) + vec2<f32>(685f, -1000f)))), !(true | global0[_wgslsmith_index_u32(11011u, 8u)]))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_0.c)))))));
}

