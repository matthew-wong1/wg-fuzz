struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(37868u);

var<private> global1: array<vec3<u32>, 12>;

var<private> global2: array<i32, 1> = array<i32, 1>(i32(-2147483648));

var<private> global3: Struct_1 = Struct_1(10412u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: u32) -> Struct_1 {
    global1 = array<vec3<u32>, 12>();
    return Struct_1(1u);
}

fn func_1() -> i32 {
    global1 = array<vec3<u32>, 12>();
    let var_0 = 0u;
    var var_1 = vec4<bool>(!(_wgslsmith_add_u32(var_0, ~1089u) == 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, -1159f)))) != _wgslsmith_div_f32(372f, _wgslsmith_f_op_f32(select(-984f, _wgslsmith_f_op_f32(ceil(-1144f)), true))), true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1000f)))) == 845f);
    var var_2 = func_2(vec2<u32>(global0.a, _wgslsmith_mult_u32(select(1u, 1u, var_1.x), select(global3.a, var_0, var_1.x)) ^ _wgslsmith_dot_vec4_u32(~u_input.a, vec4<u32>(1u, 82466u, global0.a, 2718u) >> (vec4<u32>(348u, global0.a, 1u, global3.a) % vec4<u32>(32u)))), ~(u_input.b & ((vec4<i32>(global2[_wgslsmith_index_u32(global3.a, 1u)], -35592i, 15119i, u_input.b.x) & u_input.b) | _wgslsmith_mod_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(global3.a, 1u)], global2[_wgslsmith_index_u32(var_0, 1u)], global2[_wgslsmith_index_u32(23570u, 1u)]), u_input.b))), 4294967295u);
    global1 = array<vec3<u32>, 12>();
    return -10456i;
}

fn func_3() -> vec2<i32> {
    global3 = Struct_1(~(~1u));
    global0 = Struct_1(_wgslsmith_clamp_u32(88132u, ~reverseBits(~8655u), ~(~37675u)));
    var var_0 = global3.a;
    global3 = func_2(countOneBits(_wgslsmith_div_vec2_u32(u_input.a.yy, u_input.a.zy)), vec4<i32>(34849i, ~(~(~1i)), _wgslsmith_div_i32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(select(global3.a, global3.a, false), _wgslsmith_mult_u32(13772u, global3.a)), 1u)], abs(6498i)), _wgslsmith_sub_i32(firstTrailingBit(-2147483647i), func_1())), 1u);
    let var_1 = u_input.b.zyy;
    return reverseBits(~var_1.xz);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 12>();
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(global0.a, _wgslsmith_mod_u32(abs(countOneBits(global3.a)), ~_wgslsmith_mult_u32(global0.a, global3.a)), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a.ywz, vec3<u32>(global0.a, 0u, 32466u)), vec3<u32>(global0.a, 37095u, 1u) | vec3<u32>(global0.a, global3.a, global0.a)), 0u)), ~_wgslsmith_sub_u32(_wgslsmith_div_u32(~global3.a, ~3578u), 5156u));
    var var_1 = _wgslsmith_div_vec3_i32(u_input.b.xwx, vec3<i32>(-1i, global2[_wgslsmith_index_u32(global3.a, 1u)], min(u_input.b.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.b.zy, u_input.b.yz), func_1()))));
    var var_2 = vec2<i32>(71502i, var_1.x);
    let var_3 = -477f;
    var_2 = func_3();
    var var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3, -1096f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_clamp_vec4_i32(u_input.b & u_input.b, ~u_input.b, _wgslsmith_mult_vec4_i32(u_input.b, u_input.b))), var_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)));
}

