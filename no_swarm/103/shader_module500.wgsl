struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_2 = Struct_2(vec4<i32>(-1i, 33960i, -1i, 0i));

var<private> global2: u32 = 5567u;

var<private> global3: array<i32, 1> = array<i32, 1>(1i);

var<private> global4: bool = true;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec4<u32>, arg_1: i32) -> Struct_1 {
    global1 = Struct_2(global1.a);
    let var_0 = ~(vec2<u32>(arg_0.x, ~(global0.x << (arg_0.x % 32u))) << (u_input.b.ww % vec2<u32>(32u)));
    var var_1 = ~_wgslsmith_sub_vec4_u32(abs(firstLeadingBit(vec4<u32>(1u, 0u, 53419u, global0.x))), arg_0);
    let var_2 = ~arg_0.yzx;
    let var_3 = reverseBits(global1.a.wzz);
    return Struct_1(vec2<bool>(true, true), ~_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(reverseBits(global1.a.xy), var_3.yy), _wgslsmith_clamp_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(arg_0.x, 1u)], global1.a.x) >> (u_input.b.wx % vec2<u32>(32u)), vec2<i32>(global1.a.x, -26483i), select(var_3.yy, vec2<i32>(7569i, 2147483647i), false))));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(!func_2(vec4<u32>(~global0.x, ~global0.x, ~u_input.a, 58210u), _wgslsmith_mult_i32(reverseBits(-1i), global3[_wgslsmith_index_u32(global0.x, 1u)])).a, global1.a.xz);
    var var_1 = ~_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_div_i32(29939i, -2147483647i), -2147483647i, var_0.b.x), ~global1.a.zzw) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(~24011u | (global0.x << (48795u % 32u)), ~4294967295u >> (1u % 32u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.b.wxw, u_input.b.xxz), ~global0.x, ~u_input.b.x)), u_input.b.zxw) % vec3<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-513f, 493f, 1390f))))))))));
    global0 = abs(u_input.b.xy);
    let var_3 = true;
    return ~_wgslsmith_sub_u32(u_input.c, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> bool {
    global2 = 4294967295u;
    var var_0 = (-countOneBits(vec3<i32>(global3[_wgslsmith_index_u32(arg_2, 1u)], -25354i, arg_1.b.x)) ^ _wgslsmith_div_vec3_i32(vec3<i32>(22165i, -1i, ~global3[_wgslsmith_index_u32(u_input.c, 1u)]), vec3<i32>(reverseBits(arg_1.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b.x, global3[_wgslsmith_index_u32(0u, 1u)], global3[_wgslsmith_index_u32(79455u, 1u)], global1.a.x), global1.a), i32(-1i) * -2147483647i))) & -global1.a.xyw;
    var var_1 = arg_1;
    var_1 = func_2(vec4<u32>(38440u, 0u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 0u, u_input.b.x), vec3<u32>(arg_2, arg_0, global0.x)), abs(max(u_input.b.www, u_input.b.xyy))), ~max(60009u, abs(arg_0))), firstLeadingBit(i32(-1i) * -2147483647i));
    let var_2 = all(!vec4<bool>(func_2(_wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(79107u, 4294967295u, arg_2, 53861u)), _wgslsmith_mult_i32(18675i, 1i)).a.x, var_1.a.x, false, all(select(vec3<bool>(false, arg_1.a.x, false), vec3<bool>(var_1.a.x, arg_1.a.x, false), arg_1.a.x))));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(global1.a.xyy, global1.a.yzw), var_0.x), vec2<i32>(51941i, i32(-1i) * -2147483647i)) < ~_wgslsmith_mult_i32(-7891i ^ _wgslsmith_clamp_i32(global1.a.x, 0i, var_1.b.x), global1.a.x);
}

fn func_1() -> i32 {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(832f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) * _wgslsmith_f_op_f32(ceil(346f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-460f, 777f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(771f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(518f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1704f) * _wgslsmith_div_f32(467f, 957f))) + -278f));
    global4 = var_0.x == _wgslsmith_f_op_f32(-524f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), -1644f));
    var var_1 = vec3<bool>(func_4(u_input.c, func_2(~firstLeadingBit(vec4<u32>(u_input.b.x, 17258u, global0.x, 4294967295u)), -_wgslsmith_mod_i32(global3[_wgslsmith_index_u32(u_input.a, 1u)], global1.a.x)), func_3()), true, true);
    return abs(-_wgslsmith_sub_i32(-global1.a.x, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a.x >= abs(_wgslsmith_mod_i32(max(_wgslsmith_mod_i32(global1.a.x, 1i), ~global3[_wgslsmith_index_u32(0u, 1u)]), -_wgslsmith_sub_i32(-2147483647i, global1.a.x)));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1000f, -1330f, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(236f - -174f) * _wgslsmith_f_op_f32(f32(-1f) * -329f)), _wgslsmith_f_op_f32(sign(1122f))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1824f, 302f) * _wgslsmith_f_op_f32(f32(-1f) * -331f)) - _wgslsmith_div_f32(-1275f, -884f)), _wgslsmith_f_op_f32(-1f), -205f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    global1 = Struct_2(vec4<i32>(-_wgslsmith_mod_i32(~20724i, _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(58936u, 1u)], 0i)), ~global1.a.x, _wgslsmith_div_i32(~countOneBits(global3[_wgslsmith_index_u32(0u, 1u)]), countOneBits(1i)), func_1()));
    var var_3 = ~(~u_input.b.xy);
    let var_4 = func_2(u_input.b, -(-6044i & _wgslsmith_dot_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(2312u, 1u)], global1.a.x, -2147483647i, global3[_wgslsmith_index_u32(16634u, 1u)]), vec4<i32>(29061i, 4989i, global1.a.x, global3[_wgslsmith_index_u32(var_3.x, 1u)]))) ^ -22276i);
    let var_5 = var_3.x;
    global1 = Struct_2(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, global3[_wgslsmith_index_u32(u_input.c, 1u)], ~global3[_wgslsmith_index_u32(12981u, 1u)], 1894i), -global1.a), -vec4<i32>(global3[_wgslsmith_index_u32(var_3.x, 1u)], _wgslsmith_sub_i32(global1.a.x, global1.a.x), 23619i, ~global3[_wgslsmith_index_u32(16667u, 1u)])));
    var var_6 = vec3<u32>(_wgslsmith_add_u32(~43204u, var_3.x), var_3.x >> ((~(~16540u) | global0.x) % 32u), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~firstLeadingBit(u_input.a), global0.x), vec3<i32>(0i, _wgslsmith_div_i32(i32(-1i) * -47098i, ~2147483647i), ~abs(var_4.b.x)) | global1.a.wzy, var_2.x, 298f);
}

