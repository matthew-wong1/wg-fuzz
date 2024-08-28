struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<bool>(false, true), Struct_1(false), 406f, Struct_1(true));

var<private> global1: vec4<i32> = vec4<i32>(-71461i, 2147483647i, 15067i, 25844i);

var<private> global2: array<f32, 1>;

var<private> global3: Struct_1;

var<private> global4: i32 = 0i;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: bool) -> vec4<bool> {
    var var_0 = Struct_3(vec3<u32>(arg_0, ~(arg_0 << (~0u % 32u)), firstLeadingBit(_wgslsmith_div_u32(arg_0, ~arg_0))), _wgslsmith_clamp_u32(81410u, _wgslsmith_div_u32(arg_0 << (arg_0 % 32u), 1u), 63378u) ^ ~(~(~arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-607f * _wgslsmith_f_op_f32(-global0.c))))), Struct_2(select(global0.a, select(!vec2<bool>(false, global0.d.a), !vec2<bool>(global3.a, false), global0.a), !(!global0.b.a)), global0.d, _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(abs(arg_0), 1u)], global2[_wgslsmith_index_u32(~arg_0, 1u)])), global0.b), Struct_1(0i >= arg_1.x));
    var_0 = Struct_3(reverseBits(_wgslsmith_add_vec3_u32(var_0.a, ~var_0.a)) ^ var_0.a, abs(var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.c, global0.c))) + global0.c)), var_0.d, Struct_1(!any(vec3<bool>(global0.a.x, global3.a, arg_2))));
    let var_1 = u_input.a;
    let var_2 = var_0.d;
    var var_3 = 1u;
    return !select(vec4<bool>(true, !(9586i > u_input.c.x), true, false), select(vec4<bool>(arg_2, false, true, true), vec4<bool>(any(vec4<bool>(true, false, true, true)), all(vec3<bool>(global3.a, var_2.b.a, true)), all(vec4<bool>(false, true, global0.b.a, true)), any(vec2<bool>(arg_2, true))), true), !(global0.b.a || all(vec2<bool>(global3.a, var_0.d.d.a))));
}

fn func_2() -> Struct_1 {
    let var_0 = select(!(!select(!vec4<bool>(global3.a, false, global0.b.a, global0.d.a), func_3(26434u, u_input.b.yx, global3.a), !vec4<bool>(global0.d.a, global3.a, false, true))), func_3(firstLeadingBit(1u) << (_wgslsmith_mod_u32(firstLeadingBit(0u), 1u) % 32u), _wgslsmith_clamp_vec2_i32(vec2<i32>(-43690i, u_input.b.x), vec2<i32>(_wgslsmith_mod_i32(2147483647i, global1.x), -u_input.b.x), abs(vec2<i32>(u_input.c.x, global1.x)) | _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, u_input.c.x), global1.wy)), !(!(!global3.a))), !vec4<bool>(func_3(49085u, vec2<i32>(-2147483647i, u_input.c.x), global3.a).x, global2[_wgslsmith_index_u32(37815u, 1u)] < _wgslsmith_div_f32(117f, 224f), true, global0.d.a));
    var var_1 = !select(vec2<bool>(var_0.x, (var_0.x || var_0.x) & (global0.a.x && global0.d.a)), select(vec2<bool>(all(vec2<bool>(false, false)), true), func_3(35733u, ~vec2<i32>(u_input.b.x, u_input.b.x), true).wx, global0.a.x), !global3.a);
    var var_2 = abs(max(_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.b.x, global1.x, -50698i, u_input.a), select(-vec4<i32>(global1.x, u_input.b.x, u_input.c.x, 1i), -vec4<i32>(global1.x, 17077i, global1.x, -2147483647i), vec4<bool>(global3.a, var_1.x, var_1.x, false))), ((vec4<i32>(-15924i, 0i, -1i, 1i) | vec4<i32>(global1.x, -21950i, u_input.a, -8954i)) ^ (vec4<i32>(u_input.b.x, -1i, u_input.a, 0i) << (vec4<u32>(41067u, 34174u, 4294967295u, 1u) % vec4<u32>(32u)))) >> (countOneBits(vec4<u32>(4294967295u, 0u, 4294967295u, 11199u)) % vec4<u32>(32u))));
    let var_3 = vec2<i32>(var_2.x, u_input.c.x);
    var_1 = func_3(1u, global1.wx, global3.a).zy;
    return global0.d;
}

fn func_1(arg_0: bool, arg_1: vec2<bool>, arg_2: i32) -> bool {
    var var_0 = Struct_2(vec2<bool>(true, any(!(!vec2<bool>(true, arg_0)))), func_2(), _wgslsmith_div_f32(global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-378f, global0.c, any(vec3<bool>(false, false, false)))) - _wgslsmith_f_op_f32(-global0.c))), global0.d);
    return true;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec3<u32>) -> vec4<bool> {
    let var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(~select(global1.x, 26585i, false), u_input.b.x, ~(~(-2147483647i)), u_input.c.x), vec4<i32>(abs(2147483647i), -(u_input.a & global1.x), abs(_wgslsmith_sub_i32(global1.x, 1i)), _wgslsmith_sub_i32(firstTrailingBit(2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -719i, 2147483647i, global1.x), vec4<i32>(global1.x, 2147483647i, global1.x, global1.x))))), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, min(_wgslsmith_dot_vec4_i32(vec4<i32>(-50091i, u_input.c.x, global1.x, u_input.a), vec4<i32>(u_input.c.x, global1.x, global1.x, u_input.b.x)), global1.x), abs(2147483647i) >> (countOneBits(arg_1.a.x) % 32u), _wgslsmith_sub_i32(2147483647i << (arg_1.a.x % 32u), 78879i)), _wgslsmith_mod_vec4_i32(abs(~vec4<i32>(global1.x, u_input.a, -19075i, global1.x)), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global1.x, 31642i, u_input.a, -1i), vec4<i32>(1i, 14376i, 1i, -45422i)), vec4<i32>(u_input.b.x, u_input.b.x, -59062i, u_input.a)))));
    let var_1 = Struct_2(vec2<bool>(true, global0.a.x), arg_0.b, _wgslsmith_div_f32(-219f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) - _wgslsmith_f_op_f32(1982f + _wgslsmith_f_op_f32(-arg_1.c)))), func_2());
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_1.c, 779f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.c * arg_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1169f, 1000f)), var_1.c) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.c, global2[_wgslsmith_index_u32(9308u, 1u)], -219f, var_1.c), vec4<f32>(584f, var_1.c, arg_0.c, -553f)))))));
    global2 = array<f32, 1>();
    var var_3 = Struct_2(select(arg_1.d.a, vec2<bool>(true, !(arg_0.c < -1011f)), arg_1.d.a), var_1.b, _wgslsmith_f_op_f32(1334f * 498f), func_2());
    return select(func_3(abs(4294967295u), -firstTrailingBit(vec2<i32>(global1.x, 45315i)), var_1.c < global0.c), select(func_3(~_wgslsmith_dot_vec2_u32(arg_1.a.zz, arg_1.a.xy), vec2<i32>(u_input.c.x, var_0.x) | _wgslsmith_div_vec2_i32(vec2<i32>(-25321i, global1.x), vec2<i32>(var_0.x, 40305i)), var_3.b.a), !(!vec4<bool>(global0.a.x, false, true, global0.a.x)), true != func_3(~16010u, vec2<i32>(42407i, global1.x), arg_1.e.a && arg_2.a).x), ~7984i >= _wgslsmith_mod_i32(_wgslsmith_sub_i32(min(global1.x, var_0.x), var_0.x & 24284i), -var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1f;
    var var_1 = !(!vec4<bool>(true, global0.d.a, global3.a, false));
    var_1 = func_4(Struct_2(select(select(vec2<bool>(global3.a, true), select(global0.a, vec2<bool>(global0.a.x, false), false), global0.a), select(select(global0.a, vec2<bool>(true, global3.a), var_1.x), var_1.wy, false), vec2<bool>(true, global0.b.a)), Struct_1(!(global3.a && var_1.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(abs(var_0))))), Struct_1(func_1(false, vec2<bool>(var_1.x, global3.a), u_input.a & 1i))), Struct_3(vec3<u32>(1u, _wgslsmith_mod_u32(~6527u, 1u), 1u), ~(~0u), _wgslsmith_f_op_f32(round(-276f)), Struct_2(var_1.xy, Struct_1(global3.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(37198u, 1u)] + global2[_wgslsmith_index_u32(1u, 1u)]))), global0.b), func_2()), Struct_1(true), ~(reverseBits(abs(vec3<u32>(7714u, 1u, 76944u))) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))));
    var var_2 = -(~abs(~vec4<i32>(global1.x, -44365i, u_input.c.x, -2147483647i))) | vec4<i32>(-countOneBits(_wgslsmith_mod_i32(global1.x, global1.x)), 1i, select(_wgslsmith_mod_i32(u_input.c.x, u_input.b.x) & -9863i, global1.x ^ (global1.x ^ -17180i), true), -(~global1.x ^ global1.x));
    let var_3 = !global3.a;
    var var_4 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(1034f - global2[_wgslsmith_index_u32(abs(~4294967295u), 1u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0)) * _wgslsmith_f_op_f32(-var_0)))));
    let var_5 = ~max(min(~vec4<u32>(1u, 30969u, 4294967295u, 44451u), ~vec4<u32>(53503u, 4382u, 82601u, 93263u)), vec4<u32>(1u, 1u, 1u, 1u)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u));
    global3 = global0.d;
    var var_6 = Struct_3(var_5.zxy, 1u, var_4.x, Struct_2(!global0.a, global0.d, 832f, func_2()), func_2());
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x);
}

