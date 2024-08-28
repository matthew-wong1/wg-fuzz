struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: array<bool, 2> = array<bool, 2>(false, false);

var<private> global2: array<vec3<f32>, 7>;

var<private> global3: Struct_1;

var<private> global4: Struct_3;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> u32 {
    let var_0 = global4.a;
    let var_1 = global4.a.b;
    var var_2 = global2[_wgslsmith_index_u32(44322u, 7u)];
    let var_3 = Struct_3(Struct_2(9619i, Struct_1(global4.a.b.a, ~(~var_0.b.b), var_1.c)));
    var var_4 = 4294967295u | ~var_3.a.b.c.x;
    return 1u ^ _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(global4.a.b.c.zwx, _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(var_3.a.b.c.yzx, vec3<u32>(1u, 4294967295u, var_3.a.b.c.x)), firstLeadingBit(vec3<u32>(var_1.c.x, var_1.c.x, 4294967295u)))), 52200u);
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<i32>) -> Struct_1 {
    global0 = global3.a;
    var var_0 = Struct_1(_wgslsmith_f_op_f32(abs(global4.a.b.a)), abs(vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(vec3<i32>(arg_2.x, 2147483647i, global4.a.a), vec3<i32>(-11979i, -2147483647i, global4.a.b.b.x))), _wgslsmith_mod_vec4_u32(u_input.d, ~(~global4.a.b.c) & _wgslsmith_div_vec4_u32(u_input.d, vec4<u32>(arg_1, 1u, arg_1, 1u))));
    let var_1 = select(vec2<i32>(-34795i, 1i), vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global3.b.x, -41179i, -1i, u_input.a) | vec4<i32>(-1i, 58004i, var_0.b.x, 2147483647i), -vec4<i32>(u_input.b, -2147483647i, global4.a.b.b.x, -1i))), vec2<bool>(true, global1[_wgslsmith_index_u32(func_2(), 2u)])) | vec2<i32>(_wgslsmith_sub_i32(global3.b.x, -_wgslsmith_sub_i32(2147483647i, 45501i)), ~var_0.b.x);
    var_0 = global4.a.b;
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global4.a.b.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, global3.a))))), _wgslsmith_mult_vec3_i32(~(~global3.b), -abs(global4.a.b.b)), global3.c);
    return global4.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1(vec3<u32>(global3.c.x, global3.c.x, abs(~4294967295u) >> (global3.c.x % 32u)), 1u, global4.a.b.b.zz);
    let var_0 = global4.a.b;
    let var_1 = global1[_wgslsmith_index_u32(var_0.c.x, 2u)];
    global3 = Struct_1(global4.a.b.a, _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(-global3.b, global3.b), _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(var_0.b, var_0.b), countOneBits(vec3<i32>(-3652i, u_input.a, var_0.b.x))), abs(vec3<i32>(u_input.b, global4.a.b.b.x, u_input.b))), func_1(~var_0.c.yxy, max(var_0.c.x, 14742u), var_0.b.yx).b >> (u_input.d.zzz % vec3<u32>(32u))), global3.c);
    global2 = array<vec3<f32>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(vec3<u32>(35317u, 1u, global4.a.b.c.x), vec3<u32>(firstTrailingBit(u_input.c << (84562u % 32u)), 4294967295u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.c, global4.a.b.c.x, 1u), _wgslsmith_sub_u32(4294967295u, var_0.c.x)))), -_wgslsmith_add_vec4_i32(abs(select(vec4<i32>(global3.b.x, global3.b.x, -18107i, 2147483647i), vec4<i32>(1i, -7256i, -2147483647i, 3831i), global1[_wgslsmith_index_u32(global3.c.x, 2u)])), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, var_0.b.x, global4.a.b.b.x, 89004i), vec4<i32>(-2147483647i, -1i, global3.b.x, -41488i))));
}

