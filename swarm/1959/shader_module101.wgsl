struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_3;

var<private> global2: vec2<i32> = vec2<i32>(-25488i, 62899i);

var<private> global3: array<u32, 32>;

var<private> global4: u32 = 0u;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3) -> vec2<bool> {
    let var_0 = 703f;
    global4 = 1u;
    var var_1 = Struct_1(-1000f);
    return select(!vec2<bool>(global1.a, true), !select(vec2<bool>(true, true), !select(vec2<bool>(arg_0.a, global1.a), vec2<bool>(global1.a, false), true), !(!vec2<bool>(true, global1.a))), all(!(!(!vec4<bool>(false, arg_0.a, true, arg_0.a)))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32) -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x))))), true, _wgslsmith_mult_i32(min(-2147483647i, u_input.a), ~u_input.a), arg_1);
    var var_1 = ((firstTrailingBit(vec4<u32>(6203u, 68759u, 0u, 0u)) >> (select(vec4<u32>(arg_2, 1u, arg_2, 4294967295u) ^ vec4<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 32u)], 32u)], 28336u, 51798u), _wgslsmith_mult_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(29236u, 32u)], 67419u, global3[_wgslsmith_index_u32(arg_2, 32u)], global3[_wgslsmith_index_u32(1u, 32u)]), vec4<u32>(0u, 4294967295u, 4294967295u, 45167u)), select(vec4<bool>(true, false, false, global1.a), vec4<bool>(var_0.b, false, var_0.b, global1.a), vec4<bool>(false, var_0.b, global1.a, false))) % vec4<u32>(32u))) ^ abs(select(vec4<u32>(36836u, arg_2, 0u, arg_2), ~vec4<u32>(arg_2, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(74018u, 32u)], 32u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(20740u, 32u)], 32u)], 1u), true))) ^ vec4<u32>(firstTrailingBit(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(30788u, 32u)], 32u)]) << (firstTrailingBit(~6344u) % 32u), ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_2 << (4294967295u % 32u), 32u)] ^ ~5012u, 32u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_2, 32u)], 32u)], ~4294967295u);
    let var_2 = var_0;
    var var_3 = arg_1;
    var var_4 = 1u;
    return 60790u;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>) -> i32 {
    global4 = _wgslsmith_clamp_u32(100914u, ~(~_wgslsmith_div_u32(439u, 4294967295u)), 4294967295u) ^ select(abs(4294967295u), func_4(select(func_3(Struct_3(arg_0.b, vec2<f32>(-2216f, global1.b.x))), vec2<bool>(global1.a, global1.a), true), arg_0.d, global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(1u, 32u)], 32u)]), -330f < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1174f - arg_0.d.a))));
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.a, _wgslsmith_f_op_f32(-global1.b.x), global1.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(935f, 758f, -1301f))), vec3<f32>(global1.b.x, 637f, 190f), vec3<bool>(arg_0.b, arg_0.b, arg_0.b))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.a, 1154f, 1136f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, 1085f, global1.b.x))))))));
    var var_1 = ~_wgslsmith_add_i32(arg_1.x, ~(~arg_0.c) | (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, arg_1.x, arg_0.c, -22492i), vec4<i32>(1i, arg_1.x, 52215i, 2147483647i)) << (4294967295u % 32u)));
    let var_2 = -vec2<i32>(~(~arg_0.c & _wgslsmith_div_i32(arg_0.c, -2147483647i)), min(arg_1.x, -2147483647i) >> (0u % 32u));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_0.d.a)), (_wgslsmith_div_f32(arg_0.d.a, -228f) < var_0.x) && false, -1i, arg_0.d);
    return ~var_3.c;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = !vec4<bool>(global1.a, arg_1.a, true, func_3(arg_1).x);
    let var_1 = ~select(~(-arg_0.zx), vec2<i32>(-1i, 2147483647i), vec2<bool>(false, global1.a));
    global4 = global3[_wgslsmith_index_u32(~((30009u ^ (~4294967295u & _wgslsmith_div_u32(global3[_wgslsmith_index_u32(4294967295u, 32u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(12269u, 32u)], 32u)]))) & ~28063u), 32u)];
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(856f, _wgslsmith_f_op_f32(min(920f, _wgslsmith_f_op_f32(781f * 1344f)))))));
    global3 = array<u32, 32>();
    return Struct_1(-341f);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_3) -> vec3<u32> {
    global3 = array<u32, 32>();
    var var_0 = Struct_2(func_5(-select(reverseBits(vec3<i32>(-2147483647i, -2147483647i, u_input.a)), vec3<i32>(u_input.a, -50581i, u_input.a), select(vec3<bool>(arg_2.a, global1.a, global1.a), vec3<bool>(false, false, false), vec3<bool>(global1.a, false, true))), arg_2, vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(global2.x, global2.x), 42068i, i32(-1i) * -2147483647i), -func_2(Struct_2(arg_1, arg_2.a, -2147483647i, arg_1), vec2<i32>(global2.x, global2.x)), u_input.a)), false, _wgslsmith_dot_vec4_i32((firstTrailingBit(vec4<i32>(-10588i, 0i, u_input.a, 1301i)) | _wgslsmith_sub_vec4_i32(vec4<i32>(31690i, -2147483647i, global2.x, global2.x), vec4<i32>(u_input.a, 0i, 1i, global2.x))) << (countOneBits(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 32u)], 32u)], 32u)], 4294967295u, 18199u, 5070u)) % vec4<u32>(32u)), ~_wgslsmith_div_vec4_i32(vec4<i32>(global2.x, 16902i, 0i, global2.x) ^ vec4<i32>(61381i, -3878i, u_input.a, global2.x), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 94007i, global2.x, u_input.a), vec4<i32>(2147483647i, global2.x, -40944i, 55141i)))), Struct_1(global1.b.x));
    let var_1 = countOneBits(select(~abs(~vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(51042u, 32u)], 32u)], 32u)], 91979u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(50356u, 32u)], 32u)])), max(_wgslsmith_mod_vec3_u32(vec3<u32>(3078u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4937u, 32u)], 32u)], 70917u), vec3<u32>(global3[_wgslsmith_index_u32(47262u, 32u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 32u)], 32u)], global3[_wgslsmith_index_u32(0u, 32u)])), firstLeadingBit(vec3<u32>(global3[_wgslsmith_index_u32(0u, 32u)], global3[_wgslsmith_index_u32(58053u, 32u)], 4294967295u))) << (_wgslsmith_clamp_vec3_u32(select(vec3<u32>(global3[_wgslsmith_index_u32(1u, 32u)], 14808u, global3[_wgslsmith_index_u32(0u, 32u)]), vec3<u32>(59675u, 76912u, 29719u), true), ~vec3<u32>(global3[_wgslsmith_index_u32(0u, 32u)], 22306u, 1u), vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 0u, global3[_wgslsmith_index_u32(1u, 32u)]) & vec3<u32>(global3[_wgslsmith_index_u32(48606u, 32u)], global3[_wgslsmith_index_u32(20510u, 32u)], 1u)) % vec3<u32>(32u)), any(!(!vec4<bool>(global1.a, true, global1.a, global1.a)))));
    var var_2 = ~vec3<u32>(global3[_wgslsmith_index_u32(~var_1.x, 32u)], _wgslsmith_clamp_u32(var_1.x, select(~4294967295u, abs(var_1.x), true), 94442u), 0u);
    return vec3<u32>(max(var_2.x, 1u), max(_wgslsmith_mod_u32(13188u, ~var_1.x), ~firstLeadingBit(var_1.x)), var_1.x);
}

fn func_6(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: vec2<u32>) -> vec3<f32> {
    var var_0 = vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, u_input.a >> (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(21422u, 32u)], 32u)] % 32u), abs(global2.x)), -2147483647i, i32(-1i) * -global2.x, abs(func_2(Struct_2(Struct_1(480f), global1.a, u_input.a, Struct_1(arg_0.x)), vec2<i32>(1i, u_input.a))));
    global3 = array<u32, 32>();
    let var_1 = Struct_3(global1.a, vec2<f32>(global1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-987f - 760f), -1030f)));
    global4 = ~(~(arg_2.x ^ firstTrailingBit(1u)));
    var var_2 = _wgslsmith_mod_i32(global2.x, global2.x);
    return vec3<f32>(219f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(337f - func_5(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 1i, -2147483647i), var_0.wzw), Struct_3(var_1.a, vec2<f32>(var_1.b.x, -324f)), vec3<i32>(u_input.a, u_input.a, global2.x)).a)), _wgslsmith_f_op_f32(min(-1188f, 773f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_6(_wgslsmith_f_op_vec2_f32(global1.b - _wgslsmith_f_op_vec2_f32(-global1.b)), vec2<u32>(_wgslsmith_dot_vec3_u32(func_1(global1.b.x, Struct_1(global1.b.x), Struct_3(global1.a, vec2<f32>(global1.b.x, -999f))), ~vec3<u32>(4294967295u, 11122u, 20904u)), _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(firstLeadingBit(global3[_wgslsmith_index_u32(89358u, 32u)]), 32u)], 32u)], 1u)), vec2<u32>(43148u, ~max(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 32u)], 32u)], 32u)], 32u)], 32u)])))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.b.x - global1.b.x), global1.b.x, 897f)) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_6(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.x, global1.b.x) + global1.b), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 27328u), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(97829u, 32u)], 32u)], 32u)], 0u)), vec2<u32>(global3[_wgslsmith_index_u32(3880u, 32u)], 78837u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, 1350f, 692f) - vec3<f32>(global1.b.x, -1690f, global1.b.x)) + vec3<f32>(-2211f, global1.b.x, -1000f))))), false));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1258f));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(select(select(select(vec2<bool>(global1.a, global1.a), vec2<bool>(global1.a, global1.a), vec2<bool>(global1.a, false)), vec2<bool>(true, global1.a), !vec2<bool>(global1.a, true)), select(!vec2<bool>(global1.a, global1.a), vec2<bool>(true, global1.a), any(vec3<bool>(global1.a, global1.a, true))), vec2<bool>(true, true)), Struct_1(1249f), countOneBits(4294967295u | abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 32u)], 32u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.xy, _wgslsmith_f_op_vec2_f32(-var_0.xz), vec2<bool>(true, true))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a, 1000f), vec2<f32>(-237f, global1.b.x), vec2<bool>(false, false))) * _wgslsmith_f_op_vec2_f32(global1.b + vec2<f32>(-1469f, var_1.a)))), global1.b, global1.a)), vec3<i32>(firstLeadingBit(_wgslsmith_add_i32(u_input.a, 2147483647i) ^ firstTrailingBit(global2.x)), 2147483647i, global2.x), -vec3<i32>(global2.x, _wgslsmith_sub_i32(~2147483647i, u_input.a >> (27924u % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), _wgslsmith_mult_vec2_i32(vec2<i32>(46606i, u_input.a), vec2<i32>(global2.x, global2.x)))));
}

