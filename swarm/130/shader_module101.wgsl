struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec2<f32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: vec3<u32>,
    d: f32,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(4294967295u, vec4<bool>(true, false, false, true), vec2<f32>(408f, 173f), -6695i, 15520i), Struct_1(8423u, vec4<bool>(true, false, true, true), vec2<f32>(310f, 622f), 1i, 2147483647i), Struct_1(0u, vec4<bool>(false, false, false, true), vec2<f32>(722f, -307f), 0i, 0i), Struct_1(15559u, vec4<bool>(false, true, true, true), vec2<f32>(809f, 1000f), 0i, -1i), Struct_1(14924u, vec4<bool>(true, false, false, true), vec2<f32>(2187f, 2193f), 2147483647i, 16006i), Struct_1(4294967295u, vec4<bool>(false, false, false, false), vec2<f32>(-1047f, -302f), 57345i, 34688i), Struct_1(55347u, vec4<bool>(false, false, true, true), vec2<f32>(890f, -139f), 36787i, 0i), Struct_1(4294967295u, vec4<bool>(true, false, true, false), vec2<f32>(-550f, 866f), 0i, i32(-2147483648)), Struct_1(1166u, vec4<bool>(true, true, false, true), vec2<f32>(933f, -502f), 9470i, 1i), Struct_1(39135u, vec4<bool>(false, true, true, true), vec2<f32>(469f, -154f), 1i, -40335i), Struct_1(25310u, vec4<bool>(false, false, true, false), vec2<f32>(-809f, 925f), 47564i, -29136i), Struct_1(6450u, vec4<bool>(true, true, true, false), vec2<f32>(-527f, 1020f), 33117i, 36776i), Struct_1(42808u, vec4<bool>(false, true, false, true), vec2<f32>(-1781f, 704f), 1i, 0i), Struct_1(22290u, vec4<bool>(true, false, false, true), vec2<f32>(1518f, -1366f), 1i, -38036i), Struct_1(39169u, vec4<bool>(true, false, true, false), vec2<f32>(287f, -744f), 7715i, 1i), Struct_1(0u, vec4<bool>(true, true, true, false), vec2<f32>(-1450f, -968f), -4759i, i32(-2147483648)), Struct_1(83868u, vec4<bool>(false, false, true, true), vec2<f32>(-1082f, 2553f), -34627i, 24575i), Struct_1(1u, vec4<bool>(false, true, false, false), vec2<f32>(-1418f, 189f), 1i, -11897i), Struct_1(1u, vec4<bool>(false, false, true, true), vec2<f32>(-174f, -1319f), 0i, 2147483647i), Struct_1(84860u, vec4<bool>(false, true, false, true), vec2<f32>(267f, 261f), 2147483647i, -10777i));

var<private> global1: array<u32, 32> = array<u32, 32>(1u, 2551u, 4294967295u, 0u, 33891u, 4294967295u, 4294967295u, 55634u, 20565u, 0u, 39537u, 1u, 4294967295u, 38400u, 117213u, 32502u, 1u, 9735u, 12526u, 20381u, 4294967295u, 4294967295u, 1u, 29941u, 0u, 47620u, 29685u, 53655u, 31802u, 4294967295u, 22816u, 1u);

var<private> global2: Struct_2 = Struct_2(vec3<bool>(true, true, false), -4137i, vec3<u32>(57198u, 4294967295u, 0u), 1365f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: bool) -> vec3<bool> {
    var var_0 = vec4<bool>(any(vec4<bool>(global2.a.x, true, any(global2.a.zx), arg_1)), any(!select(!vec4<bool>(arg_1, true, false, false), !vec4<bool>(arg_1, false, arg_1, true), vec4<bool>(false, true, true, global2.a.x))), true, select(global2.a.x, global2.a.x, any(global2.a.xz)));
    global0 = array<Struct_1, 20>();
    global1 = array<u32, 32>();
    global2 = Struct_2(vec3<bool>(!var_0.x, all(vec2<bool>(true, true)), arg_0.x > ((u_input.a >> (global1[_wgslsmith_index_u32(global2.c.x, 32u)] % 32u)) ^ u_input.a)), 2784i, global2.c, 646f);
    global1 = array<u32, 32>();
    return vec3<bool>((((i32(-1i) * -1i) & _wgslsmith_sub_i32(12477i, arg_0.x)) | _wgslsmith_div_i32(arg_0.x, 35823i)) >= _wgslsmith_add_i32(_wgslsmith_clamp_i32(48837i, reverseBits(global2.b), u_input.a), -arg_0.x), all(select(!vec2<bool>(false, arg_1), var_0.zy, true)), !var_0.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = 26322u;
    var var_2 = -2147483647i;
    global1 = array<u32, 32>();
    var_2 = u_input.a;
    return Struct_1(33446u << (u_input.c % 32u), !vec4<bool>(any(vec3<bool>(var_0.a.x, arg_2.a.x, var_0.a.x)), any(func_3(vec3<i32>(var_0.b, 20072i, global2.b), true)), arg_0.x, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d, -683f) * vec2<f32>(arg_2.d, var_0.d)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1752f, global2.d) * vec2<f32>(-1045f, global2.d)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(928f, -597f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -934f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, -398f))))), max(reverseBits(global2.b), _wgslsmith_mult_i32(firstTrailingBit(47130i), 1i)), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(max(arg_1, vec2<i32>(0i, 1i)), -arg_1, -vec2<i32>(arg_1.x, global2.b)), arg_1) ^ 2147483647i);
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = Struct_3(arg_2.c.x, _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-1i, 21267i, global2.b, 1i), -vec4<i32>(-1i, global2.b, arg_2.e, arg_0), firstTrailingBit(vec4<i32>(u_input.a, u_input.a, 4938i, arg_0))), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.d, -58465i, u_input.a, arg_2.d), vec4<i32>(u_input.a, arg_2.e, 1i, arg_2.e), vec4<i32>(arg_0, 74513i, arg_2.e, arg_0))), firstTrailingBit(vec4<i32>(firstTrailingBit(u_input.a), -arg_2.d, 3291i, firstTrailingBit(-1i)))));
    global0 = array<Struct_1, 20>();
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-global2.d), ~(~(-(~var_0.b))));
    var var_2 = Struct_2(arg_2.b.xwx, -1i, vec3<u32>(_wgslsmith_mult_u32(49197u, select(_wgslsmith_mod_u32(arg_2.a, 4294967295u), global1[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 32u)], true)), firstTrailingBit(reverseBits(39144u)) & _wgslsmith_dot_vec3_u32(global2.c << (vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 32u)], global2.c.x, global2.c.x) % vec3<u32>(32u)), global2.c), ~_wgslsmith_div_u32(global1[_wgslsmith_index_u32(~0u, 32u)], arg_2.a & 1u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d))), var_1.a, !global2.a.x & arg_1)));
    var var_3 = global2.d;
    return _wgslsmith_add_vec4_i32(firstLeadingBit(-countOneBits(-var_0.b)), var_0.b);
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> u32 {
    let var_0 = -(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.b, u_input.a, 2147483647i, -66875i), vec4<i32>(u_input.a, 13850i, u_input.a, global2.b))) | select(func_4(firstTrailingBit(0i), 0i <= u_input.a, func_2(vec2<bool>(arg_0.a.x, true), vec2<i32>(u_input.a, -45422i), Struct_2(vec3<bool>(arg_0.a.x, true, false), -30026i, vec3<u32>(1u, u_input.c, global1[_wgslsmith_index_u32(17958u, 32u)]), -1037f), vec3<bool>(true, true, global2.a.x))), vec4<i32>(_wgslsmith_add_i32(-1i, 0i), u_input.a, func_4(-38398i, global2.a.x, Struct_1(4294967295u, vec4<bool>(true, arg_0.a.x, true, true), vec2<f32>(arg_0.d, -1000f), 0i, arg_0.b)).x, _wgslsmith_mod_i32(arg_0.b, u_input.a)), !global2.a.x));
    var var_1 = _wgslsmith_f_op_f32(global2.d * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(1025f, _wgslsmith_f_op_f32(f32(-1f) * -455f)))))));
    var var_2 = var_0;
    var_2 = vec4<i32>(~var_0.x << (global2.c.x % 32u), func_2(!vec2<bool>(true, !arg_0.a.x), ~func_4(~u_input.a, u_input.a != -18207i, Struct_1(34763u, vec4<bool>(global2.a.x, true, global2.a.x, false), vec2<f32>(357f, global2.d), -20169i, -28552i)).wz, Struct_2(arg_0.a, u_input.a, global2.c, -1000f), func_3(var_2.wzw, !(-30325i == var_0.x))).d, func_4(global2.b, all(!(!global2.a)), func_2(!func_3(var_0.xxw, false).zx, ~var_0.wx, Struct_2(!global2.a, var_0.x, global2.c | vec3<u32>(7921u, 98850u, 79177u), 469f), vec3<bool>(global2.a.x, false, arg_0.a.x))).x, var_0.x);
    let var_3 = vec3<bool>(any(!select(vec4<bool>(arg_0.a.x, false, true, global2.a.x), vec4<bool>(true, arg_0.a.x, global2.a.x, global2.a.x), !vec4<bool>(arg_0.a.x, global2.a.x, arg_0.a.x, global2.a.x))), true, !(false || (select(true, arg_0.a.x, global2.a.x) || false)));
    return select(~firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c.x, 34692u, u_input.c), vec3<u32>(1u, 39143u, 0u)) | 26042u), 1u, false);
}

fn func_5(arg_0: f32, arg_1: vec3<i32>, arg_2: u32) -> StorageBuffer {
    global2 = Struct_2(vec3<bool>(any(select(vec3<bool>(global2.a.x, global2.a.x, global2.a.x), global2.a, global2.a)) && true, !all(select(vec4<bool>(global2.a.x, false, true, global2.a.x), vec4<bool>(global2.a.x, true, false, global2.a.x), vec4<bool>(false, global2.a.x, false, true))), all(!vec4<bool>(global2.a.x, global2.a.x, true, global2.a.x))), arg_1.x, vec3<u32>(global1[_wgslsmith_index_u32(global2.c.x, 32u)], 1u, 0u), 1108f);
    var var_0 = 48899u;
    let var_1 = min(-reverseBits(vec4<i32>(4385i, 274i, select(global2.b, arg_1.x, false), arg_1.x)), ~vec4<i32>(u_input.a, countOneBits(arg_1.x), arg_1.x, reverseBits(-27345i >> (arg_2 % 32u))));
    let var_2 = Struct_3(511f, -(~_wgslsmith_div_vec4_i32(var_1 & vec4<i32>(11975i, var_1.x, global2.b, global2.b), _wgslsmith_div_vec4_i32(var_1, vec4<i32>(-1i, global2.b, arg_1.x, 8884i)))));
    var var_3 = Struct_2(select(func_3(~reverseBits(vec3<i32>(0i, global2.b, 1i)), all(!vec3<bool>(false, global2.a.x, false))), select(!global2.a, global2.a, false), !all(global2.a)), -11653i, ~global2.c, _wgslsmith_f_op_f32(f32(-1f) * -1599f));
    return StorageBuffer(~vec2<u32>(_wgslsmith_clamp_u32(var_3.c.x, u_input.c, ~var_3.c.x), ~_wgslsmith_mod_u32(arg_2, 33584u)), -vec2<i32>((var_3.b ^ var_2.b.x) >> (u_input.c % 32u), countOneBits(func_4(var_1.x, true, global0[_wgslsmith_index_u32(arg_2, 20u)]).x)), -38710i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 32>();
    global1 = array<u32, 32>();
    let x = u_input.a;
    s_output = func_5(-1220f, -vec3<i32>(5082i, abs(_wgslsmith_mult_i32(global2.b, global2.b)), _wgslsmith_mult_i32(~global2.b, -40296i)), ~func_1(Struct_2(vec3<bool>(false, false, global2.a.x), 0i, ~global2.c, -642f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1939f, global2.d)) * 504f)));
}

