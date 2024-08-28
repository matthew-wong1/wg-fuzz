struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(74539u);

var<private> global1: array<Struct_1, 1>;

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec4<u32>(27525u, 46506u, 58774u, 0u), 10727i, 4294967295u, vec2<i32>(-1i, 8168i), vec3<u32>(12986u, 29186u, 4294967295u)), Struct_1(vec4<u32>(7242u, 69162u, 4294967295u, 17827u), -7167i, 4294967295u, vec2<i32>(i32(-2147483648), 2147483647i), vec3<u32>(1u, 23688u, 21777u)), Struct_1(vec4<u32>(0u, 4294967295u, 1153u, 26851u), 1i, 32364u, vec2<i32>(-28238i, i32(-2147483648)), vec3<u32>(4294967295u, 0u, 0u)), Struct_1(vec4<u32>(0u, 71437u, 0u, 0u), -2227i, 12885u, vec2<i32>(3833i, -1i), vec3<u32>(52686u, 4294967295u, 0u)), Struct_1(vec4<u32>(4294967295u, 92916u, 23197u, 4294967295u), -9804i, 1u, vec2<i32>(-18073i, -1i), vec3<u32>(23236u, 0u, 13645u)), Struct_1(vec4<u32>(1u, 4294967295u, 1u, 24402u), 0i, 0u, vec2<i32>(-26461i, 46605i), vec3<u32>(4294967295u, 39667u, 1u)), Struct_1(vec4<u32>(14165u, 56010u, 13722u, 0u), 1i, 20716u, vec2<i32>(i32(-2147483648), -1i), vec3<u32>(0u, 1u, 38606u)), Struct_1(vec4<u32>(79972u, 56517u, 0u, 67853u), -10937i, 0u, vec2<i32>(40204i, -23733i), vec3<u32>(85756u, 4294967295u, 4306u)), Struct_1(vec4<u32>(0u, 19536u, 47669u, 0u), -21784i, 1u, vec2<i32>(-1i, -45213i), vec3<u32>(4294967295u, 38841u, 59320u)), Struct_1(vec4<u32>(50037u, 0u, 0u, 4294967295u), 1i, 61070u, vec2<i32>(0i, 2147483647i), vec3<u32>(32867u, 26006u, 64804u)), Struct_1(vec4<u32>(9166u, 20748u, 13657u, 30139u), -48338i, 0u, vec2<i32>(-38667i, 1i), vec3<u32>(28157u, 42948u, 32148u)), Struct_1(vec4<u32>(38345u, 13145u, 1u, 46029u), 25358i, 57187u, vec2<i32>(-1i, 17834i), vec3<u32>(3218u, 0u, 7049u)), Struct_1(vec4<u32>(13133u, 23983u, 49169u, 58968u), 2147483647i, 8767u, vec2<i32>(55353i, -1i), vec3<u32>(12196u, 39469u, 6222u)), Struct_1(vec4<u32>(83505u, 38087u, 1u, 4294967295u), -37968i, 85856u, vec2<i32>(-41250i, i32(-2147483648)), vec3<u32>(0u, 42654u, 0u)), Struct_1(vec4<u32>(6408u, 5033u, 4294967295u, 14704u), i32(-2147483648), 14740u, vec2<i32>(-1i, 0i), vec3<u32>(42966u, 4731u, 4294967295u)), Struct_1(vec4<u32>(858u, 1u, 52527u, 85083u), -9125i, 1u, vec2<i32>(2147483647i, i32(-2147483648)), vec3<u32>(20989u, 31195u, 15430u)), Struct_1(vec4<u32>(0u, 2239u, 13417u, 0u), 44251i, 24191u, vec2<i32>(32203i, 2147483647i), vec3<u32>(0u, 0u, 1u)), Struct_1(vec4<u32>(1u, 71573u, 1u, 4294967295u), 0i, 1u, vec2<i32>(i32(-2147483648), -32547i), vec3<u32>(0u, 0u, 1u)), Struct_1(vec4<u32>(4294967295u, 13780u, 4294967295u, 69774u), 25738i, 1u, vec2<i32>(-1i, -57567i), vec3<u32>(1u, 1u, 71194u)), Struct_1(vec4<u32>(18132u, 1u, 104803u, 1u), 28819i, 0u, vec2<i32>(20825i, i32(-2147483648)), vec3<u32>(8369u, 5159u, 54165u)), Struct_1(vec4<u32>(0u, 3477u, 1u, 0u), 34568i, 0u, vec2<i32>(-48437i, i32(-2147483648)), vec3<u32>(4294967295u, 45027u, 1u)), Struct_1(vec4<u32>(47446u, 1u, 48147u, 4294967295u), 26929i, 1u, vec2<i32>(1i, -1i), vec3<u32>(0u, 1u, 23918u)), Struct_1(vec4<u32>(24759u, 47551u, 33860u, 4294967295u), 0i, 9445u, vec2<i32>(10561i, 21376i), vec3<u32>(18138u, 1u, 18855u)), Struct_1(vec4<u32>(4294967295u, 1u, 0u, 89092u), 53253i, 1u, vec2<i32>(-1i, 51958i), vec3<u32>(36224u, 4294967295u, 0u)), Struct_1(vec4<u32>(21677u, 28126u, 4294967295u, 1u), -10460i, 48703u, vec2<i32>(-42784i, 0i), vec3<u32>(1u, 1u, 33061u)), Struct_1(vec4<u32>(0u, 11178u, 101026u, 39903u), 54250i, 0u, vec2<i32>(-12270i, 2147483647i), vec3<u32>(27211u, 10600u, 1u)), Struct_1(vec4<u32>(0u, 27964u, 56115u, 36303u), 2147483647i, 4294967295u, vec2<i32>(-11775i, 2147483647i), vec3<u32>(0u, 1u, 0u)), Struct_1(vec4<u32>(34680u, 0u, 16223u, 1u), 5850i, 4294967295u, vec2<i32>(-17659i, 19642i), vec3<u32>(9254u, 1984u, 11908u)), Struct_1(vec4<u32>(24371u, 0u, 0u, 20666u), -55702i, 8892u, vec2<i32>(1i, -7216i), vec3<u32>(4294967295u, 32745u, 10992u)), Struct_1(vec4<u32>(1u, 4294967295u, 9233u, 1u), 2147483647i, 45612u, vec2<i32>(10349i, -30303i), vec3<u32>(4294967295u, 31883u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 42029u, 29956u), 0i, 4294967295u, vec2<i32>(6960i, 0i), vec3<u32>(16023u, 7473u, 0u)), Struct_1(vec4<u32>(35170u, 4294967295u, 4294967295u, 1u), -25656i, 115406u, vec2<i32>(-6685i, 1i), vec3<u32>(51083u, 16957u, 0u)));

var<private> global3: vec3<bool> = vec3<bool>(false, false, false);

var<private> global4: Struct_2;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = true;
    let var_1 = global0.a != _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(firstTrailingBit(u_input.d), min(vec2<u32>(36508u, 4294967295u), u_input.d), u_input.d), ~(u_input.d & u_input.d)), global4.a);
    global2 = array<Struct_1, 32>();
    global1 = array<Struct_1, 1>();
    let var_2 = Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(reverseBits(countOneBits(vec4<u32>(global0.a, u_input.d.x, 40935u, 0u))), abs(~vec4<u32>(4294967295u, global4.a, u_input.d.x, 0u))), (vec4<u32>(1u, 0u, 1u, global0.a) << (_wgslsmith_mod_vec4_u32(vec4<u32>(global0.a, global4.a, global0.a, 4294967295u), vec4<u32>(global4.a, global4.a, global4.a, 0u)) % vec4<u32>(32u))) | vec4<u32>(0u, _wgslsmith_mod_u32(global4.a, 44227u), u_input.d.x, u_input.d.x)), _wgslsmith_mult_i32(-(~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.c, 0i), vec4<i32>(u_input.b, u_input.c, u_input.c, u_input.c))), select(u_input.b, _wgslsmith_mult_i32(firstTrailingBit(38870i), 1i), select(false, !arg_0, !var_1))), _wgslsmith_div_u32(_wgslsmith_mult_u32(~(~4294967295u), global4.a), reverseBits(~global4.a)), _wgslsmith_add_vec2_i32(-_wgslsmith_add_vec2_i32(u_input.a, u_input.a) | ~u_input.a, min(abs(u_input.a), -firstLeadingBit(vec2<i32>(u_input.a.x, u_input.b)))), reverseBits(~vec3<u32>(countOneBits(1u), _wgslsmith_mod_u32(global4.a, 0u), ~30950u)));
    return 1756f;
}

fn func_2() -> bool {
    global4 = Struct_2(global0.a);
    let var_0 = vec2<bool>(true, all(vec3<bool>(false, false, _wgslsmith_clamp_u32(global4.a, 4294967295u, u_input.d.x) <= firstTrailingBit(14164u))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(622f, 992f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1159f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global3.x))))));
    var var_2 = true;
    global1 = array<Struct_1, 1>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-717f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-581f, -710f))))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-268f, _wgslsmith_f_op_f32(floor(106f)))));
}

fn func_1() -> Struct_2 {
    global2 = array<Struct_1, 32>();
    global3 = select(select(vec3<bool>(global3.x, global3.x | global3.x, !global3.x), vec3<bool>((true || global3.x) != func_2(), !all(global3.yz), u_input.b <= (u_input.a.x ^ u_input.b)), global3.x), select(vec3<bool>(any(vec2<bool>(global3.x, false)) || any(vec4<bool>(true, false, global3.x, true)), true, global3.x), select(vec3<bool>(all(vec3<bool>(global3.x, true, global3.x)), true, true), select(vec3<bool>(global3.x, true, global3.x), select(vec3<bool>(global3.x, false, global3.x), vec3<bool>(false, global3.x, true), global3.x), true), select(select(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(global3.x, global3.x, false), false), vec3<bool>(false, true, true), true)), all(vec2<bool>(true, false))), !(!(!any(vec3<bool>(true, global3.x, global3.x)))));
    var var_0 = 0u;
    global0 = Struct_2(global4.a);
    let var_1 = ~(~global4.a);
    return Struct_2(_wgslsmith_dot_vec3_u32(abs(_wgslsmith_add_vec3_u32(vec3<u32>(var_1, 4294967295u, global4.a), vec3<u32>(global4.a, 0u, 0u)) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(global0.a, 29656u, 0u), vec3<u32>(7329u, u_input.d.x, 0u))), ~abs(~vec3<u32>(u_input.d.x, 19722u, global4.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_1();
    global1 = array<Struct_1, 1>();
    global0 = Struct_2(~func_1().a);
    let var_0 = min(max(vec2<i32>(~firstLeadingBit(u_input.b), -3616i), firstTrailingBit(abs(u_input.a))), ~(-u_input.a));
    let var_1 = _wgslsmith_mult_vec2_i32(~vec2<i32>(_wgslsmith_sub_i32(select(0i, 21179i, true), 45395i), -72015i), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.a), ~var_0), 1i), ~abs(u_input.a >> (vec2<u32>(54983u, global4.a) % vec2<u32>(32u)))));
    var var_2 = Struct_1(~(~(~(~vec4<u32>(104026u, 4294967295u, u_input.d.x, 39931u)))), var_0.x, _wgslsmith_clamp_u32(~global0.a, max(reverseBits(global4.a), u_input.d.x), ~1u), var_1, ~select(max(~vec3<u32>(global4.a, 1u, 37671u), ~vec3<u32>(global4.a, 0u, 69476u)), firstTrailingBit(vec3<u32>(23540u, global4.a, u_input.d.x)) | vec3<u32>(101587u, u_input.d.x, 8667u), !vec3<bool>(true, global3.x, global3.x)));
    var var_3 = -_wgslsmith_mod_vec4_i32(~(-_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, u_input.c, var_1.x, var_1.x), vec4<i32>(0i, -16161i, var_0.x, 2147483647i))), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, 0i, 19299i, _wgslsmith_sub_i32(var_1.x, -1958i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, var_1.x, -5536i, var_2.b), vec4<i32>(var_2.b, var_0.x, u_input.a.x, 71514i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1372f, 1007f), vec2<f32>(-1446f, 580f), false)) + vec2<f32>(-215f, -172f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-498f + _wgslsmith_f_op_f32(1527f - 699f)) - -196f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + _wgslsmith_f_op_f32(func_3(global3.x)))), -403f, _wgslsmith_div_f32(-1246f, _wgslsmith_f_op_f32(f32(-1f) * -198f))), _wgslsmith_f_op_f32(349f + _wgslsmith_f_op_f32(f32(-1f) * -1757f)));
}

