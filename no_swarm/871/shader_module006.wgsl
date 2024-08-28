struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<i32, 14>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: i32, arg_3: bool) -> vec3<f32> {
    global1 = array<i32, 14>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a.a.a.a * _wgslsmith_f_op_vec3_f32(-global0.a.a.a.a)) * global0.a.a.a.a))));
}

fn func_1() -> Struct_1 {
    let var_0 = -2147483647i;
    var var_1 = global0.a.a.a;
    global1 = array<i32, 14>();
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(func_2(~(-vec2<i32>(var_0, var_0)), global0.a.a.b.xxw, global1[_wgslsmith_index_u32(~abs(u_input.b.x), 14u)], (var_1.a.x >= var_1.a.x) & true)), true), vec4<bool>(false, false, true, true));
    let var_3 = global0.a.a;
    return var_2.a;
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = vec3<u32>(1u, firstLeadingBit(1u), 4221u);
    let var_1 = _wgslsmith_f_op_vec2_f32(arg_0.a.xy * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1630f)) + -795f) * global0.a.a.a.a.x), 1372f));
    var_0 = ~_wgslsmith_mod_vec3_u32(vec3<u32>(0u | _wgslsmith_mod_u32(u_input.a.x, 24156u), ~(var_0.x >> (var_0.x % 32u)), ~(~20743u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 0u, u_input.a.x), ~vec3<u32>(43217u, 6593u, 1u)) >> (~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 1u, 4294967295u), vec3<u32>(0u, 0u, u_input.b.x), vec3<u32>(0u, var_0.x, u_input.b.x)) % vec3<u32>(32u)));
    var var_2 = select(all(select(select(vec4<bool>(false, false, global0.a.a.b.x, arg_0.b), global0.a.a.b, vec4<bool>(true, arg_0.b, global0.a.d, global0.a.a.b.x)), !(!vec4<bool>(true, arg_0.b, true, global0.a.a.a.b)), select(global0.a.a.b, !global0.a.a.b, !global0.a.a.b.x))), any(global0.a.a.b), all(!(!global0.a.a.b.yzw)));
    global1 = array<i32, 14>();
    return firstTrailingBit(vec3<i32>(global1[_wgslsmith_index_u32(~u_input.b.x, 14u)], ~_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(73892i, global0.a.c, global0.a.c)), select(vec3<i32>(global0.a.c, global1[_wgslsmith_index_u32(0u, 14u)], -2147483647i), vec3<i32>(global1[_wgslsmith_index_u32(69775u, 14u)], global1[_wgslsmith_index_u32(9923u, 14u)], global1[_wgslsmith_index_u32(24567u, 14u)]), global0.a.a.b.xzw)), -1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -22525i;
    var var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(var_0, -2147483647i), _wgslsmith_mult_i32(-554i, -global1[_wgslsmith_index_u32(u_input.b.x, 14u)]), _wgslsmith_mult_i32(firstTrailingBit(29936i), firstTrailingBit(global0.a.b) & -var_0)), -firstLeadingBit(func_3(func_1())));
    global0 = Struct_4(global0.a);
    global0 = Struct_4(global0.a);
    var_1 = ~vec3<i32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~4294967295u, 4294967295u), 14u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 0u) << (vec3<u32>(44316u, 1u, 24607u) % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(5933u, 1182u, u_input.a.x))) << ((~u_input.b.x ^ reverseBits(u_input.a.x)) % 32u), 14u)], _wgslsmith_dot_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, global0.a.b, var_0), vec3<i32>(-6023i, var_1.x, global0.a.b)), vec3<i32>(firstLeadingBit(global0.a.b), -2147483647i, _wgslsmith_dot_vec2_i32(var_1.zy, var_1.zx))));
    let var_2 = Struct_4(global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global0.a.a.a.a, global0.a.a.a.a)), global0.a.a.a.a) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-176f, -1295f, global0.a.a.a.a.x))), vec3<f32>(_wgslsmith_f_op_f32(639f * var_2.a.a.a.a.x), var_2.a.a.a.a.x, -2003f)), min(1i << (u_input.a.x % 32u), _wgslsmith_mult_i32(global0.a.b, _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, u_input.a.x, 1u), 14u)], _wgslsmith_add_i32(var_0, global0.a.b)))), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a.x & u_input.a.x, ~u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.b.x, 11325u), vec3<u32>(0u, u_input.a.x, 4294967295u))), countOneBits(firstTrailingBit(vec3<u32>(u_input.b.x, 57285u, u_input.b.x)))), func_1().a);
}

