struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(-29010i, vec3<i32>(23739i, 24229i, -16337i), vec2<i32>(-13i, 2147483647i)), Struct_1(i32(-2147483648), vec3<i32>(47564i, -1i, 2147483647i), vec2<i32>(12285i, -6710i)), Struct_1(1i, vec3<i32>(18455i, 1i, 2147483647i), vec2<i32>(-57977i, -51405i)), Struct_1(0i, vec3<i32>(-15880i, -1i, 2147483647i), vec2<i32>(2147483647i, 1i)), Struct_1(31359i, vec3<i32>(2147483647i, -1i, 1i), vec2<i32>(1i, -34557i)), Struct_1(2147483647i, vec3<i32>(1i, 28046i, 2147483647i), vec2<i32>(14116i, 37285i)), Struct_1(0i, vec3<i32>(2147483647i, 1i, 20304i), vec2<i32>(-21606i, -4021i)), Struct_1(35443i, vec3<i32>(0i, 41451i, 0i), vec2<i32>(-1248i, 2147483647i)), Struct_1(1i, vec3<i32>(2147483647i, 37123i, 0i), vec2<i32>(23660i, 2147483647i)));

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(0i, vec3<i32>(2423i, 50068i, -1i), vec2<i32>(0i, 1i)), Struct_1(-63732i, vec3<i32>(i32(-2147483648), -15191i, 37698i), vec2<i32>(i32(-2147483648), -19936i)), Struct_1(-6934i, vec3<i32>(i32(-2147483648), -13751i, -14391i), vec2<i32>(1i, i32(-2147483648))), Struct_1(2147483647i, vec3<i32>(-16053i, -40611i, i32(-2147483648)), vec2<i32>(6725i, 0i)), Struct_1(2147483647i, vec3<i32>(i32(-2147483648), 1i, 0i), vec2<i32>(1i, 17717i)), Struct_1(-42524i, vec3<i32>(1i, -8660i, -36645i), vec2<i32>(0i, 0i)), Struct_1(i32(-2147483648), vec3<i32>(31319i, 39310i, 0i), vec2<i32>(-2519i, i32(-2147483648))), Struct_1(8527i, vec3<i32>(-21123i, 1i, -1i), vec2<i32>(0i, 1i)), Struct_1(37239i, vec3<i32>(1i, 3986i, 32779i), vec2<i32>(-13377i, -1i)), Struct_1(-27172i, vec3<i32>(33781i, -12805i, 1i), vec2<i32>(0i, 55359i)), Struct_1(-1i, vec3<i32>(-60521i, -20534i, -35206i), vec2<i32>(-22792i, 66460i)), Struct_1(42646i, vec3<i32>(-1i, 26962i, -4664i), vec2<i32>(1i, 3449i)), Struct_1(i32(-2147483648), vec3<i32>(12948i, 5613i, 499i), vec2<i32>(22276i, 747i)), Struct_1(1540i, vec3<i32>(1i, 0i, -2534i), vec2<i32>(-39686i, -8861i)), Struct_1(i32(-2147483648), vec3<i32>(-40782i, 2147483647i, 1i), vec2<i32>(-1158i, 6123i)), Struct_1(-28504i, vec3<i32>(i32(-2147483648), -47104i, i32(-2147483648)), vec2<i32>(-1i, 12079i)), Struct_1(-22936i, vec3<i32>(35123i, 0i, 43941i), vec2<i32>(i32(-2147483648), 0i)), Struct_1(15515i, vec3<i32>(i32(-2147483648), 0i, 2147483647i), vec2<i32>(-20102i, i32(-2147483648))), Struct_1(51682i, vec3<i32>(-38677i, -1i, 48063i), vec2<i32>(0i, 10143i)), Struct_1(-43063i, vec3<i32>(-81640i, -1i, -19447i), vec2<i32>(0i, 51145i)), Struct_1(-1i, vec3<i32>(0i, 652i, 10993i), vec2<i32>(0i, 28611i)), Struct_1(i32(-2147483648), vec3<i32>(-55686i, 22257i, -1i), vec2<i32>(-36152i, 1i)), Struct_1(15332i, vec3<i32>(85267i, 2147483647i, 16732i), vec2<i32>(30624i, 1i)));

var<private> global3: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(10054i, vec3<i32>(-21043i, -10326i, i32(-2147483648)), vec2<i32>(22794i, 55058i)), Struct_1(-7713i, vec3<i32>(3592i, 12408i, 15882i), vec2<i32>(-1i, -12829i)), Struct_1(0i, vec3<i32>(13439i, -1i, 0i), vec2<i32>(i32(-2147483648), -16560i)), Struct_1(-1i, vec3<i32>(-16623i, -50298i, -21188i), vec2<i32>(9323i, 7701i)), Struct_1(3277i, vec3<i32>(-17190i, -21943i, 2147483647i), vec2<i32>(23767i, -25012i)), Struct_1(19300i, vec3<i32>(1i, -1i, 14985i), vec2<i32>(1i, i32(-2147483648))), Struct_1(-42734i, vec3<i32>(-13084i, 2147483647i, -35482i), vec2<i32>(6742i, i32(-2147483648))), Struct_1(0i, vec3<i32>(1i, i32(-2147483648), -82666i), vec2<i32>(1317i, 2147483647i)), Struct_1(-49587i, vec3<i32>(i32(-2147483648), -24423i, 2147483647i), vec2<i32>(1i, 2147483647i)), Struct_1(1i, vec3<i32>(2147483647i, 2995i, 2147483647i), vec2<i32>(0i, 15973i)), Struct_1(-1i, vec3<i32>(48206i, -1i, -8114i), vec2<i32>(0i, -25865i)), Struct_1(-41398i, vec3<i32>(2147483647i, i32(-2147483648), 19826i), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(0i, vec3<i32>(1i, 32319i, -1i), vec2<i32>(-43049i, 1i)), Struct_1(25828i, vec3<i32>(1i, i32(-2147483648), 0i), vec2<i32>(0i, 35855i)), Struct_1(0i, vec3<i32>(1i, 2147483647i, 0i), vec2<i32>(-24757i, 0i)), Struct_1(1027i, vec3<i32>(0i, -9709i, 1i), vec2<i32>(2147483647i, -19019i)), Struct_1(-39880i, vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), vec2<i32>(24624i, -34850i)), Struct_1(39205i, vec3<i32>(-14320i, 1777i, 1740i), vec2<i32>(20230i, -60118i)), Struct_1(-1i, vec3<i32>(1i, 8002i, -8232i), vec2<i32>(-1i, 2147483647i)), Struct_1(-1i, vec3<i32>(42296i, -5779i, 0i), vec2<i32>(-1i, -22607i)), Struct_1(4171i, vec3<i32>(1i, -18049i, 11278i), vec2<i32>(1i, -1i)), Struct_1(70432i, vec3<i32>(1885i, 2147483647i, 20057i), vec2<i32>(-55866i, -16127i)), Struct_1(-28011i, vec3<i32>(2147483647i, 0i, 0i), vec2<i32>(-23136i, 10168i)), Struct_1(0i, vec3<i32>(-10233i, 1i, -1i), vec2<i32>(2147483647i, 0i)), Struct_1(2147483647i, vec3<i32>(23316i, 1i, 14874i), vec2<i32>(30968i, i32(-2147483648))), Struct_1(i32(-2147483648), vec3<i32>(1i, 0i, -67652i), vec2<i32>(2147483647i, -42143i)));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_mult_vec2_u32(~global0.zx & ~firstLeadingBit(vec2<u32>(global0.x, u_input.a)), ~countOneBits(global0.zz) & ((vec2<u32>(u_input.a, 1u) | vec2<u32>(u_input.a, u_input.a)) ^ reverseBits(global0.xx))) << (vec2<u32>(_wgslsmith_sub_u32(firstLeadingBit(~27060u), ~global0.x), _wgslsmith_mod_u32(_wgslsmith_mult_u32(71434u, u_input.a) >> (abs(u_input.a) % 32u), ~0u)) % vec2<u32>(32u));
    var var_1 = Struct_2(global2[_wgslsmith_index_u32(global0.x, 23u)], arg_2.b, 4294967295u);
    global0 = ~vec3<u32>(abs(_wgslsmith_add_u32(4294967295u, var_1.c)), 10446u, var_1.c) ^ min(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_0.x, 4294967295u, var_1.c), vec4<u32>(global0.x, 53662u, var_1.c, var_0.x)), select(0u, var_1.c, arg_1), ~var_1.c), vec3<u32>(var_1.c, abs(850u), ~reverseBits(var_1.c)));
    global2 = array<Struct_1, 23>();
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return max(u_input.b, var_1.b.x);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: u32) -> u32 {
    let var_0 = global0.x;
    let var_1 = Struct_2(Struct_1(firstTrailingBit(3279i), arg_0, vec2<i32>(_wgslsmith_mult_i32(-arg_0.x, -u_input.b), u_input.b)), countOneBits(_wgslsmith_clamp_vec3_i32(arg_0, ~arg_0, min(arg_0, vec3<i32>(29449i, u_input.b, arg_0.x)))), global0.x);
    let var_2 = 1217f;
    var var_3 = 1u;
    let var_4 = vec4<i32>(max(var_1.a.a, -(func_3(vec2<bool>(arg_1.x, true), arg_1.x, var_1.a) | 2147483647i)), arg_0.x, firstLeadingBit(~_wgslsmith_add_i32(arg_0.x, arg_0.x)) << (firstTrailingBit(53150u) % 32u), 2147483647i);
    return select(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global0.x, 0u), vec3<u32>(arg_2, global0.x, 0u)), abs(global0.x), ~11125u), vec4<u32>(min(0u, u_input.a), arg_2, min(arg_2, u_input.a), ~4294967295u)) ^ global0.x, arg_2, arg_1.x);
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: u32, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_add_i32(_wgslsmith_div_i32(i32(-1i) * -4097i, u_input.b), -u_input.b), ~vec3<i32>(-1i, ~arg_1, -12029i), vec2<i32>(select(-41755i, arg_3, false) >> (max(u_input.a, 19482u) % 32u), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(0i, u_input.b, -34170i, -1i)), ~vec4<i32>(-1i, arg_1, 1i, 2147483647i)))), firstLeadingBit(min(abs(-vec3<i32>(-36078i, u_input.b, arg_3)), vec3<i32>(-7141i, arg_3, -u_input.b))), u_input.a);
    var var_1 = _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 4294967295u) | vec2<u32>(u_input.a, 1u), ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, arg_0.x), vec2<u32>(47173u, arg_0.x), vec2<u32>(u_input.a, var_0.c) | vec2<u32>(arg_2, global0.x))) << (0u % 32u);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -160f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1790f, -1026f)) - -736f));
    var var_3 = ~(~(~(~var_0.c)));
    global2 = array<Struct_1, 23>();
    return Struct_1(-7183i, _wgslsmith_clamp_vec3_i32(~(vec3<i32>(u_input.b, 10327i, arg_1) ^ var_0.a.b) ^ max(~vec3<i32>(1i, u_input.b, 21220i), vec3<i32>(u_input.b, -27709i, u_input.b)), abs(vec3<i32>(arg_1, var_0.b.x, 0i) | ~vec3<i32>(arg_3, var_0.a.c.x, var_0.b.x)), var_0.a.b), ~var_0.a.b.xy);
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(0u, 9u)], vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-14508i, u_input.b, reverseBits(-2147483647i)), _wgslsmith_add_vec3_i32(~vec3<i32>(-1i, u_input.b, 12657i), vec3<i32>(u_input.b, u_input.b, u_input.b))), _wgslsmith_div_i32(0i, u_input.b), 69808i), 0u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-511f * _wgslsmith_f_op_f32(trunc(1292f))) * 523f), 2161f)));
    let var_2 = true;
    global1 = array<Struct_1, 9>();
    var var_3 = func_4(select(~(global0.yz << (abs(vec2<u32>(0u, u_input.a)) % vec2<u32>(32u))), abs(~vec2<u32>(global0.x, 44069u)), !vec2<bool>(select(var_2, false, var_2), true)), -29060i, func_2((_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a.a, -27812i, var_0.b.x), vec3<i32>(1i, -25421i, -1i)) ^ var_0.a.b) & _wgslsmith_div_vec3_i32(~var_0.b, vec3<i32>(1i, var_0.a.c.x, 7909i)), vec3<bool>(!var_2 == !var_2, true, all(vec4<bool>(true, var_2, var_2, false))), arg_0.x), _wgslsmith_mod_i32(2147483647i, u_input.b));
    return func_4(_wgslsmith_add_vec2_u32(~global0.zz, global0.yz), 1i, var_0.c, _wgslsmith_div_i32(41133i, var_3.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~29816u;
    var var_1 = true;
    var var_2 = Struct_2(func_1(_wgslsmith_add_vec2_u32(vec2<u32>(~u_input.a, u_input.a), _wgslsmith_div_vec2_u32(~vec2<u32>(62710u, 1u), vec2<u32>(var_0, var_0) << (vec2<u32>(u_input.a, 22877u) % vec2<u32>(32u))))), min(vec3<i32>(_wgslsmith_div_i32(select(u_input.b, u_input.b, false), 16077i), -1675i, countOneBits(u_input.b)), select(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.b, -45900i), vec3<i32>(u_input.b, 19456i, u_input.b)), -(vec3<i32>(u_input.b, 6280i, u_input.b) >> (vec3<u32>(global0.x, 20139u, var_0) % vec3<u32>(32u))), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false))))), 61585u);
    global0 = ~vec3<u32>(0u, 1u, 54371u);
    var var_3 = Struct_1(2147483647i, var_2.b, -vec2<i32>(-(~u_input.b), _wgslsmith_sub_i32(-15658i, 0i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1032f), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, min(func_2(var_2.b, vec3<bool>(true, true, false), u_input.a), 1u), u_input.a, global0.x), vec4<u32>(abs(u_input.a) & 1u, var_0, _wgslsmith_mod_u32(61265u ^ global0.x, var_2.c), var_0)), _wgslsmith_clamp_vec2_i32(func_4(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.c, var_2.c), global0.yz), _wgslsmith_add_i32(-56130i, 2147483647i), ~1u | u_input.a, u_input.b | _wgslsmith_clamp_i32(1i, var_3.b.x, u_input.b)).c, countOneBits(firstLeadingBit(vec2<i32>(var_3.b.x, var_3.c.x))), min(vec2<i32>(-2147483647i, func_3(vec2<bool>(true, false), false, Struct_1(var_3.b.x, vec3<i32>(var_2.a.c.x, 2147483647i, var_2.a.a), vec2<i32>(var_2.a.b.x, -6206i)))), countOneBits(-vec2<i32>(var_3.c.x, var_3.b.x)))));
}

