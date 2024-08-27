struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24> = array<bool, 24>(true, true, false, true, true, true, false, true, false, false, true, true, true, true, true, true, true, false, false, true, true, false, true, true);

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(-462f, vec4<u32>(0u, 35928u, 1u, 0u), vec2<i32>(-1i, 398i), true), Struct_1(1051f, vec4<u32>(39989u, 115094u, 34020u, 5195u), vec2<i32>(67860i, 2147483647i), false), Struct_1(1380f, vec4<u32>(17482u, 4294967295u, 8847u, 1u), vec2<i32>(-17331i, 31883i), false), Struct_1(1236f, vec4<u32>(123578u, 74772u, 1u, 4294967295u), vec2<i32>(1i, 0i), false), Struct_1(-608f, vec4<u32>(40567u, 0u, 125267u, 4294967295u), vec2<i32>(-1i, 1i), true), Struct_1(1138f, vec4<u32>(4253u, 1u, 37441u, 28703u), vec2<i32>(-1i, -15547i), true), Struct_1(-1697f, vec4<u32>(732u, 9090u, 14114u, 43091u), vec2<i32>(-35955i, -4562i), false), Struct_1(-1395f, vec4<u32>(70154u, 0u, 73087u, 15013u), vec2<i32>(-1i, 3165i), false), Struct_1(1000f, vec4<u32>(81570u, 4294967295u, 54975u, 59133u), vec2<i32>(i32(-2147483648), 66177i), true), Struct_1(-1122f, vec4<u32>(0u, 0u, 4294967295u, 18424u), vec2<i32>(-282i, 2147483647i), false));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>) -> vec3<bool> {
    var var_0 = Struct_1(global1.a, vec4<u32>(global1.b.x, 4294967295u, 93230u, ~global1.b.x), -vec2<i32>(0i, global1.c.x), !(u_input.d.x > u_input.d.x));
    let var_1 = -u_input.b.wwx;
    global0 = array<bool, 24>();
    let var_2 = !vec4<bool>(!global1.d, var_0.d, arg_0, arg_0);
    var var_3 = ~global1.b.xyw;
    return var_2.xzw;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(global1.a, abs(global1.b), select(abs(global1.c), countOneBits(~(-u_input.b.ww)), all(select(!vec3<bool>(false, global1.d, false), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 24u)], false, true), func_3(global1.d, vec2<u32>(u_input.d.x, u_input.d.x))))), true);
    let var_1 = global2[_wgslsmith_index_u32(min(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(global1.b.zw, abs(vec2<u32>(1u, 35592u))), 49030u), ~global1.b.x), 10u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), -2426f));
    var var_3 = var_1.b;
    var_0 = global2[_wgslsmith_index_u32(select(var_3.x, var_3.x, any(select(vec2<bool>(50402u <= var_1.b.x, true), !(!vec2<bool>(var_1.d, var_0.d)), any(select(vec2<bool>(true, global1.d), vec2<bool>(global1.d, var_1.d), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 24u)], true)))))), 10u)];
    return global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(~0u, var_1.b.x), 10u)];
}

fn func_1(arg_0: bool) -> bool {
    var var_0 = global1.a;
    var var_1 = func_2();
    var_1 = global2[_wgslsmith_index_u32(~firstLeadingBit(firstTrailingBit(~(1u | var_1.b.x))), 10u)];
    var_1 = Struct_1(1492f, vec4<u32>(_wgslsmith_mod_u32(~u_input.d.x, u_input.d.x ^ abs(1u)), 53191u, firstTrailingBit(~global1.b.x), 4294967295u), var_1.c, (true & any(vec3<bool>(arg_0, false, global0[_wgslsmith_index_u32(0u, 24u)]))) & false);
    let var_2 = abs(var_1.b.zyy);
    return func_2().d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -377f;
    let var_1 = select(_wgslsmith_add_u32(~global1.b.x, global1.b.x), _wgslsmith_div_u32(~u_input.d.x | _wgslsmith_add_u32(global1.b.x ^ 17707u, global1.b.x), ~_wgslsmith_add_u32(u_input.d.x, 32431u)), true);
    let var_2 = func_1(any(select(vec2<bool>(false, true), !select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 24u)], true), vec2<bool>(global1.d, global0[_wgslsmith_index_u32(global1.b.x, 24u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 24u)], false)), vec2<bool>(true, true))));
    var var_3 = func_2();
    var var_4 = _wgslsmith_mod_vec2_i32(var_3.c, ~(~(-_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, var_3.c.x), vec2<i32>(global1.c.x, 9181i)))));
    global0 = array<bool, 24>();
    let var_5 = -4055i;
    global2 = array<Struct_1, 10>();
    global1 = Struct_1(var_3.a, vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(u_input.d.x, var_1, 97062u), abs(u_input.d.x)), firstTrailingBit(~vec2<u32>(114250u, 17841u))), _wgslsmith_dot_vec4_u32(global1.b, firstTrailingBit(vec4<u32>(u_input.d.x, global1.b.x, 0u, 4804u)) << (var_3.b % vec4<u32>(32u))), max(_wgslsmith_sub_u32(global1.b.x, var_3.b.x), select(~var_1, 4294967295u, global0[_wgslsmith_index_u32(global1.b.x, 24u)] || false)), 0u & (_wgslsmith_clamp_u32(1u, 4294967295u, var_1) >> (0u % 32u))), firstTrailingBit(~_wgslsmith_add_vec2_i32(var_3.c, vec2<i32>(0i, 41390i))), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) * _wgslsmith_f_op_f32(-global1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a + _wgslsmith_f_op_f32(-1358f + global1.a))), -464f));
}

