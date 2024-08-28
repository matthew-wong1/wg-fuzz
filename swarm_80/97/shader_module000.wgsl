struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 31> = array<vec2<bool>, 31>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global1: array<i32, 16>;

var<private> global2: Struct_3 = Struct_3(Struct_2(Struct_1(vec2<i32>(-1i, 65849i), -1264f, vec4<u32>(17405u, 1u, 1u, 19666u)), 0u, vec3<bool>(false, true, true)), Struct_1(vec2<i32>(71153i, 0i), 102f, vec4<u32>(37381u, 35031u, 4294967295u, 83992u)), vec4<i32>(1i, -37714i, -1i, 55079i), Struct_2(Struct_1(vec2<i32>(0i, 1i), 473f, vec4<u32>(327u, 0u, 0u, 32248u)), 4642u, vec3<bool>(false, true, false)), -715f);

var<private> global3: Struct_3;

var<private> global4: Struct_1 = Struct_1(vec2<i32>(0i, 20683i), -472f, vec4<u32>(50592u, 15719u, 50592u, 6707u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    let var_0 = select(vec4<u32>(~15713u, arg_0.x, ~(~1u), 4294967295u), _wgslsmith_clamp_vec4_u32(global4.c ^ global2.b.c, ~global2.a.a.c, ~global3.d.a.c) >> (firstTrailingBit(~global4.c) % vec4<u32>(32u)), select(!(!vec4<bool>(false, global3.a.c.x, global2.d.c.x, false)), !select(vec4<bool>(global3.a.c.x, true, true, true), vec4<bool>(false, global2.d.c.x, global2.d.c.x, global2.a.c.x), vec4<bool>(true, false, global3.d.c.x, global2.a.c.x)), _wgslsmith_f_op_f32(global2.a.a.b * -1006f) < global4.b)) & firstTrailingBit(_wgslsmith_sub_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(global3.b.c.x, 65043u, 50489u, global4.c.x), vec4<u32>(0u, global2.a.a.c.x, 24299u, 4294967295u)), abs(global3.d.a.c)));
    let var_1 = global4.c.yyz;
    var var_2 = global2.d.c.x;
    var var_3 = vec2<f32>(global2.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -533f) * -591f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1660f)), _wgslsmith_f_op_f32(global3.d.a.b - _wgslsmith_f_op_f32(-global3.e))))));
    var var_4 = -1i >= global2.d.a.a.x;
    return global4.c.x;
}

fn func_2(arg_0: Struct_3, arg_1: bool) -> i32 {
    global3 = arg_0;
    let var_0 = false;
    let var_1 = Struct_1((vec2<i32>(0i, 14957i) << (firstLeadingBit(arg_0.d.a.c.wy) % vec2<u32>(32u))) >> (vec2<u32>(~select(arg_0.b.c.x, 0u, true), 92320u) % vec2<u32>(32u)), 973f, vec4<u32>(arg_0.d.a.c.x, global3.a.a.c.x, _wgslsmith_add_u32(func_3(_wgslsmith_div_vec3_u32(u_input.a, global2.b.c.ywy)), firstLeadingBit(~4294967295u)), ~arg_0.b.c.x));
    let var_2 = vec4<i32>(_wgslsmith_div_i32(-abs(global1[_wgslsmith_index_u32(1875u, 16u)]) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(global2.d.a.c.x, 25144u, 28765u), global3.b.c.wyx) % 32u), _wgslsmith_dot_vec2_i32(~(-vec2<i32>(13376i, 0i)), var_1.a)), ~_wgslsmith_div_i32(-(var_1.a.x | 2147483647i), reverseBits(arg_0.a.a.a.x)), 51050i, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-1i) * -vec2<i32>(global1[_wgslsmith_index_u32(6690u, 16u)], global1[_wgslsmith_index_u32(65019u, 16u)])), global3.d.a.a));
    global2 = arg_0;
    return ~arg_0.c.x;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = global2.a.a;
    let var_1 = !(!vec3<bool>(true, all(vec2<bool>(true, true)), true));
    global0 = array<vec2<bool>, 31>();
    var_0 = global2.a.a;
    global3 = Struct_3(Struct_2(Struct_1(firstTrailingBit(var_0.a), 1459f, min(min(global4.c, var_0.c), var_0.c)), global3.b.c.x, vec3<bool>(false | var_1.x, all(!vec2<bool>(arg_1.c.x, global3.a.c.x)), all(select(vec4<bool>(global2.a.c.x, false, true, true), vec4<bool>(false, false, true, true), true)))), Struct_1(global3.b.a, -498f, ~select(var_0.c, max(global2.a.a.c, vec4<u32>(4294967295u, 24708u, 11504u, 1u)), select(vec4<bool>(false, global3.a.c.x, true, false), vec4<bool>(arg_1.c.x, global3.d.c.x, false, true), arg_1.c.x))), -vec4<i32>(-_wgslsmith_mod_i32(31328i, -26413i), firstTrailingBit(0i), ~countOneBits(-2147483647i), _wgslsmith_div_i32(_wgslsmith_mult_i32(global4.a.x, arg_1.a.a.x), -2147483647i)), arg_1, _wgslsmith_div_f32(arg_1.a.b, _wgslsmith_f_op_f32(2251f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(126f, global4.b)), -660f)))));
    return Struct_2(arg_1.a, ~55274u, global3.a.c);
}

fn func_1() -> Struct_3 {
    return Struct_3(Struct_2(global3.b, ~global4.c.x, vec3<bool>(global3.a.c.x, true, 1i == min(global1[_wgslsmith_index_u32(4294967295u, 16u)], global3.a.a.a.x))), global2.d.a, global2.c, func_4(vec3<i32>(func_2(Struct_3(Struct_2(global3.b, 1u, global2.d.c), global2.d.a, global2.c, Struct_2(Struct_1(global4.a, 138f, global2.b.c), 1u, vec3<bool>(global2.a.c.x, global2.d.c.x, global3.a.c.x)), -1687f), global3.a.c.x) << (0u % 32u), _wgslsmith_div_i32(-5666i, global3.a.a.a.x), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(global3.b.a.x, global2.c.x), vec2<i32>(global2.d.a.a.x, global2.b.a.x), vec2<i32>(-16629i, -166i)), vec2<i32>(0i, 2147483647i))), global3.d), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(467f))))), 961f)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1();
    let var_0 = global4.c | ~(~global3.b.c);
    var var_1 = global2.c;
    let var_2 = global2.d;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1872f * global4.b), global2.a.a.b) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.a.a.b, -988f) + _wgslsmith_f_op_f32(-global3.a.a.b)))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(597f + global2.b.b)) <= global4.b;
    global1 = array<i32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(_wgslsmith_add_i32(global2.b.a.x, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(var_2.b), ~4294967295u), 16u)]), var_1.x, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_2.a.a, global4.a) << (reverseBits(vec2<u32>(55610u, 1u)) % vec2<u32>(32u)), abs(max(var_1.yy, var_2.a.a)))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(global2.d.a.b * global3.e)), _wgslsmith_f_op_f32(-var_2.a.b))), global3.e, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1892f, global4.b, global3.a.c.x)), global4.b))), _wgslsmith_add_vec4_i32(-vec4<i32>(_wgslsmith_mod_i32(global2.a.a.a.x, 20602i), _wgslsmith_dot_vec2_i32(var_2.a.a, global2.c.xz), _wgslsmith_add_i32(global1[_wgslsmith_index_u32(12572u, 16u)], var_1.x), var_2.a.a.x | global4.a.x), vec4<i32>(1i, firstTrailingBit(-11950i), func_2(func_1(), false), min(abs(var_1.x), 13267i))));
}

