struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec2<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(false, vec2<u32>(57406u, 4294967295u), vec4<i32>(-1i, 12922i, -15923i, 2147483647i), 1i), Struct_1(false, vec2<u32>(106047u, 17092u), vec4<i32>(39834i, -1i, -5746i, i32(-2147483648)), 1i), Struct_1(false, vec2<u32>(64510u, 42128u), vec4<i32>(9874i, 2147483647i, 31665i, 35076i), 2147483647i), Struct_1(true, vec2<u32>(23410u, 13983u), vec4<i32>(0i, 2147483647i, 0i, i32(-2147483648)), i32(-2147483648)), Struct_1(true, vec2<u32>(1u, 23110u), vec4<i32>(-14069i, 0i, i32(-2147483648), 1i), 2147483647i), Struct_1(true, vec2<u32>(74201u, 4294967295u), vec4<i32>(3626i, -1i, 0i, 36577i), 1i), Struct_1(false, vec2<u32>(17614u, 29807u), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 0i), 30120i), Struct_1(true, vec2<u32>(1u, 1u), vec4<i32>(1i, 1i, 3751i, 43414i), -21795i), Struct_1(false, vec2<u32>(0u, 1u), vec4<i32>(i32(-2147483648), -19796i, -23415i, -8374i), 0i), Struct_1(false, vec2<u32>(1u, 110424u), vec4<i32>(0i, -1i, 2147483647i, -1i), -12955i), Struct_1(false, vec2<u32>(1u, 0u), vec4<i32>(19878i, -24465i, 7432i, 1i), 1i), Struct_1(true, vec2<u32>(0u, 57852u), vec4<i32>(21269i, 54078i, -79964i, -4756i), -15197i), Struct_1(false, vec2<u32>(11933u, 1u), vec4<i32>(1493i, 6248i, 2147483647i, 2147483647i), 41654i), Struct_1(false, vec2<u32>(4294967295u, 0u), vec4<i32>(6297i, -19281i, i32(-2147483648), -1413i), 36667i), Struct_1(false, vec2<u32>(51666u, 16108u), vec4<i32>(1702i, -4445i, -1302i, -39706i), 0i), Struct_1(false, vec2<u32>(12458u, 4294967295u), vec4<i32>(-15363i, -12704i, -36415i, 1i), 0i), Struct_1(true, vec2<u32>(42756u, 21270u), vec4<i32>(22577i, -9554i, -30340i, -91622i), 58292i), Struct_1(false, vec2<u32>(50219u, 4294967295u), vec4<i32>(-11653i, -1i, 2147483647i, 2147483647i), i32(-2147483648)), Struct_1(false, vec2<u32>(4294967295u, 1u), vec4<i32>(35882i, -42754i, -1i, -1i), -31065i), Struct_1(true, vec2<u32>(4294967295u, 17215u), vec4<i32>(-1i, -1i, i32(-2147483648), i32(-2147483648)), -15075i), Struct_1(false, vec2<u32>(92334u, 30954u), vec4<i32>(16016i, -20914i, i32(-2147483648), -45469i), 2147483647i), Struct_1(false, vec2<u32>(39200u, 11168u), vec4<i32>(-8856i, i32(-2147483648), -39934i, -1i), i32(-2147483648)), Struct_1(false, vec2<u32>(63388u, 81813u), vec4<i32>(-12499i, 2147483647i, 0i, 1i), -1i), Struct_1(false, vec2<u32>(38827u, 39528u), vec4<i32>(47460i, 2147483647i, -52552i, 34394i), i32(-2147483648)), Struct_1(true, vec2<u32>(4294967295u, 1u), vec4<i32>(-3178i, -43956i, 0i, i32(-2147483648)), 47993i), Struct_1(true, vec2<u32>(4294967295u, 1u), vec4<i32>(-44695i, 2147483647i, -16133i, -57858i), 1i), Struct_1(false, vec2<u32>(4294967295u, 878u), vec4<i32>(0i, 10893i, -12215i, 10715i), -1i), Struct_1(true, vec2<u32>(4294967295u, 45884u), vec4<i32>(-1i, -1i, -16734i, -1i), i32(-2147483648)), Struct_1(true, vec2<u32>(4294967295u, 4294967295u), vec4<i32>(-16229i, 2147483647i, 2147483647i, -1i), 0i));

var<private> global2: array<f32, 13>;

var<private> global3: Struct_1 = Struct_1(true, vec2<u32>(0u, 79902u), vec4<i32>(15320i, 34801i, 2147483647i, -46990i), 1i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: bool, arg_3: vec2<f32>) -> u32 {
    global2 = array<f32, 13>();
    global2 = array<f32, 13>();
    var var_0 = global3.c.zx;
    let var_1 = (arg_1 ^ 0u) > (countOneBits(1u) ^ global3.b.x);
    let var_2 = vec4<i32>(~(-(i32(-1i) * -38921i)), -2147483647i, _wgslsmith_div_i32(u_input.a.x, var_0.x ^ 20126i), 31630i);
    return global3.b.x ^ 21284u;
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = ~vec4<u32>(global3.b.x, ~global3.b.x, select(arg_0.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global3.b.x, 4294967295u), vec3<u32>(global3.b.x, global3.b.x, 7053u)), all(vec3<bool>(global3.a, false, global3.a)) | any(vec4<bool>(true, true, global3.a, arg_0.a))), 0u);
    var var_1 = _wgslsmith_f_op_f32(round(454f));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.yx * vec2<f32>(-198f, -217f))), vec2<f32>(_wgslsmith_f_op_f32(max(-1665f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_0.b.x, 13u)] - -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -509f))));
    var var_3 = ~vec3<i32>(-10948i, global3.c.x, 1i);
    global3 = global1[_wgslsmith_index_u32(0u, 29u)];
    return arg_0.b.x;
}

fn func_1(arg_0: Struct_2) -> vec4<i32> {
    var var_0 = _wgslsmith_div_u32(func_2(select(select(vec2<bool>(true, true), !vec2<bool>(global3.a, arg_0.a.a), true), vec2<bool>(any(vec2<bool>(global3.a, global3.a)), true), vec2<bool>(global3.a, true)), _wgslsmith_dot_vec3_u32(vec3<u32>(global3.b.x, 0u, arg_0.a.b.x) & firstLeadingBit(vec3<u32>(arg_0.b.x, global3.b.x, 4294967295u)), vec3<u32>(4294967295u, 0u, ~arg_0.a.b.x)), any(!vec4<bool>(arg_0.a.a, arg_0.a.a, true, false)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -506f), _wgslsmith_f_op_f32(floor(global0.x)))))), func_3(Struct_1(false, arg_0.a.b, reverseBits(arg_0.a.c), reverseBits(arg_0.a.c.x << (global3.b.x % 32u)))));
    global1 = array<Struct_1, 29>();
    global1 = array<Struct_1, 29>();
    return vec4<i32>(_wgslsmith_dot_vec3_i32(global3.c.wyw ^ -(~global3.c.yyw), countOneBits(vec3<i32>(-arg_0.a.d, ~2147483647i, 1698i))), countOneBits(1i), _wgslsmith_dot_vec4_i32(countOneBits(select(abs(vec4<i32>(30661i, u_input.a.x, arg_0.a.d, arg_0.a.c.x)), ~vec4<i32>(u_input.a.x, 0i, arg_0.a.d, 0i), global3.a)), min(~arg_0.a.c, abs(vec4<i32>(u_input.a.x, 13322i, global3.c.x, 32018i))) >> ((vec4<u32>(global3.b.x, global3.b.x, 1u, 9425u) << (vec4<u32>(global3.b.x, 11024u, arg_0.b.x, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))), global3.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1((all(vec3<bool>(true, false, global3.a)) | (global3.b.x == ~global3.b.x)) & any(vec2<bool>(true, true)), ~vec2<u32>(min(max(global3.b.x, 27499u), global3.b.x << (global3.b.x % 32u)), 0u), func_1(Struct_2(Struct_1(false, vec2<u32>(global3.b.x, global3.b.x) & vec2<u32>(global3.b.x, 21179u), global3.c, -14744i), vec2<u32>(global3.b.x | global3.b.x, ~global3.b.x))), ~(0i >> ((global3.b.x >> (global3.b.x % 32u)) % 32u)));
    global1 = array<Struct_1, 29>();
    var var_1 = (~_wgslsmith_add_i32(~u_input.a.x, firstLeadingBit(1i)) << (global3.b.x % 32u)) << (_wgslsmith_dot_vec2_u32(global3.b, vec2<u32>(1u, ~0u)) % 32u);
    let var_2 = ~_wgslsmith_div_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(var_0.b.x, global3.b.x), 10112u, select(1652u, var_0.b.x, true), select(global3.b.x, 0u, var_0.a)), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b.x, 38475u, var_0.b.x, 4294967295u), vec4<u32>(var_0.b.x, 1u, 53652u, 16596u)), ~vec4<u32>(global3.b.x, var_0.b.x, 0u, global3.b.x))));
    let var_3 = global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(32556u, 65186u, var_0.b.x, 12350u) & vec4<u32>(17360u, var_0.b.x, global3.b.x, var_0.b.x)), vec4<u32>(_wgslsmith_mod_u32(var_0.b.x, global3.b.x), func_3(Struct_1(true, global3.b, vec4<i32>(var_0.c.x, 0i, global3.c.x, -28225i), u_input.a.x)), ~16139u, _wgslsmith_mult_u32(var_2, 4294967295u)))) >> (countOneBits(~17661u) % 32u), 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -var_0.c.x, abs(~(~vec2<u32>(59359u, 1212u))), global0.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u ^ global3.b.x, 19499u), 13u)], _wgslsmith_f_op_f32(f32(-1f) * -1282f)) * global0.zy), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1298f, -315f, global2[_wgslsmith_index_u32(39030u, 13u)], global2[_wgslsmith_index_u32(0u, 13u)]))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(62815u, 13u)], global0.x, global2[_wgslsmith_index_u32(var_3.b.x, 13u)], global0.x) * vec4<f32>(global2[_wgslsmith_index_u32(var_3.b.x, 13u)], 429f, 1049f, -225f)))))));
}

