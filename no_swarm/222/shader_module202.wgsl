struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<f32>,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_2 = Struct_2(vec3<f32>(-299f, -581f, 1186f), Struct_1(false, vec4<u32>(1u, 0u, 39396u, 16764u), vec4<f32>(-459f, 2400f, -643f, 767f), 0i, vec2<f32>(201f, 728f)));

var<private> global2: array<f32, 5> = array<f32, 5>(-358f, 584f, -1162f, 464f, -1430f);

var<private> global3: vec3<f32>;

var<private> global4: f32 = -513f;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: bool, arg_3: Struct_2) -> i32 {
    global3 = vec3<f32>(arg_0.x, -2095f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-657f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a.x, 5u)] + -1000f)), all(vec2<bool>(arg_2, true)))))));
    let var_0 = Struct_1(global1.b.a, select(_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 1u, u_input.a.x, 15148u) << (vec4<u32>(0u, 4294967295u, global1.b.b.x, u_input.a.x) % vec4<u32>(32u))), abs(vec4<u32>(u_input.a.x, 4294967295u, 37657u, 1u))), global1.b.b, !global1.b.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1877f))), 699f, _wgslsmith_f_op_f32(step(-1739f, arg_3.a.x)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.b.b.x ^ 7618u, 5u)]))), -abs(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.b.x, arg_3.b.d), -arg_3.b.d, _wgslsmith_mod_i32(u_input.b.x, -1352i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.c.x, arg_3.b.c.x))), vec2<f32>(-747f, global1.b.c.x)))));
    var var_1 = u_input.b.x;
    global2 = array<f32, 5>();
    var_1 = arg_1;
    return -14054i;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.a.x, -1000f, global1.b.a)) * _wgslsmith_f_op_f32(f32(-1f) * -281f))))));
    return arg_0.d;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: i32) -> vec3<bool> {
    let var_0 = func_4(Struct_1(global1.b.a, abs(~(~global1.b.b)), global1.b.c, _wgslsmith_mult_i32(arg_2, min(max(-2147483647i, arg_0.b.d), func_3(vec4<f32>(global1.b.e.x, global3.x, -367f, -1000f), arg_0.b.d, arg_0.b.a, Struct_2(global1.a, Struct_1(global1.b.a, vec4<u32>(44158u, global1.b.b.x, global0.x, arg_0.b.b.x), vec4<f32>(global2[_wgslsmith_index_u32(1u, 5u)], -754f, global3.x, 1000f), 2147483647i, vec2<f32>(193f, -1330f)))))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-314f)), _wgslsmith_f_op_f32(select(253f, global3.x, arg_1.x)))), -1446f)), arg_0, select(abs(_wgslsmith_mod_vec3_u32(~vec3<u32>(global1.b.b.x, global1.b.b.x, 16816u), vec3<u32>(29369u, 25518u, 0u))), vec3<u32>(~1u, global0.x, ~global1.b.b.x), false));
    var var_1 = vec2<bool>(false, !all(vec4<bool>(arg_0.b.a, all(vec3<bool>(true, false, arg_0.b.a)), true, arg_1.x)));
    global1 = arg_0;
    let var_2 = Struct_1(any(vec4<bool>(any(vec3<bool>(true, true, true)), false, select(var_1.x | true, !arg_0.b.a, all(arg_1)), any(vec4<bool>(false, global1.b.a, arg_1.x, false)) | false)), vec4<u32>(~(reverseBits(74097u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, global1.b.b.x, 1u), global1.b.b) % 32u)), 88542u, select(4827u, arg_0.b.b.x, true | (var_1.x && var_1.x)), ~(min(global0.x, global1.b.b.x) ^ 0u)), global1.b.c, _wgslsmith_dot_vec3_i32(vec3<i32>(max(global1.b.d, func_4(Struct_1(true, vec4<u32>(global1.b.b.x, global1.b.b.x, u_input.a.x, 0u), global1.b.c, u_input.b.x, vec2<f32>(global2[_wgslsmith_index_u32(global0.x, 5u)], global3.x)), Struct_2(global1.a, Struct_1(global1.b.a, arg_0.b.b, vec4<f32>(global1.a.x, global3.x, 424f, 206f), arg_2, global3.zz)), vec3<u32>(u_input.a.x, global0.x, arg_0.b.b.x))), ~global1.b.d, -2147483647i << (0u % 32u)), _wgslsmith_sub_vec3_i32(-firstTrailingBit(u_input.b), u_input.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-889f)) + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a.x, 5u)] * -339f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -907f)))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.xx * vec2<f32>(global3.x, -1000f))), global3.zz))));
    var_1 = select(select(vec2<bool>(true, arg_0.b.a), arg_1, true), !vec2<bool>(any(vec4<bool>(arg_1.x, global1.b.a, true, global1.b.a)), global1.b.a), global1.b.a);
    return vec3<bool>(func_3(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(996f, -534f, global3.x, global1.b.e.x), global1.b.c)), -1i, true, arg_0) < var_0, !select(var_1.x, all(select(vec3<bool>(arg_0.b.a, true, true), vec3<bool>(var_2.a, arg_1.x, true), vec3<bool>(true, true, false))), all(select(vec3<bool>(var_2.a, arg_0.b.a, arg_0.b.a), vec3<bool>(false, var_2.a, true), vec3<bool>(arg_1.x, false, false)))), global1.b.a);
}

fn func_1() -> i32 {
    let var_0 = !vec3<bool>(any(!func_2(Struct_2(global1.b.c.yyw, global1.b), vec2<bool>(true, false), global1.b.d)), any(vec4<bool>(all(vec2<bool>(false, global1.b.a)), false, global1.b.a, false)), 0i < ~_wgslsmith_mult_i32(u_input.b.x, global1.b.d));
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1085f, _wgslsmith_f_op_f32(max(-1232f, -1000f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1354f, 586f, -501f), vec3<f32>(-2778f, -750f, global1.b.c.x)))))), Struct_1(true, ~global1.b.b, vec4<f32>(global3.x, -422f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-145f)), global3.x, false || global1.b.a)), _wgslsmith_f_op_f32(abs(-1817f))), 0i, _wgslsmith_div_vec2_f32(global3.xz, global3.zz)));
    return _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(min(~u_input.b, u_input.b) >> (_wgslsmith_mod_vec3_u32(select(u_input.a, global1.b.b.wyw, var_0.x), global1.b.b.zzx) % vec3<u32>(32u)), vec3<i32>(~(-38261i), reverseBits(_wgslsmith_mult_i32(1i, -29422i)), countOneBits(~global1.b.d))), ~vec3<i32>(12448i, global1.b.d, ~_wgslsmith_add_i32(9428i, global1.b.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global1.a;
    var var_0 = vec4<i32>(u_input.b.x, global1.b.d, func_1(), u_input.b.x);
    let var_1 = _wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(1i, var_0.x, ~max(u_input.b.x, -57528i), -5554i)), vec4<i32>(-11153i | global1.b.d, firstTrailingBit(~var_0.x << (firstLeadingBit(13634u) % 32u)), abs(func_4(global1.b, Struct_2(vec3<f32>(global1.a.x, 1000f, global3.x), global1.b), u_input.a)), countOneBits(1i)), -_wgslsmith_add_vec4_i32(~countOneBits(vec4<i32>(0i, global1.b.d, 0i, 42362i)), vec4<i32>(func_3(vec4<f32>(-698f, -371f, -1470f, global2[_wgslsmith_index_u32(0u, 5u)]), global1.b.d, global1.b.a, Struct_2(vec3<f32>(global1.a.x, global3.x, -903f), Struct_1(global1.b.a, global1.b.b, global1.b.c, -18576i, global1.a.yz))), max(-2147483647i, global1.b.d), global1.b.d, global1.b.d)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-235f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -595f))) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(33470u, 5u)]) + 1476f), _wgslsmith_f_op_f32(abs(-1247f))), ~abs(global1.b.b), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(global3.x)), _wgslsmith_f_op_f32(f32(-1f) * -520f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(global1.b.c.x, 682f))), _wgslsmith_f_op_vec4_f32(ceil(global1.b.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.a.x, 950f, -300f, global2[_wgslsmith_index_u32(global1.b.b.x, 5u)]), global1.b.c, vec4<bool>(global1.b.a, global1.b.a, true, true))), _wgslsmith_f_op_vec4_f32(global1.b.c * vec4<f32>(434f, -1044f, global2[_wgslsmith_index_u32(27088u, 5u)], global3.x)))) - global1.b.c)), var_0.x, _wgslsmith_f_op_vec2_f32(global1.a.yx + _wgslsmith_f_op_vec2_f32(exp2(global3.yy))));
    let var_3 = Struct_2(var_2.c.xyw, global1.b);
    global0 = vec3<u32>(68930u, global0.x, ~(~firstTrailingBit(global0.x)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.x * global3.x))), global1.b.e.x)) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1.a.x)), _wgslsmith_div_f32(-616f, global2[_wgslsmith_index_u32(global1.b.b.x, 5u)]))))));
    let var_5 = vec2<f32>(global2[_wgslsmith_index_u32(firstTrailingBit(42644u), 5u)], _wgslsmith_f_op_f32(-global1.b.c.x));
    var var_6 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_5.x - var_5.x), _wgslsmith_f_op_f32(f32(-1f) * -660f), global1.b.c.x, var_2.e.x) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_6.b.c * vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 5u)], global3.x, var_3.a.x, global3.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-583f, -1263f, -168f, var_2.e.x) * vec4<f32>(global1.b.c.x, -1000f, 698f, 426f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_6.b.c))), 1158f, _wgslsmith_add_vec4_i32(var_1, reverseBits(vec4<i32>(var_0.x, _wgslsmith_clamp_i32(var_3.b.d, 0i, 5090i), firstTrailingBit(3579i), ~var_1.x))), 0u);
}

