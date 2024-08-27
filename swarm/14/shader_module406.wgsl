struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: i32;

var<private> global2: array<vec3<i32>, 1> = array<vec3<i32>, 1>(vec3<i32>(i32(-2147483648), 2147483647i, 0i));

var<private> global3: array<f32, 28>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32) -> vec4<i32> {
    var var_0 = arg_0.x;
    var var_1 = select(arg_0.x, arg_0.x, !(!(true && arg_0.x))) == ((~firstTrailingBit(4294967295u) >= u_input.b.x) && (true == !any(vec2<bool>(false, arg_0.x))));
    var var_2 = vec2<i32>(arg_1, select(abs(countOneBits(-2147483647i)), arg_1, true));
    let var_3 = 53459u << (1u % 32u);
    let var_4 = Struct_2(global0[_wgslsmith_index_u32(~var_3, 10u)]);
    return vec4<i32>(-(~61723i), arg_1, 10259i, arg_1);
}

fn func_2(arg_0: Struct_1) -> i32 {
    global1 = ~(~(i32(-1i) * -34883i));
    let var_0 = global0[_wgslsmith_index_u32(~u_input.b.x, 10u)];
    global1 = _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, abs(1i), 15030i, 1i) << (_wgslsmith_mult_vec4_u32(vec4<u32>(63315u, 4538u, u_input.a, u_input.b.x), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.b.x)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(~(~vec4<i32>(-2147483647i, 1i, 42498i, 0i)), select(func_3(vec3<bool>(true, false, true), 1i), -vec4<i32>(-2147483647i, -31255i, -799i, -2147483647i), 0u > u_input.b.x))), ~(vec4<i32>(-1i) * -(~vec4<i32>(-1i, 0i, 38666i, 1i))));
    var var_1 = 12851i;
    var var_2 = _wgslsmith_sub_vec4_i32(func_3(vec3<bool>(true, true, true), 0i), -func_3(vec3<bool>(false, true, true), ~(-1i))) << (~u_input.b % vec4<u32>(32u));
    return _wgslsmith_dot_vec2_i32(~var_2.yy, -var_2.wy);
}

fn func_1(arg_0: u32) -> u32 {
    global2 = array<vec3<i32>, 1>();
    global1 = ~(-_wgslsmith_div_i32(-11192i, _wgslsmith_add_i32(func_2(global0[_wgslsmith_index_u32(u_input.a, 10u)]), -2147483647i)));
    var var_0 = -min(_wgslsmith_mod_vec3_i32(~_wgslsmith_div_vec3_i32(global2[_wgslsmith_index_u32(1u, 1u)], vec3<i32>(64383i, 2147483647i, -10670i)), vec3<i32>(-69153i << (0u % 32u), 0i, 1i)), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(min(vec3<i32>(2147483647i, -1i, -1i), vec3<i32>(-31859i, 33953i, 5470i)), global2[_wgslsmith_index_u32(1u, 1u)]), countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-16315i, 0i, -5523i), global2[_wgslsmith_index_u32(46580u, 1u)]))));
    var var_1 = vec4<bool>(false, true, false, !((true == any(vec3<bool>(true, false, false))) & (_wgslsmith_f_op_f32(abs(625f)) == global3[_wgslsmith_index_u32(68103u, 28u)])));
    global2 = array<vec3<i32>, 1>();
    return _wgslsmith_mult_u32(~(~(~_wgslsmith_add_u32(32623u, 0u))), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_mod_i32(-1i, -8385i);
    var var_0 = ~(~(vec4<u32>(u_input.a, 1u, 1u, u_input.a) << (~vec4<u32>(0u, u_input.a, 29942u, 4294967295u) % vec4<u32>(32u)))) | _wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(reverseBits(countOneBits(27306u)), u_input.a, _wgslsmith_mult_u32(func_1(u_input.a), u_input.b.x ^ 4294967295u), ~(1u >> (u_input.a % 32u))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(102915u & u_input.b.x, 28u)], _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(9997u, 28u)] + global3[_wgslsmith_index_u32(64159u, 28u)]))))));
    global2 = array<vec3<i32>, 1>();
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.b.x, 37287u), 10u)];
    var var_2 = Struct_3(Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(u_input.b.ww, vec2<u32>(4294967295u, 29629u)), ~65601u), 10u)]));
    var_1 = global0[_wgslsmith_index_u32(18755u, 10u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(vec2<i32>(~(-1i), select(0i, 29393i, false)), firstLeadingBit(vec2<i32>(1i, 1i)), vec2<i32>(~0i, _wgslsmith_mult_i32(1i, 0i))) >> (max(min(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, u_input.a), vec2<u32>(u_input.b.x, var_0.x)), var_0.ww), (vec2<u32>(u_input.b.x, var_0.x) << (u_input.b.wz % vec2<u32>(32u))) | vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)));
}

