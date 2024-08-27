struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec2<i32>,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

var<private> global1: array<vec2<u32>, 22>;

var<private> global2: array<vec3<bool>, 27>;

var<private> global3: array<u32, 20>;

var<private> global4: array<Struct_2, 6>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec4<u32> {
    global3 = array<u32, 20>();
    var var_0 = arg_0;
    global0 = !global2[_wgslsmith_index_u32(0u, 27u)];
    global4 = array<Struct_2, 6>();
    return vec4<u32>(global3[_wgslsmith_index_u32(1u, 20u)] >> (max(_wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(984u, 20u)], 20u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(6858u, 20u)], 20u)], 20u)], global3[_wgslsmith_index_u32(4294967295u, 20u)], global3[_wgslsmith_index_u32(38385u, 20u)]), vec4<u32>(37213u, 75406u, global3[_wgslsmith_index_u32(1u, 20u)], 4294967295u)), global3[_wgslsmith_index_u32(4294967295u, 20u)]) % 32u), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(31591u, 20u)], 20u)]), ~(~31980u)), 20u)], 20u)], 95086u, 15842u) >> (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, ~(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 20u)], 20u)]), global3[_wgslsmith_index_u32(48361u, 20u)], 40088u), ~vec4<u32>(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(1u, 20u)], 20u)], ~global3[_wgslsmith_index_u32(116333u, 20u)], reverseBits(0u), 64038u)) % vec4<u32>(32u));
}

fn func_2(arg_0: f32) -> vec2<f32> {
    var var_0 = ~(min(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, -56266i, 2147483647i) ^ vec4<i32>(17051i, u_input.b, u_input.a.x, -680i)), vec4<i32>(u_input.b, 2147483647i, abs(0i), ~u_input.b)) >> (_wgslsmith_mod_vec4_u32(func_3(Struct_1(global0.xz, arg_0, vec2<i32>(21752i, -15338i), vec3<f32>(arg_0, -2950f, -1599f), false), _wgslsmith_mod_i32(u_input.b, u_input.a.x)), ~reverseBits(vec4<u32>(73061u, 0u, global3[_wgslsmith_index_u32(46873u, 20u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(59829u, 20u)], 20u)]))) % vec4<u32>(32u)));
    let var_1 = global4[_wgslsmith_index_u32(max(90467u, firstTrailingBit(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], 20u)] << (~1u % 32u)) >> (1u % 32u)), 6u)];
    global3 = array<u32, 20>();
    var var_2 = true;
    var var_3 = ~vec3<u32>(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(52152u, 20u)], global3[_wgslsmith_index_u32(1u, 20u)], 1u), vec3<u32>(4294967295u, 0u, 2814u), vec3<u32>(108533u, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(32400u, 20u)], 20u)])), vec3<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 20u)], 20u)], 20u)], 20u)], 20u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(2552u, 20u)], 20u)]) & vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 20u)], 50150u, global3[_wgslsmith_index_u32(0u, 20u)])), 20u)], 4580u), ~(~52705u), global3[_wgslsmith_index_u32(1u, 20u)]);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))))));
}

fn func_1() -> vec3<bool> {
    global4 = array<Struct_2, 6>();
    var var_0 = global0.x;
    global0 = vec3<bool>(true, true, !(!all(vec2<bool>(true, false))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1608f, -268f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1467f, -200f) - vec2<f32>(-835f, -954f)))), _wgslsmith_f_op_vec2_f32(func_2(-366f))));
    global1 = array<vec2<u32>, 22>();
    return select(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~1u, 20u)], 27u)], vec3<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-757f, -1699f))) > _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_f32(-var_1.x))).x, any(!vec3<bool>(global0.x, global0.x, global0.x)), any(select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, true), global0.yz))), global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(u_input.a, ~vec2<i32>(u_input.a.x, ~u_input.b), select(all(vec3<bool>(false, false, global0.x)) & all(vec2<bool>(global0.x, true)), global0.x, false));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1560f * _wgslsmith_f_op_f32(floor(-1552f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1019f)))), true)) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -904f))))));
    global4 = array<Struct_2, 6>();
    global4 = array<Struct_2, 6>();
    global0 = select(vec3<bool>(true, all(vec4<bool>(false, !var_1, select(false, var_1, global0.x), true)), global0.x), func_1(), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 20u)], 27u)]);
    global0 = func_1();
    global1 = array<vec2<u32>, 22>();
    global0 = vec3<bool>(min(u_input.b, reverseBits(countOneBits(u_input.a.x))) >= 59521i, true, false);
    let var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec4_i32(select(firstLeadingBit(vec4<i32>(35173i, u_input.b, u_input.b, 1996i)), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, u_input.b, u_input.a.x, u_input.a.x), vec4<i32>(-1i, 25371i, -1628i, -42507i)), !vec4<bool>(var_1, var_2.x, false, false)), countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, var_0.x, 9528i, u_input.a.x), vec4<i32>(u_input.b, u_input.a.x, var_0.x, 1i)))), _wgslsmith_mod_vec4_i32(~(~(-vec4<i32>(var_0.x, u_input.a.x, u_input.a.x, var_0.x))), select(min(-vec4<i32>(2147483647i, 2147483647i, 30198i, u_input.a.x), vec4<i32>(2147483647i, u_input.b, var_0.x, 0i) | vec4<i32>(1i, 34349i, var_0.x, var_0.x)), vec4<i32>(-2147483647i, -1i, _wgslsmith_add_i32(var_0.x, u_input.a.x), _wgslsmith_add_i32(var_0.x, var_0.x)), true)), ~select(~(~1u), ~_wgslsmith_div_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(83035u, 20u)], 20u)], 20u)], 23207u), true), 82397u);
}

