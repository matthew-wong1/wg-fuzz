struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec2<u32>,
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

var<private> global0: array<vec3<u32>, 20>;

var<private> global1: u32 = 5653u;

var<private> global2: array<u32, 28>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec3<bool>) -> vec2<bool> {
    var var_0 = ~_wgslsmith_add_vec4_u32(~(~firstLeadingBit(vec4<u32>(u_input.e.x, 8741u, u_input.d.x, u_input.d.x))), select(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, 20063u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 28u)]), vec4<u32>(u_input.a, 4294967295u, 1u, 9839u)), ~vec4<u32>(u_input.a, 4294967295u, 4803u, u_input.d.x) << ((vec4<u32>(u_input.a, 4294967295u, 57580u, 26421u) << (vec4<u32>(global2[_wgslsmith_index_u32(1u, 28u)], u_input.a, global2[_wgslsmith_index_u32(3142u, 28u)], 0u) % vec4<u32>(32u))) % vec4<u32>(32u)), any(select(arg_1, arg_1, false))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -337f));
    let var_2 = _wgslsmith_clamp_vec3_i32(~max(min(u_input.c.zyz & u_input.b, _wgslsmith_sub_vec3_i32(u_input.b, u_input.b)), u_input.b), u_input.c.yyw, _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.c.x, 0i, u_input.b.x) | abs(~vec3<i32>(u_input.b.x, 8222i, -1i)), -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<i32>(2147483647i, u_input.c.x, 1i))));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-var_1.a), countOneBits(global2[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(118351u)), 28u)]), Struct_1(_wgslsmith_f_op_f32(sign(var_1.a))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1445f * -530f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_1.a)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-489f))));
    var var_4 = Struct_2(-326f, ~firstLeadingBit(11162u), Struct_1(_wgslsmith_f_op_f32(select(var_3.a, 1410f, !all(vec2<bool>(arg_1.x, true))))), Struct_1(_wgslsmith_f_op_f32(round(var_1.a))), _wgslsmith_div_f32(1576f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(2144f)))))));
    return select(!(!vec2<bool>(!arg_1.x, any(vec3<bool>(false, true, arg_1.x)))), select(arg_1.yz, vec2<bool>(true, false), true), true);
}

fn func_2() -> Struct_1 {
    let var_0 = !any(vec3<bool>(!(global2[_wgslsmith_index_u32(4546u, 28u)] <= global2[_wgslsmith_index_u32(1u, 28u)]), true, all(func_3(false, vec3<bool>(true, true, false)))));
    let var_1 = _wgslsmith_div_f32(-1485f, 1000f);
    global0 = array<vec3<u32>, 20>();
    let var_2 = _wgslsmith_f_op_f32(-var_1);
    let var_3 = Struct_2(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(sign(1000f))), ~_wgslsmith_sub_u32(39181u, _wgslsmith_clamp_u32(72117u << (global2[_wgslsmith_index_u32(28771u, 28u)] % 32u), max(19575u, u_input.a), select(u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.e.x, 28u)], 28u)], false))), Struct_1(var_1), Struct_1(var_1), 1165f);
    return Struct_1(271f);
}

fn func_1() -> Struct_1 {
    let var_0 = vec4<i32>(54803i, -_wgslsmith_clamp_i32(4483i, -reverseBits(0i), -3359i), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(u_input.c >> (vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(49069u, 28u)], 28u)], 28u)], 4294967295u, u_input.d.x, 1u) % vec4<u32>(32u)), ~u_input.c), vec4<i32>(-42445i, firstTrailingBit(u_input.c.x), u_input.c.x, u_input.c.x)), u_input.c.x), u_input.c.x >> (_wgslsmith_mult_u32(reverseBits(u_input.a), countOneBits(~4294967295u)) % 32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(469f, -558f, -1071f, 1000f) + vec4<f32>(-911f, 280f, -1509f, -980f)))))));
    var var_2 = true;
    let var_3 = func_2();
    let var_4 = select(all(vec2<bool>(true, true)), 2147483647i >= abs(~(~var_0.x)), true);
    return Struct_1(1f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    let var_1 = func_1();
    let var_2 = vec4<u32>(4294967295u, u_input.e.x, firstLeadingBit(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 28u)], u_input.a, 0u)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 1u, global2[_wgslsmith_index_u32(44827u, 28u)]), vec4<u32>(32429u, u_input.a, 64569u, global2[_wgslsmith_index_u32(61894u, 28u)])), 20u)])), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, global2[_wgslsmith_index_u32(0u, 28u)]), global0[_wgslsmith_index_u32(11398u, 20u)])), 1u), 4294967295u), 28u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-478f, 1760f, -1453f))));
}

