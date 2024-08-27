struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(vec3<f32>(1000f, -108f, -769f), vec3<u32>(52016u, 56700u, 66829u)), Struct_3(vec3<f32>(766f, -638f, -945f), vec3<u32>(51317u, 3833u, 58433u)), Struct_3(vec3<f32>(333f, 1144f, 420f), vec3<u32>(0u, 1u, 38266u)), Struct_3(vec3<f32>(-624f, -201f, 2311f), vec3<u32>(6151u, 4294967295u, 53548u)), Struct_3(vec3<f32>(-475f, 515f, 479f), vec3<u32>(23178u, 4294967295u, 1u)), Struct_3(vec3<f32>(1566f, -2786f, -356f), vec3<u32>(53090u, 18135u, 0u)), Struct_3(vec3<f32>(-990f, -610f, 1357f), vec3<u32>(4294967295u, 63015u, 1u)), Struct_3(vec3<f32>(526f, 1190f, 2309f), vec3<u32>(17993u, 4294967295u, 0u)), Struct_3(vec3<f32>(-1659f, 653f, 980f), vec3<u32>(34167u, 24427u, 1u)), Struct_3(vec3<f32>(1324f, 1412f, 537f), vec3<u32>(44091u, 8371u, 0u)), Struct_3(vec3<f32>(697f, -1000f, 135f), vec3<u32>(4294967295u, 34576u, 37820u)), Struct_3(vec3<f32>(-1394f, 1132f, -791f), vec3<u32>(1u, 0u, 0u)), Struct_3(vec3<f32>(-1020f, -423f, -725f), vec3<u32>(0u, 0u, 4294967295u)));

var<private> global1: array<Struct_4, 24>;

var<private> global2: vec4<i32>;

var<private> global3: array<bool, 15>;

var<private> global4: vec4<u32> = vec4<u32>(52524u, 0u, 30167u, 36645u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> i32 {
    var var_0 = ~select(vec4<u32>(u_input.d, countOneBits(37617u), ~global4.x, max(0u, 4294967295u)) & abs(vec4<u32>(26382u, u_input.e.x, 4294967295u, 20301u)), ~reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.d, 34431u, 4294967295u), vec4<u32>(28947u, global4.x, 0u, 1u))), global3[_wgslsmith_index_u32(33978u, 15u)]);
    global2 = firstLeadingBit(reverseBits(u_input.b));
    var var_1 = !(!vec4<bool>(global3[_wgslsmith_index_u32(abs(u_input.c), 15u)], true, global3[_wgslsmith_index_u32(global4.x, 15u)], global3[_wgslsmith_index_u32(~(global4.x | 143028u), 15u)]));
    var_0 = vec4<u32>(~15993u, ~u_input.e.x << (37709u % 32u), 116920u | _wgslsmith_clamp_u32(0u, firstLeadingBit(u_input.c >> (u_input.e.x % 32u)), 4294967295u | firstTrailingBit(56959u)), _wgslsmith_mod_u32(global4.x, _wgslsmith_mod_u32(0u, _wgslsmith_add_u32(u_input.d, global4.x))));
    var var_2 = Struct_5(_wgslsmith_f_op_f32(ceil(555f)));
    return 0i;
}

fn func_4(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: Struct_5, arg_3: i32) -> vec4<bool> {
    global0 = array<Struct_3, 13>();
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.a, 1885f, _wgslsmith_f_op_f32(sign(arg_0.a)), arg_0.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.a, 701f, -537f, arg_2.a))))) * vec4<f32>(-2232f, 1625f, _wgslsmith_f_op_f32(step(arg_0.a, arg_0.a)), _wgslsmith_f_op_f32(-386f - arg_0.a))))));
    let var_1 = 684f;
    global0 = array<Struct_3, 13>();
    global2 = u_input.b;
    return vec4<bool>(_wgslsmith_f_op_f32(-272f - _wgslsmith_f_op_f32(-arg_2.a)) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 - arg_0.a), _wgslsmith_f_op_f32(arg_2.a - arg_0.a))), true, false, all(arg_1));
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: f32) -> vec4<u32> {
    global0 = array<Struct_3, 13>();
    global2 = vec4<i32>(~(41531i & _wgslsmith_dot_vec2_i32(abs(global2.zy), select(u_input.b.wz, vec2<i32>(-8424i, u_input.a), vec2<bool>(true, true)))), -global2.x, ~_wgslsmith_add_i32(max(-u_input.b.x, 1i << (0u % 32u)), 1i), global2.x);
    var var_0 = -1595f;
    let var_1 = select(vec3<u32>(~17633u, u_input.e.x, reverseBits(arg_0.x)), global4.zxw, any(func_4(Struct_5(-1000f), !vec3<bool>(global3[_wgslsmith_index_u32(arg_0.x, 15u)], true, true), Struct_5(arg_1), func_3() >> (max(72229u, arg_0.x) % 32u))));
    global2 = _wgslsmith_mod_vec4_i32(abs(u_input.b), ~u_input.b);
    return select(~abs(vec4<u32>(~var_1.x, u_input.c, global4.x, 1u)), ~vec4<u32>(~(~var_1.x), 4294967295u, _wgslsmith_dot_vec4_u32(max(vec4<u32>(4294967295u, 4294967295u, 4294967295u, var_1.x), arg_0), arg_0), _wgslsmith_sub_u32(min(41774u, u_input.e.x), _wgslsmith_add_u32(arg_0.x, arg_0.x))), !(!vec4<bool>(true, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(33503u, arg_0.x), 15u)], true, global3[_wgslsmith_index_u32(arg_0.x, 15u)])));
}

fn func_1() -> Struct_1 {
    let var_0 = ~(_wgslsmith_clamp_vec2_u32(abs(global4.yz), _wgslsmith_add_vec2_u32(~u_input.e, u_input.e), ~(u_input.e << (vec2<u32>(global4.x, 30595u) % vec2<u32>(32u)))) >> (global4.wx % vec2<u32>(32u)));
    let var_1 = all(!(!select(vec4<bool>(global3[_wgslsmith_index_u32(2631u, 15u)], false, global3[_wgslsmith_index_u32(39372u, 15u)], false), select(vec4<bool>(global3[_wgslsmith_index_u32(0u, 15u)], true, global3[_wgslsmith_index_u32(0u, 15u)], false), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.e.x, 15u)], global3[_wgslsmith_index_u32(0u, 15u)], false), vec4<bool>(global3[_wgslsmith_index_u32(87283u, 15u)], false, global3[_wgslsmith_index_u32(global4.x, 15u)], true)), false || global3[_wgslsmith_index_u32(global4.x, 15u)])));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -370f)) - _wgslsmith_f_op_f32(1239f - -1473f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-540f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(344f, 844f)), -1000f))));
    global4 = ~(~min(~vec4<u32>(u_input.d, 1u, global4.x, u_input.e.x), vec4<u32>(861u, firstTrailingBit(var_0.x), global4.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 91565u, 10893u), vec4<u32>(0u, 1u, u_input.e.x, 4294967295u)))));
    let var_3 = u_input.a;
    return Struct_1(~(~func_2(~vec4<u32>(global4.x, 0u, 4294967295u, global4.x), _wgslsmith_f_op_f32(round(1081f)), -559f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(global4.x, 24u)];
    let var_1 = -27905i;
    let var_2 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_f32(-1f)), _wgslsmith_clamp_vec3_u32(countOneBits(var_0.a.a.wyw), vec3<u32>(1u, 0u, firstLeadingBit(~39242u)), vec3<u32>(4294967295u, 64921u, _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.c, var_0.a.a.x), reverseBits(u_input.d)))));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -475f), func_1(), func_1(), u_input.e.x);
    let var_4 = func_4(Struct_5(1f), select(vec3<bool>(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.a.a.x, var_2.b.x), 15u)], all(!vec4<bool>(global3[_wgslsmith_index_u32(1u, 15u)], false, global3[_wgslsmith_index_u32(48523u, 15u)], true)), true), !func_4(Struct_5(-186f), vec3<bool>(false, global3[_wgslsmith_index_u32(35497u, 15u)], false), Struct_5(var_0.b.x), 2147483647i).yyw, select(select(!vec3<bool>(global3[_wgslsmith_index_u32(48001u, 15u)], global3[_wgslsmith_index_u32(87429u, 15u)], true), vec3<bool>(false, false, global3[_wgslsmith_index_u32(u_input.d, 15u)]), vec3<bool>(false, false, false)), vec3<bool>(false, true, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 4294967295u), 15u)]), select(vec3<bool>(false, global3[_wgslsmith_index_u32(global4.x, 15u)], true), vec3<bool>(true, global3[_wgslsmith_index_u32(25260u, 15u)], global3[_wgslsmith_index_u32(var_3.b.a.x, 15u)]), select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.e.x, 15u)], false, true), vec3<bool>(global3[_wgslsmith_index_u32(var_2.b.x, 15u)], true, global3[_wgslsmith_index_u32(27584u, 15u)]), false)))), Struct_5(-456f), ~var_1).zwx;
    global0 = array<Struct_3, 13>();
    var var_5 = ~_wgslsmith_sub_u32(global4.x, ~_wgslsmith_dot_vec2_u32(var_2.b.xz >> (var_2.b.yz % vec2<u32>(32u)), global4.wy >> (vec2<u32>(global4.x, 1u) % vec2<u32>(32u))));
    let var_6 = func_4(Struct_5(_wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(f32(-1f) * -649f))), select(!var_4, select(!(!var_4), var_4, !vec3<bool>(false, global3[_wgslsmith_index_u32(var_0.a.a.x, 15u)], global3[_wgslsmith_index_u32(global4.x, 15u)])), !(!(!var_4))), Struct_5(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1260f)))))), ~1i).zxw;
    global2 = ~_wgslsmith_mult_vec4_i32(vec4<i32>(-global2.x, max(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), u_input.a), -global2.x ^ _wgslsmith_mod_i32(1i, global2.x), 20460i), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(132f, 617f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-var_2.a.x))), abs(_wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(global2.x, global2.x, global2.x, -36334i), u_input.b)), vec4<i32>(-1i) * -u_input.b)), ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, 1i, 0i), -vec3<i32>(u_input.b.x, 2201i, 2147483647i))));
}

