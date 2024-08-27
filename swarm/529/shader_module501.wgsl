struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(true, false, true, false, true, false, true, false, false, true, true, false, true, true, false, true, true, false, false, true, true);

var<private> global1: Struct_2;

var<private> global2: vec3<f32> = vec3<f32>(-867f, -1371f, 1319f);

var<private> global3: array<Struct_1, 15>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = ~vec4<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(72985u, 54239u, 1u, 17451u)) >> ((vec4<u32>(11660u, u_input.a, 4294967295u, global1.c.a.x) << (vec4<u32>(global1.c.a.x, u_input.a, u_input.a, global1.c.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 60079u, u_input.a, global1.c.a.x) & vec4<u32>(u_input.a, 11534u, global1.c.a.x, 1u))), 0u, _wgslsmith_sub_u32(global1.c.a.x, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a, global1.c.a.x, 4294967295u, 29209u)), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.c.a.x, 37837u, 47987u, 0u), vec4<u32>(1u, 0u, 4294967295u, global1.c.a.x)))), ~(~0u));
    var var_1 = global3[_wgslsmith_index_u32(global1.c.a.x, 15u)];
    let var_2 = global3[_wgslsmith_index_u32(var_0.x, 15u)];
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1264f, _wgslsmith_div_f32(global1.b.x, -181f), global1.b.x))) * vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1256f - _wgslsmith_f_op_f32(sign(1252f))))), 425f, _wgslsmith_f_op_f32(sign(global1.b.x))));
    return ~firstTrailingBit(43563u) != global1.c.a.x;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec4<u32>, arg_3: vec3<i32>) -> vec3<f32> {
    global2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.b.x)) - 300f), global1.b.x, _wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(179f, global2.x, -543f), vec3<f32>(global1.b.x, -438f, 1000f), false)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(282f, global1.b.x, global1.b.x))), vec3<f32>(2363f, _wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(abs(740f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(800f, -1000f, 749f) - vec3<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-750f, -446f, arg_0.b.x)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.b.x, -666f, -154f)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.b.x, global1.b.x, -949f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-866f, global1.b.x, global2.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(510f, -1117f, -153f))))), arg_0.a));
    global3 = array<Struct_1, 15>();
    let var_0 = global1.e;
    var var_1 = arg_2.xz >> ((_wgslsmith_sub_vec2_u32(global1.c.a, ~(global1.c.a ^ vec2<u32>(4294967295u, 4294967295u))) << (~_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a, arg_0.c.a.x), vec2<u32>(11982u, arg_2.x)) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_2 = arg_0;
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global1.b.x, 1000f) + vec3<f32>(global1.b.x, global2.x, 1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.b.x, arg_0.b.x, -1000f), vec3<f32>(1431f, 1542f, -1568f), false))))) * vec3<f32>(-991f, _wgslsmith_f_op_f32(var_2.b.x - _wgslsmith_f_op_f32(min(arg_0.b.x, -1856f))), global1.b.x))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec2<bool>) -> vec3<f32> {
    var var_0 = 4294967295u;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -657f) == _wgslsmith_f_op_f32(ceil(global1.b.x));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(Struct_2(select(vec3<bool>(false, true, true), global1.a, vec3<bool>(var_1, true, arg_3.x)), vec2<f32>(-1284f, _wgslsmith_f_op_f32(exp2(arg_1.b.x))), global3[_wgslsmith_index_u32(0u, 15u)], arg_1.d, global1.e), !(!vec4<bool>(arg_1.a.x, true, global0[_wgslsmith_index_u32(46312u, 21u)], arg_3.x)), ~(~vec4<u32>(arg_0.a.x, arg_1.c.a.x, 0u, 70474u)), select(vec3<i32>(10784i, 6486i, arg_1.e), vec3<i32>(45044i, arg_1.e, arg_1.e), func_3()) | ~_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.e, global1.e, -26677i), vec3<i32>(arg_1.e, arg_1.e, 1i)))));
    global3 = array<Struct_1, 15>();
    let var_2 = global3[_wgslsmith_index_u32(~4294967295u, 15u)];
    return _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1320f, global1.b.x, arg_1.b.x), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.x, arg_1.b.x, -516f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-626f, 795f, global1.b.x)), var_1))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2368f), global2.x, _wgslsmith_f_op_f32(-global2.x)));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<bool>) -> Struct_2 {
    var var_0 = vec2<i32>(-1i) * -firstLeadingBit(-_wgslsmith_div_vec2_i32(vec2<i32>(global1.e, global1.e), vec2<i32>(global1.e, global1.e)));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, -1025f, global1.b.x) + _wgslsmith_f_op_vec3_f32(func_2(Struct_1(global1.c.a), Struct_2(global1.a, global1.b, global3[_wgslsmith_index_u32(global1.c.a.x, 15u)], true, -69392i), vec2<bool>(false, arg_1.x), vec2<bool>(true, arg_0.x)))), vec3<f32>(-148f, _wgslsmith_f_op_f32(f32(-1f) * -466f), global1.b.x)) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_2(Struct_1(vec2<u32>(13833u, global1.c.a.x)), Struct_2(vec3<bool>(arg_1.x, arg_0.x, true), global2.yx, global1.c, false, 38407i), select(vec2<bool>(arg_0.x, true), vec2<bool>(arg_0.x, false), vec2<bool>(global1.d, global1.a.x)), vec2<bool>(false, false)))))));
    global1 = Struct_2(!select(vec3<bool>(-999f < global1.b.x, true, true), vec3<bool>(true, !arg_0.x, true), true), vec2<f32>(1314f, global2.x), Struct_1(~global1.c.a), true, ~(-1i));
    global0 = array<bool, 21>();
    global3 = array<Struct_1, 15>();
    return Struct_2(global1.a, vec2<f32>(_wgslsmith_f_op_f32(ceil(-495f)), -1081f), global3[_wgslsmith_index_u32(firstTrailingBit(~22021u), 15u)], all(select(select(arg_1, vec3<bool>(arg_1.x, global1.a.x, global1.d), select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(0u, 21u)]), global1.a, global1.a)), global1.a, vec3<bool>(func_3(), arg_1.x, arg_1.x && global1.a.x))), _wgslsmith_sub_i32(4989i, 9262i));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec4<f32>) -> bool {
    global1 = func_1(select(global1.a.yz, vec2<bool>(global0[_wgslsmith_index_u32(4294967295u | (global1.c.a.x >> (u_input.a % 32u)), 21u)], all(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 21u)], true, true, global1.d))), false), vec3<bool>(((global0[_wgslsmith_index_u32(arg_2.c.a.x, 21u)] & false) && true) && !arg_1.x, !any(select(vec2<bool>(true, arg_2.d), vec2<bool>(false, false), global0[_wgslsmith_index_u32(1u, 21u)])), any(!vec4<bool>(arg_1.x, false, arg_2.a.x, false))));
    var var_0 = -141f;
    let var_1 = func_1(global1.a.xy, global1.a);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.zy - var_1.b)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global2.xz))));
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-955f * 2007f) - _wgslsmith_f_op_f32(var_2.x * arg_2.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(399f, _wgslsmith_f_op_f32(select(432f, _wgslsmith_div_f32(global2.x, global2.x), global1.d & global1.d))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(447f - arg_3.x)))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 15>();
    global0 = array<bool, 21>();
    var var_0 = true;
    var var_1 = ~(~global1.c.a.x | global1.c.a.x);
    var var_2 = func_5(global1.c.a, vec3<bool>(global0[_wgslsmith_index_u32(global1.c.a.x << (_wgslsmith_dot_vec2_u32(global1.c.a, vec2<u32>(global1.c.a.x, global1.c.a.x)) % 32u), 21u)], select(false, global1.a.x, any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 21u)], false, false))), !global0[_wgslsmith_index_u32(global1.c.a.x, 21u)]), func_1(!vec2<bool>(global1.a.x, global0[_wgslsmith_index_u32(global1.c.a.x, 21u)]), global1.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(658f, -647f, -229f, -527f) + vec4<f32>(595f, -1729f, -192f, global1.b.x)), _wgslsmith_div_vec4_f32(vec4<f32>(global2.x, -398f, -647f, -2227f), vec4<f32>(global1.b.x, 525f, 1686f, -1799f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global2.x, global1.b.x, 1443f))))) || (global1.e != countOneBits(_wgslsmith_mult_i32(global1.e, -27625i)));
    global3 = array<Struct_1, 15>();
    global1 = Struct_2(vec3<bool>(global1.d || any(select(vec4<bool>(global1.a.x, global1.a.x, global1.d, global1.d), vec4<bool>(false, false, global0[_wgslsmith_index_u32(0u, 21u)], global1.d), vec4<bool>(true, true, global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(1u, 21u)]))), !(-193f == _wgslsmith_f_op_f32(1063f - global2.x)), global1.d), _wgslsmith_f_op_vec2_f32(floor(global2.yy)), global3[_wgslsmith_index_u32(max(global1.c.a.x, global1.c.a.x), 15u)], global1.d, -_wgslsmith_clamp_i32(global1.e, 0i, ~abs(-42108i)));
    var var_3 = global1.c;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-_wgslsmith_mult_i32(i32(-1i) * -4913i, global1.e)), _wgslsmith_sub_vec4_i32(abs(select(~vec4<i32>(25631i, -17776i, 6914i, global1.e), vec4<i32>(0i, global1.e, global1.e, global1.e) & vec4<i32>(2147483647i, global1.e, 2147483647i, 11752i), global0[_wgslsmith_index_u32(var_3.a.x >> (1u % 32u), 21u)])), vec4<i32>(~_wgslsmith_add_i32(global1.e, 21848i), firstLeadingBit(-9852i), 1i, global1.e)), vec2<f32>(1179f, _wgslsmith_f_op_f32(-global2.x)));
}

