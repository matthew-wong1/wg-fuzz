struct Struct_1 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: array<i32, 17> = array<i32, 17>(25912i, i32(-2147483648), 49761i, -970i, 24034i, 0i, -1i, 7535i, 94983i, -1i, i32(-2147483648), 0i, i32(-2147483648), 49013i, 2147483647i, -22830i, -10108i);

var<private> global2: vec3<i32> = vec3<i32>(1i, -13740i, 1i);

var<private> global3: i32 = 2147483647i;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> i32 {
    var var_0 = -217f;
    let var_1 = arg_0.b;
    var var_2 = arg_2;
    var var_3 = arg_1;
    var var_4 = global0[_wgslsmith_index_u32(~(~(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2, 58688u), vec2<u32>(4294967295u, arg_2) ^ vec2<u32>(arg_2, 32859u)) ^ 4294967295u)), 24u)];
    return 1i;
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    global3 = reverseBits(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a.xyz ^ vec3<i32>(-1i, -8892i, global2.x), vec3<i32>(arg_0.x, arg_0.x, -28739i)), _wgslsmith_mod_vec3_i32(min(vec3<i32>(arg_0.x, global2.x, global2.x), arg_0), u_input.a.xzy)), countOneBits(arg_0)));
    global2 = _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_0, vec3<i32>(-1i) * -u_input.a.zyw, _wgslsmith_clamp_vec3_i32(arg_0, -vec3<i32>(u_input.a.x, arg_0.x, -1479i), _wgslsmith_mod_vec3_i32(u_input.a.wxw, ~arg_0))), arg_0);
    let var_0 = !(func_3(global0[_wgslsmith_index_u32(1u, 24u)], !(u_input.a.x != -1i), _wgslsmith_mod_u32(~0u, ~1u)) > -func_3(Struct_1(1i, false), true, countOneBits(5905u)));
    global3 = -20522i;
    global3 = -2147483647i;
    return _wgslsmith_div_u32(0u, _wgslsmith_mod_u32(max(~_wgslsmith_mod_u32(0u, 60726u), ~(~1u)), ~1u));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1624f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1692f))));
    var var_1 = select(arg_1.x, ~0u, any(select(!vec2<bool>(false, arg_2), select(!vec2<bool>(arg_2, true), vec2<bool>(true, true), !vec2<bool>(true, arg_2)), true)));
    let var_2 = Struct_1(-2147483647i, !arg_0.b);
    let var_3 = _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, abs(firstTrailingBit(71358u) & 1u), ~_wgslsmith_mult_u32(arg_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, arg_1.x), arg_1.xz)), 18665u >> (1u % 32u)), firstLeadingBit(min(~(~vec4<u32>(arg_1.x, arg_1.x, 0u, 0u)), (vec4<u32>(arg_1.x, arg_1.x, 56106u, 13751u) | vec4<u32>(arg_1.x, arg_1.x, 4294967295u, arg_1.x)) >> (reverseBits(vec4<u32>(arg_1.x, 21547u, 1u, 1u)) % vec4<u32>(32u)))));
    global0 = array<Struct_1, 24>();
    return global0[_wgslsmith_index_u32(15062u, 24u)];
}

fn func_1(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = func_4(global0[_wgslsmith_index_u32(~2507u, 24u)], vec3<u32>(4294967295u, 95822u, firstLeadingBit(func_2(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.a, -2712i, global1[_wgslsmith_index_u32(4294967295u, 17u)]), u_input.a.wwx)))), arg_0.b);
    let var_1 = Struct_1(select(-func_4(Struct_1(u_input.a.x, true), vec3<u32>(1u, 1u, 1u), arg_0.b | true).a, -(max(-253i, u_input.a.x) | 0i), false), arg_0.b);
    let var_2 = ~_wgslsmith_add_u32(30933u, 33971u);
    global2 = u_input.a.yzw;
    global3 = ~_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-firstTrailingBit(2147483647i), reverseBits(~1i), ~_wgslsmith_mult_i32(var_1.a, var_0.a), global2.x));
    return vec2<u32>(~var_2, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(func_1(Struct_1(2147483647i, false)), ~vec2<u32>(12009u, 57136u)), 1u)));
    var var_1 = u_input.a.x;
    global0 = array<Struct_1, 24>();
    global0 = array<Struct_1, 24>();
    global2 = _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.a.zxw, u_input.a.xxx) | abs(u_input.a.xxw), select(vec3<i32>(global1[_wgslsmith_index_u32(1u, 17u)], 2147483647i, -81474i), u_input.a.wwy, true) << (min(vec3<u32>(var_0, var_0, 19789u), vec3<u32>(var_0, var_0, 1u)) % vec3<u32>(32u))), u_input.a.wwy) | -(~abs(vec3<i32>(1i, 1i, -2147483647i)));
    var var_2 = vec4<i32>(0i, global2.x, ~firstLeadingBit(global1[_wgslsmith_index_u32(~var_0 ^ var_0, 17u)]), global1[_wgslsmith_index_u32(func_1(func_4(global0[_wgslsmith_index_u32(4294967295u, 24u)], _wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_0, 335u), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 18363u, var_0), vec3<u32>(1u, var_0, 50456u))), true)).x, 17u)]);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~(~global2.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(61213u, 18635u, var_0), vec3<u32>(var_0, var_0, 11693u)) % 32u)), 0i, -global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(var_0, var_0), 17u)]), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-511f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(739f * -1316f)))))), var_0 ^ var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - -311f), vec3<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(1u, var_0)), _wgslsmith_add_vec2_u32(vec2<u32>(var_0, var_0), ~vec2<u32>(var_0, 4294967295u))), 1u, ~var_0 >> (var_0 % 32u)));
}

