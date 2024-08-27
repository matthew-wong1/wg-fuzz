struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: f32,
    d: Struct_3,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_4,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-656f, -1000f, 239f);

var<private> global1: Struct_3;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: array<Struct_2, 29>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec4<u32>) -> f32 {
    return _wgslsmith_f_op_f32(f32(-1f) * -854f);
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> vec2<bool> {
    let var_0 = Struct_4(global1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -465f), _wgslsmith_f_op_f32(max(527f, -195f)), _wgslsmith_f_op_f32(min(global0.x, global0.x)), global0.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1476f, global0.x, global0.x, -873f), vec4<f32>(global0.x, -323f, -423f, global0.x), true)))))), -861f, Struct_3(global1.a));
    let var_1 = var_0.c > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - _wgslsmith_f_op_f32(func_3(global3[_wgslsmith_index_u32(arg_3, 29u)], global1.a.a.yw, vec4<u32>(41956u, 4294967295u, arg_0.x, 27413u)))))));
    let var_2 = var_0.d;
    let var_3 = arg_0;
    global2 = vec2<bool>(var_1, -(-var_2.a.a.x | 20033i) == _wgslsmith_add_i32(_wgslsmith_mod_i32(var_2.a.a.x, u_input.a), var_2.a.a.x));
    return !vec2<bool>(var_1 != false, true);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: bool, arg_3: Struct_4) -> i32 {
    let var_0 = u_input.d;
    var var_1 = select(!select(func_2(_wgslsmith_div_vec3_u32(u_input.d, var_0), var_0.x | 0u, Struct_1(arg_3.d.a.a), ~arg_1.x), !select(vec2<bool>(arg_2, global2.x), vec2<bool>(arg_2, false), vec2<bool>(false, arg_2)), true), vec2<bool>(arg_2, any(!select(vec4<bool>(global2.x, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(global2.x, arg_2, true, arg_2)))), func_2(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(89658u, 16420u, 1u, 1u), ~vec4<u32>(arg_1.x, u_input.d.x, 14670u, 4294967295u)), 5147u, u_input.b.x), _wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(var_0.x, 4294967295u, 35142u, u_input.b.x)), _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(arg_1.x, var_0.x, u_input.d.x, u_input.d.x)), ~vec4<u32>(var_0.x, 4294967295u, var_0.x, 0u))), Struct_1(vec4<i32>(-8303i, -2147483647i, 34210i, global1.a.a.x) & ~vec4<i32>(-11823i, global1.a.a.x, 16465i, -1i)), abs(49781u)));
    let var_2 = Struct_1(vec4<i32>(-67750i, arg_3.a.a.x, _wgslsmith_add_i32(-min(arg_3.d.a.a.x, 39709i), _wgslsmith_dot_vec3_i32(u_input.c, ~vec3<i32>(5780i, u_input.a, u_input.a))), arg_3.a.a.x | firstLeadingBit(-arg_3.a.a.x)));
    let var_3 = -max(global1.a.a.xw, _wgslsmith_mult_vec2_i32(arg_3.d.a.a.xz, vec2<i32>(1i, u_input.c.x)));
    global3 = array<Struct_2, 29>();
    return _wgslsmith_mult_i32(countOneBits(u_input.c.x), var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!global2.x);
    let var_1 = ~u_input.b.x;
    let var_2 = global1.a;
    var_0 = (var_2.a.x >= -_wgslsmith_mod_i32(-2147483647i, 1i)) | global2.x;
    var var_3 = abs(abs(global1.a.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, 30713u, vec2<f32>(2138f, global0.x), _wgslsmith_sub_vec4_i32(vec4<i32>(~var_2.a.x, func_1(vec2<f32>(global0.x, global0.x), u_input.b, global2.x, Struct_4(global1.a, vec4<f32>(global0.x, 772f, global0.x, global0.x), 927f, Struct_3(global1.a))), _wgslsmith_sub_i32(3212i, 14429i), _wgslsmith_div_i32(u_input.c.x, 0i)) ^ reverseBits(~var_2.a), reverseBits(select(select(var_2.a, var_2.a, vec4<bool>(true, false, global2.x, true)), ~vec4<i32>(25542i, var_2.a.x, global1.a.a.x, u_input.a), global2.x))));
}

