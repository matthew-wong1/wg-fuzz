struct Struct_1 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
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

var<private> global0: Struct_1 = Struct_1(-42852i, false);

var<private> global1: array<f32, 9>;

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(i32(-2147483648), true), Struct_1(24056i, true), Struct_1(-1i, false), Struct_1(1i, true), Struct_1(-57126i, true), Struct_1(-1i, true), Struct_1(-1i, false), Struct_1(31227i, true), Struct_1(0i, false), Struct_1(3316i, false), Struct_1(1i, true), Struct_1(1i, true), Struct_1(-1i, true), Struct_1(0i, true), Struct_1(-34248i, false), Struct_1(2147483647i, false), Struct_1(0i, true), Struct_1(19419i, false), Struct_1(-26448i, true), Struct_1(26658i, false), Struct_1(i32(-2147483648), true), Struct_1(2147483647i, true), Struct_1(-1i, false), Struct_1(-9390i, true), Struct_1(i32(-2147483648), true), Struct_1(2147483647i, false), Struct_1(i32(-2147483648), true), Struct_1(2147483647i, false), Struct_1(2147483647i, false), Struct_1(49541i, true));

var<private> global3: array<bool, 6>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = select(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, arg_1.b), !vec3<bool>(arg_1.b, arg_1.b, true)), vec3<bool>(true, 1i >= arg_1.a, !arg_1.b), vec3<bool>(true, arg_1.b & arg_2.b, all(vec3<bool>(false, global0.b, false)))), vec3<bool>(arg_0.x, arg_2.b, false), true);
    global3 = array<bool, 6>();
    global0 = Struct_1(5357i, true);
    global3 = array<bool, 6>();
    global0 = arg_1;
    return vec3<i32>(-20709i, arg_1.a, -15663i);
}

fn func_2() -> u32 {
    var var_0 = max(reverseBits(firstTrailingBit(~60604u) & 4294967295u), 43970u);
    var var_1 = _wgslsmith_add_vec3_i32(-func_3(vec2<bool>(true, true), global2[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 30u)], Struct_1(~(-2695i), any(vec3<bool>(global0.b, global3[_wgslsmith_index_u32(28567u, 6u)], global3[_wgslsmith_index_u32(19825u, 6u)])))), ~(vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 1i, global0.a), vec3<i32>(0i, -2274i, -1i))));
    var var_2 = false;
    let var_3 = ~2147483647i;
    global0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1459u, _wgslsmith_mult_u32(~17229u, abs(1u))), vec2<u32>(~0u, ~1u) << (firstTrailingBit(~vec2<u32>(20407u, 22579u)) % vec2<u32>(32u))), firstTrailingBit(~vec2<u32>(1u, 1u))), 30u)];
    return abs(min(66732u, ~_wgslsmith_clamp_u32(select(1u, 15855u, false), 27480u, select(4294967295u, 1u, true))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> u32 {
    global0 = Struct_1(_wgslsmith_mult_i32(-2147483647i, -1i), any(vec3<bool>(all(vec2<bool>(arg_3.b, true)), any(vec2<bool>(global0.b, arg_3.b)), false)));
    var var_0 = Struct_1(-_wgslsmith_mult_i32(-u_input.c, arg_3.a), (true | all(vec2<bool>(arg_1.b, global3[_wgslsmith_index_u32(4294967295u, 6u)]))) != (146f <= global1[_wgslsmith_index_u32(~(~29929u), 9u)]));
    var var_1 = vec3<u32>(_wgslsmith_dot_vec2_u32(arg_2.yx, vec2<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(14027u, 30988u), abs(arg_2.x)), arg_0 | _wgslsmith_clamp_u32(arg_0, 68732u, 1u))), _wgslsmith_dot_vec2_u32(vec2<u32>(max(~arg_2.x, min(53814u, 29137u)), min(~arg_0, 1u)), _wgslsmith_mod_vec2_u32(arg_2.yz, ~_wgslsmith_mult_vec2_u32(vec2<u32>(26117u, arg_0), vec2<u32>(arg_2.x, arg_2.x)))), min(~_wgslsmith_add_u32(arg_2.x << (arg_2.x % 32u), 84278u << (0u % 32u)), _wgslsmith_clamp_u32(_wgslsmith_add_u32(64918u, 7538u), ~4294967295u, 149684u)));
    var_1 = select(select(_wgslsmith_mult_vec3_u32(arg_2.wzx, arg_2.zxy), arg_2.wzz, vec3<bool>(true, true, true)) & ~(vec3<u32>(arg_2.x, 22708u, 4294967295u) >> (vec3<u32>(1u, arg_0, var_1.x) % vec3<u32>(32u))), ~max(~vec3<u32>(11993u, arg_0, 4294967295u), ~vec3<u32>(48441u, 86082u, arg_2.x)), true) << (min(arg_2.yzx, arg_2.zwx) % vec3<u32>(32u));
    let var_2 = arg_3;
    return 0u >> (~(1u ^ ~(~var_1.x)) % 32u);
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> u32 {
    global3 = array<bool, 6>();
    global3 = array<bool, 6>();
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1 >> (arg_1 % 32u), 9u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1373f, global1[_wgslsmith_index_u32(4294967295u, 9u)]) - vec2<f32>(-323f, 1507f))))));
    let var_1 = select((vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 56557u, arg_1, arg_1), vec4<u32>(arg_1, arg_1, arg_1, arg_1)), ~arg_1, max(arg_1, 1u)) >> (vec3<u32>(1u, countOneBits(arg_1), ~13620u) % vec3<u32>(32u))) >> (countOneBits(max(vec3<u32>(0u, 1u, 88267u), ~vec3<u32>(0u, 0u, 1u))) % vec3<u32>(32u)), vec3<u32>(arg_1, 26862u, firstLeadingBit(~arg_1)) >> (_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(select(vec3<u32>(arg_1, arg_1, arg_1), vec3<u32>(1u, arg_1, arg_1), vec3<bool>(global0.b, arg_0.b, arg_0.b)), vec3<u32>(54647u, arg_1, arg_1)), vec3<u32>(32633u, arg_1, ~34978u)) % vec3<u32>(32u)), vec3<bool>(global3[_wgslsmith_index_u32(func_4(~func_2(), arg_0, reverseBits(~vec4<u32>(9824u, arg_1, 46947u, 13706u)), global2[_wgslsmith_index_u32(max(_wgslsmith_div_u32(arg_1, arg_1), ~arg_1), 30u)]), 6u)], any(select(vec2<bool>(true, true), !vec2<bool>(global0.b, true), vec2<bool>(true, false))), false));
    let var_2 = global2[_wgslsmith_index_u32(var_1.x, 30u)];
    return ~4294967295u;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> bool {
    global3 = array<bool, 6>();
    global0 = Struct_1(i32(-1i) * -1i, ~(~arg_0) == _wgslsmith_sub_u32(firstTrailingBit(~0u), ~(32839u >> (arg_0 % 32u))));
    global3 = array<bool, 6>();
    var var_0 = 0i;
    var_0 = _wgslsmith_clamp_i32(arg_2.x, arg_1.a, 22439i);
    return arg_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~func_1(Struct_1(u_input.a & -23486i, false), abs(1u)), global2[_wgslsmith_index_u32(~26405u, 30u)], vec4<i32>(global0.a, global0.a, global0.a ^ 1i, global0.a), Struct_1(23885i, true));
    let var_1 = global2[_wgslsmith_index_u32(4294967295u, 30u)];
    global1 = array<f32, 9>();
    let var_2 = select(vec3<bool>(!all(vec4<bool>(false, true, false, global3[_wgslsmith_index_u32(0u, 6u)])), true, !(!(!global0.b))), vec3<bool>(false | (!global0.b || global3[_wgslsmith_index_u32(~4984u, 6u)]), false, true), !vec3<bool>(true, true || (global0.b == var_1.b), false));
    global2 = array<Struct_1, 30>();
    var var_3 = global2[_wgslsmith_index_u32(28351u, 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1573f, global1[_wgslsmith_index_u32(16038u, 9u)], global1[_wgslsmith_index_u32(0u, 9u)]), vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 9u)], 476f, -869f)), vec3<f32>(2407f, global1[_wgslsmith_index_u32(33571u, 9u)], 1204f), var_0)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1[_wgslsmith_index_u32(1u, 9u)], -552f, -594f))))));
}

