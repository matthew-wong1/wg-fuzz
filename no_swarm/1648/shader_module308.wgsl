struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: f32,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26>;

var<private> global1: u32;

var<private> global2: f32 = -1575f;

var<private> global3: Struct_2;

var<private> global4: u32 = 15964u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: vec2<bool>) -> vec2<u32> {
    global0 = array<f32, 26>();
    return ~u_input.a.yx;
}

fn func_3() -> vec2<i32> {
    global1 = select(u_input.a.x, 4294967295u, ((-global3.a.x <= max(global3.a.x, -43821i)) || select(true, true, true)) && true);
    var var_0 = 4294967295u;
    let var_1 = Struct_3(Struct_2(~vec2<i32>(-1i, i32(-1i) * -1i)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~41255u, 26u)] * _wgslsmith_f_op_f32(-180f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(u_input.a.x, 26u)])), _wgslsmith_f_op_f32(f32(-1f) * -419f)))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~27643u), ~u_input.b), 26u)]);
    var var_2 = Struct_1(global3.a.x);
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -119f) * _wgslsmith_div_f32(-155f, -634f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, var_1.c), vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], 1109f))) - _wgslsmith_div_vec2_f32(vec2<f32>(var_1.c, global0[_wgslsmith_index_u32(u_input.b, 26u)]), vec2<f32>(var_1.b, global0[_wgslsmith_index_u32(0u, 26u)])))));
    return var_1.a.a;
}

fn func_1() -> Struct_1 {
    let var_0 = (_wgslsmith_clamp_vec2_u32(u_input.a.yy, ~u_input.a.yy, vec2<u32>(u_input.b, 126403u) << (~vec2<u32>(53433u, 3216u) % vec2<u32>(32u))) ^ (u_input.a.zx << (~(~vec2<u32>(u_input.b, 1u)) % vec2<u32>(32u)))) | _wgslsmith_sub_vec2_u32(u_input.a.xx, ~(vec2<u32>(u_input.b, u_input.b) | func_2(u_input.a, vec2<u32>(1u, 1u), vec2<bool>(true, true))));
    global3 = Struct_2(func_3());
    global2 = -487f;
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1u, 26u)], 636f, global0[_wgslsmith_index_u32(3069u, 26u)], -755f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 26u)], 1000f, 247f, -1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], _wgslsmith_f_op_f32(-874f * global0[_wgslsmith_index_u32(1u, 26u)]), -1227f, -1052f))))));
    var var_2 = Struct_2(global3.a);
    return Struct_1(-2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global2 = global0[_wgslsmith_index_u32(abs(66400u), 26u)];
    var var_1 = _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 1i, var_0.a, var_0.a), vec4<i32>(global3.a.x, var_0.a, 1i, 0i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 1i, var_0.a, 2002i), vec4<i32>(-2147483647i, 35065i, var_0.a, var_0.a))), -reverseBits(vec4<i32>(-2147483647i, global3.a.x, var_0.a, global3.a.x)), max(vec4<i32>(1i, global3.a.x, -9651i, -31379i), abs(vec4<i32>(global3.a.x, -2147483647i, 0i, global3.a.x)))) & _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(var_0.a, -1i, 3903i, -10764i), _wgslsmith_add_vec4_i32(vec4<i32>(22120i, global3.a.x, 2147483647i, -12166i), vec4<i32>(7261i, 2147483647i, global3.a.x, global3.a.x)), countOneBits(vec4<i32>(-2147483647i, 0i, 38586i, global3.a.x))), min(vec4<i32>(global3.a.x, -2147483647i, -14446i, 2147483647i), vec4<i32>(var_0.a, global3.a.x, var_0.a, 3136i)) << ((vec4<u32>(u_input.a.x, u_input.b, 51924u, 37242u) & vec4<u32>(135781u, u_input.a.x, 8161u, u_input.a.x)) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(~abs(abs(vec4<i32>(1i, var_0.a, 73447i, var_0.a))), reverseBits(_wgslsmith_add_vec4_i32(select(vec4<i32>(var_0.a, -39792i, global3.a.x, global3.a.x), vec4<i32>(var_0.a, -1i, global3.a.x, -2147483647i), true), vec4<i32>(global3.a.x, global3.a.x, 2147483647i, -18312i)))));
    global4 = u_input.a.x;
    global1 = ~_wgslsmith_mod_u32(u_input.a.x, ~0u);
    global1 = _wgslsmith_dot_vec4_u32(countOneBits(firstTrailingBit(vec4<u32>(u_input.b, 1u, u_input.b, 4294967295u))), ~(~vec4<u32>(u_input.b, 0u, 59050u, u_input.b))) & (u_input.b & _wgslsmith_sub_u32(u_input.a.x, u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_1.x, firstTrailingBit(firstLeadingBit(select(0i, global3.a.x, true))), -11535i, i32(-1i) * -2147483647i), -var_1.x);
}

