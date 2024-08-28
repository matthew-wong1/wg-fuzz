struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: vec4<u32>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<f32>,
    d: vec2<i32>,
    e: f32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(66804u, 4294967295u, 1u, 4294967295u);

var<private> global1: Struct_4;

var<private> global2: array<i32, 6>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>) -> vec3<bool> {
    let var_0 = 52473u;
    global0 = vec4<u32>(_wgslsmith_div_u32(abs(93495u), _wgslsmith_clamp_u32(abs(min(77665u, 4294967295u)), abs(~var_0), arg_0.a.c.x)), _wgslsmith_mult_u32(~var_0, var_0), _wgslsmith_add_u32(~arg_0.a.c.x, ~global0.x), select(arg_0.a.c.x, abs(0u), all(vec2<bool>(true, true))));
    let var_1 = arg_1.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(-arg_0.a.b.yw);
    let var_3 = Struct_4(global1.a, arg_0.b, _wgslsmith_f_op_vec2_f32(sign(arg_1.wy)), _wgslsmith_sub_vec2_i32(u_input.b, global1.a.d.xy & select(firstTrailingBit(vec2<i32>(-2147483647i, u_input.a)), u_input.b | vec2<i32>(13516i, 40933i), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -145f) - _wgslsmith_f_op_f32(-arg_0.c.x)));
    return select(select(vec3<bool>(countOneBits(1u) == arg_0.a.c.x, !(u_input.b.x >= global1.b.a), true), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -1000f) <= arg_0.e), vec3<bool>(true, true, true), false);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> Struct_2 {
    global1 = Struct_4(global1.a, Struct_1(global2[_wgslsmith_index_u32(0u, 6u)] | firstLeadingBit(-5377i ^ global2[_wgslsmith_index_u32(1u, 6u)])), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))), -1805f)), _wgslsmith_f_op_f32(trunc(arg_0))), reverseBits(u_input.b >> (~global1.a.c % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.e)))))));
    global0 = ~(~(~(~vec4<u32>(27359u, 51365u, 10642u, 0u))));
    let var_0 = global1.a;
    var var_1 = vec3<bool>(true, any(vec3<bool>(true, true, true)), false);
    var_1 = select(vec3<bool>(!any(vec3<bool>(false, false, false)) | var_1.x, all(select(vec4<bool>(false, true, var_1.x, var_1.x), !vec4<bool>(false, var_1.x, var_1.x, true), var_1.x && true)), any(select(vec4<bool>(false, false, false, var_1.x), !vec4<bool>(var_1.x, var_1.x, var_1.x, false), global0.x >= 0u))), !(!vec3<bool>(var_1.x, !var_1.x, true)), select(select(select(!vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, true, var_1.x), false), func_3(Struct_4(Struct_2(Struct_1(53517i), vec4<f32>(global1.e, 400f, -573f, 203f), var_0.c, global1.a.d), var_0.a, vec2<f32>(arg_0, global1.e), vec2<i32>(u_input.a, u_input.b.x), -497f), global1.a.b), any(!var_1.yz)), !func_3(Struct_4(global1.a, global1.a.a, vec2<f32>(arg_0, var_0.b.x), u_input.b, -827f), _wgslsmith_f_op_vec4_f32(-global1.a.b)), vec3<bool>(false, true, _wgslsmith_f_op_f32(sign(global1.c.x)) > var_0.b.x)));
    return Struct_2(Struct_1(2648i), _wgslsmith_f_op_vec4_f32(-global1.a.b), firstTrailingBit(global1.a.c), ~vec3<i32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global0.zzx, vec3<u32>(arg_3, global0.x, var_0.c.x)) & ~global1.a.c.x, 6u)], _wgslsmith_mult_i32(select(u_input.b.x, global2[_wgslsmith_index_u32(32097u, 6u)], true), _wgslsmith_add_i32(arg_1.a, 34555i)), global1.a.a.a));
}

fn func_1() -> vec2<bool> {
    let var_0 = _wgslsmith_dot_vec2_u32(countOneBits(~global0.zz), countOneBits(global0.xw));
    global1 = Struct_4(func_2(global1.c.x, Struct_1(2147483647i), 35977u >> (~(~0u) % 32u), ~global0.x), Struct_1(_wgslsmith_add_i32(-firstTrailingBit(global1.b.a), _wgslsmith_sub_i32(42025i, i32(-1i) * -1i))), _wgslsmith_f_op_vec2_f32(-global1.a.b.yx), vec2<i32>(global1.a.a.a, _wgslsmith_clamp_i32(2147483647i, global1.b.a, -17200i ^ _wgslsmith_mod_i32(global1.a.a.a, -1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.e) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.a.b.x))), any(vec2<bool>(true, true)) != select(false, true, true)))));
    let var_1 = vec3<bool>(_wgslsmith_f_op_f32(sign(1f)) <= _wgslsmith_f_op_f32(f32(-1f) * -1092f), !(true & (_wgslsmith_f_op_f32(min(-816f, -249f)) < _wgslsmith_div_f32(global1.a.b.x, -409f))), all(vec3<bool>(func_3(Struct_4(global1.a, global1.b, vec2<f32>(global1.e, -2040f), u_input.b, 750f), _wgslsmith_f_op_vec4_f32(-global1.a.b)).x, !func_3(Struct_4(global1.a, Struct_1(1i), global1.c, vec2<i32>(global2[_wgslsmith_index_u32(global0.x, 6u)], 2147483647i), global1.e), vec4<f32>(1000f, global1.e, -761f, -791f)).x, true)));
    let var_2 = Struct_4(func_2(_wgslsmith_f_op_f32(abs(-679f)), func_2(-1010f, func_2(_wgslsmith_f_op_f32(max(-941f, -1393f)), Struct_1(u_input.a), global1.a.c.x, reverseBits(13725u)).a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, var_0), vec3<u32>(101647u, 30824u, 39759u)), reverseBits(global0.x ^ global0.x)).a, _wgslsmith_sub_u32(reverseBits(4294967295u | var_0), ~firstLeadingBit(66464u)), _wgslsmith_div_u32(~_wgslsmith_mult_u32(33155u, global1.a.c.x), 0u)), Struct_1(34363i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.c) + global1.c), select(global1.d, vec2<i32>(1i, u_input.a), vec2<bool>(!any(vec2<bool>(var_1.x, true)), true)), global1.c.x);
    var var_3 = 0i;
    return vec2<bool>(var_1.x, false);
}

fn func_4(arg_0: vec2<bool>) -> vec3<u32> {
    var var_0 = select(!select(!vec4<bool>(arg_0.x, arg_0.x, false, true), !select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, false, arg_0.x), vec4<bool>(true, arg_0.x, true, arg_0.x)), true), select(vec4<bool>(!arg_0.x, arg_0.x, arg_0.x, any(vec3<bool>(arg_0.x, false, arg_0.x))), !select(select(vec4<bool>(arg_0.x, arg_0.x, true, false), vec4<bool>(arg_0.x, false, arg_0.x, true), arg_0.x), !vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), all(vec2<bool>(arg_0.x, true))), !(true | arg_0.x)), vec4<bool>(arg_0.x, (-498f != global1.e) || arg_0.x, true, false));
    global1 = Struct_4(global1.a, Struct_1(-19662i), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1433f, global1.c.x) - global1.c), _wgslsmith_f_op_vec2_f32(-global1.c))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.e, global1.a.b.x)))))), u_input.b, global1.a.b.x);
    global1 = Struct_4(func_2(_wgslsmith_f_op_f32(1000f + 1165f), global1.b, ~(~0u), 1u), func_2(_wgslsmith_div_f32(func_2(_wgslsmith_div_f32(-582f, global1.a.b.x), global1.b, ~1u, global0.x & 42289u).b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x))), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(531f * 424f) - _wgslsmith_f_op_f32(global1.a.b.x + 1711f)), func_2(global1.c.x, Struct_1(global1.b.a), ~global1.a.c.x, abs(global1.a.c.x)).a, global0.x, (global0.x << (global0.x % 32u)) | global0.x).a, global1.a.c.x, ~global0.x & countOneBits(global1.a.c.x & global1.a.c.x)).a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.c)), u_input.b << (vec2<u32>(_wgslsmith_sub_u32(global0.x, global0.x) ^ global0.x, ~_wgslsmith_sub_u32(global0.x, global0.x)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(select(1955f, 1000f, arg_0.x)));
    var_0 = vec4<bool>(true, _wgslsmith_sub_i32(_wgslsmith_add_i32(18475i & u_input.a, global2[_wgslsmith_index_u32(27808u, 6u)]), -(~18736i)) < 20653i, any(arg_0), !arg_0.x);
    let var_1 = Struct_5(func_3(Struct_4(func_2(global1.c.x, func_2(global1.a.b.x, Struct_1(global2[_wgslsmith_index_u32(global1.a.c.x, 6u)]), 64225u, 76580u).a, 20695u, 105955u), Struct_1(-2147483647i), global1.c, ~vec2<i32>(-30044i, u_input.a) ^ _wgslsmith_div_vec2_i32(vec2<i32>(-1i, global2[_wgslsmith_index_u32(global0.x, 6u)]), vec2<i32>(global2[_wgslsmith_index_u32(global1.a.c.x, 6u)], 0i)), global1.c.x), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -679f) - _wgslsmith_f_op_f32(global1.c.x + global1.a.b.x)), -1125f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.a.b.x * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.b.x)))).yx, func_2(-538f, global1.b, select(_wgslsmith_sub_u32(~1u, countOneBits(global0.x)), global0.x, arg_0.x), ~abs(firstLeadingBit(global0.x))).a);
    return ~_wgslsmith_sub_vec3_u32(vec3<u32>(~global1.a.c.x, firstLeadingBit(_wgslsmith_dot_vec2_u32(global1.a.c, global0.wx)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(global1.a.c.x, global1.a.c.x), ~global0.x)), _wgslsmith_add_vec3_u32(global0.zwy, abs(vec3<u32>(global0.x, 3291u, global0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(_wgslsmith_mult_vec3_u32(max(~global0.wyw, ~vec3<u32>(global0.x, 63645u, 17563u)), func_4(select(vec2<bool>(true, false), vec2<bool>(true, false), func_1()))));
    var var_1 = global1.a.b.x;
    let var_2 = vec4<i32>(0i, _wgslsmith_clamp_i32(1i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(global2[_wgslsmith_index_u32(global1.a.c.x, 6u)], 1i, -1i), -vec3<i32>(global2[_wgslsmith_index_u32(global1.a.c.x, 6u)], 1i, u_input.a)), global2[_wgslsmith_index_u32(21956u, 6u)]), abs(~(-2147483647i) | -global1.d.x)), 1i, global1.b.a);
    global0 = ~(firstTrailingBit(min(vec4<u32>(48385u, 0u, 4294967295u, var_0.x) ^ vec4<u32>(var_0.x, global1.a.c.x, 8252u, global0.x), vec4<u32>(var_0.x, global1.a.c.x, var_0.x, 77702u))) & ~(firstLeadingBit(vec4<u32>(global1.a.c.x, 4294967295u, var_0.x, 1u)) | (vec4<u32>(16738u, 0u, global0.x, global1.a.c.x) & vec4<u32>(global0.x, 753u, 4294967295u, var_0.x))));
    let var_3 = 625i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(715f, global1.a.b.x))), -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.b.x), -1723f)), ~countOneBits(global1.a.c.x >> (var_0.x % 32u)), 1548f, firstLeadingBit(-_wgslsmith_div_vec2_i32(vec2<i32>(var_2.x, var_3) >> (global0.ww % vec2<u32>(32u)), var_2.xx)));
}

