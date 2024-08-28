struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: bool) -> f32 {
    let var_0 = vec2<i32>(abs(1i ^ _wgslsmith_add_i32(global0.c.x, 12503i >> (1u % 32u))), _wgslsmith_div_i32(-1i, _wgslsmith_mod_i32(-min(arg_0.x, 59869i), 35163i)));
    let var_1 = ~var_0;
    global0 = Struct_1(global0.a, firstTrailingBit(~select(u_input.a.x, select(global0.b, 40091u, arg_2), true)), var_0);
    global0 = Struct_1(global0.a, ~global0.b, _wgslsmith_add_vec2_i32(~(arg_1 << (global0.a.yy % vec2<u32>(32u))), ~_wgslsmith_add_vec2_i32(arg_0, countOneBits(vec2<i32>(global0.c.x, var_0.x)))));
    global0 = Struct_1(_wgslsmith_add_vec4_u32(global0.a, global0.a), _wgslsmith_dot_vec2_u32(abs(u_input.a), select(_wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(0u, 17448u), vec2<u32>(global0.a.x, 16804u)), global0.a.wy, select(arg_2, true, false)) << (vec2<u32>(4294967295u, _wgslsmith_dot_vec2_u32(global0.a.yy, u_input.a)) % vec2<u32>(32u))), arg_1);
    return 1000f;
}

fn func_4(arg_0: vec4<f32>) -> vec4<u32> {
    let var_0 = global0.a.xxx;
    let var_1 = Struct_1(countOneBits(vec4<u32>(~0u, select(~global0.b, _wgslsmith_sub_u32(4294967295u, 19953u), true), 1471u, u_input.a.x)), var_0.x, _wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(global0.c.x, -1i)), vec2<i32>(countOneBits(1i), reverseBits(global0.c.x)), global0.c & ~global0.c));
    let var_2 = vec3<i32>(~_wgslsmith_add_i32(~_wgslsmith_add_i32(23257i, var_1.c.x), -_wgslsmith_add_i32(10i, -1i)), global0.c.x, _wgslsmith_mult_i32(-11357i, _wgslsmith_div_i32(-11067i, 2147483647i)));
    let var_3 = Struct_1(max(select(~abs(var_1.a), min(vec4<u32>(var_0.x, var_0.x, 41362u, global0.a.x), ~vec4<u32>(u_input.a.x, var_1.a.x, 1u, 4294967295u)), all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true)))), ~var_1.a), _wgslsmith_mult_u32(var_1.b, 39977u), _wgslsmith_clamp_vec2_i32(-vec2<i32>(var_1.c.x, var_1.c.x), min(-(vec2<i32>(var_2.x, -1i) << (vec2<u32>(u_input.a.x, var_0.x) % vec2<u32>(32u))), _wgslsmith_mod_vec2_i32(var_1.c, countOneBits(var_1.c))), var_2.yz));
    var var_4 = arg_0.x >= -1000f;
    return _wgslsmith_add_vec4_u32(var_3.a, vec4<u32>(global0.a.x, ~_wgslsmith_sub_u32(4294967295u, ~var_1.a.x), ~reverseBits(global0.a.x & var_3.b), ~4294967295u));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = vec4<u32>(global0.a.x, ~global0.a.x, ~(~abs(global0.b)), ~(~0u));
    global0 = Struct_1(firstLeadingBit(global0.a), 56388u, firstLeadingBit(firstLeadingBit(-_wgslsmith_mult_vec2_i32(global0.c, vec2<i32>(global0.c.x, global0.c.x)))));
    var var_1 = _wgslsmith_f_op_f32(min(-1606f, _wgslsmith_f_op_f32(min(458f, -1050f))));
    let var_2 = _wgslsmith_mult_vec2_u32(~(~(~(~vec2<u32>(3002u, global0.b)))), var_0.xw);
    let var_3 = global0.a.x;
    return Struct_1(global0.a >> (func_4(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -3542f), _wgslsmith_f_op_f32(min(2015f, 1722f)), _wgslsmith_f_op_f32(-550f * 1000f), _wgslsmith_f_op_f32(func_3(global0.c, global0.c, arg_0.x)))) % vec4<u32>(32u)), 71311u, _wgslsmith_clamp_vec2_i32(global0.c, -_wgslsmith_add_vec2_i32(global0.c, vec2<i32>(16692i, 1i)), global0.c));
}

fn func_1() -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-1192f)), 1268f) * vec2<f32>(-999f, -2754f)))));
    let var_1 = 1164f;
    global0 = Struct_1(global0.a ^ global0.a, 4294967295u, global0.c);
    global0 = func_2(vec2<bool>(any(vec3<bool>(true, true, true)), all(vec3<bool>(select(false, true, false), any(vec3<bool>(false, false, true)), true))));
    let var_2 = select(select(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, false), true), vec2<bool>(select(true, true, any(vec4<bool>(true, false, false, true))), false), select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(false, true, true))), (var_0.x < var_1) & true)), vec2<bool>(select(true, all(vec2<bool>(false, false)), true), false), true);
    return _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(reverseBits(_wgslsmith_add_vec3_u32(global0.a.yzy, vec3<u32>(4294967295u, global0.b, u_input.a.x))), max(vec3<u32>(u_input.a.x, 1786u, u_input.a.x), vec3<u32>(46576u, 4294967295u, global0.a.x)) | _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, global0.b, u_input.a.x), vec3<u32>(27644u, 0u, u_input.a.x)), func_4(vec4<f32>(var_1, 281f, var_0.x, var_1)).wzy ^ _wgslsmith_sub_vec3_u32(global0.a.xww, vec3<u32>(global0.a.x, 1u, u_input.a.x))), vec3<u32>(firstTrailingBit(global0.a.x), func_4(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-335f, -677f, 1074f, 541f)))).x, _wgslsmith_mod_u32(~global0.b, global0.b))), _wgslsmith_add_vec3_u32(select(reverseBits(vec3<u32>(57758u, global0.b, global0.a.x)), ~vec3<u32>(u_input.a.x, global0.a.x, 332u), !select(vec3<bool>(false, false, true), vec3<bool>(true, var_2.x, false), vec3<bool>(false, var_2.x, false))), vec3<u32>(func_2(var_2).b, 1u, 1u) & vec3<u32>(global0.b, global0.a.x, 4294967295u)));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec3<u32>) -> Struct_2 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -843f) * _wgslsmith_f_op_f32(max(-1280f, -662f))) + -1932f), -1085f);
    global0 = func_2(vec2<bool>(_wgslsmith_div_i32(global0.c.x, -1i) == 1i, any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, false)))));
    global0 = Struct_1(~global0.a, ~(~1u), vec2<i32>(abs(~(~global0.c.x)), ~(~1i)));
    let var_1 = Struct_1(global0.a, 0u, vec2<i32>(_wgslsmith_dot_vec4_i32(abs(-vec4<i32>(-48865i, -28054i, 1i, global0.c.x)), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.c.x, 0i, global0.c.x, global0.c.x), vec4<i32>(global0.c.x, -6961i, 2147483647i, global0.c.x)), vec4<i32>(2147483647i, global0.c.x, 32049i, 0i))), -63725i << (global0.b % 32u)));
    var var_2 = ~(-(~(-_wgslsmith_mod_i32(global0.c.x, 37191i))));
    return arg_0;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-108f + _wgslsmith_f_op_f32(select(-287f, 392f, true)))))));
    return func_2(vec2<bool>(any(!(!vec4<bool>(arg_2.x, arg_3, true, arg_2.x))), arg_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global0.a, ~firstTrailingBit(4294967295u) & u_input.a.x, vec2<i32>(-31632i, _wgslsmith_mult_i32(countOneBits(1i), global0.c.x)));
    global0 = func_6(func_5(Struct_2(9156u), func_1(), _wgslsmith_sub_vec3_u32(min(var_0.a.yyx, firstLeadingBit(var_0.a.yyy)), vec3<u32>(var_0.b, global0.a.x, u_input.a.x) | ~vec3<u32>(4294967295u, 24955u, 0u))), func_5(func_5(Struct_2(~1u), vec3<u32>(4294967295u, _wgslsmith_mult_u32(0u, u_input.a.x), _wgslsmith_add_u32(24547u, 0u)), func_1()), countOneBits(var_0.a.xyw | vec3<u32>(var_0.a.x, var_0.b, 28736u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(var_0.a.ywy ^ vec3<u32>(u_input.a.x, 63494u, 0u), vec3<u32>(global0.a.x, 58238u, u_input.a.x)), firstTrailingBit(~vec3<u32>(u_input.a.x, 0u, global0.a.x)), firstLeadingBit(global0.a.wzx))), vec3<bool>(false, (firstTrailingBit(global0.c.x) << (abs(0u) % 32u)) != _wgslsmith_div_i32(-2452i, func_2(vec2<bool>(false, false)).c.x), any(vec3<bool>(true, true, true)) || (any(vec3<bool>(false, true, false)) != true)), !any(vec4<bool>(true, false, select(false, false, true), false)));
    var var_1 = Struct_2(abs(~(u_input.a.x << (reverseBits(0u) % 32u))));
    var var_2 = select(vec2<bool>(abs(firstLeadingBit(global0.c.x)) != -_wgslsmith_div_i32(global0.c.x, -28839i), all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true)))), select(select(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, false), vec2<bool>(select(true, false, true), true)), vec2<bool>(true, true), true), true);
    let var_3 = select(!select(vec3<bool>(all(vec4<bool>(var_2.x, false, false, var_2.x)), var_2.x & false, var_2.x || var_2.x), !(!vec3<bool>(var_2.x, true, var_2.x)), !(!var_2.x)), vec3<bool>(_wgslsmith_f_op_f32(select(1049f, -522f, var_2.x)) > -666f, any(vec3<bool>(all(vec2<bool>(var_2.x, false)), all(vec2<bool>(true, false)), var_2.x)), !all(vec3<bool>(true, true, true))), false || var_2.x);
    var_1 = func_5(func_5(Struct_2(59194u), var_0.a.wyw, global0.a.wxz), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(var_0.a.xzz, ~(~global0.a.zxy)), _wgslsmith_sub_vec3_u32(~global0.a.www, vec3<u32>(var_1.a, global0.a.x, var_1.a)) & vec3<u32>(1u, 47402u, _wgslsmith_sub_u32(u_input.a.x, global0.a.x)), ~(vec3<u32>(global0.a.x, var_1.a, var_1.a) | vec3<u32>(6914u, u_input.a.x, 4294967295u)) | reverseBits(vec3<u32>(14280u, u_input.a.x, global0.b))), vec3<u32>(~min(abs(53631u), 0u | var_1.a), _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, var_0.b), var_0.a.wz), 26400u), firstTrailingBit(33746u)), 0u));
    var_2 = vec2<bool>((select(global0.c.x < -45341i, false, false) && (_wgslsmith_mod_u32(1u, 42923u) <= ~u_input.a.x)) || true, true);
    let var_4 = _wgslsmith_mult_vec4_i32(min(firstLeadingBit(~vec4<i32>(global0.c.x, 1i, global0.c.x, var_0.c.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 2147483647i, global0.c.x, 21685i) & vec4<i32>(global0.c.x, var_0.c.x, -52149i, global0.c.x), vec4<i32>(var_0.c.x, var_0.c.x, global0.c.x, global0.c.x))) >> (firstTrailingBit(~vec4<u32>(31921u, var_1.a, 4294967295u, var_1.a)) % vec4<u32>(32u)), ~_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(-47552i, var_0.c.x, global0.c.x, -1i)), -vec4<i32>(-31044i, global0.c.x, var_0.c.x, 1i)) | vec4<i32>(var_0.c.x, firstTrailingBit(2147483647i), ~max(2147483647i, -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(7831i, global0.c.x, global0.c.x, 6485i) & vec4<i32>(7610i, 11495i, var_0.c.x, global0.c.x), select(vec4<i32>(1i, global0.c.x, -11768i, -1i), vec4<i32>(2147483647i, -23248i, -1i, var_0.c.x), var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1654f + 1000f))), -257f, -1291f), vec3<f32>(_wgslsmith_f_op_f32(-136f * 1f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -947f), _wgslsmith_f_op_f32(493f + _wgslsmith_f_op_f32(116f - 688f)))), -997f), _wgslsmith_clamp_vec3_i32(min(-vec3<i32>(global0.c.x, 2147483647i, var_4.x), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, global0.c.x, var_4.x), vec3<i32>(-2147483647i, global0.c.x, var_0.c.x))), vec3<i32>(_wgslsmith_div_i32(-11824i, -32963i), 19984i, select(var_4.x, var_4.x, var_2.x)), countOneBits(var_4.yxx)) & (vec3<i32>(1i, 36032i, -9600i) << (_wgslsmith_mult_vec3_u32(func_1(), ~var_0.a.wwy) % vec3<u32>(32u))));
}

