struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(i32(-2147483648), vec4<i32>(0i, -17953i, 0i, 56748i), vec3<i32>(0i, -34527i, 2147483647i), 110320u, vec2<f32>(-656f, -2292f)), Struct_3(i32(-2147483648), vec4<i32>(1i, -5991i, 0i, -7557i), vec3<i32>(36851i, -46641i, 51725i), 0u, vec2<f32>(515f, 779f)), Struct_3(-15665i, vec4<i32>(-2294i, -27771i, 2147483647i, 5518i), vec3<i32>(-1i, 0i, 989i), 1u, vec2<f32>(-689f, -1614f)), Struct_3(1i, vec4<i32>(-2517i, -1i, 27545i, 0i), vec3<i32>(i32(-2147483648), i32(-2147483648), 40111i), 40985u, vec2<f32>(-1000f, -200f)), Struct_3(i32(-2147483648), vec4<i32>(10190i, -2846i, 1i, 1i), vec3<i32>(i32(-2147483648), -8232i, 15530i), 1u, vec2<f32>(-877f, 1000f)), Struct_3(25570i, vec4<i32>(2147483647i, 41097i, -39335i, 15509i), vec3<i32>(1i, 52196i, i32(-2147483648)), 0u, vec2<f32>(-1021f, 466f)), Struct_3(8004i, vec4<i32>(i32(-2147483648), 49032i, -3804i, -13188i), vec3<i32>(-14860i, 7478i, 21692i), 40202u, vec2<f32>(338f, -1000f)), Struct_3(-1i, vec4<i32>(-65733i, -1i, -1i, 1i), vec3<i32>(-5198i, 73417i, 21711i), 3220u, vec2<f32>(2338f, -1586f)), Struct_3(1i, vec4<i32>(21611i, i32(-2147483648), 14174i, i32(-2147483648)), vec3<i32>(-9507i, 44934i, 25626i), 1u, vec2<f32>(-345f, 371f)), Struct_3(0i, vec4<i32>(0i, 0i, 5739i, 1i), vec3<i32>(-57416i, -26045i, -13997i), 4294967295u, vec2<f32>(1000f, 1532f)), Struct_3(0i, vec4<i32>(1i, 43014i, -2049i, 2147483647i), vec3<i32>(1i, -36718i, 2147483647i), 0u, vec2<f32>(160f, -381f)), Struct_3(-20599i, vec4<i32>(-1i, 1i, -8290i, 2147483647i), vec3<i32>(-5085i, 11988i, i32(-2147483648)), 0u, vec2<f32>(1107f, -659f)), Struct_3(11880i, vec4<i32>(-22582i, i32(-2147483648), 10707i, 35521i), vec3<i32>(-25245i, 2147483647i, 1i), 22581u, vec2<f32>(-315f, -672f)), Struct_3(2147483647i, vec4<i32>(2147483647i, -64256i, -1i, -32066i), vec3<i32>(46677i, 1i, -16609i), 8846u, vec2<f32>(190f, 1587f)), Struct_3(-18630i, vec4<i32>(2147483647i, 5915i, 5084i, 1i), vec3<i32>(-765i, 9826i, -1i), 8512u, vec2<f32>(443f, 1210f)), Struct_3(1i, vec4<i32>(4951i, -56379i, 4376i, -48994i), vec3<i32>(-17750i, 1i, 13485i), 54356u, vec2<f32>(541f, -570f)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec2<bool>) -> vec2<bool> {
    let var_0 = Struct_2(all(arg_2) | (-385f > _wgslsmith_div_f32(arg_1.e.x, _wgslsmith_f_op_f32(-arg_1.e.x))), 1f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.e.x) - arg_1.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.e.x, arg_1.e.x))))));
    let var_1 = 65201u;
    var var_2 = var_0.a;
    global0 = array<Struct_3, 16>();
    var var_3 = var_0.c.x;
    return !arg_2;
}

fn func_2() -> i32 {
    let var_0 = !select(!select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), func_3(vec4<u32>(1u, 25219u, 0u, 0u), global0[_wgslsmith_index_u32(4294967295u, 16u)], vec2<bool>(false, false))), select(select(func_3(vec4<u32>(86986u, 1u, 0u, 33129u), Struct_3(u_input.c.x, vec4<i32>(u_input.b.x, u_input.a, u_input.a, -35552i), vec3<i32>(u_input.b.x, u_input.a, u_input.b.x), 4453u, vec2<f32>(155f, -1294f)), vec2<bool>(true, false)), vec2<bool>(false, false), all(vec2<bool>(true, false))), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true)), true), func_3(~reverseBits(vec4<u32>(21225u, 4294967295u, 0u, 1u)), Struct_3(~u_input.c.x, vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, -17378i), ~vec3<i32>(14587i, -22068i, -2147483647i), abs(4294967295u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1056f, -780f))), vec2<bool>(u_input.c.x != u_input.a, any(vec3<bool>(true, false, false)))).x);
    global0 = array<Struct_3, 16>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(963f, 1f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-450f, -605f, true)), 464f))))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-2267f)))));
    var_1 = 337f;
    var var_2 = -21530i;
    return -1i ^ min(countOneBits(u_input.c.x), _wgslsmith_clamp_i32(u_input.a, ~u_input.c.x, u_input.c.x) << (abs(1u) % 32u));
}

fn func_1() -> f32 {
    global0 = array<Struct_3, 16>();
    let var_0 = min(func_2(), -29218i << (_wgslsmith_add_u32(firstTrailingBit(~19435u), min(1u, 20708u)) % 32u));
    var var_1 = !select(vec2<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(false, true), false))), func_3(max(~vec4<u32>(52551u, 4294967295u, 0u, 0u), vec4<u32>(1u, 1u, 1u, 1u)), global0[_wgslsmith_index_u32(0u, 16u)], select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(false, false, true))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-157f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(704f, -1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -980f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-793f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1454f, -623f), 1042f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f * 221f), _wgslsmith_f_op_f32(ceil(-1537f)), any(vec2<bool>(var_1.x, var_1.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1965f * 1000f), -1076f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-343f + _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -696f) + _wgslsmith_f_op_f32(-655f + 1011f))), 1f), ~vec2<i32>(func_2(), u_input.a | _wgslsmith_clamp_i32(22429i, 2147483647i, -1i)), select(!(!all(vec2<bool>(true, true))), u_input.b.x < u_input.a, !func_3(vec4<u32>(0u, 4294967295u, 1u, 25872u), Struct_3(-12739i, vec4<i32>(u_input.c.x, 1i, u_input.c.x, -26947i), u_input.c, 36959u, vec2<f32>(578f, -201f)), vec2<bool>(true, true)).x));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(var_0.a * vec3<f32>(-865f, 1610f, _wgslsmith_f_op_f32(floor(var_0.a.x)))), vec3<f32>(851f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -474f)), _wgslsmith_f_op_f32(f32(-1f) * -193f)))), vec2<i32>(max(_wgslsmith_mod_i32(2147483647i ^ u_input.a, 56413i), ~_wgslsmith_clamp_i32(-1i, u_input.b.x, u_input.a)), _wgslsmith_add_i32(-12929i, -1i)), var_0.c);
    let var_2 = min(var_0.b, -_wgslsmith_mult_vec2_i32(firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, u_input.c.x), vec2<i32>(var_0.b.x, var_0.b.x))), -_wgslsmith_mod_vec2_i32(vec2<i32>(-32055i, -1608i), vec2<i32>(var_0.b.x, 28244i))));
    let var_3 = -var_1.b;
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, 1000f, var_1.a.x)))), u_input.b << (~(~vec2<u32>(0u, 75914u)) % vec2<u32>(32u)), func_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(72622u, 4294967295u, 1u, 1u), ~vec4<u32>(1u, 89531u, 64000u, 14143u), vec4<u32>(1u, 1u, 1u, 1u)), Struct_3(-18567i, -vec4<i32>(var_2.x, -2147483647i, var_2.x, -48026i), reverseBits(u_input.c), 1u, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.a.x, -1272f)))), !select(vec2<bool>(var_0.c, var_1.c), vec2<bool>(false, var_1.c), var_0.c)).x | !var_0.c);
    var var_4 = global0[_wgslsmith_index_u32(min(~6830u, 4631u), 16u)];
    var_0 = var_1;
    let var_5 = vec3<i32>(var_4.a, 1i, var_1.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(max(11187i, ~var_0.b.x), 2147483647i, ~(-1i), -abs(u_input.b.x)), var_3.x, vec4<i32>(var_5.x, _wgslsmith_dot_vec2_i32(-(~vec2<i32>(-5132i, var_2.x)), _wgslsmith_mod_vec2_i32(var_1.b << (vec2<u32>(3864u, var_4.d) % vec2<u32>(32u)), vec2<i32>(-28508i, -2147483647i) | vec2<i32>(var_0.b.x, 41592i))), firstLeadingBit(-1i) << (var_4.d % 32u), _wgslsmith_sub_i32(countOneBits(var_2.x), -21734i)), 0u, vec3<f32>(var_1.a.x, var_0.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f + var_0.a.x)))));
}

