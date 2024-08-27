struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(Struct_2(Struct_1(vec2<f32>(228f, 1011f), 1252f, 439f), Struct_1(vec2<f32>(1000f, -532f), 1263f, 783f), vec3<u32>(1u, 52277u, 0u))), Struct_3(Struct_2(Struct_1(vec2<f32>(-246f, 1000f), -276f, -592f), Struct_1(vec2<f32>(-471f, -1178f), -1020f, 679f), vec3<u32>(73695u, 14517u, 4294967295u))), Struct_3(Struct_2(Struct_1(vec2<f32>(1949f, -2323f), -566f, -1762f), Struct_1(vec2<f32>(-1478f, 1223f), 1083f, -697f), vec3<u32>(35922u, 1u, 16574u))), Struct_3(Struct_2(Struct_1(vec2<f32>(857f, -429f), 487f, 230f), Struct_1(vec2<f32>(-683f, -342f), -782f, 1258f), vec3<u32>(1320u, 0u, 4294967295u))), Struct_3(Struct_2(Struct_1(vec2<f32>(148f, -848f), -798f, 1000f), Struct_1(vec2<f32>(-1094f, 220f), -2007f, -893f), vec3<u32>(4294967295u, 17940u, 13082u))), Struct_3(Struct_2(Struct_1(vec2<f32>(746f, -850f), 339f, 110f), Struct_1(vec2<f32>(-297f, -883f), 151f, 529f), vec3<u32>(4294967295u, 1u, 0u))), Struct_3(Struct_2(Struct_1(vec2<f32>(-892f, -485f), 1695f, 1000f), Struct_1(vec2<f32>(1058f, -1185f), -1174f, 562f), vec3<u32>(92066u, 62296u, 42428u))), Struct_3(Struct_2(Struct_1(vec2<f32>(-132f, -195f), 281f, 570f), Struct_1(vec2<f32>(379f, 1394f), -463f, 1372f), vec3<u32>(0u, 0u, 18007u))), Struct_3(Struct_2(Struct_1(vec2<f32>(1758f, -1290f), 1000f, 154f), Struct_1(vec2<f32>(-444f, -1336f), 732f, 636f), vec3<u32>(51201u, 0u, 35800u))), Struct_3(Struct_2(Struct_1(vec2<f32>(933f, -481f), -1214f, -283f), Struct_1(vec2<f32>(-1000f, -721f), 729f, 197f), vec3<u32>(46288u, 1u, 4294967295u))));

var<private> global1: vec2<i32> = vec2<i32>(0i, -9832i);

var<private> global2: vec3<bool>;

var<private> global3: array<vec4<u32>, 27> = array<vec4<u32>, 27>(vec4<u32>(1u, 4294967295u, 4294967295u, 78905u), vec4<u32>(3403u, 80036u, 0u, 32908u), vec4<u32>(92978u, 21485u, 0u, 4294967295u), vec4<u32>(1u, 0u, 8122u, 7038u), vec4<u32>(40862u, 4294967295u, 605u, 61077u), vec4<u32>(45821u, 58108u, 1u, 0u), vec4<u32>(1u, 4294967295u, 1u, 20611u), vec4<u32>(43833u, 62803u, 28300u, 16859u), vec4<u32>(0u, 35447u, 1u, 8573u), vec4<u32>(4294967295u, 0u, 1u, 22469u), vec4<u32>(31751u, 1u, 27161u, 0u), vec4<u32>(0u, 0u, 42935u, 0u), vec4<u32>(80362u, 31447u, 4294967295u, 32270u), vec4<u32>(22925u, 4294967295u, 0u, 1u), vec4<u32>(4294967295u, 43816u, 0u, 1750u), vec4<u32>(0u, 3705u, 7598u, 1u), vec4<u32>(78344u, 4294967295u, 1u, 1u), vec4<u32>(57955u, 1u, 52492u, 1u), vec4<u32>(4294967295u, 1u, 82933u, 1614u), vec4<u32>(1u, 4294967295u, 0u, 88032u), vec4<u32>(20548u, 33444u, 0u, 0u), vec4<u32>(4294967295u, 16817u, 0u, 45153u), vec4<u32>(4294967295u, 20145u, 63638u, 4294967295u), vec4<u32>(41551u, 4294967295u, 7152u, 48792u), vec4<u32>(24788u, 19599u, 4294967295u, 1u), vec4<u32>(22496u, 1u, 1u, 69507u), vec4<u32>(55143u, 0u, 0u, 0u));

var<private> global4: u32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    let var_0 = Struct_1(arg_1.a, _wgslsmith_f_op_f32(round(arg_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-943f + arg_1.c) - _wgslsmith_div_f32(arg_0.a.b.a.x, arg_1.b)) * arg_2.a.b)));
    let var_1 = 4294967295u;
    var var_2 = i32(-1i) * -(i32(-1i) * -global1.x);
    global2 = vec3<bool>(true, true, !global2.x);
    let var_3 = _wgslsmith_f_op_f32(exp2(arg_1.b));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.a.b * -1250f)));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = ~(~global1.x ^ reverseBits(_wgslsmith_clamp_i32(_wgslsmith_div_i32(0i, global1.x), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), vec2<i32>(77272i, -2757i)), global1.x)));
    global4 = 1u << (~_wgslsmith_dot_vec3_u32(arg_2, _wgslsmith_mod_vec3_u32(arg_2, vec3<u32>(arg_2.x, 1u, 7861u))) % 32u);
    var var_1 = Struct_2(Struct_1(arg_1.zz, arg_1.x, _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(u_input.a, 10u)], Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_1.x)), _wgslsmith_div_f32(arg_1.x, 1960f), _wgslsmith_div_f32(607f, arg_1.x)), Struct_2(Struct_1(vec2<f32>(arg_1.x, arg_1.x), arg_1.x, -1907f), Struct_1(arg_1.ww, arg_1.x, arg_1.x), abs(arg_2))))), Struct_1(arg_1.wz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - arg_1.x) - arg_1.x), _wgslsmith_f_op_f32(-arg_1.x)), reverseBits(arg_2));
    var var_2 = _wgslsmith_f_op_f32(-arg_1.x);
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.a << (0u % 32u), 57965u, _wgslsmith_dot_vec4_u32(vec4<u32>(27395u, u_input.a, arg_2.x, 0u), vec4<u32>(45238u, 51046u, 4294967295u, 12824u)))) & vec3<u32>(arg_2.x, arg_2.x | min(u_input.a, u_input.a), var_1.c.x), arg_2), 10u)];
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(arg_1.x, var_1.a.c))))), var_1.b.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), -901f) - 190f))));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_2(func_2(firstLeadingBit(~(-vec3<i32>(global1.x, -38111i, 2147483647i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.c, arg_0.b.a.x, -1209f, 243f))) * vec4<f32>(arg_0.a.b, _wgslsmith_f_op_f32(-arg_0.b.c), arg_0.a.b, _wgslsmith_f_op_f32(f32(-1f) * -1136f))), vec3<u32>(reverseBits(u_input.a), select(~3762u, ~0u, global2.x), 1u)), arg_0.b, select(vec3<u32>(~arg_0.c.x >> (0u % 32u), 68834u, arg_0.c.x), ~_wgslsmith_div_vec3_u32(max(arg_0.c, arg_0.c), ~vec3<u32>(4294967295u, 55565u, u_input.a)), global2.x));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b.b), 1242f) + vec2<f32>(-1000f, _wgslsmith_f_op_f32(122f + 602f)))), var_0.b.a.x, arg_0.b.a.x);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(arg_1.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(arg_0.xyx, vec4<f32>(arg_1.a.x, arg_1.b, arg_1.a.x, -1392f), vec3<u32>(4294967295u, 63988u, 17512u)).b - arg_1.b), 606f)), -747f), func_1(Struct_2(func_1(Struct_2(Struct_1(vec2<f32>(-1000f, -741f), arg_1.b, -1419f), Struct_1(vec2<f32>(-1747f, 115f), arg_1.b, arg_1.c), vec3<u32>(arg_2, 18573u, 83585u))), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.c, -2739f), vec2<f32>(arg_1.c, arg_1.a.x)), arg_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), max(countOneBits(vec3<u32>(4294967295u, arg_2, 0u)), firstLeadingBit(vec3<u32>(arg_2, arg_2, 18470u))))), ~(~select(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.a), vec3<u32>(arg_2, 4294967295u, 1u)), ~vec3<u32>(29544u, u_input.a, 0u), true || global2.x)));
    global4 = ~_wgslsmith_clamp_u32(~var_0.c.x, 1u, 47u);
    global0 = array<Struct_3, 10>();
    let var_1 = Struct_3(Struct_2(func_2(vec3<i32>(-1i) * -vec3<i32>(arg_0.x, -1i, -47828i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-955f, arg_1.a.x, var_0.b.a.x, arg_1.a.x)), ~select(var_0.c, var_0.c, vec3<bool>(true, false, global2.x))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(694f - arg_1.b), _wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_f_op_f32(max(var_0.a.b, _wgslsmith_f_op_f32(-arg_1.a.x))), 169f), vec3<u32>(_wgslsmith_div_u32(7841u, firstTrailingBit(var_0.c.x)), reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, 31754u, arg_2), vec3<u32>(4294967295u, u_input.a, arg_2))), 47066u)));
    let var_2 = !select(select(!(!vec3<bool>(global2.x, global2.x, true)), !vec3<bool>(false, global2.x, true), all(vec4<bool>(global2.x, global2.x, true, global2.x))), select(select(vec3<bool>(true, global2.x, global2.x), vec3<bool>(global2.x, global2.x, global2.x), global2.x), select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, global2.x), vec3<bool>(global2.x, global2.x, true), true), var_0.a.c >= 3107f), select(vec3<bool>(false, global2.x, global2.x), vec3<bool>(global2.x, false, global2.x), select(vec3<bool>(global2.x, false, false), vec3<bool>(global2.x, true, true), global2.x))), global2.x);
    return var_0.a;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec3<u32>) -> f32 {
    global0 = array<Struct_3, 10>();
    global3 = array<vec4<u32>, 27>();
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(vec3<i32>(global1.x, -1i, -3387i), vec4<f32>(arg_1.b, arg_1.a.x, -1264f, 2031f), vec3<u32>(4294967295u, 1u, u_input.a)).a.x * _wgslsmith_f_op_f32(1130f - arg_1.b)))) + _wgslsmith_f_op_f32(1855f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * 367f))))));
    let var_1 = Struct_3(Struct_2(func_2(vec3<i32>(global1.x, 2147483647i, -global1.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1000f, 1000f, arg_0.x) * vec4<f32>(-817f, -1383f, arg_1.c, -160f)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.b, arg_1.b, arg_1.b, 342f), vec4<f32>(-1000f, -528f, arg_0.x, 357f)))), vec3<u32>(arg_3.x, arg_3.x << (78763u % 32u), arg_3.x | u_input.a)), arg_1, arg_3));
    global4 = _wgslsmith_clamp_u32(firstTrailingBit(arg_3.x), arg_3.x ^ abs(_wgslsmith_add_u32(1u, select(2161u, 1u, false))), 0u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2426f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 10>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(320f)), _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(982f, 487f, 245f), vec3<f32>(473f, -525f, -584f))), func_4(vec4<i32>(global1.x, 2147483647i, -2147483647i, -10346i) << (vec4<u32>(51961u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)), func_1(Struct_2(Struct_1(vec2<f32>(1037f, -1000f), 1017f, -886f), Struct_1(vec2<f32>(1000f, 1331f), 1709f, 374f), vec3<u32>(54842u, u_input.a, 1u))), ~11507u), global2.xx, abs(vec3<u32>(4294967295u, 1u, 4294967295u)))), func_2(~(vec3<i32>(1i, -10032i, global1.x) >> (vec3<u32>(u_input.a, 0u, 110501u) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-597f, -771f, -172f, -132f))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 48806u, 1u), vec3<u32>(6639u, 10360u, 0u))).b));
    var var_1 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a, 49361u, 49622u)), abs(vec3<u32>(u_input.a, u_input.a, u_input.a))), u_input.a, 4294967295u);
    let var_2 = global2.x;
    global2 = vec3<bool>(global2.x, global2.x, global2.x);
    var var_3 = countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(2506i, 0i), vec2<i32>(~2147483647i, -55226i)));
    var var_4 = Struct_3(Struct_2(func_2(countOneBits(vec3<i32>(var_3.x, -1i, global1.x)), vec4<f32>(var_0.x, -829f, _wgslsmith_f_op_f32(select(var_0.x, 442f, true)), var_0.x), ~_wgslsmith_add_vec3_u32(vec3<u32>(0u, 1u, var_1.x), vec3<u32>(u_input.a, u_input.a, 27131u))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(691f, -1923f) - _wgslsmith_f_op_vec2_f32(-var_0.zz)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(903f)), var_0.x), 493f), ~vec3<u32>(0u, _wgslsmith_mod_u32(var_1.x, 59777u), 1u)));
    var var_5 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(973f, -704f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-800f, var_4.a.b.a.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(611f, -847f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_4.a.b.a.x), var_0.x))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + -259f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.xx)))), -_wgslsmith_mult_i32(var_3.x, 2147483647i));
}

