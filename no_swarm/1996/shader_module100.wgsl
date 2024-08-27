struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
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

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 30>;

var<private> global2: array<vec3<f32>, 6>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(762f, global0.a.x, global0.a.x)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-223f, 1000f, 881f))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(-257f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global2[_wgslsmith_index_u32(u_input.d, 6u)])))))));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, global0.a.x, var_0.x, -1117f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1301f, 1028f, 570f) - vec4<f32>(-823f, 1377f, global0.a.x, -341f)) * _wgslsmith_f_op_vec4_f32(exp2(global0.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-3305f, global0.a.x, -1026f, -643f) * global0.a) - _wgslsmith_f_op_vec4_f32(global0.a + vec4<f32>(-894f, global0.a.x, global0.a.x, 1000f))), vec4<bool>(all(vec2<bool>(true, false)), false, true, select(false, true, false)))))));
    global1 = array<Struct_1, 30>();
    var var_1 = _wgslsmith_f_op_vec4_f32(round(global0.a));
    let var_2 = var_1.x;
    return ~_wgslsmith_div_vec4_u32(~max(vec4<u32>(u_input.b.x, u_input.d, 4294967295u, 25805u), ~vec4<u32>(1u, 0u, 4294967295u, 0u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(57971u, 32720u, u_input.c.x, u_input.c.x), vec4<u32>(8415u, 29632u, 1u, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, u_input.b.x, 1153u, 0u), vec4<u32>(u_input.d, u_input.b.x, 4294967295u, 17931u))), abs(~vec4<u32>(u_input.a, 4294967295u, u_input.d, u_input.d)), ~vec4<u32>(0u, 0u, 4294967295u, 0u)));
}

fn func_2() -> vec4<f32> {
    let var_0 = 4294967295u >> (_wgslsmith_dot_vec4_u32(~(func_3() & vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.d)), _wgslsmith_clamp_vec4_u32(~abs(vec4<u32>(14117u, u_input.a, u_input.c.x, 0u)), vec4<u32>(select(17233u, u_input.c.x, true), u_input.a, 3752u, ~1u), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 9875u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 7122u, u_input.a, u_input.a)), ~vec4<u32>(3542u, 4294967295u, 7228u, u_input.b.x)))) % 32u);
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(3189f - global0.a.x), _wgslsmith_f_op_f32(-global0.a.x)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1717f, global0.a.x), _wgslsmith_f_op_vec2_f32(global0.a.wx * global0.a.zy), 104530u > u_input.c.x))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a.x), 415f)), -499f)), _wgslsmith_f_op_vec2_f32(-global0.a.ww), !select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), true), false), vec2<bool>(true, true), true)));
    var var_2 = (~(var_0 >> (~1u % 32u)) >> (u_input.b.x % 32u)) == _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~_wgslsmith_add_vec2_u32(u_input.c.zz, vec2<u32>(0u, var_0)), vec2<u32>(var_0, 0u)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(76787u, 0u), u_input.c.xy >> (u_input.b.yz % vec2<u32>(32u))), 34987u));
    global1 = array<Struct_1, 30>();
    var var_3 = global0.a;
    return _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, 1569f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.x, var_1.x) - 295f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(ceil(var_3.x)), true)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = -arg_3.a.x;
    global0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.c.a) - _wgslsmith_f_op_vec4_f32(func_2())), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.a.x, global0.a.x, _wgslsmith_f_op_f32(exp2(arg_1.c.a.x)), _wgslsmith_f_op_f32(-189f - arg_2)))));
    let var_1 = ~arg_0.x << (49991u % 32u);
    global0 = global1[_wgslsmith_index_u32(~1u >> (0u % 32u), 30u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.a.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_1.c.a.x)))), -858f, global0.a.x));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -642f))), _wgslsmith_f_op_f32(-arg_3.c.a.x))), var_2.x, -753f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + _wgslsmith_f_op_f32(-arg_3.c.a.x)))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec4<f32>) -> i32 {
    var var_0 = ~vec2<u32>(~firstLeadingBit(u_input.d), 117705u) & u_input.c.xz;
    let var_1 = Struct_2(vec3<i32>(~(~(~(-1152i))), -_wgslsmith_add_i32(~2147483647i, i32(-1i) * -22619i), _wgslsmith_clamp_i32(0i, -2147483647i, -13975i) | _wgslsmith_add_i32(40246i, 5121i)), vec2<u32>(u_input.d, _wgslsmith_add_u32(~abs(var_0.x), _wgslsmith_div_u32(77745u, 1u) | _wgslsmith_clamp_u32(4294967295u, arg_0, u_input.c.x))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -156f), arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-725f + -497f) * _wgslsmith_f_op_f32(abs(-1876f))), -1446f)));
    global2 = array<vec3<f32>, 6>();
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.x, var_0.x, ~arg_0), abs(~vec3<u32>(var_0.x, u_input.b.x, 1u)))), arg_0), 30u)];
    var var_2 = !(!vec3<bool>(all(vec2<bool>(false, true)), all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false))), false));
    return _wgslsmith_mod_i32(abs(~(-19525i ^ var_1.a.x)) << (arg_0 % 32u), _wgslsmith_mult_i32(reverseBits(0i), firstLeadingBit(firstLeadingBit(var_1.a.x)) << (~_wgslsmith_sub_u32(arg_0, 0u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec3<i32>(~func_4(u_input.c.x, func_1(vec4<u32>(0u, u_input.b.x, 0u, u_input.b.x), Struct_2(vec3<i32>(2147483647i, -1i, 1818i), vec2<u32>(u_input.b.x, u_input.d), Struct_1(global0.a)), 894f, Struct_2(vec3<i32>(-2147483647i, 0i, -35994i), u_input.b.zz, Struct_1(global0.a))), func_1(vec4<u32>(0u, u_input.c.x, 9836u, 14143u), Struct_2(vec3<i32>(2147483647i, 2147483647i, 1i), vec2<u32>(0u, 0u), global1[_wgslsmith_index_u32(u_input.d, 30u)]), -675f, Struct_2(vec3<i32>(-1i, 317i, 0i), vec2<u32>(u_input.d, 39211u), global1[_wgslsmith_index_u32(u_input.b.x, 30u)])).a.zx, vec4<f32>(1475f, global0.a.x, -1374f, global0.a.x)), select(-2147483647i, -64998i, !(518f <= global0.a.x)), ~(~(-44529i) >> (u_input.b.x % 32u))), u_input.b.xz << (~((vec2<u32>(u_input.c.x, 4294967295u) >> (u_input.b.zx % vec2<u32>(32u))) << (abs(u_input.c.xx) % vec2<u32>(32u))) % vec2<u32>(32u)), global1[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, u_input.b.x, 4294967295u), vec4<u32>(u_input.a, u_input.c.x, u_input.c.x, u_input.c.x)) ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(16509u, u_input.c.x, 72559u, u_input.a), vec4<u32>(108187u, u_input.c.x, 13994u, 4642u))), 30u)]);
    var var_1 = !all(select(vec4<bool>(-1976f <= var_0.c.a.x, true, true, all(vec4<bool>(true, false, true, true))), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), false), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), false), true)));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(175f, global0.a.x, global0.a.x, -1098f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.c.a.x, global0.a.x, 276f, var_0.c.a.x)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c.a) - _wgslsmith_f_op_vec4_f32(-global0.a)), vec4<f32>(744f, _wgslsmith_div_f32(var_0.c.a.x, var_0.c.a.x), _wgslsmith_f_op_f32(var_0.c.a.x * 2164f), 986f)), true)));
    var var_2 = -((_wgslsmith_sub_i32(-2147483647i, 1i) >> (u_input.d % 32u)) ^ -var_0.a.x);
    var_2 = var_0.a.x;
    var_1 = false;
    var var_3 = true & ((var_0.a.x & -var_0.a.x) <= (1i | ~(var_0.a.x | var_0.a.x)));
    var var_4 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(-var_0.a.x)));
}

