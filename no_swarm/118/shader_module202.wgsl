struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(true, vec4<i32>(0i, 37326i, 31677i, 2147483647i)), Struct_1(true, vec4<i32>(-19771i, 40696i, 2147483647i, i32(-2147483648))), Struct_1(false, vec4<i32>(0i, 2147483647i, -65882i, -10658i)), Struct_1(true, vec4<i32>(2147483647i, 1683i, -1i, 1498i)), Struct_1(false, vec4<i32>(-56562i, 15752i, 2147483647i, 10658i)), Struct_1(false, vec4<i32>(1i, 13522i, -34276i, 16046i)), Struct_1(true, vec4<i32>(2147483647i, 24022i, 8220i, 1i)), Struct_1(true, vec4<i32>(-45029i, -42470i, 34161i, -1i)), Struct_1(true, vec4<i32>(30511i, i32(-2147483648), 1i, 48696i)), Struct_1(true, vec4<i32>(-39568i, 16874i, 2147483647i, -14157i)), Struct_1(false, vec4<i32>(-1i, 0i, -24717i, i32(-2147483648))), Struct_1(false, vec4<i32>(47204i, 73626i, -3128i, 1i)), Struct_1(false, vec4<i32>(2147483647i, -26922i, i32(-2147483648), -4086i)), Struct_1(false, vec4<i32>(1i, 25853i, 449i, 19840i)), Struct_1(true, vec4<i32>(22173i, -72002i, 1041i, 2147483647i)), Struct_1(false, vec4<i32>(-12284i, i32(-2147483648), 1i, 69946i)), Struct_1(true, vec4<i32>(2147483647i, -27622i, 1i, i32(-2147483648))), Struct_1(true, vec4<i32>(1i, -66812i, -1i, 3001i)), Struct_1(true, vec4<i32>(-1i, 8551i, -1i, -1i)), Struct_1(true, vec4<i32>(-32305i, -1i, 2147483647i, 0i)), Struct_1(true, vec4<i32>(1i, 40661i, -39155i, i32(-2147483648))), Struct_1(true, vec4<i32>(-1i, -37589i, i32(-2147483648), -3028i)), Struct_1(true, vec4<i32>(38780i, -3917i, 20091i, 1i)), Struct_1(false, vec4<i32>(-1i, -73583i, 1i, 1i)), Struct_1(false, vec4<i32>(0i, -1i, -36679i, 0i)), Struct_1(true, vec4<i32>(-1i, -1i, 40973i, -4144i)), Struct_1(true, vec4<i32>(-11408i, -32172i, 0i, -22497i)));

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(false, vec4<i32>(1i, -22621i, -27578i, -48681i));

var<private> global3: f32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: bool, arg_3: Struct_1) -> u32 {
    global1 = Struct_1(all(!vec3<bool>(!global2.a, !global2.a, select(false, false, arg_3.a))), global1.b);
    let var_0 = arg_3;
    global2 = Struct_1(!any(vec4<bool>(-29171i > arg_1.x, all(vec3<bool>(true, true, arg_0)), all(vec4<bool>(var_0.a, arg_3.a, global2.a, false)), var_0.a | false)), abs(global1.b));
    let var_1 = var_0;
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)) >> (vec4<u32>(~_wgslsmith_clamp_u32(1u, 4294967295u, 4294967295u), 32273u, _wgslsmith_clamp_u32(1u, 4294967295u, abs(4294967295u)), ~52497u) % vec4<u32>(32u)), abs(vec4<u32>(1u, 1u, 1u, 1u)) << (vec4<u32>(max(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 46658u, 43656u), vec3<u32>(0u, 0u, 10202u)), _wgslsmith_mod_u32(1u, 2192u)), ~1u, _wgslsmith_mult_u32(~0u, 1u), select(min(16004u, 31386u), 59246u, arg_0)) % vec4<u32>(32u))), 27u)];
    return 61231u;
}

fn func_2(arg_0: Struct_1) -> u32 {
    global1 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(func_3(global2.a, _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(global1.b.xw, vec2<i32>(0i, 1i)), select(global1.b.zz, vec2<i32>(arg_0.b.x, global1.b.x), arg_0.a)), all(!vec3<bool>(false, global1.a, true)), Struct_1(!global1.a, global1.b)), _wgslsmith_sub_u32(~(~4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(95000u, 1u, 38776u), ~vec3<u32>(107044u, 0u, 4294967295u)))), 27u)];
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-569f - -501f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-921f * _wgslsmith_f_op_f32(-251f - -591f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1223f * -1518f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-347f)) - 1000f)) * 879f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-905f - 787f), -1003f));
    var var_1 = !select(vec4<bool>(select(any(vec2<bool>(global2.a, global2.a)), global1.a, any(vec4<bool>(arg_0.a, global1.a, global1.a, global1.a))), global1.a, true && all(vec4<bool>(arg_0.a, global1.a, false, true)), true), vec4<bool>(all(vec2<bool>(global1.a, global1.a)), any(vec4<bool>(true, true, global2.a, false)), true, true), select(!select(vec4<bool>(arg_0.a, global2.a, true, true), vec4<bool>(true, global2.a, arg_0.a, global2.a), vec4<bool>(global1.a, false, global1.a, true)), select(vec4<bool>(false, false, true, global1.a), select(vec4<bool>(global1.a, global2.a, true, false), vec4<bool>(true, false, false, global2.a), global1.a), true), !(!global2.a)));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)) * -1556f);
    global3 = var_0.x;
    return 0u;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<f32>) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(55462u, 27u)];
    global2 = Struct_1(var_0.a, _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.x, ~1i, firstLeadingBit(~var_0.b.x), -(~var_0.b.x)), ~var_0.b));
    var_0 = global0[_wgslsmith_index_u32(~func_2(Struct_1(global2.a, select(-global2.b, abs(vec4<i32>(11405i, 33013i, global2.b.x, var_0.b.x)), vec4<bool>(true, true, global1.a, true)))), 27u)];
    let var_1 = !any(!(!select(vec4<bool>(var_0.a, false, false, global1.a), vec4<bool>(global1.a, false, global2.a, global2.a), vec4<bool>(true, true, true, var_0.a))));
    let var_2 = !(!all(!(!vec2<bool>(false, var_0.a))));
    return 9616u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, global1.b);
    let var_1 = select(min(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(141253u, 22664u), vec2<u32>(72974u, 3236u)), ~vec2<u32>(4294967295u, 0u)), func_1(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(2147483647i, -2147483647i)), vec4<f32>(1000f, -651f, -2708f, -355f)), max(~24581u, _wgslsmith_mult_u32(0u, 97956u))), _wgslsmith_dot_vec3_u32(~vec3<u32>(39677u, 30062u, 19338u), ~vec3<u32>(1u, 1u, 1u))), _wgslsmith_div_u32(~max(_wgslsmith_dot_vec3_u32(vec3<u32>(10959u, 1u, 1u), vec3<u32>(0u, 79343u, 43060u)), _wgslsmith_div_u32(1u, 19453u)), _wgslsmith_div_u32(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(5073u, 1307u), vec2<u32>(40467u, 21092u)))), all(select(vec2<bool>(global1.a, true), vec2<bool>(global2.a, any(vec3<bool>(global2.a, true, false))), vec2<bool>(true, true))));
    var var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(var_1, firstLeadingBit(firstLeadingBit(18402u))), _wgslsmith_div_u32(var_1, ~(~var_1)), ~(var_1 | ~var_1), countOneBits(abs(var_1))), ~(~min(vec4<u32>(var_1, var_1, var_1, var_1), vec4<u32>(var_1, 1u, 1u, var_1)) & vec4<u32>(select(4294967295u, var_1, true), 44761u, 43818u, _wgslsmith_dot_vec4_u32(vec4<u32>(54082u, 4294967295u, var_1, 1u), vec4<u32>(1u, 0u, var_1, 0u)))));
    var var_3 = global2.b.ywz;
    let var_4 = false & global2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1069f, 108f, -140f, 674f), vec4<f32>(-1576f, 310f, -136f, 288f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(194f, -1000f, -1021f, 731f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-293f, 946f, -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(420f, 1085f, 1276f))))))), select(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.x, var_2.x, var_2.x, var_1), ~vec4<u32>(82838u, var_2.x, var_2.x, var_1)), var_2.x, _wgslsmith_clamp_u32(~var_1, ~4294967295u, _wgslsmith_sub_u32(var_2.x, 40296u)), var_2.x), _wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(76247u, 115963u, 16730u, var_1), vec4<u32>(var_2.x, var_2.x, 90060u, 1u)), ~vec4<u32>(var_2.x, var_2.x, var_2.x, 48669u) | ~vec4<u32>(55664u, var_1, 4294967295u, 4722u)), false), abs(var_1));
}

