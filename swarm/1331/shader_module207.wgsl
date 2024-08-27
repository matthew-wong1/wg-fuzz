struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 28>;

var<private> global1: array<u32, 10> = array<u32, 10>(70574u, 1u, 21992u, 4294967295u, 0u, 49704u, 104260u, 1u, 1u, 1u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32) -> vec2<i32> {
    global0 = array<Struct_3, 28>();
    let var_0 = _wgslsmith_clamp_u32(~firstTrailingBit(~0u), ~1u ^ u_input.a, global1[_wgslsmith_index_u32(abs(4294967295u), 10u)]);
    let var_1 = Struct_2(Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), ~1i, -479f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-916f, -600f)), arg_1, true)))), min(~abs(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0, 10u)], 10u)], 10u)], 0u, 44792u, 29628u) >> (vec4<u32>(47641u, u_input.a, 1u, u_input.a) % vec4<u32>(32u))), min(select(firstLeadingBit(vec4<u32>(50257u, 45754u, 47385u, var_0)), vec4<u32>(u_input.a, 10827u, var_0, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 10u)]), global1[_wgslsmith_index_u32(12766u, 10u)] <= 32646u), ~(~vec4<u32>(global1[_wgslsmith_index_u32(15687u, 10u)], 60467u, var_0, u_input.a)))), Struct_1(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), true), -2147483647i, arg_0.x, 1273f), Struct_1(select(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(false, true))), true), 28909i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -902f), arg_1)), -339f), vec3<i32>(~(~(~0i)), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-22669i, -42590i, -18276i), vec3<i32>(-2147483647i, -7675i, 3842i)), vec3<i32>(-39450i, -1i, 2147483647i)), 2147483647i), firstTrailingBit(_wgslsmith_div_i32(~2147483647i, ~15684i))));
    let var_2 = global0[_wgslsmith_index_u32(var_0, 28u)];
    global1 = array<u32, 10>();
    return _wgslsmith_clamp_vec2_i32(var_1.e.xx, vec2<i32>(var_1.c.b, 3580i), ~var_1.e.yx);
}

fn func_2(arg_0: f32) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-114f, -1723f, -1181f))) + vec3<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(-arg_0))))));
    var var_1 = func_3(var_0.xz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * var_0.x))));
    var var_2 = arg_0;
    global0 = array<Struct_3, 28>();
    var var_3 = Struct_1(vec3<bool>(true, true, false), var_1.x, arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    return var_3.a.x;
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = reverseBits(_wgslsmith_mod_vec4_i32(~(vec4<i32>(19083i, arg_1.x, 39005i, arg_1.x) >> (~vec4<u32>(global1[_wgslsmith_index_u32(5226u, 10u)], 1u, 1u, arg_3.x) % vec4<u32>(32u))), -vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x, arg_1.x, 1i, arg_2.x), vec4<i32>(arg_1.x, arg_2.x, 35260i, 30227i)), -8852i, ~2147483647i, ~12514i)));
    var var_1 = Struct_1(vec3<bool>(any(vec2<bool>(arg_0, !arg_0)), !func_2(_wgslsmith_f_op_f32(-407f + 1423f)), true), countOneBits(-1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-541f, -687f) * _wgslsmith_f_op_f32(-2792f + -1563f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -452f)))), 641f);
    let var_2 = Struct_2(Struct_1(!var_1.a, -52454i, _wgslsmith_f_op_f32(abs(var_1.c)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_1.c, var_1.d, -1i != var_0.x))))), min(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_3.x, 8870u, arg_3.x, 23193u), vec4<u32>(1u, u_input.a, 55892u, arg_3.x)), vec4<u32>(arg_3.x ^ global1[_wgslsmith_index_u32(0u, 10u)], _wgslsmith_div_u32(arg_3.x, global1[_wgslsmith_index_u32(arg_3.x, 10u)]), u_input.a << (global1[_wgslsmith_index_u32(30706u, 10u)] % 32u), select(36214u, 1u, var_1.a.x))) & vec4<u32>(_wgslsmith_mod_u32(~u_input.a, 0u), ~29448u, arg_3.x, 37512u), Struct_1(vec3<bool>(!var_1.a.x | arg_0, false, arg_0), -39983i, -144f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1532f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_1.c, var_1.d)), _wgslsmith_f_op_f32(max(var_1.d, var_1.d)))))), Struct_1(!select(vec3<bool>(false, var_1.a.x, var_1.a.x), var_1.a, arg_0 == var_1.a.x), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(var_0.yzy | vec3<i32>(var_1.b, -45688i, 0i), _wgslsmith_add_vec3_i32(var_0.xyz, arg_1)), vec3<i32>(arg_2.x, var_1.b, _wgslsmith_dot_vec3_i32(arg_2, arg_1))), -807f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.c - 1167f), _wgslsmith_f_op_f32(-var_1.d))), _wgslsmith_f_op_f32(ceil(var_1.c)))), abs(~(-arg_2) & ~vec3<i32>(arg_1.x, 2147483647i, var_1.b)));
    var var_3 = Struct_2(var_2.d, min(vec4<u32>(global1[_wgslsmith_index_u32(~(arg_3.x ^ 3872u), 10u)], _wgslsmith_clamp_u32(arg_3.x, 1u, 95604u) >> (_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(9681u, 10u)], arg_3.x, 20301u) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(var_2.b.x, 10u)], global1[_wgslsmith_index_u32(0u, 10u)], 4294967295u), arg_3) >> (~32712u % 32u), max(_wgslsmith_clamp_u32(55328u, arg_3.x, var_2.b.x), min(0u, arg_3.x))), vec4<u32>(1u, abs(10965u) ^ ~u_input.a, firstTrailingBit(64023u), _wgslsmith_sub_u32(firstLeadingBit(global1[_wgslsmith_index_u32(0u, 10u)]), _wgslsmith_mult_u32(4294967295u, arg_3.x)))), Struct_1(var_2.d.a, _wgslsmith_sub_i32(~arg_2.x & _wgslsmith_dot_vec3_i32(var_2.e, vec3<i32>(-20171i, -2147483647i, var_0.x)), ~max(-43120i, var_2.e.x)), _wgslsmith_f_op_f32(var_1.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d.d - var_1.c))), -401f), Struct_1(select(!(!vec3<bool>(arg_0, true, var_2.d.a.x)), var_2.c.a, vec3<bool>(all(var_1.a.yy), var_1.a.x, false)), reverseBits(firstLeadingBit(_wgslsmith_dot_vec3_i32(arg_2, var_2.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.c))), -104f), var_0.zxy);
    var var_4 = ~_wgslsmith_mod_i32(-10143i, var_0.x);
    return Struct_1(!select(vec3<bool>(false, var_1.a.x, var_1.a.x), var_3.a.a, true), arg_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.c) - var_1.d)), 422f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1000f)), var_3.a.d)));
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_2) -> Struct_1 {
    global0 = array<Struct_3, 28>();
    let var_0 = vec4<u32>(u_input.a, ~(_wgslsmith_dot_vec4_u32(arg_2.b, arg_2.b) << (_wgslsmith_mod_u32(1u, 21540u) % 32u)), 25315u, _wgslsmith_div_u32(~_wgslsmith_div_u32(1u, global1[_wgslsmith_index_u32(0u, 10u)] & global1[_wgslsmith_index_u32(1u, 10u)]), arg_0.x));
    let var_1 = 37829u;
    return arg_2.d;
}

fn func_5(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: u32, arg_3: Struct_1) -> Struct_2 {
    global1 = array<u32, 10>();
    var var_0 = Struct_3(_wgslsmith_add_u32(arg_1.x, 0u), _wgslsmith_clamp_u32(~2063u, 1u ^ ~(~arg_2), ~(~(~arg_1.x))), ~reverseBits(arg_1) << (min(vec3<u32>(1u, arg_1.x, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, arg_1.x), 10u)]), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 84805u), arg_1.yy), _wgslsmith_dot_vec2_u32(vec2<u32>(3069u, arg_1.x), arg_1.xy), arg_2)) % vec3<u32>(32u)));
    var var_1 = arg_3.a;
    var var_2 = global0[_wgslsmith_index_u32(var_0.b, 28u)];
    var var_3 = arg_3.d;
    return Struct_2(Struct_1(!(!(!vec3<bool>(var_1.x, arg_3.a.x, arg_3.a.x))), -1i, _wgslsmith_f_op_f32(select(arg_3.d, _wgslsmith_f_op_f32(f32(-1f) * -115f), arg_3.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(172f, arg_3.d)))))), vec4<u32>(countOneBits(~(~global1[_wgslsmith_index_u32(0u, 10u)])), arg_1.x, 1u, firstTrailingBit(~(~4294967295u))), Struct_1(func_4(reverseBits(reverseBits(vec2<u32>(u_input.a, 52217u))), -158f, Struct_2(func_1(var_1.x, vec3<i32>(arg_3.b, arg_3.b, 8864i), vec3<i32>(arg_3.b, 52476i, 1i), var_0.c), firstTrailingBit(vec4<u32>(arg_1.x, arg_2, var_2.b, var_0.b)), func_1(arg_3.a.x, vec3<i32>(arg_3.b, 2147483647i, arg_3.b), vec3<i32>(arg_3.b, arg_3.b, arg_3.b), var_2.c), Struct_1(vec3<bool>(false, arg_3.a.x, arg_3.a.x), 2147483647i, 384f, arg_3.d), -vec3<i32>(2147483647i, -1i, 2147483647i))).a, _wgslsmith_mod_i32(~(-2147483647i >> (arg_2 % 32u)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_3.b, 2147483647i), vec3<i32>(-1i, arg_3.b, arg_3.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(arg_3.a.x, vec3<i32>(arg_3.b, arg_3.b, 8118i), vec3<i32>(2147483647i, arg_3.b, arg_3.b), arg_1).c + -869f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(627f * -618f), _wgslsmith_f_op_f32(f32(-1f) * -389f))), arg_0.x), Struct_1(arg_3.a, -26753i, _wgslsmith_f_op_f32(func_4(_wgslsmith_clamp_vec2_u32(vec2<u32>(42199u, global1[_wgslsmith_index_u32(u_input.a, 10u)]), var_2.c.zy, vec2<u32>(0u, 4294967295u)), arg_0.x, Struct_2(Struct_1(arg_3.a, -13615i, -1063f, -241f), vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(1u, 10u)], arg_2, u_input.a), arg_3, Struct_1(vec3<bool>(false, false, var_1.x), arg_3.b, 1306f, 275f), vec3<i32>(arg_3.b, arg_3.b, 2147483647i))).d - _wgslsmith_f_op_f32(f32(-1f) * -674f)), 542f), ~_wgslsmith_sub_vec3_i32(~(~vec3<i32>(arg_3.b, arg_3.b, -1i)), ~reverseBits(vec3<i32>(13261i, -2317i, arg_3.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 28>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-166f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1252f - 194f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(324f * 633f))))));
    var var_1 = Struct_3(_wgslsmith_mod_u32(5772u, 10542u), 0u, ~firstLeadingBit(~vec3<u32>(0u, u_input.a, 1u)));
    var var_2 = -1i;
    let var_3 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-310f, 422f, 117f, var_0.x) * _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, -1538f, -1000f), vec4<f32>(-1000f, var_0.x, -1000f, var_0.x))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, var_0.x, 412f, var_0.x)))) - vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.x, 672f), _wgslsmith_f_op_f32(select(var_0.x, var_0.x, false)))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-var_0.x))), var_1.c, firstTrailingBit(~u_input.a), func_4(_wgslsmith_add_vec2_u32(var_1.c.zz, ~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 22155u), var_1.c.xz)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -610f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), ~0u >= ~u_input.a)), Struct_2(func_1(false, ~vec3<i32>(18959i, 2495i, 2147483647i), ~vec3<i32>(2147483647i, 2147483647i, -1i), ~var_1.c), _wgslsmith_add_vec4_u32(~vec4<u32>(86088u, 43590u, 67614u, 4380u), vec4<u32>(global1[_wgslsmith_index_u32(33449u, 10u)], u_input.a, u_input.a, 30319u)), Struct_1(vec3<bool>(true, true, true), 1i, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(trunc(var_0.x))), func_1(true, _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -45947i, 2147483647i), vec3<i32>(1i, 25299i, 35108i)), countOneBits(vec3<i32>(-5057i, -2147483647i, 0i)), vec3<u32>(var_1.a, 0u, global1[_wgslsmith_index_u32(u_input.a, 10u)])), _wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(0i, 1171i, 1i)), vec3<i32>(-36302i, 21652i, 18474i)))));
    var_2 = -_wgslsmith_add_i32(var_3.e.x, var_3.d.b ^ var_3.a.b) | var_3.e.x;
    var var_4 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(~select(~var_3.e.zx ^ vec2<i32>(var_3.e.x, 1i), select(_wgslsmith_mod_vec2_i32(vec2<i32>(var_3.d.b, -2147483647i), vec2<i32>(var_3.e.x, var_3.e.x)), -vec2<i32>(var_3.e.x, var_3.e.x), var_3.c.a.x), true & all(var_3.d.a)));
}

