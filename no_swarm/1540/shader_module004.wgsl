struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1>;

var<private> global1: array<vec3<bool>, 30>;

var<private> global2: vec3<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: vec4<f32>) -> bool {
    var var_0 = Struct_1(!(true & all(arg_1)));
    var var_1 = Struct_2(!global1[_wgslsmith_index_u32(u_input.c.x, 30u)], Struct_1(all(vec4<bool>(false, -161f < arg_3.x, true, any(vec2<bool>(false, true))))), Struct_1(true), !(!all(global1[_wgslsmith_index_u32(33382u, 30u)])), u_input.a.x);
    let var_2 = select(vec3<bool>(any(!(!vec2<bool>(arg_1.x, arg_1.x))), !var_0.a, var_1.c.a || all(select(vec2<bool>(true, var_0.a), var_1.a.zy, arg_1.x))), vec3<bool>(all(vec2<bool>(false, arg_1.x)), all(select(vec2<bool>(var_0.a, arg_1.x), arg_1, false)), true), all(arg_1));
    global1 = array<vec3<bool>, 30>();
    global0 = array<i32, 1>();
    return true;
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_1) -> vec3<i32> {
    var var_0 = Struct_2(arg_1, arg_2, Struct_1(!func_3(_wgslsmith_f_op_f32(f32(-1f) * -794f), arg_1.xy, _wgslsmith_div_vec2_i32(u_input.a, u_input.b), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(745f, -2396f, 1000f, -352f))))), !(~_wgslsmith_div_u32(global2.x, global2.x) >= ~1u), firstTrailingBit(global0[_wgslsmith_index_u32(global2.x, 1u)]));
    var var_1 = _wgslsmith_f_op_f32(-652f + _wgslsmith_div_f32(-1717f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1053f - 1000f))))) > _wgslsmith_div_f32(1000f, -2502f);
    let var_2 = u_input.c.x;
    let var_3 = vec2<bool>(arg_0, arg_0);
    var_0 = Struct_2(!select(!select(var_0.a, arg_1, true), select(vec3<bool>(var_3.x, true, var_0.b.a), vec3<bool>(arg_0, true, var_3.x), 6691u != u_input.c.x), vec3<bool>(arg_1.x || false, all(vec2<bool>(false, var_3.x)), u_input.a.x != -19654i)), Struct_1(all(var_0.a.xz)), Struct_1(!all(!vec2<bool>(true, arg_1.x))), (27345u ^ ~u_input.c.x) >= var_2, var_0.e);
    return vec3<i32>(min(min(countOneBits(-u_input.a.x), u_input.a.x), 45761i), ~_wgslsmith_mult_i32(2147483647i, ~0i), -_wgslsmith_div_i32(firstTrailingBit(-u_input.b.x), abs(u_input.a.x)));
}

fn func_1() -> StorageBuffer {
    let var_0 = -1022f;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * var_0), 199f)), vec2<i32>(firstTrailingBit(~min(u_input.a.x, global0[_wgslsmith_index_u32(u_input.c.x, 1u)])), global0[_wgslsmith_index_u32(u_input.c.x, 1u)]), func_2(true, vec3<bool>(true, true, true), Struct_1(select(false, all(vec2<bool>(false, false)), true))), _wgslsmith_mod_vec2_i32(u_input.a & countOneBits(reverseBits(u_input.b)), _wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(-1i, 4338i)) | firstTrailingBit(vec2<i32>(u_input.b.x, 0i)), func_2(false, vec3<bool>(true, false, true), Struct_1(true)).yx, abs(u_input.b))), (vec4<i32>(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(global2.x, 1u)], 2147483647i), _wgslsmith_div_i32(global0[_wgslsmith_index_u32(52024u, 1u)], global0[_wgslsmith_index_u32(31976u, 1u)]), -2147483647i, max(33560i, 38060i)) & select(vec4<i32>(-1i, 19981i, -40855i, u_input.a.x), vec4<i32>(u_input.a.x, -33691i, 31933i, u_input.b.x), vec4<bool>(true, false, true, true))) >> (_wgslsmith_add_vec4_u32(countOneBits(u_input.c << (u_input.c % vec4<u32>(32u))), countOneBits(vec4<u32>(global2.x, global2.x, global2.x, 4294967295u))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~2147483647i;
    let var_1 = u_input.b;
    var var_2 = var_1.x;
    global2 = countOneBits(~vec3<u32>(u_input.c.x, ~(~u_input.c.x), 57u));
    var_2 = -32192i;
    var var_3 = _wgslsmith_f_op_f32(-347f + 403f);
    global2 = u_input.c.xyw >> (~vec3<u32>(_wgslsmith_mod_u32(countOneBits(70098u), u_input.c.x), ~select(u_input.c.x, u_input.c.x, false), ~4294967295u) % vec3<u32>(32u));
    var var_4 = true;
    let x = u_input.a;
    s_output = func_1();
}

