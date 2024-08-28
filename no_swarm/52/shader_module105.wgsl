struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<u32, 12>;

var<private> global2: Struct_3 = Struct_3(vec2<f32>(-472f, -569f));

var<private> global3: array<bool, 14>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> vec3<f32> {
    let var_0 = Struct_2(vec2<i32>(21798i, abs(~39848i)), arg_0.c, _wgslsmith_mod_i32(arg_0.c, 2147483647i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-747f * arg_0.d.x), global2.a.x, _wgslsmith_f_op_f32(sign(global2.a.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, -480f, global2.a.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1731f, global2.a.x, arg_0.d.x))))));
    global1 = array<u32, 12>();
    var var_1 = Struct_1(!select(select(vec2<bool>(true, true), select(vec2<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 12u)], 14u)], false), vec2<bool>(global0.x, false), vec2<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 12u)], 14u)], global0.x)), select(vec2<bool>(true, false), vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.a.x, 14u)]), vec2<bool>(true, global3[_wgslsmith_index_u32(26036u, 14u)]))), !select(vec2<bool>(false, false), vec2<bool>(global0.x, global3[_wgslsmith_index_u32(u_input.c, 14u)]), global0.x), !select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.c, 14u)], global0.x), vec2<bool>(global0.x, global3[_wgslsmith_index_u32(u_input.c, 14u)]), vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 14u)], global0.x))), vec2<i32>(-1i, arg_0.b), firstLeadingBit(vec3<i32>(arg_0.a.x, i32(-1i) * -2098i, 1i)) >> (reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(37385u, 0u, 96203u), vec3<u32>(1u, 1u, 1u), firstLeadingBit(vec3<u32>(u_input.a.x, 1u, u_input.c)))) % vec3<u32>(32u)), false);
    global0 = !(!vec2<bool>(global3[_wgslsmith_index_u32(countOneBits(1u), 14u)] != !global3[_wgslsmith_index_u32(0u, 14u)], any(vec4<bool>(true, global0.x, var_1.d, false))));
    var var_2 = ~var_0.b;
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(arg_0.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.d * _wgslsmith_f_op_vec3_f32(trunc(var_0.d)))), select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 14u)])), true), select(select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.a.x, 14u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(47746u, 12u)], 14u)]), true), vec3<bool>(var_1.d, false, true), vec3<bool>(true, true, true)))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<u32>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.d.x, -1000f, arg_2.d.x))) + _wgslsmith_div_vec3_f32(arg_2.d, vec3<f32>(861f, global2.a.x, global2.a.x)))) + _wgslsmith_f_op_vec3_f32(-arg_2.d));
    let var_1 = _wgslsmith_f_op_vec3_f32(func_3(arg_2));
    var var_2 = arg_0.b.x;
    return -(~(vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.b.x, -12502i, 2147483647i, -2147483647i), vec4<i32>(arg_1.b.x, 2147483647i, arg_1.b.x, 15884i))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> vec2<i32> {
    var var_0 = global2.a.x;
    var var_1 = vec4<i32>(-1i) * -vec4<i32>(abs(1i), arg_0.c.x, arg_0.c.x, 1i);
    var_1 = _wgslsmith_div_vec4_i32(reverseBits(func_2(arg_0, arg_0, Struct_2(vec2<i32>(var_1.x, 26131i), var_1.x, var_1.x, vec3<f32>(global2.a.x, -194f, global2.a.x)), firstTrailingBit(u_input.a)) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.c.x, arg_0.b.x, -1i, arg_0.b.x), firstLeadingBit(vec4<i32>(var_1.x, -1i, var_1.x, var_1.x)))), countOneBits(-(~firstLeadingBit(vec4<i32>(arg_0.b.x, 0i, 8249i, 1i)))));
    var_1 = _wgslsmith_add_vec4_i32(countOneBits(select(vec4<i32>(arg_0.b.x, 36842i, firstTrailingBit(arg_0.c.x), 8582i), func_2(arg_0, Struct_1(vec2<bool>(false, arg_0.d), vec2<i32>(2147483647i, 1i), vec3<i32>(-2147483647i, 11219i, arg_0.b.x), arg_1), Struct_2(vec2<i32>(arg_0.c.x, arg_0.c.x), arg_0.c.x, arg_0.c.x, vec3<f32>(global2.a.x, 962f, -467f)), vec2<u32>(31911u, 3811u)) & reverseBits(vec4<i32>(var_1.x, arg_0.b.x, 0i, arg_0.b.x)), !(!vec4<bool>(global0.x, true, global0.x, arg_0.d)))), vec4<i32>(~(~(var_1.x ^ arg_0.b.x)), reverseBits(_wgslsmith_mod_i32(arg_0.c.x, var_1.x) & _wgslsmith_mult_i32(-40554i, 22067i)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(min(0i, arg_0.b.x), -9340i), -1i), var_1.x));
    var_1 = -reverseBits(vec4<i32>(0i, var_1.x, arg_0.c.x, firstLeadingBit(countOneBits(arg_0.b.x))));
    return vec2<i32>(_wgslsmith_add_i32(func_2(Struct_1(vec2<bool>(arg_0.a.x, true), vec2<i32>(var_1.x, arg_0.b.x), vec3<i32>(0i, -1i, 26325i), true), Struct_1(arg_0.a, vec2<i32>(var_1.x, 14191i), var_1.wyx, false), Struct_2(vec2<i32>(var_1.x, 39371i), 1i, arg_0.b.x, vec3<f32>(-185f, global2.a.x, 278f)), vec2<u32>(u_input.b, 15756u)).x >> ((4294967295u | global1[_wgslsmith_index_u32(~0u, 12u)]) % 32u), -24300i), _wgslsmith_dot_vec3_i32(~abs(_wgslsmith_mult_vec3_i32(arg_0.c, var_1.zzx)), vec3<i32>(i32(-1i) * -14561i, -1i, 74619i)));
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    var var_0 = Struct_2(vec2<i32>(-1i, (2147483647i | arg_0.c) | _wgslsmith_dot_vec2_i32(abs(arg_0.a), ~vec2<i32>(18066i, arg_0.b))), -40773i << (_wgslsmith_clamp_u32(0u, u_input.a.x, u_input.a.x) % 32u), ~firstTrailingBit(func_1(Struct_1(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 14u)], global3[_wgslsmith_index_u32(1u, 14u)]), arg_0.a, vec3<i32>(arg_0.c, arg_0.a.x, 1i), global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], 14u)]), !global3[_wgslsmith_index_u32(u_input.b, 14u)]).x), arg_0.d);
    global2 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1543f - _wgslsmith_f_op_f32(-var_0.d.x)), var_0.d.x))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, -856f, -644f, global2.a.x), vec4<f32>(var_0.d.x, 1015f, 195f, arg_0.d.x))))) * vec4<f32>(_wgslsmith_f_op_f32(var_0.d.x * -800f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.a.x + 964f), _wgslsmith_f_op_f32(f32(-1f) * -906f))), 397f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.d.x + -320f), 676f))));
    global3 = array<bool, 14>();
    let var_2 = 0u;
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.x, arg_0.d.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d.x, 165f) * vec2<f32>(arg_0.d.x, var_0.d.x)), global0.x | global3[_wgslsmith_index_u32(u_input.b, 14u)])), var_0.d.xx))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 12>();
    var var_0 = func_4(Struct_2(~(vec2<i32>(-26810i, -2147483647i) >> (vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u))) ^ _wgslsmith_sub_vec2_i32(vec2<i32>(0i, -1i) << (u_input.a % vec2<u32>(32u)), func_1(Struct_1(vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.a.x, 14u)]), vec2<i32>(-1i, 25641i), vec3<i32>(-1i, -44167i, -1i), true), false)), firstLeadingBit(~(-2147483647i)), -1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -126f), _wgslsmith_f_op_f32(min(global2.a.x, global2.a.x)), global2.a.x))));
    global2 = Struct_3(var_0.a);
    var var_1 = ~vec3<u32>(5416u, global1[_wgslsmith_index_u32(105770u, 12u)], firstLeadingBit(0u ^ min(global1[_wgslsmith_index_u32(u_input.c, 12u)], u_input.a.x)));
    global3 = array<bool, 14>();
    var_1 = vec3<u32>(abs(~51122u), 4294967295u, max(1u, countOneBits(var_1.x)) >> (1u % 32u)) | ~firstLeadingBit(vec3<u32>(~0u, u_input.a.x, u_input.c));
    var var_2 = vec3<f32>(-799f, var_0.a.x, _wgslsmith_f_op_f32(294f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a.x), var_0.a.x)));
    let var_3 = global2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(-19876i);
}

