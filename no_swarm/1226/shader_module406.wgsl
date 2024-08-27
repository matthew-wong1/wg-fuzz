struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<u32, 31>;

var<private> global2: Struct_1 = Struct_1(vec2<f32>(1000f, 1700f), -629f, vec4<i32>(2147483647i, i32(-2147483648), -6120i, -23983i), vec3<i32>(0i, 34913i, 1i));

var<private> global3: bool = true;

var<private> global4: i32 = i32(-2147483648);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> f32 {
    let var_0 = ~(~(abs(vec3<u32>(arg_2, 4294967295u, global1[_wgslsmith_index_u32(93514u, 31u)])) & ~(~vec3<u32>(u_input.b, global1[_wgslsmith_index_u32(1u, 31u)], u_input.b))));
    let var_1 = select(vec3<i32>(arg_0.d.x, 48346i, _wgslsmith_add_i32(_wgslsmith_mod_i32(global2.c.x, global2.d.x), arg_0.d.x)), ~countOneBits(-vec3<i32>(16411i, 604i, -14100i)), false) >> (vec3<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, 3710u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_2, 31u)], 31u)]), vec3<u32>(1u, u_input.b, global1[_wgslsmith_index_u32(u_input.c.x, 31u)])) | ~(~52090u), _wgslsmith_mult_u32(4294967295u, var_0.x)) % vec3<u32>(32u));
    let var_2 = true;
    global3 = !(global1[_wgslsmith_index_u32(0u, 31u)] < 4191u) && false;
    let var_3 = arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-629f)), _wgslsmith_f_op_f32(-arg_0.b), true || var_2)))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(189f - 969f) - -250f), _wgslsmith_f_op_f32(f32(-1f) * -982f), false)));
}

fn func_2(arg_0: vec2<bool>) -> u32 {
    let var_0 = vec3<bool>(true, false, !all(select(!vec4<bool>(arg_0.x, arg_0.x, true, true), !vec4<bool>(arg_0.x, false, false, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true))));
    let var_1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1772f, _wgslsmith_f_op_f32(func_3(Struct_1(global2.a, 807f, global2.c, global2.c.wwx), -1000f, 21526u, Struct_1(vec2<f32>(652f, global2.b), global0.x, vec4<i32>(-32002i, u_input.a, global2.d.x, u_input.a), global2.c.wwz)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global2.a, vec2<f32>(-1811f, global0.x))))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(-171f + 289f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.b)) - global0.x), ~_wgslsmith_mod_vec4_i32(~global2.c, vec4<i32>(global2.c.x, u_input.a, -30522i, select(-1i, global2.d.x, var_0.x))), select(max(global2.d, _wgslsmith_div_vec3_i32(vec3<i32>(5836i, -44887i, -16975i), vec3<i32>(28209i, -7759i, global2.c.x)) ^ global2.d), ~max(_wgslsmith_sub_vec3_i32(global2.c.zwz, global2.c.xww), ~vec3<i32>(global2.d.x, -4088i, u_input.a)), (~u_input.a > _wgslsmith_add_i32(u_input.a, 5031i)) | any(!vec3<bool>(false, var_0.x, false))));
    let var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(global2.d.zy, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, _wgslsmith_dot_vec3_i32(global2.d, vec3<i32>(2147483647i, var_1.c.x, u_input.a))), global2.d.yy)), firstTrailingBit(firstTrailingBit(_wgslsmith_add_vec2_i32(var_1.d.yy, var_1.c.yy))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), var_1.b) * global2.a), global2.b, _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(4842i, u_input.a), -46055i, ~(-2147483647i)), global2.d.x ^ -2147483647i, 43533i, _wgslsmith_dot_vec4_i32(global2.c, vec4<i32>(-2147483647i, var_2, var_2, var_2)) | ~(-16969i)), _wgslsmith_mod_vec4_i32(reverseBits(-var_1.c), var_1.c)), countOneBits(~var_1.d));
    var var_4 = var_1;
    return abs(min(countOneBits(_wgslsmith_dot_vec2_u32(u_input.c, ~vec2<u32>(7595u, u_input.c.x))), u_input.c.x));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec3<f32>) -> Struct_1 {
    global1 = array<u32, 31>();
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(f32(-1f) * -1373f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -379f) + _wgslsmith_f_op_f32(global2.b * global2.a.x)), _wgslsmith_f_op_f32(ceil(arg_1.a.x)))))));
    global0 = vec2<f32>(-1199f, -1016f);
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x + var_0.x)), _wgslsmith_f_op_f32(-688f - -412f));
    let var_1 = abs(vec4<i32>(arg_1.d.x, abs(-arg_1.d.x), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.d.x, -1i, -2147483647i, arg_2.x), vec4<i32>(-12939i, -2147483647i, global2.d.x, -14337i)) << (~vec4<u32>(1u, global1[_wgslsmith_index_u32(u_input.b, 31u)], 0u, 0u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(~arg_1.c, arg_2)), _wgslsmith_dot_vec3_i32(vec3<i32>(-14483i, firstTrailingBit(-30540i), arg_2.x), select(-arg_2.zxz, _wgslsmith_add_vec3_i32(arg_1.c.xxw, vec3<i32>(-60256i, arg_2.x, arg_2.x)), vec3<bool>(true, true, true)))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global2.b) + vec2<f32>(849f, 930f))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.a * arg_3.xz) * _wgslsmith_f_op_vec2_f32(-var_0.zw)))), true)), _wgslsmith_f_op_f32(-var_0.x), vec4<i32>(u_input.a, -216i, (i32(-1i) * -var_1.x) | _wgslsmith_div_i32(global2.d.x, i32(-1i) * -18090i), -firstLeadingBit(~81i)), select(_wgslsmith_mod_vec3_i32((vec3<i32>(13490i, -21492i, -11595i) & vec3<i32>(2147483647i, var_1.x, 0i)) & ~var_1.wzx, select(min(var_1.xwz, arg_1.d), -vec3<i32>(0i, arg_2.x, 1i), vec3<bool>(true, true, true))), ~arg_1.d, false));
}

fn func_1() -> Struct_1 {
    var var_0 = func_4((max(~u_input.b, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15874u, 31u)], 31u)]) >> (~reverseBits(19829u) % 32u)) & func_2(select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), true)), Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(trunc(-151f)), 353f))), global0.x, vec4<i32>(_wgslsmith_dot_vec4_i32(~global2.c, global2.c), global2.c.x, u_input.a, _wgslsmith_mod_i32(u_input.a, global2.d.x & u_input.a)), _wgslsmith_div_vec3_i32(global2.d << (~vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_dot_vec4_i32(global2.c, global2.c), i32(-1i) * -1i, -49923i))), firstTrailingBit(global2.c), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-876f, _wgslsmith_f_op_f32(f32(-1f) * -1111f), -1000f))));
    global3 = true;
    global4 = -17020i;
    var var_1 = func_4(countOneBits(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(~(u_input.b ^ global1[_wgslsmith_index_u32(0u, 31u)]), 31u)], u_input.c.x)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global2.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, var_0.a.x) + var_0.a), u_input.a != -1i)) + _wgslsmith_f_op_vec2_f32(-global2.a)), -430f, var_0.c & global2.c, vec3<i32>(~global2.d.x, min(u_input.a, _wgslsmith_sub_i32(var_0.d.x, 2147483647i)), _wgslsmith_sub_i32(-1i, firstLeadingBit(var_0.d.x)))), global2.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-153f, global2.a.x, global0.x)))))));
    var var_2 = firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(3682u, 12243u), _wgslsmith_mult_u32(64312u, u_input.c.x)), u_input.c), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.c, ~vec2<u32>(26462u, 0u), ~u_input.c), min(~u_input.c, countOneBits(u_input.c)))));
    return func_4(24641u, Struct_1(vec2<f32>(func_4(u_input.b, func_4(var_2.x, Struct_1(vec2<f32>(var_0.a.x, -320f), global0.x, vec4<i32>(-7813i, var_0.d.x, var_1.d.x, global2.c.x), vec3<i32>(1i, var_0.d.x, global2.c.x)), var_1.c, vec3<f32>(global2.a.x, var_0.b, var_0.b)), -vec4<i32>(-24759i, var_1.d.x, 1i, 1i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-325f, 186f, var_0.b) - vec3<f32>(-906f, 2363f, 1067f))).b, 628f), _wgslsmith_div_f32(-282f, 599f), vec4<i32>(1i, ~1i, -2147483647i, -_wgslsmith_clamp_i32(global2.c.x, u_input.a, var_1.d.x)), ~(~var_0.d)), select(_wgslsmith_sub_vec4_i32(max(vec4<i32>(-37595i, global2.d.x, -38588i, -1i), var_0.c), _wgslsmith_sub_vec4_i32(vec4<i32>(global2.c.x, var_1.d.x, 2147483647i, u_input.a), var_0.c)), var_1.c, !select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false))) >> (abs(max(~vec4<u32>(1u, var_2.x, u_input.c.x, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_2.x, 1u, var_2.x), vec4<u32>(u_input.b, 28576u, u_input.c.x, 55162u)))) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, global2.b, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.a.x, global2.b, true)) + _wgslsmith_f_op_f32(-global2.a.x)), -579f)));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true))));
    global0 = global2.a;
    var var_1 = global0.x;
    global3 = !var_0;
    var var_2 = !select(select(vec3<bool>(true, var_0, u_input.a < 30000i), select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, true, var_0), !vec3<bool>(var_0, false, true)), select(vec3<bool>(var_0, var_0, var_0), select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(false, var_0, true), vec3<bool>(var_0, true, false)), !var_0)), !select(vec3<bool>(true, false, var_0), select(vec3<bool>(true, var_0, var_0), vec3<bool>(var_0, var_0, var_0), vec3<bool>(true, var_0, false)), select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(true, false, false), var_0)), !vec3<bool>(false, var_0, var_0));
    return Struct_1(arg_1.a, _wgslsmith_f_op_f32(f32(-1f) * -198f), vec4<i32>(31131i, arg_1.c.x, _wgslsmith_add_i32(-1i, countOneBits(-arg_1.d.x)), global2.c.x), vec3<i32>(-(~countOneBits(-1i)), _wgslsmith_add_i32(reverseBits(_wgslsmith_sub_i32(-16899i, global2.d.x)), -firstTrailingBit(arg_1.c.x)), global2.c.x));
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_0.a)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, -610f) - arg_0.a))))), _wgslsmith_f_op_f32(-global2.a.x), ~vec4<i32>(reverseBits(~arg_1), _wgslsmith_mult_i32(1i, -2147483647i), arg_1, global2.d.x), ~global2.d);
    global1 = array<u32, 31>();
    let var_1 = all(!vec2<bool>(true, u_input.b != 1u));
    let var_2 = i32(-1i) * -abs(_wgslsmith_mult_i32(~arg_1, -60447i));
    let var_3 = func_1();
    return ~(~global1[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(u_input.c.x, _wgslsmith_dot_vec2_u32(u_input.c, u_input.c))), 31u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 648f;
    global3 = !(global1[_wgslsmith_index_u32(func_6(func_5(~vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(u_input.c.x, 31u)], global1[_wgslsmith_index_u32(u_input.c.x, 31u)]), func_1()), global2.d.x, global0.x), 31u)] < ~_wgslsmith_dot_vec4_u32(~vec4<u32>(8443u, u_input.c.x, global1[_wgslsmith_index_u32(16346u, 31u)], 7491u), vec4<u32>(0u, 88906u, 25924u, u_input.b)));
    global1 = array<u32, 31>();
    global2 = func_5(firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.c.x, global1[_wgslsmith_index_u32(0u, 31u)], u_input.b, global1[_wgslsmith_index_u32(20299u, 31u)])), ~vec4<u32>(25148u, u_input.b, 0u, 1u)), global1[_wgslsmith_index_u32((global1[_wgslsmith_index_u32(1u, 31u)] | 0u) & ~1u, 31u)], abs(firstTrailingBit(u_input.c.x)))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1410f, _wgslsmith_f_op_f32(global0.x - var_0))), _wgslsmith_div_f32(global2.a.x, _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(trunc(global2.a.x)))), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.a, 2147483647i), func_5(vec3<u32>(38961u, 11633u, global1[_wgslsmith_index_u32(4294967295u, 31u)]), Struct_1(vec2<f32>(-527f, -2465f), global0.x, vec4<i32>(global2.d.x, -17117i, 3385i, u_input.a), vec3<i32>(u_input.a, u_input.a, 43914i))).d.x), u_input.a, 3633i, 0i), ~_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 2147483647i, -1i), global2.c.xww), func_5(vec3<u32>(1u, 0u, 42725u), Struct_1(vec2<f32>(global2.a.x, 254f), -1589f, global2.c, global2.c.wxz)).d)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(-global2.a.x)), global2.a.x)), -1150f, reverseBits(global2.c), vec3<i32>(-2147483647i << (countOneBits(~u_input.b) % 32u), -655i, select(1i, -13945i, !select(true, false, true))));
    global0 = global2.a;
    global4 = ~(~u_input.a);
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-global2.a), 101f, global2.c, _wgslsmith_sub_vec3_i32(~(~(~var_1.c.wzx)), vec3<i32>(-global2.d.x, var_1.d.x >> (1u % 32u), -select(var_1.d.x, global2.c.x, false))));
    global0 = func_1().a;
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, -1535f))), -941f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), 1017f), select(vec3<u32>(~_wgslsmith_mod_u32(0u, global1[_wgslsmith_index_u32(7841u, 31u)]), u_input.b, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 31u)], 4294967295u, 0u, u_input.c.x), vec4<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 31u)], global1[_wgslsmith_index_u32(16709u, 31u)], 0u, global1[_wgslsmith_index_u32(0u, 31u)]))), ~(~(vec3<u32>(u_input.b, 80782u, 1u) << (vec3<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 31u)], 1u, global1[_wgslsmith_index_u32(7200u, 31u)]) % vec3<u32>(32u)))), any(vec2<bool>(true, any(vec4<bool>(true, true, true, false))))));
}

