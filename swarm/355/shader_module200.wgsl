struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2 = Struct_2(vec2<i32>(i32(-2147483648), -11584i), vec3<f32>(1000f, 1457f, -248f), Struct_1(vec2<bool>(true, true), 5147u, -29625i), -1i, false);

var<private> global2: array<i32, 2>;

var<private> global3: array<vec4<bool>, 4> = array<vec4<bool>, 4>(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false));

var<private> global4: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec2<bool>(true, true), 48918u, 0i), Struct_1(vec2<bool>(false, false), 23759u, 14747i), Struct_1(vec2<bool>(true, false), 0u, 0i), Struct_1(vec2<bool>(false, false), 6265u, 8956i), Struct_1(vec2<bool>(false, true), 1u, 1i), Struct_1(vec2<bool>(false, true), 1u, 0i), Struct_1(vec2<bool>(false, false), 4294967295u, 9665i), Struct_1(vec2<bool>(true, true), 0u, -25556i), Struct_1(vec2<bool>(true, true), 13170u, 0i), Struct_1(vec2<bool>(false, true), 61427u, 1i), Struct_1(vec2<bool>(false, true), 10807u, -40340i), Struct_1(vec2<bool>(false, false), 1u, 4078i), Struct_1(vec2<bool>(false, true), 0u, i32(-2147483648)), Struct_1(vec2<bool>(false, false), 14846u, i32(-2147483648)), Struct_1(vec2<bool>(true, false), 32187u, 2147483647i), Struct_1(vec2<bool>(false, true), 0u, 32132i), Struct_1(vec2<bool>(false, true), 0u, -8506i), Struct_1(vec2<bool>(true, true), 1u, -1i), Struct_1(vec2<bool>(false, false), 86732u, 20551i), Struct_1(vec2<bool>(true, true), 11733u, -104982i), Struct_1(vec2<bool>(false, true), 4294967295u, -18366i), Struct_1(vec2<bool>(true, false), 10312u, 0i), Struct_1(vec2<bool>(false, true), 4294967295u, -24054i), Struct_1(vec2<bool>(true, true), 4294967295u, 0i), Struct_1(vec2<bool>(false, false), 1u, 7674i), Struct_1(vec2<bool>(false, false), 0u, -27445i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_2) -> i32 {
    let var_0 = global1.c;
    let var_1 = Struct_1(vec2<bool>(true, var_0.a.x), _wgslsmith_clamp_u32(global1.c.b, arg_2.c.b, 23009u & ~firstTrailingBit(u_input.b.x)), -41810i);
    global2 = array<i32, 2>();
    var var_2 = vec4<u32>(~(~(~global1.c.b)), abs(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(50949u, arg_2.c.b), vec2<u32>(var_0.b, 94806u)))), var_0.b, min(~0u, u_input.a));
    let var_3 = _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(reverseBits(0u) | _wgslsmith_sub_u32(0u, global1.c.b), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 31238u, var_1.b, 12340u), u_input.b))), countOneBits(64590u)), 2u)], firstTrailingBit(countOneBits(_wgslsmith_mult_i32(2385i, 1i) | countOneBits(arg_2.c.c))));
    return _wgslsmith_mult_i32(-58189i ^ ~_wgslsmith_sub_i32(-32070i, var_3), abs(_wgslsmith_dot_vec3_i32(~vec3<i32>(1i, -1i, 1i), ~vec3<i32>(var_3, -19449i, arg_1.x) >> (select(u_input.b.zxw, var_2.www, vec3<bool>(true, arg_2.c.a.x, var_1.a.x)) % vec3<u32>(32u)))));
}

fn func_2() -> i32 {
    global0 = all(vec2<bool>(global1.c.a.x || global1.c.a.x, !all(select(global1.c.a, global1.c.a, true))));
    global1 = Struct_2(~_wgslsmith_div_vec2_i32(abs(abs(global1.a)), -(~vec2<i32>(global1.d, global2[_wgslsmith_index_u32(u_input.a, 2u)]))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.b * global1.b) + _wgslsmith_f_op_vec3_f32(global1.b + _wgslsmith_div_vec3_f32(global1.b, global1.b))), global1.b), Struct_1(select(vec2<bool>(select(global1.e, global1.e, true), global1.e), !(!vec2<bool>(global1.e, true)), !(!global1.c.a)), 59798u, global2[_wgslsmith_index_u32(55301u, 2u)]), global1.c.c, global1.e);
    var var_0 = global1.b;
    var var_1 = global1.d;
    global1 = Struct_2(countOneBits(global1.a ^ vec2<i32>(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(u_input.a, 2u)], -2120i), _wgslsmith_mult_i32(global1.a.x, -1i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.b * global1.b)) - global1.b) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-750f, var_0.x, 954f)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(2137f, -111f, global1.b.x))))))), Struct_1(global1.c.a, ~_wgslsmith_add_u32(~u_input.a, ~53291u), countOneBits(-6703i)), func_3(global1.b.x, _wgslsmith_mod_vec2_i32(vec2<i32>(i32(-1i) * -23107i, _wgslsmith_mod_i32(2147483647i, global1.a.x)), vec2<i32>(global1.a.x, ~global2[_wgslsmith_index_u32(u_input.b.x, 2u)])), Struct_2(max(_wgslsmith_div_vec2_i32(global1.a, vec2<i32>(-1i, global2[_wgslsmith_index_u32(598u, 2u)])), global1.a), global1.b, global4[_wgslsmith_index_u32(~u_input.b.x, 26u)], ~(-62871i), any(vec3<bool>(true, true, true)))), any(global3[_wgslsmith_index_u32(1u, 4u)]));
    return global1.d;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = global1.c;
    var var_1 = func_2();
    let var_2 = arg_3.x;
    let var_3 = all(vec2<bool>(var_0.a.x, all(!(!vec3<bool>(var_0.a.x, false, true)))));
    global0 = true;
    return Struct_2(~(~max(vec2<i32>(-2147483647i, 0i), vec2<i32>(var_0.c, var_0.c))), vec3<f32>(_wgslsmith_f_op_f32(-global1.b.x), 1041f, -1099f), global1.c, -3403i, false);
}

fn func_4(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = select(vec3<bool>(arg_0.e, true, all(select(vec3<bool>(global1.c.a.x, arg_0.e, global1.c.a.x), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(global1.c.a.x, true, false), vec3<bool>(false, false, true))))), vec3<bool>(false, (global1.a.x >= _wgslsmith_sub_i32(global1.a.x, 1i)) | all(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.c.b, global1.c.b), 4u)]), all(vec2<bool>(1i <= global2[_wgslsmith_index_u32(48304u, 2u)], any(global3[_wgslsmith_index_u32(global1.c.b, 4u)])))), !select(select(vec3<bool>(global1.e, arg_0.e, false), vec3<bool>(false, true, global1.c.a.x), global2[_wgslsmith_index_u32(u_input.a, 2u)] < arg_0.a.x), !vec3<bool>(global1.e, global1.c.a.x, true), !arg_0.e || select(true, false, global1.c.a.x)));
    global2 = array<i32, 2>();
    var var_1 = Struct_2(select(min(_wgslsmith_mult_vec2_i32(~vec2<i32>(global1.d, 1i), vec2<i32>(2147483647i, 19197i)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-22721i, global1.d), vec2<i32>(arg_0.d, -15405i)), global2[_wgslsmith_index_u32(global1.c.b ^ u_input.b.x, 2u)])), global1.a, false), arg_0.b, arg_0.c, 18107i, var_0.x);
    let var_2 = vec2<u32>(~(~arg_0.c.b), ~global1.c.b);
    global2 = array<i32, 2>();
    return vec2<bool>(var_1.e, ~(-_wgslsmith_clamp_i32(-7775i, 0i, 2147483647i)) < -5520i);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    global0 = true;
    global4 = array<Struct_1, 26>();
    let var_0 = arg_3.b.x;
    var var_1 = vec3<bool>(any(vec2<bool>(global1.c.a.x, !arg_0.x)), arg_1.c.a.x, global1.e && all(!(!vec2<bool>(global1.c.a.x, arg_1.e))));
    global3 = array<vec4<bool>, 4>();
    return func_1(global1.b.x <= 346f, global4[_wgslsmith_index_u32(global1.c.b | _wgslsmith_mult_u32(0u ^ select(1u, 45679u, arg_0.x), ~global1.c.b), 26u)], ~_wgslsmith_sub_u32(1u | func_1(arg_3.c.a.x, Struct_1(vec2<bool>(arg_0.x, global1.c.a.x), arg_1.c.b, 1i), arg_2, u_input.b.yx).c.b, 4294967295u), ~(~u_input.b.yy));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 2>();
    global2 = array<i32, 2>();
    global4 = array<Struct_1, 26>();
    global1 = func_5(func_4(func_1(!global1.c.a.x, global1.c, 30147u, u_input.b.xw)), Struct_2(_wgslsmith_add_vec2_i32(vec2<i32>(1i, abs(6831i)), vec2<i32>(53838i, global2[_wgslsmith_index_u32(u_input.a, 2u)]) | -vec2<i32>(global2[_wgslsmith_index_u32(25727u, 2u)], global1.a.x)), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.b.x * global1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.b.x, 429f))), _wgslsmith_f_op_f32(exp2(global1.b.x))), Struct_1(!(!vec2<bool>(global1.c.a.x, global1.c.a.x)), 1u, ~_wgslsmith_add_i32(global1.d, 2147483647i)), -2291i, true), 87565u, func_1(select(global1.c.b <= global1.c.b, false, !global1.c.a.x), global1.c, ~1u, u_input.b.xx));
    global1 = Struct_2(_wgslsmith_mult_vec2_i32(vec2<i32>(func_3(-1385f, _wgslsmith_clamp_vec2_i32(global1.a, global1.a, global1.a), func_1(global1.c.a.x, global1.c, 4294967295u, u_input.b.wz)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 9691u, 1u, global1.c.b), vec4<u32>(50225u, u_input.a, 62244u, u_input.b.x) << (vec4<u32>(global1.c.b, 43075u, 64411u, u_input.b.x) % vec4<u32>(32u))), 2u)]), global1.a), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(step(-917f, 739f)), -261f, _wgslsmith_f_op_f32(global1.b.x - _wgslsmith_f_op_f32(global1.b.x - 1014f))))), func_1(global1.b.x < _wgslsmith_f_op_f32(-func_1(global1.c.a.x, global4[_wgslsmith_index_u32(0u, 26u)], 4294967295u, vec2<u32>(global1.c.b, 4294967295u)).b.x), func_1((global1.c.a.x & global1.c.a.x) & global1.e, global4[_wgslsmith_index_u32(1u, 26u)], func_1(any(global1.c.a), Struct_1(vec2<bool>(false, global1.c.a.x), 1u, -616i), global1.c.b, u_input.b.xz).c.b, ~select(u_input.b.wz, vec2<u32>(0u, 1u), true)).c, u_input.a & (4294967295u | (u_input.b.x << (1u % 32u))), ~_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(0u, 4294967295u)), vec2<u32>(u_input.a, 62036u))).c, 1i, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(global1.c.b, global1.c.b), ~vec3<u32>(func_5(!vec2<bool>(global1.c.a.x, global1.e), func_1(global1.c.a.x, Struct_1(global1.c.a, 14379u, global1.c.c), global1.c.b, vec2<u32>(75363u, global1.c.b)), ~u_input.b.x, func_5(global1.c.a, Struct_2(vec2<i32>(-28064i, global2[_wgslsmith_index_u32(u_input.a, 2u)]), global1.b, global1.c, global2[_wgslsmith_index_u32(u_input.a, 2u)], global1.e), global1.c.b, Struct_2(global1.a, global1.b, Struct_1(global1.c.a, global1.c.b, -18697i), global1.d, true))).c.b, select(4294967295u, u_input.a, false) & ~u_input.a, ~4294967295u), ~(abs(-vec3<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 2u)], global1.d, global2[_wgslsmith_index_u32(global1.c.b, 2u)])) & select(-vec3<i32>(-2147483647i, -1i, global1.c.c), vec3<i32>(global1.d, -1i, global2[_wgslsmith_index_u32(20724u, 2u)]) << (u_input.b.zwz % vec3<u32>(32u)), all(vec3<bool>(true, global1.e, true)))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)) - global1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -485f) * 1f));
}

