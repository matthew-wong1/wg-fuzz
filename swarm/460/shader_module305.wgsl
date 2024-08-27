struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_4,
    d: bool,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: array<u32, 28> = array<u32, 28>(89757u, 0u, 1u, 30771u, 274u, 39905u, 9253u, 1u, 58606u, 24563u, 4294967295u, 32350u, 5982u, 9277u, 1876u, 4294967295u, 22289u, 50509u, 4294967295u, 3342u, 1u, 0u, 1u, 0u, 0u, 4294967295u, 46780u, 24688u);

var<private> global2: array<Struct_4, 7> = array<Struct_4, 7>(Struct_4(vec2<u32>(17967u, 1u)), Struct_4(vec2<u32>(14517u, 4294967295u)), Struct_4(vec2<u32>(1u, 28199u)), Struct_4(vec2<u32>(87836u, 1u)), Struct_4(vec2<u32>(0u, 0u)), Struct_4(vec2<u32>(55100u, 2241u)), Struct_4(vec2<u32>(49375u, 21223u)));

var<private> global3: array<vec3<bool>, 9>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3) -> bool {
    var var_0 = firstTrailingBit(-vec2<i32>(-1i, _wgslsmith_add_i32(arg_0.c.x << (2377u % 32u), arg_0.c.x)));
    global2 = array<Struct_4, 7>();
    var var_1 = Struct_2(Struct_1(arg_0.a.b.x, global3[_wgslsmith_index_u32(~u_input.b, 9u)], ~(~(-13984i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-618f - -1674f) * _wgslsmith_f_op_f32(-363f + arg_0.b))))));
    global1 = array<u32, 28>();
    var var_2 = !vec4<bool>(true, true, all(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(var_1.a.b.x, arg_0.a.a))), !(var_1.a.a || true));
    return global0.x;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_5, arg_2: vec4<bool>) -> vec2<bool> {
    var var_0 = -831f;
    let var_1 = arg_1.d;
    global3 = array<vec3<bool>, 9>();
    var var_2 = select(var_1, any(!vec2<bool>(global1[_wgslsmith_index_u32(arg_1.c.a.x, 28u)] >= global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 28u)], 28u)], false)), func_3(Struct_3(Struct_1(false || arg_0.a.a, !global3[_wgslsmith_index_u32(u_input.b, 9u)], -u_input.c, -391f), _wgslsmith_f_op_f32(-arg_0.a.d), arg_0.c)));
    var var_3 = max(_wgslsmith_sub_i32(arg_1.b.a.c >> (1u % 32u), 19846i), _wgslsmith_sub_i32(select(_wgslsmith_sub_i32(-23899i, 41525i), _wgslsmith_clamp_i32(-60102i, arg_0.a.c, arg_1.a.c), false & global0.x), _wgslsmith_dot_vec4_i32(arg_0.c, ~arg_0.c))) >> (abs(70107u) % 32u);
    return !arg_0.a.b.xy;
}

fn func_1(arg_0: vec2<u32>) -> Struct_3 {
    global0 = !vec2<bool>(true, !(any(vec4<bool>(global0.x, global0.x, false, global0.x)) && (global0.x & global0.x)));
    var var_0 = arg_0;
    var var_1 = all(!select(select(!vec2<bool>(true, global0.x), vec2<bool>(global0.x, true), func_2(Struct_3(Struct_1(global0.x, global3[_wgslsmith_index_u32(1u, 9u)], u_input.a, -1036f), -652f, vec4<i32>(-1i, u_input.a, u_input.c, 11099i)), Struct_5(Struct_1(global0.x, vec3<bool>(false, true, false), 0i, -1843f), Struct_2(Struct_1(global0.x, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.x, 28u)], 9u)], u_input.a, -117f)), Struct_4(arg_0), global0.x, global2[_wgslsmith_index_u32(12759u, 7u)]), vec4<bool>(false, false, global0.x, global0.x))), select(vec2<bool>(false, global0.x), vec2<bool>(false, true), global0.x), !global0.x));
    var var_2 = Struct_5(Struct_1(select(!all(vec2<bool>(false, global0.x)), !(false || global0.x), ~65850i == ~u_input.c), !(!(!vec3<bool>(true, global0.x, true))), u_input.c, 1540f), Struct_2(Struct_1(global1[_wgslsmith_index_u32(1u, 28u)] == 4294967295u, !select(vec3<bool>(global0.x, global0.x, global0.x), global3[_wgslsmith_index_u32(var_0.x, 9u)], vec3<bool>(false, global0.x, global0.x)), u_input.c, -122f)), global2[_wgslsmith_index_u32(arg_0.x, 7u)], any(vec3<bool>(global0.x, false, global0.x)), global2[_wgslsmith_index_u32(arg_0.x, 7u)]);
    let var_3 = select(!vec4<bool>(any(vec3<bool>(var_2.a.b.x, false, true)), var_2.a.b.x, false, true), !(!(!(!vec4<bool>(true, var_2.a.b.x, var_2.d, global0.x)))), true);
    return Struct_3(Struct_1(_wgslsmith_mult_u32(arg_0.x, 1u) <= ~52756u, select(vec3<bool>(func_3(Struct_3(var_2.a, var_2.a.d, vec4<i32>(u_input.c, 1i, 0i, var_2.a.c))), false, true), select(vec3<bool>(var_2.d, false, var_3.x), select(var_2.a.b, var_2.b.a.b, false), !var_2.a.a), var_2.a.b), _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 14443i), _wgslsmith_mod_vec2_i32(vec2<i32>(var_2.a.c, var_2.a.c), vec2<i32>(-14346i, var_2.b.a.c))), ~2147483647i), _wgslsmith_f_op_f32(var_2.a.d + var_2.b.a.d)), var_2.b.a.d, max(firstTrailingBit(-vec4<i32>(u_input.c, var_2.a.c, var_2.a.c, u_input.a) << (~vec4<u32>(32160u, var_0.x, 66541u, arg_0.x) % vec4<u32>(32u))), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(410i, -12464i, u_input.c, var_2.b.a.c), vec4<i32>(u_input.a, var_2.a.c, u_input.c, var_2.a.c), vec4<i32>(0i, var_2.a.c, u_input.a, var_2.a.c))) >> (vec4<u32>(1u | arg_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(arg_0.x, 42439u, 0u)), firstTrailingBit(var_2.c.a.x), 1u) % vec4<u32>(32u))));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_5, arg_3: Struct_1) -> i32 {
    global0 = arg_2.a.b.zy;
    global1 = array<u32, 28>();
    global3 = array<vec3<bool>, 9>();
    global1 = array<u32, 28>();
    let var_0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2.a.d, _wgslsmith_f_op_f32(f32(-1f) * -526f), arg_3.d)));
    return _wgslsmith_div_i32(~1347i, arg_2.a.c);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_2) -> StorageBuffer {
    var var_0 = vec2<bool>(any(select(select(select(vec3<bool>(arg_1.a.a, true, arg_1.a.a), arg_1.a.b, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 28u)], 28u)], 28u)], 28u)], 28u)], 9u)]), arg_1.a.b, func_3(Struct_3(arg_1.a, 1300f, vec4<i32>(735i, arg_1.a.c, arg_0.x, -55311i)))), arg_1.a.b, false)), true);
    let var_1 = ~vec4<u32>(firstLeadingBit(firstLeadingBit(55633u)) << (global1[_wgslsmith_index_u32(~(~114173u), 28u)] % 32u), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(44850u, 28u)], global1[_wgslsmith_index_u32(~4294967295u, 28u)], ~global1[_wgslsmith_index_u32(10402u, 28u)], global1[_wgslsmith_index_u32(44212u | u_input.b, 28u)]), max(min(vec4<u32>(u_input.b, global1[_wgslsmith_index_u32(u_input.b, 28u)], 0u, 4294967295u), vec4<u32>(5595u, 6004u, 4294967295u, u_input.b)), vec4<u32>(4294967295u, 0u, global1[_wgslsmith_index_u32(1u, 28u)], u_input.b))), global1[_wgslsmith_index_u32(4294967295u, 28u)]);
    let var_2 = -7147i;
    var var_3 = Struct_5(Struct_1(true, func_1(var_1.yw).a.b, -17579i, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_1.a.d)), arg_1.a.d), -1056f))), Struct_2(Struct_1(!(!global0.x), !vec3<bool>(var_0.x, false, true), countOneBits(-3911i), func_1(var_1.wx).a.d)), Struct_4(~(~(~var_1.yy))), select(!var_0.x, !(!(var_0.x | false)), !var_0.x | global0.x), global2[_wgslsmith_index_u32(1u, 7u)]);
    global3 = array<vec3<bool>, 9>();
    return StorageBuffer(~vec4<u32>(~62437u, 1u << (firstLeadingBit(global1[_wgslsmith_index_u32(1u, 28u)]) % 32u), _wgslsmith_dot_vec3_u32(~var_1.wyx, var_1.wzx), 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a.d, _wgslsmith_f_op_f32(f32(-1f) * -184f))))), vec4<i32>(-3453i >> (0u % 32u), abs(-2147483647i), u_input.c, _wgslsmith_sub_i32(arg_0.x, func_4(var_3.c.a.x, Struct_3(Struct_1(var_3.b.a.b.x, arg_1.a.b, 1i, -272f), arg_1.a.d, vec4<i32>(u_input.c, 43511i, 2147483647i, var_3.b.a.c)), Struct_5(var_3.b.a, Struct_2(Struct_1(true, global3[_wgslsmith_index_u32(4294967295u, 9u)], var_3.b.a.c, var_3.b.a.d)), var_3.c, var_3.a.b.x, Struct_4(var_1.yy)), Struct_1(true, vec3<bool>(true, true, false), arg_0.x, -716f)) >> (60683u % 32u))), ~select(vec3<i32>(_wgslsmith_sub_i32(u_input.a, u_input.a), _wgslsmith_add_i32(38872i, arg_0.x), func_1(var_1.zx).a.c), _wgslsmith_div_vec3_i32(-vec3<i32>(arg_0.x, arg_0.x, arg_0.x), vec3<i32>(0i, 0i, -1i) >> (var_1.yxz % vec3<u32>(32u))), ~var_1.x <= ~27595u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -373f;
    var var_1 = (reverseBits(firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.b, 28u)], u_input.b, global1[_wgslsmith_index_u32(102092u, 28u)], u_input.b), vec4<u32>(u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(40399u, 28u)], 28u)], 1u, global1[_wgslsmith_index_u32(u_input.b, 28u)])))) ^ countOneBits(vec4<u32>(global1[_wgslsmith_index_u32(8328u, 28u)] & global1[_wgslsmith_index_u32(62407u, 28u)], _wgslsmith_mod_u32(43376u, 1u), 0u, global1[_wgslsmith_index_u32(u_input.b, 28u)]))) & vec4<u32>(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(15401u, 28u)], ~(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15967u, 28u)], 28u)] | u_input.b), countOneBits(global1[_wgslsmith_index_u32(1u, 28u)]) ^ ~5825u), 15364u, firstLeadingBit(28022u), ~(select(0u, global1[_wgslsmith_index_u32(13274u, 28u)], true) << (1u % 32u)));
    let var_2 = ~(~(~(~10373u)));
    let x = u_input.a;
    s_output = func_5(-vec2<i32>(_wgslsmith_div_i32(-28848i, _wgslsmith_mult_i32(u_input.a, -10782i)), func_4(~var_2, func_1(vec2<u32>(var_2, global1[_wgslsmith_index_u32(58533u, 28u)])), Struct_5(Struct_1(global0.x, global3[_wgslsmith_index_u32(0u, 9u)], 1186i, -307f), Struct_2(Struct_1(false, global3[_wgslsmith_index_u32(54061u, 9u)], -2147483647i, 270f)), global2[_wgslsmith_index_u32(var_2, 7u)], global0.x, Struct_4(var_1.yz)), func_1(var_1.yx).a)), Struct_2(func_1(var_1.zx).a));
}

