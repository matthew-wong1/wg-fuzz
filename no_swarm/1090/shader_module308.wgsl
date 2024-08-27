struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14> = array<bool, 14>(true, false, true, false, true, false, true, false, false, false, true, false, true, false);

var<private> global1: vec2<i32>;

var<private> global2: f32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool) -> vec4<f32> {
    let var_0 = 1i;
    let var_1 = ~((var_0 | 0i) & -reverseBits(0i));
    var var_2 = _wgslsmith_sub_vec4_i32(firstTrailingBit(-_wgslsmith_sub_vec4_i32(max(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, -19497i), vec4<i32>(u_input.a.x, 34286i, -21576i, global1.x)), ~vec4<i32>(1i, global1.x, 24916i, -20595i))), ~firstLeadingBit(vec4<i32>(-1i) * -vec4<i32>(var_1, 13967i, 2147483647i, 2147483647i)));
    var var_3 = var_2.wwy;
    let var_4 = min(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(0u, 38875u, 16243u)), firstLeadingBit(91615u), 0u) << ((select(0u, 72728u, arg_0) & _wgslsmith_clamp_u32(1u, 123980u, 1u)) % 32u), reverseBits(~(~91708u))) >> (1u % 32u);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(671f - -471f), _wgslsmith_f_op_f32(sign(-175f))) + _wgslsmith_f_op_f32(min(-542f, _wgslsmith_f_op_f32(-819f + 1587f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1134f)))), -1080f, -940f));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: vec3<f32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(1u, 0u, 9228u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)), ~(~34230u), ~(~4294967295u), 1u), ~(~(~vec4<u32>(0u, 60133u, 8766u, 37725u)))), u_input.a, u_input.a, !(!(!select(vec3<bool>(true, true, global0[_wgslsmith_index_u32(0u, 14u)]), vec3<bool>(false, true, true), vec3<bool>(false, true, false)))), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(global1.x, arg_1.x, -11586i, -2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, 52412i, 0i)), _wgslsmith_dot_vec2_i32(-arg_1.xy, _wgslsmith_add_vec2_i32(arg_1.yz, arg_1.xy))), 0i, 28589i));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), _wgslsmith_f_op_f32(-var_1));
    global1 = firstLeadingBit(~var_0.c);
    let var_2 = true;
    return arg_0.x;
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = 198f;
    let var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(all(var_1.d.zz)))) + vec4<f32>(-540f, 586f, -534f, _wgslsmith_f_op_f32(-1000f * -1648f))), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(29003i, -9826i), _wgslsmith_sub_i32(2147483647i, arg_0), var_1.b.x) << (43908u % 32u), max((u_input.a.x & global1.x) << (min(var_1.a.x, 1u) % 32u), u_input.a.x), global1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-994f, -760f, -2250f), vec3<f32>(-328f, -581f, 1500f), vec3<bool>(true, global0[_wgslsmith_index_u32(arg_1.a.x, 14u)], global0[_wgslsmith_index_u32(arg_1.a.x, 14u)]))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-608f, 1739f, 484f) - vec3<f32>(1000f, 509f, -1011f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(929f, 1642f, -1081f))))));
    var var_3 = Struct_1(~firstLeadingBit(~vec4<u32>(32696u, 1u, 3334u, var_1.a.x)), arg_1.b, -vec2<i32>(-622i, 1i), vec3<bool>((1i > min(arg_0, arg_0)) || (min(arg_1.a.x, var_1.a.x) != arg_1.a.x), true, false), ~arg_1.e);
    return vec2<i32>(~reverseBits(41023i), 0i);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_1(min(~(~(vec4<u32>(arg_2.a.x, arg_2.a.x, 0u, 4294967295u) >> (vec4<u32>(136575u, arg_2.a.x, arg_2.a.x, 43107u) % vec4<u32>(32u)))), ~vec4<u32>(~arg_2.a.x, arg_2.a.x, ~arg_2.a.x, arg_2.a.x ^ arg_2.a.x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 2147483647i), max(u_input.a, ~vec2<i32>(-6629i, global1.x)) ^ vec2<i32>(-17420i, u_input.a.x), ~(~func_2(global1.x, arg_2))), func_2(arg_2.c.x, arg_2) ^ ~(arg_2.b << (_wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.a.x, 1u), vec2<u32>(4294967295u, arg_2.a.x)) % vec2<u32>(32u))), arg_2.d, arg_2.e);
    var var_1 = ~((arg_2.a.x << (~(arg_2.a.x << (16829u % 32u)) % 32u)) | select(4294967295u, var_0.a.x, arg_2.d.x));
    let var_2 = arg_2;
    var var_3 = Struct_1(_wgslsmith_clamp_vec4_u32((countOneBits(var_2.a) | ~var_2.a) >> ((~vec4<u32>(var_0.a.x, var_0.a.x, 4294967295u, 16284u) >> (vec4<u32>(1u, arg_2.a.x, arg_2.a.x, arg_2.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)), ~(arg_2.a | countOneBits(var_2.a)), ~(~var_0.a)), max(firstTrailingBit(firstTrailingBit(vec2<i32>(-27192i, var_2.b.x))), arg_2.c), u_input.a, !var_0.d, vec3<i32>(12311i, -_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(arg_1, vec3<i32>(arg_2.b.x, arg_2.c.x, global1.x)), var_2.b.x & -1i, ~global1.x), ~(_wgslsmith_div_i32(arg_1.x, u_input.a.x) | -63473i)));
    let var_4 = 2147483647i;
    return _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-766f + _wgslsmith_f_op_f32(-arg_0.x)), var_2.d.x));
}

fn func_5(arg_0: vec3<f32>, arg_1: f32, arg_2: i32, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_1(~(~vec4<u32>(max(1u, arg_3), _wgslsmith_div_u32(arg_3, arg_3), ~arg_3, ~arg_3)), u_input.a, vec2<i32>(-37776i, ~(func_2(global1.x, Struct_1(vec4<u32>(arg_3, arg_3, 4294967295u, 0u), vec2<i32>(arg_2, -2147483647i), vec2<i32>(-20676i, arg_2), vec3<bool>(global0[_wgslsmith_index_u32(114113u, 14u)], false, global0[_wgslsmith_index_u32(arg_3, 14u)]), vec3<i32>(u_input.a.x, global1.x, 1i))).x ^ abs(arg_2))), select(select(vec3<bool>(true, global0[_wgslsmith_index_u32(abs(arg_3), 14u)], all(vec4<bool>(false, false, global0[_wgslsmith_index_u32(arg_3, 14u)], global0[_wgslsmith_index_u32(60948u, 14u)]))), select(vec3<bool>(true, false, false), vec3<bool>(true, global0[_wgslsmith_index_u32(33996u, 14u)], global0[_wgslsmith_index_u32(arg_3, 14u)]), arg_1 >= 730f), vec3<bool>(!global0[_wgslsmith_index_u32(arg_3, 14u)], all(vec2<bool>(global0[_wgslsmith_index_u32(arg_3, 14u)], true)), true)), vec3<bool>((arg_1 >= 688f) | all(vec3<bool>(true, false, global0[_wgslsmith_index_u32(32670u, 14u)])), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(arg_3, arg_3), 14u)], !global0[_wgslsmith_index_u32(~arg_3, 14u)]), all(!vec2<bool>(false, global0[_wgslsmith_index_u32(arg_3, 14u)]))), ~vec3<i32>(_wgslsmith_mult_i32(global1.x, arg_2) ^ arg_2, -u_input.a.x, firstLeadingBit(1i)));
    global1 = -u_input.a;
    var var_1 = Struct_1(~(~(~firstLeadingBit(var_0.a))), vec2<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a.x, -15689i), var_0.b), firstLeadingBit(2147483647i)), var_0.b, var_0.d, _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(var_0.c.x, 27128i, 12997i), _wgslsmith_div_vec3_i32(var_0.e, var_0.e)), -vec3<i32>(-19957i, 2147483647i, -892i)) | _wgslsmith_mod_vec3_i32(~(-vec3<i32>(0i, var_0.b.x, u_input.a.x)), vec3<i32>(-2147483647i, 1i, -8606i & global1.x)));
    let var_2 = global0[_wgslsmith_index_u32(var_1.a.x, 14u)];
    var var_3 = global0[_wgslsmith_index_u32(firstLeadingBit(min(8298u, arg_3)), 14u)];
    return Struct_1(var_1.a, ~_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(48189i, var_0.e.x), var_0.c), vec2<i32>(arg_2, reverseBits(-1i))), vec2<i32>(func_2(1i, var_0).x, u_input.a.x), !(!(!vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 14u)], false))), var_1.e >> (var_0.a.yxz % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(108f, -1122f, false)) - _wgslsmith_f_op_f32(1795f - -1001f)), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1100f, 718f, -1006f, -452f)), _wgslsmith_add_vec3_i32(vec3<i32>(0i, 0i, 0i), vec3<i32>(2147483647i, global1.x, -21859i)), Struct_1(vec4<u32>(0u, 1u, 4294967295u, 0u), vec2<i32>(global1.x, 35422i), vec2<i32>(-1i, 22609i), vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(1u, 14u)]), vec3<i32>(1i, global1.x, 1i)))), 1f)), _wgslsmith_f_op_f32(-1f), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), ~1u);
    let var_1 = false;
    let var_2 = select(select(vec4<bool>(true, true, var_1, true), select(!select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.a.x, 14u)], global0[_wgslsmith_index_u32(var_0.a.x, 14u)], false, global0[_wgslsmith_index_u32(78180u, 14u)]), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, var_0.d.x)), vec4<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(var_0.a.x, 14u)], true, var_0.d.x, false)), true, all(var_0.d), true && var_0.d.x), vec4<bool>(global1.x < -31235i, false, true, var_1)), any(select(select(vec4<bool>(var_1, false, global0[_wgslsmith_index_u32(119718u, 14u)], var_1), vec4<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 14u)], true), global0[_wgslsmith_index_u32(50232u, 14u)]), !vec4<bool>(var_0.d.x, false, global0[_wgslsmith_index_u32(var_0.a.x, 14u)], false), select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(1u, 14u)], false), vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.a.x, 14u)], false, var_1), false)))), !vec4<bool>(false, true, any(select(var_0.d, var_0.d, var_0.d)), !(!global0[_wgslsmith_index_u32(1u, 14u)])), true || ((1u != ~var_0.a.x) && !(!var_0.d.x)));
    let var_3 = reverseBits(15085u);
    global0 = array<bool, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(~func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1435f, 1323f, -368f))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(floor(-243f))), -countOneBits(u_input.a.x), ~firstTrailingBit(32751u)).a.zwx, ~(~1u), _wgslsmith_mult_i32(-var_0.b.x | ~firstLeadingBit(-2147483647i), ~1i));
}

