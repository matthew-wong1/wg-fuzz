struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1>;

var<private> global1: f32;

var<private> global2: array<u32, 1> = array<u32, 1>(34747u);

var<private> global3: array<Struct_5, 25> = array<Struct_5, 25>(Struct_5(vec2<f32>(1554f, -257f), true, true), Struct_5(vec2<f32>(280f, 1000f), false, false), Struct_5(vec2<f32>(1063f, -1095f), true, false), Struct_5(vec2<f32>(550f, 694f), false, true), Struct_5(vec2<f32>(305f, 1415f), true, true), Struct_5(vec2<f32>(-1552f, -378f), false, true), Struct_5(vec2<f32>(-1742f, 139f), true, false), Struct_5(vec2<f32>(987f, 1032f), false, true), Struct_5(vec2<f32>(-1006f, 1101f), false, false), Struct_5(vec2<f32>(101f, -1000f), false, false), Struct_5(vec2<f32>(1362f, 590f), true, true), Struct_5(vec2<f32>(-1282f, -233f), false, true), Struct_5(vec2<f32>(838f, 258f), false, false), Struct_5(vec2<f32>(875f, 1000f), true, false), Struct_5(vec2<f32>(-230f, -699f), false, false), Struct_5(vec2<f32>(398f, -188f), false, true), Struct_5(vec2<f32>(715f, 728f), false, true), Struct_5(vec2<f32>(625f, 641f), true, true), Struct_5(vec2<f32>(-240f, -805f), true, true), Struct_5(vec2<f32>(1184f, -1000f), true, true), Struct_5(vec2<f32>(1022f, -736f), true, false), Struct_5(vec2<f32>(-1597f, -341f), true, false), Struct_5(vec2<f32>(1000f, -1010f), true, true), Struct_5(vec2<f32>(239f, -1000f), false, false), Struct_5(vec2<f32>(-152f, 154f), false, false));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -382f))), ~(~1u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(abs(global2[_wgslsmith_index_u32(1u, 1u)]), global2[_wgslsmith_index_u32(0u, 1u)] >> (u_input.a % 32u)), u_input.e.wy), !(!arg_0.a));
    return false;
}

fn func_2(arg_0: Struct_5, arg_1: vec3<i32>, arg_2: vec4<f32>, arg_3: vec4<u32>) -> Struct_1 {
    global2 = array<u32, 1>();
    global2 = array<u32, 1>();
    var var_0 = select(vec4<u32>(46699u, ~(~1u), u_input.a, _wgslsmith_sub_u32(u_input.e.x, 4294967295u)), arg_3, select(!vec4<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(0u, 1u)], arg_0.c, arg_0.c, false)), true, false | arg_0.b, func_3(Struct_4(false, vec3<i32>(0i, arg_1.x, arg_1.x), -2147483647i, arg_0.b, u_input.b.x))), select(!(!vec4<bool>(false, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(43518u, 1u)], 1u)], true, true)), select(!vec4<bool>(arg_0.c, true, false, global0[_wgslsmith_index_u32(u_input.e.x, 1u)]), vec4<bool>(true, arg_0.c, global0[_wgslsmith_index_u32(u_input.a, 1u)], false), global0[_wgslsmith_index_u32(0u, 1u)]), select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 1u)], arg_0.c, global0[_wgslsmith_index_u32(1u, 1u)], false), !vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 1u)], arg_0.b, false), select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 1u)], true, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12667u, 1u)], 1u)], false), vec4<bool>(false, true, false, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 1u)], true, arg_0.b, false)))), any(select(vec4<bool>(global0[_wgslsmith_index_u32(arg_3.x, 1u)], arg_0.b, arg_0.b, global0[_wgslsmith_index_u32(0u, 1u)]), !vec4<bool>(global0[_wgslsmith_index_u32(77224u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(76546u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)]), arg_0.c))));
    let var_1 = arg_2;
    let var_2 = select(!arg_0.c, true, all(!vec3<bool>(true, arg_0.c, !global0[_wgslsmith_index_u32(var_0.x, 1u)])));
    return Struct_1(_wgslsmith_f_op_f32(111f * 1f), ~u_input.a, 1u, true);
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: f32) -> f32 {
    global1 = 678f;
    let var_0 = func_2(global3[_wgslsmith_index_u32(u_input.e.x, 25u)], _wgslsmith_div_vec3_i32(arg_1.ywz, -vec3<i32>(max(7341i, u_input.d.x), _wgslsmith_div_i32(u_input.b.x, 22693i), 1i << (u_input.e.x % 32u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(arg_2, _wgslsmith_f_op_f32(757f + arg_2))), _wgslsmith_f_op_f32(trunc(267f)), -201f, -1000f) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-734f, 779f, -162f, 1104f) - vec4<f32>(284f, arg_2, arg_2, arg_2)))))), ~reverseBits(~abs(vec4<u32>(4294967295u, 31399u, u_input.e.x, global2[_wgslsmith_index_u32(1u, 1u)]))));
    global0 = array<bool, 1>();
    global3 = array<Struct_5, 25>();
    global2 = array<u32, 1>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-204f, -145f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(1426f, -780f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-939f)), _wgslsmith_f_op_f32(f32(-1f) * -557f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-791f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(1f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(u_input.c, -vec4<i32>(u_input.d.x, u_input.c, 2147483647i, u_input.d.x), -684f))))), 1f);
    let var_1 = _wgslsmith_mult_vec4_i32(-vec4<i32>(min(1i, 0i), -u_input.c, ~1i, _wgslsmith_dot_vec2_i32(u_input.d.xz | u_input.b, vec2<i32>(-2147483647i, 35744i))), min(~(vec4<i32>(u_input.b.x, 0i, u_input.b.x, -30179i) ^ vec4<i32>(u_input.d.x, u_input.c, -6425i, u_input.d.x)), vec4<i32>(_wgslsmith_div_i32(u_input.d.x, 1i), -23645i, ~u_input.d.x, 2147483647i)) ^ firstTrailingBit(countOneBits(vec4<i32>(-1i, -2147483647i, u_input.c, 2147483647i))));
    let var_2 = Struct_4(!global0[_wgslsmith_index_u32(~min(_wgslsmith_dot_vec3_u32(u_input.e.xwx, u_input.e.yzz), u_input.a), 1u)], u_input.d, -_wgslsmith_mult_i32(2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.x, -29291i, u_input.d.x), vec3<i32>(0i, var_1.x, 21004i)), select(vec3<i32>(-26933i, u_input.c, u_input.c), var_1.wyw, vec3<bool>(true, global0[_wgslsmith_index_u32(20333u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)])))), false, _wgslsmith_add_i32(~var_1.x, ~var_1.x));
    var var_3 = _wgslsmith_add_i32(abs(~1i), 31210i);
    global0 = array<bool, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.yy, u_input.d, vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), all(vec3<bool>(var_2.d, true, false)))), 576f, 1000f), var_1.x, vec3<f32>(var_0.x, _wgslsmith_div_f32(1216f, var_0.x), -1291f));
}

