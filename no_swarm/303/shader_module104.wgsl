struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(false, vec4<u32>(1u, 35358u, 4294967295u, 4294967295u), 106346u, 0i, 0u), Struct_1(false, vec4<u32>(0u, 51240u, 1u, 3519u), 20566u, 9458i, 7517u), Struct_1(false, vec4<u32>(1u, 22498u, 1u, 32026u), 28534u, 2147483647i, 9621u), Struct_1(true, vec4<u32>(9708u, 1u, 28710u, 92308u), 25642u, 2147483647i, 4294967295u), Struct_1(false, vec4<u32>(71610u, 4294967295u, 64850u, 4294967295u), 4482u, -5154i, 0u), Struct_1(true, vec4<u32>(9141u, 31602u, 105063u, 15631u), 3570u, 16673i, 0u), Struct_1(false, vec4<u32>(70049u, 1u, 4294967295u, 90911u), 26718u, 27372i, 0u), Struct_1(true, vec4<u32>(4294967295u, 8906u, 0u, 25247u), 4294967295u, 2147483647i, 0u), Struct_1(true, vec4<u32>(0u, 0u, 4294967295u, 0u), 123425u, 14926i, 4294967295u), Struct_1(false, vec4<u32>(0u, 1u, 57703u, 23178u), 6080u, 2147483647i, 61332u), Struct_1(false, vec4<u32>(14563u, 942u, 79573u, 1u), 0u, -1i, 10880u), Struct_1(true, vec4<u32>(0u, 1u, 4294967295u, 1u), 0u, 9769i, 36083u), Struct_1(true, vec4<u32>(4294967295u, 0u, 109759u, 10967u), 28617u, i32(-2147483648), 4294967295u), Struct_1(false, vec4<u32>(63659u, 39481u, 4294967295u, 1u), 13959u, 2147483647i, 0u), Struct_1(false, vec4<u32>(38279u, 37074u, 0u, 4294967295u), 5943u, -22647i, 0u), Struct_1(false, vec4<u32>(1u, 44176u, 0u, 36580u), 0u, 32993i, 61826u), Struct_1(false, vec4<u32>(104747u, 4294967295u, 66456u, 71491u), 64460u, -23624i, 1354u), Struct_1(true, vec4<u32>(65646u, 22370u, 0u, 1u), 4294967295u, 27894i, 4294967295u), Struct_1(true, vec4<u32>(0u, 1u, 74092u, 4294967295u), 37312u, 1i, 4294967295u), Struct_1(true, vec4<u32>(4294967295u, 4294967295u, 0u, 8121u), 1u, -43635i, 0u), Struct_1(true, vec4<u32>(1u, 1u, 4294967295u, 1u), 4294967295u, i32(-2147483648), 1u), Struct_1(true, vec4<u32>(1u, 1u, 11411u, 4294967295u), 2762u, 2147483647i, 0u), Struct_1(true, vec4<u32>(0u, 42688u, 1u, 1u), 26658u, 36681i, 1u));

var<private> global1: Struct_1 = Struct_1(false, vec4<u32>(16128u, 4294967295u, 4294967295u, 25986u), 33756u, 1i, 1u);

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(false, vec4<u32>(24314u, 1u, 13938u, 0u), 1u, 19805i, 4294967295u), Struct_1(true, vec4<u32>(34592u, 0u, 1u, 4294967295u), 2567u, i32(-2147483648), 104632u), Struct_1(true, vec4<u32>(41621u, 4294967295u, 112762u, 5149u), 33915u, 1i, 14116u), Struct_1(true, vec4<u32>(1u, 82406u, 43483u, 4294967295u), 0u, i32(-2147483648), 1u), Struct_1(true, vec4<u32>(48175u, 48006u, 63527u, 0u), 4294967295u, 6902i, 1u), Struct_1(true, vec4<u32>(4294967295u, 0u, 1u, 12760u), 4294967295u, 2147483647i, 1u), Struct_1(false, vec4<u32>(1u, 0u, 55267u, 74136u), 0u, 0i, 1u), Struct_1(false, vec4<u32>(1u, 1u, 8989u, 81048u), 1u, 18674i, 45152u), Struct_1(true, vec4<u32>(2187u, 4294967295u, 74271u, 4294967295u), 0u, i32(-2147483648), 20702u), Struct_1(false, vec4<u32>(1u, 1u, 4294967295u, 0u), 4294967295u, 1i, 0u), Struct_1(true, vec4<u32>(0u, 1u, 0u, 1u), 7921u, 53367i, 35489u), Struct_1(true, vec4<u32>(0u, 25579u, 82360u, 27746u), 1u, i32(-2147483648), 0u), Struct_1(true, vec4<u32>(1u, 118650u, 20883u, 0u), 1u, -1i, 0u), Struct_1(false, vec4<u32>(1u, 1u, 90137u, 0u), 1u, 2147483647i, 19876u), Struct_1(true, vec4<u32>(41087u, 0u, 1u, 17062u), 16064u, 1i, 7992u), Struct_1(true, vec4<u32>(0u, 4294967295u, 4294967295u, 48391u), 34201u, 62752i, 18523u), Struct_1(true, vec4<u32>(81873u, 1u, 1138u, 0u), 0u, 12396i, 62984u), Struct_1(true, vec4<u32>(38466u, 8913u, 67952u, 0u), 1u, 22847i, 7788u), Struct_1(true, vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), 0u, 1i, 86823u), Struct_1(true, vec4<u32>(49749u, 0u, 12562u, 50975u), 1u, 12939i, 1u), Struct_1(false, vec4<u32>(102058u, 55113u, 27856u, 77339u), 4294967295u, 2147483647i, 1u), Struct_1(true, vec4<u32>(81258u, 32679u, 4294967295u, 1u), 35746u, 0i, 31402u), Struct_1(true, vec4<u32>(1715u, 47017u, 33700u, 0u), 1u, -52057i, 57384u), Struct_1(false, vec4<u32>(8388u, 1u, 4294967295u, 24454u), 30282u, i32(-2147483648), 73701u), Struct_1(true, vec4<u32>(18265u, 28779u, 1u, 0u), 0u, -22062i, 1u), Struct_1(false, vec4<u32>(1u, 0u, 1u, 0u), 1u, 8231i, 19081u), Struct_1(false, vec4<u32>(10590u, 4522u, 4294967295u, 4294967295u), 1u, 1i, 102385u), Struct_1(true, vec4<u32>(62980u, 62130u, 1u, 13822u), 1u, -54827i, 15184u), Struct_1(false, vec4<u32>(12619u, 1u, 1149u, 0u), 4294967295u, 1i, 25533u), Struct_1(true, vec4<u32>(4294967295u, 1u, 33436u, 43207u), 14543u, -77702i, 1u), Struct_1(false, vec4<u32>(69303u, 58211u, 4294967295u, 4294967295u), 37068u, -63155i, 4294967295u), Struct_1(true, vec4<u32>(36715u, 0u, 0u, 0u), 22404u, -1i, 24279u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: Struct_1) -> u32 {
    let var_0 = ~(~(vec4<u32>(0u, _wgslsmith_mod_u32(4294967295u, u_input.b), _wgslsmith_div_u32(arg_1.x, 32325u), _wgslsmith_add_u32(global1.e, arg_1.x)) << (vec4<u32>(0u ^ arg_1.x, ~1u, 29941u | arg_1.x, _wgslsmith_dot_vec4_u32(global1.b, vec4<u32>(0u, global1.b.x, arg_2.b.x, u_input.b))) % vec4<u32>(32u))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, -1285f)) * -656f))) - -397f);
    let var_2 = _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(global1.c, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, arg_2.c, u_input.e), var_0), 1u), select(vec4<u32>(4294967295u, arg_1.x, 1u, 0u), countOneBits(vec4<u32>(4294967295u, 56299u, u_input.e, var_0.x)), global1.a) ^ _wgslsmith_div_vec4_u32(~arg_2.b, ~vec4<u32>(var_0.x, 26764u, 7593u, global1.c))), vec4<u32>(~(~max(u_input.d, arg_1.x)), firstLeadingBit(0u), 4294967295u, ~arg_2.c));
    global1 = global2[_wgslsmith_index_u32(10780u, 32u)];
    var var_3 = Struct_1(~countOneBits(arg_2.b.x) <= _wgslsmith_add_u32(~reverseBits(var_0.x), abs(select(51625u, 1090u, true))), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(var_0, var_0), var_0), 41078u, arg_2.d ^ (_wgslsmith_sub_i32(0i, -arg_2.d) >> (var_2.x % 32u)), ~1u);
    return ~_wgslsmith_clamp_u32(~countOneBits(_wgslsmith_div_u32(var_3.e, 30478u)), ~6977u, firstTrailingBit(41555u | (4294967295u << (var_3.e % 32u))));
}

fn func_2(arg_0: f32, arg_1: vec4<bool>) -> i32 {
    let var_0 = global2[_wgslsmith_index_u32(u_input.d, 32u)];
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-501f))) - _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(abs(315f)))))), arg_0);
    var var_2 = vec2<u32>(0u, 63767u);
    global2 = array<Struct_1, 32>();
    let var_3 = Struct_1(false, vec4<u32>(35550u | ~var_2.x, func_3(select(vec4<bool>(true, false, false, true), vec4<bool>(global1.a, true, true, arg_1.x), all(arg_1)), vec4<u32>(global1.c, ~u_input.d, 90401u, ~4294967295u), Struct_1(all(arg_1), ~vec4<u32>(11539u, 1u, var_0.b.x, u_input.e), 3858u, u_input.a.x, 4294967295u)), 59636u, ~40443u), var_0.b.x, _wgslsmith_add_i32(min(_wgslsmith_dot_vec3_i32(vec3<i32>(-14085i, -29696i, 19472i), abs(vec3<i32>(u_input.a.x, 0i, 0i))), min(_wgslsmith_add_i32(var_0.d, -2147483647i), 0i)), -_wgslsmith_add_i32(max(0i, u_input.a.x), var_0.d ^ u_input.c)), 49874u);
    return -7615i;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> i32 {
    return max(arg_3.d, func_2(-668f, !(!select(vec4<bool>(true, false, true, global1.a), vec4<bool>(arg_0, false, arg_3.a, false), vec4<bool>(global1.a, global1.a, arg_1.a, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 32>();
    var var_0 = Struct_1(true, vec4<u32>(~(~global1.e), _wgslsmith_mult_u32(1u, _wgslsmith_clamp_u32(u_input.b, 40208u, 144755u)), 5966u, global1.e) >> (abs(~vec4<u32>(global1.e, 19414u, 1u, 41485u)) % vec4<u32>(32u)), 4294967295u, select((_wgslsmith_dot_vec2_i32(vec2<i32>(-44888i, -2772i), vec2<i32>(u_input.a.x, -11247i)) ^ func_1(global1.a, global0[_wgslsmith_index_u32(0u, 23u)], u_input.a.x, Struct_1(false, global1.b, 54331u, -1i, 16653u))) << (reverseBits(func_3(vec4<bool>(true, global1.a, global1.a, false), vec4<u32>(global1.c, 0u, global1.c, 473u), Struct_1(false, global1.b, 4294967295u, 35011i, u_input.e))) % 32u), u_input.c & _wgslsmith_dot_vec2_i32(-vec2<i32>(global1.d, -1522i), u_input.a << (vec2<u32>(4294967295u, 18609u) % vec2<u32>(32u))), global1.a), _wgslsmith_add_u32(u_input.b, ~1u));
    let var_1 = vec3<f32>(-1499f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1606f, 1000f) * _wgslsmith_f_op_f32(-380f - -462f)) + _wgslsmith_f_op_f32(f32(-1f) * -958f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1000f, -1001f))))) * _wgslsmith_f_op_f32(f32(-1f) * -128f)));
    let var_2 = select(any(!vec2<bool>(!var_0.a, true)), var_1.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1910f, var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -791f))) + _wgslsmith_f_op_f32(round(1853f))), true);
    var_0 = global2[_wgslsmith_index_u32(max(_wgslsmith_add_u32(_wgslsmith_add_u32(14308u, select(~global1.b.x, ~global1.c, var_0.a)), 775u), _wgslsmith_clamp_u32(13009u, var_0.e, _wgslsmith_add_u32(_wgslsmith_add_u32(abs(var_0.e), abs(u_input.b)), ~select(1u, 23230u, var_2)))), 32u)];
    var var_3 = !all(!(!(!vec2<bool>(true, var_0.a))));
    var var_4 = Struct_1(!all(vec3<bool>(var_0.a, global1.a, any(vec3<bool>(global1.a, global1.a, var_0.a)))), _wgslsmith_mod_vec4_u32(global1.b, global1.b), 56364u | ~var_0.c, global1.d << (~firstTrailingBit(countOneBits(var_0.e)) % 32u), _wgslsmith_add_u32(~_wgslsmith_clamp_u32(~0u, select(4294967295u, global1.b.x, true), u_input.d), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(global1.b, var_0.b), firstTrailingBit(var_0.d));
}

