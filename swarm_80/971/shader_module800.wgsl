struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
    d: u32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7> = array<f32, 7>(534f, -1350f, -228f, 157f, -1123f, -1506f, 384f);

var<private> global1: vec3<bool>;

var<private> global2: array<Struct_2, 17>;

var<private> global3: array<vec4<u32>, 9> = array<vec4<u32>, 9>(vec4<u32>(0u, 42779u, 1u, 1u), vec4<u32>(40853u, 15073u, 76558u, 1754u), vec4<u32>(20672u, 48545u, 33085u, 67188u), vec4<u32>(29198u, 98481u, 6411u, 77600u), vec4<u32>(40735u, 0u, 1u, 76814u), vec4<u32>(5652u, 0u, 43652u, 41962u), vec4<u32>(60775u, 46302u, 50254u, 4294967295u), vec4<u32>(45826u, 83u, 65575u, 0u), vec4<u32>(12662u, 4294967295u, 70909u, 11337u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3) -> vec3<f32> {
    var var_0 = global3[_wgslsmith_index_u32(max(min(countOneBits(u_input.d | u_input.b), ~select(21176u, u_input.c.x, false)) ^ _wgslsmith_mult_u32(countOneBits(~u_input.b), ~_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, 2739u))), ~u_input.c.x), 9u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(~u_input.d, 7u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-707f, -497f, false)) * 383f), arg_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(55321u, 7u)])) - -1797f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1482f, global0[_wgslsmith_index_u32(1u, 7u)], 407f, arg_1.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1103f, global0[_wgslsmith_index_u32(4294967295u, 7u)], arg_1.b, 334f)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, u_input.b, u_input.c.x, u_input.b), ~global3[_wgslsmith_index_u32(u_input.b, 9u)]), 7u)], 485f, arg_1.b, 250f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 7u)]), _wgslsmith_f_op_f32(-1370f - -1008f), -825f, arg_1.b))));
    global3 = array<vec4<u32>, 9>();
    global1 = select(vec3<bool>(global1.x, !(!all(vec3<bool>(arg_0.x, global1.x, global1.x))), false), !select(vec3<bool>(global1.x, arg_0.x, all(vec3<bool>(global1.x, global1.x, false))), vec3<bool>(false, true && global1.x, u_input.a.x == 0i), select(vec3<bool>(true, true, true), vec3<bool>(global1.x, arg_0.x, arg_0.x), !vec3<bool>(true, arg_0.x, arg_0.x))), select(vec3<bool>(true, select(arg_1.a >= 1i, any(arg_0), true), any(select(vec4<bool>(global1.x, false, true, false), vec4<bool>(false, global1.x, true, global1.x), vec4<bool>(global1.x, arg_0.x, true, true)))), !(!select(vec3<bool>(global1.x, true, arg_0.x), vec3<bool>(true, true, arg_0.x), vec3<bool>(global1.x, arg_0.x, true))), select(!select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, global1.x)), !(!vec3<bool>(true, false, global1.x)), vec3<bool>(!global1.x, true, true))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(floor(548f)), -157f, -1181f, -1385f);
    return vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1192f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-298f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_2.x, -1939f)), var_1.x)), !(!global1.x)))), _wgslsmith_div_f32(920f, arg_1.b));
}

fn func_2(arg_0: vec2<bool>) -> u32 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-299f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.d, 7u)], global0[_wgslsmith_index_u32(u_input.b, 7u)]), _wgslsmith_f_op_f32(-678f * -643f)), vec3<f32>(-579f, _wgslsmith_f_op_f32(abs(-1465f)), global0[_wgslsmith_index_u32(~26580u, 7u)]))), _wgslsmith_f_op_vec3_f32(func_3(vec2<bool>(true, true && all(vec3<bool>(false, true, arg_0.x))), Struct_3(firstTrailingBit(-u_input.a.x), _wgslsmith_f_op_f32(round(-474f))))));
    global3 = array<vec4<u32>, 9>();
    var var_1 = _wgslsmith_clamp_i32(5102i, max(_wgslsmith_div_i32(u_input.a.x >> (u_input.c.x % 32u), u_input.a.x), 18418i | (2719i >> (abs(u_input.b) % 32u))), min(~_wgslsmith_sub_i32(u_input.a.x >> (u_input.d % 32u), u_input.a.x), max(-abs(u_input.a.x), (u_input.a.x >> (4294967295u % 32u)) & abs(u_input.a.x))));
    let var_2 = var_0.zz;
    return 0u ^ u_input.c.x;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_3(~min(~u_input.a.x, -2147483647i), arg_0.b);
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_1.wx);
    var var_2 = !(~u_input.c.x <= (abs(func_2(global1.zy)) ^ abs(4294967295u ^ arg_0.e.x)));
    global0 = array<f32, 7>();
    var var_3 = ~(~_wgslsmith_sub_u32(_wgslsmith_div_u32(min(13017u, arg_0.e.x), max(0u, 13485u)), _wgslsmith_mult_u32(~10821u, 1u)));
    return Struct_1(1000f, ~vec2<u32>(arg_0.e.x, ~12213u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global2[_wgslsmith_index_u32(85520u, 17u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(1u, 7u)], 558f, _wgslsmith_f_op_f32(min(-1000f, -613f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(95507u, 7u)] * -885f))))));
    var var_1 = ~vec2<i32>(u_input.a.x, _wgslsmith_mult_i32(-_wgslsmith_mod_i32(u_input.a.x, -30516i), u_input.a.x));
    global1 = !(!vec3<bool>(select(!global1.x, any(vec4<bool>(true, true, global1.x, true)), all(global1.yz)), true, global1.x));
    global1 = select(select(!vec3<bool>(79199u <= var_0.b.x, global1.x, global1.x | true), vec3<bool>(all(global1.xy), false, true), !vec3<bool>(global1.x, all(vec3<bool>(global1.x, global1.x, false)), !global1.x)), vec3<bool>(any(vec4<bool>(all(vec2<bool>(global1.x, true)), all(vec4<bool>(true, true, false, false)), false && global1.x, false)), false, false && (_wgslsmith_sub_u32(74662u, var_0.b.x) <= ~1u)), vec3<bool>(true & global1.x, global1.x, false));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec3_i32(abs(-vec3<i32>(1i, u_input.a.x, -13526i)), abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, -1i, var_1.x), vec3<i32>(u_input.a.x, var_1.x, var_1.x), vec3<i32>(-5415i, u_input.a.x, -2147483647i)))), -14239i, var_0.a);
}

