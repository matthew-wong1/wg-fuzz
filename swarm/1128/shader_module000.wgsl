struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<bool>,
    d: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 7> = array<Struct_4, 7>(Struct_4(vec4<u32>(1u, 39973u, 97866u, 0u)), Struct_4(vec4<u32>(14233u, 1u, 1u, 32239u)), Struct_4(vec4<u32>(1u, 4294967295u, 21235u, 81754u)), Struct_4(vec4<u32>(4294967295u, 1u, 4000u, 4294967295u)), Struct_4(vec4<u32>(38034u, 34094u, 0u, 0u)), Struct_4(vec4<u32>(3420u, 26304u, 27855u, 4294967295u)), Struct_4(vec4<u32>(11271u, 4294967295u, 0u, 1u)));

var<private> global1: array<u32, 10> = array<u32, 10>(35598u, 4294967295u, 70458u, 0u, 4294967295u, 3135u, 7767u, 4294967295u, 1u, 21382u);

var<private> global2: array<f32, 3> = array<f32, 3>(-1115f, 1000f, -125f);

var<private> global3: Struct_2;

var<private> global4: array<Struct_2, 21>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_3) -> i32 {
    global1 = array<u32, 10>();
    return ~_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(-3283i, 2147483647i), select(arg_1.a.xz, vec2<i32>(-9185i, 2147483647i), true)), _wgslsmith_mult_i32(arg_1.a.x >> ((0u & arg_1.b.x) % 32u), ~arg_1.a.x));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: vec3<f32>, arg_3: Struct_2) -> i32 {
    global4 = array<Struct_2, 21>();
    global4 = array<Struct_2, 21>();
    global0 = array<Struct_4, 7>();
    global0 = array<Struct_4, 7>();
    var var_0 = arg_1.x;
    return _wgslsmith_add_i32(select(40014i, _wgslsmith_div_i32(firstLeadingBit(arg_1.x), _wgslsmith_mod_i32(i32(-1i) * -24425i, ~22198i)), -func_2(arg_3.c, Struct_3(vec4<i32>(arg_1.x, arg_1.x, arg_1.x, 0i), vec2<u32>(1u, global3.d), Struct_2(arg_3.a, arg_3.c.x, vec4<bool>(arg_3.c.x, arg_3.c.x, false, arg_3.b), global3.d))) == -2147483647i), arg_1.x);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec4<i32> {
    let var_0 = true;
    global4 = array<Struct_2, 21>();
    global0 = array<Struct_4, 7>();
    global1 = array<u32, 10>();
    let var_1 = global3.a;
    return -min(vec4<i32>(i32(-1i) * -8150i, -13655i, 1i, firstTrailingBit(0i)) ^ vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-2147483647i, -30978i << (u_input.a % 32u)), -2147483647i, _wgslsmith_sub_i32(50329i, -27335i) << (0u % 32u), func_1(1612f, firstLeadingBit(vec3<i32>(0i, 8304i, 2147483647i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(617f, 628f, 571f)), global4[_wgslsmith_index_u32(firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 10u)], 10u)]), 21u)])), func_3(Struct_2(Struct_1(global3.a.a), global3.c.x, !global3.c, 63916u << (u_input.a % 32u)), Struct_2(global3.a, global3.c.x, select(vec4<bool>(global3.b, global3.c.x, true, global3.c.x), vec4<bool>(false, true, global3.b, true), global3.b), global3.d))), min(~(select(vec2<u32>(global3.d, global3.d), vec2<u32>(global3.d, u_input.a), global3.b) << (vec2<u32>(global3.d, global1[_wgslsmith_index_u32(u_input.a, 10u)]) % vec2<u32>(32u))), vec2<u32>(firstTrailingBit(u_input.a), _wgslsmith_mod_u32(47718u, 1u)) ^ ~min(vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(global3.d, 10u)]), vec2<u32>(55336u, 35248u))), Struct_2(Struct_1(global2[_wgslsmith_index_u32(15598u, 3u)]), all(vec2<bool>(global3.d >= 7453u, global3.b | global3.c.x)), !global3.c, u_input.a));
    global2 = array<f32, 3>();
    var var_1 = reverseBits(4294967295u);
    var_0 = Struct_3(countOneBits(var_0.a), ~var_0.b, Struct_2(var_0.c.a, !var_0.c.c.x, global3.c, abs(~_wgslsmith_div_u32(u_input.a, 1u))));
    global3 = Struct_2(global3.a, var_0.c.c.x, !global3.c, 114293u);
    let var_2 = Struct_3(var_0.a, firstTrailingBit(max(var_0.b, abs(vec2<u32>(u_input.a, u_input.a)))), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(max(u_input.a, var_0.c.d), 43976u, var_0.b.x, ~0u)), ~abs(~vec4<u32>(1039u, var_0.b.x, 4294967295u, global3.d))), 21u)]);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec2<i32>(0i, 25086i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-604f, global2[_wgslsmith_index_u32(var_0.c.d, 3u)])))))))));
}

