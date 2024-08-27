struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 14>;

var<private> global1: array<vec2<bool>, 32> = array<vec2<bool>, 32>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global2: vec4<i32>;

var<private> global3: array<u32, 13> = array<u32, 13>(0u, 1u, 1u, 4294967295u, 19454u, 0u, 8966u, 4294967295u, 27852u, 0u, 4294967295u, 8351u, 0u);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: Struct_2) -> vec3<bool> {
    global1 = array<vec2<bool>, 32>();
    return select(vec3<bool>(!all(arg_1.c), true, false), !vec3<bool>(false, arg_1.d.a, all(select(arg_1.c, vec4<bool>(false, true, arg_3.a.a, false), vec4<bool>(arg_1.b.a.a, arg_1.e.x, false, arg_1.d.a)))), arg_1.e);
}

fn func_2() -> vec3<bool> {
    return vec3<bool>(all(vec2<bool>(false, true)), !(!(!all(vec4<bool>(true, false, true, false)))), !all(func_3(abs(vec4<u32>(1u, global3[_wgslsmith_index_u32(u_input.a, 13u)], 41060u, global3[_wgslsmith_index_u32(u_input.a, 13u)])), Struct_3(vec4<f32>(-724f, -2096f, 300f, 617f), Struct_2(Struct_1(false), vec3<f32>(-770f, 1525f, -1000f), Struct_1(true), vec3<f32>(873f, -532f, 1020f), Struct_1(false)), vec4<bool>(false, false, false, true), Struct_1(true), vec3<bool>(false, false, false)), vec3<u32>(global3[_wgslsmith_index_u32(u_input.a, 13u)], 0u, 45831u), Struct_2(Struct_1(true), vec3<f32>(1267f, 846f, -1000f), Struct_1(true), vec3<f32>(1512f, 1068f, -242f), Struct_1(true)))));
}

fn func_1() -> Struct_1 {
    global0 = array<vec2<i32>, 14>();
    let var_0 = true;
    let var_1 = any(select(select(global1[_wgslsmith_index_u32(10310u, 32u)], vec2<bool>(var_0, !var_0), global1[_wgslsmith_index_u32(0u, 32u)]), !(!(!global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(35748u, 13u)], 32u)])), var_0));
    var var_2 = countOneBits(~global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~u_input.a, 13u)], 14u)]);
    var var_3 = u_input.b;
    return Struct_1(any(func_2()));
}

fn func_4(arg_0: Struct_2) -> i32 {
    global1 = array<vec2<bool>, 32>();
    var var_0 = func_1();
    global0 = array<vec2<i32>, 14>();
    global1 = array<vec2<bool>, 32>();
    return global2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, u_input.a), global3[_wgslsmith_index_u32(u_input.a, 13u)])) | ~4294967295u;
    global2 = vec4<i32>(u_input.b, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(-min(vec4<i32>(-40953i, global2.x, global2.x, 0i), vec4<i32>(-2147483647i, -2147483647i, -1i, global2.x)), reverseBits(select(vec4<i32>(u_input.c, global2.x, -21929i, 2147483647i), vec4<i32>(1i, u_input.b, -26172i, u_input.b), true))), _wgslsmith_mod_i32(firstLeadingBit(-16849i ^ u_input.c), 0i)), func_4(Struct_2(func_1(), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1277f, 702f, 650f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(370f, -414f, -801f)))), func_1(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-464f, 1256f, 364f) + vec3<f32>(-676f, -1029f, 499f))), func_1())), u_input.c);
    global2 = select(vec4<i32>(-(~_wgslsmith_mult_i32(global2.x, 32127i)), global2.x, ~0i, -global2.x), firstLeadingBit(~vec4<i32>(-2147483647i, -31340i, ~global2.x, i32(-1i) * -2147483647i)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, 24191u < global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 13u)], 13u)], false), true), vec4<bool>(true, true, true & select(true, true, false), false | any(vec3<bool>(true, false, true))), false));
    let var_1 = 955f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(abs(-1000f)), var_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1039f)))))), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global2.x, -50452i, global2.x, 0i), vec4<i32>(29326i, global2.x, global2.x, -14554i), vec4<i32>(global2.x, global2.x, -19954i, -27711i)), -vec4<i32>(global2.x, u_input.b, -28667i, u_input.c)) << (((vec4<u32>(34186u, 288u, global3[_wgslsmith_index_u32(u_input.a, 13u)], u_input.a) << (vec4<u32>(u_input.a, 0u, 53307u, 87666u) % vec4<u32>(32u))) ^ _wgslsmith_add_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(u_input.a, 13u)], u_input.a, global3[_wgslsmith_index_u32(4294967295u, 13u)], u_input.a), vec4<u32>(u_input.a, global3[_wgslsmith_index_u32(u_input.a, 13u)], 30634u, 1u))) % vec4<u32>(32u)), -_wgslsmith_mult_vec4_i32(abs(vec4<i32>(1399i, 70301i, -1i, -42628i)), -vec4<i32>(-8883i, global2.x, u_input.c, global2.x))), firstTrailingBit(countOneBits(_wgslsmith_add_vec2_i32(-global0[_wgslsmith_index_u32(2155u, 14u)], firstLeadingBit(global2.yw)))), 886f, ~min(~vec2<u32>(26176u, global3[_wgslsmith_index_u32(17221u, 13u)]), ~vec2<u32>(global3[_wgslsmith_index_u32(17164u, 13u)], 4294967295u)) | _wgslsmith_mult_vec2_u32(countOneBits(min(vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 13u)], u_input.a), vec2<u32>(4294967295u, u_input.a))), _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(0u, u_input.a))));
}

