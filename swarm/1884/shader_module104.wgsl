struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
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

var<private> global0: Struct_1;

var<private> global1: vec2<f32> = vec2<f32>(-666f, 255f);

var<private> global2: array<Struct_1, 27>;

var<private> global3: array<Struct_1, 9>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_1(true, vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(global0.b, global0.b), global0.b.x), countOneBits(global0.b.yy) ^ firstTrailingBit(vec2<u32>(1u, global0.b.x))), ~min(~4294967295u, global0.b.x)));
    let var_1 = Struct_1(global0.a, vec3<u32>(global0.b.x, 1u, 14164u));
    var var_2 = u_input.c.x ^ _wgslsmith_dot_vec4_i32(u_input.c, ~(u_input.c >> (~vec4<u32>(4864u, global0.b.x, 65945u, var_0.b.x) % vec4<u32>(32u))));
    let var_3 = global2[_wgslsmith_index_u32(reverseBits(max(_wgslsmith_mod_u32(var_1.b.x, var_0.b.x), _wgslsmith_sub_u32(15990u, 1u))), 27u)];
    global0 = global3[_wgslsmith_index_u32(abs(0u), 9u)];
    return vec4<bool>(_wgslsmith_f_op_f32(abs(global1.x)) < 538f, true, !global0.a, select(any(select(select(vec3<bool>(global0.a, var_0.a, var_0.a), vec3<bool>(true, true, false), vec3<bool>(var_0.a, true, true)), vec3<bool>(true, global0.a, false), true)), !(!(u_input.b.x >= u_input.b.x)), var_0.a || (select(var_0.a, true, var_1.a) || (false | var_0.a))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: vec3<f32>) -> vec4<u32> {
    var var_0 = !all(select(vec4<bool>(global0.a, true, false, any(vec2<bool>(global0.a, global0.a))), select(select(vec4<bool>(false, true, arg_1.x, false), vec4<bool>(true, false, global0.a, arg_1.x), vec4<bool>(global0.a, arg_1.x, true, true)), select(vec4<bool>(false, global0.a, global0.a, false), vec4<bool>(global0.a, true, true, false), global0.a), true), func_3()));
    let var_1 = global2[_wgslsmith_index_u32(global0.b.x, 27u)];
    let var_2 = func_3();
    let var_3 = vec2<f32>(arg_3.x, _wgslsmith_f_op_f32(f32(-1f) * -1809f));
    var var_4 = _wgslsmith_f_op_f32(-1000f + global1.x);
    return vec4<u32>(firstTrailingBit(var_1.b.x << ((~arg_2.x << ((arg_2.x << (global0.b.x % 32u)) % 32u)) % 32u)), _wgslsmith_div_u32(0u, global0.b.x), firstLeadingBit(66462u), 18825u);
}

fn func_4(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(firstLeadingBit(global0.b.x), 27u)];
    let var_1 = Struct_1(false, vec3<u32>(~_wgslsmith_clamp_u32(4294967295u, _wgslsmith_div_u32(arg_0.x, arg_0.x), 1u), 127118u, ~arg_0.x));
    let var_2 = Struct_1(false, min(abs(~arg_0.yzz), reverseBits(~vec3<u32>(0u, arg_0.x, 4294967295u) & abs(global0.b))));
    global0 = Struct_1(true, ~_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.b.x, arg_0.x, 0u) ^ arg_0.yzx, vec3<u32>(arg_0.x, arg_0.x, var_0.b.x)), _wgslsmith_sub_vec3_u32(func_2(u_input.b.yx, vec2<bool>(true, false), vec3<u32>(var_2.b.x, var_1.b.x, 42601u), vec3<f32>(global1.x, global1.x, -320f)).zzz, _wgslsmith_div_vec3_u32(vec3<u32>(25524u, var_1.b.x, var_2.b.x), global0.b))));
    var var_3 = Struct_1(any(func_3().wxz), vec3<u32>(30960u, select(9531u, _wgslsmith_mult_u32(arg_0.x, 29039u), true), _wgslsmith_dot_vec2_u32(~var_1.b.xz, ~vec2<u32>(78630u, var_0.b.x)) ^ var_0.b.x));
    return var_2;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_sub_u32(arg_1.x, firstLeadingBit(35581u));
    global2 = array<Struct_1, 27>();
    global0 = func_4(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, select(global0.b.x, 0u, true), reverseBits(4294967295u), reverseBits(0u)), reverseBits(firstLeadingBit(vec4<u32>(0u, arg_0.b.x, 0u, var_0)))));
    var var_1 = func_4(vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(global0.b, ~vec3<u32>(arg_1.x, var_0, 5686u)), arg_0.b), _wgslsmith_mod_u32(func_2(vec2<i32>(u_input.c.x, 75243i) << (arg_2.b.yy % vec2<u32>(32u)), vec2<bool>(global0.a, global0.a), _wgslsmith_clamp_vec3_u32(arg_2.b, vec3<u32>(var_0, var_0, arg_2.b.x), vec3<u32>(4294967295u, 15082u, arg_2.b.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1322f, 579f, global1.x) - vec3<f32>(global1.x, global1.x, global1.x))).x, 4621u), 0u | (var_0 >> (arg_0.b.x % 32u)), min(arg_2.b.x, global0.b.x)));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1386f, -189f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.x, 309f), vec2<f32>(global1.x, -989f)))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.x, global1.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) * vec2<f32>(global1.x, global1.x))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(479f, global1.x))))));
    return global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(countOneBits(~vec2<u32>(reverseBits(0u), abs(4621u))), vec2<u32>(~(~71674u), arg_1.x)), 27u)];
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = -1000f;
    global2 = array<Struct_1, 27>();
    var var_1 = ~1u;
    global1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(356f * global1.x), global1.x)), 1147f))));
    global1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_div_f32(-986f, 452f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1084f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -646f) + vec2<f32>(428f, global1.x))))))));
    return Struct_1(true, vec3<u32>(_wgslsmith_clamp_u32(0u, 30863u, 23185u), ~1u, global0.b.x));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: u32, arg_3: vec2<bool>) -> i32 {
    var var_0 = Struct_1(global0.a, arg_1.b);
    var var_1 = global2[_wgslsmith_index_u32(~(countOneBits(101408u | global0.b.x) << (arg_2 % 32u)), 27u)];
    let var_2 = func_6(func_5(func_4(~func_2(vec2<i32>(-2147483647i, arg_0.x), arg_3, vec3<u32>(4294967295u, var_0.b.x, 44119u), vec3<f32>(955f, 1464f, -1715f))), reverseBits(vec2<u32>(~arg_2, 1u)), Struct_1(var_1.b.x > _wgslsmith_mult_u32(36991u, var_1.b.x), _wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.b.x, global0.b.x, 110389u), ~var_1.b))));
    var var_3 = -22395i;
    global0 = func_6(arg_1);
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, ~vec3<u32>(countOneBits(global0.b.x), global0.b.x, ~1u >> (~global0.b.x % 32u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, 160f));
    global0 = Struct_1((_wgslsmith_dot_vec2_i32(u_input.c.zx, -u_input.b.zy) >> (var_0.b.x % 32u)) <= -max(abs(1i), ~2147483647i), global0.b);
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0.b.x, var_0.b.x), 27u)];
    var var_3 = !(!select(vec4<bool>(true, false, any(vec3<bool>(var_2.a, true, var_2.a)), true), select(!vec4<bool>(var_0.a, var_0.a, true, global0.a), !vec4<bool>(global0.a, var_2.a, true, var_2.a), select(vec4<bool>(true, false, true, true), vec4<bool>(false, var_2.a, var_0.a, var_2.a), false)), true));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(~func_1(vec4<i32>(u_input.c.x, 6844i, u_input.b.x, u_input.c.x), Struct_1(false, vec3<u32>(global0.b.x, 1u, 98205u)), 16460u, var_3.xy), max(-u_input.c.x, abs(u_input.a))));
}

