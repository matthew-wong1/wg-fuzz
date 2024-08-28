struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_2,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(false, true, false, true, false, true, false, true, false, false, false, false, true, false, true);

var<private> global1: array<Struct_1, 31>;

var<private> global2: Struct_4;

var<private> global3: bool;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = Struct_2(~(~vec4<u32>(firstTrailingBit(u_input.b), 4294967295u, 1u ^ u_input.c, _wgslsmith_add_u32(62059u, u_input.b))), global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(~8087u, 31u)]);
    var_0 = Struct_2(var_0.a, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_0.b.a))), _wgslsmith_mult_u32(reverseBits(1u), var_0.b.e.x), _wgslsmith_sub_i32(global2.a, ~(1i | var_0.b.c)), _wgslsmith_sub_i32(-2147483647i, _wgslsmith_add_i32(abs(var_0.c.c), global2.a)), _wgslsmith_clamp_vec3_u32(vec3<u32>(~u_input.c, u_input.a, 13356u), countOneBits(var_0.b.e), var_0.a.xzx)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * 1135f), arg_0, arg_0, var_0.c.a.x), var_0.b.e.x << (64143u % 32u), _wgslsmith_mult_i32(global2.a, 9913i), -_wgslsmith_mult_i32(abs(-85832i), var_0.b.d >> (12014u % 32u)), _wgslsmith_add_vec3_u32(var_0.c.e, var_0.c.e >> (var_0.a.xwy % vec3<u32>(32u)))));
    var var_1 = var_0.c.e.zy;
    global0 = array<bool, 15>();
    global3 = !global0[_wgslsmith_index_u32(u_input.b, 15u)];
    return abs(1u);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_5, arg_2: u32) -> vec4<i32> {
    var var_0 = Struct_2(_wgslsmith_mult_vec4_u32(vec4<u32>(20835u, 50777u, (arg_1.a.x >> (arg_2 % 32u)) >> (select(arg_2, 4294967295u, global0[_wgslsmith_index_u32(u_input.c, 15u)]) % 32u), ~arg_1.a.x), select(arg_1.a, arg_1.a, !vec4<bool>(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(u_input.b, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(0u, 15u)]))), Struct_1(vec4<f32>(1f, 1f, 1f, 1f), 23806u, abs(_wgslsmith_sub_i32(1i, arg_0.a)), 0i, select(vec3<u32>(_wgslsmith_div_u32(11003u, 2852u), ~arg_1.a.x, _wgslsmith_div_u32(6013u, u_input.c)), arg_1.a.yxx, global0[_wgslsmith_index_u32(abs(u_input.a), 15u)])), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(395f, 919f, -1129f, -166f) + vec4<f32>(-556f, -559f, -702f, -393f))))), max(u_input.c, 1u >> (_wgslsmith_mod_u32(1u, arg_1.a.x) % 32u)), _wgslsmith_mod_i32(~global2.a, countOneBits(i32(-1i) * -9925i)), _wgslsmith_mult_i32(global2.a >> (max(15762u, 0u) % 32u), _wgslsmith_clamp_i32(-7822i, arg_0.a, -430i)), ~arg_1.a.wyx));
    let var_1 = Struct_3(global1[_wgslsmith_index_u32(var_0.a.x, 31u)], vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.c.a.x)))), _wgslsmith_f_op_f32(trunc(var_0.b.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-460f)))), -331f), Struct_2(~_wgslsmith_div_vec4_u32(select(vec4<u32>(arg_1.a.x, 0u, 20697u, 4294967295u), var_0.a, false), vec4<u32>(var_0.c.b, arg_1.a.x, arg_1.a.x, var_0.b.b)), var_0.c, global1[_wgslsmith_index_u32(18094u, 31u)]), ~max(countOneBits(func_3(-580f)), ~u_input.a), Struct_2(~(~(~var_0.a)), Struct_1(var_0.c.a, ~(~var_0.c.e.x), ~arg_1.b.x, abs(1i), _wgslsmith_mult_vec3_u32(~var_0.b.e, arg_1.a.zzw)), Struct_1(vec4<f32>(1000f, 1646f, _wgslsmith_f_op_f32(1302f * -961f), 1137f), _wgslsmith_add_u32(21653u << (1u % 32u), arg_1.a.x), _wgslsmith_dot_vec3_i32(-arg_1.b.wwy, ~vec3<i32>(arg_0.a, var_0.b.c, 0i)), global2.a, arg_1.a.zww)));
    global0 = array<bool, 15>();
    let var_2 = -arg_1.b.x;
    var var_3 = Struct_5(var_1.c.a, -arg_1.b);
    return vec4<i32>(_wgslsmith_div_i32(select(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.e.c.c, -34669i, 5256i), var_3.b.zzw), ~1i, global0[_wgslsmith_index_u32(~(~arg_1.a.x), 15u)]), ~(arg_1.b.x << (23737u % 32u))), _wgslsmith_mod_i32(~var_3.b.x, _wgslsmith_add_i32(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a, -5868i, arg_0.a), vec3<i32>(global2.a, arg_0.a, var_2))), ~var_1.a.d)), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-(~arg_1.b.xww), vec3<i32>(-1i, _wgslsmith_sub_i32(arg_1.b.x, 11395i), _wgslsmith_dot_vec3_i32(vec3<i32>(19862i, var_2, 1i), arg_1.b.ywz))), vec3<i32>(abs(_wgslsmith_dot_vec3_i32(var_3.b.xyw, vec3<i32>(1i, arg_1.b.x, var_2))), ~(~27398i), var_1.a.c)), countOneBits(_wgslsmith_div_i32(var_0.b.c, arg_1.b.x)));
}

fn func_1() -> vec4<bool> {
    var var_0 = min(vec4<i32>(1i, -2147483647i, abs(~select(global2.a, global2.a, global0[_wgslsmith_index_u32(u_input.c, 15u)])), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(global2.a, 18380i), max(global2.a, global2.a), ~global2.a, -1i), func_2(Struct_4(12012i), Struct_5(vec4<u32>(46605u, u_input.b, 41407u, u_input.b), vec4<i32>(2147483647i, global2.a, 22894i, global2.a)), 5806u >> (u_input.a % 32u)))), _wgslsmith_add_vec4_i32(select(-_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, global2.a, global2.a, 0i), vec4<i32>(global2.a, global2.a, global2.a, global2.a)), _wgslsmith_mod_vec4_i32(select(vec4<i32>(global2.a, 0i, global2.a, global2.a), vec4<i32>(global2.a, -20561i, -2147483647i, global2.a), vec4<bool>(false, false, global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(15918u, 15u)])), vec4<i32>(global2.a, global2.a, global2.a, global2.a)), global0[_wgslsmith_index_u32(0u, 15u)]), _wgslsmith_add_vec4_i32(vec4<i32>(global2.a << (1171u % 32u), -global2.a, min(global2.a, global2.a), global2.a), min(countOneBits(vec4<i32>(-35094i, -2147483647i, 26021i, -2147483647i)), vec4<i32>(global2.a, -17467i, -14666i, -1i)))));
    global2 = Struct_4(_wgslsmith_mult_i32(max(max(~global2.a, -var_0.x), _wgslsmith_clamp_i32(1i, _wgslsmith_sub_i32(global2.a, var_0.x), ~var_0.x)), firstLeadingBit(~(~global2.a))));
    var var_1 = -17553i;
    global2 = Struct_4(36525i >> (~(~1u) % 32u));
    let var_2 = 4294967295u;
    return vec4<bool>(select(!(u_input.a >= var_2), true, true), all(vec4<bool>(!all(vec2<bool>(true, false)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~var_2, var_2), 15u)], global0[_wgslsmith_index_u32(~37905u, 15u)], all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 15u)], false, true), true)))), global0[_wgslsmith_index_u32(u_input.b, 15u)], all(vec4<bool>(!global0[_wgslsmith_index_u32(11384u, 15u)], !any(vec3<bool>(global0[_wgslsmith_index_u32(0u, 15u)], true, false)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a, var_2), ~68425u), 15u)], !(global2.a != var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-274f, 245f, 801f)))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1185f, 382f, -1552f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, 899f, -1008f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1216f, 205f, 1000f))), vec3<bool>(global0[_wgslsmith_index_u32(~u_input.c, 15u)], true, true))))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1981f))))) - _wgslsmith_div_f32(1000f, var_1.x)), -1276f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_1.x)))));
    var var_2 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-abs(vec2<i32>(global2.a, global2.a)) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(global2.a, global2.a), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, global2.a), vec2<i32>(384i, global2.a)), abs(vec2<i32>(-1i, global2.a))), ~((vec2<i32>(-13429i, global2.a) ^ vec2<i32>(26392i, global2.a)) ^ -vec2<i32>(-2147483647i, global2.a))), _wgslsmith_dot_vec2_i32(min(vec2<i32>(-2147483647i, global2.a), ~(-vec2<i32>(global2.a, 31684i))), ~vec2<i32>(global2.a << (u_input.b % 32u), 2147483647i)));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, _wgslsmith_div_u32(4294967295u, select(1u, u_input.a, true))), 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(40804u);
}

