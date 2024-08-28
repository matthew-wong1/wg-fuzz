struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 15>;

var<private> global1: array<vec2<bool>, 2> = array<vec2<bool>, 2>(vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global2: array<bool, 22> = array<bool, 22>(false, false, true, true, false, false, true, false, false, true, true, true, false, true, false, true, true, true, false, false, false, false);

var<private> global3: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(false, -2145f, vec3<i32>(-1i, 3772i, 1i)), Struct_1(true, -623f, vec3<i32>(-4853i, 23441i, -26118i)), Struct_1(false, -1478f, vec3<i32>(1i, 34054i, -34958i)), Struct_1(false, -249f, vec3<i32>(-31624i, -1i, -49831i)), Struct_1(false, -711f, vec3<i32>(47026i, 2147483647i, -1i)));

var<private> global4: bool = false;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> f32 {
    let var_0 = -1018f;
    var var_1 = (10661u << (_wgslsmith_dot_vec3_u32(vec3<u32>(6136u, u_input.e, 101591u) | _wgslsmith_add_vec3_u32(vec3<u32>(1u, 29902u, 0u), vec3<u32>(u_input.a.x, u_input.a.x, 1u)), countOneBits(vec3<u32>(u_input.e, 0u, 1u))) % 32u)) & ~(~select(1u, 0u, true));
    global1 = array<vec2<bool>, 2>();
    let var_2 = -(~(-select(_wgslsmith_div_vec2_i32(vec2<i32>(0i, -27264i), vec2<i32>(0i, u_input.b.x)), -u_input.d, false)));
    var var_3 = vec3<i32>(_wgslsmith_sub_i32(var_2.x, -4120i), ~min(_wgslsmith_add_i32(abs(u_input.b.x), _wgslsmith_sub_i32(var_2.x, 14775i)), u_input.d.x ^ u_input.b.x), abs(var_2.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec4<i32>) -> vec3<i32> {
    global3 = array<Struct_1, 5>();
    global4 = true;
    var var_0 = _wgslsmith_sub_vec4_u32(~_wgslsmith_mult_vec4_u32(~(vec4<u32>(0u, 1u, 38996u, u_input.e) >> (vec4<u32>(u_input.e, u_input.a.x, u_input.e, 1u) % vec4<u32>(32u))), ~vec4<u32>(10169u, u_input.e, 38633u, 15446u)), ~vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.e, u_input.a.x), _wgslsmith_sub_u32(25894u, 0u), min(u_input.e, 48009u)), ~u_input.e & 17305u, 4294967295u, ~0u));
    var var_1 = _wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(func_3()));
    let var_2 = reverseBits(_wgslsmith_div_u32(~0u, countOneBits(min(13477u, _wgslsmith_clamp_u32(73537u, 4294967295u, var_0.x)))));
    return arg_2.yxz;
}

fn func_4(arg_0: Struct_1) -> bool {
    let var_0 = Struct_1(!(!arg_0.a), arg_0.b, _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(arg_0.c, -arg_0.c), vec3<i32>(~20956i, u_input.b.x, ~(2147483647i & u_input.b.x))));
    global1 = array<vec2<bool>, 2>();
    global0 = array<vec4<i32>, 15>();
    var var_1 = ~firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(firstTrailingBit(9796u), ~4294967295u), vec2<u32>(u_input.e, ~u_input.a.x)));
    var var_2 = arg_0;
    return all(global1[_wgslsmith_index_u32(4294967295u, 2u)]);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> bool {
    var var_0 = _wgslsmith_mod_vec4_i32(global0[_wgslsmith_index_u32(abs(u_input.e), 15u)], max(~firstLeadingBit(vec4<i32>(u_input.b.x, 3102i, u_input.c.x, arg_3.c.x)), global0[_wgslsmith_index_u32(u_input.e, 15u)]));
    var var_1 = Struct_1(true, 1f, arg_3.c);
    var var_2 = 287f;
    var_2 = _wgslsmith_f_op_f32(1802f + var_1.b);
    global3 = array<Struct_1, 5>();
    return any(vec2<bool>(func_4(Struct_1(arg_2.x && false, _wgslsmith_f_op_f32(-var_1.b), func_2(Struct_1(true, -1762f, vec3<i32>(2147483647i, var_0.x, var_0.x)), var_1.c, vec4<i32>(14430i, -1i, var_0.x, arg_3.c.x)))), arg_3.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(firstLeadingBit((~u_input.e << (~(~4294967295u) % 32u)) << (_wgslsmith_add_u32(4294967295u, countOneBits(8358u << (u_input.e % 32u))) % 32u)), 5u)];
    var var_1 = Struct_1(true, var_0.b, _wgslsmith_mult_vec3_i32(select(vec3<i32>(var_0.c.x, u_input.d.x, -61134i), var_0.c & (vec3<i32>(28671i, var_0.c.x, u_input.d.x) ^ vec3<i32>(-33430i, u_input.c.x, -1i)), vec3<bool>(true, true, true)), u_input.b.xxy));
    var var_2 = firstTrailingBit(2147483647i);
    var var_3 = vec4<bool>(var_1.a, var_0.a, !(func_1(51797i, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 88830u), 5u)], select(vec3<bool>(true, true, var_0.a), vec3<bool>(true, true, true), vec3<bool>(var_1.a, true, var_1.a)), global3[_wgslsmith_index_u32(0u & u_input.e, 5u)]) | all(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 24235u), 2u)])), (var_0.a && true) && global2[_wgslsmith_index_u32(5656u, 22u)]);
    var_1 = Struct_1(!(!(!global2[_wgslsmith_index_u32(u_input.e, 22u)] | true)), _wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(-382f - -489f)), firstLeadingBit(max(abs(vec3<i32>(61159i, var_1.c.x, 2147483647i)), max(var_1.c & var_1.c, vec3<i32>(0i, 0i, u_input.c.x)))));
    var var_4 = Struct_1(!(!var_1.a), _wgslsmith_f_op_f32(-var_1.b), ~vec3<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(2147483647i, 0i, -15942i, var_1.c.x), u_input.b, vec4<bool>(var_0.a, true, var_3.x, var_0.a)), ~u_input.b), -1i, var_0.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.e >> (12762u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1422f))))), _wgslsmith_dot_vec2_u32(abs(u_input.a), ~vec2<u32>(u_input.a.x, u_input.e)));
}

