struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: Struct_3,
    d: bool,
    e: Struct_1,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_3,
    c: f32,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17>;

var<private> global1: array<vec4<u32>, 2> = array<vec4<u32>, 2>(vec4<u32>(35351u, 52332u, 4294967295u, 1u), vec4<u32>(1u, 1u, 59170u, 4294967295u));

var<private> global2: vec3<f32> = vec3<f32>(-1000f, -1276f, -1000f);

var<private> global3: f32 = -221f;

var<private> global4: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(789f, vec2<u32>(26714u, 7524u), vec2<i32>(-39706i, 7505i)), Struct_1(235f, vec2<u32>(4294967295u, 58447u), vec2<i32>(-1i, -1i)), Struct_1(-618f, vec2<u32>(4294967295u, 39218u), vec2<i32>(0i, 1i)), Struct_1(1000f, vec2<u32>(18195u, 17264u), vec2<i32>(1i, -4447i)), Struct_1(2310f, vec2<u32>(8333u, 67472u), vec2<i32>(0i, -12997i)), Struct_1(-1025f, vec2<u32>(45806u, 8377u), vec2<i32>(8797i, -6053i)), Struct_1(789f, vec2<u32>(4294967295u, 17101u), vec2<i32>(25899i, 5604i)), Struct_1(-895f, vec2<u32>(0u, 37965u), vec2<i32>(-14165i, i32(-2147483648))), Struct_1(1740f, vec2<u32>(2235u, 4294967295u), vec2<i32>(26738i, 2147483647i)), Struct_1(1132f, vec2<u32>(7906u, 13941u), vec2<i32>(-1i, 1i)), Struct_1(996f, vec2<u32>(33776u, 26660u), vec2<i32>(0i, -19849i)), Struct_1(105f, vec2<u32>(4294967295u, 0u), vec2<i32>(6686i, -2218i)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> f32 {
    global0 = array<bool, 17>();
    let var_0 = select(vec3<bool>(arg_0, any(vec2<bool>(true, true)), global0[_wgslsmith_index_u32(0u, 17u)]), select(select(!vec3<bool>(global0[_wgslsmith_index_u32(61216u, 17u)], false, global0[_wgslsmith_index_u32(0u, 17u)]), vec3<bool>(u_input.a.x <= u_input.b.x, all(vec3<bool>(arg_0, true, arg_0)), !global0[_wgslsmith_index_u32(21703u, 17u)]), global0[_wgslsmith_index_u32(75325u, 17u)]), vec3<bool>(!arg_0, all(vec3<bool>(false, false, global0[_wgslsmith_index_u32(28688u, 17u)])), global0[_wgslsmith_index_u32(~688u, 17u)] == arg_0), _wgslsmith_f_op_f32(-2082f + _wgslsmith_div_f32(global2.x, global2.x)) < 1104f), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(vec3<bool>(false, false, arg_0), vec3<bool>(true, false, true), global0[_wgslsmith_index_u32(38924u, 17u)])), !vec3<bool>(arg_0, !global0[_wgslsmith_index_u32(3807u, 17u)], arg_0), vec3<bool>(true, false, arg_0)));
    let var_1 = Struct_5(u_input.b, Struct_3(vec3<f32>(-464f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -126f), vec2<u32>(abs(0u), 103784u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(global2.x + -2880f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(global2.x))))))), _wgslsmith_f_op_f32(trunc(global2.x)), vec2<u32>(1u, 50710u));
    let var_2 = -(vec3<i32>(-u_input.b.x, 0i, min(var_1.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(9958i, u_input.a.x, 1i, var_1.a.x), vec4<i32>(u_input.b.x, -24390i, u_input.b.x, u_input.a.x)))) | ((_wgslsmith_div_vec3_i32(u_input.b.wzy, var_1.a.xxx) & vec3<i32>(var_1.a.x, -42546i, -34623i)) | select(u_input.a, -vec3<i32>(-2147483647i, var_1.a.x, 1i), select(var_0.x, arg_0, global0[_wgslsmith_index_u32(42187u, 17u)]))));
    global0 = array<bool, 17>();
    return _wgslsmith_f_op_f32(ceil(global2.x));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: i32) -> Struct_2 {
    global3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1043f - 1426f)) <= _wgslsmith_f_op_f32(734f - _wgslsmith_f_op_f32(global2.x + global2.x))))));
    global4 = array<Struct_1, 12>();
    let var_0 = ~arg_0;
    var var_1 = _wgslsmith_sub_vec4_i32(~u_input.b, vec4<i32>(u_input.b.x, countOneBits(_wgslsmith_sub_i32(arg_2 & u_input.b.x, min(-9412i, 330i))), ~0i, ~_wgslsmith_mult_i32(0i, _wgslsmith_mult_i32(1i, u_input.a.x))));
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(491f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.x), -397f, !global0[_wgslsmith_index_u32(19861u, 17u)]))))));
    return Struct_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, 456f, global2.x) + vec3<f32>(global2.x, global2.x, -3002f))) - vec3<f32>(-487f, _wgslsmith_f_op_f32(floor(-870f)), _wgslsmith_f_op_f32(f32(-1f) * -182f))))));
}

fn func_1(arg_0: vec2<f32>) -> i32 {
    var var_0 = func_2(_wgslsmith_mult_u32(~(~1u), ~1u), ~0u, 18310i);
    var var_1 = firstLeadingBit(vec2<i32>(1i, select(u_input.b.x, _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.b.x), all(select(vec2<bool>(false, global0[_wgslsmith_index_u32(45511u, 17u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 17u)], true), false)))));
    let var_2 = 401f;
    var_1 = vec2<i32>(var_1.x, -firstLeadingBit(~(~(-1i))));
    var_0 = func_2(_wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_mult_u32(1u, reverseBits(29883u))), ~_wgslsmith_div_u32(1u, ~13246u)), ~14200u, ~(1i | (var_1.x & -u_input.b.x)));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec3_i32(u_input.b.zyx, -vec3<i32>(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x))), ~u_input.b.x, i32(-1i) * -u_input.b.x), firstLeadingBit(_wgslsmith_div_vec3_i32(~(u_input.a & vec3<i32>(19284i, u_input.b.x, -1i)), u_input.a)));
    var var_1 = Struct_5(-vec4<i32>(i32(-1i) * -31482i, _wgslsmith_div_i32(-2147483647i, var_0.x), u_input.b.x, abs(-1i)) ^ vec4<i32>(-abs(3141i), 16609i, var_0.x, -26257i), Struct_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, 953f) - vec3<f32>(-699f, -460f, global2.x))))), ~firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(21975u, 6947u), vec2<u32>(43464u, 0u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(f32(-1f) * -1065f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1633f) - _wgslsmith_div_f32(1532f, _wgslsmith_f_op_f32(sign(global2.x))))), _wgslsmith_f_op_f32(floor(1646f)), ~(~(~vec2<u32>(1u, 1u))));
    global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.b.a.x))), 216f);
    var var_2 = global2.yz;
    global2 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(func_3(!global0[_wgslsmith_index_u32(var_1.e.x, 17u)] && all(vec3<bool>(global0[_wgslsmith_index_u32(var_1.b.b.x, 17u)], true, global0[_wgslsmith_index_u32(32479u, 17u)])))), _wgslsmith_f_op_f32(var_1.c * _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -229f) - _wgslsmith_f_op_f32(sign(global2.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(119f, var_1.c, -832f)))))));
    var var_3 = -67253i;
    var var_4 = 1836f;
    let x = u_input.a;
    s_output = StorageBuffer(max(reverseBits(global1[_wgslsmith_index_u32(max(var_1.b.b.x, ~var_1.e.x), 2u)]), global1[_wgslsmith_index_u32(var_1.b.b.x, 2u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.x * var_2.x))) - _wgslsmith_f_op_f32(-global2.x))), -((vec4<i32>(-1i) * -vec4<i32>(12377i, 2147483647i, var_0.x, -2147483647i)) >> (~max(vec4<u32>(1u, 29056u, var_1.e.x, var_1.e.x), global1[_wgslsmith_index_u32(34129u, 2u)]) % vec4<u32>(32u))));
}

