struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: vec2<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<u32>(42893u, 1u, 46965u, 1u), -1217f, vec2<f32>(-1204f, -918f), true);

var<private> global1: array<u32, 7>;

var<private> global2: array<vec4<i32>, 27>;

var<private> global3: array<Struct_2, 30>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_1.zz;
    global2 = array<vec4<i32>, 27>();
    var var_1 = _wgslsmith_f_op_f32(-global0.b) == _wgslsmith_f_op_f32(exp2(global0.c.x));
    var var_2 = 31378i;
    var var_3 = global3[_wgslsmith_index_u32(~firstLeadingBit(~global0.a.x), 30u)];
    return Struct_1(u_input.e.x, _wgslsmith_sub_i32(abs(min(arg_0.b, _wgslsmith_mod_i32(-4007i, arg_0.a))), 76645i));
}

fn func_1() -> Struct_1 {
    global1 = array<u32, 7>();
    let var_0 = vec2<u32>(countOneBits(1u), ~countOneBits(u_input.a.x));
    global1 = array<u32, 7>();
    var var_1 = global2[_wgslsmith_index_u32(12728u, 27u)] << (abs(countOneBits(abs(~global0.a))) % vec4<u32>(32u));
    let var_2 = func_2(Struct_1(abs(u_input.e.x), u_input.d.x), !select(!(!vec4<bool>(global0.d, global0.d, global0.d, true)), select(!vec4<bool>(true, global0.d, true, global0.d), vec4<bool>(global0.d, global0.d, false, false), vec4<bool>(true, true, true, true)), global0.d), global3[_wgslsmith_index_u32(~firstTrailingBit(66063u), 30u)]);
    return Struct_1((~(var_2.a | 16913i) >> (27282u % 32u)) & 2147483647i, var_1.x);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    let var_0 = func_1();
    var var_1 = !global0.d;
    var_1 = !any(select(select(!vec3<bool>(false, true, arg_2.d), vec3<bool>(true, false, true), !arg_0), select(select(vec3<bool>(arg_2.d, false, arg_2.d), vec3<bool>(global0.d, arg_0, arg_2.d), vec3<bool>(false, arg_2.d, false)), vec3<bool>(arg_2.d, true, global0.d), !arg_2.d), vec3<bool>(true, true, true)));
    global3 = array<Struct_2, 30>();
    global2 = array<vec4<i32>, 27>();
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: f32) -> StorageBuffer {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_add_vec3_i32(reverseBits(abs(~u_input.d) << (~(~u_input.a) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(abs(u_input.d), min(vec3<i32>(_wgslsmith_add_i32(var_0.a, arg_0.a), -2147483647i, _wgslsmith_add_i32(-18862i, -27825i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-9414i, 29780i, -3911i), ~vec3<i32>(1i, u_input.e.x, var_0.b))), countOneBits(u_input.d)));
    let var_2 = var_0;
    var_1 = ~_wgslsmith_sub_vec3_i32(u_input.d, u_input.d);
    global2 = array<vec4<i32>, 27>();
    return StorageBuffer(vec2<u32>(17317u, ~22022u | u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_3(!(9724u >= (u_input.b & 4294967295u)), func_1(), global3[_wgslsmith_index_u32(4294967295u, 30u)]), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, _wgslsmith_sub_u32(4294967295u, _wgslsmith_sub_u32(7879u, 1696u))), _wgslsmith_mult_vec2_u32(select(~global0.a.zw, global0.a.yw | vec2<u32>(u_input.c, u_input.c), all(vec2<bool>(global0.d, true))), global0.a.yz)), global0.c.x);
}

