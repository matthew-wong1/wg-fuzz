struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20> = array<i32, 20>(i32(-2147483648), -42940i, 0i, 1i, 2147483647i, i32(-2147483648), i32(-2147483648), -1i, i32(-2147483648), -1i, 2147483647i, 2147483647i, 0i, 0i, 37550i, -1i, -19097i, 0i, 2147483647i, -1i);

var<private> global1: Struct_2;

var<private> global2: i32;

var<private> global3: f32;

var<private> global4: Struct_2 = Struct_2(vec3<u32>(30725u, 73926u, 110143u), Struct_1(vec4<bool>(true, false, false, true), vec4<i32>(0i, -60512i, 30800i, 1i)), -1313f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: Struct_4) -> bool {
    let var_0 = false;
    let var_1 = -729f;
    global3 = 255f;
    var var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, var_1, arg_0), vec3<f32>(global4.c, global1.c, -679f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.c, global1.c, global1.c)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.c, var_1, global1.c) - vec3<f32>(-618f, -1446f, var_1)), vec3<f32>(-423f, var_1, global1.c))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, var_1, global4.c))))), vec3<f32>(1000f, global1.c, _wgslsmith_f_op_f32(-arg_0))));
    let var_3 = global4.b.a.yx;
    return global1.b.a.x;
}

fn func_2(arg_0: f32, arg_1: vec3<i32>) -> Struct_2 {
    let var_0 = ~max(vec3<u32>(global4.a.x, min(~global4.a.x, 1u), ~global1.a.x), max(max(vec3<u32>(global1.a.x, 38017u, 18891u), global1.a), ~vec3<u32>(global1.a.x, 16626u, global4.a.x) & ~global4.a));
    var var_1 = Struct_1(!vec4<bool>(func_3(142f, Struct_3(global1.b.a.xz, global1.a.x, 5282u, global1.b), vec4<u32>(global1.a.x, 34577u, global1.a.x, global4.a.x), Struct_4(u_input.a)), true, global1.b.a.x, !global4.b.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(global1.b.b.x, global1.b.b.x, min(global1.b.b.x, u_input.a.x), min(-18452i, arg_1.x)) & ~reverseBits(global1.b.b), _wgslsmith_mult_vec4_i32(vec4<i32>(min(51350i, 7473i), u_input.b, global1.b.b.x, 1798i), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(global4.b.b, global1.b.b), -global1.b.b)), global4.b.b));
    var var_2 = Struct_3(global1.b.a.wz, _wgslsmith_dot_vec2_u32(~(global4.a.zy << (var_0.zy % vec2<u32>(32u))), var_0.xz), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~global1.a, ~global4.a), var_0.x, global4.a.x), Struct_1(!(!vec4<bool>(false, global4.b.a.x, true, true)), -countOneBits(vec4<i32>(global1.b.b.x, global4.b.b.x, u_input.b, -25097i) >> (vec4<u32>(53354u, global4.a.x, global1.a.x, var_0.x) % vec4<u32>(32u)))));
    let var_3 = global4.b.b.yx;
    var var_4 = global1.b;
    return Struct_2(min(~(vec3<u32>(4294967295u, 4294967295u, var_2.c) ^ global4.a), vec3<u32>(global1.a.x, var_2.b, 13268u)), var_2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-898f + _wgslsmith_f_op_f32(270f * global1.c)) - _wgslsmith_f_op_f32(abs(global4.c)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2) -> Struct_3 {
    global4 = arg_1;
    global1 = func_2(arg_0.x, -arg_1.b.b.yxx);
    global0 = array<i32, 20>();
    let var_0 = func_2(global4.c, vec3<i32>(1i, reverseBits(-25368i << (_wgslsmith_sub_u32(global4.a.x, global4.a.x) % 32u)), u_input.b)).b;
    global1 = arg_1;
    return Struct_3(vec2<bool>(false, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c)), var_0.b.wyx).b.a.x), global1.a.x, 1u, var_0);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = vec3<i32>(abs(~(-arg_0.b.x)), arg_0.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(reverseBits(10327i), arg_0.b.x ^ -1i, -global4.b.b.x), 1326i), -reverseBits(~vec2<i32>(-1i, global1.b.b.x))));
    var var_1 = func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1522f)), _wgslsmith_f_op_f32(trunc(global4.c)))), vec3<i32>(reverseBits(firstTrailingBit(-526i)), -abs(~u_input.a.x), max(abs(u_input.b) >> (0u % 32u), -2147483647i))).b.a;
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(~arg_3.x, 47040u, select(43887u, arg_2.x, true)) << (~arg_3 % vec3<u32>(32u)), ~global4.a), 20u)];
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -847f), _wgslsmith_f_op_f32(global4.c + -2269f)))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, global4.c), vec2<f32>(-975f, -863f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-353f, 1140f)))))));
    let var_4 = select(global1.b.b.ywy & global4.b.b.xyz, _wgslsmith_mod_vec3_i32(global1.b.b.zwx, ~(-vec3<i32>(u_input.b, global1.b.b.x, var_0.x))), var_1.yyy);
    return func_4(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(311f, global1.c)))))), func_2(_wgslsmith_f_op_f32(trunc(1000f)), vec3<i32>(select(_wgslsmith_clamp_i32(-12621i, 24602i, arg_1.d.b.x), abs(var_0.x), func_3(1452f, Struct_3(arg_0.a.zy, 26873u, 24399u, Struct_1(arg_0.a, vec4<i32>(-1i, 2147483647i, -58391i, 0i))), vec4<u32>(10091u, arg_2.x, 71353u, global1.a.x), Struct_4(arg_0.b.ww))), var_4.x, _wgslsmith_mult_i32(_wgslsmith_div_i32(31854i, 24654i), i32(-1i) * -6972i)))).d;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> Struct_4 {
    let var_0 = Struct_2(global1.a, func_5(Struct_1(vec4<bool>(global1.b.a.x && arg_1.a.x, arg_1.a.x, global1.b.a.x, 681f > global1.c), ~global1.b.b), func_4(_wgslsmith_div_vec2_f32(vec2<f32>(global1.c, global1.c), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global4.c, global4.c), vec2<f32>(global1.c, global4.c)))), Struct_2(vec3<u32>(global1.a.x, 4294967295u, 1u), func_2(-1699f, arg_1.b.zyy).b, global4.c)), ~(~global1.a.zy) & ~(~global4.a.yz), firstTrailingBit(_wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(10465u, global1.a.x, 0u)), ~vec3<u32>(0u, global4.a.x, global1.a.x)))), _wgslsmith_f_op_f32(select(1184f, -1498f, any(func_5(Struct_1(arg_1.a, arg_0.b), func_4(vec2<f32>(592f, 1000f), Struct_2(global4.a, Struct_1(vec4<bool>(arg_0.a.x, global4.b.a.x, true, global4.b.a.x), global1.b.b), global4.c)), ~global4.a.xy, global1.a ^ global1.a).a.zy))));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.c)) * var_0.c), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + -349f))), _wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(-func_2(global1.c, global1.b.b.wzw).c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2066f), _wgslsmith_f_op_f32(abs(-1067f)))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f + 483f))))));
    let var_3 = countOneBits(select(-vec3<i32>(i32(-1i) * -2147483647i, abs(global0[_wgslsmith_index_u32(global1.a.x, 20u)]), 22126i), ~firstLeadingBit(vec3<i32>(var_0.b.b.x, -29170i, global0[_wgslsmith_index_u32(17250u, 20u)])), global1.a.x >= ~var_0.a.x));
    let var_4 = arg_0.a.x;
    return Struct_4(abs(var_3.yx));
}

fn func_7(arg_0: Struct_4, arg_1: vec3<f32>) -> Struct_4 {
    global1 = func_2(-176f, -max(max(~global4.b.b.xww, global4.b.b.xxx), -global4.b.b.yzz));
    global3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.c + _wgslsmith_f_op_f32(select(global4.c, arg_1.x, 0i == func_6(Struct_1(global1.b.a, global4.b.b), Struct_1(global1.b.a, vec4<i32>(-1i, global4.b.b.x, global1.b.b.x, global0[_wgslsmith_index_u32(global4.a.x, 20u)]))).a.x)))));
    global3 = _wgslsmith_f_op_f32(ceil(global4.c));
    global0 = array<i32, 20>();
    global1 = func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f * global4.c), global1.c, (_wgslsmith_dot_vec4_i32(global4.b.b, global1.b.b) == firstTrailingBit(3983i)) | select(true | global1.b.a.x, global1.c < -305f, all(global4.b.a.yy)))), global1.b.b.yxy);
    return func_6(func_5(global4.b, func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.yx + vec2<f32>(global4.c, 1000f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-150f, -1172f), vec2<f32>(483f, 1067f)))), func_2(_wgslsmith_f_op_f32(f32(-1f) * -397f), ~global4.b.b.yzy)), ~global4.a.zx, global1.a), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-189f + -315f) + -412f)), -(global4.b.b.zwz | -global4.b.b.yww)).b);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<u32>) -> Struct_4 {
    global2 = abs(~(_wgslsmith_add_i32(reverseBits(global0[_wgslsmith_index_u32(global1.a.x, 20u)]), -2147483647i) & _wgslsmith_sub_i32(_wgslsmith_div_i32(global4.b.b.x, -20394i), global1.b.b.x)));
    var var_0 = min(_wgslsmith_add_i32(-38877i, i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(global4.a.x, 20u)], -2147483647i), vec2<i32>(global4.b.b.x, 1i))), -2147483647i);
    let var_1 = func_7(func_6(func_5(global4.b, func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.c, -1055f) - vec2<f32>(global1.c, global4.c)), func_2(global1.c, vec3<i32>(-2147483647i, global4.b.b.x, 46052i))), arg_1.wz, _wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.x, global4.a.x, 1u), vec3<u32>(1235u, 4914u, global1.a.x)) ^ vec3<u32>(15880u, 65535u, global4.a.x)), func_5(func_2(global1.c, _wgslsmith_mod_vec3_i32(vec3<i32>(0i, u_input.b, 66484i), vec3<i32>(2147483647i, -36062i, global0[_wgslsmith_index_u32(arg_1.x, 20u)]))).b, func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.c, global1.c) - vec2<f32>(1075f, -476f)), Struct_2(arg_1.xzw, global1.b, -199f)), global4.a.yz, ~vec3<u32>(global1.a.x, global1.a.x, 0u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1.c - global4.c), _wgslsmith_f_op_f32(-global4.c), 1815f), vec3<f32>(_wgslsmith_f_op_f32(-global4.c), _wgslsmith_f_op_f32(f32(-1f) * -1769f), -472f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-501f, 1108f, global4.c))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global4.c, global4.c, global4.c)))))));
    global2 = u_input.a.x;
    var var_2 = global4.b.a;
    return func_7(Struct_4(select(vec2<i32>(0i, func_6(Struct_1(vec4<bool>(global4.b.a.x, global1.b.a.x, false, false), global1.b.b), global4.b).a.x), global1.b.b.yy, func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(160f, global4.c)), func_2(global1.c, vec3<i32>(global1.b.b.x, u_input.a.x, global4.b.b.x))).a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.c, global1.c, global1.c)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.c, global1.c, -1000f)))))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(206f, 1584f, global1.c), vec3<f32>(-114f, 1308f, global1.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c, global1.c, 1000f) * vec3<f32>(global4.c, global4.c, -1021f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(498f, global4.c, 474f), vec3<f32>(global1.c, global4.c, global1.c), vec3<bool>(false, false, false))))))));
}

fn func_8(arg_0: Struct_4, arg_1: Struct_4, arg_2: i32) -> Struct_2 {
    var var_0 = global1.c;
    var var_1 = !global1.b.a.x;
    let var_2 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c, global4.c)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1958f, -579f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-210f, 213f))))), Struct_2(vec3<u32>(~(~global4.a.x), ~func_4(vec2<f32>(976f, -599f), Struct_2(vec3<u32>(0u, global4.a.x, global1.a.x), Struct_1(global4.b.a, global1.b.b), 1387f)).b, 1u), global1.b, _wgslsmith_div_f32(global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global4.c)) - global4.c))));
    global1 = Struct_2(vec3<u32>(max(var_2.c, global4.a.x), var_2.b, func_2(-1096f, global1.b.b.zyx).a.x), Struct_1(vec4<bool>(true, any(vec4<bool>(global4.b.a.x, global1.b.a.x, var_2.a.x, true)), func_3(_wgslsmith_f_op_f32(sign(257f)), func_4(vec2<f32>(660f, global4.c), Struct_2(global4.a, var_2.d, -1137f)), ~vec4<u32>(global1.a.x, global4.a.x, 0u, var_2.c), func_6(var_2.d, global4.b)), func_2(global1.c, vec3<i32>(var_2.d.b.x, 17532i, -1i)).a.x < 97692u), vec4<i32>(0i, 1i, select(var_2.d.b.x, i32(-1i) * -1i, func_5(Struct_1(global4.b.a, global4.b.b), Struct_3(global4.b.a.yw, 12501u, var_2.b, global4.b), vec2<u32>(1u, global4.a.x), global1.a).a.x), global1.b.b.x)), -1000f);
    global4 = Struct_2(vec3<u32>(global1.a.x, var_2.c, 79034u) >> (~vec3<u32>(51886u, countOneBits(global4.a.x), ~global1.a.x) % vec3<u32>(32u)), Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(var_2.d.b.x & arg_0.a.x, reverseBits(-28349i), 0i, -global4.b.b.x) >> ((_wgslsmith_add_vec4_u32(vec4<u32>(global4.a.x, 52935u, 0u, global4.a.x), vec4<u32>(var_2.b, global1.a.x, var_2.b, global1.a.x)) | abs(vec4<u32>(0u, global4.a.x, global4.a.x, global4.a.x))) % vec4<u32>(32u))), global1.c);
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.c))))), vec3<i32>(i32(-1i) * -func_5(Struct_1(vec4<bool>(global4.b.a.x, true, global4.b.a.x, global1.b.a.x), vec4<i32>(-4582i, global1.b.b.x, global1.b.b.x, -2147483647i)), var_2, global1.a.xx, global4.a).b.x, arg_2, 0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(max(_wgslsmith_div_u32(global4.a.x, global1.a.x), ~_wgslsmith_clamp_u32(global4.a.x, ~29549u, global1.a.x)), ~(~22799u));
    global4 = func_8(func_1(global4.b.a.wyz, _wgslsmith_mod_vec4_u32(~(~vec4<u32>(18412u, 18110u, global4.a.x, 0u)), ~vec4<u32>(global1.a.x, 0u, global4.a.x, 93086u) << (vec4<u32>(global4.a.x, 1u, global1.a.x, 46506u) % vec4<u32>(32u)))), Struct_4(global4.b.b.zx), _wgslsmith_sub_i32(global4.b.b.x, _wgslsmith_dot_vec2_i32(global4.b.b.zx >> (~vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)), func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.c, global1.c) * vec2<f32>(global4.c, 1195f)), func_2(-1184f, global4.b.b.zzx)).d.b.wz)));
    let var_1 = ~4294967295u;
    var_0 = 1u;
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-global1.c)) + _wgslsmith_f_op_f32(f32(-1f) * -974f)), func_8(func_1(global4.b.a.xzy, ~vec4<u32>(global4.a.x, 0u, global1.a.x, var_1)), Struct_4(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, global0[_wgslsmith_index_u32(1u, 20u)]), u_input.a)), 1i).c, -602f)));
    let var_3 = vec3<bool>(!func_8(Struct_4(vec2<i32>(1i, 1i)), func_1(!global1.b.a.zxy, vec4<u32>(1277u, global4.a.x, 1u, global4.a.x)), -1i).b.a.x, global1.b.a.x, true);
    let var_4 = func_8(func_6(global4.b, Struct_1(!func_5(global1.b, Struct_3(global4.b.a.yx, global1.a.x, global1.a.x, global1.b), global4.a.xy, vec3<u32>(35787u, 16623u, 42724u)).a, countOneBits(-global1.b.b))), func_7(func_6(func_5(func_4(vec2<f32>(var_2.x, 723f), Struct_2(global4.a, global1.b, global1.c)).d, func_4(vec2<f32>(global1.c, global1.c), Struct_2(global1.a, global4.b, global1.c)), select(global1.a.zy, vec2<u32>(var_1, var_1), vec2<bool>(false, global4.b.a.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1, 0u, 18444u), vec3<u32>(var_1, var_1, 3289u))), global1.b), _wgslsmith_f_op_vec3_f32(trunc(var_2))), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(global1.b.b.zzz, global1.b.b.yyx), -vec3<i32>(global0[_wgslsmith_index_u32(global4.a.x, 20u)], 2147483647i, u_input.b)), _wgslsmith_mod_vec3_i32(select(vec3<i32>(1i, global0[_wgslsmith_index_u32(4294967295u, 20u)], global4.b.b.x), global4.b.b.zwx, true), _wgslsmith_sub_vec3_i32(global1.b.b.wyw, vec3<i32>(-26613i, 10987i, global0[_wgslsmith_index_u32(global1.a.x, 20u)])))) & ~(-44553i)).b.a.wxz;
    let var_5 = ~global1.a.x;
    var var_6 = -(~(~u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(_wgslsmith_mult_u32(max(global1.a.x, ~73559u), 30426u), 1u));
}

