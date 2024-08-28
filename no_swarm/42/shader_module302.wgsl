struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6> = array<u32, 6>(1u, 0u, 36552u, 85153u, 74361u, 0u);

var<private> global1: i32;

var<private> global2: array<f32, 9>;

var<private> global3: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(vec3<u32>(1u, 0u, 4294967295u)), 21019i, vec4<u32>(72884u, 66492u, 1u, 67789u)), Struct_2(Struct_1(vec3<u32>(4294967295u, 55699u, 0u)), -2646i, vec4<u32>(0u, 4294967295u, 27500u, 1u)), Struct_2(Struct_1(vec3<u32>(68576u, 1u, 1u)), 44563i, vec4<u32>(1u, 0u, 4294967295u, 0u)), Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, 45088u)), -1i, vec4<u32>(37583u, 0u, 12889u, 5226u)), Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 3263u)), 0i, vec4<u32>(0u, 44860u, 5214u, 9212u)), Struct_2(Struct_1(vec3<u32>(19203u, 4294967295u, 1u)), i32(-2147483648), vec4<u32>(47595u, 1u, 10959u, 47086u)), Struct_2(Struct_1(vec3<u32>(14328u, 1u, 0u)), 10971i, vec4<u32>(25704u, 36129u, 1u, 1u)), Struct_2(Struct_1(vec3<u32>(4294967295u, 0u, 0u)), 29967i, vec4<u32>(4294967295u, 92988u, 4600u, 4294967295u)), Struct_2(Struct_1(vec3<u32>(1u, 77437u, 17031u)), -6419i, vec4<u32>(129698u, 1u, 79758u, 51858u)), Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 1u)), -2245i, vec4<u32>(21566u, 0u, 4294967295u, 34998u)), Struct_2(Struct_1(vec3<u32>(1u, 1u, 0u)), -23818i, vec4<u32>(1u, 61946u, 61526u, 0u)), Struct_2(Struct_1(vec3<u32>(0u, 7039u, 1u)), i32(-2147483648), vec4<u32>(0u, 4294967295u, 27429u, 2185u)), Struct_2(Struct_1(vec3<u32>(3042u, 0u, 0u)), 0i, vec4<u32>(3907u, 0u, 0u, 0u)), Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 0u)), 47030i, vec4<u32>(18312u, 4294967295u, 0u, 22768u)), Struct_2(Struct_1(vec3<u32>(48919u, 36952u, 3417u)), 0i, vec4<u32>(15998u, 65972u, 17388u, 4294967295u)), Struct_2(Struct_1(vec3<u32>(4294967295u, 86193u, 46241u)), -27977i, vec4<u32>(0u, 1u, 85160u, 0u)), Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 22970u)), 22962i, vec4<u32>(33969u, 1u, 4294967295u, 44094u)), Struct_2(Struct_1(vec3<u32>(3780u, 4294967295u, 0u)), 23478i, vec4<u32>(93738u, 1u, 0u, 24223u)), Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, 8265u)), 1i, vec4<u32>(36098u, 0u, 0u, 1u)), Struct_2(Struct_1(vec3<u32>(4294967295u, 49866u, 1u)), -46204i, vec4<u32>(4294967295u, 41371u, 8293u, 1u)), Struct_2(Struct_1(vec3<u32>(44829u, 2890u, 4294967295u)), i32(-2147483648), vec4<u32>(1u, 0u, 49191u, 4294967295u)), Struct_2(Struct_1(vec3<u32>(4294967295u, 16690u, 4294967295u)), 39584i, vec4<u32>(4294967295u, 1u, 3689u, 1u)), Struct_2(Struct_1(vec3<u32>(4294967295u, 0u, 5288u)), 1i, vec4<u32>(1u, 88636u, 0u, 44697u)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> bool {
    let var_0 = _wgslsmith_div_i32(-_wgslsmith_mod_i32(countOneBits(9717i), 2147483647i), arg_0.b);
    let var_1 = 63634u;
    global3 = array<Struct_2, 23>();
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 12961u, _wgslsmith_div_u32(10531u >> (reverseBits(arg_0.a.a.x) % 32u), 18822u)) & arg_1, 6u)];
    var_2 = arg_1;
    return !select(true, global2[_wgslsmith_index_u32(4294967295u, 9u)] > global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(47316u, 49116u), arg_1, ~4294967295u), 9u)], any(select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<u32>) -> Struct_1 {
    global3 = array<Struct_2, 23>();
    global1 = u_input.b;
    let var_0 = func_3(Struct_2(Struct_1(~(~u_input.a.zxy)), u_input.b, ~u_input.a), ~(~u_input.c));
    global3 = array<Struct_2, 23>();
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(1u, 9u)]))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f + global2[_wgslsmith_index_u32(arg_1.x, 9u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(~u_input.a.x, 9u)])) * 1092f), 639f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)], 6u)], 9u)], -1000f, 1292f, global2[_wgslsmith_index_u32(41203u, 9u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1128f, global2[_wgslsmith_index_u32(u_input.c, 9u)], global2[_wgslsmith_index_u32(arg_1.x, 9u)], -154f))))))), !(global2[_wgslsmith_index_u32(37735u, 9u)] == 397f)));
    return Struct_1(countOneBits(u_input.a.xyw));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec3<u32>) -> vec2<bool> {
    global3 = array<Struct_2, 23>();
    global2 = array<f32, 9>();
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(48585u, 9u)] + arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x), true)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(150f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, 1002f))));
    var var_1 = Struct_2(Struct_1(arg_1.a.a), arg_1.b, ~(~u_input.a));
    let var_2 = func_2(vec4<bool>(true, true, true, true), firstLeadingBit(u_input.a.yy));
    return select(vec2<bool>(true, true), !vec2<bool>(any(vec2<bool>(false, false)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)))), vec2<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(0u, 9u)], 1000f)), 691f) >= _wgslsmith_f_op_f32(step(-2839f, _wgslsmith_f_op_f32(trunc(986f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(0u, 9u)]))) >= _wgslsmith_div_f32(_wgslsmith_div_f32(229f, global2[_wgslsmith_index_u32(arg_1.a.a.x, 9u)]), 1572f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(9049u, 23u)];
    var var_1 = select(select(vec2<bool>(any(vec2<bool>(true, true)), select(true, false, true)), vec2<bool>(true, true), vec2<bool>(true, any(vec2<bool>(true, false)))), !select(!select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, any(vec4<bool>(false, false, false, false))), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))), !select(func_1(vec3<f32>(global2[_wgslsmith_index_u32(0u, 9u)], 851f, 1852f), global3[_wgslsmith_index_u32(18416u, 23u)], vec3<u32>(var_0.c.x, u_input.a.x, var_0.a.a.x) >> (var_0.a.a % vec3<u32>(32u))), select(vec2<bool>(false, false), vec2<bool>(true, true), all(vec3<bool>(false, false, false))), func_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(481f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 6u)], 9u)], -222f))), Struct_2(Struct_1(var_0.a.a), u_input.b, u_input.a), select(vec3<u32>(var_0.a.a.x, 0u, var_0.a.a.x), vec3<u32>(0u, 71169u, var_0.a.a.x), true))));
    let var_2 = !select(select(select(vec4<bool>(var_1.x, true, true, var_1.x), vec4<bool>(false, var_1.x, var_1.x, var_1.x), select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(true, false, true, true), true)), vec4<bool>(true, true, true, all(vec4<bool>(false, true, var_1.x, false))), select(select(vec4<bool>(var_1.x, false, var_1.x, false), vec4<bool>(false, var_1.x, var_1.x, true), vec4<bool>(true, true, var_1.x, var_1.x)), !vec4<bool>(var_1.x, var_1.x, var_1.x, true), !var_1.x)), select(!select(vec4<bool>(var_1.x, false, var_1.x, false), vec4<bool>(true, var_1.x, false, var_1.x), var_1.x), select(!vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(true, var_1.x, true, true), true), select(!vec4<bool>(true, var_1.x, false, var_1.x), !vec4<bool>(var_1.x, var_1.x, false, false), var_1.x)), var_1.x);
    let var_3 = var_1.x;
    global1 = -1i;
    var var_4 = _wgslsmith_sub_i32(u_input.d ^ firstTrailingBit(~(-u_input.b)), 77827i);
    global0 = array<u32, 6>();
    let var_5 = func_2(var_2, vec2<u32>(~_wgslsmith_div_u32(_wgslsmith_clamp_u32(var_0.a.a.x, 0u, u_input.a.x), 1u), 0u >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(25729u, 18312u, 28545u), vec3<u32>(0u, 1u, 15831u)) % 32u)));
    let var_6 = func_2(vec4<bool>(true, u_input.d >= (i32(-1i) * -21640i), var_2.x, false), ~vec2<u32>(~1u, ~countOneBits(5247u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, u_input.c, min(-select(vec4<i32>(var_0.b, var_0.b, -59964i, -1i), vec4<i32>(-105389i, var_0.b, 56134i, -5732i) & vec4<i32>(var_0.b, u_input.d, 2147483647i, var_0.b), !var_2.x), -((vec4<i32>(-21490i, var_0.b, -1i, u_input.b) >> (vec4<u32>(4294967295u, 13920u, global0[_wgslsmith_index_u32(1u, 6u)], 0u) % vec4<u32>(32u))) << (~vec4<u32>(var_5.a.x, var_5.a.x, u_input.a.x, 0u) % vec4<u32>(32u)))), ~(~(~u_input.a.zx >> (_wgslsmith_mod_vec2_u32(vec2<u32>(12500u, 1u), vec2<u32>(global0[_wgslsmith_index_u32(var_5.a.x, 6u)], 13725u)) % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(1908f, global2[_wgslsmith_index_u32(1u, 9u)])), global2[_wgslsmith_index_u32(var_6.a.x, 9u)], global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.a.a.x, var_5.a.x), 9u)], 124f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1266f, global2[_wgslsmith_index_u32(4294967295u, 9u)], global2[_wgslsmith_index_u32(u_input.a.x, 9u)], -408f) + vec4<f32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], 9u)], -262f, global2[_wgslsmith_index_u32(var_0.c.x, 9u)], 1171f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 9u)], global2[_wgslsmith_index_u32(30982u, 9u)], global2[_wgslsmith_index_u32(var_5.a.x, 9u)], 1000f) + vec4<f32>(-2347f, global2[_wgslsmith_index_u32(0u, 9u)], -988f, -2402f))))));
}

