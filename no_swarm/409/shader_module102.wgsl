struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: bool,
}

struct Struct_5 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1924f;

var<private> global1: Struct_3;

var<private> global2: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(Struct_3(11371i, vec2<i32>(i32(-2147483648), -13664i), 0u, -38092i, 0i), false, false), Struct_4(Struct_3(-22224i, vec2<i32>(-83766i, 2147483647i), 17622u, 26152i, 28472i), true, true), Struct_4(Struct_3(0i, vec2<i32>(2147483647i, -8428i), 41523u, -16902i, i32(-2147483648)), true, true), Struct_4(Struct_3(i32(-2147483648), vec2<i32>(2147483647i, 61141i), 36560u, 2147483647i, -8097i), false, false), Struct_4(Struct_3(-20661i, vec2<i32>(-26190i, 0i), 0u, -49397i, -40201i), false, true), Struct_4(Struct_3(-81i, vec2<i32>(-9366i, i32(-2147483648)), 0u, 1i, 24884i), true, false), Struct_4(Struct_3(-23240i, vec2<i32>(0i, 1i), 0u, 6911i, -13129i), false, false), Struct_4(Struct_3(0i, vec2<i32>(1i, -15698i), 13874u, 20510i, 9188i), false, false), Struct_4(Struct_3(0i, vec2<i32>(7682i, 10604i), 14442u, -6946i, i32(-2147483648)), true, false), Struct_4(Struct_3(0i, vec2<i32>(-7612i, -1i), 1u, -14802i, -12171i), false, true), Struct_4(Struct_3(1i, vec2<i32>(2147483647i, 39998i), 4854u, -1i, 1i), true, true), Struct_4(Struct_3(-2217i, vec2<i32>(-31236i, -10403i), 0u, 15955i, 0i), true, true), Struct_4(Struct_3(i32(-2147483648), vec2<i32>(21946i, 0i), 83357u, 1i, 2147483647i), false, true), Struct_4(Struct_3(57202i, vec2<i32>(0i, 2147483647i), 4294967295u, 56624i, 41685i), false, true), Struct_4(Struct_3(i32(-2147483648), vec2<i32>(0i, 24102i), 43486u, -34276i, 22376i), true, true), Struct_4(Struct_3(2147483647i, vec2<i32>(1i, -1i), 21943u, 33304i, -1i), true, false), Struct_4(Struct_3(10756i, vec2<i32>(18650i, 2147483647i), 42588u, 38196i, -79608i), false, false), Struct_4(Struct_3(45884i, vec2<i32>(-39020i, -1i), 3700u, -1i, -63454i), false, false));

var<private> global3: array<f32, 7> = array<f32, 7>(548f, -1763f, -215f, -1984f, -790f, 1799f, -665f);

var<private> global4: array<f32, 9>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<f32>) -> u32 {
    global4 = array<f32, 9>();
    var var_0 = true && !any(vec3<bool>(select(true, true, true), arg_0.x == 0u, true));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(3356u, 18036u), 9u)], _wgslsmith_div_f32(846f, -223f)))) + vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(241f, arg_1.x)), _wgslsmith_f_op_f32(select(-1563f, _wgslsmith_f_op_f32(f32(-1f) * -401f), true)), _wgslsmith_mod_u32(u_input.b, global1.c) <= 40126u)), 1f));
    global3 = array<f32, 7>();
    let var_2 = _wgslsmith_mult_i32(0i, u_input.a);
    return 97192u;
}

fn func_3(arg_0: f32, arg_1: Struct_5, arg_2: Struct_4) -> u32 {
    let var_0 = !arg_2.b;
    var var_1 = arg_1;
    global4 = array<f32, 9>();
    var var_2 = select(select(select(select(!vec4<bool>(false, arg_2.c, var_0, var_0), !vec4<bool>(true, true, var_0, true), var_0 | false), select(vec4<bool>(true, var_0, true, true), select(vec4<bool>(true, false, var_0, arg_2.b), vec4<bool>(arg_2.c, var_0, var_0, arg_2.c), vec4<bool>(var_0, false, true, true)), true), arg_2.c), vec4<bool>(true, true, false, true), arg_0 > _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(countOneBits(arg_2.a.c), 7u)])), vec4<bool>(any(vec3<bool>(var_0, true, !var_0)), select(false, all(select(vec4<bool>(true, false, arg_2.b, false), vec4<bool>(false, arg_2.c, var_0, true), vec4<bool>(false, true, false, var_0))), true), arg_2.b, false), arg_2.a.e <= 81427i);
    var_1 = Struct_5(_wgslsmith_add_i32(16001i, -(_wgslsmith_mult_i32(var_1.b, arg_1.a) & firstLeadingBit(-3279i))), 18076i);
    return global1.c;
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = max(u_input.d, -global1.b);
    global1 = Struct_3(0i, firstTrailingBit(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(u_input.d, -vec2<i32>(global1.a, var_0.x)), global1.b)), ~func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global4[_wgslsmith_index_u32(1u, 9u)]))), Struct_5(global1.e, 1i), Struct_4(Struct_3(var_0.x, vec2<i32>(40820i, var_0.x), u_input.c, -1i, u_input.e), false, arg_0)), -u_input.d.x ^ -26634i, _wgslsmith_clamp_i32(max(-global1.d, ~55274i), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.e, -35550i) & vec3<i32>(global1.a, u_input.a, global1.e), ~vec3<i32>(9764i, u_input.d.x, var_0.x)), -16024i) << (_wgslsmith_add_u32(60066u, global1.c) % 32u));
    let var_1 = !(!(!select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), select(vec4<bool>(arg_0, true, true, false), vec4<bool>(arg_0, arg_0, true, false), false), -1i != u_input.a)));
    global3 = array<f32, 7>();
    return Struct_2(Struct_1(~_wgslsmith_dot_vec4_u32(~vec4<u32>(global1.c, global1.c, global1.c, global1.c), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, global1.c, 27551u, global1.c), vec4<u32>(global1.c, global1.c, 1627u, u_input.c))), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.c, u_input.c, global1.c), _wgslsmith_clamp_vec3_u32(vec3<u32>(global1.c, u_input.c, u_input.c), vec3<u32>(43096u, global1.c, u_input.b), vec3<u32>(global1.c, global1.c, 1u))) | ~9384u, ~(vec4<u32>(u_input.c, 1u, u_input.b, 6644u) << (vec4<u32>(22716u, 0u, u_input.c, u_input.b) % vec4<u32>(32u))) << (countOneBits(~vec4<u32>(47482u, 33517u, 0u, global1.c)) % vec4<u32>(32u)), !select(select(var_1.yw, vec2<bool>(false, arg_0), var_1.zx), vec2<bool>(true, true), var_1.yx), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1029f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1355f, 490f), vec2<f32>(-186f, -1160f), vec2<bool>(true, true)))))), min(~(-vec4<i32>(1i, global1.d, global1.d, u_input.e) << (min(vec4<u32>(0u, 4294967295u, 51668u, global1.c), vec4<u32>(20172u, u_input.c, 103844u, global1.c)) % vec4<u32>(32u))), vec4<i32>(i32(-1i) * -2147483647i, 1i, ~var_0.x << (1u % 32u), ~_wgslsmith_dot_vec3_i32(vec3<i32>(196i, 54085i, u_input.d.x), vec3<i32>(8225i, var_0.x, u_input.d.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(countOneBits(~vec3<u32>(global1.c, 0u, u_input.c)), ~vec3<u32>(global1.c, global1.c, global1.c)), vec3<u32>(countOneBits(u_input.b), u_input.c, u_input.b)) >> ((select(firstTrailingBit(~vec3<u32>(global1.c, 4294967295u, 5841u)), ~vec3<u32>(u_input.b, 1u, 0u) | select(vec3<u32>(27618u, u_input.c, 1u), vec3<u32>(u_input.b, u_input.c, u_input.b), false), false) >> (vec3<u32>(func_1(~vec4<u32>(15715u, global1.c, 35104u, 4294967295u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(global1.c, 7u)], 1503f, -126f, -1425f))), 103368u, 13188u) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_1 = global1.c;
    let var_2 = -_wgslsmith_add_i32(9512i, min(global1.b.x, _wgslsmith_mod_i32(-49764i, -22217i)) & ~(i32(-1i) * -37728i));
    var var_3 = any(!vec4<bool>(true, true, global1.a < _wgslsmith_div_i32(2147483647i, global1.e), false));
    let var_4 = func_2(~(-37576i) <= (1856i | -firstTrailingBit(-17478i)));
    let x = u_input.a;
    s_output = StorageBuffer(1013f, ~var_2, _wgslsmith_mod_vec2_u32(var_0.xz, var_4.a.c.xw));
}

