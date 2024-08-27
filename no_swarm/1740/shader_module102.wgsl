struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16> = array<u32, 16>(44549u, 21183u, 21402u, 0u, 27795u, 0u, 60510u, 1u, 4294967295u, 21496u, 0u, 68284u, 14686u, 4294967295u, 21027u, 62065u);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    global0 = array<u32, 16>();
    let var_0 = Struct_1(vec2<i32>(~min(-18784i, u_input.c) << (~(~4294967295u) % 32u), _wgslsmith_mod_i32(countOneBits(~u_input.c), u_input.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2499f) * _wgslsmith_f_op_f32(-731f + -2027f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1353f, -1002f) + -1416f))), any(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 16u)] < global0[_wgslsmith_index_u32(u_input.b, 16u)], true, true)));
    let var_1 = ~vec4<i32>(~var_0.a.x, -38864i, select(-1i, -u_input.a, all(vec3<bool>(var_0.c, var_0.c, true))) & _wgslsmith_sub_i32(5292i, i32(-1i) * -1i), 40840i);
    let var_2 = var_0;
    global0 = array<u32, 16>();
    return ~(~4294967295u) >= (_wgslsmith_div_u32(firstLeadingBit(~u_input.b), ~u_input.b & ~4294967295u) << (_wgslsmith_clamp_u32(45317u << ((u_input.b << (4294967295u % 32u)) % 32u), 7865u, u_input.b) % 32u));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: i32) -> vec4<f32> {
    var var_0 = vec3<i32>(~(-(~(~arg_2))), 0i, u_input.c);
    var var_1 = Struct_1(_wgslsmith_div_vec2_i32(var_0.xy, vec2<i32>(arg_2, var_0.x) << (vec2<u32>(abs(30687u), global0[_wgslsmith_index_u32(28823u, 16u)]) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -3499f), -142f)), func_3());
    var_0 = vec3<i32>(firstLeadingBit(85631i), u_input.c, -20807i);
    var var_2 = Struct_1(~min(~vec2<i32>(arg_2, 2147483647i), vec2<i32>(u_input.c & -54629i, -2750i)), vec2<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-457f - _wgslsmith_f_op_f32(f32(-1f) * -554f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.b.x), var_1.b.x))))), func_3());
    var_2 = Struct_1(var_1.a, var_2.b, false);
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, var_1.b.x, var_2.b.x, var_2.b.x) * vec4<f32>(795f, var_2.b.x, var_1.b.x, var_1.b.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(-905f, -819f, 783f, var_2.b.x), vec4<f32>(566f, var_1.b.x, var_1.b.x, var_1.b.x)))) - vec4<f32>(-348f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.b.x * var_2.b.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b.x, var_1.b.x) + -742f), _wgslsmith_f_op_f32(trunc(var_1.b.x))))));
}

fn func_1(arg_0: u32) -> bool {
    var var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(select(abs(vec2<u32>(4294967295u, arg_0)), abs(max(vec2<u32>(0u, arg_0), vec2<u32>(arg_0, global0[_wgslsmith_index_u32(4294967295u, 16u)]))), vec2<bool>(true, true)), ~vec2<u32>(_wgslsmith_div_u32(u_input.b, global0[_wgslsmith_index_u32(0u, 16u)]), 1u)), 10902u, 34759u);
    global0 = array<u32, 16>();
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -749f), -1383f, 225f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-368f)))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1547f, -701f))))) - _wgslsmith_f_op_vec4_f32(func_2(4294967295u, !any(vec4<bool>(false, true, false, true)), -2147483647i)));
    var var_2 = Struct_1(_wgslsmith_mult_vec2_i32(reverseBits(~vec2<i32>(u_input.c, u_input.c)), _wgslsmith_add_vec2_i32(-vec2<i32>(-6649i, u_input.c), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(u_input.c, 23106i)))) & _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-5585i, u_input.c), abs(vec2<i32>(19944i, u_input.c)), vec2<i32>(15344i, -15407i) >> (vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u))), -vec2<i32>(u_input.c, -2147483647i) & _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, -24270i), vec2<i32>(u_input.c, u_input.a))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(-var_1.x)))))), any(vec2<bool>(true, true)));
    global0 = array<u32, 16>();
    return var_2.c;
}

fn func_4(arg_0: bool) -> f32 {
    global0 = array<u32, 16>();
    var var_0 = _wgslsmith_add_i32(_wgslsmith_div_i32(-(~reverseBits(-61026i)), u_input.a), firstLeadingBit(_wgslsmith_div_i32(u_input.c, u_input.c & (1i >> (1u % 32u)))));
    global0 = array<u32, 16>();
    var var_1 = Struct_1(vec2<i32>(61793i << (firstTrailingBit(~81306u) % 32u), ~((i32(-1i) * -1i) >> (_wgslsmith_mod_u32(u_input.b, u_input.b) % 32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1508f, 1106f), vec2<f32>(373f, 954f), true)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -523f)))))), any(!select(!vec3<bool>(arg_0, arg_0, true), vec3<bool>(true, arg_0, arg_0), true)));
    var var_2 = true;
    return var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_4(func_1(abs(~79146u))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-759f, 207f)))))));
    let var_2 = Struct_1(reverseBits(vec2<i32>(min(-64252i, _wgslsmith_mult_i32(u_input.a, u_input.c)), reverseBits(u_input.c))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(113f, 126f) - vec2<f32>(-2122f, 772f))))))), true);
    var var_3 = vec4<u32>(16055u, max(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(59563u, max(~4294967295u, _wgslsmith_add_u32(u_input.b, global0[_wgslsmith_index_u32(13881u, 16u)]))), 16u)], _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.b, 16u)], 65626u)), u_input.b, ~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.b | abs(global0[_wgslsmith_index_u32(u_input.b, 16u)]), 16u)], _wgslsmith_div_u32(1u, global0[_wgslsmith_index_u32(0u, 16u)]) >> ((4294967295u | u_input.b) % 32u)));
    global0 = array<u32, 16>();
    var_0 = var_2.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(1u, 1u), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_3.x, global0[_wgslsmith_index_u32(var_3.x, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42158u, 16u)], 16u)], 16u)], 16u)], var_3.x) >> (vec4<u32>(1u, var_3.x, var_3.x, var_3.x) % vec4<u32>(32u)), vec4<u32>(38838u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35021u, 16u)], 16u)], 1u, var_3.x)), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(53402u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16229u, 16u)], 16u)], 1u, 687u)), _wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(0u, 16u)], 16071u, u_input.b, global0[_wgslsmith_index_u32(0u, 16u)]), vec4<u32>(4294967295u, 4294967295u, var_3.x, global0[_wgslsmith_index_u32(45626u, 16u)])))), 1u), var_2.b.x);
}

