struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 8> = array<vec4<u32>, 8>(vec4<u32>(13235u, 4294967295u, 88141u, 14926u), vec4<u32>(0u, 0u, 0u, 1u), vec4<u32>(23213u, 0u, 39673u, 30047u), vec4<u32>(17858u, 12286u, 12852u, 5345u), vec4<u32>(44282u, 79690u, 26325u, 4294967295u), vec4<u32>(1u, 1927u, 3218u, 4528u), vec4<u32>(20227u, 0u, 30045u, 91506u), vec4<u32>(1u, 4294967295u, 4294967295u, 63653u));

var<private> global1: array<Struct_1, 17>;

var<private> global2: i32;

var<private> global3: vec2<f32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    global2 = _wgslsmith_mult_i32(~(-1i), arg_0.x ^ reverseBits(arg_0.x));
    global2 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(arg_0.xx, vec2<i32>(arg_0.x, arg_0.x)), min(-arg_0.zx, select(arg_0.xz, vec2<i32>(-10992i, -1i), false))), arg_0.yx), vec2<i32>(arg_0.x >> (_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, 0u, u_input.a), vec3<u32>(u_input.d, 39419u, 62465u)), abs(u_input.b)) % 32u), arg_0.x));
    global1 = array<Struct_1, 17>();
    let var_0 = firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(28307i, -26976i, i32(-1i) * -1i, arg_0.x), _wgslsmith_div_vec4_i32(select(reverseBits(vec4<i32>(-2147483647i, arg_0.x, 2147483647i, arg_0.x)), vec4<i32>(arg_0.x, arg_0.x, 55818i, -1i), vec4<bool>(true, true, true, true)), countOneBits(-vec4<i32>(arg_0.x, 0i, arg_0.x, 33521i)))));
    var var_1 = global1[_wgslsmith_index_u32(~u_input.b.x, 17u)];
    return -381f;
}

fn func_2() -> vec2<i32> {
    let var_0 = global1[_wgslsmith_index_u32(firstTrailingBit(~25137u), 17u)];
    global0 = array<vec4<u32>, 8>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<i32>(1i, 1i, 1i)))), _wgslsmith_f_op_f32(-global3.x), true)) * -1460f);
    var_1 = 1498f;
    return _wgslsmith_add_vec2_i32(abs(firstLeadingBit(abs(firstLeadingBit(vec2<i32>(2147483647i, 0i))))), _wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), select(~vec2<i32>(2147483647i, 47994i), vec2<i32>(1i, 1i), var_0.a.xx)));
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_1(vec3<bool>(true, all(vec2<bool>(false, false)), true));
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(~(-299i), abs(-1i)), func_2()), -40838i, 1i, 23797i), firstLeadingBit(vec4<i32>(1i >> (~u_input.b.x % 32u), i32(-1i) * -8455i, _wgslsmith_mult_i32(0i, _wgslsmith_mult_i32(-1i, -30460i)), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1i, 0i) >> (u_input.b % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(16992i, -2147483647i, -70592i), vec3<i32>(-1i, -5667i, 0i))))));
    let var_2 = !(!select(vec4<bool>(arg_0.a.x, true, false, all(var_0.a)), select(!vec4<bool>(false, var_0.a.x, false, true), select(vec4<bool>(var_0.a.x, true, false, var_0.a.x), vec4<bool>(arg_0.a.x, false, var_0.a.x, false), vec4<bool>(arg_0.a.x, true, var_0.a.x, var_0.a.x)), !vec4<bool>(true, true, var_0.a.x, false)), arg_0.a.x));
    var var_3 = max(vec4<i32>(35843i, ~_wgslsmith_mult_i32(-47081i, 0i), -32392i, -1i ^ firstTrailingBit(5136i)) ^ vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(46789i, -27221i), vec2<i32>(18306i, 21585i) >> (u_input.b.yy % vec2<u32>(32u))), 0i, 0i, (i32(-1i) * -3272i) & select(10909i, 5038i, var_2.x)), ~vec4<i32>(-6637i, _wgslsmith_div_i32(i32(-1i) * -49618i, -2147483647i >> (u_input.d % 32u)), -1i, 1i));
    var_3 = countOneBits(vec4<i32>(firstLeadingBit(_wgslsmith_div_i32(select(63525i, var_3.x, false), -var_3.x)), _wgslsmith_dot_vec3_i32(max(_wgslsmith_add_vec3_i32(var_3.zxy, vec3<i32>(-48493i, var_3.x, 59119i)), abs(vec3<i32>(-26895i, var_3.x, -2147483647i))), var_3.yyy), _wgslsmith_sub_i32(2147483647i, _wgslsmith_mult_i32(-42215i, var_3.x)), min((0i | var_3.x) ^ 2147483647i, i32(-1i) * -52026i)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-263f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, false);
    var var_1 = true && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + _wgslsmith_div_f32(284f, global3.x))) != _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(462f - 193f), global3.x), _wgslsmith_f_op_f32(func_1(Struct_1(vec3<bool>(var_0.x, var_0.x, var_0.x)))))));
    var var_2 = min(vec3<i32>(49026i, 1i, i32(-1i) * -1i), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(1i, 1i, 1i)), vec3<i32>(1i, 1i, 1i)) | reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(2363i, 1i, 0i), select(vec3<i32>(-1i, -11269i, 1i), vec3<i32>(-2147483647i, 5676i, 28869i), true))));
    let var_3 = vec2<bool>(false, var_0.x | !var_0.x);
    var var_4 = vec3<i32>(var_2.x, _wgslsmith_sub_i32(var_2.x, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, _wgslsmith_div_i32(_wgslsmith_mod_i32(-31397i, -5212i), ~2147483647i), _wgslsmith_sub_i32(_wgslsmith_div_i32(var_2.x, var_2.x), min(-2147483647i, 2147483647i)), -29227i), min(~vec4<i32>(2147483647i, 1i, var_2.x, var_2.x) ^ select(vec4<i32>(-2147483647i, 1i, 1i, 11120i), vec4<i32>(var_2.x, var_2.x, 12032i, var_2.x), var_3.x), vec4<i32>(var_2.x, var_2.x, -25979i, -1i) | vec4<i32>(var_2.x, var_2.x, var_2.x, 2147483647i))));
    global0 = array<vec4<u32>, 8>();
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.x - -837f), _wgslsmith_f_op_f32(-global3.x)) * global3.x) - _wgslsmith_f_op_f32(-global3.x)));
    global0 = array<vec4<u32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 7974i, 1i, var_2.x), vec4<i32>(var_4.x, var_4.x, 10731i, var_4.x)), vec4<i32>(0i, -1i, var_2.x, var_2.x) ^ vec4<i32>(var_2.x, var_2.x, -1i, var_4.x)), vec4<i32>(-16510i, -1i, var_4.x, var_4.x) ^ vec4<i32>(2147483647i, var_4.x, var_2.x, var_2.x)), i32(-1i) * -2147483647i, var_4.x, _wgslsmith_clamp_vec2_i32(var_4.yx, min(vec2<i32>(~var_2.x, 0i), var_4.xy), countOneBits(vec2<i32>(~var_2.x, -2147483647i))));
}

