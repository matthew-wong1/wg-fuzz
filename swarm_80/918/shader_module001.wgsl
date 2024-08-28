struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(1u, vec3<i32>(2147483647i, 12696i, 1i), vec3<bool>(true, true, true), vec3<i32>(40222i, -10498i, 2147483647i)), Struct_1(1u, vec3<i32>(0i, 2147483647i, -3786i), vec3<bool>(true, false, true), vec3<i32>(0i, 2461i, i32(-2147483648))), Struct_1(4294967295u, vec3<i32>(1i, 0i, 2147483647i), vec3<bool>(false, false, false), vec3<i32>(1i, 19074i, -1i)), Struct_1(46938u, vec3<i32>(-36098i, 63500i, 26635i), vec3<bool>(true, true, true), vec3<i32>(13124i, 15311i, -6753i)), Struct_1(67134u, vec3<i32>(-50918i, 17022i, 20347i), vec3<bool>(true, true, true), vec3<i32>(i32(-2147483648), -44866i, -62205i)), Struct_1(4294967295u, vec3<i32>(11004i, -47054i, 0i), vec3<bool>(true, true, false), vec3<i32>(-16378i, -1i, 39284i)), Struct_1(1u, vec3<i32>(16208i, i32(-2147483648), -18625i), vec3<bool>(true, false, false), vec3<i32>(-36658i, 2147483647i, -23174i)), Struct_1(1u, vec3<i32>(11698i, -29312i, -3757i), vec3<bool>(false, true, false), vec3<i32>(13777i, 0i, -2910i)), Struct_1(4294967295u, vec3<i32>(30069i, -27369i, -66531i), vec3<bool>(false, false, true), vec3<i32>(2147483647i, -38983i, 0i)), Struct_1(51640u, vec3<i32>(1i, -37322i, 0i), vec3<bool>(true, true, false), vec3<i32>(-21636i, -816i, -14225i)), Struct_1(91046u, vec3<i32>(43467i, -27220i, 0i), vec3<bool>(false, false, true), vec3<i32>(49945i, i32(-2147483648), -25267i)), Struct_1(4294967295u, vec3<i32>(0i, 0i, -11735i), vec3<bool>(true, false, true), vec3<i32>(18846i, -622i, -24184i)), Struct_1(1u, vec3<i32>(60410i, -1358i, 2147483647i), vec3<bool>(true, true, false), vec3<i32>(-1i, -1i, 1i)), Struct_1(22436u, vec3<i32>(-5926i, i32(-2147483648), 2147483647i), vec3<bool>(true, true, true), vec3<i32>(1i, -35861i, -1i)), Struct_1(4294967295u, vec3<i32>(5033i, 16540i, 9804i), vec3<bool>(true, true, false), vec3<i32>(1i, 42250i, 22886i)), Struct_1(17424u, vec3<i32>(47581i, -10431i, 2147483647i), vec3<bool>(true, true, true), vec3<i32>(7923i, -8609i, 11903i)), Struct_1(1u, vec3<i32>(1i, -1i, 2305i), vec3<bool>(false, false, false), vec3<i32>(-1i, 0i, i32(-2147483648))), Struct_1(17894u, vec3<i32>(28484i, -10927i, 63739i), vec3<bool>(false, true, true), vec3<i32>(57190i, 1i, -11085i)), Struct_1(4294967295u, vec3<i32>(14138i, 146i, 0i), vec3<bool>(false, false, false), vec3<i32>(8772i, 2147483647i, -31633i)), Struct_1(27146u, vec3<i32>(-11877i, 34496i, 9140i), vec3<bool>(false, true, true), vec3<i32>(6227i, 2147483647i, 1i)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_1(~(~_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(arg_0.a, 31u)], global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(arg_1.a, 31u)], arg_0.a)), vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(global1.a, 31u)], arg_1.a, u_input.a))), _wgslsmith_sub_vec3_i32(countOneBits(global1.b), ~vec3<i32>(0i, -2147483647i, -1i) << (_wgslsmith_sub_vec3_u32(u_input.c.yxx, vec3<u32>(u_input.b, 590u, arg_1.a)) % vec3<u32>(32u))) << (vec3<u32>(1u, ~abs(arg_1.a), _wgslsmith_mod_u32(~u_input.b, global1.a)) % vec3<u32>(32u)), select(arg_1.c, vec3<bool>(!arg_0.c.x, false, all(vec3<bool>(global1.c.x, global1.c.x, true))), vec3<bool>(arg_0.c.x, false, global1.c.x)), reverseBits(vec3<i32>(0i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.b.x, arg_1.b.x, global1.d.x, 22569i), vec4<i32>(arg_0.b.x, -2147483647i, 1i, global1.d.x)), vec4<i32>(arg_1.b.x, arg_1.b.x, -1i, -70224i) | vec4<i32>(-33287i, -26679i, -2147483647i, 1i)), -min(0i, arg_0.b.x))));
    let var_1 = u_input.c.yxx;
    global2 = array<Struct_1, 20>();
    let var_2 = Struct_1(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(76991u, 31u)], global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(11476u, 31u)], 31u)]), vec3<i32>(firstLeadingBit(_wgslsmith_div_i32(-20403i, i32(-1i) * -31626i)), global1.d.x, var_0.d.x << (67455u % 32u)), arg_1.c, countOneBits(arg_1.d));
    var var_3 = ~3629i;
    return 49064u;
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_1, arg_3: vec3<f32>) -> u32 {
    global1 = Struct_1(4294967295u, arg_2.d, !vec3<bool>(arg_2.c.x, firstTrailingBit(u_input.c.x) >= arg_2.a, true), vec3<i32>(_wgslsmith_add_i32(global1.b.x, ~reverseBits(-59034i)), _wgslsmith_mod_i32(arg_0.x, global1.b.x), -(~(-2147483647i))));
    global0 = array<u32, 31>();
    global0 = array<u32, 31>();
    global0 = array<u32, 31>();
    global0 = array<u32, 31>();
    return _wgslsmith_div_u32(min(~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, arg_1, 1241u, 23683u), u_input.c, u_input.c), ~vec4<u32>(0u, arg_2.a, 0u, 68944u)), func_2(arg_2, arg_2)), global1.a);
}

fn func_3(arg_0: u32, arg_1: bool) -> i32 {
    global2 = array<Struct_1, 20>();
    var var_0 = -13285i;
    global1 = Struct_1(global1.a, vec3<i32>(_wgslsmith_div_i32(i32(-1i) * -456i, 1i) << (u_input.b % 32u), 30590i, max(_wgslsmith_mod_i32(11775i, -global1.d.x), global1.b.x >> (~global1.a % 32u))), !vec3<bool>(true, all(vec4<bool>(global1.c.x, false, false, true)), true), global1.b);
    global2 = array<Struct_1, 20>();
    var var_1 = Struct_1(~(~1u), ~vec3<i32>(firstLeadingBit(-48852i), _wgslsmith_sub_i32(global1.d.x, _wgslsmith_mod_i32(global1.b.x, -1i)), _wgslsmith_div_i32(global1.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.d.x, global1.b.x, global1.d.x, global1.d.x), vec4<i32>(global1.b.x, -6789i, 1i, 169i)))), global1.c, abs(countOneBits(reverseBits(vec3<i32>(62189i, global1.b.x, 21431i)))));
    return abs(min(-_wgslsmith_mult_i32(-var_1.d.x, 39729i), -global1.b.x));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>, arg_3: vec2<f32>) -> vec3<i32> {
    var var_0 = _wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(570f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_3.x, -336f)) - 1311f))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) * -882f);
    var_0 = arg_3.x;
    let var_2 = u_input.c;
    global0 = array<u32, 31>();
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~(1u ^ max(1u, 4294967295u >> (u_input.b % 32u))), func_4(global2[_wgslsmith_index_u32(func_1(-(global1.b.zx ^ global1.b.yx), firstLeadingBit(firstLeadingBit(13985u)), Struct_1(0u, _wgslsmith_mult_vec3_i32(global1.d, vec3<i32>(19007i, global1.d.x, global1.d.x)), !global1.c, select(global1.d, vec3<i32>(-913i, -1i, global1.b.x), global1.c.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1070f, -1000f, -275f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-896f, -1040f, -1000f)))), 20u)], func_3(0u, true), reverseBits(vec2<u32>(~24577u, global1.a >> (4294967295u % 32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1132f, -1403f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1065f, 667f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1785f, 722f) + vec2<f32>(549f, -1355f))))), select(vec3<bool>(all(global1.c.yy), global1.c.x, any(!global1.c)), global1.c, global1.c), global1.d);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x, min(-reverseBits(var_0.d.xx), abs(-(var_0.d.zz ^ vec2<i32>(-4966i, -2147483647i)))), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 8902i, abs(2147483647i & global1.b.x), -(2147483647i >> (u_input.b % 32u))), _wgslsmith_div_vec4_i32(vec4<i32>(-global1.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.x, -10372i, var_0.b.x), vec3<i32>(0i, global1.d.x, -2147483647i)), ~(-13807i), 1i), vec4<i32>(-var_0.b.x, _wgslsmith_mod_i32(global1.d.x, global1.d.x), _wgslsmith_div_i32(-7735i, var_0.b.x), var_0.b.x))));
}

