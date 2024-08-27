struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 7> = array<vec2<bool>, 7>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global1: Struct_2;

var<private> global2: array<vec4<u32>, 20>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: bool, arg_3: i32) -> Struct_2 {
    global2 = array<vec4<u32>, 20>();
    global2 = array<vec4<u32>, 20>();
    let var_0 = ~min(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, 50119u), global1.a.a) >> (~0u % 32u), 30189u), abs(global1.e.yz >> (global1.a.a.yz % vec2<u32>(32u))));
    var var_1 = Struct_2(global1.a, select(arg_0.xz, !(!(!vec2<bool>(arg_2, global1.b.x))), true), global1.c, arg_1.wy, global1.e);
    let var_2 = !var_1.b.x;
    return Struct_2(Struct_1(select(_wgslsmith_mod_vec3_u32(var_1.a.a, var_1.a.a), select(vec3<u32>(var_0.x, 18941u, 1u), var_1.a.a, vec3<bool>(var_1.b.x, var_1.b.x, true)), arg_0.x)), vec2<bool>(true, true), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(global1.c.x)), _wgslsmith_f_op_f32(abs(258f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(662f - global1.c.x) + _wgslsmith_f_op_f32(-var_1.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global1.c, vec4<f32>(global1.c.x, -970f, 1423f, var_1.c.x), vec4<bool>(global1.b.x, var_1.b.x, false, false)))))), vec2<i32>(arg_3, u_input.a ^ -arg_1.x), vec4<u32>(~4294967295u, ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(var_0.x, var_0.x), firstLeadingBit(global1.a.a.x)), _wgslsmith_mult_u32(u_input.b, _wgslsmith_add_u32(_wgslsmith_mult_u32(70979u, u_input.b), u_input.b)), _wgslsmith_add_u32(~(var_0.x ^ 0u), 25043u)));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec2<i32>) -> Struct_2 {
    global0 = array<vec2<bool>, 7>();
    var var_0 = Struct_3(global1.a, func_2(vec4<bool>(true, true, true, true), vec4<i32>(-2147483647i, -(i32(-1i) * -1i), firstTrailingBit(u_input.a), 1i), select(~global1.d.x, -34319i, all(vec4<bool>(arg_1, global1.b.x, true, arg_1))) >= _wgslsmith_add_i32(-u_input.a, 25668i), 1i));
    global2 = array<vec4<u32>, 20>();
    global0 = array<vec2<bool>, 7>();
    var var_1 = arg_1;
    return var_0.b;
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<f32>) -> u32 {
    let var_0 = vec4<u32>(abs(u_input.b) & ~firstTrailingBit(arg_2.a.x), 4294967295u, ~_wgslsmith_dot_vec4_u32(~arg_1.e, firstTrailingBit(vec4<u32>(4294967295u, 1u, 4294967295u, 0u))), ~78919u) >> (firstLeadingBit(global2[_wgslsmith_index_u32(0u & ~func_2(vec4<bool>(arg_1.b.x, global1.b.x, true, arg_1.b.x), vec4<i32>(-46896i, global1.d.x, 1i, 5323i), global1.b.x, u_input.a).a.a.x, 20u)]) % vec4<u32>(32u));
    var var_1 = global2[_wgslsmith_index_u32(var_0.x, 20u)];
    global0 = array<vec2<bool>, 7>();
    return 1140u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    global0 = array<vec2<bool>, 7>();
    var var_1 = ~vec4<u32>(0u, u_input.b << (u_input.b % 32u), abs(_wgslsmith_div_u32(12226u, 1u)), global1.e.x);
    let var_2 = Struct_2(Struct_1(global1.e.zxw), vec2<bool>(var_1.x < ~global1.e.x, false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(110f, _wgslsmith_f_op_f32(sign(global1.c.x)), _wgslsmith_f_op_f32(1234f + global1.c.x), -229f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.c - vec4<f32>(global1.c.x, 1409f, 840f, -191f)))))), ~(~(global1.d << (firstLeadingBit(vec2<u32>(global1.e.x, 1u)) % vec2<u32>(32u)))), ~(vec4<u32>(2399u, 46087u, 4294967295u, 4294967295u) | _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 29855u, 1u, u_input.b), global1.e)) & vec4<u32>(1u, 11802u, func_3(vec3<i32>(-1i, 24855i, u_input.a), func_1(global1.d.x, global1.b.x, global1.d), Struct_1(vec3<u32>(global1.a.a.x, global1.a.a.x, 1u)), _wgslsmith_f_op_vec4_f32(-global1.c)), ~countOneBits(72537u)));
    global2 = array<vec4<u32>, 20>();
    global0 = array<vec2<bool>, 7>();
    global0 = array<vec2<bool>, 7>();
    let var_3 = select(vec3<bool>(func_1(_wgslsmith_div_i32(-2623i << (u_input.b % 32u), -14166i), _wgslsmith_div_f32(global1.c.x, var_2.c.x) != _wgslsmith_f_op_f32(var_2.c.x + -1631f), vec2<i32>(-8874i, u_input.a) >> (~global1.e.wx % vec2<u32>(32u))).b.x, true & (_wgslsmith_div_i32(2147483647i, 44763i) > min(u_input.a, var_2.d.x)), true), !vec3<bool>(!func_1(var_2.d.x, global1.b.x, vec2<i32>(var_2.d.x, 2147483647i)).b.x, var_2.b.x, false), func_1(~(-42112i), var_2.b.x, vec2<i32>(-_wgslsmith_sub_i32(global1.d.x, var_2.d.x), global1.d.x)).b.x);
    global1 = func_1(2147483647i, !var_3.x, vec2<i32>(var_2.d.x, var_2.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(-abs(_wgslsmith_div_vec4_i32(~vec4<i32>(2147483647i, 1i, var_2.d.x, u_input.a), -vec4<i32>(global1.d.x, 15877i, var_2.d.x, 2147483647i))), vec4<i32>(~(i32(-1i) * -u_input.a), 1i, func_1(u_input.a, global1.b.x, _wgslsmith_add_vec2_i32(vec2<i32>(-37919i, -2147483647i) << (global1.e.wx % vec2<u32>(32u)), min(vec2<i32>(u_input.a, 30411i), vec2<i32>(-2147483647i, 15293i)))).d.x, ~(-25238i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-467f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x))) - -1351f), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.c.x))), func_1(max(-2147483647i, u_input.a), true, var_2.d).c.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(func_2(vec4<bool>(global1.b.x, true, false, true), vec4<i32>(global1.d.x, 29911i, 2147483647i, -29532i), false, global1.d.x).c.zw)) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1877f, 1867f))))))));
}

