struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
    e: i32,
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

var<private> global0: array<u32, 32>;

var<private> global1: array<Struct_2, 8>;

var<private> global2: vec2<u32>;

var<private> global3: u32;

var<private> global4: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> vec3<bool> {
    return !vec3<bool>(true | any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true))), true, global0[_wgslsmith_index_u32(arg_1.d.e.x, 32u)] <= global2.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: vec2<bool>) -> i32 {
    let var_0 = select(vec3<u32>(7396u, ~(~(~arg_1.a.b)), 1u), u_input.a, select(vec3<bool>(any(!vec4<bool>(arg_3.x, false, false, false)), any(vec2<bool>(true, true)), true), select(select(select(vec3<bool>(arg_3.x, arg_3.x, true), vec3<bool>(arg_3.x, arg_3.x, true), false), vec3<bool>(true, false, false), true), vec3<bool>(true, arg_3.x, true), vec3<bool>(arg_3.x && arg_3.x, arg_3.x, global2.x != 18712u)), select(func_3(arg_0.x & u_input.b.x, Struct_3(vec2<i32>(0i, 0i), 4294967295u, 90078u, arg_1.a, Struct_2(arg_1.b, Struct_1(arg_2, global0[_wgslsmith_index_u32(4294967295u, 32u)], global2.x, u_input.a.x, vec4<u32>(global0[_wgslsmith_index_u32(global2.x, 32u)], 56990u, arg_1.b.e.x, u_input.a.x))))), select(vec3<bool>(false, arg_3.x, false), !vec3<bool>(false, arg_3.x, arg_3.x), -1526f != arg_1.a.a.x), vec3<bool>(true, arg_3.x, true))));
    let var_1 = arg_1;
    var var_2 = arg_1.b.c != firstTrailingBit(~select(u_input.a.x, ~arg_1.a.b, arg_3.x & false));
    var var_3 = max(_wgslsmith_clamp_vec4_i32(max(max(vec4<i32>(arg_0.x, -1i, arg_0.x, arg_0.x), vec4<i32>(2147483647i, 18972i, arg_0.x, u_input.e)), ~vec4<i32>(34952i, arg_0.x, u_input.b.x, arg_0.x)), arg_0, _wgslsmith_add_vec4_i32(~vec4<i32>(14893i, -15364i, arg_0.x, arg_0.x), _wgslsmith_mult_vec4_i32(arg_0, arg_0))), _wgslsmith_clamp_vec4_i32(vec4<i32>(reverseBits(1i), arg_0.x, 2147483647i, ~u_input.b.x), min(vec4<i32>(arg_0.x, 36615i, u_input.d.x, 84938i), firstTrailingBit(arg_0)), _wgslsmith_add_vec4_i32(-vec4<i32>(1i, arg_0.x, -27617i, u_input.c), arg_0 & vec4<i32>(u_input.b.x, arg_0.x, arg_0.x, -2403i)))) ^ countOneBits(arg_0);
    let var_4 = Struct_2(arg_1.b, var_1.b);
    return 47098i;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3, arg_3: Struct_1) -> bool {
    var var_0 = _wgslsmith_add_i32(u_input.c, _wgslsmith_dot_vec3_i32(u_input.d, -u_input.d) | 9233i);
    var var_1 = Struct_2(arg_2.d, Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a)), vec4<f32>(_wgslsmith_f_op_f32(round(arg_3.a.x)), _wgslsmith_f_op_f32(step(459f, arg_3.a.x)), arg_0.a.x, arg_2.d.a.x), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, true, true)))), arg_3.d, global2.x, arg_2.e.a.b, ~arg_0.e >> (arg_3.e % vec4<u32>(32u))));
    var_0 = _wgslsmith_div_i32(u_input.b.x, 2147483647i);
    global3 = 1u;
    var var_2 = arg_2.e;
    return false & !(87752u != _wgslsmith_sub_u32(4294967295u, global2.x));
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = any(select(vec3<bool>(func_4(Struct_1(vec4<f32>(423f, 1166f, -1042f, -211f), 9282u, 17665u, global2.x, vec4<u32>(global2.x, 55955u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 32u)], 82902u)), func_2(vec4<i32>(1i, 788i, 2147483647i, u_input.b.x), global1[_wgslsmith_index_u32(u_input.a.x, 8u)], vec4<f32>(-930f, -961f, -1137f, -785f), vec2<bool>(true, false)), Struct_3(u_input.b.zy, 46629u, global0[_wgslsmith_index_u32(38034u, 32u)], Struct_1(vec4<f32>(1000f, -440f, 287f, -931f), 19042u, u_input.a.x, 4294967295u, vec4<u32>(0u, 1u, u_input.a.x, 4294967295u)), Struct_2(Struct_1(vec4<f32>(-2226f, -718f, 955f, 730f), u_input.a.x, 1u, 33518u, vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global2.x, u_input.a.x, global2.x)), Struct_1(vec4<f32>(1000f, 532f, 199f, -652f), global2.x, 1u, global0[_wgslsmith_index_u32(39611u, 32u)], vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(60962u, 32u)], u_input.a.x, 1u)))), Struct_1(vec4<f32>(669f, -1117f, -977f, -1017f), 9502u, 41699u, global0[_wgslsmith_index_u32(13243u, 32u)], vec4<u32>(u_input.a.x, 4630u, 5522u, 55425u))), ~global0[_wgslsmith_index_u32(4294967295u, 32u)] > ~1416u, 36829u <= global2.x), vec3<bool>(true, true, false), false));
    global2 = ~_wgslsmith_div_vec2_u32(~u_input.a.yy, firstLeadingBit(_wgslsmith_mod_vec2_u32(u_input.a.yz, vec2<u32>(global2.x, 11203u))) & u_input.a.xy);
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1215f))) + 1675f), _wgslsmith_f_op_f32(-1000f + 1f))));
    let var_2 = Struct_3(_wgslsmith_add_vec2_i32(u_input.b.xx, _wgslsmith_clamp_vec2_i32(~reverseBits(vec2<i32>(-40138i, u_input.b.x)), ~firstTrailingBit(vec2<i32>(arg_0, 0i)), vec2<i32>(abs(arg_0), _wgslsmith_mult_i32(u_input.e, 2147483647i)))), _wgslsmith_sub_u32(firstTrailingBit(~global2.x | 0u), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(global2.x, 32u)] << ((53333u & global0[_wgslsmith_index_u32(62194u, 32u)]) % 32u), global2.x)), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.a.zz, u_input.a.yy), _wgslsmith_dot_vec3_u32(u_input.a, max(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 20598u, 1753u), vec3<u32>(69952u, 4294967295u, 24545u), u_input.a), select(vec3<u32>(0u, 1u, 17676u), vec3<u32>(0u, 1u, 4294967295u), true)))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(var_1.x * -275f), _wgslsmith_f_op_f32(ceil(379f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(313f - -391f)), _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(floor(var_1.x))))), _wgslsmith_dot_vec2_u32(u_input.a.xz, _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, global0[_wgslsmith_index_u32(50932u, 32u)]) ^ u_input.a.yy, _wgslsmith_add_vec2_u32(u_input.a.yz, vec2<u32>(global2.x, 27254u)), u_input.a.yx)), 54706u, 0u, (max(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 32u)], u_input.a.x, 4294967295u, global0[_wgslsmith_index_u32(0u, 32u)]), vec4<u32>(60733u, 39252u, 31997u, 9019u)) >> (vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(28027u, 32u)], 57942u, 4294967295u) % vec4<u32>(32u))) | ~(~vec4<u32>(u_input.a.x, global2.x, global0[_wgslsmith_index_u32(7942u, 32u)], 45450u))), global1[_wgslsmith_index_u32(1u, 8u)]);
    global1 = array<Struct_2, 8>();
    return global1[_wgslsmith_index_u32(~0u, 8u)];
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3) -> i32 {
    let var_0 = arg_1.a.e.x;
    let var_1 = Struct_1(arg_2.d.a, arg_1.a.c | ~(arg_1.a.c ^ countOneBits(37321u)), firstLeadingBit(4294967295u), 0u, ~firstTrailingBit(min(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2539u, 32u)], 32u)], 41494u, 32641u, 4294967295u), _wgslsmith_sub_vec4_u32(arg_1.a.e, arg_2.d.e))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.a.a.x))), _wgslsmith_f_op_f32(var_1.a.x + -228f)));
    return ~(-1i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(-func_5(Struct_3(max(u_input.d.yx, vec2<i32>(u_input.d.x, -1314i)), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21690u, 32u)], 32u)], _wgslsmith_div_u32(global0[_wgslsmith_index_u32(33087u, 32u)], u_input.a.x), Struct_1(vec4<f32>(695f, 587f, 296f, -986f), global2.x, global2.x, u_input.a.x, vec4<u32>(131215u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44054u, 32u)], 32u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 32u)], 32u)])), Struct_2(Struct_1(vec4<f32>(-471f, -501f, 147f, 236f), 13153u, 13686u, 0u, vec4<u32>(global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 32u)], 84287u, u_input.a.x)), Struct_1(vec4<f32>(1000f, -515f, -755f, -536f), 0u, global2.x, 24267u, vec4<u32>(29961u, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(global2.x, 32u)], 1u)))), func_1(min(u_input.c, u_input.d.x)), Struct_3(vec2<i32>(u_input.c, 53005i), 3330u, 0u, func_1(-11218i).a, Struct_2(Struct_1(vec4<f32>(-1525f, -132f, 365f, 1125f), 25992u, 39342u, 0u, vec4<u32>(13857u, 3310u, global2.x, global0[_wgslsmith_index_u32(18537u, 32u)])), Struct_1(vec4<f32>(331f, 427f, -817f, 558f), global0[_wgslsmith_index_u32(global2.x, 32u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 32u)], 32u)], global0[_wgslsmith_index_u32(14556u, 32u)], vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 32u)], global2.x, global2.x))))));
}

