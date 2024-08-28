struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(0u, 4294967295u, 1u, 0u), vec4<u32>(1645u, 61850u, 1u, 4294967295u), vec4<u32>(0u, 15631u, 1u, 0u), vec4<u32>(4294967295u, 34359u, 4294967295u, 4294967295u), vec4<u32>(27558u, 1u, 1u, 0u), vec4<u32>(4294967295u, 11595u, 1u, 1u), vec4<u32>(60817u, 30018u, 4294967295u, 4294967295u), vec4<u32>(31732u, 85483u, 1u, 4294967295u), vec4<u32>(1u, 0u, 5530u, 0u), vec4<u32>(72734u, 41988u, 1u, 52110u), vec4<u32>(4294967295u, 73801u, 4294967295u, 4294967295u), vec4<u32>(11458u, 8660u, 19504u, 1u), vec4<u32>(4294967295u, 0u, 40441u, 32718u), vec4<u32>(4294967295u, 24980u, 1u, 1u), vec4<u32>(1u, 0u, 66759u, 16980u), vec4<u32>(1u, 4294967295u, 4294967295u, 1014u), vec4<u32>(4294967295u, 1u, 4294967295u, 1u), vec4<u32>(0u, 4294967295u, 1u, 39774u), vec4<u32>(1u, 11346u, 55741u, 0u), vec4<u32>(51573u, 104416u, 0u, 4294967295u), vec4<u32>(0u, 1u, 1u, 50648u), vec4<u32>(0u, 65002u, 1u, 24726u), vec4<u32>(0u, 4294967295u, 4294967295u, 8615u), vec4<u32>(28716u, 55846u, 7704u, 1u), vec4<u32>(1u, 4294967295u, 1u, 9588u), vec4<u32>(13502u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(11302u, 36034u, 0u, 4014u), vec4<u32>(9001u, 1u, 0u, 1u));

var<private> global1: vec4<i32> = vec4<i32>(-7586i, 4350i, -25760i, 2147483647i);

var<private> global2: array<Struct_1, 31>;

var<private> global3: array<vec4<f32>, 1>;

var<private> global4: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec3<i32>(48078i, 1i, 1i)), Struct_1(vec3<i32>(1i, i32(-2147483648), 8112i)), Struct_1(vec3<i32>(-36151i, -31308i, 17606i)), Struct_1(vec3<i32>(-33627i, 29838i, -7624i)), Struct_1(vec3<i32>(53791i, -1i, i32(-2147483648))), Struct_1(vec3<i32>(0i, -11610i, 2147483647i)), Struct_1(vec3<i32>(0i, -1i, 45667i)), Struct_1(vec3<i32>(1i, 0i, -1i)), Struct_1(vec3<i32>(2147483647i, 1i, 1i)), Struct_1(vec3<i32>(-1i, -1i, 2147483647i)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: vec2<f32>) -> vec3<i32> {
    var var_0 = _wgslsmith_mod_i32(global1.x, 2147483647i);
    var var_1 = vec2<u32>(~arg_0, arg_0);
    var var_2 = arg_3.x;
    global3 = array<vec4<f32>, 1>();
    let var_3 = ~(~global1.zxx);
    return ~vec3<i32>(var_3.x, -arg_1.a.x, global1.x);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * vec2<f32>(arg_0, 1046f)))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2556f, arg_0) + vec2<f32>(-1611f, arg_0)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(817f, 1847f)))))));
    global2 = array<Struct_1, 31>();
    var var_1 = ~32875i > global1.x;
    let var_2 = _wgslsmith_dot_vec2_i32(global1.zx ^ global1.zy, ~(vec2<i32>(i32(-1i) * -9154i, ~40296i) ^ select(~arg_1.a.zy, ~arg_1.a.zy, select(arg_3.xy, vec2<bool>(false, false), arg_3.zx))));
    var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-313f + -2116f))), _wgslsmith_f_op_f32(min(-779f, _wgslsmith_f_op_f32(f32(-1f) * -492f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-520f, -1027f)))), arg_3.x || arg_3.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-476f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, 101f)))))));
    return abs(vec4<i32>(_wgslsmith_mult_i32(~_wgslsmith_dot_vec2_i32(arg_1.a.yz, global1.ww), _wgslsmith_add_i32(11166i, arg_1.a.x | arg_1.a.x)), 1i, global1.x, countOneBits(arg_1.a.x)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = Struct_1(global1.wwz);
    var var_1 = arg_1;
    var_0 = global4[_wgslsmith_index_u32(~u_input.a & firstLeadingBit(~(~6358u)), 10u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(round(arg_1));
    var var_3 = Struct_1(func_2(1u, Struct_1(reverseBits(~vec3<i32>(var_0.a.x, var_0.a.x, arg_2.a.x))), -33201i, arg_1.yw));
    return vec4<i32>(~1i, countOneBits(47845i) << (u_input.a % 32u), _wgslsmith_div_i32(-abs(0i), 2147483647i), ~max(~1i, -10727i));
}

fn func_1(arg_0: vec2<i32>) -> i32 {
    global2 = array<Struct_1, 31>();
    var var_0 = Struct_1(func_2(~0u, global2[_wgslsmith_index_u32(0u, 31u)], _wgslsmith_add_i32(arg_0.x, _wgslsmith_div_i32(-arg_0.x, global1.x & -2147483647i)), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1859f, -302f) - 282f))));
    global0 = array<vec4<u32>, 28>();
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(trunc(-253f)))))), -259f));
    global1 = reverseBits(func_4(min(func_3(_wgslsmith_div_f32(-1156f, 936f), global2[_wgslsmith_index_u32(35982u, 31u)], Struct_1(var_0.a), vec3<bool>(false, false, false)), -vec4<i32>(1i, arg_0.x, 1i, arg_0.x)), _wgslsmith_f_op_vec4_f32(floor(global3[_wgslsmith_index_u32(~u_input.a, 1u)])), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(abs(global0[_wgslsmith_index_u32(1u, 28u)])), ~(~global0[_wgslsmith_index_u32(3329u, 28u)])), 31u)]));
    return var_0.a.x;
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_1(arg_3.a);
    let var_1 = ~(~global1.x ^ -(1i ^ func_3(-493f, Struct_1(arg_1.a), arg_2, vec3<bool>(true, false, false)).x));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-705f)), _wgslsmith_f_op_f32(1000f + -797f), _wgslsmith_f_op_f32(1000f + -566f)) * vec3<f32>(1f, 1f, 1f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-788f, 444f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) - 441f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-781f, -111f)))))));
    var var_3 = arg_2;
    let var_4 = _wgslsmith_clamp_vec4_u32(abs(_wgslsmith_div_vec4_u32(global0[_wgslsmith_index_u32(u_input.a, 28u)], global0[_wgslsmith_index_u32(u_input.a << (~u_input.a % 32u), 28u)])), vec4<u32>(u_input.a, _wgslsmith_mult_u32(_wgslsmith_mod_u32(~u_input.a, 6398u), 22712u), u_input.a, ~(~u_input.a)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(0u, u_input.a, u_input.a, u_input.a)), ~vec4<u32>(50305u, u_input.a, u_input.a, 54047u)), vec4<u32>(97665u, u_input.a, 30005u, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(31328u, 85293u, u_input.a, 80789u)), firstLeadingBit(vec4<u32>(4294967295u, u_input.a, 48849u, 1u)))), abs(global0[_wgslsmith_index_u32(u_input.a, 28u)])));
    return _wgslsmith_sub_i32(_wgslsmith_mod_i32(-_wgslsmith_mult_i32(-19972i, 0i), -37396i), arg_2.a.x);
}

fn func_6(arg_0: vec2<u32>, arg_1: i32, arg_2: i32) -> StorageBuffer {
    var var_0 = ~vec3<u32>(~(~arg_0.x), 4294967295u, abs(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(arg_0.x, 28u)])) & _wgslsmith_clamp_u32(~u_input.a, u_input.a, ~29474u));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(floor(-1183f)), _wgslsmith_f_op_f32(889f * -1551f), 1746f), vec3<f32>(-1892f, -1215f, -1415f), true))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(-788f - 277f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1353f, -708f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1286f, -1000f, -1079f)))))));
    var_0 = countOneBits(select(_wgslsmith_sub_vec3_u32(~(~vec3<u32>(var_0.x, u_input.a, 37965u)), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.x, 26839u, u_input.a), reverseBits(vec3<u32>(82882u, 1u, 23464u)))), ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(90860u, 37870u, 1u), vec3<u32>(4294967295u, 0u, 2900u)), 4294967295u, 34349u), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))));
    var var_2 = min(abs(reverseBits(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(17162i, global1.x, global1.x, arg_2), vec4<i32>(-2147483647i, arg_2, global1.x, -27939i)), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, -30725i, global1.x, -2147483647i), vec4<i32>(47307i, global1.x, global1.x, 2147483647i))))), ~(~(vec4<i32>(65908i, arg_2, 2147483647i, global1.x) & vec4<i32>(arg_1, -1i, arg_2, 1i))) | vec4<i32>(func_5(arg_2, Struct_1(vec3<i32>(arg_1, arg_2, 2147483647i)), Struct_1(global1.zww), global4[_wgslsmith_index_u32(abs(42872u), 10u)]), -(~1i), 1i, -min(-56629i, global1.x)));
    var var_3 = select(select(vec3<bool>(all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), false)), (17375i < var_2.x) & false, !any(vec3<bool>(true, true, true))), !vec3<bool>(true, arg_0.x > var_0.x, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), any(vec2<bool>(false, true)))), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false)), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true)), all(vec3<bool>(any(vec2<bool>(true, false)), true, false)));
    return StorageBuffer(-17696i, global1.wxx);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 31>();
    global0 = array<vec4<u32>, 28>();
    global1 = -(~(-(~firstLeadingBit(vec4<i32>(31126i, -1i, -16831i, 1i)))));
    var var_0 = all(vec4<bool>(!(!any(vec3<bool>(true, true, false))), true, true, !(!all(vec2<bool>(true, false)))));
    global0 = array<vec4<u32>, 28>();
    let x = u_input.a;
    s_output = func_6(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(select(~vec2<u32>(49383u, u_input.a), ~vec2<u32>(18909u, u_input.a), true), select(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(30620u, u_input.a) >> (vec2<u32>(u_input.a, 54649u) % vec2<u32>(32u)), vec2<bool>(false, true))), ~(~(~vec2<u32>(1u, 58819u)))), func_5(min(func_1(_wgslsmith_div_vec2_i32(global1.zx, global1.zy)), global1.x), Struct_1(vec3<i32>(_wgslsmith_sub_i32(-5844i, global1.x), abs(global1.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global1.x, -34815i), global1.wyz))), Struct_1(vec3<i32>(global1.x, global1.x << (u_input.a % 32u), ~0i)), Struct_1(max(vec3<i32>(global1.x, 1i, 6987i), vec3<i32>(23130i, 2147483647i, -10416i)))), ~func_2(_wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, u_input.a), u_input.a, ~4294967295u), Struct_1(global1.yyw | vec3<i32>(21526i, 11038i, 2147483647i)), i32(-1i) * -1i, _wgslsmith_f_op_vec2_f32(vec2<f32>(-267f, 660f) - vec2<f32>(-2671f, -1416f))).x);
}

