struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_2(2147483647i, Struct_1(vec2<i32>(-48735i, -48965i), vec4<i32>(2147483647i, 0i, 12395i, 2147483647i)), true, vec3<bool>(false, true, true)));

var<private> global1: array<vec2<u32>, 10>;

var<private> global2: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(-707f, vec4<f32>(1000f, 882f, 2158f, 1000f), Struct_1(vec2<i32>(46495i, 0i), vec4<i32>(1i, -1515i, -44488i, i32(-2147483648)))), Struct_3(268f, vec4<f32>(1174f, 1202f, -250f, 1129f), Struct_1(vec2<i32>(i32(-2147483648), -34765i), vec4<i32>(i32(-2147483648), 2147483647i, 1i, -1i))), Struct_3(-1000f, vec4<f32>(440f, 387f, -273f, 914f), Struct_1(vec2<i32>(-11496i, -28289i), vec4<i32>(1i, i32(-2147483648), -39342i, 40956i))), Struct_3(1332f, vec4<f32>(1465f, -1471f, 1000f, -534f), Struct_1(vec2<i32>(-5688i, i32(-2147483648)), vec4<i32>(2147483647i, -1i, -3976i, -34564i))), Struct_3(137f, vec4<f32>(861f, 837f, 467f, -829f), Struct_1(vec2<i32>(-14935i, 2147483647i), vec4<i32>(1i, 0i, i32(-2147483648), 633i))), Struct_3(1048f, vec4<f32>(-2630f, 938f, 1365f, 156f), Struct_1(vec2<i32>(7583i, -4865i), vec4<i32>(-1i, 38879i, 0i, 32191i))), Struct_3(733f, vec4<f32>(1644f, -162f, -990f, -1000f), Struct_1(vec2<i32>(0i, -27547i), vec4<i32>(13698i, 0i, -9874i, 1i))), Struct_3(-1001f, vec4<f32>(-1000f, 1075f, -162f, 328f), Struct_1(vec2<i32>(1i, 69849i), vec4<i32>(31692i, -29200i, 1i, 4390i))), Struct_3(1000f, vec4<f32>(-1276f, 117f, 313f, -1331f), Struct_1(vec2<i32>(11193i, 2147483647i), vec4<i32>(-1i, i32(-2147483648), 6384i, -10773i))), Struct_3(-1000f, vec4<f32>(-1000f, -1385f, 1146f, 1918f), Struct_1(vec2<i32>(0i, 0i), vec4<i32>(21843i, 1i, 1i, 1i))));

var<private> global3: Struct_4;

var<private> global4: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    var var_0 = 1i;
    var var_1 = Struct_1(vec2<i32>(~1i, 2147483647i), _wgslsmith_clamp_vec4_i32(abs(-global0.a.b.b & firstLeadingBit(global0.a.b.b)), vec4<i32>(-28052i, _wgslsmith_mod_i32(global0.a.b.b.x, i32(-1i) * -36664i), ~global3.a.a, global3.a.b.b.x), firstTrailingBit(vec4<i32>(max(-1i, 1i), ~3885i, ~global0.a.b.b.x, -43936i))));
    return !any(vec4<bool>(!any(global0.a.d.zy), (u_input.d.x <= 1u) && global3.a.c, global0.a.c, 8745u < countOneBits(u_input.a.x)));
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = _wgslsmith_add_vec3_i32(~(~vec3<i32>(global0.a.b.b.x, 2147483647i, arg_0.a)), _wgslsmith_div_vec3_i32(max(_wgslsmith_mod_vec3_i32(vec3<i32>(global0.a.b.b.x, 5139i, arg_0.a), _wgslsmith_mult_vec3_i32(global0.a.b.b.wxy, global3.a.b.b.xwx)), _wgslsmith_clamp_vec3_i32(global0.a.b.b.xxx, vec3<i32>(-38979i, global3.a.a, 24055i), vec3<i32>(-2147483647i, 4504i, -30694i)) | _wgslsmith_mod_vec3_i32(arg_0.b.b.wzw, vec3<i32>(global0.a.a, 14860i, 2147483647i))), _wgslsmith_add_vec3_i32(~(vec3<i32>(-64639i, 2147483647i, global3.a.a) | arg_0.b.b.zxw), ~vec3<i32>(global3.a.a, arg_0.b.a.x, global0.a.a))));
    let var_1 = ~(reverseBits(~firstLeadingBit(119739u)) | _wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(37739u, u_input.b, u_input.c.x, 4294967295u)), vec4<u32>(u_input.a.x, u_input.d.x, 8727u, firstLeadingBit(0u))));
    global0 = Struct_4(Struct_2(1i, Struct_1(global0.a.b.a << (global1[_wgslsmith_index_u32(var_1, 10u)] % vec2<u32>(32u)), vec4<i32>(global3.a.b.a.x << (var_1 % 32u), -global0.a.b.b.x, var_0.x, ~var_0.x)), func_3(), vec3<bool>(false, true, (4294967295u ^ u_input.c.x) > ~4294967295u)));
    let var_2 = Struct_4(global0.a);
    var var_3 = ~u_input.a;
    return _wgslsmith_mult_u32(firstTrailingBit(1u), 23621u);
}

fn func_1() -> vec4<bool> {
    global4 = !global3.a.d.zx;
    var var_0 = ~(func_2(Struct_2(-15849i, global0.a.b, true, global3.a.d)) | _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 75247u), vec2<u32>(1u, 4294967295u))) ^ u_input.c.x;
    var_0 = 40246u;
    return select(vec4<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -547f), -705f, func_3())) >= _wgslsmith_f_op_f32(-859f - -1000f), true, true, all(global0.a.d.yy)), select(!(!(!vec4<bool>(global4.x, global4.x, global0.a.c, false))), !(!vec4<bool>(global3.a.d.x, true, false, global4.x)), !select(!vec4<bool>(global0.a.c, false, false, false), select(vec4<bool>(global0.a.c, true, global3.a.d.x, global0.a.c), vec4<bool>(true, false, global4.x, global3.a.c), vec4<bool>(false, false, false, true)), select(vec4<bool>(global3.a.c, true, global3.a.c, global0.a.d.x), vec4<bool>(false, false, global0.a.c, global0.a.d.x), vec4<bool>(false, global3.a.d.x, global3.a.c, true)))), !(!(!(!vec4<bool>(false, true, true, global3.a.d.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_1();
    let var_1 = Struct_1(vec2<i32>(global3.a.a, abs(_wgslsmith_dot_vec2_i32(global3.a.b.a, -global0.a.b.b.zy))), abs(min(min(vec4<i32>(1i, global0.a.b.b.x, global3.a.a, global3.a.a), global0.a.b.b), vec4<i32>(global0.a.a, global0.a.b.a.x, global3.a.b.b.x, global0.a.b.a.x))) & _wgslsmith_add_vec4_i32(~(global0.a.b.b ^ vec4<i32>(global3.a.a, global3.a.b.a.x, global3.a.a, -1i)), (global3.a.b.b & global3.a.b.b) | _wgslsmith_div_vec4_i32(vec4<i32>(0i, -1i, 16242i, 2147483647i), global0.a.b.b)));
    var var_2 = Struct_4(global0.a);
    let var_3 = Struct_2(global0.a.a, Struct_1(_wgslsmith_clamp_vec2_i32(var_1.a, global3.a.b.a, reverseBits(global0.a.b.b.xy)), firstLeadingBit(reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(global3.a.a, var_2.a.b.b.x, var_2.a.a, global3.a.a), var_2.a.b.b)))), var_0.x, vec3<bool>((global0.a.c && (var_2.a.d.x || global3.a.c)) | true, true, true && global3.a.d.x));
    var var_4 = u_input.c.x;
    var var_5 = u_input.c.zz;
    var_0 = select(vec4<bool>(all(global0.a.d), true, true, var_3.c), !vec4<bool>(var_3.d.x, true, (var_2.a.c | true) & false, (var_5.x == 0u) && !global0.a.d.x), select(!vec4<bool>(true, var_3.c, 19464i > var_1.b.x, all(var_3.d)), !select(vec4<bool>(var_3.c, true, false, var_0.x), vec4<bool>(global0.a.d.x, global4.x, true, global0.a.c), global4.x), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1014f - -460f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -113f)))), -4806i, ~global0.a.b.b, vec3<u32>(~51970u, _wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_add_u32(47886u, 0u)), u_input.b), _wgslsmith_clamp_u32(~(64205u << (u_input.d.x % 32u)), firstLeadingBit(~28837u), var_5.x)));
}

