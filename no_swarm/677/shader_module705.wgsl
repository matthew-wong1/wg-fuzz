struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec3<i32>,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(31037u, 1u, 1u, 0u, 1u, 4294967295u, 357u, 51713u, 33211u, 108999u, 23119u, 1u, 131596u, 1u, 1u, 1494u, 4294967295u, 18049u, 4294967295u, 1u, 5326u, 0u, 1u, 28001u);

var<private> global1: vec4<i32> = vec4<i32>(2147483647i, -15645i, 13231i, -1i);

var<private> global2: array<Struct_2, 28>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_5) -> vec4<i32> {
    global0 = array<u32, 24>();
    global1 = select(vec4<i32>(firstTrailingBit(13077i) | ~_wgslsmith_div_i32(15560i, -9970i), u_input.a, u_input.a, u_input.a), _wgslsmith_sub_vec4_i32(-(firstTrailingBit(vec4<i32>(global1.x, global1.x, 31573i, 1i)) & reverseBits(vec4<i32>(-2147483647i, -5415i, u_input.a, 47504i))), ~select(vec4<i32>(u_input.a, 2147483647i, global1.x, 11094i) << (vec4<u32>(arg_1.a.x, global0[_wgslsmith_index_u32(32014u, 24u)], global0[_wgslsmith_index_u32(arg_1.a.x, 24u)], 0u) % vec4<u32>(32u)), ~vec4<i32>(-31435i, 1i, 31000i, 28816i), vec4<bool>(true, false, true, true))), true);
    let var_0 = 0u;
    global0 = array<u32, 24>();
    let var_1 = Struct_5(~(~vec4<u32>(min(52474u, global0[_wgslsmith_index_u32(var_0, 24u)]), 48917u, _wgslsmith_dot_vec4_u32(arg_1.a, vec4<u32>(var_0, var_0, 53871u, arg_1.a.x)), select(1u, var_0, false))));
    return vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(global1.x | u_input.a, abs(u_input.a)), _wgslsmith_mult_vec2_i32(~vec2<i32>(global1.x, -10758i), firstTrailingBit(vec2<i32>(2147483647i, global1.x)))), countOneBits(~global1.x), u_input.a, u_input.a);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_4, arg_3: vec4<u32>) -> f32 {
    global0 = array<u32, 24>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a, 1330f)) + -1000f));
    global1 = _wgslsmith_add_vec4_i32(~vec4<i32>(17091i, 4978i, -(global1.x >> (arg_2.a % 32u)), global1.x), reverseBits(-(vec4<i32>(u_input.a, arg_0.x, global1.x, arg_2.c.x) | vec4<i32>(u_input.a, u_input.a, 1447i, u_input.a)) & min(func_3(var_0.a, Struct_5(arg_3)), vec4<i32>(arg_0.x, arg_2.c.x, -23009i, -3742i) >> (arg_3 % vec4<u32>(32u)))));
    var var_1 = abs(~(i32(-1i) * -1i));
    global0 = array<u32, 24>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a));
}

fn func_1(arg_0: Struct_3, arg_1: bool) -> vec3<bool> {
    let var_0 = !(((~global1.x == ~u_input.a) & (all(vec4<bool>(arg_1, arg_1, arg_1, true)) && true)) != arg_1);
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a, 1416f, _wgslsmith_f_op_f32(func_2(global1.xyz, Struct_3(198f), Struct_4(21082u, arg_1, global1.wwx), vec4<u32>(global0[_wgslsmith_index_u32(45259u, 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(60916u, 24u)], 24u)], global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)], 24u)], 24u)], 24u)])))), vec3<f32>(arg_0.a, arg_0.a, _wgslsmith_f_op_f32(max(-1000f, 990f)))))));
    global2 = array<Struct_2, 28>();
    global2 = array<Struct_2, 28>();
    global0 = array<u32, 24>();
    return vec3<bool>(true, false, select(min(min(global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(26625u, 24u)]), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~0u, 24u)], 24u)]) == 95267u, true, !all(select(vec3<bool>(true, true, false), vec3<bool>(var_0, false, var_0), true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(min(~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(0u, 24u)] << (0u % 32u), _wgslsmith_add_u32(78486u, 2523u)), firstLeadingBit(~(~global0[_wgslsmith_index_u32(4294967295u, 24u)]))), vec4<bool>(true & (false || any(vec3<bool>(false, true, true))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_1(Struct_3(-589f), false))), func_1(Struct_3(_wgslsmith_f_op_f32(-667f + 760f)), false).x, true), -17801i, any(vec3<bool>(true, true, any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true))))), _wgslsmith_dot_vec3_i32(global1.zzy, vec3<i32>(global1.x, func_3(_wgslsmith_f_op_f32(-751f - -1290f), Struct_5(vec4<u32>(88735u, global0[_wgslsmith_index_u32(1u, 24u)], 33132u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(88472u, 24u)], 24u)]))).x, global1.x)));
    global0 = array<u32, 24>();
    global2 = array<Struct_2, 28>();
    global1 = ~max(func_3(-1182f, Struct_5(_wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.a, 24u)], 24u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26356u, 24u)], 24u)], 1u), vec4<u32>(var_0.a, 4294967295u, 51820u, var_0.a)))), ~vec4<i32>(u_input.a, u_input.a, 1i, var_0.c));
    global1 = firstLeadingBit(vec4<i32>(_wgslsmith_sub_i32(0i, ~var_0.c), abs(-(~0i)), -47416i, ~abs(-11776i)));
    global0 = array<u32, 24>();
    let var_1 = abs(~(~(-vec4<i32>(20316i, u_input.a, u_input.a, 21113i)) >> ((~vec4<u32>(global0[_wgslsmith_index_u32(var_0.a, 24u)], global0[_wgslsmith_index_u32(16781u, 24u)], 0u, var_0.a) >> ((vec4<u32>(var_0.a, 90799u, 60216u, 56295u) | vec4<u32>(0u, 0u, 9279u, 91323u)) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_2 = Struct_1(firstTrailingBit(~firstTrailingBit(var_0.a << (var_0.a % 32u))), !(!var_0.b), max(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(var_0.c, -32298i), max(-1i, 7220i), 1i), ~min(global1.zyz, var_1.xxw)), 1i), ~global0[_wgslsmith_index_u32(4294967295u, 24u)] < global0[_wgslsmith_index_u32(~var_0.a, 24u)], ~_wgslsmith_mult_i32(~var_1.x, var_0.e));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-369f, -1290f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1987f)))))) - -1883f));
}

