struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<bool>(true, false, false), vec4<f32>(-456f, -595f, -301f, 1348f), vec2<bool>(false, false));

var<private> global1: array<bool, 2> = array<bool, 2>(false, false);

var<private> global2: array<Struct_4, 11> = array<Struct_4, 11>(Struct_4(Struct_1(2361f, vec2<i32>(37084i, 5912i))), Struct_4(Struct_1(-717f, vec2<i32>(2147483647i, 1i))), Struct_4(Struct_1(224f, vec2<i32>(0i, 0i))), Struct_4(Struct_1(-129f, vec2<i32>(-1i, -1i))), Struct_4(Struct_1(-1057f, vec2<i32>(14742i, -15889i))), Struct_4(Struct_1(-335f, vec2<i32>(0i, -3912i))), Struct_4(Struct_1(1299f, vec2<i32>(i32(-2147483648), -1i))), Struct_4(Struct_1(559f, vec2<i32>(15326i, 4818i))), Struct_4(Struct_1(613f, vec2<i32>(-42426i, -1i))), Struct_4(Struct_1(712f, vec2<i32>(0i, 1i))), Struct_4(Struct_1(381f, vec2<i32>(0i, 2147483647i))));

var<private> global3: vec4<i32>;

var<private> global4: vec2<f32> = vec2<f32>(-2614f, 902f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: vec4<u32>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -532f), _wgslsmith_f_op_f32(861f - global0.b.x), -237f));
    let var_1 = Struct_2(!select(arg_1.xww, arg_1.zxw, false), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, 344f, 1763f, global4.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global4.x, -1437f, global0.b.x, -245f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1276f, -1436f, -649f, var_0.x)))))), global0.c);
    return vec2<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(-abs(vec3<i32>(global3.x, u_input.d, 2147483647i))), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_div_i32(3752i, -2147483647i), ~(-18609i), _wgslsmith_add_i32(-2147483647i, global3.x)), ~vec3<i32>(2147483647i, u_input.b.x, 2147483647i), abs(-u_input.b))), global3.x);
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(global0.b, _wgslsmith_f_op_vec4_f32(sign(global0.b)), select(vec4<bool>(u_input.a != 4294967295u, all(vec4<bool>(false, true, true, false)), false, all(vec4<bool>(false, true, true, global0.a.x))), !select(vec4<bool>(false, global0.a.x, global1[_wgslsmith_index_u32(u_input.a, 2u)], global1[_wgslsmith_index_u32(1u, 2u)]), vec4<bool>(global0.a.x, true, true, global1[_wgslsmith_index_u32(0u, 2u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 2u)], true, false)), all(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 2u)], true, false)))))));
    let var_1 = Struct_1(global0.b.x, -countOneBits(func_3(-450f, vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(1u, 2u)]), vec4<u32>(u_input.a, 10945u, 41595u, u_input.c.x)) << (vec2<u32>(4294967295u, 36109u) % vec2<u32>(32u))));
    var var_2 = var_0.zw;
    global1 = array<bool, 2>();
    var var_3 = select(select(vec4<bool>(!all(global0.c), true, !global0.c.x, var_1.b.x <= firstLeadingBit(var_1.b.x)), vec4<bool>(global0.a.x, -2147483647i >= abs(u_input.b.x), (var_1.b.x != 17855i) & true, any(select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(1u, 2u)], true, global0.c.x), vec4<bool>(global0.a.x, global1[_wgslsmith_index_u32(6609u, 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)], true), true))), any(vec2<bool>(true, any(vec2<bool>(true, false))))), vec4<bool>(true, global0.a.x, _wgslsmith_sub_u32(~20895u, min(u_input.c.x, 25832u)) != _wgslsmith_mod_u32(u_input.c.x, _wgslsmith_sub_u32(u_input.a, 4294967295u)), true), select(select(vec4<bool>(any(vec2<bool>(false, true)), false, true, var_2.x > -737f), select(select(vec4<bool>(global1[_wgslsmith_index_u32(19784u, 2u)], global1[_wgslsmith_index_u32(u_input.c.x, 2u)], global0.a.x, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 2u)], global1[_wgslsmith_index_u32(59667u, 2u)], global1[_wgslsmith_index_u32(30766u, 2u)], global0.c.x), true), select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 2u)], false, true), vec4<bool>(global1[_wgslsmith_index_u32(1u, 2u)], false, false, global0.c.x), false), !vec4<bool>(global0.c.x, global0.c.x, true, global1[_wgslsmith_index_u32(1u, 2u)])), !select(vec4<bool>(true, global0.c.x, false, global1[_wgslsmith_index_u32(u_input.c.x, 2u)]), vec4<bool>(global1[_wgslsmith_index_u32(29681u, 2u)], global0.a.x, true, global1[_wgslsmith_index_u32(4294967295u, 2u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 2u)], global0.a.x, true, false))), select(!(!vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.a, 2u)], true)), select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a, 2u)], global0.c.x), !vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 2u)], global0.c.x, true), !vec4<bool>(false, global1[_wgslsmith_index_u32(58957u, 2u)], false, global0.a.x)), vec4<bool>(484f <= var_1.a, global1[_wgslsmith_index_u32(43919u, 2u)], true, global0.c.x)), (~var_1.b.x == -2147483647i) == all(select(vec4<bool>(true, global1[_wgslsmith_index_u32(59423u, 2u)], false, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 2u)], global1[_wgslsmith_index_u32(u_input.c.x, 2u)], false, true), vec4<bool>(true, false, true, global0.c.x)))));
    return Struct_3(select(var_3.ww, select(!(!global0.a.xy), !select(vec2<bool>(global1[_wgslsmith_index_u32(73604u, 2u)], global1[_wgslsmith_index_u32(u_input.c.x, 2u)]), vec2<bool>(global0.c.x, global0.c.x), var_3.x), true), vec2<bool>(global1[_wgslsmith_index_u32(reverseBits(1u), 2u)], _wgslsmith_f_op_f32(abs(-1000f)) > _wgslsmith_f_op_f32(global0.b.x + -1000f))), Struct_2(vec3<bool>(select(global1[_wgslsmith_index_u32(71440u, 2u)] & false, true, all(vec3<bool>(global0.c.x, global1[_wgslsmith_index_u32(u_input.a, 2u)], false))), global0.c.x, global1[_wgslsmith_index_u32(u_input.c.x, 2u)]), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(var_0 * _wgslsmith_f_op_vec4_f32(-global0.b)))), vec2<bool>(all(vec4<bool>(global0.c.x, true, true, global1[_wgslsmith_index_u32(u_input.c.x, 2u)])), var_3.x)), -abs(-83406i), -abs(~_wgslsmith_mult_i32(-2147483647i, var_1.b.x)), vec4<i32>(u_input.d, global3.x << (_wgslsmith_clamp_u32(u_input.a, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c), _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(16365u, 9318u, u_input.a, u_input.c.x))) % 32u), u_input.b.x, global3.x));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: bool) -> i32 {
    let var_0 = arg_1;
    var var_1 = func_2();
    global3 = vec4<i32>(-3959i, _wgslsmith_dot_vec4_i32(vec4<i32>(-(-65532i << (u_input.a % 32u)), arg_0.a.b.x, global3.x, arg_1.e.x), ~(min(arg_1.e, vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, 12561i)) ^ -vec4<i32>(u_input.d, var_1.d, -29468i, -22367i))), arg_0.a.b.x, _wgslsmith_add_i32(firstTrailingBit(arg_1.e.x), i32(-1i) * -2147483647i));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-991f * -710f) + _wgslsmith_f_op_f32(-arg_1.b.b.x))), countOneBits(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.d, u_input.d), arg_0.a.b, vec2<i32>(3519i, 62290i) | var_0.e.xy))));
    global1 = array<bool, 2>();
    return firstTrailingBit(1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    let var_1 = Struct_1(global4.x, vec2<i32>(u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, -2147483647i, 18101i), ~vec3<i32>(-1i, -2147483647i, global3.x)) ^ 2147483647i));
    var var_2 = 1u;
    var var_3 = global2[_wgslsmith_index_u32(u_input.c.x, 11u)];
    let var_4 = global2[_wgslsmith_index_u32(min((max(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), ~0u) & var_0) << (_wgslsmith_clamp_u32(var_0, firstTrailingBit(1u), (4294967295u | u_input.a) ^ abs(u_input.a)) % 32u), ~var_0), 11u)];
    let x = u_input.a;
    s_output = StorageBuffer(1u, -vec4<i32>(func_1(Struct_4(var_1), Struct_3(vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 2u)]), Struct_2(vec3<bool>(true, false, global1[_wgslsmith_index_u32(1u, 2u)]), vec4<f32>(-1393f, var_3.a.a, 197f, var_4.a.a), global0.c), 45287i, global3.x, vec4<i32>(var_4.a.b.x, -8402i, 16567i, var_4.a.b.x)), u_input.c, all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 2u)], global1[_wgslsmith_index_u32(u_input.a, 2u)], false, true))), var_4.a.b.x, _wgslsmith_mult_i32(-var_1.b.x, ~u_input.d), 0i), -1480f);
}

