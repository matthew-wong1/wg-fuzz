struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 11> = array<Struct_4, 11>(Struct_4(1130f, 15559i), Struct_4(412f, 2147483647i), Struct_4(1921f, 0i), Struct_4(1580f, 1i), Struct_4(896f, -1i), Struct_4(-680f, -24415i), Struct_4(-1203f, -34894i), Struct_4(1331f, -953i), Struct_4(290f, -13098i), Struct_4(-1466f, 3356i), Struct_4(-480f, 1i));

var<private> global1: array<i32, 12>;

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<i32>(2147483647i, 23030i, 2147483647i), -1490f, vec3<bool>(true, false, true), 54910u), Struct_1(vec3<i32>(-26181i, 47691i, 28905i), -807f, vec3<bool>(false, true, true), 12578u), Struct_1(vec3<i32>(32041i, 1i, 1i), -591f, vec3<bool>(true, false, true), 38775u), Struct_1(vec3<i32>(-1i, 1i, i32(-2147483648)), 3096f, vec3<bool>(true, false, false), 97274u), Struct_1(vec3<i32>(-47756i, 30166i, i32(-2147483648)), 1767f, vec3<bool>(true, false, false), 1u), Struct_1(vec3<i32>(-1i, 4631i, i32(-2147483648)), 1864f, vec3<bool>(true, false, false), 55709u), Struct_1(vec3<i32>(-30170i, -52799i, 2147483647i), 524f, vec3<bool>(false, false, false), 18528u), Struct_1(vec3<i32>(0i, 2147483647i, -1i), 1003f, vec3<bool>(false, false, false), 1u));

var<private> global3: array<Struct_1, 28>;

var<private> global4: Struct_4 = Struct_4(-148f, -37066i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = ~18746u;
    global0 = array<Struct_4, 11>();
    global1 = array<i32, 12>();
    let var_1 = 4294967295u & var_0;
    global3 = array<Struct_1, 28>();
    return ~(~abs(_wgslsmith_mult_i32(~u_input.e.x, firstLeadingBit(1i))));
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = global4.a;
    global4 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -847f)))), func_3(true));
    global1 = array<i32, 12>();
    global2 = array<Struct_1, 8>();
    let var_1 = max(30300i, -(~_wgslsmith_add_i32(-2147483647i, arg_0.a.x) << (~firstTrailingBit(95125u) % 32u)));
    return arg_0.c.xz;
}

fn func_1() -> vec3<bool> {
    global2 = array<Struct_1, 8>();
    var var_0 = 0i;
    var var_1 = !select(select(func_2(Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(u_input.b, 12u)], u_input.e.x, u_input.a.x), global4.a, vec3<bool>(false, true, false), 79328u)), vec2<bool>(true, true), func_2(global3[_wgslsmith_index_u32(~0u, 28u)]).x), select(vec2<bool>(all(vec3<bool>(true, false, true)), true), !select(vec2<bool>(false, false), vec2<bool>(true, true), true), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))), true);
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1057f + -1591f), _wgslsmith_f_op_f32(global4.a + 1262f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-901f + -409f), global4.a, var_1.x)))))));
    global2 = array<Struct_1, 8>();
    return vec3<bool>(any(vec2<bool>(false, var_1.x)), true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-201f, global4.a, _wgslsmith_f_op_f32(global4.a - global4.a))), Struct_1(~firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 7667i, global4.b), vec3<i32>(global1[_wgslsmith_index_u32(1u, 12u)], 0i, u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global4.a, 1030f, true)))), select(func_1(), vec3<bool>(all(vec2<bool>(false, true)), func_2(Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(106678u, 12u)], -14593i, u_input.d), global4.a, vec3<bool>(true, false, true), 26940u)).x, true), true), _wgslsmith_dot_vec2_u32(u_input.c.xy, u_input.c.zx)), global3[_wgslsmith_index_u32(1u, 28u)]);
    global1 = array<i32, 12>();
    let var_1 = ~vec4<u32>(u_input.c.x, u_input.b, 0u, 88970u);
    let var_2 = Struct_5(global1[_wgslsmith_index_u32(~84611u, 12u)]);
    global2 = array<Struct_1, 8>();
    let var_3 = vec3<bool>(false, var_0.b.c.x, true);
    global3 = array<Struct_1, 28>();
    var var_4 = var_0.c;
    var var_5 = var_3.zz;
    let x = u_input.a;
    s_output = StorageBuffer(~select(~vec4<u32>(u_input.b, var_1.x, u_input.c.x, 1u), var_1, vec4<bool>(true, true, !var_5.x, var_5.x)), ~reverseBits(var_0.b.d), vec4<u32>(u_input.c.x, 0u, ~var_0.b.d, _wgslsmith_sub_u32(9030u, firstTrailingBit(abs(u_input.c.x)))), vec3<u32>(abs(30168u), var_1.x, ~var_4.d));
}

