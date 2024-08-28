struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<i32>(-20721i, i32(-2147483648), -21383i), 4294967295u, -682f, 110f, Struct_1(vec2<u32>(32069u, 1u), 2147483647i));

var<private> global1: array<u32, 16>;

var<private> global2: i32 = 1i;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3) -> u32 {
    var var_0 = Struct_3(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(arg_0.a, countOneBits(global0.a)), arg_0.a), _wgslsmith_clamp_u32(firstTrailingBit(firstLeadingBit(arg_0.e.a.x)), 49537u, global0.e.a.x), -648f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.d, _wgslsmith_f_op_f32(global0.d + arg_0.d), global0.c != global0.d))))), arg_0.e);
    let var_1 = 1288f;
    var var_2 = !vec2<bool>(true, global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(global0.b, global0.e.a.x), 16u)] >= global1[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(u_input.a.x, 4294967295u), ~0u), 16u)]);
    var var_3 = Struct_2(var_0.e.a.x, var_0.c);
    let var_4 = vec3<u32>(1u, 17653u, global1[_wgslsmith_index_u32(min(~abs(~arg_0.e.a.x), _wgslsmith_div_u32(4294967295u >> (1u % 32u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(37654u, var_3.a, 0u, 85010u), vec4<u32>(0u, 1u, var_0.b, var_0.b)))), 16u)]);
    return 38265u | (arg_0.e.a.x | 0u);
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: vec2<bool>) -> f32 {
    var var_0 = Struct_3(reverseBits(-(~(~u_input.b.wyw))), _wgslsmith_dot_vec3_u32(~u_input.a.wxx, ~_wgslsmith_mult_vec3_u32(u_input.a.wyz, vec3<u32>(global0.e.a.x, 54307u, u_input.a.x))) << (func_3(Struct_3(~global0.a, global0.e.a.x, _wgslsmith_f_op_f32(sign(global0.c)), _wgslsmith_f_op_f32(global0.d * global0.c), Struct_1(global0.e.a, arg_0.x))) % 32u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1 + -1199f))), -517f, global0.e);
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -835f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.c)))))) < 170f;
    var var_2 = Struct_2(15817u, -793f);
    var_0 = Struct_3(vec3<i32>(var_0.a.x, ~arg_0.x, 1i), 1u, arg_1, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b))))), global0.e);
    var var_3 = var_0.e;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) * var_2.b) + 498f)) - _wgslsmith_f_op_f32(floor(-383f)));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: vec3<u32>) -> vec3<i32> {
    global1 = array<u32, 16>();
    var var_0 = vec3<bool>(any(vec2<bool>(true, true)), firstLeadingBit(abs(~0u)) == _wgslsmith_clamp_u32(arg_0.x, select(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16061u, 16u)], 16u)] ^ global0.e.a.x, 16u)], true), _wgslsmith_mod_u32(arg_2.x, 42133u | u_input.a.x)), ~global0.e.a.x > _wgslsmith_div_u32(~55193u, firstTrailingBit(21785u)));
    let var_1 = global0.e.b;
    let var_2 = false;
    var_0 = select(select(select(select(!vec3<bool>(false, var_0.x, var_2), vec3<bool>(var_0.x, var_2, true), !vec3<bool>(var_0.x, false, true)), vec3<bool>(!var_0.x, true, true), select(vec3<bool>(false, var_2, var_0.x), vec3<bool>(var_0.x, true, var_2), !vec3<bool>(true, var_2, var_2))), !(!(!vec3<bool>(true, true, var_2))), select(!vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, !var_0.x, false), vec3<bool>(all(var_0.yz), true, all(vec3<bool>(true, var_0.x, var_2))))), !vec3<bool>(var_0.x, any(!vec2<bool>(false, var_0.x)), any(select(vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(var_0.x, false, false, true), false))), vec3<bool>(any(vec3<bool>(var_2 && var_2, all(vec4<bool>(false, var_2, var_0.x, false)), any(vec3<bool>(var_2, var_0.x, true)))), all(select(select(var_0.xy, var_0.zy, var_0.x), !var_0.xx, true)), any(vec2<bool>(u_input.c.x < 2147483647i, !var_2))));
    return vec3<i32>(1i & ~(-_wgslsmith_sub_i32(u_input.c.x, 2147483647i)), ~(~_wgslsmith_dot_vec4_i32(-vec4<i32>(global0.a.x, global0.e.b, global0.a.x, u_input.b.x), u_input.b)), global0.a.x);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -825f), _wgslsmith_div_f32(532f, 1496f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(648f, _wgslsmith_f_op_f32(-arg_0.b))), !(-906f == _wgslsmith_f_op_f32(-585f * arg_0.b)))));
    global1 = array<u32, 16>();
    let var_1 = global0.e.a;
    var var_2 = _wgslsmith_mult_vec3_i32(arg_1.wzx, func_4(vec3<u32>((53970u ^ u_input.a.x) << (12939u % 32u), abs(~arg_0.a), ~(~4294967295u)), vec4<f32>(-178f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec3<i32>(2353i, arg_1.x, -3399i), 347f, vec2<bool>(false, true))), _wgslsmith_f_op_f32(min(arg_0.b, -433f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1002f * 626f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1266f)) * _wgslsmith_f_op_f32(arg_0.b * 1374f))), u_input.a.wyx));
    var var_3 = vec2<bool>(-49070i >= u_input.c.x, any(vec2<bool>(true, true)));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(abs(func_4(vec3<u32>(1u, u_input.a.x, global1[_wgslsmith_index_u32(16260u, 16u)]), vec4<f32>(arg_0.b, var_0.x, -482f, -639f), vec3<u32>(var_1.x, 120600u, 4294967295u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.d * arg_0.b), _wgslsmith_f_op_f32(-var_0.x)), vec2<bool>(var_3.x, !var_3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))) - -364f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(global0.d * _wgslsmith_f_op_f32(func_1(Struct_2(u_input.a.x | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], 16u)], 1184f), vec4<i32>(select(u_input.b.x, -1i, false), i32(-1i) * -56196i, 35481i, i32(-1i) * -41597i)))));
    let var_1 = select(select(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), vec3<bool>(true, true, true), 2147483647i <= _wgslsmith_sub_i32(~2147483647i, global0.e.b)), vec3<bool>((any(vec4<bool>(true, false, false, true)) | false) || (_wgslsmith_f_op_f32(step(-101f, global0.c)) != 351f), !(421f <= global0.c) && any(select(vec2<bool>(false, true), vec2<bool>(true, true), true)), all(vec2<bool>(false, false)) == !all(vec2<bool>(true, true))), true);
    global0 = Struct_3(vec3<i32>(u_input.c.x, u_input.b.x, abs(-1i)), 61336u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_2(global1[_wgslsmith_index_u32(4294967295u, 16u)] & 37063u, _wgslsmith_f_op_f32(f32(-1f) * -1397f)), vec4<i32>(func_4(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec4<f32>(global0.d, global0.c, 565f, global0.c), u_input.a.xxy).x, global0.a.x, ~(-1i), u_input.c.x))) + global0.c), global0.d, global0.e);
    var_0 = global0.d;
    var var_2 = all(vec3<bool>(!var_1.x, var_1.x, any(var_1)));
    var var_3 = global0.e;
    var_0 = 844f;
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1184f, global0.d) - _wgslsmith_f_op_f32(func_2(vec3<i32>(global0.e.b, -1i, 28686i), 548f, var_1.zy))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1489f, -427f, var_1.x))) + _wgslsmith_f_op_f32(-global0.d))), _wgslsmith_f_op_f32(f32(-1f) * -1035f), global0.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(502f)), -1510f, global1[_wgslsmith_index_u32(1u, 16u)] == (~92071u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, var_3.a.x), vec3<u32>(4294967295u, 0u, global1[_wgslsmith_index_u32(4294967295u, 16u)])) % 32u)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, _wgslsmith_div_f32(var_4.x, var_4.x), _wgslsmith_div_f32(var_4.x, _wgslsmith_f_op_f32(f32(-1f) * -306f)))), (vec3<i32>(~global0.a.x, -global0.e.b, func_4(u_input.a.yzz, vec4<f32>(-1555f, -1289f, global0.c, global0.d), vec3<u32>(59404u, 49043u, global1[_wgslsmith_index_u32(var_3.a.x, 16u)])).x) & global0.a) << (~(~u_input.a.xzz) % vec3<u32>(32u)), _wgslsmith_dot_vec3_u32(u_input.a.wzx, u_input.a.yzx));
}

