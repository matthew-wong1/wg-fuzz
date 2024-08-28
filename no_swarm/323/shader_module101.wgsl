struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 28>;

var<private> global1: vec3<u32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> vec2<bool> {
    global1 = _wgslsmith_mod_vec3_u32(~countOneBits(~arg_1.zwy), arg_1.xzz);
    let var_0 = Struct_1(arg_0.a, !select(select(!global0[_wgslsmith_index_u32(global1.x, 28u)], vec2<bool>(arg_0.b.x, false), arg_0.c), select(arg_0.b, select(vec2<bool>(arg_0.b.x, arg_0.b.x), vec2<bool>(true, arg_0.c), vec2<bool>(arg_0.b.x, true)), arg_0.b.x), true), true);
    var var_1 = _wgslsmith_div_i32(-2147483647i, abs(-1i));
    global1 = arg_1.xww | ~(~((vec3<u32>(1u, global1.x, arg_1.x) ^ arg_1.xxx) << (reverseBits(arg_1.xyy) % vec3<u32>(32u))));
    var var_2 = -min(abs(vec3<i32>(1i, 1i, 1i)), _wgslsmith_mult_vec3_i32(min(vec3<i32>(34355i, -61746i, 2147483647i), vec3<i32>(-1i, -2171i, 21938i)), vec3<i32>(0i, 0i, 0i) << (vec3<u32>(0u, global1.x, 0u) % vec3<u32>(32u)))) << (select(arg_1.zyz, _wgslsmith_mult_vec3_u32(arg_1.xwx, vec3<u32>(firstTrailingBit(u_input.a), 4294967295u | arg_1.x, countOneBits(global1.x))), !vec3<bool>(any(vec4<bool>(true, arg_0.c, false, true)), !arg_0.c, !arg_0.b.x)) % vec3<u32>(32u));
    return !select(select(select(arg_0.b, select(var_0.b, global0[_wgslsmith_index_u32(0u, 28u)], true), select(global0[_wgslsmith_index_u32(0u, 28u)], var_0.b, vec2<bool>(false, var_0.b.x))), !select(vec2<bool>(false, arg_0.b.x), global0[_wgslsmith_index_u32(0u, 28u)], var_0.b), select(global0[_wgslsmith_index_u32(~u_input.a, 28u)], !vec2<bool>(arg_0.c, arg_0.b.x), vec2<bool>(var_0.c, var_0.b.x))), vec2<bool>(true, arg_0.c), var_0.b);
}

fn func_4(arg_0: Struct_1) -> i32 {
    let var_0 = arg_0;
    global0 = array<vec2<bool>, 28>();
    var var_1 = global1.zy;
    let var_2 = var_0.a.xx;
    var var_3 = ~_wgslsmith_mult_vec2_u32(~u_input.b, ~(global1.yy >> (global1.xx % vec2<u32>(32u))) << (~countOneBits(u_input.b) % vec2<u32>(32u)));
    return ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), -(~vec2<i32>(35772i, 2147483647i))) ^ -13573i;
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = arg_0;
    var var_1 = select(-21455i, func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(534f, 771f, -553f)), func_3(Struct_1(var_0.a, vec2<bool>(true, var_0.b.x), arg_0.b.x), vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 47179u)), var_0.c)), any(!vec3<bool>(arg_0.c, true, var_0.c)) || (arg_0.b.x && var_0.b.x)) | ~select(4397i, 60289i, !var_0.c);
    global0 = array<vec2<bool>, 28>();
    var var_2 = ~global1.yz;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-419f, arg_0.a.x, -273f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1487f) - _wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1777f), 166f, var_0.a.x) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(817f, arg_0.a.x, 683f, arg_0.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(542f, var_0.a.x, var_0.a.x, -462f)), false | var_0.c))), vec4<bool>(all(!vec4<bool>(var_0.b.x, var_0.b.x, false, var_0.b.x)), any(select(vec2<bool>(true, arg_0.b.x), vec2<bool>(arg_0.c, var_0.c), var_0.b)), true, arg_0.c))));
    return -1367f;
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: vec3<f32>) -> u32 {
    global0 = array<vec2<bool>, 28>();
    var var_0 = _wgslsmith_f_op_f32(-arg_1);
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(Struct_1(vec3<f32>(337f, arg_3.x, 2094f), vec2<bool>(true, false), false)))))))), _wgslsmith_f_op_f32(step(arg_2, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -756f), _wgslsmith_f_op_f32(select(arg_1, arg_2, true)))), _wgslsmith_f_op_f32(abs(arg_1)))))));
    var var_1 = arg_0;
    let var_2 = Struct_1(arg_3, global0[_wgslsmith_index_u32(0u, 28u)], true);
    return select(~(~firstLeadingBit(~4114u)), global1.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    global0 = array<vec2<bool>, 28>();
    global1 = _wgslsmith_div_vec3_u32(vec3<u32>(firstLeadingBit(1u), u_input.a, ~func_1(-2147483647i, _wgslsmith_f_op_f32(floor(-180f)), _wgslsmith_f_op_f32(sign(1835f)), vec3<f32>(374f, -398f, -805f))), ~(_wgslsmith_mult_vec3_u32(select(vec3<u32>(global1.x, global1.x, global1.x), vec3<u32>(4294967295u, u_input.b.x, 62607u), vec3<bool>(true, false, false)), _wgslsmith_mod_vec3_u32(vec3<u32>(21945u, 4294967295u, 0u), vec3<u32>(11862u, global1.x, 44574u))) >> (_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, u_input.a, u_input.b.x), ~vec3<u32>(35498u, 1u, u_input.b.x)) % vec3<u32>(32u))));
    global0 = array<vec2<bool>, 28>();
    var var_1 = !(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, false, false, true)), vec4<bool>(true, all(global0[_wgslsmith_index_u32(u_input.b.x, 28u)]), true, true)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, 457f)), 1985f) * _wgslsmith_f_op_f32(f32(-1f) * -970f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-877f, -898f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(Struct_1(vec3<f32>(-883f, 828f, 731f), global0[_wgslsmith_index_u32(1u, 28u)], false)))))), vec2<bool>(var_1.x, true), true);
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.a + var_3.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(var_3.a)), _wgslsmith_f_op_vec3_f32(abs(var_3.a)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a.x, -1095f, 658f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1406f, var_3.a.x, 1907f) + vec3<f32>(-785f, 1041f, -835f)))))), select(global0[_wgslsmith_index_u32(u_input.b.x | global1.x, 28u)], vec2<bool>(var_3.c, all(select(vec4<bool>(var_3.b.x, false, var_1.x, true), vec4<bool>(var_3.c, var_1.x, true, false), var_3.c))), var_3.b), var_3.c);
    var var_5 = countOneBits(0i);
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(-54076i, firstLeadingBit(-1i)) | _wgslsmith_div_vec2_i32(select(_wgslsmith_div_vec2_i32(vec2<i32>(0i, -19635i), vec2<i32>(-1i, -1i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-8100i, -26385i), vec2<i32>(2147483647i, -2147483647i), vec2<i32>(-2147483647i, 0i)), var_3.c), _wgslsmith_mod_vec2_i32(-vec2<i32>(-2147483647i, 0i), vec2<i32>(-2147483647i, 96111i))), min(_wgslsmith_div_vec4_u32(~vec4<u32>(7996u, 4294967295u, u_input.a, global1.x), vec4<u32>(~global1.x, 4294967295u, global1.x, u_input.b.x)), select(select(vec4<u32>(u_input.a, 6380u, 1u, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.a, 13512u, global1.x), vec4<u32>(4294967295u, global1.x, u_input.b.x, u_input.a)), var_4.a.x >= var_4.a.x), ~select(vec4<u32>(u_input.b.x, 0u, 4294967295u, global1.x), vec4<u32>(0u, 4916u, global1.x, 1u), vec4<bool>(var_4.b.x, var_1.x, false, true)), !select(vec4<bool>(var_3.c, true, var_4.c, true), vec4<bool>(var_1.x, false, false, var_4.c), false))), vec3<u32>(~reverseBits(u_input.b.x), 1u, ~(firstLeadingBit(u_input.b.x) | ~u_input.b.x)));
}

