struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26>;

var<private> global1: i32;

var<private> global2: Struct_3 = Struct_3(true, Struct_1(true), Struct_1(true), vec4<f32>(-2011f, 240f, 1370f, 169f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    global1 = -2045i ^ _wgslsmith_mult_i32(max(abs(1i), abs(firstTrailingBit(1i))), u_input.d);
    var var_0 = vec2<i32>(_wgslsmith_clamp_i32(41669i, -21653i, -32921i), abs(1i));
    var var_1 = Struct_2(Struct_1(!(global2.a & true)));
    var_0 = -(~select(_wgslsmith_add_vec2_i32(-vec2<i32>(-23508i, u_input.a), -vec2<i32>(var_0.x, 16900i)), abs(abs(vec2<i32>(-1i, 57256i))), any(vec2<bool>(true, true))));
    let var_2 = Struct_3(select(global2.a, all(vec2<bool>(var_1.a.a, global2.b.a)) && !all(vec4<bool>(false, false, var_1.a.a, true)), true), var_1.a, var_1.a, _wgslsmith_f_op_vec4_f32(global2.d - global2.d));
    return ~(~4294967295u);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: vec2<u32>) -> bool {
    global1 = _wgslsmith_sub_i32(~_wgslsmith_mod_i32(_wgslsmith_div_i32(2147483647i, u_input.d), u_input.d), u_input.d);
    global2 = Struct_3(global2.b.a, Struct_1(false), Struct_1(global2.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(arg_0))));
    let var_0 = ~abs(vec3<u32>(~0u, ~func_3(), u_input.c.x));
    global0 = array<u32, 26>();
    global1 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(i32(-1i) * -80297i, u_input.b), ~(vec2<i32>(0i, 18229i) << (u_input.c.xz % vec2<u32>(32u)))), abs(~vec2<i32>(u_input.d, 15313i) << (vec2<u32>(u_input.c.x, 9547u) % vec2<u32>(32u)))), vec2<i32>(37947i, 2147483647i << (~(90631u ^ var_0.x) % 32u)));
    return !arg_1.x;
}

fn func_4(arg_0: vec4<bool>) -> bool {
    let var_0 = Struct_2(global2.c);
    let var_1 = select(vec3<u32>(u_input.c.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(50487u, 4294967295u, u_input.c.x, 0u), ~vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.c.x)) ^ (~0u << (~u_input.c.x % 32u)), 26u)], abs(~min(4294967295u, 45605u))), ~_wgslsmith_clamp_vec3_u32(u_input.c, u_input.c | (vec3<u32>(global0[_wgslsmith_index_u32(35442u, 26u)], 1u, 39552u) | u_input.c), ~u_input.c), true);
    global1 = -1i;
    var var_2 = any(select(!arg_0.zy, vec2<bool>(true && var_0.a.a, any(!vec4<bool>(var_0.a.a, true, var_0.a.a, global2.a))), any(select(arg_0.wx, arg_0.zz, true)) | true));
    global1 = u_input.a;
    return select(true, false, all(!(!vec3<bool>(arg_0.x, global2.c.a, true))));
}

fn func_1(arg_0: vec4<i32>) -> vec4<bool> {
    global1 = _wgslsmith_sub_i32(400i, _wgslsmith_mod_i32(arg_0.x, abs(arg_0.x) >> (u_input.c.x % 32u))) << (1u % 32u);
    global1 = firstLeadingBit(0i);
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(global2.d.yyy, _wgslsmith_f_op_vec3_f32(-global2.d.xxw))));
    var var_1 = !(!(!vec3<bool>(!global2.c.a, global2.b.a, all(vec4<bool>(global2.c.a, false, true, global2.a)))));
    global1 = -2147483647i;
    return vec4<bool>(var_1.x, !(((var_0.x != global2.d.x) && true) && var_1.x), !func_4(vec4<bool>(any(var_1.yx), true, func_2(vec4<f32>(global2.d.x, 154f, var_0.x, var_0.x), vec3<bool>(var_1.x, false, true), vec2<u32>(u_input.c.x, global0[_wgslsmith_index_u32(4294967295u, 26u)])), false | global2.a)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!func_1(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 1i, u_input.b, 13576i), _wgslsmith_mult_vec4_i32(vec4<i32>(-32019i, 2147483647i, -56183i, u_input.b), vec4<i32>(u_input.a, u_input.b, u_input.a, -26394i)))), !(!vec4<bool>(true, global2.a, false || global2.a, global2.d.x > -1155f)), vec4<bool>(all(!func_1(vec4<i32>(-15948i, u_input.d, -2147483647i, -43496i)).wzy), func_4(select(vec4<bool>(false, true, global2.b.a, global2.b.a), !vec4<bool>(global2.b.a, false, global2.b.a, global2.a), any(vec4<bool>(global2.b.a, global2.a, global2.a, false)))), global2.b.a, u_input.b == (u_input.b & _wgslsmith_mult_i32(0i, u_input.d))));
    var var_1 = Struct_1(true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, u_input.c, ((0i ^ (u_input.d << (u_input.c.x % 32u))) << (~1u % 32u)) | u_input.a, (i32(-1i) * -_wgslsmith_add_i32(1i, u_input.b)) >> (_wgslsmith_mod_u32(func_3(), ~global0[_wgslsmith_index_u32(28049u, 26u)] | u_input.c.x) % 32u));
}

