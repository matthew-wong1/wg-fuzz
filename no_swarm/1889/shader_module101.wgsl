struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: u32 = 12459u;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(193f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(trunc(1f)));
    let var_1 = Struct_1(max(~(~vec2<u32>(global0.b.d, 33592u)), countOneBits(_wgslsmith_clamp_vec2_u32(select(vec2<u32>(global0.c, 4294967295u), vec2<u32>(1u, 1u), true), select(vec2<u32>(global0.c, arg_1.b.b), global0.b.a, vec2<bool>(false, arg_0)), arg_1.b.a ^ vec2<u32>(arg_1.b.b, arg_1.b.d)))), ~(~min(_wgslsmith_dot_vec2_u32(arg_1.b.a, arg_1.b.a), ~global0.c)), -817f, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(_wgslsmith_div_u32(arg_1.b.a.x, arg_1.b.a.x), select(57939u, 3407u, arg_0), _wgslsmith_mult_u32(20513u, 24302u), arg_1.c)), vec4<u32>(~global0.c, 50112u, firstTrailingBit(_wgslsmith_add_u32(global0.b.a.x, arg_1.c)), select(global0.c & 5184u, global0.c << (1u % 32u), global0.b.e.x && global0.b.e.x))), global0.b.e);
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.a)));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -551f)));
    var var_3 = !select(arg_1.b.e, select(vec2<bool>(!arg_1.b.e.x, global0.b.e.x), select(select(vec2<bool>(true, var_1.e.x), vec2<bool>(arg_1.b.e.x, true), true), var_1.e, arg_1.b.e.x), arg_0), var_1.e.x);
    return _wgslsmith_mod_u32(1u, 30606u);
}

fn func_2() -> Struct_2 {
    global0 = Struct_2(global0.a, Struct_1(vec2<u32>(func_3(true, Struct_2(global0.a, global0.b, global0.b.b)), min(_wgslsmith_sub_u32(9832u, global0.c), global0.b.a.x & global0.b.b)), ~_wgslsmith_div_u32(global0.b.d, func_3(true, Struct_2(global0.a, global0.b, 24271u))), 1730f, 21220u, select(!select(vec2<bool>(true, global0.b.e.x), global0.b.e, vec2<bool>(false, true)), select(vec2<bool>(global0.b.e.x, true), global0.b.e, true), all(select(vec4<bool>(true, true, false, true), vec4<bool>(global0.b.e.x, true, global0.b.e.x, global0.b.e.x), vec4<bool>(true, false, true, false))))), global0.b.a.x);
    let var_0 = global0.b.b >> (select(global0.b.a.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.b.a.x, global0.c, global0.c, global0.c), vec4<u32>(global0.c, 0u, global0.c, global0.c)), vec4<u32>(global0.c, global0.b.b, global0.b.d, global0.c)), global0.c << (max(4294967295u, 4294967295u) % 32u)), !(!any(global0.b.e))) % 32u);
    var var_1 = -vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(2147483647i, u_input.a.x), i32(-1i) * -93468i, _wgslsmith_clamp_i32(u_input.a.x, 1350i, u_input.a.x ^ -2147483647i)), u_input.a.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.c, -257f, global0.a) - vec3<f32>(-393f, 845f, global0.b.c)) * vec3<f32>(-1126f, -788f, -1302f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 353f, 435f) * vec3<f32>(173f, global0.b.c, global0.b.c)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-211f, 702f, global0.b.c) - vec3<f32>(global0.b.c, global0.a, -1314f))), !select(vec3<bool>(global0.b.e.x, false, true), vec3<bool>(global0.b.e.x, global0.b.e.x, true), global0.b.e.x)))));
    let var_3 = select(_wgslsmith_sub_vec3_i32(-vec3<i32>(39985i, 12575i, -58836i) | _wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.a.x, var_1.x, var_1.x), vec3<i32>(var_1.x, 14278i, -1i)), -firstLeadingBit(vec3<i32>(-1i, 13727i, -13060i)) >> (reverseBits(select(vec3<u32>(global0.c, 10914u, 33473u), vec3<u32>(0u, 5877u, global0.c), vec3<bool>(global0.b.e.x, global0.b.e.x, global0.b.e.x))) % vec3<u32>(32u))), vec3<i32>(u_input.a.x, min(-41807i, var_1.x), u_input.a.x), select(vec3<bool>(global0.b.e.x, global0.b.b == reverseBits(var_0), global0.b.e.x), select(vec3<bool>(any(global0.b.e), false && global0.b.e.x, true), vec3<bool>(all(vec3<bool>(true, global0.b.e.x, false)), true, all(vec2<bool>(true, global0.b.e.x))), vec3<bool>(true, true, true)), select(select(select(vec3<bool>(global0.b.e.x, true, false), vec3<bool>(false, false, global0.b.e.x), global0.b.e.x), !vec3<bool>(global0.b.e.x, global0.b.e.x, false), global0.b.e.x & true), !vec3<bool>(global0.b.e.x, true, false), any(global0.b.e))));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(355f, var_2.x, !any(vec4<bool>(global0.b.e.x, global0.b.e.x, false, global0.b.e.x))))), Struct_1(vec2<u32>(~abs(32783u), 1u), ~reverseBits(0u >> (var_0 % 32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(round(var_2.x))), 1069f), 4294967295u, global0.b.e), ((4294967295u >> (~global0.c % 32u)) << (_wgslsmith_div_u32(_wgslsmith_div_u32(global0.b.a.x, 37140u), 1u) % 32u)) >> (func_3(!(global0.b.e.x != true), Struct_2(_wgslsmith_f_op_f32(-global0.a), Struct_1(global0.b.a, global0.b.b, global0.b.c, 4294967295u, global0.b.e), abs(4294967295u))) % 32u));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<i32>) -> vec2<i32> {
    let var_0 = firstLeadingBit(select(select(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, 2147483647i, arg_1.x) << (vec4<u32>(0u, 51723u, global0.c, 7662u) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, -2147483647i) | vec4<i32>(arg_1.x, u_input.a.x, -1i, 1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 1i, -45628i, 0i), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -6964i), vec4<i32>(5446i, arg_1.x, arg_1.x, -36637i)), vec4<bool>(true, global0.b.e.x, global0.b.c <= global0.a, global0.b.c >= 824f)), countOneBits(vec4<i32>(-arg_1.x, u_input.a.x, u_input.a.x, -1i)), any(vec3<bool>(global0.b.e.x, all(vec2<bool>(false, global0.b.e.x)), !global0.b.e.x))));
    global1 = 1u;
    var var_1 = 1u;
    var var_2 = arg_0.x;
    global0 = func_2();
    return max(vec2<i32>(29030i, ~abs(u_input.a.x | 1i)), var_0.zy);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_2 {
    global0 = Struct_2(global0.b.c, func_2().b, 60572u);
    global1 = firstTrailingBit(40780u);
    let var_0 = ~vec3<u32>(51064u, arg_0.d, arg_0.b);
    global1 = ~arg_0.a.x;
    let var_1 = func_2().b;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(global0.b, _wgslsmith_add_vec2_i32(firstLeadingBit(firstTrailingBit(vec2<i32>(28663i, 1i))) | u_input.a, _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(0i, 22588i), u_input.a >> (vec2<u32>(global0.c, 1u) % vec2<u32>(32u)), select(vec2<i32>(-31539i, 26216i), vec2<i32>(-1i, u_input.a.x), false)), func_1(min(global0.b.a, global0.b.a), vec3<i32>(1i, u_input.a.x, 14565i)))));
    var_0 = Struct_2(global0.a, var_0.b, ~abs(global0.c >> (global0.b.d % 32u)));
    var var_1 = -abs(select(~u_input.a, u_input.a, select(var_0.b.e, var_0.b.e, func_4(var_0.b, u_input.a).b.e)));
    var var_2 = ~((func_2().b.b | 6463u) << (0u % 32u));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_0.b.c)))), global0.b.c);
    let var_4 = _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 1i, -14619i, var_1.x) >> (~vec4<u32>(26894u, ~global0.c, _wgslsmith_clamp_u32(global0.b.b, var_0.c, var_0.c), func_3(false, Struct_2(var_0.b.c, var_0.b, global0.c))) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(~(-select(vec4<i32>(11577i, var_1.x, -4970i, var_1.x), vec4<i32>(0i, -10781i, 245i, u_input.a.x), vec4<bool>(true, global0.b.e.x, global0.b.e.x, global0.b.e.x))), vec4<i32>(-1i) * -select(vec4<i32>(70285i, u_input.a.x, 22994i, u_input.a.x), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, -2145i), var_0.b.e.x)));
    var var_5 = Struct_1(vec2<u32>(var_0.b.d & _wgslsmith_mult_u32(0u, var_0.b.b), global0.c) ^ abs(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.d, 29266u, 32568u, 127375u), vec4<u32>(global0.c, var_0.c, 0u, 1u)), global0.c)), _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(var_0.b.a.x, 13434u, 30149u, var_0.c) >> (vec4<u32>(0u, global0.b.a.x, var_0.b.d, 4294967295u) % vec4<u32>(32u))), ~firstTrailingBit(abs(vec4<u32>(global0.b.a.x, global0.b.d, var_0.c, var_0.c)))), 2244f, ~1u, global0.b.e);
    var_5 = func_2().b;
    var var_6 = ~global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(-min(-12682i, func_1(vec2<u32>(43289u, 0u) << (var_0.b.a % vec2<u32>(32u)), vec3<i32>(u_input.a.x, u_input.a.x, var_1.x)).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-513f + 625f) * 1000f)));
}

