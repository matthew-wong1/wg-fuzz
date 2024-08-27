struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec4<u32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec3<u32>(34117u, 1u, 25541u), true, vec4<u32>(6755u, 67545u, 0u, 0u), 0i), Struct_1(vec3<u32>(1u, 1u, 4294967295u), true, vec4<u32>(6781u, 1u, 10107u, 1u), 42396i), Struct_1(vec3<u32>(1u, 60095u, 0u), false, vec4<u32>(1u, 1277u, 4294967295u, 4294967295u), -1i), Struct_1(vec3<u32>(0u, 1u, 70319u), true, vec4<u32>(41424u, 0u, 1u, 20940u), 28599i), Struct_1(vec3<u32>(41264u, 4294967295u, 4294967295u), true, vec4<u32>(0u, 1u, 44314u, 39617u), 0i), Struct_1(vec3<u32>(2325u, 0u, 1u), true, vec4<u32>(0u, 0u, 4294967295u, 43295u), 2147483647i), Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), true, vec4<u32>(1u, 60689u, 113532u, 1817u), -1i), Struct_1(vec3<u32>(62577u, 15859u, 4294967295u), true, vec4<u32>(134324u, 1u, 114574u, 1u), 10191i), Struct_1(vec3<u32>(0u, 25395u, 4294967295u), false, vec4<u32>(1u, 18063u, 0u, 0u), 0i), Struct_1(vec3<u32>(4294967295u, 29717u, 0u), false, vec4<u32>(4294967295u, 7514u, 68137u, 44881u), -1i), Struct_1(vec3<u32>(40851u, 81516u, 0u), false, vec4<u32>(52527u, 0u, 0u, 22073u), 1i), Struct_1(vec3<u32>(30578u, 1u, 25921u), false, vec4<u32>(21175u, 82446u, 26869u, 11020u), -34460i), Struct_1(vec3<u32>(1u, 0u, 1u), true, vec4<u32>(1u, 22672u, 0u, 46850u), -34036i), Struct_1(vec3<u32>(82779u, 1u, 4294967295u), true, vec4<u32>(4294967295u, 4294967295u, 14668u, 0u), -1i), Struct_1(vec3<u32>(0u, 4294967295u, 1u), false, vec4<u32>(2104u, 28580u, 40431u, 4294967295u), 0i), Struct_1(vec3<u32>(97358u, 4294967295u, 4294967295u), true, vec4<u32>(4294967295u, 0u, 4294967295u, 1u), -28256i), Struct_1(vec3<u32>(4175u, 0u, 1u), true, vec4<u32>(7390u, 7315u, 1u, 54807u), 1i), Struct_1(vec3<u32>(1120u, 1u, 10932u), true, vec4<u32>(1u, 55047u, 4294967295u, 0u), -9657i), Struct_1(vec3<u32>(0u, 124705u, 34219u), false, vec4<u32>(4294967295u, 0u, 104285u, 4294967295u), -32685i), Struct_1(vec3<u32>(4294967295u, 1u, 11112u), true, vec4<u32>(30075u, 4294967295u, 4294967295u, 0u), 2147483647i), Struct_1(vec3<u32>(32330u, 22580u, 6213u), true, vec4<u32>(5856u, 65259u, 36120u, 4294967295u), 1i), Struct_1(vec3<u32>(20535u, 1u, 57861u), false, vec4<u32>(10125u, 4294967295u, 0u, 0u), i32(-2147483648)), Struct_1(vec3<u32>(28531u, 16784u, 54737u), true, vec4<u32>(0u, 0u, 4294967295u, 11019u), -43402i));

var<private> global1: Struct_1;

var<private> global2: vec2<i32>;

var<private> global3: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec3<u32>(4294967295u, 0u, 1u), true, vec4<u32>(20602u, 51090u, 20624u, 1u), 26080i), Struct_1(vec3<u32>(4294967295u, 4294967295u, 65474u), true, vec4<u32>(4294967295u, 54703u, 4294967295u, 26872u), 0i), Struct_1(vec3<u32>(0u, 6033u, 1u), false, vec4<u32>(1u, 26935u, 0u, 0u), 28915i), Struct_1(vec3<u32>(43967u, 0u, 49784u), false, vec4<u32>(1243u, 4294967295u, 30161u, 35894u), 14939i), Struct_1(vec3<u32>(10359u, 4294967295u, 4294967295u), false, vec4<u32>(1u, 4716u, 1u, 1u), i32(-2147483648)), Struct_1(vec3<u32>(57805u, 22774u, 1u), true, vec4<u32>(4294967295u, 28u, 12679u, 4294967295u), 2147483647i), Struct_1(vec3<u32>(4294967295u, 33576u, 52978u), false, vec4<u32>(1u, 4148u, 1u, 1u), -60373i), Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), false, vec4<u32>(0u, 79547u, 24495u, 0u), -1i), Struct_1(vec3<u32>(4294967295u, 4294967295u, 40627u), true, vec4<u32>(1u, 1723u, 4294967295u, 49719u), 2147483647i), Struct_1(vec3<u32>(0u, 0u, 123574u), true, vec4<u32>(4294967295u, 27522u, 1u, 1u), 2147483647i), Struct_1(vec3<u32>(53039u, 0u, 29876u), false, vec4<u32>(53815u, 1u, 1524u, 1u), 0i), Struct_1(vec3<u32>(21505u, 4294967295u, 25490u), false, vec4<u32>(42508u, 17413u, 9904u, 0u), -60575i), Struct_1(vec3<u32>(66408u, 0u, 50347u), true, vec4<u32>(1u, 0u, 5227u, 32355u), 0i), Struct_1(vec3<u32>(56056u, 4294967295u, 0u), true, vec4<u32>(13875u, 10370u, 32709u, 0u), 82359i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> vec3<u32> {
    global3 = array<Struct_1, 14>();
    var var_0 = 1662f;
    global0 = array<Struct_1, 23>();
    let var_1 = global3[_wgslsmith_index_u32(global1.a.x, 14u)];
    var var_2 = -(~vec4<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.d, global1.d, u_input.a, 77733i), vec4<i32>(var_1.d, global2.x, 18430i, 2147483647i)), -1i, u_input.a)) >> (_wgslsmith_mult_vec4_u32(reverseBits(var_1.c >> (global1.c % vec4<u32>(32u))) ^ (vec4<u32>(4294967295u, 127343u, 4294967295u, 4294967295u) | ~global1.c), vec4<u32>(_wgslsmith_dot_vec4_u32(~global1.c, vec4<u32>(29571u, 38943u, var_1.c.x, global1.a.x)), countOneBits(_wgslsmith_mod_u32(global1.c.x, global1.c.x)), global1.c.x, global1.a.x)) % vec4<u32>(32u));
    return vec3<u32>(firstTrailingBit(~select(_wgslsmith_div_u32(42985u, global1.c.x), global1.a.x, false)), ~29759u, _wgslsmith_add_u32(~57883u, _wgslsmith_dot_vec4_u32(var_1.c, vec4<u32>(86092u, global1.c.x, 5468u, global1.c.x))) >> (~select(4294967295u, global1.a.x, true) % 32u));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: bool) -> vec4<bool> {
    let var_0 = _wgslsmith_sub_u32(countOneBits(max(~global1.a.x, ~1u) & 44467u), _wgslsmith_mod_u32(global1.a.x, _wgslsmith_mod_u32(abs(firstLeadingBit(global1.c.x)), ~(3176u << (global1.c.x % 32u)))));
    let var_1 = vec2<u32>(~global1.a.x, global1.c.x);
    let var_2 = _wgslsmith_sub_vec3_u32(global1.c.zzx, countOneBits(~(~vec3<u32>(var_1.x, 1u, 4294967295u)))) << (func_3() % vec3<u32>(32u));
    var var_3 = -1000f;
    return select(select(vec4<bool>(false, true, false, !arg_2), vec4<bool>(arg_1.x < _wgslsmith_f_op_f32(abs(-1000f)), any(!vec2<bool>(global1.b, arg_2)), true, 944f >= _wgslsmith_f_op_f32(arg_1.x + 1000f)), !vec4<bool>(!arg_2, !arg_2, var_2.x == var_0, any(vec3<bool>(false, true, arg_2)))), select(!(!(!vec4<bool>(arg_2, true, true, arg_2))), vec4<bool>(false, true, any(!vec4<bool>(arg_2, true, true, true)), global1.b), global1.b), -1000f <= _wgslsmith_f_op_f32(round(-2486f)));
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = !(!select(!vec2<bool>(global1.b, arg_0), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(global1.b, global1.b)), true));
    global2 = ~countOneBits(reverseBits(~vec2<i32>(-26285i, global2.x)) | countOneBits(countOneBits(vec2<i32>(-12229i, u_input.a))));
    var_0 = vec2<bool>(false, any(select(func_2(vec4<i32>(47416i, global2.x, global2.x, global2.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(100f, -2158f, -341f) + vec3<f32>(1413f, 468f, -461f)), false), vec4<bool>(func_2(vec4<i32>(15259i, global2.x, global2.x, global2.x), vec3<f32>(-214f, -873f, 158f), false).x, true, true, arg_0 & arg_0), !(!vec4<bool>(true, arg_0, true, arg_0)))));
    global2 = ~abs(vec2<i32>(u_input.a, ~global2.x));
    var var_1 = global0[_wgslsmith_index_u32(~func_3().x, 23u)];
    return ~10492u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(41124u >> (~global1.a.x % 32u), reverseBits(arg_1.c.x), abs(abs(66104u))), ~(~arg_1.a) << (vec3<u32>(abs(arg_1.c.x), arg_1.c.x, countOneBits(global1.c.x)) % vec3<u32>(32u)), ~arg_0.a), false, select(~(~vec4<u32>(41461u, arg_1.c.x, 0u, arg_1.c.x)), ~vec4<u32>(50358u, ~1u, ~arg_0.c.x, select(global1.a.x, arg_1.a.x, false)), select(func_2(vec4<i32>(35129i, arg_1.d, arg_1.d, global2.x), vec3<f32>(-389f, -406f, -1564f), false), !(!vec4<bool>(false, arg_0.b, arg_0.b, arg_1.b)), !arg_0.b)), -13919i);
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1051f, 611f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-575f, -1000f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1222f, 883f))))))));
    var var_2 = Struct_1(arg_1.c.xyz, !global1.b, var_0.c, _wgslsmith_mod_i32(_wgslsmith_div_i32(-27671i, _wgslsmith_div_i32(arg_2.x, -2147483647i)), arg_0.d));
    let var_3 = -805f;
    global3 = array<Struct_1, 14>();
    return global0[_wgslsmith_index_u32((arg_1.a.x ^ 0u) & 71116u, 23u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~global1.c.x, 23u)];
    global1 = func_4(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(1u, func_1(var_0.b)), reverseBits(var_0.a.x)) << (~min(func_1(var_0.b), 37724u) % 32u), 23u)], Struct_1(vec3<u32>(abs(var_0.c.x), max(4294967295u & var_0.c.x, firstLeadingBit(var_0.c.x)), ~var_0.a.x | var_0.a.x), true, global1.c, global2.x), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(var_0.d, -14287i) << (vec2<u32>(4294967295u, 158083u) % vec2<u32>(32u)), vec2<i32>(global2.x << (0u % 32u), var_0.d)), vec2<i32>(_wgslsmith_div_i32(2147483647i, ~global2.x), -1i)));
    var var_1 = -15991i;
    let var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(305f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(204f * _wgslsmith_f_op_f32(min(-612f, 477f))) + _wgslsmith_f_op_f32(-1367f - _wgslsmith_f_op_f32(max(1119f, -278f))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1020f, 766f) + vec2<f32>(-1150f, 1283f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1418f, -674f)))))));
    global2 = _wgslsmith_sub_vec2_i32(~(~min(select(vec2<i32>(u_input.a, -28595i), vec2<i32>(var_0.d, u_input.a), var_0.b), vec2<i32>(global2.x, global2.x))), vec2<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-1i, u_input.a)), _wgslsmith_clamp_vec2_i32(vec2<i32>(global1.d, 0i), vec2<i32>(-10532i, u_input.a), vec2<i32>(u_input.a, 4005i))), ~(18424i >> (var_0.c.x % 32u))) & _wgslsmith_add_vec2_i32(select(abs(vec2<i32>(u_input.a, 0i)), vec2<i32>(u_input.a, -2147483647i) ^ vec2<i32>(var_0.d, global1.d), vec2<bool>(true, true)), vec2<i32>(_wgslsmith_div_i32(2147483647i, 82886i), global1.d >> (var_0.a.x % 32u))));
    let var_3 = _wgslsmith_f_op_f32(floor(var_2.x));
    var var_4 = global3[_wgslsmith_index_u32(0u, 14u)];
    var var_5 = 513f;
    let var_6 = !select(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), var_0.b)), !vec2<bool>(var_4.b, select(var_0.b, var_0.b, var_4.b)), var_4.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_0.d, _wgslsmith_clamp_i32(1i, _wgslsmith_add_i32(global1.d, var_0.d) << (26020u % 32u), u_input.a >> (10746u % 32u)), var_0.d));
}

