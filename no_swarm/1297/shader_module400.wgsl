struct Struct_1 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: array<i32, 5>;

var<private> global2: array<i32, 31> = array<i32, 31>(i32(-2147483648), 6062i, 0i, 57334i, 2147483647i, 20044i, -48056i, 28738i, -18863i, -4798i, 2147483647i, 2147483647i, 0i, 2147483647i, -1i, -52316i, 2147483647i, 1i, -3774i, 2147483647i, 25845i, i32(-2147483648), 2261i, -63657i, 0i, -10112i, 7981i, i32(-2147483648), -1i, -1i, -2126i);

var<private> global3: Struct_1 = Struct_1(false, 0u);

var<private> global4: array<f32, 23> = array<f32, 23>(-3200f, -2361f, -1000f, -803f, 1606f, -757f, 1591f, -2025f, 815f, -471f, 2271f, -425f, 646f, 1554f, -424f, 2723f, 1000f, 533f, 193f, -743f, 326f, 1605f, -121f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> u32 {
    let var_0 = arg_0;
    global2 = array<i32, 31>();
    global2 = array<i32, 31>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(4294967295u, 23u)])))));
    var var_2 = global1[_wgslsmith_index_u32(1u, 5u)];
    return countOneBits(min(arg_0.b, _wgslsmith_mod_u32(abs(var_0.b), _wgslsmith_dot_vec4_u32(~vec4<u32>(global3.b, arg_0.b, 1u, 3194u), ~vec4<u32>(arg_0.b, 34308u, u_input.a.x, global3.b)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> u32 {
    let var_0 = Struct_1(global3.a, global3.b);
    global3 = Struct_1(true, func_2(global0[_wgslsmith_index_u32(countOneBits(6181u), 31u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(~84831u, 23u)]) - _wgslsmith_f_op_f32(min(-734f, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(4294967295u, 23u)]))))));
    global4 = array<f32, 23>();
    let var_1 = vec3<f32>(1432f, _wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(4294967295u, 23u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(u_input.c, 23u)], _wgslsmith_f_op_f32(trunc(-1902f))))));
    var var_2 = !(global3.b >= global3.b);
    return select(max(firstTrailingBit(14669u >> (arg_1.b % 32u)), firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.a.xy << (u_input.a.xz % vec2<u32>(32u)), select(u_input.a.zz, u_input.a.zy, vec2<bool>(true, true))))), _wgslsmith_mult_u32(_wgslsmith_sub_u32((var_0.b >> (arg_0.b % 32u)) | ~26353u, _wgslsmith_mult_u32(_wgslsmith_add_u32(108363u, var_0.b), firstTrailingBit(4294967295u))), ~global3.b), _wgslsmith_mult_i32(_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(~var_0.b, 31u)], 15599i), _wgslsmith_dot_vec2_i32(vec2<i32>(-19059i, -46840i) | vec2<i32>(global1[_wgslsmith_index_u32(0u, 5u)], 23911i), select(vec2<i32>(2773i, -2147483647i), vec2<i32>(global2[_wgslsmith_index_u32(u_input.b, 31u)], 29241i), vec2<bool>(true, false)))) <= u_input.d);
}

fn func_1() -> vec4<u32> {
    global4 = array<f32, 23>();
    global0 = array<Struct_1, 31>();
    var var_0 = u_input.a.xx;
    return vec4<u32>(var_0.x, func_2(global0[_wgslsmith_index_u32(~(global3.b ^ 41543u), 31u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global3.b, 23u)]))) & ~(~func_3(global0[_wgslsmith_index_u32(var_0.x, 31u)], global0[_wgslsmith_index_u32(global3.b, 31u)], 18056i)), 18119u ^ _wgslsmith_div_u32(~(u_input.c << (u_input.a.x % 32u)), 1u), 4294967295u | ~u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global3.b, 28654u, u_input.b, 1u), vec4<u32>(global3.b, 1u, u_input.a.x, global3.b)), vec4<u32>(u_input.c, u_input.c, 60930u, 95002u)) ^ min(~vec4<u32>(global3.b, global3.b, global3.b, u_input.b), func_1()), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, func_3(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], global0[_wgslsmith_index_u32(21589u, 31u)], 29626i), _wgslsmith_div_u32(93337u, 22336u), 1u), _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(global3.b, 22992u, u_input.b, 33251u)), abs(vec4<u32>(global3.b, 12901u, 29621u, 680u))))), ~(~firstLeadingBit(vec4<u32>(global3.b, 32662u, global3.b, u_input.b)) >> (~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 1u, 19462u, global3.b), vec4<u32>(global3.b, 4294967295u, 5488u, global3.b)) % vec4<u32>(32u)))), 31u)];
    global0 = array<Struct_1, 31>();
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(vec4<i32>(1i, global1[_wgslsmith_index_u32(21875u, 5u)], -2147483647i, 2147483647i), vec4<i32>(5124i, u_input.d, global1[_wgslsmith_index_u32(var_0.b, 5u)], 0i)), ~vec4<i32>(~15321i, 1i, -28402i & global2[_wgslsmith_index_u32(var_0.b, 31u)], _wgslsmith_add_i32(-13639i, 23846i))) >> (abs(min(1709u, ~_wgslsmith_add_u32(0u, 673u))) % 32u);
    let var_2 = -(~_wgslsmith_mod_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(85967u, 5u)] ^ -58668i, max(2147483647i, var_1), min(-22788i, -1i)), vec3<i32>(-39660i, global2[_wgslsmith_index_u32(1u, 31u)], _wgslsmith_clamp_i32(1i, 11042i, global2[_wgslsmith_index_u32(var_0.b, 31u)]))));
    let var_3 = global0[_wgslsmith_index_u32(22763u, 31u)];
    global0 = array<Struct_1, 31>();
    global1 = array<i32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(4294967295u, 23u)] - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(52404u, 23u)])), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(global3.b, 23u)], 394f)), _wgslsmith_f_op_f32(min(global4[_wgslsmith_index_u32(29477u, 23u)], 1000f)))))), global3.b, ~(u_input.a >> (_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.b, 7331u), vec3<u32>(var_0.b, global3.b, u_input.c)) % vec3<u32>(32u))), 52157u);
}

