struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2> = array<bool, 2>(true, false);

var<private> global1: array<i32, 24> = array<i32, 24>(7509i, -14338i, -49275i, i32(-2147483648), 2147483647i, 22458i, i32(-2147483648), 11432i, 2147483647i, 2147483647i, 3148i, 1i, -1i, 0i, 0i, 2147483647i, 12160i, -23610i, 0i, i32(-2147483648), -1i, -10122i, 2147483647i, 2147483647i);

var<private> global2: array<u32, 15>;

var<private> global3: array<Struct_1, 24>;

var<private> global4: array<vec4<f32>, 7>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(766f, 1197f) - vec2<f32>(-233f, -1000f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(728f, 121f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(152f, -544f))))))));
    var var_1 = abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 24u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 15u)], 24u)], abs(min(-2147483647i, global1[_wgslsmith_index_u32(1u, 24u)])), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a, u_input.a)), max(vec2<u32>(u_input.a, global2[_wgslsmith_index_u32(30896u, 15u)]), vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 15u)], 1u))), 24u)]), select(_wgslsmith_mod_vec4_i32(vec4<i32>(27365i, -11109i, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 15u)], 24u)], -2147483647i), vec4<i32>(36231i, 0i, global1[_wgslsmith_index_u32(58609u, 24u)], -13795i)) ^ -vec4<i32>(25031i, -29235i, global1[_wgslsmith_index_u32(81806u, 24u)], global1[_wgslsmith_index_u32(0u, 24u)]), max(-vec4<i32>(27439i, 1i, global1[_wgslsmith_index_u32(41125u, 24u)], global1[_wgslsmith_index_u32(u_input.a, 24u)]), abs(vec4<i32>(1i, -2147483647i, -18144i, global1[_wgslsmith_index_u32(11841u, 24u)]))), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~u_input.a, 15u)], 15u)], _wgslsmith_mult_u32(u_input.a, global2[_wgslsmith_index_u32(u_input.a, 15u)])), 2u)]), select(firstTrailingBit(firstLeadingBit(vec4<i32>(global1[_wgslsmith_index_u32(44081u, 24u)], 1i, global1[_wgslsmith_index_u32(0u, 24u)], -58206i))), vec4<i32>(global1[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(4294967295u, 15u)], 24u)], min(-1i, global1[_wgslsmith_index_u32(1u, 24u)]), _wgslsmith_div_i32(global1[_wgslsmith_index_u32(u_input.a, 24u)], global1[_wgslsmith_index_u32(54503u, 24u)]), -global1[_wgslsmith_index_u32(7832u, 24u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(66408u, 2u)], false, any(vec3<bool>(global0[_wgslsmith_index_u32(45951u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)], false))))));
    var var_2 = 569u;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-322f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)) * -1237f)))), 36472i, ~_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 15u)], 24u)], 2147483647i, -6927i, 11096i), vec4<i32>(var_1.x, 43996i, 36259i, var_1.x)), _wgslsmith_div_i32(global1[_wgslsmith_index_u32(1u, 24u)], -2147483647i), max(global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(22582u, 24u)])), _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(var_1.x, 2147483647i, -2147483647i)), firstTrailingBit(var_1.yxz))), var_1.xy);
    var var_4 = Struct_1(_wgslsmith_f_op_f32(var_3.a * _wgslsmith_f_op_f32(-646f * var_3.a)), var_1.x >> (global2[_wgslsmith_index_u32(firstLeadingBit(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global2[_wgslsmith_index_u32(40203u, 15u)], 51518u, global2[_wgslsmith_index_u32(u_input.a, 15u)], global2[_wgslsmith_index_u32(1u, 15u)]), ~vec4<u32>(7231u, 0u, 6713u, global2[_wgslsmith_index_u32(29649u, 15u)])), 15u)]), 15u)] % 32u), vec3<i32>(var_3.b, abs(-_wgslsmith_div_i32(var_1.x, 2147483647i)), _wgslsmith_sub_i32(-30934i, firstLeadingBit(_wgslsmith_sub_i32(0i, 33753i)))), var_3.c.xx);
    return countOneBits(~var_4.c);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<i32>) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-271f - _wgslsmith_div_f32(-323f, -264f)) - _wgslsmith_f_op_f32(-642f + -2057f)), -2147483647i, func_3() ^ vec3<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(58714i, -1i), ~global1[_wgslsmith_index_u32(u_input.a, 24u)]), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(1u, 15u)], arg_0.x, global2[_wgslsmith_index_u32(u_input.a, 15u)]), vec3<u32>(1u, arg_0.x, 1097u))), 24u)], 1i), ~vec2<i32>(1i, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, u_input.a)), arg_0 | arg_0), 24u)]));
    var var_1 = select(34527i, var_0.d.x, false);
    global0 = array<bool, 2>();
    let var_2 = global3[_wgslsmith_index_u32(16162u, 24u)];
    var_0 = Struct_1(_wgslsmith_f_op_f32(var_2.a - -1000f), var_2.d.x, _wgslsmith_mult_vec3_i32(var_2.c, var_2.c), arg_1);
    return _wgslsmith_sub_i32(6385i, 1i);
}

fn func_1() -> u32 {
    global2 = array<u32, 15>();
    var var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -(vec4<i32>(15679i, -1i, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 15u)], 15u)], 24u)], 1i) >> (~vec4<u32>(36195u, global2[_wgslsmith_index_u32(1085u, 15u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(63038u, 15u)], 15u)], global2[_wgslsmith_index_u32(u_input.a, 15u)]) % vec4<u32>(32u))), -(vec4<i32>(firstLeadingBit(31891i), 32540i >> (global2[_wgslsmith_index_u32(0u, 15u)] % 32u), func_2(vec2<u32>(99973u, u_input.a), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 24u)], global1[_wgslsmith_index_u32(1u, 24u)])), _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(u_input.a, 24u)], -1i)) | vec4<i32>(global1[_wgslsmith_index_u32(29576u, 24u)] | global1[_wgslsmith_index_u32(8203u, 24u)], global1[_wgslsmith_index_u32(~4294967295u, 24u)], global1[_wgslsmith_index_u32(~u_input.a, 24u)], 378i)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-100f * -957f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1345f + 1576f))), -478f));
    global4 = array<vec4<f32>, 7>();
    var_0 = firstTrailingBit(_wgslsmith_clamp_vec4_i32(-min(select(vec4<i32>(2147483647i, -1i, 1i, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 15u)], 24u)]), vec4<i32>(var_0.x, 1i, 16237i, 0i), true), vec4<i32>(0i, 19158i, var_0.x, var_0.x)), vec4<i32>(_wgslsmith_mult_i32(-2147483647i, var_0.x), 2147483647i, global1[_wgslsmith_index_u32(7680u, 24u)], var_0.x), vec4<i32>(var_0.x, var_0.x | (i32(-1i) * -20193i), -1i, _wgslsmith_add_i32(~var_0.x, global1[_wgslsmith_index_u32(countOneBits(u_input.a), 24u)]))));
    return select(0u, 1u, abs(abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~68323u, 15u)], 15u)])) < ~64253u);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(-279f, global1[_wgslsmith_index_u32(u_input.a, 24u)], arg_0, arg_0.zy);
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a)), arg_2.x))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a)))), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(abs(-vec4<i32>(var_0.c.x, 2147483647i, global1[_wgslsmith_index_u32(53123u, 24u)], -14718i)), select(abs(vec4<i32>(33911i, arg_0.x, var_0.b, 52795i)), select(vec4<i32>(27037i, var_0.c.x, arg_0.x, 38051i), vec4<i32>(-13522i, global1[_wgslsmith_index_u32(u_input.a, 24u)], 1i, arg_3.d.x), true), true)), -17266i, 0i), -vec3<i32>(0i, _wgslsmith_mod_i32(arg_0.x, arg_3.b), _wgslsmith_dot_vec2_i32(-vec2<i32>(global1[_wgslsmith_index_u32(1u, 24u)], -1i), arg_0.zx)), select(select(_wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(global1[_wgslsmith_index_u32(arg_1.x, 24u)], -19631i)), _wgslsmith_add_vec2_i32(var_0.d, arg_3.c.zx)), -(var_0.c.yx | var_0.c.zz), select(!vec2<bool>(true, global0[_wgslsmith_index_u32(25409u, 2u)]), select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 2u)]), vec2<bool>(true, true), vec2<bool>(true, global0[_wgslsmith_index_u32(62333u, 2u)])), arg_1.x != u_input.a)), arg_3.d, vec2<bool>(false, global0[_wgslsmith_index_u32(firstTrailingBit(1u), 2u)])));
    global2 = array<u32, 15>();
    var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_2.a)))), -97858i, _wgslsmith_mod_vec3_i32(vec3<i32>(firstLeadingBit(~(-31946i)), arg_3.d.x, _wgslsmith_dot_vec2_i32(var_0.d >> (arg_1.yy % vec2<u32>(32u)), vec2<i32>(arg_0.x, var_2.d.x) << (vec2<u32>(u_input.a, arg_1.x) % vec2<u32>(32u)))), vec3<i32>(~28725i, var_2.c.x, var_2.d.x)), select(vec2<i32>(select(5390i, -2147483647i, false || global0[_wgslsmith_index_u32(arg_1.x, 2u)]), _wgslsmith_dot_vec2_i32(arg_3.d, ~var_2.d)), -_wgslsmith_clamp_vec2_i32(vec2<i32>(-17649i, -2147483647i), func_3().yz, arg_0.zz | var_2.d), vec2<bool>(global0[_wgslsmith_index_u32(0u, 2u)], true)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(7393u, u_input.a);
    var var_1 = func_4(firstTrailingBit(vec3<i32>(-global1[_wgslsmith_index_u32(abs(var_0.x), 24u)], -global1[_wgslsmith_index_u32(88153u, 24u)], global1[_wgslsmith_index_u32(1u, 24u)])), select(vec3<u32>(abs(0u), min(17387u, global2[_wgslsmith_index_u32(1u, 15u)]), func_1()), vec3<u32>(121233u << (global2[_wgslsmith_index_u32(0u, 15u)] % 32u), u_input.a, u_input.a >> (var_0.x % 32u)), vec3<bool>(!global0[_wgslsmith_index_u32(var_0.x, 2u)], true, global0[_wgslsmith_index_u32(~u_input.a, 2u)])) >> (countOneBits(~vec3<u32>(var_0.x, var_0.x, global2[_wgslsmith_index_u32(76550u, 15u)])) % vec3<u32>(32u)), global4[_wgslsmith_index_u32(max(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(var_0.x, 20423u))), 3472u), 7u)], Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(287f, 969f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-484f * 2358f), _wgslsmith_f_op_f32(1003f - -1000f)))), ~(~min(9106i, -5862i)), -(~vec3<i32>(36574i, -2147483647i, -1266i)), -(firstTrailingBit(vec2<i32>(-31334i, global1[_wgslsmith_index_u32(var_0.x, 24u)])) >> (vec2<u32>(7805u, 19419u) % vec2<u32>(32u)))));
    let var_2 = reverseBits(global2[_wgslsmith_index_u32(u_input.a, 15u)] ^ ~(~3488u)) ^ select(var_0.x, ~_wgslsmith_add_u32(u_input.a, ~u_input.a), true);
    var var_3 = global3[_wgslsmith_index_u32(0u | (~(~(u_input.a & 30477u)) << (~var_0.x % 32u)), 24u)];
    let var_4 = vec4<bool>(all(select(!vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(73668u, 2u)]), !(!vec3<bool>(global0[_wgslsmith_index_u32(var_2, 2u)], true, true)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.a, u_input.a), _wgslsmith_div_u32(global2[_wgslsmith_index_u32(var_2, 15u)], global2[_wgslsmith_index_u32(133662u, 15u)]), ~1u), 2u)])), all(!vec3<bool>(-512f != var_3.a, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(1u, 15u)], 1u), 2u)], any(vec3<bool>(global0[_wgslsmith_index_u32(26367u, 2u)], global0[_wgslsmith_index_u32(25943u, 2u)], global0[_wgslsmith_index_u32(0u, 2u)])))), global0[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 21215u), vec2<u32>(u_input.a, 0u)), u_input.a)), 2u)], !global0[_wgslsmith_index_u32(0u, 2u)]);
    var var_5 = 0u ^ var_2;
    global2 = array<u32, 15>();
    global0 = array<bool, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-955f, var_1.a))), -1501f)));
}

