struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1;

var<private> global2: array<vec4<bool>, 28>;

var<private> global3: vec3<f32>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = Struct_2(!select(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), true), global1.c.x < -6713i));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-198f + _wgslsmith_f_op_f32(1275f - _wgslsmith_f_op_f32(global1.b * arg_0)))))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -509f);
    var var_3 = Struct_1(global1.a ^ ~vec2<u32>(~global1.a.x, global1.a.x | global1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -(~vec4<i32>(select(0i, global1.c.x, false), 1i, global1.c.x, select(global1.c.x, -2147483647i, var_0.a.x))));
    var var_4 = select(-2324i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_3.c.x, 1i, u_input.a, u_input.a), global1.c) << ((vec4<u32>(0u, var_3.a.x, 15958u, global1.a.x) << (vec4<u32>(var_3.a.x, 25682u, global1.a.x, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)), -global1.c), all(select(select(vec3<bool>(true, false, var_0.a.x), vec3<bool>(false, true, var_0.a.x), vec3<bool>(var_0.a.x, false, false)), !vec3<bool>(true, false, var_0.a.x), var_3.a.x >= 4294967295u))) >> (global1.a.x % 32u);
    return global1.b;
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(func_3(2071f));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.x, 1062f, -489f, -277f), vec4<f32>(global1.b, 1050f, global1.b, 168f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, 877f, global3.x, -3501f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, var_0, -318f, global1.b), vec4<f32>(653f, var_0, 1000f, var_0), true)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1000f, -360f, var_0))))));
    let var_2 = countOneBits(u_input.a);
    global2 = array<vec4<bool>, 28>();
    var var_3 = global1.c.zww;
    return _wgslsmith_f_op_f32(step(-1000f, global1.b));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(~global1.a.x, 23350u), ~global1.a), vec2<u32>(~global1.a.x & ~global1.a.x, global1.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - global3.x), global3.x)), _wgslsmith_div_vec4_i32(select(-vec4<i32>(global1.c.x, 2147483647i, -1i, u_input.a), _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a, -81729i, u_input.a, 2147483647i)), global1.c), select(global2[_wgslsmith_index_u32(71257u, 28u)], global2[_wgslsmith_index_u32(global1.a.x, 28u)], vec4<bool>(true, true, true, true))), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(-2147483647i, u_input.a, -45322i, global1.c.x), vec4<i32>(-59662i, u_input.a, 2147483647i, u_input.a)), reverseBits(select(vec4<i32>(global1.c.x, -2147483647i, -24875i, 57513i), vec4<i32>(-1015i, u_input.a, global1.c.x, -2147483647i), vec4<bool>(true, true, true, true))))));
    let var_1 = Struct_2(!(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(false, true))));
    var_0 = Struct_1(~(~(~vec2<u32>(global1.a.x, var_0.a.x))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1455f, global3.x)))))), _wgslsmith_sub_vec4_i32(~vec4<i32>(countOneBits(-1i), 0i, reverseBits(global1.c.x), -60373i), vec4<i32>(global1.c.x, ~u_input.a, var_0.c.x, _wgslsmith_sub_i32(u_input.a, var_0.c.x)) >> (vec4<u32>(_wgslsmith_clamp_u32(global1.a.x, 0u, global1.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(26801u, 4294967295u, 1u), vec3<u32>(33326u, var_0.a.x, 0u)), global1.a.x, abs(var_0.a.x)) % vec4<u32>(32u))));
    var var_2 = vec3<u32>(~_wgslsmith_clamp_u32(var_0.a.x, max(countOneBits(var_0.a.x), ~var_0.a.x), ~_wgslsmith_add_u32(18834u, global1.a.x)), abs(max(select(_wgslsmith_mod_u32(global1.a.x, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.x, 54257u, global1.a.x), vec3<u32>(var_0.a.x, 4294967295u, 31780u)), !var_1.a.x), reverseBits(global1.a.x) >> (37996u % 32u))), ~33u);
    var var_3 = select(!(!(!select(vec3<bool>(false, false, var_1.a.x), vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), vec3<bool>(true, true, var_1.a.x)))), select(!select(vec3<bool>(true, false, false), !vec3<bool>(var_1.a.x, false, false), vec3<bool>(var_1.a.x, true, var_1.a.x)), select(select(vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), vec3<bool>(var_1.a.x, false, var_1.a.x), vec3<bool>(true, true, var_1.a.x)), select(!vec3<bool>(var_1.a.x, false, var_1.a.x), vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), true), vec3<bool>(all(vec2<bool>(var_1.a.x, var_1.a.x)), false, 985f > global1.b)), vec3<bool>(any(vec3<bool>(var_1.a.x, true, var_1.a.x)), !all(vec3<bool>(false, true, var_1.a.x)), var_1.a.x)), !(!(!(!vec3<bool>(var_1.a.x, var_1.a.x, false)))));
    return Struct_1(var_2.yx, global3.x, _wgslsmith_mod_vec4_i32(vec4<i32>(1i, select(-1i, -2147483647i, var_1.a.x), u_input.a, firstLeadingBit(1i)) & var_0.c, _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(u_input.a, 0i, var_0.c.x, -26046i)), vec4<i32>(-1i) * -global1.c)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = !select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), true), vec2<bool>(true, true)), !select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), true), all(vec3<bool>(true, true, true)));
    var_0 = select(!vec2<bool>(true, any(select(global2[_wgslsmith_index_u32(43168u, 28u)], vec4<bool>(true, true, false, false), global2[_wgslsmith_index_u32(global1.a.x, 28u)]))), vec2<bool>(true, true), select(select(select(select(vec2<bool>(var_0.x, true), vec2<bool>(true, var_0.x), var_0.x), !vec2<bool>(var_0.x, true), !vec2<bool>(true, var_0.x)), select(select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x), var_0.x), vec2<bool>(false, false), true), _wgslsmith_div_f32(757f, -108f) < _wgslsmith_f_op_f32(trunc(global1.b))), vec2<bool>(!select(false, var_0.x, true), var_0.x), var_0.x));
    global1 = Struct_1(arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-498f)))), -vec4<i32>(reverseBits(9301i << (arg_1.a.x % 32u)), ~arg_1.c.x, 63291i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.c.x, 0i), vec2<i32>(arg_1.c.x, -19847i)), _wgslsmith_add_i32(arg_0.x, arg_0.x))));
    var var_1 = func_1();
    global3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(519f, global1.b, -1052f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, -520f, var_1.b) + vec3<f32>(global3.x, -2169f, -973f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-504f, 1005f)), _wgslsmith_f_op_f32(-arg_1.b), 900f) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global3.x, var_1.b, -1110f), vec3<f32>(1513f, -642f, 211f))), vec3<f32>(var_1.b, -308f, 1281f)))) * vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(1363f + _wgslsmith_f_op_f32(step(-195f, 614f))), global3.x)), true));
    return func_1();
}

fn func_5(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = func_1();
    let var_1 = select(~_wgslsmith_clamp_u32(global1.a.x, ~_wgslsmith_mod_u32(global1.a.x, arg_0.a.x), abs(global1.a.x)), _wgslsmith_mult_u32(~max(_wgslsmith_add_u32(global1.a.x, var_0.a.x), _wgslsmith_dot_vec2_u32(var_0.a, var_0.a)), 2965u), -1i < firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, global1.c.x, 0i, -15259i), vec4<i32>(-2147483647i, var_0.c.x, 8609i, 1i))));
    global1 = arg_0;
    let var_2 = (global1.c.x << (0u % 32u)) | reverseBits(-(firstTrailingBit(-19392i) << (~arg_0.a.x % 32u)));
    var_0 = Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(max(reverseBits(63760u), 51210u), ~(arg_0.a.x >> (global1.a.x % 32u))), vec2<u32>(arg_0.a.x, _wgslsmith_sub_u32(1u, var_1))), _wgslsmith_f_op_f32(var_0.b + global3.x), _wgslsmith_sub_vec4_i32(var_0.c, min(arg_0.c, arg_0.c) ^ (_wgslsmith_add_vec4_i32(vec4<i32>(1i, -1i, var_2, arg_0.c.x), arg_0.c) >> (vec4<u32>(1u, global1.a.x, 1u, 0u) % vec4<u32>(32u)))));
    return vec3<f32>(-748f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-137f)))), -923f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.c.x;
    global3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) - _wgslsmith_f_op_f32(f32(-1f) * -404f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1172f))), 1000f)), _wgslsmith_f_op_vec3_f32(func_5(func_4(vec3<i32>(2147483647i, u_input.a, _wgslsmith_dot_vec2_i32(global1.c.yw, vec2<i32>(u_input.a, global1.c.x))), func_1())))));
    var var_1 = func_4(-(~_wgslsmith_add_vec3_i32(global1.c.zwx, vec3<i32>(20922i, u_input.a, u_input.a))), func_4(global1.c.zxy, Struct_1(global1.a, _wgslsmith_div_f32(_wgslsmith_div_f32(global1.b, 1523f), -723f), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.c.x, 1i, global1.c.x, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(45264i, -26241i, u_input.a, 1i), vec4<i32>(u_input.a, u_input.a, global1.c.x, -14866i))))));
    let var_2 = _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(var_1.c.wy, var_1.c.zx), select(abs(global1.c.yw), -vec2<i32>(var_1.c.x, firstLeadingBit(u_input.a)), false));
    let var_3 = select(select(global2[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(~var_1.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.x, 0u), vec2<u32>(0u, global1.a.x))), 52957u), 28u)], vec4<bool>(!all(vec3<bool>(false, false, false)), select(true, select(false, true, false), true), all(vec4<bool>(true, true, true, true)), select(true, true, all(vec3<bool>(true, true, true)))), all(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), all(select(vec3<bool>(true, true, true), vec3<bool>(select(true, false, true), false, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)))));
    var var_4 = Struct_1(select(vec2<u32>(13853u, 79436u), global1.a, vec2<bool>((global1.b < 836f) != !var_3.x, true)), var_1.b, _wgslsmith_mult_vec4_i32(countOneBits(var_1.c), _wgslsmith_clamp_vec4_i32(global1.c, -vec4<i32>(u_input.a, -11736i, -61716i, var_1.c.x) | global1.c, vec4<i32>(global1.c.x, u_input.a, u_input.a, -806i) ^ ~vec4<i32>(6869i, 0i, -26502i, 1i))));
    var var_5 = Struct_2(vec2<bool>(var_3.x, !(!any(vec3<bool>(var_3.x, false, var_3.x)))));
    let var_6 = Struct_2(var_3.xz);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_4.c.x, ~var_2.x, u_input.a, var_4.c.x ^ -1i), var_1.a.x, _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(func_4(vec3<i32>(u_input.a, var_1.c.x, u_input.a), Struct_1(var_4.a, 1381f, var_1.c)).a, ~vec2<u32>(global1.a.x, var_1.a.x)), ~func_4(vec3<i32>(u_input.a, 38529i, 62951i), Struct_1(var_1.a, 1443f, var_4.c)).a | ~abs(var_4.a), vec2<u32>(0u, 4294967295u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(var_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-1042f * global3.x)))))), _wgslsmith_f_op_f32(1918f + _wgslsmith_f_op_f32(f32(-1f) * -1075f)));
}

