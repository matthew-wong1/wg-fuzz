struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: i32,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 22>;

var<private> global1: array<vec2<f32>, 25>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    let var_0 = all(select(!arg_0.xwz, !vec3<bool>(true, arg_0.x, !arg_0.x), !arg_0.xyw));
    let var_1 = Struct_1(abs(abs(abs(~vec4<i32>(47130i, 1i, -1i, -1i)))), select(vec4<bool>(!all(vec3<bool>(var_0, false, var_0)), all(arg_0), false, true), vec4<bool>(arg_0.x, false, true, all(!vec4<bool>(arg_0.x, true, false, arg_0.x))), var_0), -1i, vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i)), countOneBits(_wgslsmith_dot_vec4_i32(min(vec4<i32>(0i, 20538i, 1i, -5607i), vec4<i32>(2147483647i, 2147483647i, 22042i, 657i)), vec4<i32>(1i, 1i, 1i, 1i))), reverseBits(-firstLeadingBit(1i))), arg_0.yyx);
    global0 = array<vec4<bool>, 22>();
    let var_2 = ~_wgslsmith_add_vec4_i32(var_1.a, firstLeadingBit(var_1.a));
    global0 = array<vec4<bool>, 22>();
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-202f)))))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = ~vec4<u32>(~u_input.a.x, abs(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), firstTrailingBit(u_input.a.x))), u_input.a.x ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 6480u, 4294967295u, 0u), vec4<u32>(u_input.a.x, u_input.a.x, 10680u, u_input.a.x)), 68629u);
    var var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(317f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-1145f - arg_1))));
    let var_3 = ~(_wgslsmith_div_vec4_u32(select(var_0, var_0, vec4<bool>(var_1.b.x, true, var_1.e.x, arg_2.b.x)) & ~vec4<u32>(12403u, 0u, 1u, 53243u), ~var_0) & firstTrailingBit(select(vec4<u32>(var_0.x, 4294967295u, u_input.a.x, u_input.a.x) << (var_0 % vec4<u32>(32u)), select(var_0, var_0, var_1.e.x), arg_0.b)));
    var_1 = arg_0;
    return vec4<bool>(!(!(!(false & arg_3.e.x))), !all(vec4<bool>(arg_0.b.x, !arg_2.b.x, var_1.b.x, false & arg_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + -1337f))) > _wgslsmith_f_op_f32(func_3(select(select(arg_0.b, global0[_wgslsmith_index_u32(u_input.a.x, 22u)], vec4<bool>(false, arg_3.b.x, true, var_1.e.x)), vec4<bool>(false, arg_2.e.x, arg_0.e.x, true), arg_2.b))), false);
}

fn func_2() -> i32 {
    var var_0 = Struct_1(vec4<i32>(select(1i, -_wgslsmith_add_i32(29613i, 7774i), any(vec4<bool>(true, true, false, false)) & true), -1i, 2147483647i, 1i), func_4(Struct_1(firstTrailingBit(~vec4<i32>(-674i, -16213i, -2147483647i, -3589i)), global0[_wgslsmith_index_u32(u_input.a.x, 22u)], _wgslsmith_mod_i32(2147483647i, ~32889i), vec3<i32>(max(2147483647i, -83813i), 2147483647i, abs(0i)), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(vec4<bool>(true, false, true, true))))), Struct_1(-vec4<i32>(0i, -60392i, 2147483647i, 57095i) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 19372u, 1u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 16117u)) % vec4<u32>(32u)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(0u), 52653u & u_input.a.x), 22u)], 1i, select(~vec3<i32>(-1i, 2147483647i, 2147483647i), vec3<i32>(1i, 1i, 1i), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), Struct_1(vec4<i32>(~19432i, 1i, -1i, 11671i), !(!global0[_wgslsmith_index_u32(u_input.a.x, 22u)]), max(-1i, _wgslsmith_div_i32(24472i, -37397i)), -vec3<i32>(1i, 1i, 1i), vec3<bool>(true, true, true))), -_wgslsmith_sub_i32(1i, ~(~23766i)), max(vec3<i32>(-_wgslsmith_div_i32(-2147483647i, -12288i), abs(-2147483647i), 1i), -vec3<i32>(1i, 1i, 1i)), func_4(Struct_1(-vec4<i32>(1i, 1i, 1i, 1i), select(select(global0[_wgslsmith_index_u32(79832u, 22u)], vec4<bool>(true, true, false, false), true), select(global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(u_input.a.x, 22u)], true), all(vec2<bool>(true, true))), -_wgslsmith_dot_vec2_i32(vec2<i32>(69279i, -8970i), vec2<i32>(18874i, 15492i)), vec3<i32>(1i, 1i, 1i) >> (~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), all(global0[_wgslsmith_index_u32(0u, 22u)]))), _wgslsmith_f_op_f32(func_3(vec4<bool>(true, false, any(vec2<bool>(false, false)), any(global0[_wgslsmith_index_u32(u_input.a.x, 22u)])))), Struct_1(min(~vec4<i32>(-1i, 2147483647i, 1i, 27264i), vec4<i32>(0i, 50164i, 0i, -1i)), global0[_wgslsmith_index_u32(~(16325u << (u_input.a.x % 32u)), 22u)], 1i, select(vec3<i32>(0i, 2147483647i, 2147483647i), abs(vec3<i32>(2147483647i, 0i, -39748i)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), Struct_1(vec4<i32>(631i << (u_input.a.x % 32u), -2462i, ~1i, -3740i), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), global0[_wgslsmith_index_u32(459u, 22u)]), global0[_wgslsmith_index_u32(u_input.a.x, 22u)], vec4<bool>(true, false, true, false)), _wgslsmith_clamp_i32(select(-43445i, -1i, true), _wgslsmith_div_i32(-35313i, -60645i), 1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), firstTrailingBit(vec3<i32>(39872i, -1i, 21009i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-35557i, 17657i, -21507i), vec3<i32>(0i, -29366i, -42791i), vec3<i32>(13139i, 15784i, 2147483647i))), vec3<bool>(true, true, true))).wwy);
    var var_1 = u_input.a.x;
    let var_2 = vec2<i32>(_wgslsmith_sub_i32(-29703i, var_0.c), (_wgslsmith_mod_i32(1i, var_0.a.x ^ var_0.d.x) & 41797i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(81097u, ~60317u, select(u_input.a.x, 87508u, false)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 33622u, u_input.a.x), vec4<u32>(16486u, u_input.a.x, u_input.a.x, 101567u)), abs(11510u), 4294967295u)) % 32u));
    return firstLeadingBit(i32(-1i) * -firstLeadingBit(var_0.a.x));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    global1 = array<vec2<f32>, 25>();
    var var_0 = Struct_1(vec4<i32>(3591i, 2147483647i, -2182i, func_2()), !global0[_wgslsmith_index_u32(abs(~u_input.a.x), 22u)], _wgslsmith_dot_vec3_i32(arg_1.d, vec3<i32>(select(select(arg_1.d.x, arg_1.d.x, arg_1.b.x), -2147483647i, arg_2.x != arg_2.x), arg_1.c, 78538i)), -firstTrailingBit(_wgslsmith_clamp_vec3_i32(max(vec3<i32>(arg_0, -30054i, 0i), vec3<i32>(14693i, arg_0, arg_1.d.x)), arg_1.a.zyz, arg_1.d)), vec3<bool>(any(vec3<bool>(arg_2.x, arg_2.x, true)), arg_2.x, any(!select(arg_1.e, arg_1.b.wyw, arg_1.b.xyw))));
    let var_1 = Struct_1(vec4<i32>(arg_1.d.x << (_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)) % 32u), ~(~(arg_0 << (4294967295u % 32u))), -countOneBits(var_0.d.x), ~0i), func_4(Struct_1(~vec4<i32>(1i, arg_0, arg_0, var_0.d.x), !func_4(Struct_1(var_0.a, vec4<bool>(true, arg_2.x, var_0.b.x, true), 1i, vec3<i32>(52383i, arg_0, arg_0), vec3<bool>(var_0.b.x, var_0.e.x, var_0.b.x)), 237f, arg_1, Struct_1(var_0.a, var_0.b, var_0.c, var_0.a.xxw, arg_1.e)), -28478i, arg_1.d, select(select(vec3<bool>(false, arg_2.x, false), vec3<bool>(arg_2.x, var_0.e.x, false), arg_1.e), !vec3<bool>(arg_1.e.x, true, false), vec3<bool>(true, true, false))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1028f), -2314f))), Struct_1(max(~var_0.a, var_0.a), select(arg_1.b, vec4<bool>(var_0.b.x, var_0.b.x, true, false), false), var_0.c, -vec3<i32>(var_0.a.x, 2147483647i, 59366i), !(!vec3<bool>(arg_1.b.x, var_0.b.x, arg_1.b.x))), Struct_1(vec4<i32>(0i | arg_1.a.x, max(var_0.a.x, -2147483647i), ~43166i, 2147483647i), !(!arg_1.b), _wgslsmith_div_i32(-51191i, _wgslsmith_sub_i32(-2147483647i, var_0.a.x)), -(arg_1.a.zwy ^ vec3<i32>(arg_0, -45514i, arg_0)), !vec3<bool>(false, true, arg_1.e.x))), arg_0, var_0.a.xwz, select(!(!arg_1.b.zzy), var_0.e, vec3<bool>(all(vec2<bool>(false, arg_2.x)), false, true)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(954f, -1177f, -263f) * vec3<f32>(1657f, -794f, 1462f)))) - _wgslsmith_div_vec3_f32(vec3<f32>(-835f, 1812f, -488f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1374f, -958f, -1456f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1027f, -130f, 1414f))), vec3<f32>(-291f, -1042f, 747f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1610f, -1275f, 428f) + vec3<f32>(-817f, 622f, -1317f)), vec3<f32>(-824f, -617f, -1172f), false)))), false)));
    let var_3 = -max(_wgslsmith_mult_vec4_i32(arg_1.a, min(vec4<i32>(var_0.d.x, arg_0, -6107i, arg_1.d.x) & arg_1.a, -arg_1.a)), ~vec4<i32>(~var_1.d.x, _wgslsmith_add_i32(arg_1.a.x, -1i), arg_0 >> (0u % 32u), min(var_0.c, 22849i)));
    return Struct_1(vec4<i32>(arg_0, arg_0, -(~(~var_1.c)), ~min(_wgslsmith_clamp_i32(-1i, -2147483647i, var_3.x), countOneBits(0i))), !global0[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), u_input.a)), _wgslsmith_clamp_u32(0u, u_input.a.x, 24331u) ^ 72186u), 22u)], arg_1.a.x & (arg_0 ^ _wgslsmith_clamp_i32(-var_1.d.x, -2147483647i >> (1u % 32u), _wgslsmith_mult_i32(1i, var_1.d.x))), ~var_1.d, vec3<bool>(false, (1u <= u_input.a.x) || (false | all(arg_1.e)), arg_2.x));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = func_1(~_wgslsmith_mult_i32(_wgslsmith_div_i32(1i, ~(-2147483647i)), func_2()), func_1(_wgslsmith_sub_i32(arg_1.c >> (u_input.a.x % 32u), 0i), arg_1, select(vec2<bool>(true, true), select(vec2<bool>(true, true), arg_2.ww, arg_2.x), !arg_2.wz)), func_4(func_1(-17187i, arg_1, arg_1.b.zx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), func_1(~(~arg_1.c), func_1(-arg_1.a.x, arg_1, select(arg_2.yx, arg_2.yw, arg_1.b.zx)), arg_1.e.xz), arg_1).zx);
    let var_1 = arg_1;
    global0 = array<vec4<bool>, 22>();
    global0 = array<vec4<bool>, 22>();
    let var_2 = var_1.b;
    return Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(i32(-1i) * -1i, countOneBits(8947i), var_0.a.x, -2147483647i), var_0.a), func_1(func_1(-1i, Struct_1(vec4<i32>(var_1.c, var_1.c, 5171i, -51628i), !var_1.b, countOneBits(-78492i), firstTrailingBit(vec3<i32>(-4707i, 1i, -15158i)), select(vec3<bool>(false, false, false), arg_1.b.xyy, false)), !vec2<bool>(false, arg_1.b.x)).d.x, Struct_1(reverseBits(vec4<i32>(var_0.d.x, var_0.c, arg_1.c, -26522i)) << (abs(vec4<u32>(u_input.a.x, 22504u, 55387u, 17581u)) % vec4<u32>(32u)), vec4<bool>(true && var_1.e.x, true, arg_0.x >= -940f, true), arg_1.c, arg_1.d ^ vec3<i32>(var_0.d.x, -1i, 0i), select(vec3<bool>(arg_1.b.x, var_0.b.x, var_0.b.x), !vec3<bool>(false, var_0.e.x, false), !arg_2.wyx)), vec2<bool>(var_2.x, true)).b, arg_1.a.x, _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(var_1.a.zwy, _wgslsmith_mult_vec3_i32(var_1.a.zzx, vec3<i32>(var_1.d.x, var_1.c, var_0.a.x)) | select(vec3<i32>(var_1.a.x, 11075i, -24545i), arg_1.a.zxz, var_0.e.x), vec3<i32>(~var_1.d.x, arg_1.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.c, 0i), var_1.d.zy))), max(_wgslsmith_clamp_vec3_i32(var_0.a.xxw >> (vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x) % vec3<u32>(32u)), func_1(var_1.d.x, var_1, vec2<bool>(true, true)).d, abs(vec3<i32>(var_0.c, var_1.c, 47016i))), var_1.a.yxy)), vec3<bool>(all(vec3<bool>(true, false, any(arg_2.zwz))), !(!(var_0.d.x > arg_1.d.x)), !var_1.b.x));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> vec3<i32> {
    global0 = array<vec4<bool>, 22>();
    var var_0 = abs(vec2<i32>(0i & (arg_0.c ^ (arg_0.d.x & 28532i)), arg_0.c));
    let var_1 = func_1(arg_0.a.x, func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1184f, 728f, -872f, -803f), vec4<f32>(1355f, -802f, -2014f, 107f), false)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1002f, -225f, 990f, 1000f)))), func_1(-1i, func_5(vec4<f32>(1f, 1f, 1f, 1f), Struct_1(vec4<i32>(1i, -1i, var_0.x, var_0.x), vec4<bool>(arg_0.e.x, arg_0.b.x, arg_1.e.x, arg_0.e.x), -2147483647i, arg_1.a.zyw, vec3<bool>(false, true, true)), select(arg_1.b, vec4<bool>(false, true, false, arg_0.b.x), arg_1.e.x)), !arg_0.b.yz), vec4<bool>(-2147483647i <= ~var_0.x, true, !(u_input.a.x != u_input.a.x), false)), vec2<bool>(arg_1.b.x, arg_1.b.x)).a;
    let var_2 = _wgslsmith_div_i32(1i, _wgslsmith_sub_i32(arg_0.a.x, _wgslsmith_dot_vec2_i32(reverseBits(arg_0.d.zx), select(arg_0.d.yz, arg_0.d.xz, arg_1.e.x))) ^ -48947i);
    global1 = array<vec2<f32>, 25>();
    return ~(abs(vec3<i32>(-2147483647i, var_0.x, 28762i) & arg_0.d) << (~vec3<u32>(~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 4294967295u), vec4<u32>(0u, u_input.a.x, 5864u, 4294967295u)), 4294967295u) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 25>();
    global0 = array<vec4<bool>, 22>();
    var var_0 = -1585f;
    let var_1 = _wgslsmith_clamp_vec3_i32(max(-(~vec3<i32>(1i, 1i, 1i)), vec3<i32>(~(25747i >> (u_input.a.x % 32u)), -1i, -1i)), vec3<i32>(-1i) * -(~(-vec3<i32>(-2147483647i, 2147483647i, 29729i))), func_6(Struct_1(vec4<i32>(1i, 1i, 1i, 1i), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), !global0[_wgslsmith_index_u32(u_input.a.x, 22u)]), -1i, vec3<i32>(1i, 1i, 1i), vec3<bool>(true, true, true)), func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(393f, -758f, 1000f, 1000f)), func_1(66067i, Struct_1(vec4<i32>(-2918i, 24653i, -1i, 41759i), global0[_wgslsmith_index_u32(u_input.a.x, 22u)], 7196i, vec3<i32>(-15951i, -2147483647i, 9923i), vec3<bool>(true, false, true)), vec2<bool>(true, true)), vec4<bool>(false, true, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~firstTrailingBit(4294967295u) >> (u_input.a.x % 32u)), -2358f, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1920f, -770f, 260f, 1295f) + vec4<f32>(-1000f, 693f, 554f, -401f))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-401f, 870f, 356f, 2270f))))), true)));
}

