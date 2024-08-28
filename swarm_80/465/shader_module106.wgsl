struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<bool>,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec2<u32>, 4> = array<vec2<u32>, 4>(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(47406u, 71753u));

var<private> global2: array<vec4<bool>, 13>;

var<private> global3: array<bool, 1>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32) -> vec4<i32> {
    let var_0 = global0.a.x;
    global0 = Struct_4(u_input.a << ((firstLeadingBit(~vec3<u32>(u_input.e.x, 4294967295u, global0.a.x)) << (~(vec3<u32>(u_input.c, u_input.e.x, 14653u) ^ vec3<u32>(u_input.a.x, global0.a.x, u_input.e.x)) % vec3<u32>(32u))) % vec3<u32>(32u)), any(!vec2<bool>(true, all(vec2<bool>(global3[_wgslsmith_index_u32(1u, 1u)], global3[_wgslsmith_index_u32(29995u, 1u)])))));
    global1 = array<vec2<u32>, 4>();
    global3 = array<bool, 1>();
    var var_1 = select(!vec2<bool>(any(!vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.e.x, 1u)], global3[_wgslsmith_index_u32(35125u, 1u)], global0.b)), !global3[_wgslsmith_index_u32(~4294967295u, 1u)]), vec2<bool>(true, true), (!(global3[_wgslsmith_index_u32(48592u, 1u)] & true) || any(!vec2<bool>(global3[_wgslsmith_index_u32(global0.a.x, 1u)], global3[_wgslsmith_index_u32(4294967295u, 1u)]))) | any(!select(vec3<bool>(global3[_wgslsmith_index_u32(global0.a.x, 1u)], false, true), vec3<bool>(true, global0.b, false), global3[_wgslsmith_index_u32(67288u, 1u)])));
    return firstLeadingBit(-vec4<i32>(u_input.b, u_input.b, arg_0, _wgslsmith_sub_i32(73575i, arg_0))) & countOneBits(-vec4<i32>(-2147483647i, arg_0, u_input.d, -40262i ^ u_input.d));
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_1 {
    global3 = array<bool, 1>();
    let var_0 = global0.a.x;
    var var_1 = -_wgslsmith_dot_vec4_i32(func_3(firstLeadingBit(u_input.b >> (u_input.c % 32u))), -abs(vec4<i32>(2382i, u_input.b, -2147483647i, 1i) ^ vec4<i32>(u_input.d, -6535i, 1i, u_input.d)));
    var var_2 = 60081i;
    global1 = array<vec2<u32>, 4>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(-424f + _wgslsmith_f_op_f32(step(arg_1, arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(339f, arg_1)) + _wgslsmith_f_op_f32(-arg_1))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2119f, arg_1, arg_1) * vec3<f32>(591f, arg_1, arg_1))))), 1785f, vec3<bool>(true, global3[_wgslsmith_index_u32(global0.a.x, 1u)], !(!global0.b)), vec4<bool>(true != all(vec3<bool>(global0.b, true, global0.b)), false, true, true | all(select(vec2<bool>(global0.b, global0.b), vec2<bool>(global0.b, true), global3[_wgslsmith_index_u32(1u, 1u)]))), select(~(~global1[_wgslsmith_index_u32(1u, 4u)]), ~vec2<u32>(46202u, ~global0.a.x), false));
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = Struct_3(reverseBits(4294967295u), func_2(-1i, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-598f))))))), Struct_2(Struct_1(vec3<f32>(1555f, _wgslsmith_div_f32(-1406f, -1000f), arg_0), _wgslsmith_f_op_f32(ceil(arg_0)), select(vec3<bool>(global0.b, global0.b, false), vec3<bool>(global3[_wgslsmith_index_u32(0u, 1u)], global0.b, false), select(vec3<bool>(true, false, true), vec3<bool>(true, global3[_wgslsmith_index_u32(0u, 1u)], global3[_wgslsmith_index_u32(36561u, 1u)]), global3[_wgslsmith_index_u32(4294967295u, 1u)])), global2[_wgslsmith_index_u32(50192u, 13u)], firstTrailingBit(u_input.e.zz)), u_input.d, 1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-790f, _wgslsmith_f_op_f32(-arg_0), 1378f, 1000f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(675f, -672f), _wgslsmith_f_op_f32(-arg_0)), vec4<f32>(1410f, -452f, _wgslsmith_f_op_f32(arg_0 - 570f), -272f), any(select(vec2<bool>(false, global3[_wgslsmith_index_u32(global0.a.x, 1u)]), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 1u)], global0.b), true))))), Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -583f, arg_0) * vec3<f32>(arg_0, arg_0, 1678f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 373f, 201f) - vec3<f32>(arg_0, arg_0, arg_0)), vec3<bool>(true, true, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -1359f)), !select(select(vec3<bool>(global0.b, true, global0.b), vec3<bool>(global3[_wgslsmith_index_u32(0u, 1u)], global0.b, global0.b), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 1u)], false, false)), vec3<bool>(global3[_wgslsmith_index_u32(u_input.e.x, 1u)], global0.b, true), 53940u != global0.a.x), func_2(13664i, -596f).d, _wgslsmith_mod_vec2_u32(~(~vec2<u32>(u_input.c, 20469u)), select(func_2(u_input.b, arg_0).e, _wgslsmith_clamp_vec2_u32(vec2<u32>(global0.a.x, u_input.c), vec2<u32>(u_input.c, 19674u), vec2<u32>(global0.a.x, 1u)), vec2<bool>(false, global0.b)))));
    global3 = array<bool, 1>();
    let var_1 = Struct_4(vec3<u32>(_wgslsmith_sub_u32(max(abs(u_input.c), 1u), 18306u), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(35568u, global0.a.x, 1u, 4294967295u), vec4<u32>(0u, 7457u, 64836u, 4294967295u)), global0.a.x), true);
    var var_2 = true;
    global1 = array<vec2<u32>, 4>();
    return 135f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2111f * _wgslsmith_f_op_f32(542f - 1037f)))) - _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -185f))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-101f + _wgslsmith_f_op_f32(min(-869f, -561f)))), _wgslsmith_f_op_f32(sign(545f))));
    let var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(165i, _wgslsmith_add_i32(u_input.b >> (~global0.a.x % 32u), -52341i >> (min(6178u, global0.a.x) % 32u)), _wgslsmith_mult_i32(-_wgslsmith_div_i32(11991i, 28948i), u_input.d)), _wgslsmith_add_vec3_i32(vec3<i32>(func_3(0i).x, 8603i, -10440i), vec3<i32>(u_input.d, u_input.b, select(abs(0i), 17894i, true))));
    let var_2 = _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-2147483647i, u_input.b), func_3(-1i).x, 2147483647i) < func_3(i32(-1i) * -1i).x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), -704f, _wgslsmith_div_f32(var_0, var_0)))), i32(-1i) * -select(u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(3830i, var_1.x, 0i), var_1), var_2), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(224f, var_0) + vec2<f32>(124f, var_0))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -121f), var_0)) * vec2<f32>(-725f, _wgslsmith_f_op_f32(f32(-1f) * -303f))));
}

