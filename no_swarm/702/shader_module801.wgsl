struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec2<bool>,
    d: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: Struct_2,
    d: bool,
    e: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1269f, -528f, -437f, 301f);

var<private> global1: i32 = i32(-2147483648);

var<private> global2: array<bool, 27> = array<bool, 27>(true, true, false, false, true, false, true, false, false, true, true, false, true, true, false, true, false, false, true, false, true, false, false, true, true, false, false);

var<private> global3: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> i32 {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1112f, 1223f, 188f)) - vec4<f32>(-346f, _wgslsmith_f_op_f32(abs(-1800f)), _wgslsmith_f_op_f32(1690f + 1609f), _wgslsmith_f_op_f32(601f * -1765f)));
    global1 = firstLeadingBit(2147483647i);
    let var_0 = Struct_2(4849i, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(207f, _wgslsmith_f_op_f32(ceil(global0.x))))), !(!vec2<bool>(select(false, global3.x, true), global3.x)), global0.x);
    let var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(350f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, var_1.d)))))));
    return 2147483647i;
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) + 815f);
    let var_1 = firstLeadingBit(-vec3<i32>(72679i, -1i, 20540i));
    var var_2 = Struct_5(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -305f), vec4<u32>(~arg_0.b.x, ~u_input.a.x, 51585u, select(~21873u, abs(0u), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(arg_0.c))))), _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(376f, global0.x))))), u_input.c.x, select(select(!vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(u_input.a.x, 27u)]), vec4<bool>(true, false && global2[_wgslsmith_index_u32(23263u, 27u)], u_input.b == 4294967295u, true), vec4<bool>(!global2[_wgslsmith_index_u32(u_input.d, 27u)], any(vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 27u)])), global3.x & global3.x, -2147483647i >= u_input.c.x)), select(vec4<bool>(true, all(vec3<bool>(true, global3.x, global3.x)), any(vec3<bool>(true, true, false)), true), select(vec4<bool>(global2[_wgslsmith_index_u32(57530u, 27u)], global2[_wgslsmith_index_u32(u_input.e, 27u)], false, true), vec4<bool>(false, global3.x, false, false), select(vec4<bool>(global3.x, false, false, global3.x), vec4<bool>(global3.x, false, global3.x, false), vec4<bool>(false, false, true, global2[_wgslsmith_index_u32(u_input.d, 27u)]))), vec4<bool>(any(vec4<bool>(global3.x, global3.x, true, global2[_wgslsmith_index_u32(arg_0.b.x, 27u)])), true, any(vec4<bool>(global3.x, global3.x, global3.x, global2[_wgslsmith_index_u32(u_input.d, 27u)])), select(false, global3.x, true))), !select(select(vec4<bool>(global2[_wgslsmith_index_u32(arg_0.b.x, 27u)], false, true, global3.x), vec4<bool>(true, false, true, true), vec4<bool>(false, global2[_wgslsmith_index_u32(arg_0.b.x, 27u)], global2[_wgslsmith_index_u32(55259u, 27u)], global3.x)), !vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.e, 27u)], true, true), vec4<bool>(global2[_wgslsmith_index_u32(arg_0.b.x, 27u)], false, global2[_wgslsmith_index_u32(0u, 27u)], false))), ~(~max(~vec2<i32>(var_1.x, var_1.x), vec2<i32>(u_input.c.x, -1i))));
    var var_3 = Struct_4(select(~_wgslsmith_clamp_vec3_i32(var_1, _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 41262i, u_input.c.x), var_1, vec3<i32>(-2147483647i, u_input.c.x, var_1.x)), _wgslsmith_div_vec3_i32(u_input.c.wyx, vec3<i32>(1i, 2147483647i, u_input.c.x))), min(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, var_1.x, -1i), select(var_1, u_input.c.wxz, false)), u_input.c.wxy), !var_2.c.x), global2[_wgslsmith_index_u32(~(~arg_0.b.x), 27u)]);
    let var_4 = Struct_4(((var_3.a | vec3<i32>(-2147483647i, -13763i, var_1.x)) & var_1) ^ (firstTrailingBit(u_input.c.yyz >> (var_2.a.b.wwy % vec3<u32>(32u))) >> (reverseBits(u_input.a) % vec3<u32>(32u))), any(select(select(select(vec3<bool>(true, var_2.c.x, var_3.b), var_2.c.yxy, var_2.c.xyz), var_2.c.yxz, global2[_wgslsmith_index_u32(1u, 27u)] & var_2.c.x), var_2.c.zwz, true)));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.x, ~(~arg_0.b.x), arg_0.b.x), var_2.a.b.ywx);
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: vec3<u32>, arg_3: bool) -> f32 {
    var var_0 = vec4<bool>(~reverseBits(-arg_1) <= u_input.c.x, !all(vec2<bool>(global2[_wgslsmith_index_u32(0u, 27u)], false)), arg_3, arg_3);
    let var_1 = u_input.d | u_input.b;
    var_0 = select(select(vec4<bool>(select(global2[_wgslsmith_index_u32(firstTrailingBit(3067u), 27u)], true, u_input.c.x != 2147483647i), _wgslsmith_div_i32(-2147483647i, u_input.c.x) == ~u_input.c.x, true, true), vec4<bool>(true, all(vec4<bool>(false, arg_3, false, false)), any(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], true, global3.x, arg_3), vec4<bool>(false, var_0.x, true, false), vec4<bool>(arg_3, true, false, false))), any(select(vec4<bool>(false, true, true, arg_3), vec4<bool>(false, global3.x, false, global3.x), arg_3))), vec4<bool>(true, true, true, true)), select(!select(!vec4<bool>(global3.x, false, global3.x, var_0.x), vec4<bool>(false, true, true, false), !var_0.x), select(vec4<bool>(global3.x, var_1 <= arg_2.x, arg_3, false), !(!vec4<bool>(arg_3, true, var_0.x, true)), !select(vec4<bool>(true, true, global3.x, false), vec4<bool>(var_0.x, global2[_wgslsmith_index_u32(1u, 27u)], var_0.x, false), vec4<bool>(true, false, global3.x, var_0.x))), vec4<bool>(any(select(vec2<bool>(global2[_wgslsmith_index_u32(arg_2.x, 27u)], false), var_0.xx, global3.x)), any(vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 27u)], true, global3.x)), global2[_wgslsmith_index_u32(~40084u << (0u % 32u), 27u)], !arg_3)), !(!vec4<bool>(false, true, 0u != u_input.b, 26430u > var_1)));
    var var_2 = vec4<i32>(-arg_1, 1i, 0i, ~(-1i));
    var var_3 = _wgslsmith_div_vec3_i32(vec3<i32>(arg_1, ~(u_input.c.x << (_wgslsmith_mod_u32(var_1, 4294967295u) % 32u)), abs(-17538i)), vec3<i32>(abs(-2147483647i), _wgslsmith_clamp_i32(~40835i, u_input.c.x, ~reverseBits(-3928i)), u_input.c.x));
    return _wgslsmith_div_f32(214f, _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(-global0.x))));
}

fn func_2(arg_0: i32, arg_1: i32) -> f32 {
    let var_0 = Struct_2(u_input.c.x, _wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), -623f), _wgslsmith_div_vec2_f32(global0.xw, global0.yy)), u_input.c.x, _wgslsmith_mult_vec3_u32(~select(u_input.a, vec3<u32>(u_input.d, 9154u, 0u), vec3<bool>(global2[_wgslsmith_index_u32(u_input.d, 27u)], false, true)), ~(~u_input.a)), global2[_wgslsmith_index_u32(func_3(Struct_1(_wgslsmith_f_op_f32(-global0.x), abs(vec4<u32>(u_input.b, 75076u, 15950u, 1u)), vec4<f32>(global0.x, 640f, 1000f, 296f), global0.x, vec2<f32>(-776f, global0.x))), 27u)])), !(!vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, 61374u), 27u)], global3.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -886f) * 490f)))));
    let var_1 = u_input.c.x;
    global1 = select(arg_1, max(_wgslsmith_mod_i32(select(-2147483647i, -var_1, all(vec4<bool>(true, global3.x, true, true))), ~arg_0), func_1()), any(vec2<bool>(any(vec2<bool>(global2[_wgslsmith_index_u32(57173u, 27u)], global2[_wgslsmith_index_u32(1u, 27u)])), !select(global3.x, false, global2[_wgslsmith_index_u32(u_input.d, 27u)]))));
    let var_2 = vec3<f32>(var_0.b, var_0.b, 1105f);
    let var_3 = abs(-u_input.c.yw);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-718f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.b + var_2.x))) + _wgslsmith_f_op_f32(-450f * var_2.x))) * var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~_wgslsmith_clamp_i32(~1i, func_1(), u_input.c.x), _wgslsmith_f_op_f32(func_2(9284i, min(_wgslsmith_mult_i32(-4783i | u_input.c.x, 13054i), 10610i))), !select(!select(vec2<bool>(false, false), vec2<bool>(true, false), true), !select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 27u)], global3.x), vec2<bool>(true, false), vec2<bool>(global3.x, global2[_wgslsmith_index_u32(u_input.a.x, 27u)])), vec2<bool>(any(vec2<bool>(global2[_wgslsmith_index_u32(0u, 27u)], global3.x)), all(vec4<bool>(true, global3.x, true, true)))), _wgslsmith_f_op_f32(-global0.x));
    let var_1 = Struct_4(vec3<i32>(var_0.a, -27033i << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.b, u_input.a.x, u_input.e), vec4<u32>(4294967295u, 1u, u_input.d, u_input.b)) % 32u), _wgslsmith_div_i32(-16336i, select(var_0.a, 4359i, global3.x))) | select(_wgslsmith_mod_vec3_i32(abs(u_input.c.zzx), select(u_input.c.zzx, u_input.c.ywz, vec3<bool>(global2[_wgslsmith_index_u32(42762u, 27u)], true, false))), u_input.c.xzz, select(!vec3<bool>(global3.x, var_0.c.x, true), vec3<bool>(false, false, true), any(vec4<bool>(global3.x, global3.x, true, var_0.c.x)))), true && (reverseBits(max(u_input.a.x, 14085u)) >= 0u));
    let var_2 = -678f;
    global3 = var_0.c;
    var var_3 = vec4<i32>(0i, u_input.c.x, _wgslsmith_mod_i32(select(var_1.a.x | -var_0.a, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.x, u_input.c.x), vec2<i32>(-2147483647i, -15747i)) | ~var_0.a, var_1.b | (4294967295u != u_input.d)), -(~(~(-2147483647i)))), _wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.c.x, var_1.a.x), _wgslsmith_mod_i32(~(-var_0.a), u_input.c.x), -(~(-52588i ^ var_0.a))));
    global2 = array<bool, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(countOneBits(~_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, var_1.a.x, var_1.a.x, -1465i), vec4<i32>(var_1.a.x, var_1.a.x, -14054i, 2147483647i)))), u_input.c.x);
}

